import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockFreeRelease

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrBlockDropLog (A : Arena) (literals : List HmrLiteral) (keeper : Wire) (log : List Wire) :
    Option (Arena × HmrBlockFreePlan) := do
  let (B,work,P) ← compileHmrBlockFreeLog A literals keeper log
  let C ← B.release (insert keeper work.toFinset) (fun _ => false)
  pure (C,P)

theorem compileHmrBlockDropLog_contract (A C : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (P : HmrBlockFreePlan) {log : List Wire} (h : compileHmrBlockDropLog A literals keeper log=some (C,P)) :
    ∃ B work,compileHmrBlockFreeLog A literals keeper work=some (B,work,P) ∧
      B.release (insert keeper work.toFinset) (fun _ => false)=some C := by
  unfold compileHmrBlockDropLog at h
  obtain ⟨⟨B,work,Q⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨D,hd,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  have eq := compileHmrBlockFreeLog_work A B literals keeper log work P hb
  subst work
  exact ⟨B,log,hb,hd⟩

theorem compileHmrBlockDropLog_run (A C : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (P : HmrBlockFreePlan) {log : List Wire} (h : compileHmrBlockDropLog A literals keeper log=some (C,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis keeper=literals.all (fun l => l.value s.basis)) :
    let out := run P.program m s
    out=⟨s.phase,writeBit s.basis keeper false⟩ ∧ C.live=A.live.erase keeper ∧ C.Ready out.basis := by
  obtain ⟨B,work,hb,release⟩ := compileHmrBlockDropLog_contract A C literals keeper P h
  obtain ⟨D,actual,live,dr⟩ := compileHmrBlockFreeLog_release A B literals work keeper P hb s m ready value
  have clean := ((B.release_success (insert keeper work.toFinset) _).mp ⟨D,actual⟩).2
  rw [B.release_clean_eq _ _ clean,release] at actual
  cases actual
  exact ⟨compileHmrBlockFreeLog_run A B literals keeper work P hb s m ready value,live,dr⟩

end ECDSAAdd.Arithmetic.Paper935
