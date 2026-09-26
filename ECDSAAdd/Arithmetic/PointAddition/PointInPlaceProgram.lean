import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceLayout
import ECDSAAdd.Math.PointAddition.PointInPlace

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1

/-- 受 L.core.generic 控制的原地常数模加：r ← (r+generic·k.val) mod p，generic 取值 0/1。
要求 r 为标准代表元及有效布局；控制位保持，临时常量/加法工作区初始为零并恢复。

参数：

- `L`：原地点加布局：point（即 core.input）是更新目标，control 是外部控制，core.generic 是普通分支使能；core 的候选区和 pool 被借作斜率、算术及分类工作位。本函数借用 inPlaceConstant 提供受控常量和模加工作区。
- `r`：被原地更新的小端坐标寄存器，通常接 point.x 或 point.y。
- `k`：要加的经典 Fp 常量；k.val 是实际装入工作寄存器的标准代表元。
-/
def pointInPlaceConstantAdd (L : ControlledPointLayout) (r : List Wire) (k : Fp) : Program := prog {
  let M := L.inPlaceConstant r;  -- M.low 接目标 r，M.a 是初始为零的临时常数寄存器。
  maskedConstant(L.core.generic, M.a, k.val);  -- M.a ^= (generic=1 ? k.val : 0)，从零装入受控常数。
  modAddInPlace(M, p);  -- r ← (r + M.a) mod p：generic=1 时加 k，否则 r 不变。
  maskedConstant(L.core.generic, M.a, k.val);  -- M.a 再异或同一受控常数，清零；r 保留计算结果。
}

/-- L.core.generic=1 时 L.point.x ← −L.point.x mod p，否则 x 不变。
有效布局/输入范围下，控制位及 point.y 保持，临时寄存器初始为零并恢复，两个扩展高位保持零。

参数：

- `L`：原地点加布局：point（即 core.input）是更新目标，control 是外部控制，core.generic 是普通分支使能；core 的候选区和 pool 被借作斜率、算术及分类工作位。本函数在普通分支取负 point.x，point.y 保持。
-/
def pointInPlaceNegate (L : ControlledPointLayout) : Program := prog {
  let enabled := L.core.generic; -- 普通分支使能位，取负期间保持不变。
  let negate := L.inPlaceNegate; -- a 接原 x；low 是独立的零临时寄存器。
  controlledModSub(enabled, negate, p);                 -- enabled=1 时 temp = -x mod p
  swapRegisters(enabled, L.point.x, negate.low);        -- x 得到 -x，temp 留原 x
  controlledModAdd(enabled, negate, p);                 -- temp += 新 x，故 temp 清零
}

/-- 两个具体受控模块：cdiv 减去分子/分母，cconst XOR 固定例外常数。
第一个参数选已准备的分支线，第二个参数是被更新的寄存器。 -/
structure ClearSlopeOps where
  cdiv : CircuitDSL.Branch → List Wire → Program
  cconst : CircuitDSL.Branch → List Wire → Program

/-- L 提供分子 point.y、分母 point.x、已有求逆工作区和两根条件位；lambdaStar 是例外常数。
before/after 正是原电路的条件计算/清理，不增加辅助位。
输入条件位须为零；正文须保持 point.x/y 及条件位，以便 after 重算清理。 -/
def clearSlopeContext (L : ControlledPointLayout) (lambdaStar : Fp) :
    CircuitDSL.Context ClearSlopeOps :=
  let enabled := L.core.generic       -- 普通分支的外层使能位，保持不变。
  let xIsZero := L.core.equalX        -- 零辅助位，暂存 enabled AND (point.x=0)。
  let divideEnabled := L.core.equalNegY -- 零辅助位，暂存 enabled AND (point.x≠0)。
  {
    operations := {
      cdiv := fun condition target =>
        divideSub { L.inPlaceDivide condition.onTrue L.point.x L.point.y with acc := target }
      cconst := fun condition target => maskedConstant condition.onTrue target lambdaStar.val
    }
    before := prog {
      equalConstant enabled xIsZero L.inPlaceXZero 0; -- xIsZero = enabled AND (point.x=0)。
      CX enabled divideEnabled;
      CX xIsZero divideEnabled;                      -- divideEnabled = enabled AND (point.x≠0)。
    }
    after := prog {
      CX enabled divideEnabled;
      CX xIsZero divideEnabled;                      -- 先清除非零分支条件。
      equalConstant enabled xIsZero L.inPlaceXZero 0; -- 再清除为零分支条件。
    }
  }

/-- 清除当前斜率：generic=1 且 point.x≠0 时从 slope 减去 point.y/point.x；
generic=1 且 point.x=0 时将 lambdaStar XOR 到 slope，generic=0 时不改 slope。
在匹配斜率条件下结果为零；point.x/y 保持，零的判等/除法工作区恢复，不是任意斜率的清零操作。

参数：

- `L`：原地点加布局：point（即 core.input）是更新目标，control 是外部控制，core.generic 是普通分支使能；core 的候选区和 pool 被借作斜率、算术及分类工作位。point.x/y 此时保存算法的中间坐标，inPlaceSlope 是待清的斜率，equalX/equalNegY 暂存零检测与除法使能。
- `lambdaStar`：构造期的例外斜率常量；在原地点加中取 exceptionalSlope C，用于中途 x=0、无法从 y/x 重算斜率时清理。
-/
def pointInPlaceClearSlope (L : ControlledPointLayout) (lambdaStar : Fp) : Program :=
    prog using (clearSlopeContext L lambdaStar) {
  let x := CircuitDSL.Branch.mk L.core.equalNegY L.core.equalX; -- 条件“point.x≠0”，不是数值寄存器；两分支均受 generic 控制。
  let slope := L.inPlaceSlope; -- 待清的 256 位斜率寄存器。
  C-div x slope;             -- 非零分支：slope -= point.y/point.x → 0。
  C-const (x XOR 1) slope;   -- 为零分支：slope ^= lambdaStar → 0；XOR 1 仅交换分支，不施加 X 门。
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

/-- 普通分支原地点加：generic=1 时令 λ=(y−cy)/(x−cx)，
x′=λ²−x−cx，y′=λ*(x−x′)−y；x/y 来自 L.point，所有运算均 mod p。generic=0 时点不变。
要求普通分支 x≠cx、有效曲线点/布局、lambdaStar 是匹配的例外斜率；零斜率/工作区最终恢复。
finite 和 generic 保持；特殊点分支由外层单独处理。

参数：

- `L`：原地点加布局：point（即 core.input）是更新目标，control 是外部控制，core.generic 是普通分支使能；core 的候选区和 pool 被借作斜率、算术及分类工作位。
- `cx`：经典常量点 C 的横坐标，属于域 Fp，不是存放坐标的量子寄存器。
- `cy`：经典常量点 C 的纵坐标，属于域 Fp，不是存放坐标的量子寄存器。
- `lambdaStar`：构造期的例外斜率常量；在原地点加中取 exceptionalSlope C，用于中途 x=0、无法从 y/x 重算斜率时清理。
-/
def pointInPlaceGeneric (L : ControlledPointLayout) (cx cy lambdaStar : Fp) : Program := prog {
  let x := L.point.x; -- 被原地更新的横坐标寄存器，256 位。
  let y := L.point.y; -- 被原地更新的纵坐标寄存器，256 位。
  let slope := L.inPlaceSlope; -- 初始为零的 256 位斜率寄存器，最后重新计算并清零。
  let slopeCopy := L.inPlaceSquare.y; -- 平方时借用的零寄存器，暂存斜率副本，乘法后清零。
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

/-- core.generic ^= control XOR infinitySelect XOR doubleSelect XOR genericSelect。
原地版本中三个选择位对应 O、C、−C；它们正确且互斥时，从零得到剩余的受控普通分支标志。

参数：

- `L`：原地分类布局：control 是外部控制；infinitySelect/doubleSelect/genericSelect 此时分别记录输入为 O/C/−C，core.generic 接收剩余普通分支条件。
-/
def pointInPlaceGenericFlag (L : ControlledPointLayout) : Program := prog {
  CX L.control L.core.generic;
  CX L.infinitySelect L.core.generic;
  CX L.doubleSelect L.core.generic;
  CX L.genericSelect L.core.generic;
}

/-- core.double ^= control AND [cy≠−cy]，保留 control；条件由经典 cy 在构造期确定。
用于排除 C=−C 时与互逆点分支重叠的倍点分支，同一门列可清理该使能位。

参数：

- `L`：原地点加布局；本函数读取外部 control，将倍点使能 XOR 到 core.double。
- `cy`：经典常量点 C 的纵坐标，属于域 Fp，不是存放坐标的量子寄存器。比较 cy 与 −cy，以排除倍点/互逆点分类重叠。
-/
def pointInPlaceDoubleEnable (L : ControlledPointLayout) (cy : Fp) : Program :=
  if cy≠-cy then [.CX L.control L.core.double] else []

/-- 在已准备的互斥选择位下更新 L.point：O→C、C→2C、−C→O，未选择的分支保持。
选择位保持；通过点编码 XOR 写回，并要求它们与原输入点匹配，不是任意数据上的点加。

参数：

- `L`：原地点加布局；point 是更新目标，infinitySelect/doubleSelect/genericSelect 分别使能 O→C、C→2C、−C→O。
- `C`：构造电路时已知的经典曲线点，不是点寄存器；用其编码或坐标生成电路。
-/
def pointInPlaceCorners (L : ControlledPointLayout) (C : Point) : Program := prog {
  maskedPointConstant(L.infinitySelect, L.point, C);  -- 输入为 O 的分支：point 的编码 XOR C，得到 C。
  maskedPointConstant(L.doubleSelect, L.point, C);  -- 输入为 C 的倍点分支：point 的编码 XOR C，先清为 O。
  maskedPointConstant(L.doubleSelect, L.point, (C+C));  -- 倍点分支：再 XOR 2C 的编码，point 得到 2C。
  maskedPointConstant(L.genericSelect, L.point, (-C));  -- 输入为 -C 的分支：XOR -C 的编码，将 point 清为 O。
}

/-- 向 L.point 原地受控加有限经典点 C：control=1 时 R→R+C，否则 R 保持。
要求 C 的坐标为 cx/cy、输入为有效曲线点、布局有效且工作区初始为零。
覆盖普通/倍点/互逆点/无穷远分支，最后从输出重算分类条件，归还全部零工作位。

参数：

- `L`：原地点加布局：point（即 core.input）是更新目标，control 是外部控制，core.generic 是普通分支使能；core 的候选区和 pool 被借作斜率、算术及分类工作位。
- `C`：构造电路时已知的经典曲线点，不是点寄存器；用其编码或坐标生成电路。本接口要求 C 有限。
- `cx`：经典常量点 C 的横坐标，属于域 Fp，不是存放坐标的量子寄存器。必须与 C 匹配。
- `cy`：经典常量点 C 的纵坐标，属于域 Fp，不是存放坐标的量子寄存器。必须与 C 匹配。
-/
def pointInPlaceFinite (L : ControlledPointLayout) (C : Point) (cx cy : Fp) : Program := prog {
  let enabled := L.control; -- 外部控制位：为 1 才更新输入点。
  let pointBits := L.inPlacePointZero; -- 对整个点编码做相等检测；不是只检查一个坐标。
  let isInfinity := L.infinitySelect; -- 零标志位，暂存使能下输入点为无穷远点的条件。
  let isDouble := L.doubleSelect; -- 零标志位，暂存使能下输入点等于 C 的倍点分支条件。
  let isInverse := L.genericSelect;    -- 原地版本中该旧字段保存 [输入点=-C]，不是普通分支。
  let doubleEnabled := L.core.double; -- 零辅助位，暂存 enabled AND (C≠-C)，避免角落分支重叠。
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
