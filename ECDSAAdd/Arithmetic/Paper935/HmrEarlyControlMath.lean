import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlRun
import ECDSAAdd.Arithmetic.Paper935.HmrSigmaWitness

namespace ECDSAAdd.Arithmetic.Paper935

/-- The early sigma cleanup premise follows from the independent divsteps
invariant and the current fv row; it is not an assumed cleanup outcome. -/
theorem HmrEarlyControlPlan.Logged.ready_of_rows (P : HmrEarlyControlPlan) (A : Arena)
    (counter record : List Wire) (sign sigma b2 b3 b4 branch : Wire) (need : Nat)
    (r : WindowRow) (nonempty : r.payload≠[]) (p : Int) (old : PinState)
    (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1) (early : old.frozen=false)
    (h : P.Logged A counter record sign sigma r.second b2 b3 b4 branch need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (sigmaValue : s.basis sigma=decide (0≤old.rows.z ∧ old.rows.g%2=1))
    (rowValue : r.value s.basis=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv)
    (fits : let u := run (hmrAndSweep P.zeroPlan.stages) m s
      let v := run (P.classPlan.program sign P.zeroPlan.top)
        (m.drop (measurementCount (hmrAndSweep P.zeroPlan.stages))) u
      (v.basis P.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue (record++P.log.recordFresh) v.basis+(v.basis branch).toNat<2^(record++P.log.recordFresh).length) :
    P.outputArena.Ready (run (P.program sign sigma r.second b2 b3 b4 branch record) m s).basis := by
  have witness := hmrSigma_early_witness r nonempty p old inv odd s.basis sigma early sigmaValue rowValue
  exact (h.run_spec P A counter record sign sigma r.second b2 b3 b4 branch need s m ready witness fits).2

end ECDSAAdd.Arithmetic.Paper935
