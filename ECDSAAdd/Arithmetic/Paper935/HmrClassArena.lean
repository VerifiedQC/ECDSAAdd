import ECDSAAdd.Arithmetic.Paper935.HmrClassAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrAndAdvance_ready (A : Arena) (gs : List HmrAndStage) (s : BasisState)
    (owned : ∀g∈gs,g.target∈A.live) (ready : A.Ready s) : A.Ready (hmrAndAdvance gs s) := by
  induction gs generalizing s with
  | nil => exact ready
  | cons g gs ih =>
    apply ih _ (fun x hx => owned x (by simp [hx]))
    intro q hq hn
    have ne : q≠g.target := fun eq => hn (eq ▸ owned g (by simp))
    simpa [HmrAndStage.advance,writeBit,ne] using ready q hq hn

theorem compileHmrClass_targets (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) :
    ∀g∈hmrClassChain mode (hmrAllocatedClassPorts mode inputs work),g.target∈B.live := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have hw := (A.borrowMany_contract B _ work hc.2.2.2).1
  have owns := hmrBorrowOwned A B inputs work _ hc.2.2.2 hc.2.2.1
  have len : (inputs++work).length=5+hmrClassWorkCount mode := by simp [hc.1,hw]
  intro g hg
  cases mode <;> simp only [hmrClassChain,List.mem_cons,List.not_mem_nil,or_false] at hg
  all_goals rcases hg with rfl | rfl | rfl | rfl
  all_goals apply owns; norm_num [len,hmrAllocatedClassPorts,hmrClassWorkCount]

theorem compileHmrClass_arena_ready (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    B.Ready (run (hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) m s).basis := by
  have hc := compileHmrClass_contract A B mode inputs work h
  have reserve := (A.borrowMany_contract B _ work hc.2.2.2).2.2
  rw [compileHmrClass_run A B mode inputs work h s m ready]
  exact hmrAndAdvance_ready B _ _ (compileHmrClass_targets A B mode inputs work h)
    (A.reserve_ready B work.toFinset s.basis ready reserve).1

theorem compileHmrClass_return (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    B.release work.toFinset
      (run (hmrAndUnsweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) m
        ⟨s.phase,hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s.basis⟩).basis=some A := by
  rw [compileHmrClass_release A B mode inputs work h s m ready]
  exact hmrBorrow_return A B _ work (compileHmrClass_contract A B mode inputs work h).2.2.2 s.basis ready

end ECDSAAdd.Arithmetic.Paper935
