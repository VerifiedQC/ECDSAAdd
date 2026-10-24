import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrEarlyStepPlan.Logged.run_math (P : HmrEarlyStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter record : List Wire)
    (need : Nat) (log : HmrEarlyStepLog)
    (h : P.Logged A bank fgWidth vWidth exitWidth frozen counter record need log)
    (p : Int) (z : ECDSAAdd.Divsteps.ZState) (inv : ECDSAAdd.Divsteps.Inv p z) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (ECDSAAdd.Divsteps.zStep z))
    (zfit : PayloadFits (counter.length-1) (ECDSAAdd.Divsteps.zStep z).z)
    (fits : let before := P.front.program true frozen counter++repack P.moves
      let first := run before m s
      let tape := m.drop (measurementCount before)
      let u := run (hmrAndSweep P.control.zeroPlan.stages) tape first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.zeroPlan.top)
        (tape.drop (measurementCount (hmrAndSweep P.control.zeroPlan.stages))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue (record++P.control.log.recordFresh) v.basis+(v.basis P.front.branch).toNat<2^(record++P.control.log.recordFresh).length) :
    let out := run (P.program frozen (counter.getLastD 0) counter record) m s
    P.control.outputArena.Ready out.basis ∧ (P.bank).Encodes out.basis (ECDSAAdd.Divsteps.zStep z) ∧
      signedRegValue counter out.basis=(ECDSAAdd.Divsteps.zStep z).z := by
  exact h.front.early_step P.front A P.movedArena bank fgWidth vWidth exitWidth frozen counter record
    P.moves h.repacked h.away P.control (counter.getLastD 0)
    (P.bank.fv.payload[2]?.getD P.bank.fv.sign) (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
    (P.bank.fv.payload[4]?.getD P.bank.fv.sign) need h.control h.nonempty
    (fun q hq => h.owned (List.mem_toFinset.mpr hq)) h.apart
    p z inv odd s m ready encodes counterValue fodd prefit exitfit zfit fits

end ECDSAAdd.Arithmetic.Paper935
