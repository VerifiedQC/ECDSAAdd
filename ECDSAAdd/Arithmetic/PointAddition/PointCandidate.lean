import ECDSAAdd.Arithmetic.PointAddition.PointAddLayout
import ECDSAAdd.Arithmetic.ModularAddition.SubtractPorts
import ECDSAAdd.Arithmetic.ModularMultiplication.MultiplyPorts
import ECDSAAdd.Arithmetic.ModularInverse.InversePorts
import ECDSAAdd.Arithmetic.PointAddition.SafeDivisor
import ECDSAAdd.Arithmetic.ModularAddition.FieldAddSub
import ECDSAAdd.Arithmetic.ModularMultiplication.FieldMultiply
import ECDSAAdd.Arithmetic.ModularInverse.InverseResources

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL

namespace PointAddLayout

def poolWire (L : PointAddLayout) : Nat → Wire := fun i => L.pool.getD i 0

def extendedX (L : PointAddLayout) : List Wire := L.input.x++[L.inputXHigh]
def extendedY (L : PointAddLayout) : List Wire := L.input.y++[L.inputYHigh]

end PointAddLayout

/- 直接接收输入/输出寄存器；pool 只决定共用工作位的位置，不是算术输入。
   以下都是 XOR 输出接口，输入保持不变；对同样输入再调用一次可清除结果。
   位宽、互异和零工作位条件沿用 poolSub/poolMul/poolInverse 的规格。 -/
/-- out ^= (x−y) mod p，要求 x,y<p；p 是 secp256k1 坐标域的模数，pool 提供工作位。 -/
abbrev fieldSubXor (pool : Nat → Wire) (x y out : List Wire) : Program :=
  fieldSub (poolSub pool x y out)

/-- out ^= x*y mod p，要求 x<p、y<2^256；p 是 secp256k1 坐标域的模数，pool 提供工作位。 -/
abbrev fieldMulXor (pool : Nat → Wire) (x y out : List Wire) : Program :=
  fieldMul (poolMul pool x y out)

/-- out ^= x⁻¹ mod p，要求 0<x<p；p 是 secp256k1 坐标域的模数，pool 提供工作位。 -/
abbrev fieldInverseXor (pool : Nat → Wire) (x out : List Wire) : Program :=
  fieldInverse (poolInverse pool x out)

structure PointConstantOps where
  modSubConstXor : List Wire → List Wire → Nat → Nat → Program

/-- 常数的装载/清理配方；q 来自表达式，不忽略传入模数。 -/
def pointConstantContext (L : PointAddLayout) : CircuitDSL.Context PointConstantOps := {
  operations := {
    modSubConstXor := fun x out k q => xorConstant L.constant k ++
      modSub (poolSub L.poolWire x L.constant out) q ++ xorConstant L.constant k
  }
}

/-- out ^= (x−k) mod p，k 是经典常量，要求 x,k<p。 -/
def pointSubConstant (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program :=
    prog using (pointConstantContext L) {
  out ^= (x - const(k)) mod p;
}

theorem pointSubConstant_program (L : PointAddLayout) (x out : List Wire) (k : Nat) :
    pointSubConstant L x out k = xorConstant L.constant k ++
      fieldSub (poolSub L.poolWire x L.constant out) ++ xorConstant L.constant k := rfl

/-- 候选点计算的 XOR 接口；参数只保留输入、输出及经典常数。 -/
structure PointCandidateOps where
  fieldSubXor : List Wire → List Wire → List Wire → Program
  fieldMulXor : List Wire → List Wire → List Wire → Program
  fieldInverseXor : List Wire → List Wire → Program
  pointSubConstant : List Wire → List Wire → Nat → Program
  modSubXor : List Wire → List Wire → List Wire → Nat → Program
  modMulXor : List Wire → List Wire → List Wire → Nat → Program
  modSquareXor : List Wire → List Wire → Nat → Program

/-- L 提供共用零工作池 pool 以及常数寄存器 constant；每个调用后归还零工作位。
这里固定的是辅助接线，不隐藏输入输出，也不清除仍存活的候选点中间量。 -/
def pointCandidateContext (L : PointAddLayout) : CircuitDSL.Context PointCandidateOps := {
  operations := {
    fieldSubXor := fun x y out => fieldSubXor L.poolWire x y out
    fieldMulXor := fun x y out => fieldMulXor L.poolWire x y out
    fieldInverseXor := fun x out => fieldInverseXor L.poolWire x out
    pointSubConstant := fun x out k => pointSubConstant L x out k
    modSubXor := fun x y out q => modSub (poolSub L.poolWire x y out) q
    modMulXor := fun x y out q => montMulXor (poolMul L.poolWire x y out) q
    modSquareXor := fun x out q => copyRegister none x L.constant ++
      montMulXor (poolMul L.poolWire x (L.constant.take 256) out) q ++
      copyRegister none x L.constant
  }
}

/-- L.square ^= L.slope² mod p，要求 L.slope<p。 -/
def pointSquare (L : PointAddLayout) : Program := prog using (pointCandidateContext L) {
  L.square ^= (L.slope ^ 2) mod p;
}

theorem pointSquare_program (L : PointAddLayout) : pointSquare L =
    copyRegister none L.slope L.constant ++
    fieldMul (poolMul L.poolWire L.slope (L.constant.take 256) L.square) ++
    copyRegister none L.slope L.constant := rfl

/-- 计算普通点加候选：slope=(y−cy)/(x−cx)，candidateX=slope²−x−cx，candidateY=slope*(x−candidateX)−y，均 mod p。
(cx,cy) 是经典常量点坐标。generic=1 时要求 x≠cx；为 0 时用分母 1 计算未选中的候选。 -/
def pointCandidateCompute (L : PointAddLayout) (cx cy : Fp) : Program := prog using (pointCandidateContext L) {
  let x := L.extendedX;
  let y := L.extendedY;
  let divisor := L.divisor.head! :: L.divisor.tail; -- 用于保存安全分母，最低位可装入 1。
  pointSubConstant x L.dx cx.val;                         -- dx = x-cx
  pointSubConstant y L.dy cy.val;                         -- dy = y-cy
  control (L.generic XOR 1) { [L.divisor.head!] ^= const(1); };
  control L.generic { divisor ^= (L.dx.take 256); };
  fieldInverseXor L.divisor L.inverse;                  -- inverse = 1/divisor
  L.slope ^= (L.dy * L.inverse) mod p;
  pointSquare(L);                                             -- square = slope²
  L.offset ^= (L.square - x) mod p;
  pointSubConstant L.offset L.candidateX cx.val;           -- candidateX = offset-cx
  L.delta ^= (x - L.candidateX) mod p;
  L.product ^= (L.delta * (L.slope.take 256)) mod p;
  L.candidateY ^= (L.product - y) mod p;
}

/-- 用 pointCandidateCompute 的匹配输入清零候选坐标、斜率及其余中间量。 -/
def pointCandidateClear (L : PointAddLayout) (cx cy : Fp) : Program := prog using (pointCandidateContext L) {
  let x := L.extendedX;
  let y := L.extendedY;
  let divisor := L.divisor.head! :: L.divisor.tail; -- 已恢复的安全分母。
  L.candidateY ^= (L.product - y) mod p;              -- 清零 candidateY。
  L.product ^= (L.delta * (L.slope.take 256)) mod p;   -- 清零 product。
  L.delta ^= (x - L.candidateX) mod p;                -- 清零 delta。
  pointSubConstant L.offset L.candidateX cx.val;     -- 清零 candidateX。
  L.offset ^= (L.square - x) mod p;                 -- 清零 offset。
  pointSquare(L);                                        -- 清零 square。
  L.slope ^= (L.dy * L.inverse) mod p;              -- 清零 slope。
  fieldInverseXor L.divisor L.inverse;             -- 清零 inverse。
  control (L.generic XOR 1) { [L.divisor.head!] ^= const(1); }; -- 清零常量 1。
  control L.generic { divisor ^= (L.dx.take 256); };          -- 清零 dx 副本。
  pointSubConstant y L.dy cy.val;                    -- 清零 dy。
  pointSubConstant x L.dx cx.val;                    -- 清零 dx。
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
  simp only [pointCandidateCompute, safeDivisor, xorConstant, maskedConstant, List.append_assoc]
  rfl

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
  simp only [pointCandidateClear, safeDivisor, xorConstant, maskedConstant, List.append_assoc]
  rfl

end ECDSAAdd.Arithmetic
