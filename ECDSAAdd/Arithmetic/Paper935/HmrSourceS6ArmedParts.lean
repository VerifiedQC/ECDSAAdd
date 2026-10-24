import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6ArmedProjections
import ECDSAAdd.Arithmetic.Paper935.HmrFreezeEndComposition

namespace ECDSAAdd.Arithmetic.Paper935

theorem s6FirstArmedControl_freeze : compileHmrFreezeLog s6FirstArmedControlArena s6FirstArmedControlG 819 s6FirstArmedControlTimestamp 1 s6FirstArmedControlLog.freezeZero s6FirstArmedControlLog.fire=some (s6FirstArmedControlFreezeArena,s6FirstArmedControlFreezePlan) := by
  apply compileHmrFreezeLog_of_projection
  · exact s6FirstArmedControl_freezeProjection
  · ext q
    simp [s6FirstArmedControlFreezePlan, s6FirstArmedControlZeroArena, s6FirstArmedControlArena, arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6FirstArmedControlFreezePlan, s6FirstArmedControlFreezeArena, s6FirstArmedControlArena, HmrFreezePlan.fire, hmrBorrowPorts, arenaWires]
    simp only [Wire] at *
    omega

theorem s6FirstArmedControl_zero : compileHmrZeroLog s6FirstArmedControlFreezeArena s6FirstArmedControlCounter s6FirstArmedControlCounter.length s6FirstArmedControlLog.counterZero=some (s6FirstArmedControlCounterArena,s6FirstArmedControlCounterPlans,914) := by
  apply compileHmrZeroLog_of_projection
  · exact s6FirstArmedControl_zeroProjection
  · ext q
    simp [s6FirstArmedControlCounterArena, s6FirstArmedControlFreezeArena, s6FirstArmedControlCounterPlans, arenaWires]
    simp only [Wire] at *
    omega

theorem s6FirstArmedControl_class : compileHmrSourceClassLog s6FirstArmedControlCounterArena true 769 914 819 791 s6FirstArmedControlLog.positive s6FirstArmedControlLog.classWork=some s6FirstArmedControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6FirstArmedControl_classProjection
  · ext q
    simp [s6FirstArmedControlClassPlan, s6FirstArmedControlPositiveArena, s6FirstArmedControlCounterArena, arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6FirstArmedControlClassPlan, s6FirstArmedControlEqualityArena, s6FirstArmedControlPositiveArena, arenaWires]
    simp only [Wire] at *
    omega

theorem s6FirstArmedControl_flags : compileHmrFlagsLog s6FirstArmedControlClassPlan.equalityArena s6FirstArmedControlClassPlan.equality.top 253 252 251 s6FirstArmedControlLog.flags=some s6FirstArmedControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6FirstArmedControl_flagsProjection
  · ext q
    simp [s6FirstArmedControlClassPlan, s6FirstArmedControlFlagArena, s6FirstArmedControlEqualityArena, s6FirstArmedControlLog, arenaWires]
    simp only [Wire] at *
    omega

theorem s6FirstArmedControl_counterDrop : compileHmrBlockedDropLog s6FirstArmedControlCounterArena s6FirstArmedControlCounterPlans s6FirstArmedControlLog.counterDrop=some (s6FirstArmedControlFreezeArena,s6FirstArmedControlCounterDrop) := by
  apply compileHmrBlockedDropLog_of_projection
  · exact s6FirstArmedControl_counterDropProjection
  · ext q
    simp [s6FirstArmedControlCounterArena, s6FirstArmedControlFreezeArena, s6FirstArmedControlCounterPlans, arenaWires]
    simp only [Wire] at *
    omega

theorem s6FirstArmedControl_sigma : compileHmrSigmaDropLog s6FirstArmedControlFreezeArena true 819 s6FirstArmedControlFreezePlan.fire 254 791 s6FirstArmedControlLog.sigmaGuard=some s6FirstArmedControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6FirstArmedControl_sigmaProjection
  · ext q
    simp [s6FirstArmedControlSigmaArena, s6FirstArmedControlFreezeArena, arenaWires]
    simp only [Wire] at *
    omega

theorem s6FirstArmedControl_ending : compileHmrFreezeEndLog s6FirstArmedControlSigmaArena s6FirstArmedControlTimestamp 1 s6FirstArmedControlFreezePlan.zeroKeeper 819 s6FirstArmedControlFreezePlan.fire s6FirstArmedControlFreezePlan.zeroPlans s6FirstArmedControlLog.timestampEq s6FirstArmedControlLog.fireGuard s6FirstArmedControlLog.freezeDrop=some (s6FirstArmedControlEndArena,s6FirstArmedControlEndPlan) := by
  have fireChecked : compileHmrFireDropLog s6FirstArmedControlSigmaArena s6FirstArmedControlTimestamp 1 s6FirstArmedControlFreezePlan.zeroKeeper 819 s6FirstArmedControlFreezePlan.fire
      s6FirstArmedControlLog.timestampEq s6FirstArmedControlLog.fireGuard=some (s6FirstArmedControlFireDroppedArena,s6FirstArmedControlEndPlan.fire) := by
    apply compileHmrFireDropLog_of_projection
    · exact s6FirstArmedControl_fireProjection
    · ext q
      simp [s6FirstArmedControlEndPlan, s6FirstArmedControlFireEqualityArena, s6FirstArmedControlSigmaArena, arenaWires]
      simp only [Wire] at *
      omega
    · ext q
      simp [s6FirstArmedControlFireDroppedArena, s6FirstArmedControlSigmaArena, s6FirstArmedControlFreezePlan, HmrFreezePlan.fire, hmrBorrowPorts, arenaWires]
      simp only [Wire] at *
      omega
  have zeroChecked : compileHmrBlockedDropLog s6FirstArmedControlFireDroppedArena s6FirstArmedControlFreezePlan.zeroPlans s6FirstArmedControlLog.freezeDrop=
      some (s6FirstArmedControlEndArena,s6FirstArmedControlEndPlan.zero) := by
    apply compileHmrBlockedDropLog_of_projection
    · exact s6FirstArmedControl_endZeroProjection
    · ext q
      simp [s6FirstArmedControlEndArena, s6FirstArmedControlFireDroppedArena, s6FirstArmedControlFreezePlan, arenaWires]
      simp only [Wire] at *
      omega
  exact compileHmrFreezeEndLog_of_parts _ _ _ _ _ _ _ _ _ _ _ _ _ fireChecked zeroChecked

theorem s6FirstArmedControl_branch : compileHmrBranchRetirement s6FirstArmedControlEndArena 842=some s6FirstArmedControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6FirstArmedControl_branchProjection
  · ext q
    simp [s6FirstArmedControlEndArena, s6FirstArmedControlOutputArena, arenaWires]
    simp only [Wire] at *
    omega

end ECDSAAdd.Arithmetic.Paper935
