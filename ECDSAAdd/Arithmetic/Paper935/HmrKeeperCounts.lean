import ECDSAAdd.Arithmetic.Paper935.HmrBlockedDrop

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrAndSweep_counts (gs : List HmrAndStage) :
    toffoliCount (hmrAndSweep gs)=gs.length ∧ measurementCount (hmrAndSweep gs)=0 ∧
    toffoliCount (hmrAndUnsweep gs)=0 ∧ measurementCount (hmrAndUnsweep gs)=gs.length := by
  induction gs with
  | nil => exact ⟨rfl,rfl,rfl,rfl⟩
  | cons g gs ih =>
    rcases g with ⟨a,b,t,pa,pb⟩
    cases pa <;> cases pb <;>
      simp [hmrAndSweep,hmrAndUnsweep,HmrAndStage.compute,HmrAndStage.release,
        hmrPolarAnd,hmrPolarRelease,hmrPolarDress,toffoliCount_append,measurementCount_append,
        ih.1,ih.2.1,ih.2.2.1,ih.2.2.2,toffoliCount,measurementCount,Nat.add_comm]

theorem hmrChainKeep_counts (gs : List HmrAndStage) (top keeper : Wire) :
    toffoliCount (hmrChainKeep gs top keeper)=gs.length ∧
      measurementCount (hmrChainKeep gs top keeper)=gs.length := by
  have h := hmrAndSweep_counts gs
  simp [hmrChainKeep,toffoliCount_append,measurementCount_append,
    h.1,h.2.1,h.2.2.1,h.2.2.2,toffoliCount,measurementCount]

theorem hmrChainFree_counts (gs : List HmrAndStage) (top last keeper : Wire) (pa pb : Bool) :
    toffoliCount (hmrChainFree gs top last keeper pa pb)=gs.length ∧
      measurementCount (hmrChainFree gs top last keeper pa pb)=gs.length+1 := by
  have h := hmrAndSweep_counts gs
  cases pa <;> cases pb <;>
    simp [hmrChainFree,toffoliCount_append,measurementCount_append,
      h.1,h.2.1,h.2.2.1,h.2.2.2,hmrPolarRelease,hmrPolarDress,toffoliCount,measurementCount,Nat.add_comm]

theorem hmrLiteralCopy_counts (a : HmrLiteral) (keeper : Wire) :
    toffoliCount (hmrLiteralCopy a keeper)=0 ∧ measurementCount (hmrLiteralCopy a keeper)=0 := by
  cases a with
  | mk wire pol => cases pol <;> exact ⟨rfl,rfl⟩

theorem hmrLadder_length (a : HmrLiteral) (cs : List HmrLadderCell) :
    (hmrLadder a cs).length=cs.length := by
  induction cs generalizing a with
  | nil => rfl
  | cons c cs ih => simp [hmrLadder,ih]

theorem HmrBlockPlan.counts (P : HmrBlockPlan) :
    toffoliCount P.program=P.cells.length ∧ measurementCount P.program=P.cells.length := by
  unfold HmrBlockPlan.program
  split
  next empty => simpa only [empty,List.length_nil] using hmrLiteralCopy_counts P.head P.keeper
  next nonempty =>
    simpa only [hmrLadder_length] using hmrChainKeep_counts
      (hmrLadder P.head P.cells) (hmrLadderOutput P.head P.cells).wire P.keeper

theorem HmrBlockFreePlan.counts (P : HmrBlockFreePlan) :
    toffoliCount P.program=P.targets.length ∧
      measurementCount P.program=(match P with | .copy _ _ => 0 | .chain _ cs _ _ => cs.length+1) := by
  cases P with
  | copy a k => exact hmrLiteralCopy_counts a k
  | chain a cs last k =>
    simpa only [HmrBlockFreePlan.program,HmrBlockFreePlan.targets,List.length_map,hmrLadder_length]
      using hmrChainFree_counts (hmrLadder a cs) (hmrLadderOutput a cs).wire last.wire k
        (hmrLadderOutput a cs).pol last.pol

end ECDSAAdd.Arithmetic.Paper935
