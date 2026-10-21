import ECDSAAdd.Arithmetic.Paper935.HmrKeeperOrder

namespace ECDSAAdd.Arithmetic.Paper935

def hmrClearKeepers : List HmrBlockPlan → BasisState → BasisState
  | [],s => s
  | P::ps,s => writeBit (hmrClearKeepers ps s) P.keeper false

theorem hmrClearKeepers_frame (ps : List HmrBlockPlan) (s : BasisState) (q : Wire)
    (outside : ∀P∈ps,q≠P.keeper) : hmrClearKeepers ps s q=s q := by
  induction ps with
  | nil => rfl
  | cons P ps ih =>
    have ne := outside P (by simp)
    simpa only [hmrClearKeepers,writeBit,Function.update_of_ne ne] using
      ih (fun Q hq => outside Q (by simp [hq]))

theorem hmrLiteralAll_congr (literals : List HmrLiteral) (s t : BasisState)
    (frame : ∀l∈literals,s l.wire=t l.wire) :
    literals.all (fun l => l.value s)=literals.all (fun l => l.value t) := by
  apply Bool.eq_iff_iff.mpr
  simp only [List.all_eq_true]
  apply forall_congr'
  intro l
  apply imp_congr_right
  intro hl
  simp only [HmrLiteral.value,frame l hl]

theorem hmrKeeperValues_frame (ps : List HmrBlockPlan) (s t : BasisState)
    (values : HmrKeeperValues ps s)
    (frame : ∀P∈ps,∀q∈P.keeper::P.literals.map HmrLiteral.wire,t q=s q) :
    HmrKeeperValues ps t := by
  intro P hp
  rw [frame P hp P.keeper (by simp)]
  rw [hmrLiteralAll_congr P.literals t s (fun l hl => frame P hp l.wire
    (List.mem_cons_of_mem _ (List.mem_map.mpr ⟨l,hl,rfl⟩)))]
  exact values P hp

/-- Cleanup tolerates intervening operations that preserve the keeper
equations; it need not immediately follow the corresponding computation. -/
theorem compileHmrBlockedDrop_run (A C : Arena) (ps : List HmrBlockPlan) (qs : List HmrBlockFreePlan)
    (h : compileHmrBlockedDrop A ps=some (C,qs)) (ordered : HmrKeeperOrdered ps)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (values : HmrKeeperValues ps s.basis) :
    run (hmrBlockedDropProgram qs) m s=⟨s.phase,hmrClearKeepers ps s.basis⟩ ∧
      C.Ready (hmrClearKeepers ps s.basis) := by
  induction ps generalizing A C qs s m with
  | nil =>
    simp only [compileHmrBlockedDrop,Option.some.injEq,Prod.mk.injEq] at h
    obtain ⟨rfl,rfl⟩ := h
    exact ⟨rfl,ready⟩
  | cons P ps ih =>
    simp only [compileHmrBlockedDrop] at h
    obtain ⟨⟨B,rs⟩,tail,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,Q⟩,head,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    have tailResult := ih A B rs tail ordered.2 s m ready (fun R hr => values R (by simp [hr]))
    have stable (q : Wire) (hq : q∈P.keeper::P.literals.map HmrLiteral.wire) :
        hmrClearKeepers ps s.basis q=s.basis q := by
      apply hmrClearKeepers_frame
      intro R hr eq
      exact ordered.1 R hr (eq ▸ hq)
    have allSame := hmrLiteralAll_congr P.literals (hmrClearKeepers ps s.basis) s.basis
      (fun l hl => stable l.wire (List.mem_cons_of_mem _ (List.mem_map.mpr ⟨l,hl,rfl⟩)))
    have headValue : hmrClearKeepers ps s.basis P.keeper=
        P.literals.all (fun l => l.value (hmrClearKeepers ps s.basis)) := by
      rw [stable P.keeper (by simp),allSame]
      exact values P (by simp)
    have headResult := compileHmrBlockDrop_run B D P.literals P.keeper Q head
      ⟨s.phase,hmrClearKeepers ps s.basis⟩ (m.drop (measurementCount (hmrBlockedDropProgram rs)))
      tailResult.2 headValue
    have append : hmrBlockedDropProgram (rs++[Q])=hmrBlockedDropProgram rs++Q.program := by
      simp [hmrBlockedDropProgram]
    refine ⟨?_,?_⟩
    · dsimp only
      rw [append,run_append,run_take,tailResult.1]
      exact headResult.1
    · simpa only [headResult.1] using headResult.2.2

end ECDSAAdd.Arithmetic.Paper935
