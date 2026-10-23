import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance hmrEarlyPartsDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2FirstEarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 786)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 788)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 789)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 795)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 786) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 786) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 786) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlLog : HmrEarlyControlLog := ⟨[778, 784, 783, 782, 786],[787],[788],[789, 790, 791, 792, 793, 794],[795]⟩
def s2FirstEarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,784⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,786⟩]⟩
def s2FirstEarlyControlClassPlan : HmrSourceClassPlan := ⟨s2FirstEarlyControlPositiveArena,[787],s2FirstEarlyControlEqualityArena,[788],⟨⟨780,false⟩,[⟨⟨787,false⟩,788⟩]⟩⟩
def s2FirstEarlyControlPlan : HmrEarlyControlPlan := ⟨s2FirstEarlyControlZeroArena,s2FirstEarlyControlZeroPlan,s2FirstEarlyControlClassPlan,s2FirstEarlyControlFlagArena,s2FirstEarlyControlFittedArena,s2FirstEarlyControlHistoryArena,s2FirstEarlyControlSigmaArena,s2FirstEarlyControlOutputArena,s2FirstEarlyControlLog⟩
theorem s2FirstEarlyControl_zeroProjection : (compileHmrEqualityLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2FirstEarlyControlLog.zeroWork).map Prod.snd=some (s2FirstEarlyControlLog.zeroWork,s2FirstEarlyControlZeroPlan) := by
  decide +kernel
theorem s2FirstEarlyControl_zero : compileHmrEqualityLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2FirstEarlyControlLog.zeroWork=some (s2FirstEarlyControlZeroArena,s2FirstEarlyControlLog.zeroWork,s2FirstEarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2FirstEarlyControl_zeroProjection
  · ext q
    simp [s2FirstEarlyControlZeroArena,s2FirstEarlyControlArena,s2FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_classProjection : (compileHmrSourceClassLog s2FirstEarlyControlZeroArena false 777 s2FirstEarlyControlZeroPlan.top 0 780 s2FirstEarlyControlLog.positiveWork s2FirstEarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2FirstEarlyControlClassPlan.positiveWork,s2FirstEarlyControlClassPlan.equalityWork,s2FirstEarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2FirstEarlyControl_class : compileHmrSourceClassLog s2FirstEarlyControlZeroArena false 777 s2FirstEarlyControlZeroPlan.top 0 780 s2FirstEarlyControlLog.positiveWork s2FirstEarlyControlLog.classWork=some s2FirstEarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2FirstEarlyControl_classProjection
  · ext q
    simp [s2FirstEarlyControlClassPlan,s2FirstEarlyControlPositiveArena,s2FirstEarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2FirstEarlyControlClassPlan,s2FirstEarlyControlEqualityArena,s2FirstEarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_flagsProjection : (compileHmrFlagsLog s2FirstEarlyControlClassPlan.equalityArena s2FirstEarlyControlClassPlan.equality.top 770 770 770 s2FirstEarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2FirstEarlyControl_flags : compileHmrFlagsLog s2FirstEarlyControlClassPlan.equalityArena s2FirstEarlyControlClassPlan.equality.top 770 770 770 s2FirstEarlyControlLog.flagWork=some s2FirstEarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2FirstEarlyControl_flagsProjection
  · ext q
    simp [s2FirstEarlyControlClassPlan,s2FirstEarlyControlFlagArena,s2FirstEarlyControlEqualityArena,s2FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_fitProjection : (compileHmrRecordGrowLog s2FirstEarlyControlFlagArena [] 1 s2FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2FirstEarlyControl_fit : compileHmrRecordGrowLog s2FirstEarlyControlFlagArena [] 1 s2FirstEarlyControlLog.recordFresh=some s2FirstEarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2FirstEarlyControl_fitProjection
  · ext q
    simp [s2FirstEarlyControlFittedArena,s2FirstEarlyControlFlagArena,s2FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_historyProjection : (compileHmrRecordGrowLog s2FirstEarlyControlArena [] 1 s2FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2FirstEarlyControl_history : compileHmrRecordGrowLog s2FirstEarlyControlArena [] 1 s2FirstEarlyControlLog.recordFresh=some s2FirstEarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2FirstEarlyControl_historyProjection
  · ext q
    simp [s2FirstEarlyControlHistoryArena,s2FirstEarlyControlArena,s2FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2FirstEarlyControlHistoryArena false 0 0 785 780 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2FirstEarlyControl_sigma : compileHmrSigmaDropLog s2FirstEarlyControlHistoryArena false 0 0 785 780 []=some s2FirstEarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2FirstEarlyControl_sigmaProjection
  · ext q
    simp [s2FirstEarlyControlSigmaArena,s2FirstEarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_branchProjection : (compileHmrBranchRetirement s2FirstEarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  decide +kernel
theorem s2FirstEarlyControl_branch : compileHmrBranchRetirement s2FirstEarlyControlSigmaArena 781=some s2FirstEarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2FirstEarlyControl_branchProjection
  · ext q
    simp [s2FirstEarlyControlSigmaArena,s2FirstEarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_logged : s2FirstEarlyControlPlan.Logged s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] [] 777 780 785 770 770 770 781 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2FirstEarlyControl_zero
  · exact s2FirstEarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2FirstEarlyControl_flags
  · exact s2FirstEarlyControl_fit
  · exact s2FirstEarlyControl_history
  · exact s2FirstEarlyControl_sigma
  · exact s2FirstEarlyControl_branch
theorem s2FirstEarlyControl_plan_checked : compileHmrEarlyControlLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] [] 777 780 785 770 770 770 781 1 s2FirstEarlyControlLog=some s2FirstEarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2FirstEarlyControlPlan s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] [] 777 780 785 770 770 770 781 1 s2FirstEarlyControl_logged
theorem s2FirstEarlyControl_checked : (compileHmrEarlyControlLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] [] 777 780 785 770 770 770 781 1 s2FirstEarlyControlLog).map (fun P => P.outputArena.live.card)=some 781 := by
  rw [s2FirstEarlyControl_plan_checked]
  decide +kernel

def s2Step1EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 788) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 788) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 789) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 788) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 788) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 788) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step1EarlyControlLog : HmrEarlyControlLog := ⟨[780, 786, 782, 781, 783],[788],[789],[790, 791, 792, 793, 794, 796],[]⟩
def s2Step1EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,786⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step1EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step1EarlyControlPositiveArena,[788],s2Step1EarlyControlEqualityArena,[789],⟨⟨778,false⟩,[⟨⟨788,false⟩,789⟩]⟩⟩
def s2Step1EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step1EarlyControlZeroArena,s2Step1EarlyControlZeroPlan,s2Step1EarlyControlClassPlan,s2Step1EarlyControlFlagArena,s2Step1EarlyControlFittedArena,s2Step1EarlyControlHistoryArena,s2Step1EarlyControlSigmaArena,s2Step1EarlyControlOutputArena,s2Step1EarlyControlLog⟩
theorem s2Step1EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step1EarlyControlLog.zeroWork).map Prod.snd=some (s2Step1EarlyControlLog.zeroWork,s2Step1EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step1EarlyControl_zero : compileHmrEqualityLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step1EarlyControlLog.zeroWork=some (s2Step1EarlyControlZeroArena,s2Step1EarlyControlLog.zeroWork,s2Step1EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step1EarlyControl_zeroProjection
  · ext q
    simp [s2Step1EarlyControlZeroArena,s2Step1EarlyControlArena,s2Step1EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step1EarlyControl_classProjection : (compileHmrSourceClassLog s2Step1EarlyControlZeroArena false 777 s2Step1EarlyControlZeroPlan.top 0 778 s2Step1EarlyControlLog.positiveWork s2Step1EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step1EarlyControlClassPlan.positiveWork,s2Step1EarlyControlClassPlan.equalityWork,s2Step1EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step1EarlyControl_class : compileHmrSourceClassLog s2Step1EarlyControlZeroArena false 777 s2Step1EarlyControlZeroPlan.top 0 778 s2Step1EarlyControlLog.positiveWork s2Step1EarlyControlLog.classWork=some s2Step1EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step1EarlyControl_classProjection
  · ext q
    simp [s2Step1EarlyControlClassPlan,s2Step1EarlyControlPositiveArena,s2Step1EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step1EarlyControlClassPlan,s2Step1EarlyControlEqualityArena,s2Step1EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step1EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step1EarlyControlClassPlan.equalityArena s2Step1EarlyControlClassPlan.equality.top 787 770 770 s2Step1EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step1EarlyControl_flags : compileHmrFlagsLog s2Step1EarlyControlClassPlan.equalityArena s2Step1EarlyControlClassPlan.equality.top 787 770 770 s2Step1EarlyControlLog.flagWork=some s2Step1EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step1EarlyControl_flagsProjection
  · ext q
    simp [s2Step1EarlyControlClassPlan,s2Step1EarlyControlFlagArena,s2Step1EarlyControlEqualityArena,s2Step1EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step1EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step1EarlyControlFlagArena [795] 1 s2Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step1EarlyControl_fit : compileHmrRecordGrowLog s2Step1EarlyControlFlagArena [795] 1 s2Step1EarlyControlLog.recordFresh=some s2Step1EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step1EarlyControl_fitProjection
  · ext q
    simp [s2Step1EarlyControlFittedArena,s2Step1EarlyControlFlagArena,s2Step1EarlyControlLog,arenaWires]
theorem s2Step1EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step1EarlyControlArena [795] 1 s2Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step1EarlyControl_history : compileHmrRecordGrowLog s2Step1EarlyControlArena [795] 1 s2Step1EarlyControlLog.recordFresh=some s2Step1EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step1EarlyControl_historyProjection
  · ext q
    simp [s2Step1EarlyControlHistoryArena,s2Step1EarlyControlArena,s2Step1EarlyControlLog,arenaWires]
theorem s2Step1EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step1EarlyControlHistoryArena false 0 0 785 778 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step1EarlyControl_sigma : compileHmrSigmaDropLog s2Step1EarlyControlHistoryArena false 0 0 785 778 []=some s2Step1EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step1EarlyControl_sigmaProjection
  · ext q
    simp [s2Step1EarlyControlSigmaArena,s2Step1EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step1EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step1EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step1EarlyControl_branch : compileHmrBranchRetirement s2Step1EarlyControlSigmaArena 784=some s2Step1EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step1EarlyControl_branchProjection
  · ext q
    simp [s2Step1EarlyControlSigmaArena,s2Step1EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step1EarlyControl_logged : s2Step1EarlyControlPlan.Logged s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 778 785 787 770 770 784 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step1EarlyControl_zero
  · exact s2Step1EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step1EarlyControl_flags
  · exact s2Step1EarlyControl_fit
  · exact s2Step1EarlyControl_history
  · exact s2Step1EarlyControl_sigma
  · exact s2Step1EarlyControl_branch
theorem s2Step1EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 778 785 787 770 770 784 1 s2Step1EarlyControlLog=some s2Step1EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step1EarlyControlPlan s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 778 785 787 770 770 784 1 s2Step1EarlyControl_logged
theorem s2Step1EarlyControl_checked : (compileHmrEarlyControlLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 778 785 787 770 770 784 1 s2Step1EarlyControlLog).map (fun P => P.outputArena.live.card)=some 782 := by
  rw [s2Step1EarlyControl_plan_checked]
  decide +kernel

def s6FirstEarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlLog : HmrEarlyControlLog := ⟨[768, 860, 807, 862, 874],[793],[927],[802, 875, 779, 868, 857, 907],[895]⟩
def s6FirstEarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,860⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,874⟩]⟩
def s6FirstEarlyControlClassPlan : HmrSourceClassPlan := ⟨s6FirstEarlyControlPositiveArena,[793],s6FirstEarlyControlEqualityArena,[927],⟨⟨887,false⟩,[⟨⟨793,false⟩,927⟩]⟩⟩
def s6FirstEarlyControlPlan : HmrEarlyControlPlan := ⟨s6FirstEarlyControlZeroArena,s6FirstEarlyControlZeroPlan,s6FirstEarlyControlClassPlan,s6FirstEarlyControlFlagArena,s6FirstEarlyControlFittedArena,s6FirstEarlyControlHistoryArena,s6FirstEarlyControlSigmaArena,s6FirstEarlyControlOutputArena,s6FirstEarlyControlLog⟩
theorem s6FirstEarlyControl_zeroProjection : (compileHmrEqualityLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6FirstEarlyControlLog.zeroWork).map Prod.snd=some (s6FirstEarlyControlLog.zeroWork,s6FirstEarlyControlZeroPlan) := by
  decide +kernel
theorem s6FirstEarlyControl_zero : compileHmrEqualityLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6FirstEarlyControlLog.zeroWork=some (s6FirstEarlyControlZeroArena,s6FirstEarlyControlLog.zeroWork,s6FirstEarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6FirstEarlyControl_zeroProjection
  · ext q
    simp [s6FirstEarlyControlZeroArena,s6FirstEarlyControlArena,s6FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_classProjection : (compileHmrSourceClassLog s6FirstEarlyControlZeroArena false 769 s6FirstEarlyControlZeroPlan.top 0 887 s6FirstEarlyControlLog.positiveWork s6FirstEarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6FirstEarlyControlClassPlan.positiveWork,s6FirstEarlyControlClassPlan.equalityWork,s6FirstEarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6FirstEarlyControl_class : compileHmrSourceClassLog s6FirstEarlyControlZeroArena false 769 s6FirstEarlyControlZeroPlan.top 0 887 s6FirstEarlyControlLog.positiveWork s6FirstEarlyControlLog.classWork=some s6FirstEarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6FirstEarlyControl_classProjection
  · ext q
    simp [s6FirstEarlyControlClassPlan,s6FirstEarlyControlPositiveArena,s6FirstEarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6FirstEarlyControlClassPlan,s6FirstEarlyControlEqualityArena,s6FirstEarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_flagsProjection : (compileHmrFlagsLog s6FirstEarlyControlClassPlan.equalityArena s6FirstEarlyControlClassPlan.equality.top 776 776 776 s6FirstEarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6FirstEarlyControl_flags : compileHmrFlagsLog s6FirstEarlyControlClassPlan.equalityArena s6FirstEarlyControlClassPlan.equality.top 776 776 776 s6FirstEarlyControlLog.flagWork=some s6FirstEarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6FirstEarlyControl_flagsProjection
  · ext q
    simp [s6FirstEarlyControlClassPlan,s6FirstEarlyControlFlagArena,s6FirstEarlyControlEqualityArena,s6FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_fitProjection : (compileHmrRecordGrowLog s6FirstEarlyControlFlagArena [] 1 s6FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6FirstEarlyControl_fit : compileHmrRecordGrowLog s6FirstEarlyControlFlagArena [] 1 s6FirstEarlyControlLog.recordFresh=some s6FirstEarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6FirstEarlyControl_fitProjection
  · ext q
    simp [s6FirstEarlyControlFittedArena,s6FirstEarlyControlFlagArena,s6FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_historyProjection : (compileHmrRecordGrowLog s6FirstEarlyControlArena [] 1 s6FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6FirstEarlyControl_history : compileHmrRecordGrowLog s6FirstEarlyControlArena [] 1 s6FirstEarlyControlLog.recordFresh=some s6FirstEarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6FirstEarlyControl_historyProjection
  · ext q
    simp [s6FirstEarlyControlHistoryArena,s6FirstEarlyControlArena,s6FirstEarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6FirstEarlyControlHistoryArena false 0 0 876 887 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6FirstEarlyControl_sigma : compileHmrSigmaDropLog s6FirstEarlyControlHistoryArena false 0 0 876 887 []=some s6FirstEarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6FirstEarlyControl_sigmaProjection
  · ext q
    simp [s6FirstEarlyControlSigmaArena,s6FirstEarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_branchProjection : (compileHmrBranchRetirement s6FirstEarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  decide +kernel
theorem s6FirstEarlyControl_branch : compileHmrBranchRetirement s6FirstEarlyControlSigmaArena 813=some s6FirstEarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6FirstEarlyControl_branchProjection
  · ext q
    simp [s6FirstEarlyControlSigmaArena,s6FirstEarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_logged : s6FirstEarlyControlPlan.Logged s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] [] 769 887 876 776 776 776 813 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6FirstEarlyControl_zero
  · exact s6FirstEarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6FirstEarlyControl_flags
  · exact s6FirstEarlyControl_fit
  · exact s6FirstEarlyControl_history
  · exact s6FirstEarlyControl_sigma
  · exact s6FirstEarlyControl_branch
theorem s6FirstEarlyControl_plan_checked : compileHmrEarlyControlLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] [] 769 887 876 776 776 776 813 1 s6FirstEarlyControlLog=some s6FirstEarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6FirstEarlyControlPlan s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] [] 769 887 876 776 776 776 813 1 s6FirstEarlyControl_logged
theorem s6FirstEarlyControl_checked : (compileHmrEarlyControlLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] [] 769 887 876 776 776 776 813 1 s6FirstEarlyControlLog).map (fun P => P.outputArena.live.card)=some 781 := by
  rw [s6FirstEarlyControl_plan_checked]
  decide +kernel

def s6Step1EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (859 ≤ q ∧ q < 861) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (859 ≤ q ∧ q < 861) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (859 ≤ q ∧ q < 861) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step1EarlyControlLog : HmrEarlyControlLog := ⟨[887, 874, 862, 813, 807],[927],[802],[875, 779, 868, 857, 907, 858],[]⟩
def s6Step1EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,874⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step1EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step1EarlyControlPositiveArena,[927],s6Step1EarlyControlEqualityArena,[802],⟨⟨768,false⟩,[⟨⟨927,false⟩,802⟩]⟩⟩
def s6Step1EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step1EarlyControlZeroArena,s6Step1EarlyControlZeroPlan,s6Step1EarlyControlClassPlan,s6Step1EarlyControlFlagArena,s6Step1EarlyControlFittedArena,s6Step1EarlyControlHistoryArena,s6Step1EarlyControlSigmaArena,s6Step1EarlyControlOutputArena,s6Step1EarlyControlLog⟩
theorem s6Step1EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step1EarlyControlLog.zeroWork).map Prod.snd=some (s6Step1EarlyControlLog.zeroWork,s6Step1EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step1EarlyControl_zero : compileHmrEqualityLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step1EarlyControlLog.zeroWork=some (s6Step1EarlyControlZeroArena,s6Step1EarlyControlLog.zeroWork,s6Step1EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step1EarlyControl_zeroProjection
  · ext q
    simp [s6Step1EarlyControlZeroArena,s6Step1EarlyControlArena,s6Step1EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step1EarlyControl_classProjection : (compileHmrSourceClassLog s6Step1EarlyControlZeroArena false 769 s6Step1EarlyControlZeroPlan.top 0 768 s6Step1EarlyControlLog.positiveWork s6Step1EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step1EarlyControlClassPlan.positiveWork,s6Step1EarlyControlClassPlan.equalityWork,s6Step1EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step1EarlyControl_class : compileHmrSourceClassLog s6Step1EarlyControlZeroArena false 769 s6Step1EarlyControlZeroPlan.top 0 768 s6Step1EarlyControlLog.positiveWork s6Step1EarlyControlLog.classWork=some s6Step1EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step1EarlyControl_classProjection
  · ext q
    simp [s6Step1EarlyControlClassPlan,s6Step1EarlyControlPositiveArena,s6Step1EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step1EarlyControlClassPlan,s6Step1EarlyControlEqualityArena,s6Step1EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step1EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step1EarlyControlClassPlan.equalityArena s6Step1EarlyControlClassPlan.equality.top 793 776 776 s6Step1EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step1EarlyControl_flags : compileHmrFlagsLog s6Step1EarlyControlClassPlan.equalityArena s6Step1EarlyControlClassPlan.equality.top 793 776 776 s6Step1EarlyControlLog.flagWork=some s6Step1EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step1EarlyControl_flagsProjection
  · ext q
    simp [s6Step1EarlyControlClassPlan,s6Step1EarlyControlFlagArena,s6Step1EarlyControlEqualityArena,s6Step1EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step1EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step1EarlyControlFlagArena [895] 1 s6Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step1EarlyControl_fit : compileHmrRecordGrowLog s6Step1EarlyControlFlagArena [895] 1 s6Step1EarlyControlLog.recordFresh=some s6Step1EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step1EarlyControl_fitProjection
  · ext q
    simp [s6Step1EarlyControlFittedArena,s6Step1EarlyControlFlagArena,s6Step1EarlyControlLog,arenaWires]
theorem s6Step1EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step1EarlyControlArena [895] 1 s6Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step1EarlyControl_history : compileHmrRecordGrowLog s6Step1EarlyControlArena [895] 1 s6Step1EarlyControlLog.recordFresh=some s6Step1EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step1EarlyControl_historyProjection
  · ext q
    simp [s6Step1EarlyControlHistoryArena,s6Step1EarlyControlArena,s6Step1EarlyControlLog,arenaWires]
theorem s6Step1EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step1EarlyControlHistoryArena false 0 0 876 768 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step1EarlyControl_sigma : compileHmrSigmaDropLog s6Step1EarlyControlHistoryArena false 0 0 876 768 []=some s6Step1EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step1EarlyControl_sigmaProjection
  · ext q
    simp [s6Step1EarlyControlSigmaArena,s6Step1EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step1EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step1EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step1EarlyControl_branch : compileHmrBranchRetirement s6Step1EarlyControlSigmaArena 860=some s6Step1EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step1EarlyControl_branchProjection
  · ext q
    simp [s6Step1EarlyControlSigmaArena,s6Step1EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step1EarlyControl_logged : s6Step1EarlyControlPlan.Logged s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 768 876 793 776 776 860 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step1EarlyControl_zero
  · exact s6Step1EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step1EarlyControl_flags
  · exact s6Step1EarlyControl_fit
  · exact s6Step1EarlyControl_history
  · exact s6Step1EarlyControl_sigma
  · exact s6Step1EarlyControl_branch
theorem s6Step1EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 768 876 793 776 776 860 1 s6Step1EarlyControlLog=some s6Step1EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step1EarlyControlPlan s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 768 876 793 776 776 860 1 s6Step1EarlyControl_logged
theorem s6Step1EarlyControl_checked : (compileHmrEarlyControlLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 768 876 793 776 776 860 1 s6Step1EarlyControlLog).map (fun P => P.outputArena.live.card)=some 782 := by
  rw [s6Step1EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
