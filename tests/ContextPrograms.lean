import ECDSAAdd.Arithmetic.ModularAddition.Modular
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceProgram

open ECDSAAdd ECDSAAdd.Instr ECDSAAdd.Arithmetic

namespace ContextPrograms

structure TestOps where
  flip : Wire → Program
  cdiv : CircuitDSL.Branch → Wire → Program
  cconst : CircuitDSL.Branch → Wire → Program

def testContext : CircuitDSL.Context TestOps := {
  operations := {
    flip := fun w => [.X w]
    cdiv := fun b w => [.CX b.onTrue w]
    cconst := fun b w => [.CX b.onTrue w]
  }
}

example (w : Wire) : (prog using testContext { flip w; }) = [.X w] := rfl
example : (prog using testContext {}) = ([] : Program) := rfl
example (w : Wire) : (prog using testContext { flip(w); X w; }) = [.X w, .X w] := rfl

-- 局部 let 可遮蔽配置字段；离开 prog 后不影响外部同名函数。
def flip (w : Wire) : Program := [.CX w w]
example (w : Wire) :
    (prog using testContext { flip w; let flip := ContextPrograms.flip; flip w; }) =
      [.X w, .CX w w] := rfl
example (w : Wire) : (prog { flip w; }) = [.CX w w] := rfl

example (ws : List Wire) :
    (prog using testContext { for w in ws { flip w; }; }) = ws.flatMap (fun w => [.X w]) := rfl
example (n : Nat) :
    (prog using testContext { for i in range(n) { flip i; }; }) =
      (List.ofFn (fun i : Fin n => [Instr.X i.val])).flatten := rfl

example (ws : List Wire) :
    (prog using testContext {
      for i in reversed(range(ws.length)) { flip ws[i]; };
    }) = (List.ofFn (fun i : Fin ws.length => [Instr.X ws[i.val]])).reverse.flatten := rfl

-- 未配置的普通调用正常工作；参数错误/未知操作不得静默丢弃。
example : True := by
  fail_if_success
    have _bad : Program := prog using testContext { flip true; }
  fail_if_success
    have _bad : Program := prog using testContext { missingOperation 1; }
  fail_if_success
    have _bad : Program := prog { C-div (CircuitDSL.Branch.mk 0 1) 2; }
  fail_if_success
    have _bad : CircuitDSL.Branch := ((CircuitDSL.Branch.mk 0 1) XOR 2)
  trivial

-- 进位被配置并非被删除：简写严格等于原有完整参数调用。
example (L : ModLayout) (x y out : List Wire) :
    (prog using (modArithmeticContext L) { addXor x y out; subXor x y out; }) =
      addXor x y out (L.reg .carrySum) L.cinSum ++
      subXor x y out (L.reg .carryDiff) L.cinDiff := rfl

-- 原有非零 cin 的接口仍可直接调用，不受上下文局部名字影响。
example (x y out carry : List Wire) (cin : Wire) :
    (prog { addXor x y out carry cin; }) = addXor x y out carry cin := rfl

example (yes no target : Wire) :
    (prog using testContext {
      let x := CircuitDSL.Branch.mk yes no;
      C-div x target;
      C-const (x XOR 1) target;
    }) = [.CX yes target, .CX no target] := rfl

example (b : CircuitDSL.Branch) : ((b XOR 1) XOR 1) = b := rfl

def framedContext : CircuitDSL.Context TestOps := {
  testContext with before := [.X 0], after := [.X 1]
}
example (w : Wire) :
    (prog using framedContext { flip w; }) = [.X 0, .X w, .X 1] := rfl

example : (prog using framedContext {}) = [.X 0, .X 1] := rfl

-- before/after 围住循环整体，不在每次迭代中重新准备/清理。
example : (prog using framedContext { for i in range(2) { flip i; }; }) =
    [.X 0, .X 0, .X 1, .X 1] := by decide

-- enabled=0 时两支都关闭；不能把已经 mask 过的条件直接做布尔 NOT。
example (enabled xIsZero : Bool) :
    (enabled ^^ (enabled && xIsZero)) = (enabled && !xIsZero) := by
  cases enabled <;> cases xIsZero <;> decide

example (xIsZero : Bool) :
    (false ^^ (false && xIsZero)) = false ∧ (false && xIsZero) = false := by
  cases xIsZero <;> decide

-- 独立判零及两段双控制操作的展开式。
example (L : ControlledPointLayout) (lambdaStar : Fp) :
    pointInPlaceClearSlope L lambdaStar =
      zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero ++
      doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true ++
      divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y) ++
      doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true ++
      doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false ++
      maskedConstant L.core.equalNegY L.inPlaceSlope lambdaStar.val ++
      doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false ++
      zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero :=
  pointInPlaceClearSlope_program L lambdaStar

-- 配置不插入整个正文的准备/清理。
example (L : ControlledPointLayout) :
    (prog using (clearSlopeContext L) {}) = ([] : Program) := rfl

-- 控制方向、目标、分子及分母必须进入真实除法接口。
example (L : ControlledPointLayout) (generic xIsZero : Wire)
    (slope numerator denominator : List Wire) :
    (prog using (clearSlopeContext L) {
      CCsub generic (xIsZero XOR 1) slope (numerator / denominator);
    }) =
      doubleControlXor generic xIsZero L.core.equalNegY true ++
      divideSub ⟨L.core.equalNegY, denominator, numerator, slope, L.inPlaceInverse⟩ ++
      doubleControlXor generic xIsZero L.core.equalNegY true := rfl

example (L : ControlledPointLayout) (g c : Wire) (t n d : List Wire) :
    (prog using (clearSlopeContext L) { CCsub g c t (n / d); }) =
      doubleControlXor g c L.core.equalNegY false ++
      divideSub ⟨L.core.equalNegY,d,n,t,L.inPlaceInverse⟩ ++
      doubleControlXor g c L.core.equalNegY false := rfl

-- 常量由调用处传入，不再隐藏在配置中。
example (L : ControlledPointLayout) (g c : Wire) (target : List Wire) (value : Fp) :
    (prog using (clearSlopeContext L) { CCXor g c target value; }) =
      doubleControlXor g c L.core.equalNegY false ++
      maskedConstant L.core.equalNegY target value.val ++
      doubleControlXor g c L.core.equalNegY false := rfl

example (L : ControlledPointLayout) (g c : Wire) (target : List Wire) (value : Fp) :
    (prog using (clearSlopeContext L) { CCXor g (c XOR 1) target value; }) =
      doubleControlXor g c L.core.equalNegY true ++
      maskedConstant L.core.equalNegY target value.val ++
      doubleControlXor g c L.core.equalNegY true := rfl

example (_L : ControlledPointLayout) : True := by
  fail_if_success
    have _bad : Program := prog using (clearSlopeContext _L) {
      CCsub 0 (1 XOR 2) [2] ([3] / [4]);
    }
  fail_if_success
    have _bad : Program := prog using (clearSlopeContext _L) {
      CCXor 0 (1 XOR 2) [2] (0 : Fp);
    }
  fail_if_success
    have _bad : Program := prog using (clearSlopeContext _L) {
      CCsub 0 1 true ([3] / [4]);
    }
  fail_if_success
    have _bad : Program := prog { CCXor 0 1 [2] (0 : Fp); }
  trivial

-- 判零不读取 generic；覆盖输入位、generic 和测量结果的全部布尔组合。
example (input generic measurement : Bool) :
    let s : State := ⟨false,fun w => if w=2 then input else if w=4 then generic else false⟩
    let t := run (zeroTestWithSeed 0 1 [⟨2,3⟩]) [measurement] s
    t.basis 1 = !input ∧ t.basis 0 = false ∧ t.basis 3 = false ∧
      t.basis 2 = input ∧ t.basis 4 = generic ∧ t.phase = false := by
  cases input <;> cases generic <;> cases measurement <;> decide

-- 正/负双控制的真值表；控制位本身不变，重复调用清零 work。
example (g c negated : Bool) :
    let s : State := ⟨false,fun w => if w=0 then g else if w=1 then c else false⟩
    let p := doubleControlXor 0 1 2 negated
    let t := run p [] s
    t.basis 2 = (g && (if negated then !c else c)) ∧
      t.basis 0 = g ∧ t.basis 1 = c ∧ (run p [] t).basis 2 = false := by
  cases g <;> cases c <;> cases negated <;> decide

end ContextPrograms
