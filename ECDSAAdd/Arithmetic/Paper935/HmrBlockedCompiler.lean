import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

def hmrBlockLiterals (previous : Option Wire) (bits : List Wire) : List HmrLiteral :=
  (previous.toList.map (fun q => ⟨q,true⟩)) ++ bits.map (fun q => ⟨q,false⟩)

def compileHmrBlocked (A : Arena) (previous : Option Wire) :
    List (List Wire) → Option (Arena × List HmrBlockPlan)
  | [] => some (A,[])
  | bits::blocks => do
      let (B,P) ← compileHmrBlockKeep A (hmrBlockLiterals previous bits)
      let (C,ps) ← compileHmrBlocked B (some P.keeper) blocks
      pure (C,P::ps)

def hmrBlockedProgram (ps : List HmrBlockPlan) : Program := ps.flatMap HmrBlockPlan.program

def hmrBlockedAdvance : List HmrBlockPlan → BasisState → BasisState
  | [],s => s
  | P::ps,s => hmrBlockedAdvance ps
      (writeBit s P.keeper ((P.head::P.cells.map HmrLadderCell.literal).all (fun l => l.value s)))

theorem compileHmrBlocked_run (A C : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    (h : compileHmrBlocked A previous blocks=some (C,ps))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrBlockedProgram ps) m s=⟨s.phase,hmrBlockedAdvance ps s.basis⟩ ∧
    C.Ready (hmrBlockedAdvance ps s.basis) ∧ C.live.card=A.live.card+blocks.length := by
  induction blocks generalizing A previous ps s m with
  | nil =>
    simp only [compileHmrBlocked,Option.some.injEq,Prod.mk.injEq] at h
    obtain ⟨rfl,rfl⟩ := h
    exact ⟨rfl,ready,by simp⟩
  | cons bits blocks ih =>
    simp only [compileHmrBlocked] at h
    obtain ⟨⟨B,P⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,qs⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    have step := compileHmrBlockKeep_run A B (hmrBlockLiterals previous bits) P hb s m ready
    obtain ⟨E,work,he,_⟩ := compileHmrBlockKeep_contract A B (hmrBlockLiterals previous bits) P hb
    have literals := (compileHmrBlock_contract A E (hmrBlockLiterals previous bits) work P he).2.2.1
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
