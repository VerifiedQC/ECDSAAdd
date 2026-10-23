import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeepLive
import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassLog
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFlags
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRecordGrow

namespace ECDSAAdd.Arithmetic.Paper935

theorem Arena.checkBorrow_mono (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) : A.live⊆B.live := by
  rw [A.checkBorrow_live B n work h]
  exact Finset.subset_union_left

theorem HmrSourceClassPlan.Logged.mono (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (h : P.Logged A armed sign zeroFlag frozen sigma) : A.live⊆P.equalityArena.live := by
  have eq := compileHmrEqualityLog_contract P.positiveArena P.equalityArena
    (hmrSourceClassInputs armed frozen sigma P.positive) 0 P.equalityWork P.equality h.equality
  exact (A.checkBorrow_mono P.positiveArena 1 P.positiveWork h.positiveBorrow).trans
    (P.positiveArena.checkBorrow_mono P.equalityArena _ P.equalityWork eq.2.1)

theorem compileHmrRecordGrowLog_unchanged (A : Arena) (record : List Wire) (need : Nat)
    (nd : record.Nodup) (owned : record.toFinset⊆A.live) (length : record.length=need) :
    compileHmrRecordGrowLog A record need []=some A := by
  unfold compileHmrRecordGrowLog
  rw [if_pos ⟨nd,owned,by omega⟩,←length,Nat.sub_self]
  simp [Arena.checkBorrow,Arena.reserve]

end ECDSAAdd.Arithmetic.Paper935
