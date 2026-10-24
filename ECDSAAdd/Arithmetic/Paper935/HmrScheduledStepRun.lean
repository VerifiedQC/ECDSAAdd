import ECDSAAdd.Arithmetic.Paper935.HmrScheduledStep

namespace ECDSAAdd.Arithmetic.Paper935

/-- Both source phases implement the same independent pinStep transition.
Only arithmetic range and actual record capacity remain numerical premises. -/
theorem compileHmrScheduledStepLog_run (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    (tmin t need : Nat) (log : HmrScheduledStepLog) (P : HmrScheduledStepPlan)
    (checked : compileHmrScheduledStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record tmin t need log=some P)
    (p : Int) (old : PinState) (valid : old.RecordValid tmin t)
    (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (frozenZero : old.frozen=true → old.rows.g=0)
    (s : State) (m : List Bool) (encoding : HmrPinEncoding A bank frozen counter timestamp s old)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (pinStep tmin t old).rows)
    (zfit : PayloadFits (counter.length-1) (pinStep tmin t old).rows.z)
    (capacity : P.Capacity frozen counter timestamp record tmin t s m) :
    HmrPinEncoding P.outputArena P.bank frozen counter timestamp
      (run (P.program frozen counter timestamp record tmin t) m s) (pinStep tmin t old) ∧
    (pinStep tmin t old).RecordValid tmin (t+1) ∧
    ECDSAAdd.Divsteps.Inv p (pinStep tmin t old).rows := by
  obtain ⟨ready,encodes,counterValue,frozenValue,recordValue⟩ := encoding
  have invariant := pinStep_inv tmin t p old inv odd
  cases log with
  | early log =>
    simp only [compileHmrScheduledStepLog] at checked
    split at checked
    next early =>
      obtain ⟨Q,hq,eq⟩ := Option.map_eq_some_iff.mp checked
      cases eq
      have unfrozen : old.frozen=false := by
        cases hf : old.frozen
        · rfl
        · have positive := valid.1.mp hf; have bound := valid.2; omega
      have rows : (pinStep tmin t old).rows=ECDSAAdd.Divsteps.zStep old.rows := by
        rw [pinStep_rows]
        simp only [unfrozen,Bool.false_eq_true,ite_false]
      have result := compileHmrEarlyPinnedStepLog_run Q A bank fgWidth vWidth exitWidth frozen counter timestamp record
        tmin t need log hq p old early valid inv odd s m ready encodes counterValue inv.fodd prefit
        (by rw [←rows]; exact exitfit) (by rw [←rows]; exact zfit) frozenValue recordValue capacity
      exact ⟨⟨result.1,result.2.1,result.2.2.1,result.2.2.2.1,result.2.2.2.2.1⟩,result.2.2.2.2.2,invariant⟩
    next invalid => simp at checked
  | armed log =>
    simp only [compileHmrScheduledStepLog] at checked
    split at checked
    next armed =>
      obtain ⟨Q,hq,eq⟩ := Option.map_eq_some_iff.mp checked
      cases eq
      have result := compileHmrChronologicalStepLog_pin Q A bank fgWidth vWidth exitWidth frozen counter timestamp record
        tmin t need log hq p old armed valid inv odd s m ready encodes counterValue inv.fodd frozenValue frozenZero prefit
        (by rw [←pinStep_rows tmin t old]; exact exitfit) (by rw [←pinStep_rows tmin t old]; exact zfit)
        recordValue capacity
      exact ⟨⟨result.1,result.2.1,result.2.2.1,result.2.2.2.1,result.2.2.2.2.1⟩,result.2.2.2.2.2,invariant⟩
    next invalid => simp at checked

end ECDSAAdd.Arithmetic.Paper935
