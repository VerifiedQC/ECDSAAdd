import ECDSAAdd.Arithmetic.Division.DivideSteps

namespace ECDSAAdd.Arithmetic
open Instr
open scoped CircuitDSL

/-- L.control=1 时 L.acc ← (L.acc+L.numerator/L.denominator) mod p，为 0 时不变。
p 是 secp256k1 坐标域的模数；除法表示乘模逆元，启用时要求分母非零，输入值均在 [0,p)。 -/
def divideAdd (L : DivideLayout) : Program := prog {
  with inverse := (if L.control then inverse(L.denominator) mod p else const(1)) {
    if L.control { L.acc = (L.acc + inverse * L.numerator) mod p; } using (montMulControlledAdd L.control L.multiply p) by (divideProductAdd_step L);
  } using (safeInverseValue L.inner L.control L.denominator) by (safeInverse_prepare L, safeInverse_restore L);
}

/-- L.control=1 时 L.acc ← (L.acc−L.numerator/L.denominator) mod p，为 0 时不变。
p 是 secp256k1 坐标域的模数；除法表示乘模逆元，启用时要求分母非零，输入值均在 [0,p)。 -/
def divideSub (L : DivideLayout) : Program := prog {
  with inverse := (if L.control then inverse(L.denominator) mod p else const(1)) {
    if L.control { L.acc = (L.acc - inverse * L.numerator) mod p; } using (montMulControlledSub L.control L.multiply p) by (divideProductSub_step L);
  } using (safeInverseValue L.inner L.control L.denominator) by (safeInverse_prepare L, safeInverse_restore L);
}

/-- 接线简写与原有布局接口生成相同门列；供下游规格与资源证明展开。 -/
theorem divideAdd_program (L : DivideLayout) :
    divideAdd L = divideLoad L ++ inverseCompute L.inner p ++
      montMulControlledAdd L.control L.multiply p ++ inverseUncompute L.inner p ++
      divideUnload L := by simp only [divideAdd, List.append_assoc]; rfl

theorem divideSub_program (L : DivideLayout) :
    divideSub L = divideLoad L ++ inverseCompute L.inner p ++
      montMulControlledSub L.control L.multiply p ++ inverseUncompute L.inner p ++
      divideUnload L := by simp only [divideSub, List.append_assoc]; rfl

end ECDSAAdd.Arithmetic
