import ECDSAAdd.Arithmetic.Paper935.HmrKeeperCounts
import ECDSAAdd.Arithmetic.MeasuredArithmeticPhysical

namespace ECDSAAdd.Arithmetic.Paper935
open RecordedQuantum

theorem hmrPolar_physical (a b t : Wire) (pa pb : Bool) (distinct : [a,b,t].Nodup) :
    GatePhysical (hmrPolarAnd a b t pa pb) ∧ GatePhysical (hmrPolarRelease a b t pa pb) := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at distinct
  cases pa <;> cases pb <;>
    simp [hmrPolarAnd,hmrPolarRelease,hmrPolarDress,GatePhysical,PhysicalInstr,ProperGate]
  all_goals tauto

theorem hmrAndSweep_physical (gs : List HmrAndStage) (s : BasisState)
    (ready : HmrAndReady gs s) :
    GatePhysical (hmrAndSweep gs) ∧ GatePhysical (hmrAndUnsweep gs) := by
  induction gs generalizing s with
  | nil => simp [hmrAndSweep,hmrAndUnsweep,GatePhysical]
  | cons g gs ih =>
    have head := hmrPolar_physical g.a g.b g.target g.pa g.pb ready.1
    have tail := ih (g.advance s) ready.2.2
    simp only [hmrAndSweep,hmrAndUnsweep,HmrAndStage.compute,HmrAndStage.release,gatePhysical_append]
    exact ⟨⟨head.1,tail.1⟩,tail.2,head.2⟩

theorem hmrLadderOutput_mem (a : HmrLiteral) (cs : List HmrLadderCell) :
    (hmrLadderOutput a cs).wire∈a.wire::hmrLadderPorts cs := by
  induction cs generalizing a with
  | nil => simp [hmrLadderOutput]
  | cons c cs ih =>
    change (hmrLadderOutput ⟨c.target,true⟩ cs).wire∈a.wire::c.literal.wire::c.target::hmrLadderPorts cs
    exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (ih ⟨c.target,true⟩))

theorem hmrLiteralCopy_physical (a : HmrLiteral) (keeper : Wire) (separate : a.wire≠keeper) :
    GatePhysical (hmrLiteralCopy a keeper) := by
  cases a with
  | mk wire pol => cases pol <;> simpa [hmrLiteralCopy,GatePhysical,PhysicalInstr,ProperGate] using separate

theorem HmrBlockPlan.physical (P : HmrBlockPlan) (literals : List HmrLiteral) (work : List Wire)
    (valid : P.Valid literals work) : GatePhysical P.program := by
  unfold HmrBlockPlan.program
  split
  next empty =>
    exact hmrLiteralCopy_physical P.head P.keeper (fun eq => valid.2.2.1 (by simp [eq]))
  next nonempty =>
    have ready := hmrLadder_ready P.head P.cells valid.2.1 (fun _ => false) (by simp)
    have stages := hmrAndSweep_physical _ _ ready
    have ne : (hmrLadderOutput P.head P.cells).wire≠P.keeper :=
      fun eq => valid.2.2.1 (eq ▸ hmrLadderOutput_mem P.head P.cells)
    simp only [hmrChainKeep,gatePhysical_append]
    refine ⟨stages.1,?_,stages.2⟩
    simpa [GatePhysical,PhysicalInstr,ProperGate] using ne

theorem HmrBlockFreePlan.physical (P : HmrBlockFreePlan) (valid : P.Valid) :
    GatePhysical P.program := by
  cases P with
  | copy a k => exact hmrLiteralCopy_physical a k valid
  | chain a cs last k =>
    have ready := hmrLadder_ready a cs valid.1 (fun _ => false) (by simp)
    have stages := hmrAndSweep_physical _ _ ready
    have release := (hmrPolar_physical (hmrLadderOutput a cs).wire last.wire k
      (hmrLadderOutput a cs).pol last.pol valid.2.2.2).2
    simp only [HmrBlockFreePlan.program,hmrChainFree,gatePhysical_append]
    exact ⟨stages.1,release,stages.2⟩

end ECDSAAdd.Arithmetic.Paper935
