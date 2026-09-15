import ECDSAAdd.Arithmetic.ControlledPointPorts
import ECDSAAdd.Arithmetic.DivideSpec
import ECDSAAdd.Arithmetic.PointEncoding

namespace ECDSAAdd.Arithmetic
namespace ControlledPointLayout

/-- §16的七位沿用旧字段：o/infinitySelect、d/doubleSelect、i/genericSelect，
g/core.generic、e/core.equalX、q/core.equalNegY、h/core.double。 -/
def inPlaceFlags (L : ControlledPointLayout) : List Wire :=
  [L.infinitySelect,L.doubleSelect,L.genericSelect,L.core.generic,L.core.equalX,L.core.equalNegY,L.core.double]

def inPlaceSlope (L : ControlledPointLayout) : List Wire := L.core.slope.take 256

def inPlaceInverse (L : ControlledPointLayout) : InverseLoopLayout :=
  (poolInverse L.core.poolWire L.core.divisor L.core.inverse).inner

def inPlaceBorrow (L : ControlledPointLayout) : List Wire :=
  L.inPlaceInverse.temp++L.inPlaceInverse.arithmetic.wires.take 1828

def inPlaceOuterCoreWires (L : ControlledPointLayout) : List Wire :=
  L.inPlaceInverse.first.usedTapeWires L.inPlaceInverse.records++L.inPlaceBorrow

def inPlaceBit (L : ControlledPointLayout) (i : Nat) : Wire :=
  L.inPlaceBorrow.getD i L.control

/-- 772位scratch按既有单目布局排列；三个视图共用同一借用区。 -/
def inPlaceUnary (L : ControlledPointLayout) (low : List Wire) (high : Wire) (k : Nat) : ModUnaryLayout :=
  ⟨low,high,(L.inPlaceBorrow.drop k).take 257,(L.inPlaceBorrow.drop (k+257)).take 256,
    L.inPlaceBit (k+513),(L.inPlaceBorrow.drop (k+514)).take 257,L.inPlaceBit (k+771)⟩

def inPlaceDivide (L : ControlledPointLayout) (c : Wire) (D E : List Wire) : DivideLayout :=
  ⟨c,D,E,L.inPlaceSlope,L.inPlaceInverse⟩

/-- 两个外部乘积共用B[2…1828]，B[0]/B[1]为输入/输出高位。 -/
def inPlaceMultiply (L : ControlledPointLayout) : MontLayout :=
  borrowedMont L.inPlaceBorrow L.control 2 (L.inPlaceSlope++[L.inPlaceBit 0])
    L.point.x (L.point.y++[L.inPlaceBit 1])

/-- 平方只保留S=B[0…255]及两个扩展高位，工作区从258开始。 -/
def inPlaceSquare (L : ControlledPointLayout) : MontLayout :=
  borrowedMont L.inPlaceBorrow L.control 258 (L.inPlaceSlope++[L.inPlaceBit 256])
    (L.inPlaceBorrow.take 256) (L.point.x++[L.inPlaceBit 257])

/-- 常数源占前257位，目标高位257，scratch从258开始。 -/
def inPlaceConstant (L : ControlledPointLayout) (r : List Wire) : ModInPlaceLayout :=
  let U := L.inPlaceUnary r (L.inPlaceBit 257) 258
  ⟨{ U.core with a:=L.inPlaceBorrow.take 257 },U.mask,U.flag⟩

/-- 受控取负以T=−x、交换、T+=x三步组合，T占借用区1…257。 -/
def inPlaceNegate (L : ControlledPointLayout) : ModInPlaceLayout :=
  let U := L.inPlaceUnary ((L.inPlaceBorrow.drop 1).take 256) (L.inPlaceBit 257) 258
  ⟨{ U.core with a:=L.point.x++[L.inPlaceBit 0] },U.mask,U.flag⟩

def inPlacePointZero (L : ControlledPointLayout) : List ZeroBit :=
  zeroPorts (PointAddLayout.pointWires L.point) (L.inPlaceBorrow.take 513)

def inPlaceXZero (L : ControlledPointLayout) : List ZeroBit :=
  zeroPorts L.point.x (L.inPlaceBorrow.take 256)

theorem inPlaceSlope_length (L : ControlledPointLayout) (hw : L.Widths) : L.inPlaceSlope.length=256 := by
  have hs := hw.words L.core.slope (by simp [PointAddLayout.words])
  simp [inPlaceSlope,hs]

theorem inPlaceDivide_widths (L : ControlledPointLayout) (hw : L.Widths)
    (c : Wire) (D E : List Wire) (hD : D.length=256) (hE : E.length=256) :
    (L.inPlaceDivide c D E).Widths := by
  have hi := poolInverse_widths L.core.poolWire L.core.divisor L.core.inverse hw.divisor hw.inverse
  exact ⟨⟨hD,hi.records,hi.counter,hi.low,hi.arithmetic,hi.a,hi.temp,hi.output⟩,
    hE,L.inPlaceSlope_length hw⟩

theorem inPlaceBorrow_length (L : ControlledPointLayout) (hw : L.Widths) : L.inPlaceBorrow.length=2085 := by
  have hi := poolInverse_widths L.core.poolWire L.core.divisor L.core.inverse hw.divisor hw.inverse
  have ht : L.inPlaceInverse.temp.length=257 := hi.temp
  have hm : L.inPlaceInverse.arithmetic.width=256 := hi.arithmetic
  have hbits (bs : List ModBit) : (bs.flatMap ModBit.all).length=8*bs.length := by
    induction bs with
    | nil => rfl
    | cons b bs ih => simp [ModBit.all,ih]; omega
  simp only [inPlaceBorrow,List.length_append,List.length_take,ht,ModLayout.wires,List.length_cons,
    List.length_nil,hbits,ModLayout.bits,List.length_append,List.length_cons,List.length_nil]
  change 257+min 1828 (8*(L.inPlaceInverse.arithmetic.width+1)+2)=2085
  rw [hm]
  rfl

theorem inPlaceUnary_widths (L : ControlledPointLayout) (hw : L.Widths)
    (low : List Wire) (high : Wire) (k : Nat) (hl : low.length=256) (hk : k+772≤2085) :
    (L.inPlaceUnary low high k).Widths 256 := by
  constructor
  · exact hl
  all_goals simp only [inPlaceUnary,List.length_take,List.length_drop,L.inPlaceBorrow_length hw]; omega

theorem inPlaceMultiply_widths (L : ControlledPointLayout) (hw : L.Widths) : L.inPlaceMultiply.Widths :=
  borrowedMont_widths _ _ _ _ _ _ (by simp [L.inPlaceSlope_length hw]) hw.inputX (by simp [point,hw.inputY])

theorem inPlaceSquare_widths (L : ControlledPointLayout) (hw : L.Widths) : L.inPlaceSquare.Widths :=
  borrowedMont_widths _ _ _ _ _ _ (by simp [L.inPlaceSlope_length hw])
    (by simp [L.inPlaceBorrow_length hw]) (by simp [point,hw.inputX])

end ControlledPointLayout
end ECDSAAdd.Arithmetic
