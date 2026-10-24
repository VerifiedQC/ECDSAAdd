import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrArmedControlLog_of_parts (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat)
    (inputs : counter.length=6 ∧ sign=counter.getLastD 0 ∧
      (branch::record).Nodup ∧ (branch::record).toFinset⊆A.live ∧
      List.Disjoint counter (branch::record) ∧ List.Disjoint g (branch::record) ∧
      List.Disjoint (branch::record) (frozen::timestamp) ∧
      [sigma,fv1].toFinset⊆A.live ∧ fv1∉branch::record ∧ sigma∉g++frozen::timestamp)
    (freeze : compileHmrFreezeLog A g frozen timestamp offset P.log.freezeZero P.log.fire=some (P.freezeArena,P.freezePlan))
    (counterTest : compileHmrZeroLog P.freezeArena counter counter.length P.log.counterZero=
    some (P.counterArena,P.counterPlans,P.counterKeeper))
    (classCompiled : compileHmrSourceClassLog P.counterArena true sign P.counterKeeper frozen sigma
    P.log.positive P.log.classWork=some P.classPlan)
    (flagsApart : List.Disjoint [P.classPlan.equality.top,b2,b3,b4] (branch::record))
    (anchorsApart : List.Disjoint (hmrSourceClassAnchors true sign P.counterKeeper frozen sigma) (branch::record))
    (flags : compileHmrFlagsLog P.classPlan.equalityArena P.classPlan.equality.top b2 b3 b4 P.log.flags=some P.flagArena)
    (counterDrop : compileHmrBlockedDropLog P.counterArena P.counterPlans P.log.counterDrop=
    some (P.freezeArena,P.counterCleanup))
    (sigmaDrop : compileHmrSigmaDropLog P.freezeArena true frozen P.freezePlan.fire fv1 sigma P.log.sigmaGuard=some P.sigmaArena)
    (freezeDrop : compileHmrFreezeEndLog P.sigmaArena timestamp offset P.freezePlan.zeroKeeper frozen P.freezePlan.fire
    P.freezePlan.zeroPlans P.log.timestampEq P.log.fireGuard P.log.freezeDrop=some (P.endArena,P.endPlan))
    (branchDrop : compileHmrBranchRetirement P.endArena branch=some P.outputArena)
    (length : record.length=need) :
    (compileHmrArmedControlLog A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need P.log).map
      (fun _ => true)=some true := by
  simp only [compileHmrArmedControlLog, if_pos inputs, bind, Option.bind_some, pure,
    freeze, counterTest, classCompiled, if_pos (And.intro flagsApart anchorsApart), flags,
    if_pos length, counterDrop, sigmaDrop, freezeDrop, branchDrop, Option.map_some]

end ECDSAAdd.Arithmetic.Paper935
