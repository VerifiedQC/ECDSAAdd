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

/-- `operations` 的字段只在当前 prog 内成为局部名字；before/after 显式提供准备/清理门列。
这只是构造期接线，不分配辅助位，也不自动给任意电路添加量子控制。 -/
structure Context (α : Type) where
  operations : α
  before : Program := []
  after : Program := []

/-- 同一使能条件下的正、反分支线。取反交换两根线，不翻转物理 wire。
使用者负责事先准备 onTrue=enabled∧predicate、onFalse=enabled∧¬predicate。 -/
structure Branch where
  onTrue : Wire
  onFalse : Wire

def Branch.complement (b : Branch) : Branch := ⟨b.onFalse, b.onTrue⟩

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
-- 接受普通 Lean 调用；不将 X 等名称注册成关键字，以免影响数学变量名。
syntax (name := circuitApply) (priority := low) ident term:max* ";" : circuitStmt
syntax "let " ident " := " term ";" : circuitStmt
syntax "for " ident " in " "range" "(" term ")" "{" circuitStmt* "}" ";" : circuitStmt
syntax "for " ident " in " "reversed" "(" "range" "(" term ")" ")"
  "{" circuitStmt* "}" ";" : circuitStmt
syntax "for " ident " in " term:max "{" circuitStmt* "}" ";" : circuitStmt
syntax (name := circuitBlock) (priority := high) "prog" "{" circuitStmt* "}" : term
syntax "circuitSeq% " term:max "{" circuitStmt* "}" : term

-- 这两个名字调用当前接线环境的具体实现，不引入一个黑盒 controlled-Program。
syntax "C-div" term:max term:max ";" : circuitStmt
syntax "C-const" term:max term:max ";" : circuitStmt
syntax "(" term " XOR " num ")" : term
macro_rules
  | `(($b XOR $n:num)) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(CircuitDSL.Branch.complement $b)

macro_rules
  | `(circuitSeq% $acc {}) => `($acc)
  | `(circuitSeq% $acc { let $name:ident := $value:term; $rest:circuitStmt* }) =>
      `($acc ++ (let $name := $value; prog { $rest* }))
  | `(circuitSeq% $acc { $first:circuitStmt $rest:circuitStmt* }) =>
      `(circuitSeq% ($acc ++ prog { $first }) { $rest* })

macro_rules (kind := circuitBlock)
  | `(prog {}) => `(([] : Program))
  | `(prog { C-div $condition $target; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `cdiv):ident $condition $target; $rest* })
  | `(prog { C-const $condition $target; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `cconst):ident $condition $target; $rest* })
  | `(prog { $f:ident $args:term*; $rest:circuitStmt* }) => do
      let mut call : TSyntax `term := ⟨f.raw⟩
      for arg in args do
        call ← `($call $arg)
      `(circuitSeq% (circuitEmit% $call) { $rest* })
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

namespace CircuitDSL
open Lean.Meta Lean.Elab.Term

/-- 展开配置字段后再检查普通 prog；产物不保留运行期环境或分派层。 -/
private def elabWithOperations (ops : Expr) (fields : List Name)
    (body : Syntax) : TermElabM Expr := do
  match fields with
  | [] =>
      let e ← elabTermEnsuringType body (mkConst ``Program)
      synthesizeSyntheticMVarsNoPostponing
      instantiateMVars e
  | field :: rest =>
      let value ← whnf (← mkProjection ops field)
      withLetDecl field (← inferType value) value fun binding => do
        let e ← elabWithOperations ops rest body
        return e.replaceFVar binding value

elab "prog" "using" ctx:term:max "{" body:circuitStmt* "}" : term => do
  let c ← whnf (← elabTerm ctx none)
  unless c.isAppOfArity ``Context.mk 4 do
    throwErrorAt ctx "prog using 需要可展开的 CircuitDSL.Context 接线配置"
  let args := c.getAppArgs
  let ops := args[1]!
  let ty ← whnf (← inferType ops)
  let some info := getStructureInfo? (← getEnv) ty.getAppFn.constName! |
    throwErrorAt ctx "Context.operations 必须是有具名字段的 structure"
  let stx ← `(prog { $body* })
  let mut result ← elabWithOperations ops info.fieldNames.toList stx
  -- 不插入空 append，保持既有门列的定义等同性及证明展开形式。
  if !args[2]!.isAppOf ``List.nil then
    result ← mkAppM ``HAppend.hAppend #[args[2]!, result]
  if !args[3]!.isAppOf ``List.nil then
    result ← mkAppM ``HAppend.hAppend #[result, args[3]!]
  return result

end CircuitDSL

end ECDSAAdd
