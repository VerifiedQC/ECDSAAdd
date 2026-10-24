import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlPorts

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedControlPlan.Logged.run_spec (P : HmrArmedControlPlan) (A : Arena)
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
    let first := run (P.freezePlan.program frozen timestamp offset) m s
    let t1 := m.drop (measurementCount (P.freezePlan.program frozen timestamp offset))
    let v := run (P.body sign b2 b3 b4 branch record) t1 first
    let t2 := t1.drop (measurementCount (P.body sign b2 b3 b4 branch record))
    let death := hmrSigmaDeath true frozen P.freezePlan.fire fv1 sigma (hmrBorrowPorts P.log.sigmaGuard (0 : Fin 1))
    let w := run death t2 v
    let t3 := t2.drop (measurementCount death)
    let ending := P.endPlan.program P.freezePlan.zeroKeeper frozen P.freezePlan.fire
    let x := run ending t3 w
    let t4 := t3.drop (measurementCount ending)
    let out := run (P.program frozen sign sigma fv1 b2 b3 b4 branch timestamp record offset) m s
    out=⟨s.phase ^^ (t4.headD false && x.basis branch),writeBit x.basis branch false⟩ ∧
      P.outputArena.Ready out.basis := by
  let first := run (P.freezePlan.program frozen timestamp offset) m s
  let t1 := m.drop (measurementCount (P.freezePlan.program frozen timestamp offset))
  let v := run (P.body sign b2 b3 b4 branch record) t1 first
  let t2 := t1.drop (measurementCount (P.body sign b2 b3 b4 branch record))
  let death := hmrSigmaDeath true frozen P.freezePlan.fire fv1 sigma (hmrBorrowPorts P.log.sigmaGuard (0 : Fin 1))
  let w := run death t2 v
  let t3 := t2.drop (measurementCount death)
  let ending := P.endPlan.program P.freezePlan.zeroKeeper frozen P.freezePlan.fire
  let x := run ending t3 w
  let t4 := t3.drop (measurementCount ending)
  obtain ⟨width,signPort,nd,recordOwned,counterApart,gApart,metaApart,inputOwned,fvApart,sigmaApart⟩ := h.inputs
  have fc := compileHmrFreezeLog_contract A P.freezeArena g frozen timestamp offset P.freezePlan h.freeze
  have entry := fc.run_spec P.freezePlan A P.freezeArena g frozen timestamp offset s m ready
  have ports := h.ports P A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need
  have cl := compileHmrSourceClassLog_contract P.counterArena true sign P.counterKeeper frozen sigma
    P.log.positive P.log.classWork P.classPlan h.classCompiled
  have stored := hmrSourceArmedStore_run P.freezeArena P.counterArena P.flagArena counter
    P.counterPlans P.counterKeeper P.counterCleanup P.classPlan sign frozen sigma b2 b3 b4 branch
    record P.log.flags h.counterTest h.counterDrop cl h.flags
    (Finset.Subset.trans recordOwned ports.1) nd h.flagsApart h.anchorsApart counterApart
    first t1 entry.2.2.2.2.1 fits
  change v.phase=first.phase ∧ P.freezeArena.Ready v.basis ∧
    (∀q∈P.freezeArena.live,q∉branch::record → v.basis q=first.basis q) at stored
  have metaFrame (q : Wire) (hq : q∈P.freezePlan.fire::P.freezePlan.zeroKeeper::frozen::timestamp) :
      v.basis q=first.basis q := stored.2.2 q (ports.2.2 q hq).1 (ports.2.2 q hq).2.1
  have sigmaAway : sigma∉branch::record := List.disjoint_left.mp h.anchorsApart
    (by simp [hmrSourceClassAnchors])
  have witness : v.basis sigma=(v.basis fv1 && !(v.basis frozen && !v.basis P.freezePlan.fire)) := by
    rw [stored.2.2 sigma (ports.1 (inputOwned (by simp))) sigmaAway,
      stored.2.2 fv1 (ports.1 (inputOwned (by simp))) fvApart,
      metaFrame frozen (by simp),metaFrame P.freezePlan.fire (by simp)]
    exact sigmaValue
  have killed := compileHmrSigmaDropLog_run P.freezeArena P.sigmaArena true frozen P.freezePlan.fire fv1 sigma
    P.log.sigmaGuard h.sigmaDrop v t2 stored.2.1 witness
  have state : w=⟨v.phase,writeBit v.basis sigma false⟩ := killed.1
  have values : HmrKeeperValues P.freezePlan.zeroPlans w.basis := by
    apply hmrKeeperValues_frame P.freezePlan.zeroPlans first.basis w.basis entry.2.2.2.2.2.1
    intro R hr q hq
    rw [state]
    change writeBit v.basis sigma false q=first.basis q
    rw [show writeBit v.basis sigma false q=v.basis q from
      Function.update_of_ne (ports.2.1 R hr q hq).2.2 _ _]
    exact stored.2.2 q (ports.2.1 R hr q hq).1 (ports.2.1 R hr q hq).2.1
  have keep (q : Wire) (hq : q∈P.freezePlan.fire::P.freezePlan.zeroKeeper::frozen::timestamp) :
      w.basis q=first.basis q := by
    rw [state]
    change writeBit v.basis sigma false q=first.basis q
    rw [show writeBit v.basis sigma false q=v.basis q from Function.update_of_ne (ports.2.2 q hq).2.2 _ _]
    exact metaFrame q hq
  have stamp := regValue_congr timestamp w.basis first.basis (fun q hq => keep q (by simp [hq]))
  have fireWitness := fc.fire_witness P.freezePlan A P.freezeArena g frozen timestamp offset s m ready past unfrozen
  have fireValue : w.basis P.freezePlan.fire=((decide (regValue timestamp w.basis=offset) &&
      w.basis P.freezePlan.zeroKeeper) && w.basis frozen) := by
    rw [keep P.freezePlan.fire (by simp),keep P.freezePlan.zeroKeeper (by simp),keep frozen (by simp),stamp]
    exact fireWitness
  have zc := compileHmrZeroLog_contract A P.freezePlan.zeroArena g 16 P.freezePlan.zeroPlans P.freezePlan.zeroKeeper fc.zero
  have ordered := (compileHmrBlockedLog_order A P.freezePlan.zeroArena none _ P.freezePlan.zeroPlans zc.2.1).2
  have ended := compileHmrFreezeEndLog_run P.sigmaArena P.endArena timestamp offset P.freezePlan.zeroKeeper frozen
    P.freezePlan.fire P.freezePlan.zeroPlans P.endPlan h.freezeDrop ordered
    (fc.fire_away P.freezePlan A P.freezeArena g frozen timestamp offset) w t3 killed.2.1 values fireValue
  have xr : P.endArena.Ready x.basis := by change P.endArena.Ready (run ending t3 w).basis; rw [ended.1]; exact ended.2
  have xp : x.phase=s.phase := by
    change (run ending t3 w).phase=s.phase
    rw [ended.1]
    change w.phase=s.phase
    rw [state]
    exact stored.1.trans entry.1
  have retired := hmrBranchRetirement_run P.endArena P.outputArena branch h.branchDrop x t4 xr
  dsimp only
  rw [HmrArmedControlPlan.program,run_append,run_take,run_append,run_take,run_append,run_take,run_append,run_take]
  change run (hmrBranchRetirement branch) t4 x=_ ∧ _
  refine ⟨?_,retired.2.1⟩
  rw [retired.1,xp]

end ECDSAAdd.Arithmetic.Paper935
