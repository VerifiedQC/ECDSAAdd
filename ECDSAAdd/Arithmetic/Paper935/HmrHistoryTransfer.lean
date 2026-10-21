import ECDSAAdd.Arithmetic.Paper935.HmrHistoryPop

namespace ECDSAAdd.Arithmetic.Paper935

/-- F13/F17 followed by R5 may use a different physical branch port.
The stored branch and complete history are recovered, while the actual
forward measurement debt remains for the source R11 correction. -/
theorem hmrHistory_transfer (store old output : Wire) (record : List Wire)
    (pushND : (store::old::record).Nodup) (popND : (store::output::record).Nodup)
    (different : old≠output) (s : State) (tape popTape : List Bool) (ordinal : Nat)
    (clean : s.basis output=false)
    (fit : s.basis store=true → 2*regValue record s.basis+(s.basis old).toNat<2^record.length) :
    let forward := runWithTape (pushForget store old record) tape ordinal s
    let out := run (popHistory store output record) popTape forward
    out.phase=(s.phase ^^ (tape.getD ordinal false && (!s.basis store && s.basis old))) ∧
    out.basis output=(s.basis store && s.basis old) ∧
    regValue record out.basis=regValue record s.basis ∧ out.basis old=false ∧
    out.basis store=s.basis store := by
  let v := run (pushHistory store old record) (tape.drop ordinal) s
  let u := runWithTape (pushForget store old record) tape ordinal s
  have push := pushHistory_spec store old record pushND s (tape.drop ordinal) fit
  have forget := pushForget_run store old record pushND s tape ordinal fit
  have storeOld : store≠old := fun eq => (List.nodup_cons.mp pushND).1 (by simp [eq])
  have oldAway : old∉record := (List.nodup_cons.mp (List.nodup_cons.mp pushND).2).1
  have outputAway : output∉record := (List.nodup_cons.mp (List.nodup_cons.mp popND).2).1
  have uf : u.basis store=s.basis store := by
    change (runWithTape _ _ _ _).basis store=_
    rw [forget]
    simpa only [writeBit,Function.update_of_ne storeOld] using push.2.1
  have uc : u.basis output=false := by
    change (runWithTape _ _ _ _).basis output=_
    rw [forget]
    have vp := push.2.2.2.2 output (by simp [different.symm,outputAway])
    simpa only [writeBit,Function.update_of_ne different.symm,vp] using clean
  have ur : regValue record u.basis=
      (if s.basis store then 2*regValue record s.basis+(s.basis old).toNat else regValue record s.basis) := by
    change regValue record (runWithTape _ _ _ _).basis=_
    rw [forget]
    rw [regValue_congr record (writeBit v.basis old false) v.basis (by
      intro q hq
      have ne : q≠old := fun eq => oldAway (eq ▸ hq)
      exact Function.update_of_ne ne _ _)]
    exact push.2.2.2.1
  have pop := hmrPop_spec store output record popND u popTape uc
  have up : u.phase=(s.phase ^^ (tape.getD ordinal false && (!s.basis store && s.basis old))) := by
    change (runWithTape _ _ _ _).phase=_
    rw [forget]
  have oldZero : u.basis old=false := by
    change (runWithTape _ _ _ _).basis old=false
    rw [forget]
    simp [writeBit]
  refine ⟨pop.1.trans up,?_,?_,?_,pop.2.1.trans uf⟩
  · rw [pop.2.2.1,uf,ur]
    cases s.basis store <;> cases s.basis old <;> simp [Bool.toNat,Nat.add_mod]
  · rw [pop.2.2.2.1,uf,ur]
    cases s.basis store <;> cases s.basis old <;> simp [Bool.toNat]
    omega
  · exact (pop.2.2.2.2 old (by simp [different,oldAway])).trans oldZero

end ECDSAAdd.Arithmetic.Paper935
