import ECDSAAdd.Arithmetic.Paper935.HmrKeeperClear
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockDrop

namespace ECDSAAdd.Arithmetic.Paper935

/-- Logs are indexed by the original keeper list. Execution retires its tail
first, reborrowing each logged prefix from the then-current arena. -/
def compileHmrBlockedDropLog (A : Arena) :
    List HmrBlockPlan → List (List Wire) → Option (Arena × List HmrBlockFreePlan)
  | [], [] => some (A,[])
  | P::ps, work::logs => do
      let (B,qs) ← compileHmrBlockedDropLog A ps logs
      let (C,Q) ← compileHmrBlockDropLog B (P.head::P.cells.map HmrLadderCell.literal) P.keeper work
      pure (C,qs++[Q])
  | _, _ => none

theorem compileHmrBlockedDropLog_run (A C : Arena) (ps : List HmrBlockPlan) (qs : List HmrBlockFreePlan)
    {logs : List (List Wire)} (h : compileHmrBlockedDropLog A ps logs=some (C,qs)) (ordered : HmrKeeperOrdered ps)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (values : HmrKeeperValues ps s.basis) :
    run (hmrBlockedDropProgram qs) m s=⟨s.phase,hmrClearKeepers ps s.basis⟩ ∧
      C.Ready (hmrClearKeepers ps s.basis) := by
  induction ps generalizing A C qs s m logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedDropLog] at h
    | nil =>
      simp only [compileHmrBlockedDropLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      exact ⟨rfl,ready⟩
  | cons P ps ih =>
    cases logs with
    | nil => simp [compileHmrBlockedDropLog] at h
    | cons work logs =>
      simp only [compileHmrBlockedDropLog] at h
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
      have headResult := compileHmrBlockDropLog_run B D P.literals P.keeper Q head
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
