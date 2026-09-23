import Mathlib.Data.List.Basic
import Lean

namespace ECDSAAdd
open Lean

abbrev Wire := Nat
abbrev BasisState := Wire → Bool

structure State where
  phase : Bool
  basis : BasisState

inductive Correction where
  | Z (target : Wire)
  | CZ (left right : Wire)
  deriving DecidableEq, Repr

/-- 测量只选择即时 Z/CZ 修正；后续算术与测量顺序固定。 -/
inductive Instr where
  | X (target : Wire)
  | CX (control target : Wire)
  | CCX (left right target : Wire)
  | measureX (target : Wire) (onZero onOne : List Correction)
  deriving DecidableEq, Repr

abbrev Program := List Instr

def measurementCount : Program → Nat
  | [] => 0
  | .measureX _ _ _ :: p => 1 + measurementCount p
  | _ :: p => measurementCount p

instance : Coe Correction (List Correction) := ⟨fun c => [c]⟩
macro "skip" : term => `(([] : List Correction))
syntax "if" "meas" term:max "=" num "then" term "else" term : term
macro_rules
  | `(if meas $t = $n:num then $c₁ else $c₀) =>
    if n.getNat == 1 then `(Instr.measureX $t $c₀ $c₁)
    else if n.getNat == 0 then `(Instr.measureX $t $c₁ $c₀)
    else Macro.throwError "测量结果只能是 0 或 1"

syntax "prog" "{" sepBy(term, ";", ";", allowTrailingSep) "}" : term
macro_rules
  | `(prog { $ss;* }) => `(([$ss,*] : Program))

namespace CircuitDSL

/-- A circuit statement can emit either one instruction or a whole subcircuit. -/
class ToProgram (α : Type) where
  toProgram : α → Program

instance : ToProgram Instr := ⟨fun gate => [gate]⟩
instance : ToProgram Program := ⟨fun circuit => circuit⟩

def emit {α : Type} [ToProgram α] (value : α) : Program :=
  ToProgram.toProgram value

end CircuitDSL

/-- Erase notation adapters during elaboration, keeping named subcircuits visible to proofs. -/
elab "circuitEmit% " t:term : term => do
  let e ← Lean.Elab.Term.elabTerm t none
  let ty ← Lean.Meta.inferType e
  if ← Lean.Meta.isDefEq ty (mkConst ``Program) then
    return e
  else if ← Lean.Meta.isDefEq ty (mkConst ``Instr) then
    Lean.Meta.mkListLit (mkConst ``Instr) [e]
  else
    Lean.Meta.mkAppM ``CircuitDSL.emit #[e]

/-- Structured circuit notation; the original semicolon-separated gate notation remains valid. -/
declare_syntax_cat circuitStmt
syntax ident "(" term,* ")" ";" : circuitStmt
syntax "let " ident " := " term ";" : circuitStmt
syntax "for " ident " in " "range" "(" term ")" "{" circuitStmt* "}" ";" : circuitStmt
syntax "for " ident " in " "reversed" "(" "range" "(" term ")" ")"
  "{" circuitStmt* "}" ";" : circuitStmt
syntax "for " ident " in " term:max "{" circuitStmt* "}" ";" : circuitStmt
syntax (name := circuitBlock) (priority := high) "prog" "{" circuitStmt* "}" : term
syntax "circuitSeq% " term:max "{" circuitStmt* "}" : term

macro_rules
  | `(circuitSeq% $acc {}) => `($acc)
  | `(circuitSeq% $acc { let $name:ident := $value:term; $rest:circuitStmt* }) =>
      `($acc ++ (let $name := $value; prog { $rest* }))
  | `(circuitSeq% $acc { $first:circuitStmt $rest:circuitStmt* }) =>
      `(circuitSeq% ($acc ++ prog { $first }) { $rest* })

macro_rules (kind := circuitBlock)
  | `(prog {}) => `(([] : Program))
  | `(prog { $f:ident($args:term,*); }) => do
      let mut call : TSyntax `term := ⟨f.raw⟩
      for arg in args.getElems do
        call ← `($call $arg)
      `(circuitEmit% $call)
  | `(prog { $f:ident($args:term,*); $rest:circuitStmt* }) => do
      let mut call : TSyntax `term := ⟨f.raw⟩
      for arg in args.getElems do
        call ← `($call $arg)
      `(circuitSeq% (circuitEmit% $call) { $rest* })
  | `(prog { let $name:ident := $value:term; $rest:circuitStmt* }) =>
      `(let $name := $value; prog { $rest* })
  | `(prog { for $i:ident in range($n:term) { $body:circuitStmt* };
        $rest:circuitStmt* }) =>
      `(circuitSeq% ((List.ofFn (fun (j : Fin $n) =>
          let $i := j.val
          have _h : $i < $n := j.isLt
          prog { $body* })).flatten) { $rest* })
  | `(prog { for $i:ident in reversed(range($n:term)) { $body:circuitStmt* };
        $rest:circuitStmt* }) =>
      `(circuitSeq% ((List.ofFn (fun (j : Fin $n) =>
          let $i := j.val
          have _h : $i < $n := j.isLt
          prog { $body* })).reverse.flatten) { $rest* })
  | `(prog { for $item:ident in $items:term { $body:circuitStmt* };
        $rest:circuitStmt* }) =>
      `(circuitSeq% (($items).flatMap (fun $item => prog { $body* })) { $rest* })

end ECDSAAdd
