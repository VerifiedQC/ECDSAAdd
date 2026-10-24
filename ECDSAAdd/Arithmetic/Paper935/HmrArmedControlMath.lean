import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeFrame
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlRun
import ECDSAAdd.Arithmetic.Paper935.HmrSigmaWitness

namespace ECDSAAdd.Arithmetic.Paper935

/-- F7's actual latch/fire equations reconstruct the old frozen guard;
the independent row invariant then supplies F15's sigma equation. -/
theorem HmrArmedControlPlan.Logged.sigma_witness (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma b2 b3 b4 branch : Wire)
    (offset need : Nat) (r : WindowRow) (nonempty : r.payload≠[]) (p : Int) (old : PinState)
    (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (h : P.Logged A g counter timestamp record frozen sign sigma r.second b2 b3 b4 branch offset need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (frozenValue : s.basis frozen=old.frozen)
    (sigmaValue : s.basis sigma=decide (0≤old.rows.z ∧ old.rows.g%2=1))
    (frozenZero : old.frozen=true → old.rows.g=0)
    (rowValue : r.value (run (P.freezePlan.program frozen timestamp offset) m s).basis=
      (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv) :
    let first := run (P.freezePlan.program frozen timestamp offset) m s
    first.basis sigma=(first.basis r.second && !(first.basis frozen && !first.basis P.freezePlan.fire)) := by
  obtain ⟨width,signPort,nd,recordOwned,counterApart,gApart,metaApart,inputOwned,fvApart,sigmaApart⟩ := h.inputs
  have fc := compileHmrFreezeLog_contract A P.freezeArena g frozen timestamp offset P.freezePlan h.freeze
  have result := fc.run_spec P.freezePlan A P.freezeArena g frozen timestamp offset s m ready
  have noFrozen : sigma≠frozen := fun eq => sigmaApart (List.mem_append_right _ (by simp [eq]))
  have noStamp : sigma∉timestamp := fun mem => sigmaApart (List.mem_append_right _ (by simp [mem]))
  have preserved := fc.frame P.freezePlan A P.freezeArena g frozen timestamp offset s m ready sigma
    (inputOwned (by simp)) noFrozen noStamp
  exact hmrSigma_witness r nonempty p old inv odd
    (run (P.freezePlan.program frozen timestamp offset) m s).basis sigma frozen P.freezePlan.fire
    (decide (regValue g s.basis=0)) (preserved.trans sigmaValue) rowValue frozenZero
    (by simpa only [frozenValue] using result.2.2.1)
    (by simpa only [frozenValue] using result.2.1)

end ECDSAAdd.Arithmetic.Paper935
