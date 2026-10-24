import ECDSAAdd.Arithmetic.Paper935.HmrAndFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- Restore the pre-compute values only on the chain's footprint, retaining
all unrelated changes made by the intervening body. -/
def hmrAndPatch (sites : Finset Wire) (before current : BasisState) : BasisState :=
  fun q => if q∈sites then before q else current q

theorem hmrAndPatch_advance (sites : Finset Wire) (g : HmrAndStage)
    (owned : g.a∈sites ∧ g.b∈sites ∧ g.target∈sites) (s t : BasisState) :
    g.advance (hmrAndPatch sites s t)=hmrAndPatch sites (g.advance s) t := by
  funext q
  by_cases hq : q=g.target
  · subst q
    simp [HmrAndStage.advance,hmrAndPatch,writeBit,owned]
  · by_cases hs : q∈sites <;> simp [HmrAndStage.advance,hmrAndPatch,writeBit,hq,hs]

theorem hmrAndAdvance_patch (sites : Finset Wire) (gs : List HmrAndStage)
    (owned : ∀g∈gs,g.a∈sites ∧ g.b∈sites ∧ g.target∈sites) (s t : BasisState) :
    hmrAndAdvance gs (hmrAndPatch sites s t)=hmrAndPatch sites (hmrAndAdvance gs s) t := by
  induction gs generalizing s with
  | nil => rfl
  | cons g gs ih =>
    rw [hmrAndAdvance,hmrAndPatch_advance sites g (owned g (by simp)),
      ih (fun a ha => owned a (by simp [ha]))]
    rfl

theorem hmrAndReady_patch (sites : Finset Wire) (gs : List HmrAndStage)
    (owned : ∀g∈gs,g.a∈sites ∧ g.b∈sites ∧ g.target∈sites) (s t : BasisState)
    (ready : HmrAndReady gs s) : HmrAndReady gs (hmrAndPatch sites s t) := by
  induction gs generalizing s with
  | nil => trivial
  | cons g gs ih =>
    have head := owned g (by simp)
    refine ⟨ready.1,?_,?_⟩
    · simpa only [hmrAndPatch,if_pos head.2.2] using ready.2.1
    · rw [hmrAndPatch_advance sites g head]
      exact ih (fun a ha => owned a (by simp [ha])) (g.advance s) ready.2.2

/-- Measured unsweep after an arbitrary body. The body must preserve the
actual computed values on chain sites, but may change all other data and
may carry a pending phase debt. No support-exclusion premise is used. -/
theorem hmrAndUnsweep_delayed (sites : Finset Wire) (gs : List HmrAndStage)
    (owned : ∀g∈gs,g.a∈sites ∧ g.b∈sites ∧ g.target∈sites)
    (before : BasisState) (current : State) (m : List Bool)
    (ready : HmrAndReady gs before)
    (preserved : ∀q∈sites,current.basis q=hmrAndAdvance gs before q) :
    run (hmrAndUnsweep gs) m current=
      ⟨current.phase,hmrAndPatch sites before current.basis⟩ := by
  have compute : hmrAndAdvance gs (hmrAndPatch sites before current.basis)=current.basis := by
    rw [hmrAndAdvance_patch sites gs owned]
    funext q
    by_cases hq : q∈sites
    · simp only [hmrAndPatch,if_pos hq,←preserved q hq]
    · simp only [hmrAndPatch,if_neg hq]
  have result := hmrAndUnsweep_run gs ⟨current.phase,hmrAndPatch sites before current.basis⟩ m
    (hmrAndReady_patch sites gs owned before current.basis ready)
  simpa only [compute] using result

end ECDSAAdd.Arithmetic.Paper935
