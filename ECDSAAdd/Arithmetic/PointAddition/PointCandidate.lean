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
abbrev fieldSubXor (pool : Nat → Wire) (x y out : List Wire) : Program :=
  fieldSub (poolSub pool x y out)

abbrev fieldMulXor (pool : Nat → Wire) (x y out : List Wire) : Program :=
  fieldMul (poolMul pool x y out)

abbrev fieldInverseXor (pool : Nat → Wire) (x out : List Wire) : Program :=
  fieldInverse (poolInverse pool x out)

/-- 常量工作字装载后立即卸载；输入输出直接连接模减法接口。 -/
def pointSubConstant (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program := prog {
  xorConstant(L.constant, k);                    -- constant = k
  fieldSubXor(L.poolWire, x, L.constant, out);     -- out ^= (x-k) mod p
  xorConstant(L.constant, k);                    -- constant 清零
}

/-- 平方使用独立乘数副本，避免重复控制线；复制前后不计 Toffoli。 -/
def pointSquare (L : PointAddLayout) : Program := prog {
  let slope := L.slope;
  let copy := L.constant;
  copyRegister(none, slope, copy);                      -- 独立副本 copy = slope
  fieldMulXor(L.poolWire, slope, copy.take 256, L.square); -- square ^= slope² mod p
  copyRegister(none, slope, copy);                      -- copy 清零
}

/-- 普通候选在每一条分支上计算。分支标志预先确定，安全除数保证求逆定义域。
候选区和工作区初始为零；下面的算术等式均按模 p 理解。只有普通分支选用此候选。 -/
def pointCandidateCompute (L : PointAddLayout) (cx cy : Fp) : Program := prog {
  let x := L.extendedX; -- 输入坐标扩展为 257 位，最高位为零。
  let y := L.extendedY;
  let pool := L.poolWire;
  pointSubConstant(L, x, L.dx, cx.val);                         -- dx = x-cx
  pointSubConstant(L, y, L.dy, cy.val);                         -- dy = y-cy
  safeDivisor(L.generic, L.dx.take 256, L.divisor.head!, L.divisor.tail);  -- divisor ^= (generic=1 ? dx : 1)，从零得到非零的安全分母。
  fieldInverseXor(pool, L.divisor, L.inverse);                  -- inverse = 1/divisor
  fieldMulXor(pool, L.dy, L.inverse, L.slope);                  -- slope = dy/divisor
  pointSquare(L);                                             -- square = slope²
  fieldSubXor(pool, L.square, x, L.offset);                     -- offset = slope²-x
  pointSubConstant(L, L.offset, L.candidateX, cx.val);           -- candidateX = slope²-x-cx
  fieldSubXor(pool, x, L.candidateX, L.delta);                   -- delta = x-candidateX
  fieldMulXor(pool, L.delta, L.slope.take 256, L.product);       -- product = slope*delta
  fieldSubXor(pool, L.product, y, L.candidateY);                 -- candidateY = slope*delta-y
}

/-- 按依赖的逆序重新执行前向 XOR 模块；没有反转测量程序或依赖测量结果选路。 -/
def pointCandidateClear (L : PointAddLayout) (cx cy : Fp) : Program := prog {
  let x := L.extendedX;
  let y := L.extendedY;
  let pool := L.poolWire;
  fieldSubXor(pool, L.product, y, L.candidateY);            -- candidateY ^= (product-y) mod p，清零。
  fieldMulXor(pool, L.delta, L.slope.take 256, L.product);  -- product ^= delta*slope mod p，清零。
  fieldSubXor(pool, x, L.candidateX, L.delta);              -- delta ^= (x-candidateX) mod p，清零。
  pointSubConstant(L, L.offset, L.candidateX, cx.val);     -- candidateX ^= (offset-cx) mod p，清零。
  fieldSubXor(pool, L.square, x, L.offset);                -- offset ^= (square-x) mod p，清零。
  pointSquare(L);                                        -- square ^= slope² mod p，清零。
  fieldMulXor(pool, L.dy, L.inverse, L.slope);             -- slope ^= dy*inverse mod p，清零。
  fieldInverseXor(pool, L.divisor, L.inverse);             -- inverse ^= divisor⁻¹ mod p，清零。
  safeDivisor(L.generic, L.dx.take 256, L.divisor.head!, L.divisor.tail);  -- divisor 再异或 (generic=1 ? dx : 1)，清零安全分母。
  pointSubConstant(L, y, L.dy, cy.val);                    -- dy ^= (y-cy) mod p，清零。
  pointSubConstant(L, x, L.dx, cx.val);                    -- dx ^= (x-cx) mod p，清零。
}

end ECDSAAdd.Arithmetic
