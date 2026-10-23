import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontLocality
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedRun

namespace ECDSAAdd.Arithmetic.Paper935

/-- Static storage separation suffices to carry the entry timestamp across
all arithmetic, allocation and relocation operations. -/
theorem HmrArmedStepPlan.Logged.timestamp_value (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (offset need : Nat) (log : HmrArmedStepLog)
    (h : P.Logged A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (owned : timestamp.toFinset⊆A.live)
    (apart : List.Disjoint timestamp (bank.rows.flatMap WindowRow.wires++counter))
    (movesAway : ∀p∈P.moves,p.1∉timestamp) :
    regValue timestamp (run (P.front.program false frozen counter++repack P.moves) m s).basis=
      regValue timestamp s.basis := by
  apply regValue_congr
  intro q hq
  have no := List.disjoint_left.mp apart hq
  exact (h.front.run_repacked_locality P.front A bank fgWidth vWidth exitWidth false frozen counter s m z
    ready encodes counterValue prefit q (owned (List.mem_toFinset.mpr hq))
    (fun mem => no (List.mem_append_left _ mem)) (fun mem => no (List.mem_append_right _ mem))
    P.movedArena P.moves h.repacked (fun p hp eq => movesAway p hp (eq ▸ hq))).2

theorem HmrArmedStepPlan.Logged.run_math_from_entry (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
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
    (owned : timestamp.toFinset⊆A.live)
    (apart : List.Disjoint timestamp (bank.rows.flatMap WindowRow.wires++counter))
    (movesAway : ∀p∈P.moves,p.1∉timestamp)
    (past : regValue timestamp s.basis<offset)
    (unfrozen : old.frozen=false → regValue timestamp s.basis=0)
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
  have stamp := h.timestamp_value P A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log
    s m old.rows ready encodes counterValue prefit owned apart movesAway
  exact h.run_math P A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log
    p old inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit
    (by rw [stamp]; exact past) (by rw [stamp]; exact unfrozen) fits

theorem HmrArmedStepPlan.Logged.run_math_chronology_from_entry (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
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
    (owned : timestamp.toFinset⊆A.live)
    (apart : List.Disjoint timestamp (bank.rows.flatMap WindowRow.wires++counter))
    (movesAway : ∀p∈P.moves,p.1∉timestamp)
    (past : regValue timestamp s.basis<offset)
    (unfrozen : old.frozen=false → regValue timestamp s.basis=0)
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
    signedRegValue counter out.basis=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z ∧
    regValue timestamp out.basis<offset+1 ∧
    (out.basis frozen=false → regValue timestamp out.basis=0) := by
  have stamp := h.timestamp_value P A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log
    s m old.rows ready encodes counterValue prefit owned apart movesAway
  exact h.run_math_chronology P A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log
    p old inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit
    (by rw [stamp]; exact past) (by rw [stamp]; exact unfrozen) fits

end ECDSAAdd.Arithmetic.Paper935
