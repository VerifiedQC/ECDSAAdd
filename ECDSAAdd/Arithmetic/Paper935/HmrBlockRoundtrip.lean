import ECDSAAdd.Arithmetic.Paper935.HmrBlockDropCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepFrame

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrLiteralAll_write (literals : List HmrLiteral) (q : Wire)
    (outside : ∀l∈literals,l.wire≠q) (s : BasisState) (v : Bool) :
    literals.all (fun l => l.value (writeBit s q v))=literals.all (fun l => l.value s) := by
  apply Bool.eq_iff_iff.mpr
  simp only [List.all_eq_true]
  apply forall_congr'
  intro l
  apply imp_congr_right
  intro hl
  simp only [HmrLiteral.value,writeBit,Function.update_of_ne (outside l hl)]

/-- Keep a source block, then recompile its release in the retained arena.
No equality between the old chain and fresh-prefix addresses is required. -/
theorem compileHmrBlock_roundtrip (A B C : Arena) (literals : List HmrLiteral)
    (P : HmrBlockPlan) (Q : HmrBlockFreePlan)
    (keep : compileHmrBlockKeep A literals=some (B,P))
    (drop : compileHmrBlockDrop B literals P.keeper=some (C,Q))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) :
    run Q.program n (run P.program m s)=s ∧ C.live=A.live ∧ C.Ready s.basis := by
  have first := compileHmrBlockKeep_run A B literals P keep s m ready
  have fresh := compileHmrBlockKeep_fresh A B literals P keep
  have bounded : P.keeper∈arenaWires := B.bounded (by rw [first.2.1]; simp)
  have zero := ready P.keeper bounded fresh
  obtain ⟨D,work,hp,_⟩ := compileHmrBlockKeep_contract A B literals P keep
  have inputOwned := (compileHmrBlock_contract A D literals work P hp).1
  have outside (l : HmrLiteral) (hl : l∈literals) : l.wire≠P.keeper := by
    intro eq
    exact fresh (eq ▸ inputOwned (List.mem_toFinset.mpr (List.mem_map.mpr ⟨l,hl,rfl⟩)))
  have value : (run P.program m s).basis P.keeper=
      literals.all (fun l => l.value (run P.program m s).basis) := by
    rw [first.1,hmrLiteralAll_write literals P.keeper outside]
    simp [writeBit]
  have second := compileHmrBlockDrop_run B C literals P.keeper Q drop
    (run P.program m s) n first.2.2.1 value
  have eq : run Q.program n (run P.program m s)=s := by
    rw [second.1,first.1]
    apply congrArg₂ State.mk
    · rfl
    · funext q
      by_cases hq : q=P.keeper
      · subst q; simp [writeBit,zero]
      · simp [writeBit,hq]
  refine ⟨eq,?_,?_⟩
  · simpa [first.2.1,fresh] using second.2.1
  · simpa only [eq] using second.2.2

end ECDSAAdd.Arithmetic.Paper935
