import ECDSAAdd.Arithmetic.CuccaroSignedSquareResources
import ECDSAAdd.Arithmetic.CuccaroNormalizedModProof
import ECDSAAdd.Math.SquareReduction

namespace ECDSAAdd.Arithmetic

/-- Exact low-width workspace for a `with_square` schedule.  `product` holds
only the currently active Karatsuba leaf.  `work` is reused as the signed
square mask while the leaf is built and as modular scratch while it is folded. -/
structure CuccaroStreamedSquareLayout where
  y : List Wire
  out : List Wire
  product : List Wire
  pad : List Wire
  work : List Wire
  productHigh : Wire
  outHigh : Wire
  workHigh : Wire
  cin : Wire
  normFlag : Wire
  modFlag : Wire
  sumCarry : Wire

namespace CuccaroStreamedSquareLayout

def wires (L : CuccaroStreamedSquareLayout) : List Wire :=
  L.y++L.out++L.product++L.pad++L.work++
    [L.productHigh,L.outHigh,L.workHigh,L.cin,L.normFlag,L.modFlag,L.sumCarry]

structure Widths (L : CuccaroStreamedSquareLayout) : Prop where
  y : L.y.length=256
  out : L.out.length=256
  product : L.product.length=258
  pad : L.pad.length=128
  work : L.work.length=256

def low (L : CuccaroStreamedSquareLayout) : List Wire := L.y.take 128
def high (L : CuccaroStreamedSquareLayout) : List Wire := (L.y.drop 128).take 128
def sum (L : CuccaroStreamedSquareLayout) : List Wire := L.high++[L.sumCarry]

def square128 (L : CuccaroStreamedSquareLayout) (src : List Wire) : Program :=
  cuccaroSignedTriangularSquare src (L.product.take 256) L.pad
    (L.work.take 128) [] L.cin

def square128Clear (L : CuccaroStreamedSquareLayout) (src : List Wire) : Program :=
  cuccaroSignedTriangularSquareClear src (L.product.take 256) L.pad
    (L.work.take 128) [] L.cin

def square129 (L : CuccaroStreamedSquareLayout) : Program :=
  cuccaroSignedTriangularSquare L.sum L.product L.pad
    (L.work.take 129) [] L.cin

def square129Clear (L : CuccaroStreamedSquareLayout) : Program :=
  cuccaroSignedTriangularSquareClear L.sum L.product L.pad
    (L.work.take 129) [] L.cin

def prepareSum (L : CuccaroStreamedSquareLayout) : Program :=
  cuccaroAdd (L.low++[L.pad.getD 0 0]) L.sum L.cin

def clearSum (L : CuccaroStreamedSquareLayout) : Program := L.prepareSum.reverse

theorem low_length (L : CuccaroStreamedSquareLayout) (hw : L.Widths) :
    L.low.length=128 := by simp [low,hw.y]

theorem high_length (L : CuccaroStreamedSquareLayout) (hw : L.Widths) :
    L.high.length=128 := by simp [high,hw.y]

theorem sum_length (L : CuccaroStreamedSquareLayout) (hw : L.Widths) :
    L.sum.length=129 := by simp [sum,L.high_length hw]

/-- Exact producer prices before fold fusion.  The destination is cleaned by
the inverse before the next producer is materialized. -/
theorem square128_counts (L : CuccaroStreamedSquareLayout) (hw : L.Widths)
    (src : List Wire) (hs : src.length=128) :
    (toffoliCount (L.square128 src)=16766 ∧ measurementCount (L.square128 src)=0) ∧
    (toffoliCount (L.square128Clear src)=16766 ∧
      measurementCount (L.square128Clear src)=0) := by
  simpa [square128,square128Clear] using
    cuccaroSignedTriangularSquare_counts_128 src (L.product.take 256) L.pad
      (L.work.take 128) [] L.cin hs (by simp [hw.product])
      (by simp [hw.pad]) (by simp [hw.work])

theorem square129_counts (L : CuccaroStreamedSquareLayout) (hw : L.Widths) :
    (toffoliCount L.square129=17026 ∧ measurementCount L.square129=0) ∧
    (toffoliCount L.square129Clear=17026 ∧ measurementCount L.square129Clear=0) := by
  simpa [square129,square129Clear] using
    cuccaroSignedTriangularSquare_counts_129 L.sum L.product L.pad
      (L.work.take 129) [] L.cin (L.sum_length hw) hw.product
      (by simp [hw.pad]) (by simp [hw.work])

theorem sum_counts (L : CuccaroStreamedSquareLayout) (hw : L.Widths) :
    (toffoliCount L.prepareSum=256 ∧ measurementCount L.prepareSum=0) ∧
    (toffoliCount L.clearSum=256 ∧ measurementCount L.clearSum=0) := by
  have h := cuccaroAdd_counts (L.low++[L.pad.getD 0 0]) L.sum L.cin (by
    simp [L.low_length hw,L.sum_length hw])
  constructor
  · constructor
    · change toffoliCount (cuccaroAdd (L.low++[L.pad.getD 0 0]) L.sum L.cin)=256
      rw [h.1,L.sum_length hw]
    · simpa [prepareSum] using h.2
  · rw [clearSum,toffoliCount_reverse,measurementCount_reverse]
    constructor
    · change toffoliCount (cuccaroAdd (L.low++[L.pad.getD 0 0]) L.sum L.cin)=256
      rw [h.1,L.sum_length hw]
    · simpa [prepareSum] using h.2

/-- Static support of the streamed workspace itself.  A concrete point layout
adds its resident point and classification wires to this pool. -/
theorem wires_length (L : CuccaroStreamedSquareLayout) (hw : L.Widths) :
    L.wires.length=1161 := by
  simp [wires,hw.y,hw.out,hw.product,hw.pad,hw.work]

end CuccaroStreamedSquareLayout

/-- The exact five-term non-adjacent form used by the incumbent fold. -/
theorem secp256k1_c_naf :
    SquareReduction.c+2^6=2^32+2^10+2^4+1 := by
  norm_num [SquareReduction.c]

/-- Rotating a product by 128 bits can be folded without materializing a
fresh 256-bit word.  The low 128-bit limb is rotated into the high half and
the remaining limb is multiplied by the pseudo-Mersenne constant.  This is
valid for the 258-bit cross-term as well as the two 256-bit leaves. -/
theorem rotate128_fold_exact (P : Nat) :
    (((P%2^128)*2^128)+SquareReduction.c*(P/2^128))%SquareReduction.p=
      (P*2^128)%SquareReduction.p := by
  have h := SquareReduction.first_mod ((P%2^128)*2^128) (P/2^128)
  have split : (P%2^128)*2^128+SquareReduction.B*(P/2^128)=P*2^128 := by
    rw [SquareReduction.B]
    have hp := Nat.mod_add_div P (2^128)
    nlinarith
  calc
    (((P%2^128)*2^128)+SquareReduction.c*(P/2^128))%SquareReduction.p =
        (((P%2^128)*2^128)+SquareReduction.B*(P/2^128))%SquareReduction.p := h
    _ = (P*2^128)%SquareReduction.p := by rw [split]

/-- The 258-bit sum-square leaves only a 130-bit quotient after the rotate.
Consequently `c` times that quotient fits in 163 bits, which removes the
extra 256-bit temporary from the earlier design. -/
theorem cross_high130_bound (P : Nat) (hP : P<2^258) :
    P/2^128<2^130 := by
  exact (Nat.div_lt_iff_lt_mul (by positivity : 0<2^128)).2 (by
    simpa [←Nat.pow_add] using hP)

theorem cross_fold_term_bound (P : Nat) (hP : P<2^258) :
    SquareReduction.c*(P/2^128)<2^163 := by
  have hh := cross_high130_bound P hP
  norm_num [SquareReduction.c] at *
  nlinarith

end ECDSAAdd.Arithmetic
