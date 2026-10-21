import ECDSAAdd.Arithmetic.Paper935.HmrTaggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSigmaDeath

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrFreezeGuard (old zero : Bool) :
    ((old || zero) && !(zero && !old))=old := by
  cases old <;> cases zero <;> rfl

/-- The F15 guard recovers the pre-freeze state. The sigma relation is
derived from the independent row invariant and the current coefficient. -/
theorem hmrSigma_witness (r : WindowRow) (nonempty : r.payload≠[])
    (p : Int) (old : PinState) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : BasisState) (sigma frozen fire : Wire) (zero : Bool)
    (sigmaValue : s sigma=decide (0≤old.rows.z ∧ old.rows.g%2=1))
    (rowValue : r.value s=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv)
    (frozenZero : old.frozen=true → old.rows.g=0)
    (frozenValue : s frozen=(old.frozen || zero))
    (fireValue : s fire=(zero && !old.frozen)) :
    s sigma=(s r.second && !(s frozen && !s fire)) := by
  rw [sigmaValue,frozenValue,fireValue,hmrFreezeGuard,r.second_bit nonempty s,rowValue]
  cases h : old.frozen with
  | false =>
    simpa [h] using ECDSAAdd.Divsteps.swap_bit_law p old.rows inv odd
  | true => simp [frozenZero h]

theorem hmrSigma_early_witness (r : WindowRow) (nonempty : r.payload≠[])
    (p : Int) (old : PinState) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : BasisState) (sigma : Wire) (early : old.frozen=false)
    (sigmaValue : s sigma=decide (0≤old.rows.z ∧ old.rows.g%2=1))
    (rowValue : r.value s=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv) :
    s sigma=s r.second := by
  rw [sigmaValue,r.second_bit nonempty s,rowValue,early]
  simp only [Bool.false_eq_true,ite_false]
  simpa using ECDSAAdd.Divsteps.swap_bit_law p old.rows inv odd

end ECDSAAdd.Arithmetic.Paper935
