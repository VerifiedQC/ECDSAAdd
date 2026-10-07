import ECDSAAdd.Arithmetic.PointAddition.PointCandidateAnnotations

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL
open CertifiedTranslation

/-- out ^= (x−k) mod p，k 是经典常量，要求 x,k<p。 -/
def pointSubConstant (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program := prog {
  out ^= (x - const(k)) mod p using (pointSubConstantKernel L x out k) by (pointSubConstantKernel_spec L x out k);
}

theorem pointSubConstant_program (L : PointAddLayout) (x out : List Wire) (k : Nat) :
    pointSubConstant L x out k = xorConstant L.constant k ++
      fieldSub (poolSub L.poolWire x L.constant out) ++ xorConstant L.constant k := rfl

/-- L.square ^= L.slope² mod p，要求 L.slope<p。 -/
def pointSquare (L : PointAddLayout) : Program := prog {
  L.square ^= (L.slope * L.slope) mod p using (pointSquareKernel L) by (pointSquareKernel_spec L);
}

theorem pointSquare_program (L : PointAddLayout) : pointSquare L =
    copyRegister none L.slope L.constant ++
    fieldMul (poolMul L.poolWire L.slope (L.constant.take 256) L.square) ++
    copyRegister none L.slope L.constant := rfl

/-- 计算普通点加候选：slope=(y−cy)/(x−cx)，candidateX=slope²−x−cx，candidateY=slope*(x−candidateX)−y，均 mod p。
(cx,cy) 是经典常量点坐标。generic=1 时要求 x≠cx；为 0 时用分母 1 计算未选中的候选。 -/
def pointCandidateCompute (L : PointAddLayout) (cx cy : Fp) : Program := prog {
  let x := L.extendedX;
  let y := L.extendedY;
  let divisor := L.divisor.head! :: L.divisor.tail; -- 用于保存安全分母。
  L.dx ^= (x - const(cx.val)) mod p using (pointSubConstant L x L.dx cx.val) by (pointSubConstantKernel_spec L x L.dx cx.val);
  L.dy ^= (y - const(cy.val)) mod p using (pointSubConstant L y L.dy cy.val) by (pointSubConstantKernel_spec L y L.dy cy.val);
  divisor ^= (if L.generic then (L.dx.take 256) else const(1)) using (safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail) by (candidateSafe_spec L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail);
  L.inverse ^= inverse(L.divisor) mod p using (fieldInverseXor L.poolWire L.divisor L.inverse) by (candidateInverse_spec L.poolWire L.divisor L.inverse);
  L.slope ^= (L.dy * L.inverse) mod p using (fieldMulXor L.poolWire L.dy L.inverse L.slope) by (candidateMul_spec L.poolWire L.dy L.inverse L.slope);
  L.square ^= (L.slope * L.slope) mod p using (pointSquare L) by (pointSquareKernel_spec L);
  L.offset ^= (L.square - x) mod p using (fieldSubXor L.poolWire L.square x L.offset) by (candidateSub_spec L.poolWire L.square x L.offset);
  L.candidateX ^= (L.offset - const(cx.val)) mod p using (pointSubConstant L L.offset L.candidateX cx.val) by (pointSubConstantKernel_spec L L.offset L.candidateX cx.val);
  L.delta ^= (x - L.candidateX) mod p using (fieldSubXor L.poolWire x L.candidateX L.delta) by (candidateSub_spec L.poolWire x L.candidateX L.delta);
  L.product ^= (L.delta * (L.slope.take 256)) mod p using (fieldMulXor L.poolWire L.delta (L.slope.take 256) L.product) by (candidateMul_spec L.poolWire L.delta (L.slope.take 256) L.product);
  L.candidateY ^= (L.product - y) mod p using (fieldSubXor L.poolWire L.product y L.candidateY) by (candidateSub_spec L.poolWire L.product y L.candidateY);
}

/-- 用 pointCandidateCompute 的匹配输入清零候选坐标、斜率及其余中间量。 -/
def pointCandidateClear (L : PointAddLayout) (cx cy : Fp) : Program := prog {
  let x := L.extendedX;
  let y := L.extendedY;
  let divisor := L.divisor.head! :: L.divisor.tail;
  L.candidateY ^= (L.product - y) mod p using (fieldSubXor L.poolWire L.product y L.candidateY) by (candidateSub_spec L.poolWire L.product y L.candidateY);
  L.product ^= (L.delta * (L.slope.take 256)) mod p using (fieldMulXor L.poolWire L.delta (L.slope.take 256) L.product) by (candidateMul_spec L.poolWire L.delta (L.slope.take 256) L.product);
  L.delta ^= (x - L.candidateX) mod p using (fieldSubXor L.poolWire x L.candidateX L.delta) by (candidateSub_spec L.poolWire x L.candidateX L.delta);
  L.candidateX ^= (L.offset - const(cx.val)) mod p using (pointSubConstant L L.offset L.candidateX cx.val) by (pointSubConstantKernel_spec L L.offset L.candidateX cx.val);
  L.offset ^= (L.square - x) mod p using (fieldSubXor L.poolWire L.square x L.offset) by (candidateSub_spec L.poolWire L.square x L.offset);
  L.square ^= (L.slope * L.slope) mod p using (pointSquare L) by (pointSquareKernel_spec L);
  L.slope ^= (L.dy * L.inverse) mod p using (fieldMulXor L.poolWire L.dy L.inverse L.slope) by (candidateMul_spec L.poolWire L.dy L.inverse L.slope);
  L.inverse ^= inverse(L.divisor) mod p using (fieldInverseXor L.poolWire L.divisor L.inverse) by (candidateInverse_spec L.poolWire L.divisor L.inverse);
  divisor ^= (if L.generic then (L.dx.take 256) else const(1)) using (safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail) by (candidateSafe_spec L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail);
  L.dy ^= (y - const(cy.val)) mod p using (pointSubConstant L y L.dy cy.val) by (pointSubConstantKernel_spec L y L.dy cy.val);
  L.dx ^= (x - const(cx.val)) mod p using (pointSubConstant L x L.dx cx.val) by (pointSubConstantKernel_spec L x L.dx cx.val);
}

/-- 可读受控分支与原安全分母电路的展开式，供证明使用。 -/
-- PointAddition/PointCandidate.lean: pointCandidateCompute
theorem pointCandidateCompute_program (L : PointAddLayout) (cx cy : Fp) :
    pointCandidateCompute L cx cy =
  pointSubConstant L L.extendedX L.dx cx.val++
  pointSubConstant L L.extendedY L.dy cy.val++
  safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail++
  fieldInverse (poolInverse L.poolWire L.divisor L.inverse)++
  fieldMul (poolMul L.poolWire L.dy L.inverse L.slope)++
  pointSquare L++
  fieldSub (poolSub L.poolWire L.square L.extendedX L.offset)++
  pointSubConstant L L.offset L.candidateX cx.val++
  fieldSub (poolSub L.poolWire L.extendedX L.candidateX L.delta)++
  fieldMul (poolMul L.poolWire L.delta (L.slope.take 256) L.product)++
  fieldSub (poolSub L.poolWire L.product L.extendedY L.candidateY) := by
  simp only [pointCandidateCompute, List.append_assoc]

/-- 清理方向保留同一安全分母门列。 -/
theorem pointCandidateClear_program (L : PointAddLayout) (cx cy : Fp) :
    pointCandidateClear L cx cy =
  fieldSub (poolSub L.poolWire L.product L.extendedY L.candidateY)++
  fieldMul (poolMul L.poolWire L.delta (L.slope.take 256) L.product)++
  fieldSub (poolSub L.poolWire L.extendedX L.candidateX L.delta)++
  pointSubConstant L L.offset L.candidateX cx.val++
  fieldSub (poolSub L.poolWire L.square L.extendedX L.offset)++
  pointSquare L++
  fieldMul (poolMul L.poolWire L.dy L.inverse L.slope)++
  fieldInverse (poolInverse L.poolWire L.divisor L.inverse)++
  safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail++
  pointSubConstant L L.extendedY L.dy cy.val++
  pointSubConstant L L.extendedX L.dx cx.val := by
  simp only [pointCandidateClear, List.append_assoc]

end ECDSAAdd.Arithmetic
