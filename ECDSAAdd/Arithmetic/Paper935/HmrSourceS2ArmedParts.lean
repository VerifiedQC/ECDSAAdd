import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2ArmedProjections
import ECDSAAdd.Arithmetic.Paper935.HmrFreezeEndComposition

namespace ECDSAAdd.Arithmetic.Paper935

theorem s2FirstArmedControl_freeze : compileHmrFreezeLog s2FirstArmedControlArena s2FirstArmedControlG 914 s2FirstArmedControlTimestamp 1 s2FirstArmedControlLog.freezeZero s2FirstArmedControlLog.fire=some (s2FirstArmedControlFreezeArena,s2FirstArmedControlFreezePlan) := by
  apply compileHmrFreezeLog_of_projection
  · exact s2FirstArmedControl_freezeProjection
  · ext q
    simp [s2FirstArmedControlFreezePlan, s2FirstArmedControlZeroArena, s2FirstArmedControlArena, arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2FirstArmedControlFreezePlan, s2FirstArmedControlFreezeArena, s2FirstArmedControlArena, HmrFreezePlan.fire, hmrBorrowPorts, arenaWires]
    simp only [Wire] at *
    omega

theorem s2FirstArmedControl_zero : compileHmrZeroLog s2FirstArmedControlFreezeArena s2FirstArmedControlCounter s2FirstArmedControlCounter.length s2FirstArmedControlLog.counterZero=some (s2FirstArmedControlCounterArena,s2FirstArmedControlCounterPlans,922) := by
  apply compileHmrZeroLog_of_projection
  · exact s2FirstArmedControl_zeroProjection
  · ext q
    simp [s2FirstArmedControlCounterArena, s2FirstArmedControlFreezeArena, s2FirstArmedControlCounterPlans, arenaWires]
    simp only [Wire] at *
    omega

theorem s2FirstArmedControl_class : compileHmrSourceClassLog s2FirstArmedControlCounterArena true 777 922 914 879 s2FirstArmedControlLog.positive s2FirstArmedControlLog.classWork=some s2FirstArmedControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2FirstArmedControl_classProjection
  · ext q
    simp [s2FirstArmedControlClassPlan, s2FirstArmedControlPositiveArena, s2FirstArmedControlCounterArena, arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2FirstArmedControlClassPlan, s2FirstArmedControlEqualityArena, s2FirstArmedControlPositiveArena, arenaWires]
    simp only [Wire] at *
    omega

theorem s2FirstArmedControl_flags : compileHmrFlagsLog s2FirstArmedControlClassPlan.equalityArena s2FirstArmedControlClassPlan.equality.top 253 252 251 s2FirstArmedControlLog.flags=some s2FirstArmedControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2FirstArmedControl_flagsProjection
  · ext q
    simp [s2FirstArmedControlClassPlan, s2FirstArmedControlFlagArena, s2FirstArmedControlEqualityArena, s2FirstArmedControlLog, arenaWires]
    simp only [Wire] at *
    omega

theorem s2FirstArmedControl_counterDrop : compileHmrBlockedDropLog s2FirstArmedControlCounterArena s2FirstArmedControlCounterPlans s2FirstArmedControlLog.counterDrop=some (s2FirstArmedControlFreezeArena,s2FirstArmedControlCounterDrop) := by
  apply compileHmrBlockedDropLog_of_projection
  · exact s2FirstArmedControl_counterDropProjection
  · ext q
    simp [s2FirstArmedControlCounterArena, s2FirstArmedControlFreezeArena, s2FirstArmedControlCounterPlans, arenaWires]
    simp only [Wire] at *
    omega

theorem s2FirstArmedControl_sigma : compileHmrSigmaDropLog s2FirstArmedControlFreezeArena true 914 s2FirstArmedControlFreezePlan.fire 254 879 s2FirstArmedControlLog.sigmaGuard=some s2FirstArmedControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2FirstArmedControl_sigmaProjection
  · ext q
    simp [s2FirstArmedControlSigmaArena, s2FirstArmedControlFreezeArena, arenaWires]
    simp only [Wire] at *
    omega

theorem s2FirstArmedControl_ending : compileHmrFreezeEndLog s2FirstArmedControlSigmaArena s2FirstArmedControlTimestamp 1 s2FirstArmedControlFreezePlan.zeroKeeper 914 s2FirstArmedControlFreezePlan.fire s2FirstArmedControlFreezePlan.zeroPlans s2FirstArmedControlLog.timestampEq s2FirstArmedControlLog.fireGuard s2FirstArmedControlLog.freezeDrop=some (s2FirstArmedControlEndArena,s2FirstArmedControlEndPlan) := by
  have fireChecked : compileHmrFireDropLog s2FirstArmedControlSigmaArena s2FirstArmedControlTimestamp 1 s2FirstArmedControlFreezePlan.zeroKeeper 914 s2FirstArmedControlFreezePlan.fire
      s2FirstArmedControlLog.timestampEq s2FirstArmedControlLog.fireGuard=some (s2FirstArmedControlFireDroppedArena,s2FirstArmedControlEndPlan.fire) := by
    apply compileHmrFireDropLog_of_projection
    · exact s2FirstArmedControl_fireProjection
    · ext q
      simp [s2FirstArmedControlEndPlan, s2FirstArmedControlFireEqualityArena, s2FirstArmedControlSigmaArena, arenaWires]
      simp only [Wire] at *
      omega
    · ext q
      simp [s2FirstArmedControlFireDroppedArena, s2FirstArmedControlSigmaArena, s2FirstArmedControlFreezePlan, HmrFreezePlan.fire, hmrBorrowPorts, arenaWires]
      simp only [Wire] at *
      omega
  have zeroChecked : compileHmrBlockedDropLog s2FirstArmedControlFireDroppedArena s2FirstArmedControlFreezePlan.zeroPlans s2FirstArmedControlLog.freezeDrop=
      some (s2FirstArmedControlEndArena,s2FirstArmedControlEndPlan.zero) := by
    apply compileHmrBlockedDropLog_of_projection
    · exact s2FirstArmedControl_endZeroProjection
    · ext q
      simp [s2FirstArmedControlEndArena, s2FirstArmedControlFireDroppedArena, s2FirstArmedControlFreezePlan, arenaWires]
      simp only [Wire] at *
      omega
  exact compileHmrFreezeEndLog_of_parts _ _ _ _ _ _ _ _ _ _ _ _ _ fireChecked zeroChecked

theorem s2FirstArmedControl_branch : compileHmrBranchRetirement s2FirstArmedControlEndArena 916=some s2FirstArmedControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2FirstArmedControl_branchProjection
  · ext q
    simp [s2FirstArmedControlEndArena, s2FirstArmedControlOutputArena, arenaWires]
    simp only [Wire] at *
    omega

end ECDSAAdd.Arithmetic.Paper935
