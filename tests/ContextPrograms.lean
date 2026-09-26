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

-- 真实斜率清理（含准备/清理）与原门列相等，而不只是匹配某几个样本结果。
example (L : ControlledPointLayout) (lambdaStar : Fp) :
    pointInPlaceClearSlope L lambdaStar =
      equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0 ++
      [.CX L.core.generic L.core.equalNegY, .CX L.core.equalX L.core.equalNegY] ++
      divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y) ++
      maskedConstant L.core.equalX L.inPlaceSlope lambdaStar.val ++
      [.CX L.core.generic L.core.equalNegY, .CX L.core.equalX L.core.equalNegY] ++
      equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0 :=
  pointInPlaceClearSlope_program L lambdaStar

-- 控制参数、目标和分子/分母均真正进入原除法，不因简写而被忽略。
example (L : ControlledPointLayout) (lambdaStar : Fp)
    (condition : CircuitDSL.Branch) (target : List Wire) :
    (clearSlopeContext L lambdaStar).operations.cdiv condition target =
      divideSub ⟨condition.onTrue, L.point.x, L.point.y, target, L.inPlaceInverse⟩ := rfl

example (L : ControlledPointLayout) (lambdaStar : Fp)
    (condition : CircuitDSL.Branch) (target : List Wire) :
    (clearSlopeContext L lambdaStar).operations.cconst (condition XOR 1) target =
      maskedConstant condition.onFalse target lambdaStar.val := rfl

end ContextPrograms
