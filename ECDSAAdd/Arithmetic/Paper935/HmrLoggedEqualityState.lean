import ECDSAAdd.Arithmetic.Paper935.HmrEqualityState
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEquality
import ECDSAAdd.Arithmetic.Paper935.HmrClassArena
import ECDSAAdd.Arithmetic.Paper935.HmrClassState

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrEqualityLog_targets (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEqualityLog A bits k work=some (B,work,P)) :
    ∀g∈P.stages,g.target∈work.toFinset := by
  have valid := (compileHmrEqualityLog_contract A B bits k work P h).2.2
  intro g hg
  apply valid.2.2.2
  apply List.mem_toFinset.mpr
  exact hmrLadder_targets P.head P.cells g hg

theorem compileHmrEqualityLog_state (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEqualityLog A bits k work=some (B,work,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrAndSweep P.stages) m s
    out=⟨s.phase,hmrAndAdvance P.stages s.basis⟩ ∧ B.Ready out.basis ∧
      (∀q∈A.live,out.basis q=s.basis q) ∧ out.basis P.top=decide (regValue bits s.basis=k) := by
  have contract := compileHmrEqualityLog_contract A B bits k work P h
  have borrow := A.checkBorrow_contract B _ work contract.2.1
  have reserved := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have target := compileHmrEqualityLog_targets A B bits k work P h
  have result := hmrAndSweep_run P.stages s m
    (compileHmrEqualityLog_ready A B bits k work P h s.basis ready)
  dsimp only
  rw [result]
  refine ⟨rfl,?_,?_,compileHmrEqualityLog_value A B bits k work P h s.basis⟩
  · apply hmrAndAdvance_ready B P.stages s.basis
    · intro g hg
      rw [A.checkBorrow_live B _ work contract.2.1]
      exact Finset.mem_union_right _ (target g hg)
    · exact (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).1
  · intro q hq
    apply hmrAndAdvance_target_frame
    intro g hg eq
    exact Finset.disjoint_left.mp reserved.2 hq (eq ▸ target g hg)

end ECDSAAdd.Arithmetic.Paper935
