import ECDSAAdd.Arithmetic.Paper935.HmrSigmaRead

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrSigmaRead_exists (A : Arena) (early : Bool) (frozen bit : Wire)
    (owned : bit∈A.live) (armed : early=false → frozen∈A.live ∧ frozen≠bit)
    (capacity : A.live.card+1≤935) : ∃ B work,compileHmrSigmaRead A early frozen bit=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity 1).mpr capacity
  exact ⟨B,work,by simp only [compileHmrSigmaRead,if_pos (And.intro owned armed),h]⟩

theorem compileHmrSigmaRead_state (A B : Arena) (early : Bool) (frozen bit : Wire) (work : List Wire)
    (h : compileHmrSigmaRead A early frozen bit=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrSigmaRead early frozen bit (hmrBorrowPorts work (0 : Fin 1))) m s
    out.phase=s.phase ∧ B.Ready out.basis ∧ ∀q∈A.live,out.basis q=s.basis q := by
  have hc := compileHmrSigmaRead_contract A B early frozen bit work h
  have ports := hmrBorrowPorts_contract A B 1 work hc.2.2
  dsimp only
  rw [compileHmrSigmaRead_run A B early frozen bit work h s m ready]
  refine ⟨rfl,?_,?_⟩
  · intro q bound absent
    have ne : q≠hmrBorrowPorts work (0 : Fin 1) := fun eq => absent (eq ▸ ports.2.1 0)
    simp only [writeBit,Function.update_of_ne ne]
    apply ready q bound
    intro hq
    apply absent
    rw [(A.borrowMany_live B 1 work hc.2.2).1]
    exact Finset.mem_union_left _ hq
  · intro q hq
    have ne : q≠hmrBorrowPorts work (0 : Fin 1) := fun eq => ports.2.2 0 (eq ▸ hq)
    simp only [writeBit,Function.update_of_ne ne]

end ECDSAAdd.Arithmetic.Paper935
