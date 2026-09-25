import ECDSAAdd.Arithmetic.PointAddition.ControlledPointPorts
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceProgram

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1


/-- genericSelect ^= control AND core.generic，doubleSelect ^= control AND core.double，
infinitySelect ^= control AND NOT core.input.finite；有效布局下输入及原分类位保持。
重复调用清理相同条件的结果；外部控制不改变候选算术/测量序列。

参数：

- `L`：受控点加布局：core.input/core.output 是输入和 XOR 输出，control 是外部控制，三个 Select 位选择输出分支，core 还提供候选与工作区。此处 genericSelect/doubleSelect/infinitySelect 分别对应普通、倍点、无穷远输入分支。
-/
def pointSelectors (L : ControlledPointLayout) : Program := prog {
  CCX L.control L.core.generic L.genericSelect;
  CCX L.control L.core.double L.doubleSelect;
  X L.core.input.finite;
  CCX L.control L.core.input.finite L.infinitySelect;
  X L.core.input.finite;
}

/-- 按已准备的选择位，将普通候选、2C 或 C 的点编码 XOR 到 L.core.output。
选择位应分别表示受控普通/倍点/无穷远分支；全部为零时不写输出，其余中间量保持。

参数：

- `L`：受控点加布局：core.input/core.output 是输入和 XOR 输出，control 是外部控制，三个 Select 位选择输出分支，core 还提供候选与工作区。
- `C`：构造电路时已知的经典曲线点，不是点寄存器；用其编码或坐标生成电路。
-/
def selectedPointOutput (L : ControlledPointLayout) (C : Point) : Program := prog {
  pointGenericOutput(L.selected);  -- genericSelect=1 时，将普通候选点的编码 XOR 到 core.output。
  maskedPointConstant(L.doubleSelect, L.core.output, (C+C));  -- doubleSelect=1 时，将 2C 的编码 XOR 到 core.output。
  maskedPointConstant(L.infinitySelect, L.core.output, C);  -- infinitySelect=1 时，将 C 的编码 XOR 到 core.output。
}

/-- 在分类位和候选匹配时，control=1 将 R+C 的编码 XOR 到 core.output，control=0 时输出不变。
零的三个选择位在结束后恢复；输入、候选及其历史保持，清理由外层负责。

参数：

- `L`：受控点加布局：core.input/core.output 是输入和 XOR 输出，control 是外部控制，三个 Select 位选择输出分支，core 还提供候选与工作区。
- `C`：构造电路时已知的经典曲线点，不是点寄存器；用其编码或坐标生成电路。
-/
def controlledPointOutput (L : ControlledPointLayout) (C : Point) : Program := prog {
  pointSelectors(L);              -- 外部 control 与普通/倍点/无穷远条件分别 AND
  selectedPointOutput(L, C);       -- 将被选择的结果 XOR 到 core.output
  pointSelectors(L);              -- 输入和条件未改变，重新计算以清零三个选择位
}

/-- control=1 时 core.output 的编码 ^= R+C 的编码，control=0 时输出保持；R 来自 core.input。
要求有效点输入、布局和零工作区，control/输入点保持，工作区恢复零。
未启用分支也计算和清理候选，只抑制最终输出；这不是原地点加。

参数：

- `L`：受控点加布局：core.input/core.output 是输入和 XOR 输出，control 是外部控制，三个 Select 位选择输出分支，core 还提供候选与工作区。
- `C`：构造电路时已知的经典曲线点，不是点寄存器；用其编码或坐标生成电路。
-/
def controlledPointAddOut (L : ControlledPointLayout) (C : Point) : Program :=
  match C with
  | .zero => copyRegister (some L.control) (PointAddLayout.pointWires L.core.input)
      (PointAddLayout.pointWires L.core.output) -- C=O：control=1 时 output 的编码 ^= 输入点编码。
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => prog {
      pointFlagsCompute(L.core, cx, cy);  -- 根据输入点计算判等及普通/倍点标志，不受外部 control 限制。
      pointCandidateCompute(L.core, cx, cy);  -- 计算安全斜率和候选坐标；control=0 时也执行并保留待清理量。
      controlledPointOutput(L, C);  -- control=1 时 output ^= encode(R+C)，否则 output 不变。
      pointCandidateClear(L.core, cx, cy);  -- 清除候选坐标、斜率及中间量，保留 output。
      pointFlagsClear(L.core, cx, cy);  -- 用未变的输入重算并清零全部分支标志。
    }

/-- 受 control 控制的原地点加：|control⟩|R⟩ ↦ |control⟩|R+control·C⟩，control 取值 0/1。
R 保存在 L.point，C 是经典常量点；有效点/布局及零工作区条件下，control 保持，工作区恢复零。
C=O 时是空电路；有限 C 的实现包含普通分支、倍点、互逆点和无穷远点。

参数：

- `L`：原地点加布局：point（即 core.input）是更新目标，control 是外部控制，core.generic 是普通分支使能；core 的候选区和 pool 被借作斜率、算术及分类工作位。
- `C`：构造电路时已知的经典曲线点，不是点寄存器；用其编码或坐标生成电路。
-/
def controlledPointAdd (L : ControlledPointLayout) (C : Point) : Program :=
  match C with
  | .zero => []
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => pointInPlaceFinite L C cx cy -- control=1 时 point ← point+C，否则保持；工作区清零。

end ECDSAAdd.Arithmetic
