import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source-accurate step semantics, including creation of physical freeze
metadata at Tmin. No dormant physical metadata is required in early steps. -/
theorem compileHmrSourceStepLog_run (A : Arena) (bank : WindowBank) (fgWidth vWidth : Nat)
    (exitWidth : RowWindow) (counter record : List Wire) (width tmin t need : Nat)
    (metadata : Option HmrFreezeMetadata) (log : HmrSourceStepLog) (P : HmrSourceStepPlan)
    (checked : compileHmrSourceStepLog A bank fgWidth vWidth exitWidth counter record width tmin t need metadata log=some P)
    (p : Int) (old : PinState) (valid : old.RecordValid tmin t)
    (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (frozenZero : old.frozen=true → old.rows.g=0)
    (s : State) (m : List Bool) (encoding : HmrSourceEncoding A bank counter metadata s old)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (pinStep tmin t old).rows)
    (zfit : PayloadFits (counter.length-1) (pinStep tmin t old).rows.z)
    (capacity : P.Capacity counter record tmin t s m) :
    HmrSourceEncoding P.outputArena P.bank counter P.metadata
      (run (P.program counter record tmin t) m s) (pinStep tmin t old) ∧
    (pinStep tmin t old).RecordValid tmin (t+1) ∧
    ECDSAAdd.Divsteps.Inv p (pinStep tmin t old).rows := by
  have armedRun (B : Arena) (M : HmrFreezeMetadata) (Q : HmrArmedStepPlan) (armedLog : HmrArmedStepLog)
      (armed : tmin≤t)
      (hq : compileHmrChronologicalStepLog B bank fgWidth vWidth exitWidth M.frozen counter M.timestamp record (t+1-tmin) need
        armedLog=some Q)
      (enc : HmrSourceEncoding B bank counter (some M) s old)
      (cap : Q.Capacity M.frozen counter M.timestamp record (t+1-tmin) s m) :
      HmrSourceEncoding Q.control.outputArena Q.bank counter (some M)
        (run (Q.program M.frozen (counter.getLastD 0) counter M.timestamp record (t+1-tmin)) m s) (pinStep tmin t old) := by
    obtain ⟨ready,rows,counterValue,frozenValue,recordValue⟩ := enc
    have result := compileHmrChronologicalStepLog_pin Q B bank fgWidth vWidth exitWidth M.frozen counter M.timestamp record
      tmin t need _ hq p old armed valid inv odd s m ready rows counterValue inv.fodd frozenValue frozenZero prefit
      (by rw [←pinStep_rows tmin t old]; exact exitfit) (by rw [←pinStep_rows tmin t old]; exact zfit)
      recordValue cap
    exact ⟨result.1,result.2.1,result.2.2.1,result.2.2.2.1,result.2.2.2.2.1⟩
  refine ⟨?_,pinStep_record tmin t old valid,pinStep_inv tmin t p old inv odd⟩
  cases metadata with
  | none =>
    cases log with
    | early log =>
      simp only [compileHmrSourceStepLog] at checked
      split at checked
      next early =>
        obtain ⟨Q,hq,eq⟩ := Option.map_eq_some_iff.mp checked
        cases eq
        obtain ⟨ready,rows,counterValue,unfrozen,unset⟩ := encoding
        have pin : pinStep tmin t old=⟨ECDSAAdd.Divsteps.zStep old.rows,false,0⟩ := by
          simp [pinStep,unfrozen,show ¬tmin≤t by omega]
        have h := compileHmrEarlyStepLog_contract A bank fgWidth vWidth exitWidth 0 counter record need log Q hq
        have result := h.run_math Q A bank fgWidth vWidth exitWidth 0 counter record need log p old.rows inv odd
          s m ready rows counterValue inv.fodd prefit (by simpa only [pin] using exitfit)
          (by simpa only [pin] using zfit) capacity
        exact ⟨result.1,by simpa only [pin] using result.2.1,by simpa only [pin] using result.2.2,by rw [pin],by rw [pin]⟩
      next invalid => simp at checked
    | arm M log =>
      simp only [compileHmrSourceStepLog] at checked
      split at checked
      next boundary =>
        obtain ⟨B,hb,checked⟩ := Option.bind_eq_some_iff.mp checked
        obtain ⟨Q,hq,checked⟩ := Option.bind_eq_some_iff.mp checked
        cases checked
        exact armedRun B M Q log (by omega) hq (compileHmrArmLog_encoding A B width M hb bank counter s old encoding) capacity
      next invalid => simp at checked
    | armed log => simp [compileHmrSourceStepLog] at checked
  | some M =>
    cases log with
    | early log => simp [compileHmrSourceStepLog] at checked
    | arm N log => simp [compileHmrSourceStepLog] at checked
    | armed log =>
      simp only [compileHmrSourceStepLog] at checked
      split at checked
      next armed =>
        obtain ⟨Q,hq,eq⟩ := Option.map_eq_some_iff.mp checked
        cases eq
        exact armedRun A M Q log armed hq encoding capacity
      next invalid => simp at checked

end ECDSAAdd.Arithmetic.Paper935
