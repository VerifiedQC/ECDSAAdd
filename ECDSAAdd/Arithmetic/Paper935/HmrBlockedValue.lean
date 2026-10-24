import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepFrame

namespace ECDSAAdd.Arithmetic.Paper935

def hmrBlockedFlag (previous : Option Wire) : List HmrBlockPlan → Option Wire
  | [] => previous
  | P::ps => hmrBlockedFlag (some P.keeper) ps

/-- The final keeper is the conjunction of the optional previous keeper
and the zero predicate of all actual input blocks. -/
theorem compileHmrBlocked_value (A C : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    (h : compileHmrBlocked A previous blocks=some (C,ps))
    (owned : ∀q∈blocks.flatten,q∈A.live)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    ((hmrBlockedFlag previous ps).map (run (hmrBlockedProgram ps) m s).basis).getD true=
      ((previous.map s.basis).getD true && blocks.flatten.all (fun q => !s.basis q)) := by
  induction blocks generalizing A previous ps s m with
  | nil =>
    simp only [compileHmrBlocked,Option.some.injEq,Prod.mk.injEq] at h
    obtain ⟨rfl,rfl⟩ := h
    simp [hmrBlockedFlag,hmrBlockedProgram,run]
  | cons bits blocks ih =>
    simp only [compileHmrBlocked] at h
    obtain ⟨⟨B,P⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,qs⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    have step := compileHmrBlockKeep_run A B (hmrBlockLiterals previous bits) P hb s m ready
    let t := run P.program m s
    have tailOwned (q : Wire) (hq : q∈blocks.flatten) : q∈A.live :=
      owned q (by simp only [List.flatten_cons,List.mem_append]; exact Or.inr hq)
    have nextOwned (q : Wire) (hq : q∈blocks.flatten) : q∈B.live := by
      rw [step.2.1]
      exact Finset.mem_insert_of_mem (tailOwned q hq)
    have tail := ih B (some P.keeper) qs ht nextOwned t (m.drop (measurementCount P.program)) step.2.2.1
    have eqall : blocks.flatten.all (fun q => !t.basis q)=blocks.flatten.all (fun q => !s.basis q) := by
      apply Bool.eq_iff_iff.mpr
      simp only [List.all_eq_true]
      apply forall_congr'
      intro q
      apply imp_congr_right
      intro hq
      rw [show t.basis q=s.basis q from compileHmrBlockKeep_frame A B _ P hb s m ready q (tailOwned q hq)]
    have keeper : t.basis P.keeper=
        ((previous.map s.basis).getD true && bits.all (fun q => !s.basis q)) := by
      change (run P.program m s).basis P.keeper=_
      rw [step.1]
      simp only [writeBit,Function.update_self,hmrBlockLiterals_value]
    change ((hmrBlockedFlag (some P.keeper) qs).map
      (run (P.program++hmrBlockedProgram qs) m s).basis).getD true=_
    rw [run_append,run_take]
    change ((hmrBlockedFlag (some P.keeper) qs).map
      (run (hmrBlockedProgram qs) (m.drop (measurementCount P.program)) t).basis).getD true=_
    rw [tail]
    simp only [Option.map_some,Option.getD_some,keeper,eqall,List.flatten_cons,List.all_append,Bool.and_assoc]

end ECDSAAdd.Arithmetic.Paper935
