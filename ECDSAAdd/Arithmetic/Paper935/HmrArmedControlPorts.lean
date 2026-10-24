import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedControlPlan.Logged.ports (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need) :
    A.live⊆P.freezeArena.live ∧
    (∀R∈P.freezePlan.zeroPlans,∀q∈R.keeper::R.literals.map HmrLiteral.wire,
      q∈P.freezeArena.live ∧ q∉branch::record ∧ q≠sigma) ∧
    (∀q∈P.freezePlan.fire::P.freezePlan.zeroKeeper::frozen::timestamp,
      q∈P.freezeArena.live ∧ q∉branch::record ∧ q≠sigma) := by
  obtain ⟨width,signPort,nd,recordOwned,counterApart,gApart,metaApart,inputOwned,fvApart,sigmaApart⟩ := h.inputs
  have fc := compileHmrFreezeLog_contract A P.freezeArena g frozen timestamp offset P.freezePlan h.freeze
  have zc := compileHmrZeroLog_contract A P.freezePlan.zeroArena g 16 P.freezePlan.zeroPlans P.freezePlan.zeroKeeper fc.zero
  have zo := compileHmrBlockedLog_owned A P.freezePlan.zeroArena none _ P.freezePlan.zeroPlans zc.2.1
  have zf : P.freezePlan.zeroArena.live⊆P.freezeArena.live := by
    rw [P.freezePlan.zeroArena.checkBorrow_live P.freezeArena 1 P.freezePlan.fireWork fc.borrow]
    exact Finset.subset_union_left
  have contains := zo.1.trans zf
  have ports (R : HmrBlockPlan) (hr : R∈P.freezePlan.zeroPlans)
      (q : Wire) (hq : q∈R.keeper::R.literals.map HmrLiteral.wire) :
      q∈P.freezeArena.live ∧ q∉branch::record ∧ q≠sigma := by
    refine ⟨zf (zo.2 R hr (List.mem_toFinset.mpr hq)),?_,?_⟩
    · intro mem
      have away := compileHmrBlockedLog_away A P.freezePlan.zeroArena none _ P.freezePlan.zeroPlans zc.2.1 q
        (recordOwned (List.mem_toFinset.mpr mem))
        (by rw [hmrChunks_flatten 16 g (by decide)]; exact fun hg => List.disjoint_left.mp gApart hg mem)
        (by simp)
      exact away R hr hq
    · intro eq
      subst q
      have away := compileHmrBlockedLog_away A P.freezePlan.zeroArena none _ P.freezePlan.zeroPlans zc.2.1 sigma
        (inputOwned (by simp))
        (by rw [hmrChunks_flatten 16 g (by decide)]; exact fun hg => sigmaApart (List.mem_append_left _ hg))
        (by simp)
      exact away R hr hq
  have firePorts := hmrLoggedPorts_contract P.freezePlan.zeroArena P.freezeArena 1 P.freezePlan.fireWork fc.borrow
  have keeperMem := hmrBlockedFlag_mem none P.freezePlan.zeroPlans P.freezePlan.zeroKeeper zc.2.2
  simp only [Option.toList_none,List.nil_append] at keeperMem
  obtain ⟨R,hr,heq⟩ := List.mem_map.mp keeperMem
  refine ⟨contains,ports,?_⟩
  intro q hq
  rcases List.mem_cons.mp hq with eq|hq
  · subst q
    refine ⟨firePorts.2.1 0,?_,?_⟩
    · intro mem
      exact firePorts.2.2 0 (zo.1 (recordOwned (List.mem_toFinset.mpr mem)))
    · intro eq
      apply firePorts.2.2 0
      change P.freezePlan.fire∈P.freezePlan.zeroArena.live
      rw [eq]
      exact zo.1 (inputOwned (by simp))
  · rcases List.mem_cons.mp hq with eq|hq
    · subst q
      rw [←heq]
      exact ports R hr R.keeper (by simp)
    · have own := fc.owned (List.mem_toFinset.mpr (List.mem_append_right _ hq))
      refine ⟨contains own,?_,?_⟩
      · intro mem; exact List.disjoint_left.mp metaApart mem hq
      · intro eq; subst q; exact sigmaApart (List.mem_append_right _ hq)

end ECDSAAdd.Arithmetic.Paper935
