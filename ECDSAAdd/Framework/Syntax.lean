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

/-- 由后端绑定的临时值；restore 是已知的恢复电路，不是倒转 prepare 的门列。
值及其恢复所需的历史只在 with 块内存活；正确性须由调用者的规格证明。 -/
structure Computed (α : Type) where
  value : α
  prepare : Program
  restore : Program

def Computed.program {α : Type} (c : Computed α) (body : α → Program) : Program :=
  c.prepare ++ body c.value ++ c.restore

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
syntax "with " ident " := " term:max "{" circuitStmt* "}" ";" : circuitStmt
syntax "computedProg% " term:max " binder% " ident "{" circuitStmt* "}" : term
syntax "for " ident " in " "range" "(" term ")" "{" circuitStmt* "}" ";" : circuitStmt
syntax "for " ident " in " "reversed" "(" "range" "(" term ")" ")"
  "{" circuitStmt* "}" ";" : circuitStmt
syntax "for " ident " in " term:max "{" circuitStmt* "}" ";" : circuitStmt
syntax (name := circuitBlock) (priority := high) "prog" "{" circuitStmt* "}" : term
syntax "circuitSeq% " term:max "{" circuitStmt* "}" : term

-- 这两个名字调用当前接线环境的具体实现，不引入一个黑盒 controlled-Program。
syntax "C-div" term:max term:max ";" : circuitStmt
syntax "C-const" term:max term:max ";" : circuitStmt
-- 双控制算术：商的两个寄存器由语法拆开，不先执行 Lean 的除法。
syntax "CCsub" term:max term:max term:max "(" term:max " / " term:max ")" ";" : circuitStmt
syntax "CCXor" term:max term:max term:max term:max ";" : circuitStmt
-- 明确的受控操作；参数依次为控制、目标、源/常数。
syntax "CXor" term:max term:max term:max ";" : circuitStmt
syntax "CConst" term:max term:max term:max ";" : circuitStmt
syntax "CPointXor" term:max term:max term:max ";" : circuitStmt
syntax "CAdd" term:max term:max term:max ";" : circuitStmt
syntax "CSub" term:max term:max term:max ";" : circuitStmt
syntax "CAddConst" term:max term:max term:max ";" : circuitStmt
syntax "CAddConstLow" term:max term:max term:max ";" : circuitStmt
syntax "CSubConst" term:max term:max term:max ";" : circuitStmt
syntax "circuitXorCases% " term:max term:max term:max term:max
  "{" circuitStmt* "}" : term
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
  | `(prog { with $name:ident := $value:term { $body:circuitStmt* }; $rest:circuitStmt* }) =>
      `(circuitSeq% (computedProg% $value binder% $name { $body* }) { $rest* })
  | `(prog { CCsub $g ($c XOR $n:num) $target ($numerator / $denominator); $rest:circuitStmt* }) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { $(mkIdent `ccsub):ident $g $c true $target $numerator $denominator; $rest* })
  | `(prog { CCsub $g $c $target ($numerator / $denominator); $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `ccsub):ident $g $c false $target $numerator $denominator; $rest* })
  | `(prog { CCXor $g ($c XOR $n:num) $target $value; $rest:circuitStmt* }) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { $(mkIdent `ccxor):ident $g $c true $target $value; $rest* })
  | `(prog { CCXor $g $c $target $value; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `ccxor):ident $g $c false $target $value; $rest* })
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

macro_rules (kind := circuitBlock)
  | `(prog { $gate:ident $c ($d XOR $n:num) $target; $rest:circuitStmt* }) => do
      unless gate.getId == `CCX do Macro.throwUnsupported
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { Instr.CX $c $target; Instr.CCX $c $d $target; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { $gate:ident ($c XOR $n:num) $target; $rest:circuitStmt* }) => do
      unless gate.getId == `CX do Macro.throwUnsupported
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { Instr.X $target; Instr.CX $c $target; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CSubConst $c $target $value; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `maskedSubConst):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CAddConstLow $c $target $value; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `maskedAddConstLow):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CAddConst $c $target $value; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `maskedAddConst):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CSub $c $target $source; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `controlledSub):ident $c $source $target; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CAdd $c $target $source; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `controlledAdd):ident $c $source $target; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CPointXor $c $target $value; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `maskedPointConstant):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CPointXor ($c XOR $n:num) $target $value; $rest:circuitStmt* }) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { $(mkIdent `negativePointConstant):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CConst $c $target $value; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `maskedConstant):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CConst ($c XOR $n:num) $target $value; $rest:circuitStmt* }) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { $(mkIdent `xorConstant):ident $target $value;
        $(mkIdent `maskedConstant):ident $c $target $value; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CXor $c $target $source; $rest:circuitStmt* }) =>
      `(prog { $(mkIdent `copyRegister):ident (some $c) $source $target; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CXor ($c XOR $n:num) $target $source; $rest:circuitStmt* }) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      `(prog { $(mkIdent `copyRegister):ident none $source $target;
        $(mkIdent `copyRegister):ident (some $c) $source $target; $rest* })

macro_rules (kind := circuitBlock)
  | `(prog { CXor ($c XOR $n:num) $target $no; CXor $d $other $yes;
        $rest:circuitStmt* }) => do
      unless n.getNat == 1 do Macro.throwError "条件取反只支持 XOR 1"
      if c.raw == d.raw && target.raw == other.raw then
        `(circuitXorCases% $c $target $no $yes { $rest* })
      else
        `(prog { $(mkIdent `copyRegister):ident none $no $target;
          $(mkIdent `copyRegister):ident (some $c) $no $target;
          CXor $d $other $yes; $rest* })

macro_rules
  | `(circuitSeq% $acc { CXor ($c XOR $n:num) $target $no;
        CXor $d $other $yes; $rest:circuitStmt* }) =>
      `(circuitSeq% ($acc ++ prog {
        CXor ($c XOR $n) $target $no; CXor $d $other $yes;
      }) { $rest* })

namespace CircuitDSL
open Lean.Meta Lean.Elab.Term

/-- 仅合并相邻、同控制/同目标的负/正 CXor。没有配置时保留两个独立操作。
配置中的 cxorCases 须证明等宽、互异接线下的选择语义，不能借此控制任意程序。 -/
elab_rules : term
  | `(circuitXorCases% $c $target $no $yes { $rest:circuitStmt* }) => do
    let stx ← if (← getLCtx).findFromUserName? `cxorCases |>.isSome then
      `(prog { $(mkIdent `cxorCases):ident $c $target $no $yes; $rest* })
    else
      `(prog { $(mkIdent `copyRegister):ident none $no $target;
        $(mkIdent `copyRegister):ident (some $c) $no $target;
        $(mkIdent `copyRegister):ident (some $c) $yes $target; $rest* })
    elabTerm stx (some (mkConst ``Program))

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

elab_rules : term
  | `(computedProg% $computation binder% $name:ident { $body:circuitStmt* }) => do
    let c ← whnf (← elabTerm computation none)
    unless c.isAppOfArity ``Computed.mk 4 do
      throwErrorAt computation "with 需要后端提供 Computed 值及其准备/恢复电路"
    let args := c.getAppArgs
    let stx ← `(prog { $body* })
    let result ← withLetDecl name.getId args[0]! args[1]! fun binding => do
      let e ← elabTermEnsuringType stx (mkConst ``Program)
      synthesizeSyntheticMVarsNoPostponing
      return (← instantiateMVars e).replaceFVar binding args[1]!
    let result ← mkAppM ``HAppend.hAppend #[args[2]!, result]
    mkAppM ``HAppend.hAppend #[result, args[3]!]

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

/- 算术表达式是现有电路构造器的记法；布局、取值范围和零工作区仍由各操作的规格约束。
`const(k)` 明确表示经典数，其他操作数是寄存器；+=、-= 按目标位宽回绕，^= 是 XOR 写入。
if 表示量子受控执行，不测量条件；只接受下面列出的算术操作，不给任意 Program 逐门添加控制。
control 保留为兼容写法，也是 if 归一化后的内部形式。 -/
declare_syntax_cat registerUpdate
syntax term:max " += " term:max : registerUpdate
syntax term:max " -= " term:max : registerUpdate
syntax term:max " ^= " term:max : registerUpdate
syntax term:max " ^= " "(" term:max " + " term:max ")" : registerUpdate
syntax term:max " ^= " "(" term:max " - " term:max ")" : registerUpdate
syntax term:max " ^= " "(" term:max " - " term:max ")" " mod " term:max : registerUpdate
syntax term:max " ^= " "(" term:max " * " term:max ")" " mod " term:max : registerUpdate
syntax term:max " ^= " "(" term:max " - " "const" "(" term ")" ")" " mod " term:max : registerUpdate
syntax term:max " ^= " "(" term:max " ^ " num ")" " mod " term:max : registerUpdate
syntax term:max " ^= " "const" "(" term ")" : registerUpdate
syntax term:max " += " "const" "(" term ")" : registerUpdate
syntax term:max " -= " "const" "(" term ")" : registerUpdate
syntax term:max " += " "const" "(" term ")" " using " ident : registerUpdate
syntax term:max " = " "(" term:max " + " term:max ")" " mod " term:max : registerUpdate
syntax term:max " = " "(" term:max " - " term:max ")" " mod " term:max : registerUpdate
syntax term:max " = " "(" term:max " + " term:max ")" " mod " term:max " using " ident : registerUpdate
syntax term:max " = " "(" term:max " - " term:max ")" " mod " term:max " using " ident : registerUpdate
syntax term:max " = " "(" term:max " + " term:max " * " term:max ")" " mod " term:max : registerUpdate
syntax term:max " = " "(" term:max " - " term:max " * " term:max ")" " mod " term:max : registerUpdate
syntax term:max " = " "(" term:max " + " term:max " * " term:max ")" " mod " term:max " using " ident : registerUpdate
syntax term:max " = " "(" term:max " - " term:max " * " term:max ")" " mod " term:max " using " ident : registerUpdate
syntax term:max " = " "(" "const" "(" term ")" " + " term:max ")" " mod " term:max : registerUpdate
syntax term:max " = " "(" term:max " - " term:max " ^ " num ")" " mod " term:max " using " ident : registerUpdate

declare_syntax_cat registerUpdateLine
syntax registerUpdate ";" : registerUpdateLine
namespace CircuitDSL
scoped syntax registerUpdate ";" : circuitStmt
scoped syntax "if " term:max " {" registerUpdateLine* "}" ";" : circuitStmt
scoped syntax ident term:max " {" registerUpdateLine* "}" ";" : circuitStmt
scoped syntax "with " ident " := " "(" term:max " * " term:max ")" " mod " term:max
  "{" circuitStmt* "}" ";" : circuitStmt
scoped syntax "let " ident " := " "(" term:max " + " term:max ")" " < " "const" "(" term ")" ";" : circuitStmt
scoped syntax "let " ident " := " term:max " < " term:max ";" : circuitStmt
-- 比较约减模板中的表达式；只允许由下方的整块规则展开，不调用普通 Nat 减法。
scoped syntax term:max " ^= " "(" "(" term:max " + " term:max ")" " - " "const" "(" term ")" ")" : registerUpdate
scoped syntax term:max " ^= " "(" "(" term:max " - " term:max ")" " + " "const" "(" term ")" ")" : registerUpdate
end CircuitDSL
open scoped CircuitDSL

private def checkUpdateTarget (target repeated : TSyntax `term) : MacroM Unit :=
  unless target.raw == repeated.raw do
    Macro.throwErrorAt repeated "原地赋值必须在右侧保留同一个目标寄存器；不支持覆盖任意量子数据"

/-- 每个表达式展开到一个已有操作；实现名字在 prog using 的局部接线中解析。 -/
private def lowerRegisterUpdate (s : TSyntax `registerUpdate)
    (control : Option (TSyntax `term)) : MacroM (TSyntax `circuitStmt) := do
  let unsupported := Macro.throwErrorAt s "此算术/控制形式尚无实现；请使用已有操作或显式配置实现"
  match s with
  | `(registerUpdate| $out:term ^= ($x - const($k)) mod $q) =>
      if control.isSome then unsupported else
      `(circuitStmt| $(mkIdent `modSubConstXor):ident $x $out $k $q;)
  | `(registerUpdate| $out:term ^= ($x ^ $power:num) mod $q) => do
      unless power.getNat == 2 do Macro.throwErrorAt power "此配方只支持平方"
      if control.isSome then unsupported else
      `(circuitStmt| $(mkIdent `modSquareXor):ident $x $out $q;)
  | `(registerUpdate| $out:term = (const($k) + $old) mod $q) =>
      checkUpdateTarget out old
      match control with
      | none => unsupported
      | some c => `(circuitStmt| $(mkIdent `controlledModAddConst):ident $c $out $k $q;)
  | `(registerUpdate| $out:term = ($old - $x ^ $power:num) mod $q using $impl:ident) =>
      unless power.getNat == 2 do Macro.throwErrorAt power "此配方只支持平方"
      checkUpdateTarget out old
      if control.isSome then unsupported else
      `(circuitStmt| $impl:ident $x $out $q;)
  | `(registerUpdate| $out:term ^= ($x - $y) mod $q) =>
      if control.isSome then unsupported else
      `(circuitStmt| $(mkIdent `modSubXor):ident $x $y $out $q;)
  | `(registerUpdate| $out:term ^= ($x * $y) mod $q) =>
      if control.isSome then unsupported else
      `(circuitStmt| $(mkIdent `modMulXor):ident $x $y $out $q;)
  | `(registerUpdate| $out:term ^= ($x + $y)) =>
      if control.isSome then unsupported else
      `(circuitStmt| $(mkIdent `addXor):ident $x $y $out;)
  | `(registerUpdate| $out:term ^= ($x - $y)) =>
      if control.isSome then unsupported else
      `(circuitStmt| $(mkIdent `subXor):ident $x $y $out;)
  | `(registerUpdate| $out:term ^= const($k)) =>
      match control with
      | none => `(circuitStmt| $(mkIdent `xorConstant):ident $out $k;)
      | some c => `(circuitStmt| CConst $c $out $k;)
  | `(registerUpdate| $out:term ^= $source) =>
      match control with
      | none => `(circuitStmt| $(mkIdent `copyRegister):ident none $source $out;)
      | some c => `(circuitStmt| CXor $c $out $source;)
  | `(registerUpdate| $out:term += const($k) using $impl:ident) =>
      match control with
      | none => unsupported
      | some c => `(circuitStmt| $impl:ident $c $out $k;)
  | `(registerUpdate| $out:term += const($k)) =>
      match control with
      | none => `(circuitStmt| $(mkIdent `addConst):ident $out $k;)
      | some c => `(circuitStmt| CAddConst $c $out $k;)
  | `(registerUpdate| $out:term -= const($k)) =>
      match control with
      | none => `(circuitStmt| $(mkIdent `subConst):ident $out $k;)
      | some c => `(circuitStmt| CSubConst $c $out $k;)
  | `(registerUpdate| $out:term += $source) =>
      match control with
      | none => `(circuitStmt| $(mkIdent `addInPlace):ident $source $out;)
      | some c => `(circuitStmt| CAdd $c $out $source;)
  | `(registerUpdate| $out:term -= $source) =>
      match control with
      | none => `(circuitStmt| $(mkIdent `subInPlace):ident $source $out;)
      | some c => `(circuitStmt| CSub $c $out $source;)
  | `(registerUpdate| $out:term = ($source + $old) mod $q using $impl:ident) =>
      checkUpdateTarget out old
      if control.isSome then unsupported else
      `(circuitStmt| $impl:ident $source $out $q;)
  | `(registerUpdate| $out:term = ($old - $source) mod $q using $impl:ident) =>
      checkUpdateTarget out old
      if control.isSome then unsupported else
      `(circuitStmt| $impl:ident $source $out $q;)
  | `(registerUpdate| $out:term = ($source + $old) mod $q) =>
      checkUpdateTarget out old
      match control with
      | none => `(circuitStmt| $(mkIdent `modAddAssign):ident $source $out $q;)
      | some c => `(circuitStmt| $(mkIdent `controlledModAddAssign):ident $c $source $out $q;)
  | `(registerUpdate| $out:term = ($old - $source) mod $q) =>
      checkUpdateTarget out old
      match control with
      | none => `(circuitStmt| $(mkIdent `modSubAssign):ident $source $out $q;)
      | some c => `(circuitStmt| $(mkIdent `controlledModSubAssign):ident $c $source $out $q;)
  | `(registerUpdate| $out:term = ($old + $x * $y) mod $q using $impl:ident) =>
      checkUpdateTarget out old
      if control.isSome then unsupported else
      `(circuitStmt| $impl:ident $x $y $out $q;)
  | `(registerUpdate| $out:term = ($old - $x * $y) mod $q using $impl:ident) =>
      checkUpdateTarget out old
      if control.isSome then unsupported else
      `(circuitStmt| $impl:ident $x $y $out $q;)
  | `(registerUpdate| $out:term = ($old + $x * $y) mod $q) =>
      checkUpdateTarget out old
      match control with
      | none => `(circuitStmt| $(mkIdent `modMulAddAssign):ident $x $y $out $q;)
      | some c => `(circuitStmt| $(mkIdent `controlledModMulAddAssign):ident $c $x $y $out $q;)
  | `(registerUpdate| $out:term = ($old - $x * $y) mod $q) =>
      checkUpdateTarget out old
      match control with
      | none => `(circuitStmt| $(mkIdent `modMulSubAssign):ident $x $y $out $q;)
      | some c => `(circuitStmt| $(mkIdent `controlledModMulSubAssign):ident $c $x $y $out $q;)
  | _ => unsupported

-- 先展开整个块，再交给原 prog 宏；相邻的互补 XOR 分支仍可共用选择电路。
macro_rules (kind := circuitBlock)
  | `(prog { $body:circuitStmt* }) => do
      -- 比较模板必须整体匹配，不能先把其两个分支拆成独立运算。
      for statement in body do
        match statement with
        | `(circuitStmt| let $_:ident := ($_ + $_) < const($_);) => Macro.throwUnsupported
        | `(circuitStmt| let $_:ident := $_ < $_;) => Macro.throwUnsupported
        | _ => pure ()
      let mut changed := false
      let mut result : Array (TSyntax `circuitStmt) := #[]
      for statement in body do
        match statement with
        | `(circuitStmt| $update:registerUpdate;) =>
            result := result.push (← lowerRegisterUpdate update none)
            changed := true
        | `(circuitStmt| $keyword:ident $c { $updates:registerUpdateLine* };) =>
            unless keyword.getId == `control do
              Macro.throwErrorAt keyword "算术控制块应写为 if 条件 { ... };（兼容 control）"
            for line in updates do
              let `(registerUpdateLine| $update:registerUpdate;) := line
                | Macro.throwUnsupported
              result := result.push (← lowerRegisterUpdate update (some c))
            changed := true
        | _ => result := result.push statement
      unless changed do Macro.throwUnsupported
      `(prog { $result* })

/- 受限的比较—约减配方。匹配完整表达式、同一目标和两个互补分支后才展开。
这不是一般比较器或任意表达式优化器；改写不匹配时必须报错，不能沿用旧配方。 -/
private def sameReductionTerm (actual expected : TSyntax `term) : MacroM Unit :=
  unless actual.raw == expected.raw do
    Macro.throwErrorAt actual "比较约减配方要求两分支使用比较中的同一输入/常数和同一输出"

macro_rules (kind := circuitBlock)
  | `(prog { with $v:ident := ($x * $y) mod $q { $body:circuitStmt* }; $rest:circuitStmt* }) =>
      `(prog { with $v := ($(mkIdent `modProductValue) $x $y $q) { $body* }; $rest* })
  | `(prog {
      let $b:ident := ($x + $y) < const($q);
      $kw₀:ident ($b₀ XOR $one:num) { $out:term ^= (($x₀ + $y₀) - const($q₀)); };
      $kw₁:ident $b₁ { $out₁:term ^= ($x₁ + $y₁); };
    }) => do
      unless kw₀.getId == `control && kw₁.getId == `control && one.getNat == 1 do
        Macro.throwError "约减需要先负后正的两个 if 分支"
      let bt : TSyntax `term := ⟨b.raw⟩
      for (actual, expected) in [(b₀, bt), (b₁, bt), (out₁, out),
          (x₀, x), (x₁, x), (y₀, y), (y₁, y), (q₀, q)] do
        sameReductionTerm actual expected
      `(prog { $(mkIdent `reduceAdd):ident $x $y $out $q; })
  | `(prog {
      let $b:ident := $x < $y;
      $kw₀:ident ($b₀ XOR $one:num) { $out:term ^= ($x₀ - $y₀); };
      $kw₁:ident $b₁ { $out₁:term ^= (($x₁ - $y₁) + const($q)); };
    }) => do
      unless kw₀.getId == `control && kw₁.getId == `control && one.getNat == 1 do
        Macro.throwError "约减需要先负后正的两个 if 分支"
      let bt : TSyntax `term := ⟨b.raw⟩
      for (actual, expected) in [(b₀, bt), (b₁, bt), (out₁, out),
          (x₀, x), (x₁, x), (y₀, y), (y₁, y)] do
        sameReductionTerm actual expected
      `(prog { $(mkIdent `reduceSub):ident $x $y $out $q; })

  | `(prog { let $_:ident := ($_ + $_) < const($_); $_:circuitStmt* }) =>
      Macro.throwError "仅支持完整的模加比较约减配方：同一表达式、互补控制、同一 XOR 输出"
  | `(prog { let $_:ident := $_ < $_; $_:circuitStmt* }) =>
      Macro.throwError "仅支持完整的模减比较约减配方；一般量子比较尚未接入此语法"

-- 后注册的规则先执行：整块归一化后才匹配比较模板或展开算术，避免拆散互补分支。
-- 不生成 Lean 的 if/then/else，不读取条件位；后端与旧 control 写法完全相同。
macro_rules (kind := circuitBlock)
  | `(prog { $body:circuitStmt* }) => do
      let mut changed := false
      let mut result : Array (TSyntax `circuitStmt) := #[]
      for statement in body do
        match statement with
        | `(circuitStmt| if $c { $updates:registerUpdateLine* };) =>
            result := result.push (← `(circuitStmt|
              $(mkIdent `control):ident $c { $updates* };))
            changed := true
        | _ => result := result.push statement
      unless changed do Macro.throwUnsupported
      `(prog { $result* })

end ECDSAAdd
