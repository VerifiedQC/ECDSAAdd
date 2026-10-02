import ECDSAAdd.Math.FusedSignedHalf
import ECDSAAdd.Arithmetic.TrailingZeroCompare

/-!
Actual gate capsules for the exact fused signed half. The mathematical blueprint
is attributed to the incumbent's signed-sum/fold architecture and local verified
SignedWord kernels. Complete kernel assembly is not yet asserted by this module.
-/
namespace ECDSAAdd.Arithmetic

/-- Exact output-side parity erasure. The low three bits are irrelevant because
the fixed half-threshold is divisible by eight. -/
def fusedHalfParityClear (x T carry : List Wire) (cin q : Wire) : Program :=
  compareLtMultipleEight x T carry cin q (FusedSignedHalf.halfThreshold p) ++ [.X q]

/-- The actual cleanup stream consumes the known parity, preserves every other wire,
and restores phase for every independent measurement record. -/
theorem fusedHalfParityClear_correct (x T carry : List Wire) (cin q : Wire)
    (hn : (q::cin::(x++T++carry)).Nodup) (hx : 3≤x.length)
    (hT : T.length=x.length) (hc : carry.length=x.length)
    (hK : FusedSignedHalf.halfThreshold p<2^x.length) (s : State) (m : List Bool)
    (hT0 : regValue T s.basis=0) (hc0 : regValue carry s.basis=0) (hi : s.basis cin=false)
    (hq : s.basis q=decide (FusedSignedHalf.halfThreshold p≤regValue x s.basis)) :
    (run (fusedHalfParityClear x T carry cin q) m s).phase=s.phase ∧
    (∀ w,w≠q → (run (fusedHalfParityClear x T carry cin q) m s).basis w=s.basis w) ∧
    (run (fusedHalfParityClear x T carry cin q) m s).basis q=false := by
  let progCmp := compareLtMultipleEight x T carry cin q (FusedSignedHalf.halfThreshold p)
  let t := run progCmp m s
  have hcmp := compareLtMultipleEight_correct x T carry cin q (FusedSignedHalf.halfThreshold p)
    hn hx hT hc hK FusedSignedHalf.secp_halfThreshold_multiple_eight s m hT0 hc0 hi
  have hbool : (s.basis q ^^ decide (regValue x s.basis<FusedSignedHalf.halfThreshold p))=true := by
    rw [hq]
    by_cases hh : regValue x s.basis<FusedSignedHalf.halfThreshold p
    · simp [hh,show ¬FusedSignedHalf.halfThreshold p≤regValue x s.basis by omega]
    · simp [hh,show FusedSignedHalf.halfThreshold p≤regValue x s.basis by omega]
  have hqt : t.basis q=true := hcmp.2.2.trans hbool
  rw [fusedHalfParityClear,run_append,run_take]
  change t.phase=s.phase ∧
    (∀ w,w≠q → (writeBit t.basis q (!t.basis q)) w=s.basis w) ∧
    (writeBit t.basis q (!t.basis q)) q=false
  refine ⟨hcmp.1,?_,?_⟩
  · intro w hw
    simpa [writeBit,hw] using hcmp.2.1 w hw
  · simp [writeBit,hqt]

/-- The same emitted comparator/correction stream has n-3 Toffolis and measurements. -/
theorem fusedHalfParityClear_counts (x T carry : List Wire) (cin q : Wire)
    (hT : T.length=x.length) (hc : carry.length=x.length) :
    toffoliCount (fusedHalfParityClear x T carry cin q)=x.length-3 ∧
    measurementCount (fusedHalfParityClear x T carry cin q)=x.length-3 := by
  have hh := compareLtMultipleEight_counts x T carry cin q (FusedSignedHalf.halfThreshold p) hT hc
  simp only [fusedHalfParityClear,toffoliCount_append,measurementCount_append,hh.1,hh.2,
    toffoliCount,measurementCount,Nat.add_zero]
  constructor <;> trivial

end ECDSAAdd.Arithmetic
