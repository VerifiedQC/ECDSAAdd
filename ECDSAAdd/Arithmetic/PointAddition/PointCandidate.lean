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
/-- out ^= (x−y) mod p，保留标准代表元输入 x/y；pool 提供的工作位初始为零并恢复。
要求 poolSub 的有效位宽和线路互异条件；p 为 secp256k1 域模数。

参数：

- `pool`：工作池的经典索引到 wire 的映射；为内部模减法提供互异的零工作位，不在运行时分配 qubit。
- `x`：小端被减数寄存器，保持不变。
- `y`：小端减数寄存器，保持不变。
- `out`：差的 XOR 输出寄存器。
-/
abbrev fieldSubXor (pool : Nat → Wire) (x y out : List Wire) : Program :=
  fieldSub (poolSub pool x y out)

/-- out ^= x*y mod p，保留标准代表元输入 x/y；pool 提供的工作位初始为零并恢复。
要求 poolMul 的有效位宽和线路互异条件。

参数：

- `pool`：工作池的经典索引到 wire 的映射，为内部模乘及历史提供零工作位。
- `x`：小端被乘数寄存器，保持不变。
- `y`：小端乘数寄存器，保持不变。
- `out`：标准模积的 XOR 输出寄存器。
-/
abbrev fieldMulXor (pool : Nat → Wire) (x y out : List Wire) : Program :=
  fieldMul (poolMul pool x y out)

/-- out ^= x⁻¹ mod p，要求 0<x<p；x 保持，pool 提供的工作位初始为零并恢复。
要求 poolInverse 的有效位宽和线路互异条件。

参数：

- `pool`：工作池的经典索引到 wire 的映射，为求逆内核和历史提供零工作位。
- `x`：保存非零域元素的小端输入寄存器，保持不变。
- `out`：模逆元的 XOR 输出寄存器。
-/
abbrev fieldInverseXor (pool : Nat → Wire) (x out : List Wire) : Program :=
  fieldInverse (poolInverse pool x out)

/-- out ^= (x−k) mod p，保留 x；k/x 为标准代表元，满足域减法布局条件。
L.constant 和 pool 工作区初始为零并恢复；先装入经典常量 k，运算后立即卸载。

参数：

- `L`：点加布局；本函数借用其中的 constant 装入常量、pool 提供模减法工作位。
- `x`：小端被减数寄存器，保持不变。
- `out`：模减结果的 XOR 输出寄存器。
- `k`：构造期的经典减数，按域元素的自然数标准代表元给出。
-/
def pointSubConstant (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program := prog {
  xorConstant(L.constant, k);                    -- constant = k
  fieldSubXor(L.poolWire, x, L.constant, out);     -- out ^= (x-k) mod p
  xorConstant(L.constant, k);                    -- constant 清零
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

/-- L.square ^= L.slope² mod p，保留 L.slope，零的 L.constant 和 pool 工作区恢复。
要求有效域乘法布局/输入范围；先复制 slope 到独立乘数寄存器，避免重复控制线。

参数：

- `L`：点加布局；slope 是输入斜率，square 接收平方的 XOR 输出，constant 暂存 slope 副本，pool 提供模乘工作位。
-/
def pointSquare (L : PointAddLayout) : Program := prog using (pointCandidateContext L) {
  let slope := L.slope; -- 保持不变的斜率寄存器，含扩展高位。
  let copy := L.constant; -- 初始为零的常数工作寄存器，此处借作斜率的独立副本。
  copyRegister(none, slope, copy);                      -- 独立副本 copy = slope
  fieldMulXor slope (copy.take 256) L.square; -- square ^= slope² mod p
  copyRegister(none, slope, copy);                      -- copy 清零
}

/-- 准备普通点加候选：slope=(y−cy)/(generic=1 ? x−cx : 1)，
candidateX=slope²−x−cx，candidateY=slope*(x−candidateX)−y；x/y 是 L.input 的坐标，运算均 mod p。
要求分支标志已正确计算、普通分支 x≠cx，候选区/工作区初始为零且布局有效。
输入保持，pool 工作区归零；dx/dy、逆元、斜率等中间量保留供清理，只有普通分支选用此候选。

参数：

- `L`：点加布局：input/output 是输入与 XOR 输出点寄存器，generic/double 等位保存分支条件，候选坐标/斜率等寄存器保存中间量，pool 是共享算术工作池。
- `cx`：经典常量点 C 的横坐标，属于域 Fp，不是存放坐标的量子寄存器。
- `cy`：经典常量点 C 的纵坐标，属于域 Fp，不是存放坐标的量子寄存器。
-/
def pointCandidateCompute (L : PointAddLayout) (cx cy : Fp) : Program := prog using (pointCandidateContext L) {
  let x := L.extendedX; -- 输入坐标扩展为 257 位，最高位为零。
  let y := L.extendedY; -- 输入纵坐标扩展为 257 位，最高位为零。
  pointSubConstant x L.dx cx.val;                         -- dx = x-cx
  pointSubConstant y L.dy cy.val;                         -- dy = y-cy
  safeDivisor(L.generic, L.dx.take 256, L.divisor.head!, L.divisor.tail);  -- divisor ^= (generic=1 ? dx : 1)，从零得到非零的安全分母。
  fieldInverseXor L.divisor L.inverse;                  -- inverse = 1/divisor
  fieldMulXor L.dy L.inverse L.slope;                  -- slope = dy/divisor
  pointSquare(L);                                             -- square = slope²
  fieldSubXor L.square x L.offset;                     -- offset = slope²-x
  pointSubConstant L.offset L.candidateX cx.val;           -- candidateX = slope²-x-cx
  fieldSubXor x L.candidateX L.delta;                   -- delta = x-candidateX
  fieldMulXor L.delta (L.slope.take 256) L.product;       -- product = slope*delta
  fieldSubXor L.product y L.candidateY;                 -- candidateY = slope*delta-y
}

/-- 将 pointCandidateCompute 生成的候选坐标、斜率、逆元、dx/dy 等中间量清零，输入和分支标志保持。
要求输入/标志未变且中间量匹配；按依赖逆序重算 XOR 结果，不倒放测量，也不清除任意未知数据。

参数：

- `L`：点加布局：input/output 是输入与 XOR 输出点寄存器，generic/double 等位保存分支条件，候选坐标/斜率等寄存器保存中间量，pool 是共享算术工作池。
- `cx`：经典常量点 C 的横坐标，属于域 Fp，不是存放坐标的量子寄存器。
- `cy`：经典常量点 C 的纵坐标，属于域 Fp，不是存放坐标的量子寄存器。
-/
def pointCandidateClear (L : PointAddLayout) (cx cy : Fp) : Program := prog using (pointCandidateContext L) {
  let x := L.extendedX; -- 保持不变的输入横坐标，扩展为 257 位。
  let y := L.extendedY; -- 保持不变的输入纵坐标，扩展为 257 位。
  fieldSubXor L.product y L.candidateY;            -- candidateY ^= (product-y) mod p，清零。
  fieldMulXor L.delta (L.slope.take 256) L.product;  -- product ^= delta*slope mod p，清零。
  fieldSubXor x L.candidateX L.delta;              -- delta ^= (x-candidateX) mod p，清零。
  pointSubConstant L.offset L.candidateX cx.val;     -- candidateX ^= (offset-cx) mod p，清零。
  fieldSubXor L.square x L.offset;                -- offset ^= (square-x) mod p，清零。
  pointSquare(L);                                        -- square ^= slope² mod p，清零。
  fieldMulXor L.dy L.inverse L.slope;             -- slope ^= dy*inverse mod p，清零。
  fieldInverseXor L.divisor L.inverse;             -- inverse ^= divisor⁻¹ mod p，清零。
  safeDivisor(L.generic, L.dx.take 256, L.divisor.head!, L.divisor.tail);  -- divisor 再异或 (generic=1 ? dx : 1)，清零安全分母。
  pointSubConstant y L.dy cy.val;                    -- dy ^= (y-cy) mod p，清零。
  pointSubConstant x L.dx cx.val;                    -- dx ^= (x-cx) mod p，清零。
}

end ECDSAAdd.Arithmetic
