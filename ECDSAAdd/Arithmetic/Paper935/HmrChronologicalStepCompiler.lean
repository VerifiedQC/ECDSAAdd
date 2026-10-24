import ECDSAAdd.Arithmetic.Paper935.HmrArmedStepTimestamp

namespace ECDSAAdd.Arithmetic.Paper935

local instance hmrTimestampDisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀q∈xs,q∉ys) List.disjoint_left.symm

/-- The chronological entry additionally checks that the timestamp is
external owned storage and is not relocated by this source step. -/
def compileHmrChronologicalStepLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire) (offset need : Nat)
    (log : HmrArmedStepLog) : Option HmrArmedStepPlan :=
  if timestamp.toFinset⊆A.live ∧
      List.Disjoint timestamp (bank.rows.flatMap WindowRow.wires++counter) ∧
      (∀p∈log.moves,p.1∉timestamp) then
    compileHmrArmedStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log
  else none

theorem compileHmrChronologicalStepLog_contract (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire) (offset need : Nat)
    (log : HmrArmedStepLog) (P : HmrArmedStepPlan)
    (checked : compileHmrChronologicalStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log=some P) :
    P.Logged A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log ∧
    timestamp.toFinset⊆A.live ∧
    List.Disjoint timestamp (bank.rows.flatMap WindowRow.wires++counter) ∧
    (∀p∈P.moves,p.1∉timestamp) := by
  unfold compileHmrChronologicalStepLog at checked
  split at checked
  next layout =>
    have h := compileHmrArmedStepLog_contract A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log P checked
    exact ⟨h,layout.1,layout.2.1,by rw [h.moves]; exact layout.2.2⟩
  next invalid => simp at checked

theorem compileHmrChronologicalStepLog_run (P : HmrArmedStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (offset need : Nat) (log : HmrArmedStepLog)
    (checked : compileHmrChronologicalStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log=some P)
    (p : Int) (old : PinState) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (frozenValue : s.basis frozen=old.frozen) (frozenZero : old.frozen=true → old.rows.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z)
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
  have h := compileHmrChronologicalStepLog_contract A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log P checked
  exact h.1.run_math_chronology_from_entry P A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log
    p old inv odd s m ready encodes counterValue fodd frozenValue frozenZero prefit exitfit zfit
    h.2.1 h.2.2.1 h.2.2.2 past unfrozen fits

end ECDSAAdd.Arithmetic.Paper935
