import ECDSAAdd.Arithmetic.Paper935.HmrSourceClassLog
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEqualityTransport
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowCommute

namespace ECDSAAdd.Arithmetic.Paper935

/-- Extend a class certificate by a later checked borrow. Its port lists
and gate program are unchanged; only the ambient live sets grow. -/
theorem HmrSourceClassPlan.Logged.extend (P : HmrSourceClassPlan) (A D : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (h : P.Logged A armed sign zeroFlag frozen sigma) (n : Nat) (fresh : List Wire)
    (later : P.equalityArena.checkBorrow n fresh=some D) :
    ∃A' B',A.checkBorrow n fresh=some A' ∧ P.positiveArena.checkBorrow n fresh=some B' ∧
      (HmrSourceClassPlan.mk B' P.positiveWork D P.equalityWork P.equality).Logged
        A' armed sign zeroFlag frozen sigma := by
  have eqc := compileHmrEqualityLog_contract P.positiveArena P.equalityArena _ 0
    P.equalityWork P.equality h.equality
  obtain ⟨B',pb,bd⟩ := P.positiveArena.checkBorrow_commute P.equalityArena D
    ((hmrSourceClassInputs armed frozen sigma P.positive).length-1) n
    P.equalityWork fresh eqc.2.1 later
  obtain ⟨A',aa,ab⟩ := A.checkBorrow_commute P.positiveArena B' 1 n P.positiveWork fresh h.positiveBorrow pb
  have containsA : A.live⊆A'.live := by
    rw [A.checkBorrow_live A' n fresh aa]; exact Finset.subset_union_left
  have containsB : P.positiveArena.live⊆B'.live := by
    rw [P.positiveArena.checkBorrow_live B' n fresh pb]; exact Finset.subset_union_left
  refine ⟨A',B',aa,pb,h.distinct,Finset.Subset.trans h.owned containsA,ab,?_⟩
  exact compileHmrEqualityLog_transport P.positiveArena P.equalityArena B' D _ 0
    P.equalityWork P.equality h.equality (Finset.Subset.trans eqc.1.1 containsB) bd

end ECDSAAdd.Arithmetic.Paper935
