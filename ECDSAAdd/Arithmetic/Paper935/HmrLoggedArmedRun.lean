import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedStepPlan.Logged.run_math (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (offset need : Nat) (log : HmrArmedStepLog)
    (h : P.Logged A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log)
    (p : Int) (old : PinState) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (frozenValue : s.basis frozen=old.frozen) (frozenZero : old.frozen=true → old.rows.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z)
    (past : regValue timestamp (run (P.front.program false frozen counter++repack P.moves) m s).basis<offset)
    (unfrozen : old.frozen=false → regValue timestamp (run (P.front.program false frozen counter++repack P.moves) m s).basis=0)
    (fits : let before := P.front.program false frozen counter++repack P.moves
      let arith := run before m s
      let tape := m.drop (measurementCount before)
      let first := run (P.control.freezePlan.program frozen timestamp offset) tape arith
      let t1 := tape.drop (measurementCount (P.control.freezePlan.program frozen timestamp offset))
      let u := run (hmrBlockedProgram P.control.counterPlans) t1 first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.counterKeeper)
        (t1.drop (measurementCount (hmrBlockedProgram P.control.counterPlans))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue record v.basis+(v.basis P.front.branch).toNat<2^record.length) :
    let out := run (P.program frozen (counter.getLastD 0) counter timestamp record offset) m s
    P.control.outputArena.Ready out.basis ∧
    (P.bank).Encodes out.basis (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows) ∧
    signedRegValue counter out.basis=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z := by
  exact h.front.armed_step P.front A P.movedArena bank fgWidth vWidth exitWidth frozen counter timestamp record
    P.moves h.repacked h.away P.control (counter.getLastD 0)
    (P.bank.fv.payload[2]?.getD P.bank.fv.sign) (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
    (P.bank.fv.payload[4]?.getD P.bank.fv.sign) offset need h.control h.nonempty
    (fun q hq => h.owned (List.mem_toFinset.mpr hq)) h.apart
    p old inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit past unfrozen fits

end ECDSAAdd.Arithmetic.Paper935
