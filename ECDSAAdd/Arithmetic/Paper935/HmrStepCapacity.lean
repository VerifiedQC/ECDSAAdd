import ECDSAAdd.Arithmetic.Paper935.HmrEarlyPinnedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrArmedStepPin

namespace ECDSAAdd.Arithmetic.Paper935

/-- Capacity of the actual intermediate record push; no output correctness is assumed. -/
def HmrEarlyStepPlan.Capacity (P : HmrEarlyStepPlan) (frozen : Wire) (counter record : List Wire)
    (s : State) (m : List Bool) : Prop :=
  let before := P.front.program true frozen counter++repack P.moves
      let first := run before m s
      let tape := m.drop (measurementCount before)
      let u := run (hmrAndSweep P.control.zeroPlan.stages) tape first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.zeroPlan.top)
        (tape.drop (measurementCount (hmrAndSweep P.control.zeroPlan.stages))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue (record++P.control.log.recordFresh) v.basis+(v.basis P.front.branch).toNat<2^(record++P.control.log.recordFresh).length

/-- Capacity of the actual intermediate record push; no output correctness is assumed. -/
def HmrArmedStepPlan.Capacity (P : HmrArmedStepPlan) (frozen : Wire) (counter timestamp record : List Wire) (offset : Nat)
    (s : State) (m : List Bool) : Prop :=
  let before := P.front.program false frozen counter++repack P.moves
      let arith := run before m s
      let tape := m.drop (measurementCount before)
      let first := run (P.control.freezePlan.program frozen timestamp offset) tape arith
      let t1 := tape.drop (measurementCount (P.control.freezePlan.program frozen timestamp offset))
      let u := run (hmrBlockedProgram P.control.counterPlans) t1 first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.counterKeeper)
        (t1.drop (measurementCount (hmrBlockedProgram P.control.counterPlans))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue record v.basis+(v.basis P.front.branch).toNat<2^record.length

end ECDSAAdd.Arithmetic.Paper935
