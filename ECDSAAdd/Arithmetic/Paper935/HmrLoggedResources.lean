import ECDSAAdd.Arithmetic.Paper935.HmrLoggedHybrid
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrHybridResources
import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepResources

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrHybridRowLog_counts (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B) :
    toffoliCount (hmrHybridRow control a b carry work)=3*b.length-2-hmrHybridCount A b.length ∧
    measurementCount (hmrHybridRow control a b carry work)=hmrHybridCount A b.length := by
  have hc := compileHmrHybridRowLog_contract A B control carry a b work h
  have length := (A.checkBorrow_contract B _ work hc.2.2.2.2).1
  have result := hmrHybridRow_counts control carry a b work hc.2.1 (compileHmrHybridRowLog_geometry A B control carry a b work h).2
  simpa only [length] using result

theorem compileHmrHybridRowLog_census (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B) :
    B.live.card=A.live.card+hmrHybridCount A b.length ∧ B.live.card≤935 := by
  exact ⟨A.checkBorrow_card B _ work (compileHmrHybridRowLog_contract A B control carry a b work h).2.2.2.2,B.peak_bound⟩

theorem compileHmrCounterStepLog_counts (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStepLog A early frozen qs work=some B) :
    toffoliCount (hmrCounterStep early dec frozen qs work)=(if early then 4 else 5) ∧
    measurementCount (hmrCounterStep early dec frozen qs work)=(if early then 4 else 5) := by
  have hc := compileHmrCounterStepLog_contract A B early frozen qs work h
  have wl := (A.checkBorrow_contract B (if early then 4 else 5) work hc.2.2.2).1
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

theorem compileHmrCounterStepLog_live (A B : Arena) (early : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStepLog A early frozen qs work=some B) :
    B.live.card=A.live.card+(if early then 4 else 5) := by
  exact A.checkBorrow_card B _ work (compileHmrCounterStepLog_contract A B early frozen qs work h).2.2.2

end ECDSAAdd.Arithmetic.Paper935
