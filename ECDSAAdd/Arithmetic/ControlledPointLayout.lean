import ECDSAAdd.Arithmetic.PointAddSpec
import ECDSAAdd.Arithmetic.PointAddResources
import ECDSAAdd.Arithmetic.SwapRegisters

namespace ECDSAAdd.Arithmetic
open Secp256k1

/-- 点加共用一套算术布局，额外四线为外部控制与三个最终输出选择位。 -/
structure ControlledPointLayout where
  core : PointAddLayout
  control : Wire
  genericSelect : Wire
  doubleSelect : Wire
  infinitySelect : Wire

namespace ControlledPointLayout

def point (L : ControlledPointLayout) := L.core.input
def temporary (L : ControlledPointLayout) := L.core.output
def selectors (L : ControlledPointLayout) := [L.genericSelect,L.doubleSelect,L.infinitySelect]
def extras (L : ControlledPointLayout) := L.control::L.selectors
def outWork (L : ControlledPointLayout) := L.core.work++L.selectors
def work (L : ControlledPointLayout) := PointAddLayout.pointWires L.temporary++L.outWork
def wires (L : ControlledPointLayout) := L.core.wires++L.extras
def Widths (L : ControlledPointLayout) := L.core.Widths

def selected (L : ControlledPointLayout) : PointAddLayout := { L.core with generic:=L.genericSelect }

theorem core_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup) : L.core.wires.Nodup :=
  (List.nodup_append'.mp hn).1

theorem selected_widths (L : ControlledPointLayout) (h : L.Widths) : L.selected.Widths := by
  exact ⟨h.inputX,h.inputY,h.outputX,h.outputY,h.words,h.divisor,h.inverse,h.pool⟩

theorem selected_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup) : L.selected.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro w
  have hh := List.nodup_iff_count.mp hn w
  simp only [selected,wires,extras,selectors,PointAddLayout.wires,PointAddLayout.work,PointAddLayout.flags,PointAddLayout.words,
    List.count_append,List.count_cons,List.count_nil] at hh ⊢
  omega

theorem extra_not_core (L : ControlledPointLayout) (hn : L.wires.Nodup) (w : Wire) (hw : w∈L.extras) :
    w∉L.core.wires := fun hc => List.disjoint_left.mp (List.nodup_append'.mp hn).2.2 hc hw

end ControlledPointLayout

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
