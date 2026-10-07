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
def pointSubConstantKernel (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program :=
    prog using (pointConstantContext L) {
  out ^= (x - const(k)) mod p;
}

theorem pointSubConstantKernel_program (L : PointAddLayout) (x out : List Wire) (k : Nat) :
    pointSubConstantKernel L x out k = xorConstant L.constant k ++
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
    pointSubConstant := fun x out k => pointSubConstantKernel L x out k
    modSubXor := fun x y out q => modSub (poolSub L.poolWire x y out) q
    modMulXor := fun x y out q => montMulXor (poolMul L.poolWire x y out) q
    modSquareXor := fun x out q => copyRegister none x L.constant ++
      montMulXor (poolMul L.poolWire x (L.constant.take 256) out) q ++
      copyRegister none x L.constant
  }
}

/-- L.square ^= L.slope² mod p，要求 L.slope<p。 -/
def pointSquareKernel (L : PointAddLayout) : Program := prog using (pointCandidateContext L) {
  L.square ^= (L.slope ^ 2) mod p;
}

theorem pointSquareKernel_program (L : PointAddLayout) : pointSquareKernel L =
    copyRegister none L.slope L.constant ++
    fieldMul (poolMul L.poolWire L.slope (L.constant.take 256) L.square) ++
    copyRegister none L.slope L.constant := rfl


end ECDSAAdd.Arithmetic
