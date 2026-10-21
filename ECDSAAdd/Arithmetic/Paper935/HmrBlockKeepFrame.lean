import ECDSAAdd.Arithmetic.Paper935.HmrBlockedCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlockKeep_fresh (A B : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    (h : compileHmrBlockKeep A literals=some (B,P)) : P.keeper∉A.live := by
  obtain ⟨C,work,hc,_⟩ := compileHmrBlockKeep_contract A B literals P h
  have contract := compileHmrBlock_contract A C literals work P hc
  have borrow := A.borrowMany_contract C literals.length work contract.2.1
  have valid := (A.reserve_success work.toFinset).mp ⟨C,borrow.2.2⟩
  intro mem
  exact Finset.disjoint_left.mp valid.2 mem (List.mem_toFinset.mpr contract.2.2.2.2.2.2)

theorem compileHmrBlockKeep_frame (A B : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    (h : compileHmrBlockKeep A literals=some (B,P)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (q : Wire) (owned : q∈A.live) :
    (run P.program m s).basis q=s.basis q := by
  rw [(compileHmrBlockKeep_run A B literals P h s m ready).1]
  have ne : q≠P.keeper := fun eq => compileHmrBlockKeep_fresh A B literals P h (eq ▸ owned)
  simp [writeBit,ne]

theorem hmrBlockLiterals_value (previous : Option Wire) (bits : List Wire) (s : BasisState) :
    (hmrBlockLiterals previous bits).all (fun l => l.value s)=
      ((previous.map s).getD true && bits.all (fun q => !s q)) := by
  cases previous <;> simp [hmrBlockLiterals,HmrLiteral.value,Function.comp_def]

end ECDSAAdd.Arithmetic.Paper935
