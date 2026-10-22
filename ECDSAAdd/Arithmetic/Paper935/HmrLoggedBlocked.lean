import ECDSAAdd.Arithmetic.Paper935.HmrBlockedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockKeep

namespace ECDSAAdd.Arithmetic.Paper935

/-- Check one explicit scratch list per zero-test block; no address selection. -/
def compileHmrBlockedLog (A : Arena) (previous : Option Wire) :
    List (List Wire) → List (List Wire) → Option (Arena × List HmrBlockPlan)
  | [], [] => some (A,[])
  | bits::blocks, work::logs => do
      let (B,P) ← compileHmrBlockKeepLog A (hmrBlockLiterals previous bits) work
      let (C,ps) ← compileHmrBlockedLog B (some P.keeper) blocks logs
      pure (C,P::ps)
  | _, _ => none

theorem compileHmrBlockedLog_run (A C : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (C,ps))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrBlockedProgram ps) m s=⟨s.phase,hmrBlockedAdvance ps s.basis⟩ ∧
    C.Ready (hmrBlockedAdvance ps s.basis) ∧ C.live.card=A.live.card+blocks.length := by
  induction blocks generalizing A previous ps s m logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedLog] at h
    | nil =>
      simp only [compileHmrBlockedLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      exact ⟨rfl,ready,by simp⟩
  | cons bits blocks ih =>
    cases logs with
    | nil => simp [compileHmrBlockedLog] at h
    | cons work logs =>
      simp only [compileHmrBlockedLog] at h
      obtain ⟨⟨B,P⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨D,qs⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      have step := compileHmrBlockKeepLog_run A B (hmrBlockLiterals previous bits) P hb s m ready
      obtain ⟨E,work,he,_⟩ := compileHmrBlockKeepLog_contract A B (hmrBlockLiterals previous bits) P hb
      have literals := (compileHmrBlockLog_contract A E (hmrBlockLiterals previous bits) work P he).2.2.1
      let t := run P.program m s
      have tail := ih B (some P.keeper) qs ht t (m.drop (measurementCount P.program)) step.2.2.1
      have teq : t=⟨s.phase,writeBit s.basis P.keeper
          ((P.head::P.cells.map HmrLadderCell.literal).all (fun l => l.value s.basis))⟩ := by
        simpa only [literals] using step.1
      rw [teq] at tail
      refine ⟨?_,tail.2.1,?_⟩
      · change run (P.program++hmrBlockedProgram qs) m s=_
        rw [run_append,run_take,show run P.program m s=_ from teq]
        exact tail.1
      · rw [tail.2.2,step.2.2.2,List.length_cons]
        omega

end ECDSAAdd.Arithmetic.Paper935
