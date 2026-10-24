import ECDSAAdd.Arithmetic.Paper935.HmrBlockFreeRelease

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrBlockDrop (A : Arena) (literals : List HmrLiteral) (keeper : Wire) :
    Option (Arena × HmrBlockFreePlan) := do
  let (B,work,P) ← compileHmrBlockFree A literals keeper
  let C ← B.release (insert keeper work.toFinset) (fun _ => false)
  pure (C,P)

theorem compileHmrBlockDrop_contract (A C : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (P : HmrBlockFreePlan) (h : compileHmrBlockDrop A literals keeper=some (C,P)) :
    ∃ B work,compileHmrBlockFree A literals keeper=some (B,work,P) ∧
      B.release (insert keeper work.toFinset) (fun _ => false)=some C := by
  unfold compileHmrBlockDrop at h
  obtain ⟨⟨B,work,Q⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨D,hd,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨B,work,hb,hd⟩

theorem compileHmrBlockDrop_run (A C : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (P : HmrBlockFreePlan) (h : compileHmrBlockDrop A literals keeper=some (C,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis keeper=literals.all (fun l => l.value s.basis)) :
    let out := run P.program m s
    out=⟨s.phase,writeBit s.basis keeper false⟩ ∧ C.live=A.live.erase keeper ∧ C.Ready out.basis := by
  obtain ⟨B,work,hb,release⟩ := compileHmrBlockDrop_contract A C literals keeper P h
  obtain ⟨D,actual,live,dr⟩ := compileHmrBlockFree_release A B literals work keeper P hb s m ready value
  have clean := ((B.release_success (insert keeper work.toFinset) _).mp ⟨D,actual⟩).2
  rw [B.release_clean_eq _ _ clean,release] at actual
  cases actual
  exact ⟨compileHmrBlockFree_run A B literals keeper work P hb s m ready value,live,dr⟩

end ECDSAAdd.Arithmetic.Paper935
