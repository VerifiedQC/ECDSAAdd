import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEqualityDelayed
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEqualityState

namespace ECDSAAdd.Arithmetic.Paper935

/-- Retirement restores the original arena after a body that preserves the
computed chain values. Owned data outside that footprint may have changed. -/
theorem compileHmrEqualityLog_erase_return (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEqualityLog A bits k work=some (B,work,P))
    (before : BasisState) (initial : A.Ready before) (current : State) (m : List Bool)
    (ready : B.Ready current.basis)
    (preserved : ∀q∈(bits++work).toFinset,current.basis q=hmrAndAdvance P.stages before q) :
    let out := run (hmrAndUnsweep P.stages) m current
    out.phase=current.phase ∧ A.Ready out.basis ∧ B.release work.toFinset out.basis=some A ∧
      (∀q∈A.live,out.basis q=current.basis q) := by
  have hc := compileHmrEqualityLog_contract A B bits k work P h
  have result := hmrAndUnsweep_delayed (bits++work).toFinset P.stages
    (compileHmrEqualityLog_sites A B bits k work P h) before current m
    (compileHmrEqualityLog_ready A B bits k work P h before initial) preserved
  have reserve := (A.checkBorrow_contract B (bits.length-1) work hc.2.1).2.2
  have oldFrame (q : Wire) (hq : q∈A.live) : hmrAndAdvance P.stages before q=before q := by
    apply hmrAndAdvance_target_frame
    intro g hg eq
    have target := compileHmrEqualityLog_targets A B bits k work P h g hg
    have disjoint := ((A.reserve_success work.toFinset).mp ⟨B,reserve⟩).2
    exact Finset.disjoint_left.mp disjoint hq (eq.symm ▸ target)
  have restored : A.Ready (hmrAndPatch (bits++work).toFinset before current.basis) := by
    intro q hq hn
    by_cases sites : q∈(bits++work).toFinset
    · simpa only [hmrAndPatch,if_pos sites] using initial q hq hn
    · have notB : q∉B.live := by
        rw [A.checkBorrow_live B _ work hc.2.1]
        intro mem
        rcases Finset.mem_union.mp mem with old|new
        · exact hn old
        · exact sites (List.mem_toFinset.mpr (List.mem_append_right _ (List.mem_toFinset.mp new)))
      simpa only [hmrAndPatch,if_neg sites] using ready q hq notB
  dsimp only
  rw [result]
  refine ⟨rfl,restored,Arena.checkBorrow_return A B _ work hc.2.1 _ restored,?_⟩
  intro q hq
  by_cases sites : q∈(bits++work).toFinset
  · simpa only [hmrAndPatch,if_pos sites,oldFrame q hq] using (preserved q sites).symm
  · simp only [hmrAndPatch,if_neg sites]

end ECDSAAdd.Arithmetic.Paper935
