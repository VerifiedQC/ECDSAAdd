import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepFrame
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlocked

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlockKeepLog_fresh (A B : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    {log : List Wire} (h : compileHmrBlockKeepLog A literals log=some (B,P)) : P.keeper∉A.live := by
  obtain ⟨C,work,hc,_⟩ := compileHmrBlockKeepLog_contract A B literals P h
  have contract := compileHmrBlockLog_contract A C literals work P hc
  have borrow := A.checkBorrow_contract C literals.length work contract.2.1
  have valid := (A.reserve_success work.toFinset).mp ⟨C,borrow.2.2⟩
  intro mem
  exact Finset.disjoint_left.mp valid.2 mem (List.mem_toFinset.mpr contract.2.2.2.2.2.2)

theorem compileHmrBlockKeepLog_frame (A B : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    {log : List Wire} (h : compileHmrBlockKeepLog A literals log=some (B,P)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (q : Wire) (owned : q∈A.live) :
    (run P.program m s).basis q=s.basis q := by
  rw [(compileHmrBlockKeepLog_run A B literals P h s m ready).1]
  have ne : q≠P.keeper := fun eq => compileHmrBlockKeepLog_fresh A B literals P h (eq ▸ owned)
  simp [writeBit,ne]

end ECDSAAdd.Arithmetic.Paper935
