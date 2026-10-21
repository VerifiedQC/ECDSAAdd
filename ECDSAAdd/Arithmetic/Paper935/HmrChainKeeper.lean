import ECDSAAdd.Arithmetic.Paper935.HmrAndFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source keeperization: compute, copy the top, then measured release of
the complete chain. The keeper is the only surviving work site. -/
def hmrChainKeep (gs : List HmrAndStage) (top keeper : Wire) : Program :=
  hmrAndSweep gs ++ ([.CX top keeper] ++ hmrAndUnsweep gs)

theorem hmrChainKeep_run (gs : List HmrAndStage) (top keeper : Wire)
    (outside : HmrAndOutside gs keeper)
    (s : State) (m : List Bool) (ready : HmrAndReady gs s.basis) :
    run (hmrChainKeep gs top keeper) m s=
      ⟨s.phase,writeBit s.basis keeper (s.basis keeper ^^ hmrAndAdvance gs s.basis top)⟩ := by
  let value := s.basis keeper ^^ hmrAndAdvance gs s.basis top
  let t : State := ⟨s.phase,writeBit s.basis keeper value⟩
  have tr : HmrAndReady gs t.basis := hmrAndReady_write gs keeper outside s.basis value ready
  have copied (tape : List Bool) :
      run [.CX top keeper] tape ⟨s.phase,hmrAndAdvance gs s.basis⟩=
        ⟨t.phase,hmrAndAdvance gs t.basis⟩ := by
    change run [.CX top keeper] tape ⟨s.phase,hmrAndAdvance gs s.basis⟩=
      ⟨s.phase,hmrAndAdvance gs (writeBit s.basis keeper value)⟩
    rw [hmrAndAdvance_write gs keeper outside]
    simp [run,hmrAndAdvance_outside gs keeper outside,value]
  rw [hmrChainKeep,run_append,run_take,hmrAndSweep_run gs s m ready,run_append,run_take,copied]
  exact hmrAndUnsweep_run gs t _ tr

end ECDSAAdd.Arithmetic.Paper935
