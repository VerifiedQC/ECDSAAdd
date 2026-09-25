import ECDSAAdd.Arithmetic.PointAddition.ControlledPointPorts
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceProgram

namespace ECDSAAdd.Arithmetic
open Instr
open Secp256k1


/-- 控制只进入三个最终输出标志，候选算术及测量序列不依赖控制值。 -/
def pointSelectors (L : ControlledPointLayout) : Program := prog {
  CCX L.control L.core.generic L.genericSelect;
  CCX L.control L.core.double L.doubleSelect;
  X L.core.input.finite;
  CCX L.control L.core.input.finite L.infinitySelect;
  X L.core.input.finite;
}

def selectedPointOutput (L : ControlledPointLayout) (C : Point) : Program := prog {
  pointGenericOutput(L.selected);  -- genericSelect=1 时，将普通候选点的编码 XOR 到 core.output。
  maskedPointConstant(L.doubleSelect, L.core.output, (C+C));  -- doubleSelect=1 时，将 2C 的编码 XOR 到 core.output。
  maskedPointConstant(L.infinitySelect, L.core.output, C);  -- infinitySelect=1 时，将 C 的编码 XOR 到 core.output。
}

def controlledPointOutput (L : ControlledPointLayout) (C : Point) : Program := prog {
  pointSelectors(L);              -- 外部 control 与普通/倍点/无穷远条件分别 AND
  selectedPointOutput(L, C);       -- 将被选择的结果 XOR 到 core.output
  pointSelectors(L);              -- 输入和条件未改变，重新计算以清零三个选择位
}

/-- 控制为假的分支也计算并清理候选，只抑制最终输出。 -/
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

/-- 除法中心原地点加；有限常量执行固定门列，C=O时构造为空。 -/
def controlledPointAdd (L : ControlledPointLayout) (C : Point) : Program :=
  match C with
  | .zero => []
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => pointInPlaceFinite L C cx cy -- control=1 时 point ← point+C，否则保持；工作区清零。

end ECDSAAdd.Arithmetic
