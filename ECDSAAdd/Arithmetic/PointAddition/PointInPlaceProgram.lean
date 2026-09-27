import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceLayout
import ECDSAAdd.Math.PointAddition.PointInPlace

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1

/-- r ← (r+L.core.generic·k.val) mod p，k 是经典域元素，要求 r<p。 -/
def pointInPlaceConstantAdd (L : ControlledPointLayout) (r : List Wire) (k : Fp) : Program := prog {
  let M := L.inPlaceConstant r;  -- a 用于保存受控常数，low 接目标 r。
  maskedConstant(L.core.generic, M.a, k.val);  -- M.a = generic ? k.val : 0
  modAddInPlace(M, p);  -- r += M.a (mod p)
  maskedConstant(L.core.generic, M.a, k.val);  -- 清零 M.a。
}

/-- L.core.generic=1 时 L.point.x ← −L.point.x mod p，为 0 时不变。 -/
def pointInPlaceNegate (L : ControlledPointLayout) : Program := prog {
  let enabled := L.core.generic;
  let negate := L.inPlaceNegate; -- a 接 x，low 用作临时寄存器。
  controlledModSub(enabled, negate, p);                 -- enabled=1 时 negate.low = -x mod p。
  swapRegisters(enabled, L.point.x, negate.low);        -- enabled=1 时交换 x 与 negate.low。
  controlledModAdd(enabled, negate, p);                 -- 清零 negate.low。
}

/-- 两个具体受控模块：cdiv 减去分子/分母，cconst XOR 固定例外常数。
第一个参数选已准备的分支线，第二个参数是被更新的寄存器。 -/
structure ClearSlopeOps where
  cdiv : CircuitDSL.Branch → List Wire → Program
  cconst : CircuitDSL.Branch → List Wire → Program

/-- 只绑定两处简写：分子 point.y、分母 point.x、求逆工作区和例外常数 lambdaStar。
不插入准备或清理操作；条件位由 pointInPlaceClearSlope 显式计算和清零。 -/
def clearSlopeContext (L : ControlledPointLayout) (lambdaStar : Fp) :
    CircuitDSL.Context ClearSlopeOps := {
  operations := {
    cdiv := fun condition target =>
      divideSub { L.inPlaceDivide condition.onTrue L.point.x L.point.y with acc := target }
    cconst := fun condition target => maskedConstant condition.onTrue target lambdaStar.val
  }
}

/-- generic=1 时清零 slope：point.x≠0 时减去 point.y/point.x，否则 XOR 预先算好的例外斜率 lambdaStar。
要求 slope 与对应分支的斜率相等；generic=0 时不变。 -/
def pointInPlaceClearSlope (L : ControlledPointLayout) (lambdaStar : Fp) : Program :=
    prog using (clearSlopeContext L lambdaStar) {
  let enabled := L.core.generic; -- 1 表示启用普通点加分支，0 表示不启用。
  let xIsZero := L.core.equalX; -- 保存 enabled AND [point.x=0]。
  let divideEnabled := L.core.equalNegY; -- 保存 enabled AND [point.x≠0]。
  let slope := L.inPlaceSlope; -- 待清零的斜率。
  let x := CircuitDSL.Branch.mk divideEnabled xIsZero; -- 条件“point.x≠0”，两分支均受 enabled 控制。

  equalConstant(enabled, xIsZero, L.inPlaceXZero, 0); -- xIsZero = enabled AND [point.x=0]
  CX enabled divideEnabled;
  CX xIsZero divideEnabled; -- divideEnabled = enabled AND [point.x≠0]

  C-div x slope;           -- 非零分支：slope -= point.y/point.x → 0。
  C-const (x XOR 1) slope; -- 为零分支：slope ^= lambdaStar → 0；XOR 1 仅交换分支，不施加 X 门。

  CX enabled divideEnabled;
  CX xIsZero divideEnabled; -- 清零 divideEnabled。
  equalConstant(enabled, xIsZero, L.inPlaceXZero, 0); -- 清零 xIsZero。
}

/-- Proof-facing expansion of the readable program; the instruction sequence is unchanged. -/
theorem pointInPlaceClearSlope_program (L : ControlledPointLayout) (lambdaStar : Fp) :
    pointInPlaceClearSlope L lambdaStar =
  equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0 ++
  [.CX L.core.generic L.core.equalNegY,.CX L.core.equalX L.core.equalNegY] ++
  divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y) ++
  maskedConstant L.core.equalX L.inPlaceSlope lambdaStar.val ++
  [.CX L.core.generic L.core.equalNegY,.CX L.core.equalX L.core.equalNegY] ++
  equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0 := by
  simp only [pointInPlaceClearSlope, List.append_assoc]
  rfl

/-- generic=1 时将 (x,y) 更新为 (x′,y′)：λ=(y−cy)/(x−cx)，x′=λ²−x−cx，y′=λ*(x−x′)−y，均 mod p。
(cx,cy) 是经典常量点坐标，要求 x≠cx；lambdaStar 用于清除例外分支斜率。generic=0 时不变。 -/
def pointInPlaceGeneric (L : ControlledPointLayout) (cx cy lambdaStar : Fp) : Program := prog {
  let x := L.point.x;
  let y := L.point.y;
  let slope := L.inPlaceSlope; -- 用于保存斜率。
  let slopeCopy := L.inPlaceSquare.y; -- 平方时所用的斜率副本。
  let division := L.inPlaceDivide L.core.generic x y; -- 分子 y、分母 x、目标 slope。
  let product := L.inPlaceMultiply;                  -- 乘数 slope/x，目标 y。
  let square := L.inPlaceSquare;                     -- 乘数 slope/slopeCopy，目标 x。

  -- 以下公式对应 generic=1，运算均 mod p。
  pointInPlaceConstantAdd(L, x, -cx);           -- x -= cx
  pointInPlaceConstantAdd(L, y, -cy);           -- y -= cy
  divideAdd(division);                         -- slope = y/x
  montMulSub(product, p);                      -- y -= slope*x → 0
  copyRegister(none, slope, slopeCopy);  -- slopeCopy = slope
  montMulSub(square, p);                       -- x -= slope²
  copyRegister(none, slope, slopeCopy);  -- 清零 slopeCopy。
  pointInPlaceConstantAdd(L, x, 3*cx);          -- x += 3*cx，得到 cx-结果横坐标。
  montMulAdd(product, p);                      -- y = slope*x
  pointInPlaceClearSlope(L, lambdaStar);       -- 清零 slope。
  pointInPlaceNegate(L);                       -- x ← -x
  pointInPlaceConstantAdd(L, x, cx);            -- x += cx，得到结果横坐标。
  pointInPlaceConstantAdd(L, y, -cy);           -- y -= cy，得到结果纵坐标。
}

/-- L.core.generic ^= L.control XOR infinitySelect XOR doubleSelect XOR genericSelect。
三个 select 分别表示输入为 O、C、−C 的互斥分支；O 是无穷远点。 -/
def pointInPlaceGenericFlag (L : ControlledPointLayout) : Program := prog {
  CX L.control L.core.generic;
  CX L.infinitySelect L.core.generic;
  CX L.doubleSelect L.core.generic;
  CX L.genericSelect L.core.generic;
}

/-- L.core.double ^= L.control AND [cy≠−cy]，cy 是经典常量点的纵坐标。 -/
def pointInPlaceDoubleEnable (L : ControlledPointLayout) (cy : Fp) : Program :=
  if cy≠-cy then [.CX L.control L.core.double] else []

/-- 在分支标志已准备好时，将 L.point 的三个特殊分支分别更新为 O→C、C→2C、−C→O。
C 是经典有限点，O 是无穷远点。 -/
def pointInPlaceCorners (L : ControlledPointLayout) (C : Point) : Program := prog {
  maskedPointConstant(L.infinitySelect, L.point, C);  -- 输入为 O：point 编码 ^= C → C。
  maskedPointConstant(L.doubleSelect, L.point, C);  -- 输入为 C：point 编码 ^= C → O。
  maskedPointConstant(L.doubleSelect, L.point, (C+C));  -- 输入为 C：point 编码 ^= 2C → 2C。
  maskedPointConstant(L.genericSelect, L.point, (-C));  -- 输入为 -C：point 编码 ^= -C → O。
}

/-- L.control=1 时 L.point ← L.point+C，为 0 时不变。
C 是坐标为 (cx,cy) 的经典有限曲线点。 -/
def pointInPlaceFinite (L : ControlledPointLayout) (C : Point) (cx cy : Fp) : Program := prog {
  let enabled := L.control;
  let pointBits := L.inPlacePointZero; -- 整个点编码的判等接线。
  let isInfinity := L.infinitySelect; -- 用于标记输入为 O 的分支。
  let isDouble := L.doubleSelect; -- 用于标记输入为 C 的分支。
  let isInverse := L.genericSelect;    -- 用于标记输入为 -C 的分支；不是普通分支。
  let doubleEnabled := L.core.double; -- 用于保存 enabled AND [C≠-C]。
  pointInPlaceDoubleEnable(L, cy);     -- doubleEnabled = enabled AND [C≠-C]
  equalConstant(enabled, isInfinity, pointBits, pointCode 0);  -- isInfinity = enabled AND [point=O]
  equalConstant(doubleEnabled, isDouble, pointBits, pointCode C);  -- isDouble = doubleEnabled AND [point=C]
  equalConstant(enabled, isInverse, pointBits, pointCode (-C));  -- isInverse = enabled AND [point=-C]
  pointInPlaceGenericFlag(L);          -- generic = enabled XOR 三个特殊分支标志。
  pointInPlaceGeneric(L, cx, cy, exceptionalSlope C); -- 普通分支 point ← point+C。
  pointInPlaceCorners(L, C);           -- 特殊分支 O→C、C→2C、-C→O。
  pointInPlaceGenericFlag(L);          -- 清零 generic。
  -- 用输出侧条件重算旧标志。
  equalConstant(enabled, isInfinity, pointBits, pointCode C);  -- 清零 isInfinity。
  equalConstant(doubleEnabled, isDouble, pointBits, pointCode (C+C));  -- 清零 isDouble。
  equalConstant(enabled, isInverse, pointBits, pointCode 0);  -- 清零 isInverse。
  pointInPlaceDoubleEnable(L, cy);     -- 清零 doubleEnabled。
}

end ECDSAAdd.Arithmetic
