import ECDSAAdd.Arithmetic.Paper935.HmrFireDeath
import ECDSAAdd.Arithmetic.Paper935.HmrAndFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- F16 equality chain, fire retirement, and measured equality-chain release.
This preserves the source order and never reverses a measured program. -/
def hmrChainFire (gs : List HmrAndStage) (eqt zf frozen fire work : Wire) : Program :=
  hmrAndSweep gs ++ (hmrFireDeath eqt zf frozen fire work ++ hmrAndUnsweep gs)

theorem hmrChainFire_run (gs : List HmrAndStage) (w : Fin 5 → Wire)
    (distinct : Function.Injective w)
    (outside : ∀i : Fin 5,i≠0 → HmrAndOutside gs (w i))
    (s : State) (m : List Bool) (ready : HmrAndReady gs s.basis)
    (clean : s.basis (w 4)=false)
    (value : s.basis (w 3)=((hmrAndAdvance gs s.basis (w 0) && s.basis (w 1)) && s.basis (w 2))) :
    run (hmrChainFire gs (w 0) (w 1) (w 2) (w 3) (w 4)) m s=
      ⟨s.phase,writeBit s.basis (w 3) false⟩ := by
  let u : State := ⟨s.phase,hmrAndAdvance gs s.basis⟩
  let t : State := ⟨s.phase,writeBit s.basis (w 3) false⟩
  have unchanged (i : Fin 5) (hi : i≠0) : u.basis (w i)=s.basis (w i) :=
    hmrAndAdvance_outside gs (w i) (outside i hi) s.basis
  have ur : u.basis (w 4)=false := (unchanged 4 (by decide)).trans clean
  have uv : u.basis (w 3)=((u.basis (w 0) && u.basis (w 1)) && u.basis (w 2)) := by
    rw [unchanged 3 (by decide),unchanged 1 (by decide),unchanged 2 (by decide)]
    exact value
  have body (tape : List Bool) :
      run (hmrFireDeath (w 0) (w 1) (w 2) (w 3) (w 4)) tape u=
      ⟨t.phase,hmrAndAdvance gs t.basis⟩ := by
    rw [hmrFireDeath_run w distinct u tape ur uv]
    simp only [t,hmrAndAdvance_write gs (w 3) (outside 3 (by decide))]
    rfl
  have tr : HmrAndReady gs t.basis :=
    hmrAndReady_write gs (w 3) (outside 3 (by decide)) s.basis false ready
  rw [hmrChainFire,run_append,run_take,hmrAndSweep_run gs s m ready]
  rw [run_append,run_take]
  change run (hmrAndUnsweep gs) _ (run (hmrFireDeath _ _ _ _ _) _ u)=_
  rw [body]
  exact hmrAndUnsweep_run gs t _ tr

end ECDSAAdd.Arithmetic.Paper935
