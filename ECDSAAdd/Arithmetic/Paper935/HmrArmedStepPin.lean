import ECDSAAdd.Arithmetic.Paper935.HmrChronologicalStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrArmedStepTimestamp
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedPin

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedStepPlan.Logged.run_pin (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t need : Nat) (log : HmrArmedStepLog)
    (h : P.Logged A bank fgWidth vWidth exitWidth frozen counter timestamp record (t+1-tmin) need log)
    (p : Int) (old : PinState) (armed : tmin≤t) (valid : old.RecordValid tmin t) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (frozenValue : s.basis frozen=old.frozen) (frozenZero : old.frozen=true → old.rows.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z)
    (owned : timestamp.toFinset⊆A.live)
    (apart : List.Disjoint timestamp (bank.rows.flatMap WindowRow.wires++counter))
    (movesAway : ∀p∈P.moves,p.1∉timestamp)
    (recordValue : regValue timestamp s.basis=old.offset)
    (fits : let before := P.front.program false frozen counter++repack P.moves
      let arith := run before m s
      let tape := m.drop (measurementCount before)
      let first := run (P.control.freezePlan.program frozen timestamp (t+1-tmin)) tape arith
      let t1 := tape.drop (measurementCount (P.control.freezePlan.program frozen timestamp (t+1-tmin)))
      let u := run (hmrBlockedProgram P.control.counterPlans) t1 first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.counterKeeper)
        (t1.drop (measurementCount (hmrBlockedProgram P.control.counterPlans))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue record v.basis+(v.basis P.front.branch).toNat<2^record.length) :
    let out := run (P.program frozen (counter.getLastD 0) counter timestamp record (t+1-tmin)) m s
    P.control.outputArena.Ready out.basis ∧
    P.bank.Encodes out.basis (pinStep tmin t old).rows ∧
    signedRegValue counter out.basis=(pinStep tmin t old).rows.z ∧
    out.basis frozen=(pinStep tmin t old).frozen ∧
    regValue timestamp out.basis=(pinStep tmin t old).offset ∧
    (pinStep tmin t old).RecordValid tmin (t+1) := by
  have past : regValue timestamp s.basis<t+1-tmin := by
    rw [recordValue]
    have bound := valid.2
    omega
  have unfrozen : old.frozen=false → regValue timestamp s.basis=0 := by
    rw [recordValue]
    intro hf
    have positive := valid.1
    simp only [hf,Bool.false_eq_true,false_iff] at positive
    omega
  have math := h.run_math_from_entry P A bank fgWidth vWidth exitWidth frozen counter timestamp record (t+1-tmin) need log
    p old inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit
    owned apart movesAway past unfrozen fits
  have stamp := h.timestamp_value P A bank fgWidth vWidth exitWidth frozen counter timestamp record (t+1-tmin) need log
    s m old.rows ready encodes counterValue prefit owned apart movesAway
  have pin := h.front.armed_pin P.front A P.movedArena bank fgWidth vWidth exitWidth frozen counter timestamp record
    P.moves h.repacked h.away P.control (counter.getLastD 0)
    (P.bank.fv.payload[2]?.getD P.bank.fv.sign) (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
    (P.bank.fv.payload[4]?.getD P.bank.fv.sign) tmin t need h.control h.nonempty
    (fun q hq => h.owned (List.mem_toFinset.mpr hq)) h.apart
    p old armed valid inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit
    (stamp.trans recordValue) fits
  have rows : (pinStep tmin t old).rows=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows) := by
    cases hf : old.frozen
    · simp only [pinStep,hf,Bool.false_eq_true,ite_false]
      split <;> rfl
    · simp [pinStep,hf]
  exact ⟨math.1,by rw [rows]; exact math.2.1,by rw [rows]; exact math.2.2,
    pin.1,pin.2,pinStep_record tmin t old valid⟩

theorem compileHmrChronologicalStepLog_pin (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t need : Nat) (log : HmrArmedStepLog)
    (checked : compileHmrChronologicalStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record (t+1-tmin) need log=some P)
    (p : Int) (old : PinState) (armed : tmin≤t) (valid : old.RecordValid tmin t) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (frozenValue : s.basis frozen=old.frozen) (frozenZero : old.frozen=true → old.rows.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z)
    (recordValue : regValue timestamp s.basis=old.offset)
    (fits : let before := P.front.program false frozen counter++repack P.moves
      let arith := run before m s
      let tape := m.drop (measurementCount before)
      let first := run (P.control.freezePlan.program frozen timestamp (t+1-tmin)) tape arith
      let t1 := tape.drop (measurementCount (P.control.freezePlan.program frozen timestamp (t+1-tmin)))
      let u := run (hmrBlockedProgram P.control.counterPlans) t1 first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.counterKeeper)
        (t1.drop (measurementCount (hmrBlockedProgram P.control.counterPlans))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue record v.basis+(v.basis P.front.branch).toNat<2^record.length) :
    let out := run (P.program frozen (counter.getLastD 0) counter timestamp record (t+1-tmin)) m s
    P.control.outputArena.Ready out.basis ∧
    P.bank.Encodes out.basis (pinStep tmin t old).rows ∧
    signedRegValue counter out.basis=(pinStep tmin t old).rows.z ∧
    out.basis frozen=(pinStep tmin t old).frozen ∧
    regValue timestamp out.basis=(pinStep tmin t old).offset ∧
    (pinStep tmin t old).RecordValid tmin (t+1) := by
  have h := compileHmrChronologicalStepLog_contract A bank fgWidth vWidth exitWidth frozen counter timestamp record (t+1-tmin) need log P checked
  exact h.1.run_pin P A bank fgWidth vWidth exitWidth frozen counter timestamp record tmin t need log
    p old armed valid inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit
    h.2.1 h.2.2.1 h.2.2.2 recordValue fits

end ECDSAAdd.Arithmetic.Paper935
