import ECDSAAdd.Arithmetic.PointAddition.PointAddLayout
import ECDSAAdd.Arithmetic.ModularAddition.SubtractPorts
import ECDSAAdd.Arithmetic.ModularMultiplication.MultiplyPorts
import ECDSAAdd.Arithmetic.ModularInverse.InversePorts
import ECDSAAdd.Arithmetic.PointAddition.SafeDivisor
import ECDSAAdd.Arithmetic.ModularAddition.FieldAddSub
import ECDSAAdd.Arithmetic.ModularMultiplication.FieldMultiply
import ECDSAAdd.Arithmetic.ModularInverse.InverseResources

namespace ECDSAAdd.Arithmetic

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

/-- out ^= (x−k) mod p，k 是经典常量，要求 x,k<p。 -/
def pointSubConstant (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program := prog {
  xorConstant(L.constant, k);                    -- constant = k
  fieldSubXor(L.poolWire, x, L.constant, out);     -- out ^= (x-k) mod p
  xorConstant(L.constant, k);                    -- 清零 constant。
}

/-- 候选点计算的 XOR 接口；参数只保留输入、输出及经典常数。 -/
structure PointCandidateOps where
  fieldSubXor : List Wire → List Wire → List Wire → Program
  fieldMulXor : List Wire → List Wire → List Wire → Program
  fieldInverseXor : List Wire → List Wire → Program
  pointSubConstant : List Wire → List Wire → Nat → Program

/-- L 提供共用零工作池 pool 以及常数寄存器 constant；每个调用后归还零工作位。
这里固定的是辅助接线，不隐藏输入输出，也不清除仍存活的候选点中间量。 -/
def pointCandidateContext (L : PointAddLayout) : CircuitDSL.Context PointCandidateOps := {
  operations := {
    fieldSubXor := fun x y out => fieldSubXor L.poolWire x y out
    fieldMulXor := fun x y out => fieldMulXor L.poolWire x y out
    fieldInverseXor := fun x out => fieldInverseXor L.poolWire x out
    pointSubConstant := fun x out k => pointSubConstant L x out k
  }
}

/-- L.square ^= L.slope² mod p，要求 L.slope<p。 -/
def pointSquare (L : PointAddLayout) : Program := prog using (pointCandidateContext L) {
  let slope := L.slope;
  let copy := L.constant; -- 用于保存 slope 的副本。
  copyRegister(none, slope, copy);                      -- copy = slope
  fieldMulXor slope (copy.take 256) L.square; -- square ^= slope² mod p
  copyRegister(none, slope, copy);                      -- 清零 copy。
}

/-- 计算普通点加候选：slope=(y−cy)/(x−cx)，candidateX=slope²−x−cx，candidateY=slope*(x−candidateX)−y，均 mod p。
(cx,cy) 是经典常量点坐标。generic=1 时要求 x≠cx；为 0 时用分母 1 计算未选中的候选。 -/
def pointCandidateCompute (L : PointAddLayout) (cx cy : Fp) : Program := prog using (pointCandidateContext L) {
  let x := L.extendedX;
  let y := L.extendedY;
  pointSubConstant x L.dx cx.val;                         -- dx = x-cx
  pointSubConstant y L.dy cy.val;                         -- dy = y-cy
  safeDivisor(L.generic, L.dx.take 256, L.divisor.head!, L.divisor.tail);  -- divisor = generic ? dx : 1
  fieldInverseXor L.divisor L.inverse;                  -- inverse = 1/divisor
  fieldMulXor L.dy L.inverse L.slope;                  -- slope = dy/divisor
  pointSquare(L);                                             -- square = slope²
  fieldSubXor L.square x L.offset;                     -- offset = square-x
  pointSubConstant L.offset L.candidateX cx.val;           -- candidateX = offset-cx
  fieldSubXor x L.candidateX L.delta;                   -- delta = x-candidateX
  fieldMulXor L.delta (L.slope.take 256) L.product;       -- product = slope*delta
  fieldSubXor L.product y L.candidateY;                 -- candidateY = product-y
}

/-- 用 pointCandidateCompute 的匹配输入清零候选坐标、斜率及其余中间量。 -/
def pointCandidateClear (L : PointAddLayout) (cx cy : Fp) : Program := prog using (pointCandidateContext L) {
  let x := L.extendedX;
  let y := L.extendedY;
  fieldSubXor L.product y L.candidateY;            -- 清零 candidateY。
  fieldMulXor L.delta (L.slope.take 256) L.product;  -- 清零 product。
  fieldSubXor x L.candidateX L.delta;              -- 清零 delta。
  pointSubConstant L.offset L.candidateX cx.val;     -- 清零 candidateX。
  fieldSubXor L.square x L.offset;                -- 清零 offset。
  pointSquare(L);                                        -- 清零 square。
  fieldMulXor L.dy L.inverse L.slope;             -- 清零 slope。
  fieldInverseXor L.divisor L.inverse;             -- 清零 inverse。
  safeDivisor(L.generic, L.dx.take 256, L.divisor.head!, L.divisor.tail);  -- 清零 divisor。
  pointSubConstant y L.dy cy.val;                    -- 清零 dy。
  pointSubConstant x L.dx cx.val;                    -- 清零 dx。
}

end ECDSAAdd.Arithmetic
