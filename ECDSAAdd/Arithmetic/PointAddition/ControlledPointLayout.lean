import ECDSAAdd.Arithmetic.PointAddition.ControlledPointPorts
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceProgram

namespace ECDSAAdd.Arithmetic
open Secp256k1


/-- 控制只进入三个最终输出标志，候选算术及测量序列不依赖控制值。 -/
def pointSelectors (L : ControlledPointLayout) : Program := prog {
  Instr.CCX(L.control, L.core.generic, L.genericSelect);
  Instr.CCX(L.control, L.core.double, L.doubleSelect);
  Instr.X(L.core.input.finite);
  Instr.CCX(L.control, L.core.input.finite, L.infinitySelect);
  Instr.X(L.core.input.finite);
}

def selectedPointOutput (L : ControlledPointLayout) (C : Point) : Program := prog {
  pointGenericOutput(L.selected);
  maskedPointConstant(L.doubleSelect, L.core.output, (C+C));
  maskedPointConstant(L.infinitySelect, L.core.output, C);
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
      (PointAddLayout.pointWires L.core.output)
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => prog {
      pointFlagsCompute(L.core, cx, cy);
      pointCandidateCompute(L.core, cx, cy);
      controlledPointOutput(L, C);
      pointCandidateClear(L.core, cx, cy);
      pointFlagsClear(L.core, cx, cy);
    }

/-- 除法中心原地点加；有限常量执行固定门列，C=O时构造为空。 -/
def controlledPointAdd (L : ControlledPointLayout) (C : Point) : Program :=
  match C with
  | .zero => []
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ => pointInPlaceFinite L C cx cy

end ECDSAAdd.Arithmetic
