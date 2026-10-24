import ECDSAAdd.Arithmetic.Paper935.HmrHistoryPop
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts
import ECDSAAdd.Arithmetic.Paper935.HmrFreezeRun

namespace ECDSAAdd.Arithmetic.Paper935

/-- R5 allocates a new branch port after the jflags exist. The history and
store control are already owned; freshness comes from this actual borrow. -/
def compileHmrPop (A : Arena) (store : Wire) (record : List Wire) : Option (Arena × List Wire) :=
  if (store::record).Nodup ∧ (store::record).toFinset⊆A.live
  then A.borrowMany 1 else none

theorem compileHmrPop_contract (A B : Arena) (store : Wire) (record work : List Wire)
    (h : compileHmrPop A store record=some (B,work)) :
    (store::record).Nodup ∧ (store::record).toFinset⊆A.live ∧ A.borrowMany 1=some (B,work) := by
  unfold compileHmrPop at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next invalid => simp at h

theorem compileHmrPop_run (A B : Arena) (store : Wire) (record work : List Wire)
    (h : compileHmrPop A store record=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let output := hmrBorrowPorts work (0 : Fin 1)
    let out := run (popHistory store output record) m s
    out.phase=s.phase ∧ B.Ready out.basis ∧ out.basis store=s.basis store ∧
    out.basis output=(s.basis store && decide (regValue record s.basis%2=1)) ∧
    regValue record out.basis=(if s.basis store then regValue record s.basis/2 else regValue record s.basis) ∧
    ∀q∈A.live,q∉record → out.basis q=s.basis q := by
  have hc := compileHmrPop_contract A B store record work h
  have ports := hmrBorrowPorts_contract A B 1 work hc.2.2
  let output := hmrBorrowPorts work (0 : Fin 1)
  have away (q : Wire) (hq : q∈A.live) : q≠output := by
    intro eq
    apply ports.2.2 0
    change output∈A.live
    rw [←eq]
    exact hq
  have oldOwned (q : Wire) (hq : q∈A.live) : q∈B.live := by
    rw [(A.borrowMany_live B 1 work hc.2.2).1]
    exact Finset.mem_union_left _ hq
  have owned (q : Wire) (hq : q∈store::record) : q∈A.live := hc.2.1 (List.mem_toFinset.mpr hq)
  have distinct : (store::output::record).Nodup := by
    simp only [List.nodup_cons] at hc ⊢
    refine ⟨?_,?_,hc.1.2⟩
    · simp only [List.mem_cons,not_or]
      exact ⟨away store (owned store (by simp)),hc.1.1⟩
    · intro ho
      exact away output (owned output (by simp [ho])) rfl
  have result := hmrPop_spec store output record distinct s m
    (hmrBorrowPorts_clean A B 1 work hc.2.2 s.basis ready 0)
  dsimp only
  refine ⟨result.1,?_,result.2.1,result.2.2.1,result.2.2.2.1,?_⟩
  · apply B.run_ready (popHistory store output record) s m
    · exact (A.reserve_ready B work.toFinset s.basis ready (A.borrowMany_contract B 1 work hc.2.2).2.2).1
    · intro q hq
      have mem := List.mem_toFinset.mp ((history_support store output record).2 hq)
      simp only [List.mem_cons] at mem
      rcases mem with eq|eq|hr
      · rw [eq]; exact oldOwned store (owned store (by simp))
      · rw [eq]; exact ports.2.1 0
      · exact oldOwned q (owned q (by simp [hr]))
  · intro q hq hr
    exact result.2.2.2.2 q (by simp [away q hq,hr])

end ECDSAAdd.Arithmetic.Paper935
