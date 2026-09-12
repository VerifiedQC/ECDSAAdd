import ECDSAAdd.Arithmetic.ControlledPointPorts

namespace ECDSAAdd.Arithmetic
open Secp256k1


/-- 控制只进入三个最终输出标志，候选算术及测量序列不依赖控制值。 -/
def pointSelectors (L : ControlledPointLayout) : Program :=
  [.CCX L.control L.core.generic L.genericSelect,
   .CCX L.control L.core.double L.doubleSelect,
   .X L.core.input.finite,.CCX L.control L.core.input.finite L.infinitySelect,.X L.core.input.finite]

def selectedPointOutput (L : ControlledPointLayout) (C : Point) : Program :=
  pointGenericOutput L.selected++maskedPointConstant L.doubleSelect L.core.output (C+C)++
    maskedPointConstant L.infinitySelect L.core.output C

def controlledPointOutput (L : ControlledPointLayout) (C : Point) : Program :=
  pointSelectors L++selectedPointOutput L C++pointSelectors L

/-- 控制为假的分支也计算并清理候选，只抑制最终输出。 -/
def controlledPointAddOut (L : ControlledPointLayout) (C : Point) : Program :=
  match C with
  | .zero => copyRegister (some L.control) (PointAddLayout.pointWires L.core.input)
      (PointAddLayout.pointWires L.core.output)
  | @WeierstrassCurve.Affine.Point.some _ _ _ cx cy _ =>
    pointFlagsCompute L.core cx cy++pointCandidateCompute L.core cx cy++controlledPointOutput L C++
      pointCandidateClear L.core cx cy++pointFlagsClear L.core cx cy

def controlledPointSwap (c : Wire) (a b : PointReg) : Program :=
  cswap c a.finite b.finite++swapRegisters c a.x b.x++swapRegisters c a.y b.y

/-- 两次前向 XOR 点加清除旧点；C=O 的原地程序在构造期为空。 -/
def controlledPointAdd (L : ControlledPointLayout) (C : Point) : Program :=
  match C with
  | .zero => []
  | .some _ => controlledPointAddOut L C++controlledPointSwap L.control L.point L.temporary++
      controlledPointAddOut L (-C)

end ECDSAAdd.Arithmetic
