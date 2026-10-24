import ECDSAAdd.Arithmetic.Paper935.HmrBlockRoundtrip

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrBlockedDrop (A : Arena) : List HmrBlockPlan → Option (Arena × List HmrBlockFreePlan)
  | [] => some (A,[])
  | P::ps => do
      let (B,qs) ← compileHmrBlockedDrop A ps
      let (C,Q) ← compileHmrBlockDrop B (P.head::P.cells.map HmrLadderCell.literal) P.keeper
      pure (C,qs++[Q])

def hmrBlockedDropProgram (ps : List HmrBlockFreePlan) : Program :=
  ps.flatMap HmrBlockFreePlan.program

/-- Reverse-order keeper retirement restores the original full state and
arena. Every prefix is compiled afresh from the then-current arena. -/
theorem compileHmrBlocked_roundtrip (A B C : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan) (qs : List HmrBlockFreePlan)
    (keep : compileHmrBlocked A previous blocks=some (B,ps))
    (drop : compileHmrBlockedDrop B ps=some (C,qs))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) :
    run (hmrBlockedDropProgram qs) n (run (hmrBlockedProgram ps) m s)=s ∧
      C.live=A.live ∧ C.Ready s.basis := by
  induction blocks generalizing A B C previous ps qs s m n with
  | nil =>
    simp only [compileHmrBlocked,Option.some.injEq,Prod.mk.injEq] at keep
    obtain ⟨rfl,rfl⟩ := keep
    simp only [compileHmrBlockedDrop,Option.some.injEq,Prod.mk.injEq] at drop
    obtain ⟨rfl,rfl⟩ := drop
    exact ⟨rfl,rfl,ready⟩
  | cons bits blocks ih =>
    simp only [compileHmrBlocked] at keep
    obtain ⟨⟨D,P⟩,headKeep,keep⟩ := Option.bind_eq_some_iff.mp keep
    obtain ⟨⟨E,tailPlans⟩,tailKeep,keep⟩ := Option.bind_eq_some_iff.mp keep
    cases keep
    simp only [compileHmrBlockedDrop] at drop
    obtain ⟨⟨F,tailFree⟩,tailDrop,drop⟩ := Option.bind_eq_some_iff.mp drop
    obtain ⟨⟨G,Q⟩,headDrop,drop⟩ := Option.bind_eq_some_iff.mp drop
    cases drop
    have first := compileHmrBlockKeep_run A D (hmrBlockLiterals previous bits) P headKeep s m ready
    let t := run P.program m s
    have tail := ih D E F (some P.keeper) tailPlans tailFree tailKeep tailDrop
      t (m.drop (measurementCount P.program)) n first.2.2.1
    have same : F=D := by
      cases F
      cases D
      simpa only [Arena.mk.injEq] using tail.2.1
    subst F
    obtain ⟨H,work,hp,_⟩ := compileHmrBlockKeep_contract A D (hmrBlockLiterals previous bits) P headKeep
    have literals := (compileHmrBlock_contract A H (hmrBlockLiterals previous bits) work P hp).2.2.1
    rw [literals] at headDrop
    have head := compileHmrBlock_roundtrip A D G (hmrBlockLiterals previous bits) P Q headKeep headDrop
      s m (n.drop (measurementCount (hmrBlockedDropProgram tailFree))) ready
    refine ⟨?_,head.2⟩
    have append : hmrBlockedDropProgram (tailFree++[Q])=hmrBlockedDropProgram tailFree++Q.program := by
      simp [hmrBlockedDropProgram]
    dsimp only
    rw [append]
    change run (hmrBlockedDropProgram tailFree++Q.program) n
      (run (P.program++hmrBlockedProgram tailPlans) m s)=s
    rw [run_append,run_take,run_append,run_take]
    rw [show run (hmrBlockedDropProgram tailFree) n
      (run (hmrBlockedProgram tailPlans) (m.drop (measurementCount P.program)) (run P.program m s))=
        run P.program m s from tail.1]
    exact head.1

end ECDSAAdd.Arithmetic.Paper935
