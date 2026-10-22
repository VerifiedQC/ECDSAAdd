import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrEarlyControlPlan.Logged.run_spec (P : HmrEarlyControlPlan) (A : Arena)
    (counter record : List Wire) (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat)
    (h : P.Logged A counter record sign sigma fv1 b2 b3 b4 branch need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (sigmaValue : s.basis sigma=s.basis fv1)
    (fits : let u := run (hmrAndSweep P.zeroPlan.stages) m s
      let v := run (P.classPlan.program sign P.zeroPlan.top)
        (m.drop (measurementCount (hmrAndSweep P.zeroPlan.stages))) u
      (v.basis P.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue (record++P.log.recordFresh) v.basis+(v.basis branch).toNat<2^(record++P.log.recordFresh).length) :
    let body := hmrAndSweep P.zeroPlan.stages ++
      (P.classPlan.storeCycle sign P.zeroPlan.top b2 b3 b4 branch (record++P.log.recordFresh) P.log.flagWork ++
        hmrAndUnsweep P.zeroPlan.stages)
    let v := run body m s
    let tape := m.drop (measurementCount body)
    let out := run (P.program sign sigma fv1 b2 b3 b4 branch record) m s
    out=⟨s.phase ^^ (tape.headD false && v.basis branch),
      writeBit (writeBit v.basis sigma false) branch false⟩ ∧ P.outputArena.Ready out.basis := by
  let body := hmrAndSweep P.zeroPlan.stages ++
    (P.classPlan.storeCycle sign P.zeroPlan.top b2 b3 b4 branch (record++P.log.recordFresh) P.log.flagWork ++
      hmrAndUnsweep P.zeroPlan.stages)
  let v := run body m s
  let tape := m.drop (measurementCount body)
  have cl := compileHmrSourceClassLog_contract P.zeroArena false sign P.zeroPlan.top 0 sigma
    P.log.positiveWork P.log.classWork P.classPlan h.classCompiled
  obtain ⟨D,hd,stored⟩ := hmrSourceGrowingEarlyStore_run A P.zeroArena P.flagArena P.fittedArena
    counter P.log.zeroWork P.zeroPlan P.classPlan sign 0 sigma b2 b3 b4 branch record
    P.log.recordFresh P.log.flagWork need h.zero cl h.flags h.fit h.recordOwned h.recordDistinct
    h.flagsApart h.anchorsApart h.counterApart s m ready fits
  rw [h.history] at hd
  cases hd
  have sigmaAway : sigma∉branch::record := List.disjoint_left.mp h.anchorsApart
    (by simp [hmrSourceClassAnchors])
  have witness : v.basis sigma=v.basis fv1 := by
    rw [stored.2.2 sigma (h.sigmaInputsOwned (by simp)) sigmaAway,
      stored.2.2 fv1 (h.sigmaInputsOwned (by simp)) h.fv1Apart,sigmaValue]
  have death := compileHmrSigmaDropLog_run P.historyArena P.sigmaArena false 0 0 fv1 sigma [] h.sigmaDrop
    v tape stored.2.1 witness
  let w := run (hmrSigmaDeath false 0 0 fv1 sigma 0) tape v
  have retired := hmrBranchRetirement_run P.sigmaArena P.outputArena branch h.branchDrop w tape death.2.1
  have branchNe : branch≠sigma := by
    intro eq; exact sigmaAway (by simp [eq])
  have tailState : w=⟨v.phase,writeBit v.basis sigma false⟩ := death.1
  have branchValue : w.basis branch=v.basis branch := by
    rw [tailState]
    exact Function.update_of_ne branchNe _ _
  have phase : w.phase=s.phase := by rw [tailState]; exact stored.1
  dsimp only
  rw [HmrEarlyControlPlan.program,run_append,run_take,run_append,run_take]
  change run (hmrBranchRetirement branch) tape w=_ ∧ _
  rw [retired.1]
  refine ⟨?_,?_⟩
  · rw [phase,branchValue,tailState]
  · exact retired.2.1

end ECDSAAdd.Arithmetic.Paper935
