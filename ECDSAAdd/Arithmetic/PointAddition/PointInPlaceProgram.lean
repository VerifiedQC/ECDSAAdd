import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceLayout
import ECDSAAdd.Math.PointAddition.PointInPlace

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1

/-- 受控常数模加：掩码源、无控制模加、清源。 -/
def pointInPlaceConstantAdd (L : ControlledPointLayout) (r : List Wire) (k : Fp) : Program := prog {
  let M := L.inPlaceConstant r;  -- M.low 接目标 r，M.a 是初始为零的临时常数寄存器。
  maskedConstant(L.core.generic, M.a, k.val);  -- M.a ^= (generic=1 ? k.val : 0)，从零装入受控常数。
  modAddInPlace(M, p);  -- r ← (r + M.a) mod p：generic=1 时加 k，否则 r 不变。
  maskedConstant(L.core.generic, M.a, k.val);  -- M.a 再异或同一受控常数，清零；r 保留计算结果。
}

/-- 规范取负，两个高位在调用边界均零。 -/
def pointInPlaceNegate (L : ControlledPointLayout) : Program := prog {
  let enabled := L.core.generic;
  let negate := L.inPlaceNegate; -- a 接原 x；low 是独立的零临时寄存器。
  controlledModSub(enabled, negate, p);                 -- enabled=1 时 temp = -x mod p
  swapRegisters(enabled, L.point.x, negate.low);        -- x 得到 -x，temp 留原 x
  controlledModAdd(enabled, negate, p);                 -- temp += 新 x，故 temp 清零
}

/-- 从当前x/y重算斜率；零除数例外用编译期常量清除。 -/
def pointInPlaceClearSlope (L : ControlledPointLayout) (lambdaStar : Fp) : Program := prog {
  let enabled := L.core.generic;
  let xIsZero := L.core.equalX;
  let divideEnabled := L.core.equalNegY;
  let slope := L.inPlaceSlope;
  let division := L.inPlaceDivide divideEnabled L.point.x L.point.y;
  equalConstant(enabled, xIsZero, L.inPlaceXZero, 0);  -- xIsZero = enabled AND (x=0)。
  CX enabled divideEnabled;
  CX xIsZero divideEnabled;                  -- divideEnabled = enabled AND (x≠0)
  divideSub(division);                              -- x≠0 分支：slope -= y/x → 0
  maskedConstant(xIsZero, slope, lambdaStar.val);     -- x=0 分支：slope ^= 预先算好的例外斜率 → 0
  CX enabled divideEnabled;                  -- 清除两个临时条件位
  CX xIsZero divideEnabled;
  equalConstant(enabled, xIsZero, L.inPlaceXZero, 0);  -- xIsZero ^= enabled AND (x=0)，重算原条件以清零 xIsZero。
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

/-- §16.3十二步普通分支；λ在未启用分支始终为零，外部乘积无需外部控制。 -/
def pointInPlaceGeneric (L : ControlledPointLayout) (cx cy lambdaStar : Fp) : Program := prog {
  let x := L.point.x;
  let y := L.point.y;
  let slope := L.inPlaceSlope;
  let slopeCopy := L.inPlaceSquare.y;
  let division := L.inPlaceDivide L.core.generic x y; -- slope += y/x，受 generic 控制
  let product := L.inPlaceMultiply;                  -- 输入 slope,x，累加目标 y
  let square := L.inPlaceSquare;                     -- 输入 slope,slopeCopy，累加目标 x

  -- 以下等式描述 generic=1 的普通分支；所有域运算均 mod p。
  pointInPlaceConstantAdd(L, x, -cx);           -- x ← x-cx
  pointInPlaceConstantAdd(L, y, -cy);           -- y ← y-cy
  divideAdd(division);                         -- slope = y/x
  montMulSub(product, p);                      -- y -= slope*x，故 y=0
  copyRegister(none, slope, slopeCopy);  -- slopeCopy ^= slope；从零得到独立乘数副本。
  montMulSub(square, p);                       -- x -= slope²
  copyRegister(none, slope, slopeCopy);  -- slopeCopy 再异或未变的 slope，清零乘数副本。
  pointInPlaceConstantAdd(L, x, 3*cx);          -- x = cx-结果横坐标
  montMulAdd(product, p);                      -- y = slope*x
  pointInPlaceClearSlope(L, lambdaStar);       -- 从当前 x/y 重算并清除 slope
  pointInPlaceNegate(L);                       -- x ← -x
  pointInPlaceConstantAdd(L, x, cx);            -- x = 结果横坐标
  pointInPlaceConstantAdd(L, y, -cy);           -- y = 结果纵坐标
}

/-- g=b XOR o XOR d XOR i；同一CX序列装载与清理。 -/
def pointInPlaceGenericFlag (L : ControlledPointLayout) : Program := prog {
  CX L.control L.core.generic;
  CX L.infinitySelect L.core.generic;
  CX L.doubleSelect L.core.generic;
  CX L.genericSelect L.core.generic;
}

/-- h=b∧[cy≠−cy]，条件是编译期常量，不添加几何前提。 -/
def pointInPlaceDoubleEnable (L : ControlledPointLayout) (cy : Fp) : Program :=
  if cy≠-cy then [.CX L.control L.core.double] else []

/-- 互斥角落的四次XOR：O→C、C→2C、−C→O。 -/
def pointInPlaceCorners (L : ControlledPointLayout) (C : Point) : Program := prog {
  maskedPointConstant(L.infinitySelect, L.point, C);  -- 输入为 O 的分支：point 的编码 XOR C，得到 C。
  maskedPointConstant(L.doubleSelect, L.point, C);  -- 输入为 C 的倍点分支：point 的编码 XOR C，先清为 O。
  maskedPointConstant(L.doubleSelect, L.point, (C+C));  -- 倍点分支：再 XOR 2C 的编码，point 得到 2C。
  maskedPointConstant(L.genericSelect, L.point, (-C));  -- 输入为 -C 的分支：XOR -C 的编码，将 point 清为 O。
}

/-- 输入分类、普通分支、三个互斥角落写回，再从输出清除分类位。 -/
def pointInPlaceFinite (L : ControlledPointLayout) (C : Point) (cx cy : Fp) : Program := prog {
  let enabled := L.control;
  let pointBits := L.inPlacePointZero; -- 对整个点编码做相等检测；不是只检查一个坐标。
  let isInfinity := L.infinitySelect;
  let isDouble := L.doubleSelect;
  let isInverse := L.genericSelect;    -- 原地版本中该旧字段保存 [输入点=-C]，不是普通分支。
  let doubleEnabled := L.core.double;
  pointInPlaceDoubleEnable(L, cy);     -- doubleEnabled = enabled AND (C≠-C)
  equalConstant(enabled, isInfinity, pointBits, pointCode 0);  -- isInfinity = enabled AND (point=O)。
  equalConstant(doubleEnabled, isDouble, pointBits, pointCode C);  -- isDouble = doubleEnabled AND (point=C)。
  equalConstant(enabled, isInverse, pointBits, pointCode (-C));  -- isInverse = enabled AND (point=-C)。
  pointInPlaceGenericFlag(L);          -- 普通分支 = enabled XOR 三个互斥角落标志
  pointInPlaceGeneric(L, cx, cy, exceptionalSlope C); -- 普通分支更新坐标并清斜率
  pointInPlaceCorners(L, C);           -- 角落分支：O→C、C→2C、-C→O
  pointInPlaceGenericFlag(L);          -- 清普通分支标志
  -- 输出已改变，改用输出侧谓词重算旧标志，而不能再次检测输入侧的 0/C/-C。
  equalConstant(enabled, isInfinity, pointBits, pointCode C);  -- enabled=1 时，输出为 C iff 原输入为 O；异或该条件，清 isInfinity。
  equalConstant(doubleEnabled, isDouble, pointBits, pointCode (C+C));  -- 倍点使能下，输出为 2C iff 原输入为 C；清 isDouble。
  equalConstant(enabled, isInverse, pointBits, pointCode 0);  -- enabled=1 时，输出为 O iff 原输入为 -C；异或该条件，清 isInverse。
  pointInPlaceDoubleEnable(L, cy);     -- 清 doubleEnabled；全部工作位归零
}

end ECDSAAdd.Arithmetic
