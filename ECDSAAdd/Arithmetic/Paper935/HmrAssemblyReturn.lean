import ECDSAAdd.Arithmetic.Paper935.HmrAssemblyAllocation

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrAssembly_return (A B : Arena) (early : Bool) (pred parity fire output : Wire) (work : List Wire)
    (h : compileHmrAssembly A early pred parity fire output=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrBranchAssembly early pred parity fire (hmrBorrowPorts work (0 : Fin 1)) output) m s
    A.Ready out.basis ∧ B.release work.toFinset out.basis=some A := by
  have hc := compileHmrAssembly_contract A B early pred parity fire output work h
  have owned : output∈A.live := by
    apply hc.2.1
    cases early <;> simp [hmrAssemblyInputs]
  have result := compileHmrAssembly_run A B early pred parity fire output work h s m ready
  have after : A.Ready (run (hmrBranchAssembly early pred parity fire (hmrBorrowPorts work (0 : Fin 1)) output) m s).basis := by
    rw [result]
    intro q hq hn
    have ne : q≠output := fun eq => hn (eq ▸ owned)
    simpa only [writeBit,Function.update_of_ne ne] using ready q hq hn
  refine ⟨after,?_⟩
  cases he : early with
  | false =>
    rw [he] at after
    have borrow : A.borrowMany 1=some (B,work) := by simpa only [he,Bool.false_eq_true,ite_false] using hc.2.2
    exact hmrBorrow_return A B 1 work borrow _ after
  | true =>
    have eqs : B=A ∧ work=[] := by simpa only [he,ite_true] using hc.2.2
    rcases eqs with ⟨rfl,rfl⟩
    simp [Arena.release]

end ECDSAAdd.Arithmetic.Paper935
