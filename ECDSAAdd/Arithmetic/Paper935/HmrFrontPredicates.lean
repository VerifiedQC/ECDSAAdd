import ECDSAAdd.Arithmetic.Paper935.WindowControls

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrCounterSign (counter : List Wire) (nonempty : counter≠[]) (s : BasisState) :
    (!s (counter.getLastD 0))=decide (0≤signedRegValue counter s) := by
  have view := List.dropLast_concat_getLast nonempty
  have last : counter.getLastD 0=counter.getLast nonempty := by
    conv_lhs => rw [←view]
    exact List.getLastD_concat
  have negative := signedRegValue_neg_iff counter.dropLast (counter.getLast nonempty) s
  rw [view] at negative
  rw [last]
  cases hs : s (counter.getLast nonempty)
  · have nonneg : 0≤signedRegValue counter s := by
      by_contra h
      have := negative.mp (by omega)
      simp [hs] at this
    simp [nonneg]
  · have neg := negative.mpr hs
    simp [show ¬0≤signedRegValue counter s by omega]

theorem hmrRowLow (r : WindowRow) (nonempty : r.payload≠[]) (s : BasisState) :
    s (r.payload.headD 0)=decide (r.value s%2=1) := by
  obtain ⟨payload,sign⟩ := r
  cases payload with
  | nil => exact False.elim (nonempty rfl)
  | cons low tail =>
    have even := signedRegValue_even_iff low (tail++[sign]) s
    have lo := Int.emod_nonneg (signedRegValue (low::(tail++[sign])) s) (by decide : (2 : Int)≠0)
    have hi := Int.emod_lt_of_pos (signedRegValue (low::(tail++[sign])) s) (by decide : (0 : Int)<2)
    change s low=decide (signedRegValue (low::(tail++[sign])) s%2=1)
    cases hs : s low
    · have zero := even.mpr hs
      simp [zero]
    · have one : signedRegValue (low::(tail++[sign])) s%2=1 := by
        have nonzero : signedRegValue (low::(tail++[sign])) s%2≠0 := by
          intro h; have := even.mp h; simp [hs] at this
        omega
      simp [one]

theorem hmrRootPredicate (counter : List Wire) (r : WindowRow)
    (cn : counter≠[]) (rn : r.payload≠[]) (s : BasisState) :
    (!s (counter.getLastD 0) && s (r.payload.headD 0))=
      decide (0≤signedRegValue counter s ∧ r.value s%2=1) := by
  rw [hmrCounterSign counter cn s,hmrRowLow r rn s]
  by_cases hc : 0≤signedRegValue counter s <;> by_cases hr : r.value s%2=1 <;> simp [hc,hr]

end ECDSAAdd.Arithmetic.Paper935
