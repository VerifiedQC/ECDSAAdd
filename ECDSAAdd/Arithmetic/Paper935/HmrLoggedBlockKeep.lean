import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockLifetime

namespace ECDSAAdd.Arithmetic.Paper935

def compileHmrBlockKeepLog (A : Arena) (literals : List HmrLiteral) (log : List Wire) :
    Option (Arena × HmrBlockPlan) := do
  let (B,work,P) ← compileHmrBlockLog A literals log
  let C ← B.release (work.toFinset.erase P.keeper) (fun _ => false)
  pure (C,P)

theorem compileHmrBlockKeepLog_contract (A C : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    {log : List Wire} (h : compileHmrBlockKeepLog A literals log=some (C,P)) :
    ∃ B work,compileHmrBlockLog A literals work=some (B,work,P) ∧
      B.release (work.toFinset.erase P.keeper) (fun _ => false)=some C := by
  unfold compileHmrBlockKeepLog at h
  obtain ⟨⟨B,work,Q⟩,hb,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨D,hd,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  have eq := compileHmrBlockLog_work A B literals log work P hb
  subst work
  exact ⟨B,log,hb,hd⟩

theorem compileHmrBlockKeepLog_run (A C : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    {log : List Wire} (h : compileHmrBlockKeepLog A literals log=some (C,P)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let out := run P.program m s
    out=⟨s.phase,writeBit s.basis P.keeper (literals.all (fun l => l.value s.basis))⟩ ∧
    C.live=insert P.keeper A.live ∧ C.Ready out.basis ∧ C.live.card=A.live.card+1 := by
  obtain ⟨B,work,hb,release⟩ := compileHmrBlockKeepLog_contract A C literals P h
  obtain ⟨D,actual,live,dr,card⟩ := compileHmrBlockLog_retain A B literals work P hb s m ready
  have clean := ((B.release_success (work.toFinset.erase P.keeper) _).mp ⟨D,actual⟩).2
  rw [B.release_clean_eq _ _ clean,release] at actual
  cases actual
  exact ⟨compileHmrBlockLog_run A B literals work P hb s m ready,live,dr,card⟩

end ECDSAAdd.Arithmetic.Paper935
