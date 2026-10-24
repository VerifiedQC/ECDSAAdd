import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFireRelease
import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- Compile F16 and return its equality work, w1, and retired fire.
The static release checks layout; `run_spec` proves actual cleanliness. -/
def compileHmrFireDropLog (A : Arena) (record : List Wire) (offset : Nat) (zf frozen fire : Wire) (eqLog fireLog : List Wire) :
    Option (Arena × HmrFirePlan) := do
  let (_,P) ← compileHmrFireLog A record offset zf frozen fire eqLog fireLog
  let D ← A.release {fire} (fun _ => false)
  pure (D,P)

theorem compileHmrFireDropLog_contract (A D : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    {eqLog fireLog : List Wire} (h : compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog=some (D,P)) :
    ∃C,compileHmrFireLog A record offset zf frozen fire eqLog fireLog=some (C,P) ∧
      A.release {fire} (fun _ => false)=some D := by
  unfold compileHmrFireDropLog at h
  obtain ⟨⟨C,Q⟩,compiled,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨E,released,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨C,compiled,released⟩

theorem compileHmrFireDropLog_run (A D : Arena) (record : List Wire) (offset : Nat)
    (zf frozen fire : Wire) (P : HmrFirePlan)
    {eqLog fireLog : List Wire} (h : compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog=some (D,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis fire=((decide (regValue record s.basis=offset) && s.basis zf) && s.basis frozen)) :
    let out := run (P.program zf frozen fire) m s
    out=⟨s.phase,writeBit s.basis fire false⟩ ∧ D.live=A.live.erase fire ∧ D.Ready out.basis := by
  obtain ⟨C,compiled,released⟩ := compileHmrFireDropLog_contract A D record offset zf frozen fire P h
  have result := compileHmrFireLog_release A C record offset zf frozen fire P compiled s m ready value
  obtain ⟨E,actual,live,er⟩ := result.2.2
  have clean := ((A.release_success {fire} _).mp ⟨E,actual⟩).2
  rw [A.release_clean_eq _ _ clean,released] at actual
  cases actual
  exact ⟨compileHmrFireLog_run A C record offset zf frozen fire P compiled s m ready value,live,er⟩

end ECDSAAdd.Arithmetic.Paper935
