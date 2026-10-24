import ECDSAAdd.Arithmetic.Paper935.HmrBlockLifetime

namespace ECDSAAdd.Arithmetic.Paper935

theorem Arena.release_clean_eq (A : Arena) (qs : Finset Wire) (s : BasisState)
    (clean : ∀q∈qs,s q=false) :
    A.release qs s=A.release qs (fun _ => false) := by
  unfold Arena.release
  by_cases owned : qs⊆A.live
  · rw [if_pos ⟨owned,clean⟩,if_pos ⟨owned,by simp⟩]
  · rw [if_neg (fun h => owned h.1),if_neg (fun h => owned h.1)]

def compileHmrBlockKeep (A : Arena) (literals : List HmrLiteral) :
    Option (Arena × HmrBlockPlan) := do
  let (B,work,P) ← compileHmrBlock A literals
  let C ← B.release (work.toFinset.erase P.keeper) (fun _ => false)
  pure (C,P)

theorem compileHmrBlockKeep_contract (A C : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    (h : compileHmrBlockKeep A literals=some (C,P)) :
    ∃ B work,compileHmrBlock A literals=some (B,work,P) ∧
      B.release (work.toFinset.erase P.keeper) (fun _ => false)=some C := by
  unfold compileHmrBlockKeep at h
  obtain ⟨⟨B,work,Q⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨D,hd,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨B,work,hb,hd⟩

theorem compileHmrBlockKeep_run (A C : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    (h : compileHmrBlockKeep A literals=some (C,P)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let out := run P.program m s
    out=⟨s.phase,writeBit s.basis P.keeper (literals.all (fun l => l.value s.basis))⟩ ∧
    C.live=insert P.keeper A.live ∧ C.Ready out.basis ∧ C.live.card=A.live.card+1 := by
  obtain ⟨B,work,hb,release⟩ := compileHmrBlockKeep_contract A C literals P h
  obtain ⟨D,actual,live,dr,card⟩ := compileHmrBlock_retain A B literals work P hb s m ready
  have clean := ((B.release_success (work.toFinset.erase P.keeper) _).mp ⟨D,actual⟩).2
  rw [B.release_clean_eq _ _ clean,release] at actual
  cases actual
  exact ⟨compileHmrBlock_run A B literals work P hb s m ready,live,dr,card⟩

end ECDSAAdd.Arithmetic.Paper935
