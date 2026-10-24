import ECDSAAdd.Arithmetic.Paper935.HmrCounterStep

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrCarryIncrement_counts (control : Wire) (qs work : List Wire)
    (length : work.length+1=qs.length) :
    toffoliCount (hmrCarryIncrement control qs work)=work.length ∧
    measurementCount (hmrCarryIncrement control qs work)=work.length := by
  induction qs generalizing control work with
  | nil => simp at length
  | cons q qs ih =>
    cases qs with
    | nil =>
      have wl : work.length=0 := by simp only [List.length_cons,List.length_nil] at length; omega
      simp [hmrCarryIncrement,toffoliCount,measurementCount,wl]
    | cons r rest =>
      cases work with
      | nil => simp at length
      | cons w ws =>
        have tailLength : ws.length+1=(r::rest).length := by simp only [List.length_cons] at length ⊢; omega
        have recur := ih w ws tailLength
        simp [hmrCarryIncrement,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
          toffoliCount_append,measurementCount_append,toffoliCount,measurementCount,recur.1,recur.2,Nat.add_comm]

/-- Six-bit source F5 uses four carry cells before freeze, five afterwards;
these are local simultaneous scratch requirements, not whole-walk peaks. -/
theorem compileHmrCounterStep_counts (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work)) :
    toffoliCount (hmrCounterStep early dec frozen qs work)=(if early then 4 else 5) ∧
    measurementCount (hmrCounterStep early dec frozen qs work)=(if early then 4 else 5) := by
  have hc := compileHmrCounterStep_contract A B early frozen qs work h
  have wl := (A.borrowMany_contract B (if early then 4 else 5) work hc.2.2.2).1
  cases he : early with
  | false =>
    have length : work.length+1=qs.length := by simp [he] at wl; omega
    have counts := hmrCarryIncrement_counts frozen qs work length
    cases dec <;> simp [hmrCounterStep,hmrArmedIncrement,hmrArmedDecrement,hmrCarryDecrement,
      toffoliCount_append,measurementCount_append,(notRegister_counts qs).1,(notRegister_counts qs).2,
      toffoliCount,measurementCount,counts.1,counts.2,show work.length=5 by simpa [he] using wl]
  | true =>
    cases qs with
    | nil => simp at hc
    | cons q rest =>
      have length : work.length+1=rest.length := by simp [he] at wl; simp only [List.length_cons] at hc; omega
      have counts := hmrCarryIncrement_counts q rest work length
      cases dec <;> simp [hmrCounterStep,hmrEarlyIncrement,hmrEarlyDecrement,
        toffoliCount_append,measurementCount_append,(notRegister_counts (q::rest)).1,(notRegister_counts (q::rest)).2,
        toffoliCount,measurementCount,counts.1,counts.2,show work.length=4 by simpa [he] using wl]

theorem compileHmrCounterStep_live (A B : Arena) (early : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work)) :
    B.live.card=A.live.card+(if early then 4 else 5) := by
  exact (A.borrowMany_live B _ work (compileHmrCounterStep_contract A B early frozen qs work h).2.2.2).2

end ECDSAAdd.Arithmetic.Paper935
