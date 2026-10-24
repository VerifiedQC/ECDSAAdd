import ECDSAAdd.Arithmetic.Paper935.HmrKeeperValues

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrClearKeepers_mem (ps : List HmrBlockPlan) (s : BasisState) (q : Wire)
    (mem : q∈ps.map HmrBlockPlan.keeper) : hmrClearKeepers ps s q=false := by
  induction ps with
  | nil => simp at mem
  | cons P ps ih =>
    by_cases eq : q=P.keeper
    · subst q
      simp [hmrClearKeepers,writeBit]
    · have rest : q∈ps.map HmrBlockPlan.keeper := by simpa [eq] using mem
      simpa [hmrClearKeepers,writeBit,eq] using ih rest

theorem hmrClearKeepers_restore (ps : List HmrBlockPlan) (s : BasisState)
    (clean : ∀P∈ps,s P.keeper=false) :
    hmrClearKeepers ps (hmrBlockedAdvance ps s)=s := by
  funext q
  by_cases mem : q∈ps.map HmrBlockPlan.keeper
  · rw [hmrClearKeepers_mem ps _ q mem]
    obtain ⟨P,hp,eq⟩ := List.mem_map.mp mem
    exact (eq ▸ clean P hp).symm
  · have outside : ∀P∈ps,q≠P.keeper := by
      intro P hp eq
      exact mem (List.mem_map.mpr ⟨P,hp,eq.symm⟩)
    rw [hmrClearKeepers_frame ps _ q outside]
    exact hmrBlockedAdvance_frame ps s q outside

theorem hmrClearKeepers_write (ps : List HmrBlockPlan) (s : BasisState) (q : Wire) (b : Bool)
    (outside : ∀P∈ps,q≠P.keeper) :
    hmrClearKeepers ps (writeBit s q b)=writeBit (hmrClearKeepers ps s) q b := by
  induction ps with
  | nil => rfl
  | cons P ps ih =>
    rw [hmrClearKeepers,ih (fun R hr => outside R (by simp [hr]))]
    exact (Function.update_comm (outside P (by simp)).symm _ _ _).symm

end ECDSAAdd.Arithmetic.Paper935
