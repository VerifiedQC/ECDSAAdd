import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlMetadata
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeMath

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrArmedControlPlan.Logged.pin_armed (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (tmin t need : Nat)
    (h : P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch (t+1-tmin) need)
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (armed : tmin≤t) (old : PinState) (valid : old.RecordValid tmin t)
    (gValue : signedRegValue g s.basis=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).g)
    (frozenValue : s.basis frozen=old.frozen) (recordValue : regValue timestamp s.basis=old.offset)
    (sigmaValue : let first := run (P.freezePlan.program frozen timestamp (t+1-tmin)) m s
      first.basis sigma=(first.basis fv1 && !(first.basis frozen && !first.basis P.freezePlan.fire)))
    (fits : let first := run (P.freezePlan.program frozen timestamp (t+1-tmin)) m s
      let tape := m.drop (measurementCount (P.freezePlan.program frozen timestamp (t+1-tmin)))
      let u := run (hmrBlockedProgram P.counterPlans) tape first
      let v := run (P.classPlan.program sign P.counterKeeper)
        (tape.drop (measurementCount (hmrBlockedProgram P.counterPlans))) u
      (v.basis P.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis branch).toNat<2^record.length) :
    let out := run (P.program frozen sign sigma fv1 b2 b3 b4 branch timestamp record (t+1-tmin)) m s
    out.basis frozen=(pinStep tmin t old).frozen ∧
    regValue timestamp out.basis=(pinStep tmin t old).offset := by
  have past : regValue timestamp s.basis<t+1-tmin := by
    rw [recordValue]
    have bound := valid.2
    omega
  have unfrozen : s.basis frozen=false → regValue timestamp s.basis=0 := by
    rw [frozenValue,recordValue]
    intro hf
    have positive := valid.1
    simp only [hf,Bool.false_eq_true,false_iff] at positive
    omega
  have value := h.metadata P A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch (t+1-tmin) need
    s m ready past unfrozen sigmaValue fits
  have fc := compileHmrFreezeLog_contract A P.freezeArena g frozen timestamp (t+1-tmin) P.freezePlan h.freeze
  have first := fc.run_spec P.freezePlan A P.freezeArena g frozen timestamp (t+1-tmin) s m ready
  have pin := fc.pin_armed P.freezePlan A P.freezeArena g frozen timestamp tmin t armed old valid s m ready
    gValue frozenValue recordValue
  exact ⟨value.1.trans (first.2.2.1.symm.trans pin.1),value.2.trans (first.2.2.2.1.symm.trans pin.2)⟩

end ECDSAAdd.Arithmetic.Paper935
