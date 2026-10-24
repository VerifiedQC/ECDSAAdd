import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlRun

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrEarlyControlPlan.Logged.frame (P : HmrEarlyControlPlan) (A : Arena)
    (counter record : List Wire) (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat)
    (h : P.Logged A counter record sign sigma fv1 b2 b3 b4 branch need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (sigmaValue : s.basis sigma=s.basis fv1)
    (fits : let u := run (hmrAndSweep P.zeroPlan.stages) m s
      let v := run (P.classPlan.program sign P.zeroPlan.top)
        (m.drop (measurementCount (hmrAndSweep P.zeroPlan.stages))) u
      (v.basis P.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue (record++P.log.recordFresh) v.basis+(v.basis branch).toNat<2^(record++P.log.recordFresh).length) :
    ∀q∈A.live, q∉sigma::branch::record →
      (run (P.program sign sigma fv1 b2 b3 b4 branch record) m s).basis q=s.basis q := by
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
  have result := h.run_spec P A counter record sign sigma fv1 b2 b3 b4 branch need s m ready sigmaValue fits
  intro q owned away
  have qs : q≠sigma := by intro eq; exact away (by simp [eq])
  have qb : q≠branch := by intro eq; exact away (by simp [eq])
  have qr : q∉branch::record := fun hq => away (List.mem_cons_of_mem _ hq)
  rw [result.1]
  simp only [writeBit,Function.update_of_ne qb,Function.update_of_ne qs]
  exact stored.2.2 q owned qr

end ECDSAAdd.Arithmetic.Paper935
