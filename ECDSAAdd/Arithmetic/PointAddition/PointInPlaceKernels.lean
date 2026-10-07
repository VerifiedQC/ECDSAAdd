import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceLayout
import ECDSAAdd.Math.PointAddition.PointInPlace

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1
open scoped CircuitDSL

structure PointConstantAddOps where
  controlledModAddConst : Wire → List Wire → Nat → Nat → Program

/-- 掩码常数配方：装载 enabled*k，原地模加，清零常数；不另套一层受控模加。 -/
def pointConstantAddContext (L : ControlledPointLayout) : CircuitDSL.Context PointConstantAddOps := {
  operations := {
    controlledModAddConst := fun enabled out k q =>
      let M := L.inPlaceConstant out
      maskedConstant enabled M.a k ++ modAddInPlace M q ++ maskedConstant enabled M.a k
  }
}

/-- r ← (r+L.core.generic·k.val) mod p，k 是经典域元素，要求 r<p。 -/
def pointInPlaceConstantAddKernel (L : ControlledPointLayout) (r : List Wire) (k : Fp) : Program :=
    prog using (pointConstantAddContext L) {
  if L.core.generic { r = (const(k.val) + r) mod p; };
}

/-- 算术表达式与原布局调用生成同一门列，供既有证明展开。 -/
theorem pointInPlaceConstantAddKernel_program (L : ControlledPointLayout) (r : List Wire) (k : Fp) :
    pointInPlaceConstantAddKernel L r k =
      maskedConstant L.core.generic (L.inPlaceConstant r).a k.val ++
      modAddInPlace (L.inPlaceConstant r) p ++
      maskedConstant L.core.generic (L.inPlaceConstant r).a k.val := by
  simp only [pointInPlaceConstantAddKernel]

/-- L.core.generic=1 时 L.point.x ← −L.point.x mod p，为 0 时不变。 -/
def pointInPlaceNegateKernel (L : ControlledPointLayout) : Program := prog using (modAssignContext L.inPlaceNegate) {
  let enabled := L.core.generic;
  let negate := L.inPlaceNegate; -- a 接 x，low 用作临时寄存器。
  if enabled { negate.low = (negate.low - negate.a) mod p; };
  swapRegisters(enabled, L.point.x, negate.low);        -- enabled=1 时交换 x 与 negate.low。
  if enabled { negate.low = (negate.a + negate.low) mod p; }; -- 清零临时结果。
}

theorem pointInPlaceNegateKernel_program (L : ControlledPointLayout) :
    pointInPlaceNegateKernel L = controlledModSub L.core.generic L.inPlaceNegate p ++
      swapRegisters L.core.generic L.point.x L.inPlaceNegate.low ++
      controlledModAdd L.core.generic L.inPlaceNegate p := by
  simp only [pointInPlaceNegateKernel]

/-- target ^= [输入全零]；seed 初始为零，临时置 1 后恢复。 -/
def zeroTestWithSeed (seed target : Wire) (bs : List ZeroBit) : Program :=
  [.X seed] ++ equalConstant seed target bs 0 ++ [.X seed]

/-- work ^= generic AND (negated ? NOT condition : condition)。
negated 是构造电路时确定的控制方向，不翻转 condition。 -/
def doubleControlXor (generic condition work : Wire) (negated : Bool) : Program :=
  if negated then [.CX generic work, .CCX generic condition work]
  else [.CCX generic condition work]

/-- zeroTest 计算独立判零位；ccsub/ccxor 接收使能、条件、控制方向和算术操作数。 -/
structure ClearSlopeOps where
  zeroTest : List Wire → Wire → Program
  ccsub : Wire → Wire → Bool → List Wire → List Wire → List Wire → Program
  ccxor : Wire → Wire → Bool → List Wire → Fp → Program

/-- 复用 equalNegY 作为判零种子和双控制工作位；每次调用前后均为零。
只绑定辅助接线，不自动插入整个代码块的准备或清理操作。 -/
def clearSlopeContext (L : ControlledPointLayout) : CircuitDSL.Context ClearSlopeOps :=
  let work := L.core.equalNegY
  {
    operations := {
      zeroTest := fun input target =>
        zeroTestWithSeed work target (zeroPorts input (L.inPlaceBorrow.take 256))
      ccsub := fun generic condition negated target numerator denominator =>
        doubleControlXor generic condition work negated ++
        divideSub ⟨work, denominator, numerator, target, L.inPlaceInverse⟩ ++
        doubleControlXor generic condition work negated
      ccxor := fun generic condition negated target value =>
        doubleControlXor generic condition work negated ++
        maskedConstant work target value.val ++
        doubleControlXor generic condition work negated
    }
  }

/-- 独立的 [input=0]，不包含 generic；块结束时重算判零以清除标志。
input 在块内必须保持，种子和判零工作位仍由 L 绑定。 -/
abbrev pointZeroValue (L : ControlledPointLayout) (input : List Wire) :
    CircuitDSL.Computed Wire :=
  let test := zeroTestWithSeed L.core.equalNegY L.core.equalX
    (zeroPorts input (L.inPlaceBorrow.take 256))
  ⟨L.core.equalX, test, test⟩

/-- generic=1 时清零 slope：point.x≠0 时减去 point.y/point.x，
否则 XOR 预先算好的例外斜率 lambdaStar；generic=0 时保持原状态。 -/
def pointInPlaceClearSlopeKernel (L : ControlledPointLayout) (lambdaStar : Fp) : Program :=
    prog using (clearSlopeContext L) {
  let point := L.point;
  let generic := L.core.generic;
  let slope := L.inPlaceSlope; -- 待清零的斜率。
  with xIsZero := (pointZeroValue L point.x) {
    CCsub generic (xIsZero XOR 1) slope (point.y / point.x); -- 非零分支：slope -= point.y/point.x → 0。
    CCXor generic xIsZero slope lambdaStar;                -- 为零分支：slope ^= lambdaStar → 0。
  };
}

/-- 供证明使用的展开式：独立判零，两个双控制操作，再清零判零位。 -/
theorem pointInPlaceClearSlopeKernel_program (L : ControlledPointLayout) (lambdaStar : Fp) :
    pointInPlaceClearSlopeKernel L lambdaStar =
  zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true ++
  divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y) ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY true ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false ++
  maskedConstant L.core.equalNegY L.inPlaceSlope lambdaStar.val ++
  doubleControlXor L.core.generic L.core.equalX L.core.equalNegY false ++
  zeroTestWithSeed L.core.equalNegY L.core.equalX L.inPlaceXZero := by
  simp only [pointInPlaceClearSlopeKernel, List.append_assoc]
  rfl

/-- 乘积和平方使用不同的借用区；逻辑操作数和模数均来自表达式。 -/
structure PointProductOps where
  productAdd : List Wire → List Wire → List Wire → Nat → Program
  productSub : List Wire → List Wire → List Wire → Nat → Program
  squareSub : List Wire → List Wire → List Wire → Nat → Program
  squareSubtract : List Wire → List Wire → Nat → Program

/-- product 使用 B[2…1828]，square 使用 B[258…2084]；分别保留输入/输出高位及斜率副本。 -/
def pointProductContext (L : ControlledPointLayout) : CircuitDSL.Context PointProductOps := {
  operations := {
    productAdd := fun x y out q => montMulAdd
      (borrowedMont L.inPlaceBorrow L.control 2 (x++[L.inPlaceBit 0]) y (out++[L.inPlaceBit 1])) q
    productSub := fun x y out q => montMulSub
      (borrowedMont L.inPlaceBorrow L.control 2 (x++[L.inPlaceBit 0]) y (out++[L.inPlaceBit 1])) q
    squareSub := fun x y out q => montMulSub
      (borrowedMont L.inPlaceBorrow L.control 258 (x++[L.inPlaceBit 256]) y (out++[L.inPlaceBit 257])) q
    squareSubtract := fun x out q =>
      let copy := L.inPlaceSquare.y
      copyRegister none x copy ++
        montMulSub (borrowedMont L.inPlaceBorrow L.control 258
          (x++[L.inPlaceBit 256]) copy (out++[L.inPlaceBit 257])) q ++
        copyRegister none x copy
  }
}


end ECDSAAdd.Arithmetic
