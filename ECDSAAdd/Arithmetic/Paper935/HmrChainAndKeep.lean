import ECDSAAdd.Arithmetic.Paper935.HmrAndFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- R1 releases the equality chain immediately after saving eqt AND frz,
before the record fan changes any equality literal. -/
def hmrChainAndKeep (gs : List HmrAndStage) (top frozen fire : Wire) : Program :=
  hmrAndSweep gs ++ (hmrPolarAnd top frozen fire true true ++ hmrAndUnsweep gs)

theorem hmrChainAndKeep_run (gs : List HmrAndStage) (top frozen fire : Wire)
    (distinct : [top,frozen,fire].Nodup)
    (frozenOutside : HmrAndOutside gs frozen) (fireOutside : HmrAndOutside gs fire)
    (s : State) (m : List Bool) (ready : HmrAndReady gs s.basis) (clean : s.basis fire=false) :
    run (hmrChainAndKeep gs top frozen fire) m s=
      ⟨s.phase,writeBit s.basis fire (hmrAndAdvance gs s.basis top && s.basis frozen)⟩ := by
  let u : State := ⟨s.phase,hmrAndAdvance gs s.basis⟩
  let t : State := ⟨s.phase,writeBit s.basis fire (hmrAndAdvance gs s.basis top && s.basis frozen)⟩
  have uf : u.basis frozen=s.basis frozen := hmrAndAdvance_outside gs frozen frozenOutside s.basis
  have uc : u.basis fire=false := (hmrAndAdvance_outside gs fire fireOutside s.basis).trans clean
  have body (tape : List Bool) : run (hmrPolarAnd top frozen fire true true) tape u=
      ⟨t.phase,hmrAndAdvance gs t.basis⟩ := by
    rw [hmrPolarAnd_run top frozen fire true true distinct u tape uc]
    simp only [ite_true,uf,t,hmrAndAdvance_write gs fire fireOutside]
    rfl
  rw [hmrChainAndKeep,run_append,run_take,hmrAndSweep_run gs s m ready,run_append,run_take]
  change run (hmrAndUnsweep gs) _ (run (hmrPolarAnd _ _ _ _ _) _ u)=_
  rw [body]
  exact hmrAndUnsweep_run gs t _ (hmrAndReady_write gs fire fireOutside s.basis _ ready)

end ECDSAAdd.Arithmetic.Paper935
