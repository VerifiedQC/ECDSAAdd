import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEquality

namespace ECDSAAdd.Arithmetic.Paper935

/-- The same logged chain is accepted in another arena when its actual
input ownership and logged reservation are checked there. -/
theorem compileHmrEqualityLog_transport (A B C D : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEqualityLog A bits k work=some (B,work,P))
    (owned : bits.toFinset⊆C.live) (borrow : C.checkBorrow (bits.length-1) work=some D) :
    compileHmrEqualityLog C bits k work=some (D,work,P) := by
  have hc := compileHmrEqualityLog_contract A B bits k work P h
  unfold compileHmrEqualityLog at h ⊢
  rw [if_pos hc.1,hc.2.1] at h
  rw [if_pos ⟨owned,hc.1.2⟩,borrow]
  dsimp only [Option.bind_some] at h ⊢
  split at h
  next valid =>
    cases h
    simpa using valid
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
