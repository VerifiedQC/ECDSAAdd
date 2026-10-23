import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlFrame

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedControlPlan.Logged.metadata (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (past : regValue timestamp s.basis<offset)
    (unfrozen : s.basis frozen=false → regValue timestamp s.basis=0)
    (sigmaValue : let first := run (P.freezePlan.program frozen timestamp offset) m s
      first.basis sigma=(first.basis fv1 && !(first.basis frozen && !first.basis P.freezePlan.fire)))
    (fits : let first := run (P.freezePlan.program frozen timestamp offset) m s
      let tape := m.drop (measurementCount (P.freezePlan.program frozen timestamp offset))
      let u := run (hmrBlockedProgram P.counterPlans) tape first
      let v := run (P.classPlan.program sign P.counterKeeper)
        (tape.drop (measurementCount (hmrBlockedProgram P.counterPlans))) u
      (v.basis P.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis branch).toNat<2^record.length) :
    let out := run (P.program frozen sign sigma fv1 b2 b3 b4 branch timestamp record offset) m s
    out.basis frozen=(s.basis frozen || decide (regValue g s.basis=0)) ∧
    regValue timestamp out.basis=regValue timestamp s.basis ^^^
      (if decide (regValue g s.basis=0) && !s.basis frozen then offset else 0) := by
  have fc := compileHmrFreezeLog_contract A P.freezeArena g frozen timestamp offset P.freezePlan h.freeze
  have entry := fc.run_spec P.freezePlan A P.freezeArena g frozen timestamp offset s m ready
  obtain ⟨width,signPort,nd,recordOwned,counterApart,gApart,metaApart,inputOwned,fvApart,sigmaApart⟩ := h.inputs
  have keep (q : Wire) (hq : q∈frozen::timestamp) :
      (run (P.program frozen sign sigma fv1 b2 b3 b4 branch timestamp record offset) m s).basis q=
      (run (P.freezePlan.program frozen timestamp offset) m s).basis q := by
    apply h.frame_after_freeze P A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need
      s m ready past unfrozen sigmaValue fits q
    · exact fc.owned (List.mem_toFinset.mpr (List.mem_append_right _ hq))
    · intro mem
      rcases List.mem_cons.mp mem with eq | mem
      · exact sigmaApart (List.mem_append_right _ (eq ▸ hq))
      · exact List.disjoint_left.mp metaApart mem hq
  dsimp only
  refine ⟨(keep frozen (by simp)).trans entry.2.2.1,?_⟩
  exact (regValue_congr timestamp _ _ (fun q hq => keep q (List.mem_cons_of_mem _ hq))).trans entry.2.2.2.1

theorem HmrArmedControlPlan.Logged.chronology (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (past : regValue timestamp s.basis<offset)
    (unfrozen : s.basis frozen=false → regValue timestamp s.basis=0)
    (sigmaValue : let first := run (P.freezePlan.program frozen timestamp offset) m s
      first.basis sigma=(first.basis fv1 && !(first.basis frozen && !first.basis P.freezePlan.fire)))
    (fits : let first := run (P.freezePlan.program frozen timestamp offset) m s
      let tape := m.drop (measurementCount (P.freezePlan.program frozen timestamp offset))
      let u := run (hmrBlockedProgram P.counterPlans) tape first
      let v := run (P.classPlan.program sign P.counterKeeper)
        (tape.drop (measurementCount (hmrBlockedProgram P.counterPlans))) u
      (v.basis P.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis branch).toNat<2^record.length) :
    let out := run (P.program frozen sign sigma fv1 b2 b3 b4 branch timestamp record offset) m s
    regValue timestamp out.basis<offset+1 ∧
    (out.basis frozen=false → regValue timestamp out.basis=0) := by
  have value := h.metadata P A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need
    s m ready past unfrozen sigmaValue fits
  dsimp only
  rw [value.1,value.2]
  cases hf : s.basis frozen <;> cases hz : decide (regValue g s.basis=0) <;>
    simp_all
  all_goals omega

end ECDSAAdd.Arithmetic.Paper935
