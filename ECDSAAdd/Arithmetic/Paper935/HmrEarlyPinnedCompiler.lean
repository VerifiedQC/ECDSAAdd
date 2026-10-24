import ECDSAAdd.Arithmetic.Paper935.HmrEarlyStepPin

namespace ECDSAAdd.Arithmetic.Paper935

local instance hmrEarlyPinnedDisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀q∈xs,q∉ys) List.disjoint_left.symm

/-- Check the actual early step while reserving the dormant freeze metadata. -/
def compileHmrEarlyPinnedStepLog (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire) (need : Nat)
    (log : HmrEarlyStepLog) : Option HmrEarlyStepPlan := do
  let P ← compileHmrEarlyStepLog A bank fgWidth vWidth exitWidth frozen counter record need log
  if (frozen::timestamp).toFinset⊆A.live ∧
      List.Disjoint (frozen::timestamp) (bank.rows.flatMap WindowRow.wires++counter) ∧
      (∀p∈P.moves,p.1∉frozen::timestamp) ∧
      List.Disjoint (frozen::timestamp) (P.front.sigma::P.front.branch::record) then
    some P
  else none

theorem compileHmrEarlyPinnedStepLog_contract (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire) (need : Nat)
    (log : HmrEarlyStepLog) (P : HmrEarlyStepPlan)
    (checked : compileHmrEarlyPinnedStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record need log=some P) :
    P.Logged A bank fgWidth vWidth exitWidth frozen counter record need log ∧
    (frozen::timestamp).toFinset⊆A.live ∧
    List.Disjoint (frozen::timestamp) (bank.rows.flatMap WindowRow.wires++counter) ∧
    (∀p∈P.moves,p.1∉frozen::timestamp) ∧
    List.Disjoint (frozen::timestamp) (P.front.sigma::P.front.branch::record) := by
  unfold compileHmrEarlyPinnedStepLog at checked
  obtain ⟨Q,hq,checked⟩ := Option.bind_eq_some_iff.mp checked
  split at checked
  next layout =>
    cases checked
    exact ⟨compileHmrEarlyStepLog_contract A bank fgWidth vWidth exitWidth frozen counter record need log P hq,layout⟩
  next invalid => simp at checked

theorem compileHmrEarlyPinnedStepLog_run (P : HmrEarlyStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t need : Nat) (log : HmrEarlyStepLog)
    (checked : compileHmrEarlyPinnedStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record need log=some P)
    (p : Int) (old : PinState) (early : t<tmin) (valid : old.RecordValid tmin t) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (ECDSAAdd.Divsteps.zStep old.rows).z)
    (frozenValue : s.basis frozen=old.frozen)
    (recordValue : regValue timestamp s.basis=old.offset)
    (fits : let before := P.front.program true frozen counter++repack P.moves
      let first := run before m s
      let tape := m.drop (measurementCount before)
      let u := run (hmrAndSweep P.control.zeroPlan.stages) tape first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.zeroPlan.top)
        (tape.drop (measurementCount (hmrAndSweep P.control.zeroPlan.stages))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue (record++P.control.log.recordFresh) v.basis+(v.basis P.front.branch).toNat<2^(record++P.control.log.recordFresh).length) :
    let out := run (P.program frozen (counter.getLastD 0) counter record) m s
    P.control.outputArena.Ready out.basis ∧
    P.bank.Encodes out.basis (pinStep tmin t old).rows ∧
    signedRegValue counter out.basis=(pinStep tmin t old).rows.z ∧
    out.basis frozen=(pinStep tmin t old).frozen ∧
    regValue timestamp out.basis=(pinStep tmin t old).offset ∧
    (pinStep tmin t old).RecordValid tmin (t+1) := by
  have h := compileHmrEarlyPinnedStepLog_contract A bank fgWidth vWidth exitWidth frozen counter timestamp record need log P checked
  exact h.1.run_pin P A bank fgWidth vWidth exitWidth frozen counter record tmin t need log
    p old early valid inv odd s m ready encodes counterValue fodd prefit exitfit zfit timestamp frozenValue recordValue
    h.2.1 h.2.2.1 h.2.2.2.1 h.2.2.2.2 fits

end ECDSAAdd.Arithmetic.Paper935
