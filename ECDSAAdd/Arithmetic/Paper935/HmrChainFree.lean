import ECDSAAdd.Arithmetic.Paper935.HmrChainKeeper

namespace ECDSAAdd.Arithmetic.Paper935

/-- Recompute only the stages, release the retained keeper against the
last literal, then release the stages. Prefix wires may be newly borrowed. -/
def hmrChainFree (stages : List HmrAndStage) (top last keeper : Wire) (topPol pol : Bool) : Program :=
  hmrAndSweep stages ++ (hmrPolarRelease top last keeper topPol pol ++ hmrAndUnsweep stages)

theorem hmrChainFree_run (stages : List HmrAndStage) (top last keeper : Wire) (topPol pol : Bool)
    (outside : HmrAndOutside stages keeper) (lastOutside : HmrAndOutside stages last)
    (distinct : [top,last,keeper].Nodup) (s : State) (m : List Bool)
    (ready : HmrAndReady stages s.basis)
    (value : s.basis keeper=((if topPol then hmrAndAdvance stages s.basis top else !hmrAndAdvance stages s.basis top) &&
      (if pol then s.basis last else !s.basis last))) :
    run (hmrChainFree stages top last keeper topPol pol) m s=
      ⟨s.phase,writeBit s.basis keeper false⟩ := by
  let t : State := ⟨s.phase,writeBit s.basis keeper false⟩
  have tr := hmrAndReady_write stages keeper outside s.basis false ready
  have v : (hmrAndAdvance stages s.basis) keeper=
      ((if topPol then hmrAndAdvance stages s.basis top else !hmrAndAdvance stages s.basis top) &&
        (if pol then (hmrAndAdvance stages s.basis) last else !(hmrAndAdvance stages s.basis) last)) := by
    rw [hmrAndAdvance_outside stages keeper outside,hmrAndAdvance_outside stages last lastOutside]
    exact value
  rw [hmrChainFree,run_append,run_take,hmrAndSweep_run stages s m ready,run_append,run_take]
  rw [hmrPolarRelease_run top last keeper topPol pol distinct _ _ (by simpa using v)]
  rw [←hmrAndAdvance_write stages keeper outside]
  exact hmrAndUnsweep_run stages t _ tr

end ECDSAAdd.Arithmetic.Paper935
