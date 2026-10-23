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

def s2Step2EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 788) ∨ (789 ≤ q ∧ q < 790) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 791) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 788) ∨ (789 ≤ q ∧ q < 790) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 788) ∨ (789 ≤ q ∧ q < 790) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 788) ∨ (789 ≤ q ∧ q < 790) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step2EarlyControlLog : HmrEarlyControlLog := ⟨[780, 788, 783, 784, 781],[790],[791],[792, 793, 794, 796, 797, 798],[]⟩
def s2Step2EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step2EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step2EarlyControlPositiveArena,[790],s2Step2EarlyControlEqualityArena,[791],⟨⟨786,false⟩,[⟨⟨790,false⟩,791⟩]⟩⟩
def s2Step2EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step2EarlyControlZeroArena,s2Step2EarlyControlZeroPlan,s2Step2EarlyControlClassPlan,s2Step2EarlyControlFlagArena,s2Step2EarlyControlFittedArena,s2Step2EarlyControlHistoryArena,s2Step2EarlyControlSigmaArena,s2Step2EarlyControlOutputArena,s2Step2EarlyControlLog⟩
theorem s2Step2EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step2EarlyControlLog.zeroWork).map Prod.snd=some (s2Step2EarlyControlLog.zeroWork,s2Step2EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step2EarlyControl_zero : compileHmrEqualityLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step2EarlyControlLog.zeroWork=some (s2Step2EarlyControlZeroArena,s2Step2EarlyControlLog.zeroWork,s2Step2EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step2EarlyControl_zeroProjection
  · ext q
    simp [s2Step2EarlyControlZeroArena,s2Step2EarlyControlArena,s2Step2EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step2EarlyControl_classProjection : (compileHmrSourceClassLog s2Step2EarlyControlZeroArena false 777 s2Step2EarlyControlZeroPlan.top 0 786 s2Step2EarlyControlLog.positiveWork s2Step2EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step2EarlyControlClassPlan.positiveWork,s2Step2EarlyControlClassPlan.equalityWork,s2Step2EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step2EarlyControl_class : compileHmrSourceClassLog s2Step2EarlyControlZeroArena false 777 s2Step2EarlyControlZeroPlan.top 0 786 s2Step2EarlyControlLog.positiveWork s2Step2EarlyControlLog.classWork=some s2Step2EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step2EarlyControl_classProjection
  · ext q
    simp [s2Step2EarlyControlClassPlan,s2Step2EarlyControlPositiveArena,s2Step2EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step2EarlyControlClassPlan,s2Step2EarlyControlEqualityArena,s2Step2EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step2EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step2EarlyControlClassPlan.equalityArena s2Step2EarlyControlClassPlan.equality.top 787 789 770 s2Step2EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step2EarlyControl_flags : compileHmrFlagsLog s2Step2EarlyControlClassPlan.equalityArena s2Step2EarlyControlClassPlan.equality.top 787 789 770 s2Step2EarlyControlLog.flagWork=some s2Step2EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step2EarlyControl_flagsProjection
  · ext q
    simp [s2Step2EarlyControlClassPlan,s2Step2EarlyControlFlagArena,s2Step2EarlyControlEqualityArena,s2Step2EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step2EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step2EarlyControlFlagArena [795] 1 s2Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step2EarlyControl_fit : compileHmrRecordGrowLog s2Step2EarlyControlFlagArena [795] 1 s2Step2EarlyControlLog.recordFresh=some s2Step2EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step2EarlyControl_fitProjection
  · ext q
    simp [s2Step2EarlyControlFittedArena,s2Step2EarlyControlFlagArena,s2Step2EarlyControlLog,arenaWires]
theorem s2Step2EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step2EarlyControlArena [795] 1 s2Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step2EarlyControl_history : compileHmrRecordGrowLog s2Step2EarlyControlArena [795] 1 s2Step2EarlyControlLog.recordFresh=some s2Step2EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step2EarlyControl_historyProjection
  · ext q
    simp [s2Step2EarlyControlHistoryArena,s2Step2EarlyControlArena,s2Step2EarlyControlLog,arenaWires]
theorem s2Step2EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step2EarlyControlHistoryArena false 0 0 785 786 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step2EarlyControl_sigma : compileHmrSigmaDropLog s2Step2EarlyControlHistoryArena false 0 0 785 786 []=some s2Step2EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step2EarlyControl_sigmaProjection
  · ext q
    simp [s2Step2EarlyControlSigmaArena,s2Step2EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step2EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step2EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step2EarlyControl_branch : compileHmrBranchRetirement s2Step2EarlyControlSigmaArena 782=some s2Step2EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step2EarlyControl_branchProjection
  · ext q
    simp [s2Step2EarlyControlSigmaArena,s2Step2EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step2EarlyControl_logged : s2Step2EarlyControlPlan.Logged s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 786 785 787 789 770 782 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step2EarlyControl_zero
  · exact s2Step2EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step2EarlyControl_flags
  · exact s2Step2EarlyControl_fit
  · exact s2Step2EarlyControl_history
  · exact s2Step2EarlyControl_sigma
  · exact s2Step2EarlyControl_branch
theorem s2Step2EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 786 785 787 789 770 782 1 s2Step2EarlyControlLog=some s2Step2EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step2EarlyControlPlan s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 786 785 787 789 770 782 1 s2Step2EarlyControl_logged
theorem s2Step2EarlyControl_checked : (compileHmrEarlyControlLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 786 785 787 789 770 782 1 s2Step2EarlyControlLog).map (fun P => P.outputArena.live.card)=some 784 := by
  rw [s2Step2EarlyControl_plan_checked]
  decide +kernel

def s2Step3EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 793) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 788) ∨ (789 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 788) ∨ (789 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step3EarlyControlLog : HmrEarlyControlLog := ⟨[780, 790, 781, 782, 784],[792],[793],[794, 796, 797, 798, 799, 800],[]⟩
def s2Step3EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,784⟩]⟩
def s2Step3EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step3EarlyControlPositiveArena,[792],s2Step3EarlyControlEqualityArena,[793],⟨⟨788,false⟩,[⟨⟨792,false⟩,793⟩]⟩⟩
def s2Step3EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step3EarlyControlZeroArena,s2Step3EarlyControlZeroPlan,s2Step3EarlyControlClassPlan,s2Step3EarlyControlFlagArena,s2Step3EarlyControlFittedArena,s2Step3EarlyControlHistoryArena,s2Step3EarlyControlSigmaArena,s2Step3EarlyControlOutputArena,s2Step3EarlyControlLog⟩
theorem s2Step3EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step3EarlyControlLog.zeroWork).map Prod.snd=some (s2Step3EarlyControlLog.zeroWork,s2Step3EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step3EarlyControl_zero : compileHmrEqualityLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step3EarlyControlLog.zeroWork=some (s2Step3EarlyControlZeroArena,s2Step3EarlyControlLog.zeroWork,s2Step3EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step3EarlyControl_zeroProjection
  · ext q
    simp [s2Step3EarlyControlZeroArena,s2Step3EarlyControlArena,s2Step3EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step3EarlyControl_classProjection : (compileHmrSourceClassLog s2Step3EarlyControlZeroArena false 777 s2Step3EarlyControlZeroPlan.top 0 788 s2Step3EarlyControlLog.positiveWork s2Step3EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step3EarlyControlClassPlan.positiveWork,s2Step3EarlyControlClassPlan.equalityWork,s2Step3EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step3EarlyControl_class : compileHmrSourceClassLog s2Step3EarlyControlZeroArena false 777 s2Step3EarlyControlZeroPlan.top 0 788 s2Step3EarlyControlLog.positiveWork s2Step3EarlyControlLog.classWork=some s2Step3EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step3EarlyControl_classProjection
  · ext q
    simp [s2Step3EarlyControlClassPlan,s2Step3EarlyControlPositiveArena,s2Step3EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step3EarlyControlClassPlan,s2Step3EarlyControlEqualityArena,s2Step3EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step3EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step3EarlyControlClassPlan.equalityArena s2Step3EarlyControlClassPlan.equality.top 787 789 791 s2Step3EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step3EarlyControl_flags : compileHmrFlagsLog s2Step3EarlyControlClassPlan.equalityArena s2Step3EarlyControlClassPlan.equality.top 787 789 791 s2Step3EarlyControlLog.flagWork=some s2Step3EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step3EarlyControl_flagsProjection
  · ext q
    simp [s2Step3EarlyControlClassPlan,s2Step3EarlyControlFlagArena,s2Step3EarlyControlEqualityArena,s2Step3EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step3EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step3EarlyControlFlagArena [795] 1 s2Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step3EarlyControl_fit : compileHmrRecordGrowLog s2Step3EarlyControlFlagArena [795] 1 s2Step3EarlyControlLog.recordFresh=some s2Step3EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step3EarlyControl_fitProjection
  · ext q
    simp [s2Step3EarlyControlFittedArena,s2Step3EarlyControlFlagArena,s2Step3EarlyControlLog,arenaWires]
theorem s2Step3EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step3EarlyControlArena [795] 1 s2Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step3EarlyControl_history : compileHmrRecordGrowLog s2Step3EarlyControlArena [795] 1 s2Step3EarlyControlLog.recordFresh=some s2Step3EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step3EarlyControl_historyProjection
  · ext q
    simp [s2Step3EarlyControlHistoryArena,s2Step3EarlyControlArena,s2Step3EarlyControlLog,arenaWires]
theorem s2Step3EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step3EarlyControlHistoryArena false 0 0 785 788 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step3EarlyControl_sigma : compileHmrSigmaDropLog s2Step3EarlyControlHistoryArena false 0 0 785 788 []=some s2Step3EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step3EarlyControl_sigmaProjection
  · ext q
    simp [s2Step3EarlyControlSigmaArena,s2Step3EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step3EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step3EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step3EarlyControl_branch : compileHmrBranchRetirement s2Step3EarlyControlSigmaArena 783=some s2Step3EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step3EarlyControl_branchProjection
  · ext q
    simp [s2Step3EarlyControlSigmaArena,s2Step3EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step3EarlyControl_logged : s2Step3EarlyControlPlan.Logged s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 788 785 787 789 791 783 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step3EarlyControl_zero
  · exact s2Step3EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step3EarlyControl_flags
  · exact s2Step3EarlyControl_fit
  · exact s2Step3EarlyControl_history
  · exact s2Step3EarlyControl_sigma
  · exact s2Step3EarlyControl_branch
theorem s2Step3EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 788 785 787 789 791 783 1 s2Step3EarlyControlLog=some s2Step3EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step3EarlyControlPlan s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 788 785 787 789 791 783 1 s2Step3EarlyControl_logged
theorem s2Step3EarlyControl_checked : (compileHmrEarlyControlLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 788 785 787 789 791 783 1 s2Step3EarlyControlLog).map (fun P => P.outputArena.live.card)=some 786 := by
  rw [s2Step3EarlyControl_plan_checked]
  decide +kernel

def s2Step4EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2Step4EarlyControlLog : HmrEarlyControlLog := ⟨[780, 792, 784, 783, 782],[794],[796],[797, 798, 799, 800, 801, 802],[]⟩
def s2Step4EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,792⟩,⟨⟨775,false⟩,784⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,782⟩]⟩
def s2Step4EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step4EarlyControlPositiveArena,[794],s2Step4EarlyControlEqualityArena,[796],⟨⟨790,false⟩,[⟨⟨794,false⟩,796⟩]⟩⟩
def s2Step4EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step4EarlyControlZeroArena,s2Step4EarlyControlZeroPlan,s2Step4EarlyControlClassPlan,s2Step4EarlyControlFlagArena,s2Step4EarlyControlFittedArena,s2Step4EarlyControlHistoryArena,s2Step4EarlyControlSigmaArena,s2Step4EarlyControlOutputArena,s2Step4EarlyControlLog⟩
theorem s2Step4EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step4EarlyControlLog.zeroWork).map Prod.snd=some (s2Step4EarlyControlLog.zeroWork,s2Step4EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step4EarlyControl_zero : compileHmrEqualityLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step4EarlyControlLog.zeroWork=some (s2Step4EarlyControlZeroArena,s2Step4EarlyControlLog.zeroWork,s2Step4EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step4EarlyControl_zeroProjection
  · ext q
    simp [s2Step4EarlyControlZeroArena,s2Step4EarlyControlArena,s2Step4EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step4EarlyControl_classProjection : (compileHmrSourceClassLog s2Step4EarlyControlZeroArena false 777 s2Step4EarlyControlZeroPlan.top 0 790 s2Step4EarlyControlLog.positiveWork s2Step4EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step4EarlyControlClassPlan.positiveWork,s2Step4EarlyControlClassPlan.equalityWork,s2Step4EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step4EarlyControl_class : compileHmrSourceClassLog s2Step4EarlyControlZeroArena false 777 s2Step4EarlyControlZeroPlan.top 0 790 s2Step4EarlyControlLog.positiveWork s2Step4EarlyControlLog.classWork=some s2Step4EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step4EarlyControl_classProjection
  · ext q
    simp [s2Step4EarlyControlClassPlan,s2Step4EarlyControlPositiveArena,s2Step4EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step4EarlyControlClassPlan,s2Step4EarlyControlEqualityArena,s2Step4EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step4EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step4EarlyControlClassPlan.equalityArena s2Step4EarlyControlClassPlan.equality.top 787 789 791 s2Step4EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step4EarlyControl_flags : compileHmrFlagsLog s2Step4EarlyControlClassPlan.equalityArena s2Step4EarlyControlClassPlan.equality.top 787 789 791 s2Step4EarlyControlLog.flagWork=some s2Step4EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step4EarlyControl_flagsProjection
  · ext q
    simp [s2Step4EarlyControlClassPlan,s2Step4EarlyControlFlagArena,s2Step4EarlyControlEqualityArena,s2Step4EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step4EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step4EarlyControlFlagArena [795] 1 s2Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step4EarlyControl_fit : compileHmrRecordGrowLog s2Step4EarlyControlFlagArena [795] 1 s2Step4EarlyControlLog.recordFresh=some s2Step4EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step4EarlyControl_fitProjection
  · ext q
    simp [s2Step4EarlyControlFittedArena,s2Step4EarlyControlFlagArena,s2Step4EarlyControlLog,arenaWires]
theorem s2Step4EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step4EarlyControlArena [795] 1 s2Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step4EarlyControl_history : compileHmrRecordGrowLog s2Step4EarlyControlArena [795] 1 s2Step4EarlyControlLog.recordFresh=some s2Step4EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step4EarlyControl_historyProjection
  · ext q
    simp [s2Step4EarlyControlHistoryArena,s2Step4EarlyControlArena,s2Step4EarlyControlLog,arenaWires]
theorem s2Step4EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step4EarlyControlHistoryArena false 0 0 785 790 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step4EarlyControl_sigma : compileHmrSigmaDropLog s2Step4EarlyControlHistoryArena false 0 0 785 790 []=some s2Step4EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step4EarlyControl_sigmaProjection
  · ext q
    simp [s2Step4EarlyControlSigmaArena,s2Step4EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step4EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step4EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step4EarlyControl_branch : compileHmrBranchRetirement s2Step4EarlyControlSigmaArena 781=some s2Step4EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step4EarlyControl_branchProjection
  · ext q
    simp [s2Step4EarlyControlSigmaArena,s2Step4EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step4EarlyControl_logged : s2Step4EarlyControlPlan.Logged s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 790 785 787 789 791 781 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step4EarlyControl_zero
  · exact s2Step4EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step4EarlyControl_flags
  · exact s2Step4EarlyControl_fit
  · exact s2Step4EarlyControl_history
  · exact s2Step4EarlyControl_sigma
  · exact s2Step4EarlyControl_branch
theorem s2Step4EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 790 785 787 789 791 781 1 s2Step4EarlyControlLog=some s2Step4EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step4EarlyControlPlan s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 790 785 787 789 791 781 1 s2Step4EarlyControl_logged
theorem s2Step4EarlyControl_checked : (compileHmrEarlyControlLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 790 785 787 789 791 781 1 s2Step4EarlyControlLog).map (fun P => P.outputArena.live.card)=some 788 := by
  rw [s2Step4EarlyControl_plan_checked]
  decide +kernel

def s2Step5EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 798)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 805)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 805)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797)),Finset.filter_subset _ _⟩

def s2Step5EarlyControlLog : HmrEarlyControlLog := ⟨[780, 794, 782, 781, 783],[797],[798],[799, 800, 801, 802, 803, 804],[]⟩
def s2Step5EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,794⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step5EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step5EarlyControlPositiveArena,[797],s2Step5EarlyControlEqualityArena,[798],⟨⟨792,false⟩,[⟨⟨797,false⟩,798⟩]⟩⟩
def s2Step5EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step5EarlyControlZeroArena,s2Step5EarlyControlZeroPlan,s2Step5EarlyControlClassPlan,s2Step5EarlyControlFlagArena,s2Step5EarlyControlFittedArena,s2Step5EarlyControlHistoryArena,s2Step5EarlyControlSigmaArena,s2Step5EarlyControlOutputArena,s2Step5EarlyControlLog⟩
theorem s2Step5EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step5EarlyControlLog.zeroWork).map Prod.snd=some (s2Step5EarlyControlLog.zeroWork,s2Step5EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step5EarlyControl_zero : compileHmrEqualityLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step5EarlyControlLog.zeroWork=some (s2Step5EarlyControlZeroArena,s2Step5EarlyControlLog.zeroWork,s2Step5EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step5EarlyControl_zeroProjection
  · ext q
    simp [s2Step5EarlyControlZeroArena,s2Step5EarlyControlArena,s2Step5EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step5EarlyControl_classProjection : (compileHmrSourceClassLog s2Step5EarlyControlZeroArena false 777 s2Step5EarlyControlZeroPlan.top 0 792 s2Step5EarlyControlLog.positiveWork s2Step5EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step5EarlyControlClassPlan.positiveWork,s2Step5EarlyControlClassPlan.equalityWork,s2Step5EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step5EarlyControl_class : compileHmrSourceClassLog s2Step5EarlyControlZeroArena false 777 s2Step5EarlyControlZeroPlan.top 0 792 s2Step5EarlyControlLog.positiveWork s2Step5EarlyControlLog.classWork=some s2Step5EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step5EarlyControl_classProjection
  · ext q
    simp [s2Step5EarlyControlClassPlan,s2Step5EarlyControlPositiveArena,s2Step5EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step5EarlyControlClassPlan,s2Step5EarlyControlEqualityArena,s2Step5EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step5EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step5EarlyControlClassPlan.equalityArena s2Step5EarlyControlClassPlan.equality.top 787 789 791 s2Step5EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step5EarlyControl_flags : compileHmrFlagsLog s2Step5EarlyControlClassPlan.equalityArena s2Step5EarlyControlClassPlan.equality.top 787 789 791 s2Step5EarlyControlLog.flagWork=some s2Step5EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step5EarlyControl_flagsProjection
  · ext q
    simp [s2Step5EarlyControlClassPlan,s2Step5EarlyControlFlagArena,s2Step5EarlyControlEqualityArena,s2Step5EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step5EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step5EarlyControlFlagArena [795] 1 s2Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step5EarlyControl_fit : compileHmrRecordGrowLog s2Step5EarlyControlFlagArena [795] 1 s2Step5EarlyControlLog.recordFresh=some s2Step5EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step5EarlyControl_fitProjection
  · ext q
    simp [s2Step5EarlyControlFittedArena,s2Step5EarlyControlFlagArena,s2Step5EarlyControlLog,arenaWires]
theorem s2Step5EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step5EarlyControlArena [795] 1 s2Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step5EarlyControl_history : compileHmrRecordGrowLog s2Step5EarlyControlArena [795] 1 s2Step5EarlyControlLog.recordFresh=some s2Step5EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step5EarlyControl_historyProjection
  · ext q
    simp [s2Step5EarlyControlHistoryArena,s2Step5EarlyControlArena,s2Step5EarlyControlLog,arenaWires]
theorem s2Step5EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step5EarlyControlHistoryArena false 0 0 785 792 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step5EarlyControl_sigma : compileHmrSigmaDropLog s2Step5EarlyControlHistoryArena false 0 0 785 792 []=some s2Step5EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step5EarlyControl_sigmaProjection
  · ext q
    simp [s2Step5EarlyControlSigmaArena,s2Step5EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step5EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step5EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step5EarlyControl_branch : compileHmrBranchRetirement s2Step5EarlyControlSigmaArena 784=some s2Step5EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step5EarlyControl_branchProjection
  · ext q
    simp [s2Step5EarlyControlSigmaArena,s2Step5EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step5EarlyControl_logged : s2Step5EarlyControlPlan.Logged s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 792 785 787 789 791 784 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step5EarlyControl_zero
  · exact s2Step5EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step5EarlyControl_flags
  · exact s2Step5EarlyControl_fit
  · exact s2Step5EarlyControl_history
  · exact s2Step5EarlyControl_sigma
  · exact s2Step5EarlyControl_branch
theorem s2Step5EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 792 785 787 789 791 784 1 s2Step5EarlyControlLog=some s2Step5EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step5EarlyControlPlan s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 792 785 787 789 791 784 1 s2Step5EarlyControl_logged
theorem s2Step5EarlyControl_checked : (compileHmrEarlyControlLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 792 785 787 789 791 784 1 s2Step5EarlyControlLog).map (fun P => P.outputArena.live.card)=some 790 := by
  rw [s2Step5EarlyControl_plan_checked]
  decide +kernel

def s2Step6EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 799)),Finset.filter_subset _ _⟩

def s2Step6EarlyControlLog : HmrEarlyControlLog := ⟨[780, 797, 783, 784, 781],[799],[800],[801, 802, 803, 804, 805, 806],[]⟩
def s2Step6EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step6EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step6EarlyControlPositiveArena,[799],s2Step6EarlyControlEqualityArena,[800],⟨⟨794,false⟩,[⟨⟨799,false⟩,800⟩]⟩⟩
def s2Step6EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step6EarlyControlZeroArena,s2Step6EarlyControlZeroPlan,s2Step6EarlyControlClassPlan,s2Step6EarlyControlFlagArena,s2Step6EarlyControlFittedArena,s2Step6EarlyControlHistoryArena,s2Step6EarlyControlSigmaArena,s2Step6EarlyControlOutputArena,s2Step6EarlyControlLog⟩
theorem s2Step6EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step6EarlyControlLog.zeroWork).map Prod.snd=some (s2Step6EarlyControlLog.zeroWork,s2Step6EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step6EarlyControl_zero : compileHmrEqualityLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step6EarlyControlLog.zeroWork=some (s2Step6EarlyControlZeroArena,s2Step6EarlyControlLog.zeroWork,s2Step6EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step6EarlyControl_zeroProjection
  · ext q
    simp [s2Step6EarlyControlZeroArena,s2Step6EarlyControlArena,s2Step6EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step6EarlyControl_classProjection : (compileHmrSourceClassLog s2Step6EarlyControlZeroArena false 777 s2Step6EarlyControlZeroPlan.top 0 794 s2Step6EarlyControlLog.positiveWork s2Step6EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step6EarlyControlClassPlan.positiveWork,s2Step6EarlyControlClassPlan.equalityWork,s2Step6EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step6EarlyControl_class : compileHmrSourceClassLog s2Step6EarlyControlZeroArena false 777 s2Step6EarlyControlZeroPlan.top 0 794 s2Step6EarlyControlLog.positiveWork s2Step6EarlyControlLog.classWork=some s2Step6EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step6EarlyControl_classProjection
  · ext q
    simp [s2Step6EarlyControlClassPlan,s2Step6EarlyControlPositiveArena,s2Step6EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step6EarlyControlClassPlan,s2Step6EarlyControlEqualityArena,s2Step6EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step6EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step6EarlyControlClassPlan.equalityArena s2Step6EarlyControlClassPlan.equality.top 787 789 791 s2Step6EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step6EarlyControl_flags : compileHmrFlagsLog s2Step6EarlyControlClassPlan.equalityArena s2Step6EarlyControlClassPlan.equality.top 787 789 791 s2Step6EarlyControlLog.flagWork=some s2Step6EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step6EarlyControl_flagsProjection
  · ext q
    simp [s2Step6EarlyControlClassPlan,s2Step6EarlyControlFlagArena,s2Step6EarlyControlEqualityArena,s2Step6EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step6EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step6EarlyControlFlagArena [795] 1 s2Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step6EarlyControl_fit : compileHmrRecordGrowLog s2Step6EarlyControlFlagArena [795] 1 s2Step6EarlyControlLog.recordFresh=some s2Step6EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step6EarlyControl_fitProjection
  · ext q
    simp [s2Step6EarlyControlFittedArena,s2Step6EarlyControlFlagArena,s2Step6EarlyControlLog,arenaWires]
theorem s2Step6EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step6EarlyControlArena [795] 1 s2Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step6EarlyControl_history : compileHmrRecordGrowLog s2Step6EarlyControlArena [795] 1 s2Step6EarlyControlLog.recordFresh=some s2Step6EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step6EarlyControl_historyProjection
  · ext q
    simp [s2Step6EarlyControlHistoryArena,s2Step6EarlyControlArena,s2Step6EarlyControlLog,arenaWires]
theorem s2Step6EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step6EarlyControlHistoryArena false 0 0 785 794 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step6EarlyControl_sigma : compileHmrSigmaDropLog s2Step6EarlyControlHistoryArena false 0 0 785 794 []=some s2Step6EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step6EarlyControl_sigmaProjection
  · ext q
    simp [s2Step6EarlyControlSigmaArena,s2Step6EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step6EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step6EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step6EarlyControl_branch : compileHmrBranchRetirement s2Step6EarlyControlSigmaArena 782=some s2Step6EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step6EarlyControl_branchProjection
  · ext q
    simp [s2Step6EarlyControlSigmaArena,s2Step6EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step6EarlyControl_logged : s2Step6EarlyControlPlan.Logged s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 794 785 787 789 791 782 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step6EarlyControl_zero
  · exact s2Step6EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step6EarlyControl_flags
  · exact s2Step6EarlyControl_fit
  · exact s2Step6EarlyControl_history
  · exact s2Step6EarlyControl_sigma
  · exact s2Step6EarlyControl_branch
theorem s2Step6EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 794 785 787 789 791 782 1 s2Step6EarlyControlLog=some s2Step6EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step6EarlyControlPlan s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 794 785 787 789 791 782 1 s2Step6EarlyControl_logged
theorem s2Step6EarlyControl_checked : (compileHmrEarlyControlLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 794 785 787 789 791 782 1 s2Step6EarlyControlLog).map (fun P => P.outputArena.live.card)=some 792 := by
  rw [s2Step6EarlyControl_plan_checked]
  decide +kernel

def s2Step7EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 799) ∨ (800 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 802)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 809)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 809)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 799) ∨ (800 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 799) ∨ (800 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 799) ∨ (800 ≤ q ∧ q < 801)),Finset.filter_subset _ _⟩

def s2Step7EarlyControlLog : HmrEarlyControlLog := ⟨[780, 799, 781, 782, 784],[801],[802],[803, 804, 805, 806, 807, 808],[]⟩
def s2Step7EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,784⟩]⟩
def s2Step7EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step7EarlyControlPositiveArena,[801],s2Step7EarlyControlEqualityArena,[802],⟨⟨797,false⟩,[⟨⟨801,false⟩,802⟩]⟩⟩
def s2Step7EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step7EarlyControlZeroArena,s2Step7EarlyControlZeroPlan,s2Step7EarlyControlClassPlan,s2Step7EarlyControlFlagArena,s2Step7EarlyControlFittedArena,s2Step7EarlyControlHistoryArena,s2Step7EarlyControlSigmaArena,s2Step7EarlyControlOutputArena,s2Step7EarlyControlLog⟩
theorem s2Step7EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step7EarlyControlLog.zeroWork).map Prod.snd=some (s2Step7EarlyControlLog.zeroWork,s2Step7EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step7EarlyControl_zero : compileHmrEqualityLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step7EarlyControlLog.zeroWork=some (s2Step7EarlyControlZeroArena,s2Step7EarlyControlLog.zeroWork,s2Step7EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step7EarlyControl_zeroProjection
  · ext q
    simp [s2Step7EarlyControlZeroArena,s2Step7EarlyControlArena,s2Step7EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step7EarlyControl_classProjection : (compileHmrSourceClassLog s2Step7EarlyControlZeroArena false 777 s2Step7EarlyControlZeroPlan.top 0 797 s2Step7EarlyControlLog.positiveWork s2Step7EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step7EarlyControlClassPlan.positiveWork,s2Step7EarlyControlClassPlan.equalityWork,s2Step7EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step7EarlyControl_class : compileHmrSourceClassLog s2Step7EarlyControlZeroArena false 777 s2Step7EarlyControlZeroPlan.top 0 797 s2Step7EarlyControlLog.positiveWork s2Step7EarlyControlLog.classWork=some s2Step7EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step7EarlyControl_classProjection
  · ext q
    simp [s2Step7EarlyControlClassPlan,s2Step7EarlyControlPositiveArena,s2Step7EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step7EarlyControlClassPlan,s2Step7EarlyControlEqualityArena,s2Step7EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step7EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step7EarlyControlClassPlan.equalityArena s2Step7EarlyControlClassPlan.equality.top 787 789 791 s2Step7EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step7EarlyControl_flags : compileHmrFlagsLog s2Step7EarlyControlClassPlan.equalityArena s2Step7EarlyControlClassPlan.equality.top 787 789 791 s2Step7EarlyControlLog.flagWork=some s2Step7EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step7EarlyControl_flagsProjection
  · ext q
    simp [s2Step7EarlyControlClassPlan,s2Step7EarlyControlFlagArena,s2Step7EarlyControlEqualityArena,s2Step7EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step7EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step7EarlyControlFlagArena [795] 1 s2Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step7EarlyControl_fit : compileHmrRecordGrowLog s2Step7EarlyControlFlagArena [795] 1 s2Step7EarlyControlLog.recordFresh=some s2Step7EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step7EarlyControl_fitProjection
  · ext q
    simp [s2Step7EarlyControlFittedArena,s2Step7EarlyControlFlagArena,s2Step7EarlyControlLog,arenaWires]
theorem s2Step7EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step7EarlyControlArena [795] 1 s2Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step7EarlyControl_history : compileHmrRecordGrowLog s2Step7EarlyControlArena [795] 1 s2Step7EarlyControlLog.recordFresh=some s2Step7EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step7EarlyControl_historyProjection
  · ext q
    simp [s2Step7EarlyControlHistoryArena,s2Step7EarlyControlArena,s2Step7EarlyControlLog,arenaWires]
theorem s2Step7EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step7EarlyControlHistoryArena false 0 0 785 797 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step7EarlyControl_sigma : compileHmrSigmaDropLog s2Step7EarlyControlHistoryArena false 0 0 785 797 []=some s2Step7EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step7EarlyControl_sigmaProjection
  · ext q
    simp [s2Step7EarlyControlSigmaArena,s2Step7EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step7EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step7EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step7EarlyControl_branch : compileHmrBranchRetirement s2Step7EarlyControlSigmaArena 783=some s2Step7EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step7EarlyControl_branchProjection
  · ext q
    simp [s2Step7EarlyControlSigmaArena,s2Step7EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step7EarlyControl_logged : s2Step7EarlyControlPlan.Logged s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 797 785 787 789 791 783 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step7EarlyControl_zero
  · exact s2Step7EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step7EarlyControl_flags
  · exact s2Step7EarlyControl_fit
  · exact s2Step7EarlyControl_history
  · exact s2Step7EarlyControl_sigma
  · exact s2Step7EarlyControl_branch
theorem s2Step7EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 797 785 787 789 791 783 1 s2Step7EarlyControlLog=some s2Step7EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step7EarlyControlPlan s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 797 785 787 789 791 783 1 s2Step7EarlyControl_logged
theorem s2Step7EarlyControl_checked : (compileHmrEarlyControlLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 797 785 787 789 791 783 1 s2Step7EarlyControlLog).map (fun P => P.outputArena.live.card)=some 794 := by
  rw [s2Step7EarlyControl_plan_checked]
  decide +kernel

def s2Step8EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 801) ∨ (802 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 804)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 805)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 811)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 811)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 801) ∨ (802 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 799) ∨ (800 ≤ q ∧ q < 801) ∨ (802 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 799) ∨ (800 ≤ q ∧ q < 801) ∨ (802 ≤ q ∧ q < 803)),Finset.filter_subset _ _⟩

def s2Step8EarlyControlLog : HmrEarlyControlLog := ⟨[780, 801, 784, 783, 782],[803],[804],[805, 806, 807, 808, 809, 810],[]⟩
def s2Step8EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,801⟩,⟨⟨775,false⟩,784⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,782⟩]⟩
def s2Step8EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step8EarlyControlPositiveArena,[803],s2Step8EarlyControlEqualityArena,[804],⟨⟨799,false⟩,[⟨⟨803,false⟩,804⟩]⟩⟩
def s2Step8EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step8EarlyControlZeroArena,s2Step8EarlyControlZeroPlan,s2Step8EarlyControlClassPlan,s2Step8EarlyControlFlagArena,s2Step8EarlyControlFittedArena,s2Step8EarlyControlHistoryArena,s2Step8EarlyControlSigmaArena,s2Step8EarlyControlOutputArena,s2Step8EarlyControlLog⟩
theorem s2Step8EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step8EarlyControlLog.zeroWork).map Prod.snd=some (s2Step8EarlyControlLog.zeroWork,s2Step8EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step8EarlyControl_zero : compileHmrEqualityLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step8EarlyControlLog.zeroWork=some (s2Step8EarlyControlZeroArena,s2Step8EarlyControlLog.zeroWork,s2Step8EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step8EarlyControl_zeroProjection
  · ext q
    simp [s2Step8EarlyControlZeroArena,s2Step8EarlyControlArena,s2Step8EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step8EarlyControl_classProjection : (compileHmrSourceClassLog s2Step8EarlyControlZeroArena false 777 s2Step8EarlyControlZeroPlan.top 0 799 s2Step8EarlyControlLog.positiveWork s2Step8EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step8EarlyControlClassPlan.positiveWork,s2Step8EarlyControlClassPlan.equalityWork,s2Step8EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step8EarlyControl_class : compileHmrSourceClassLog s2Step8EarlyControlZeroArena false 777 s2Step8EarlyControlZeroPlan.top 0 799 s2Step8EarlyControlLog.positiveWork s2Step8EarlyControlLog.classWork=some s2Step8EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step8EarlyControl_classProjection
  · ext q
    simp [s2Step8EarlyControlClassPlan,s2Step8EarlyControlPositiveArena,s2Step8EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step8EarlyControlClassPlan,s2Step8EarlyControlEqualityArena,s2Step8EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step8EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step8EarlyControlClassPlan.equalityArena s2Step8EarlyControlClassPlan.equality.top 787 789 791 s2Step8EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step8EarlyControl_flags : compileHmrFlagsLog s2Step8EarlyControlClassPlan.equalityArena s2Step8EarlyControlClassPlan.equality.top 787 789 791 s2Step8EarlyControlLog.flagWork=some s2Step8EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step8EarlyControl_flagsProjection
  · ext q
    simp [s2Step8EarlyControlClassPlan,s2Step8EarlyControlFlagArena,s2Step8EarlyControlEqualityArena,s2Step8EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step8EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step8EarlyControlFlagArena [795] 1 s2Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step8EarlyControl_fit : compileHmrRecordGrowLog s2Step8EarlyControlFlagArena [795] 1 s2Step8EarlyControlLog.recordFresh=some s2Step8EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step8EarlyControl_fitProjection
  · ext q
    simp [s2Step8EarlyControlFittedArena,s2Step8EarlyControlFlagArena,s2Step8EarlyControlLog,arenaWires]
theorem s2Step8EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step8EarlyControlArena [795] 1 s2Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step8EarlyControl_history : compileHmrRecordGrowLog s2Step8EarlyControlArena [795] 1 s2Step8EarlyControlLog.recordFresh=some s2Step8EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step8EarlyControl_historyProjection
  · ext q
    simp [s2Step8EarlyControlHistoryArena,s2Step8EarlyControlArena,s2Step8EarlyControlLog,arenaWires]
theorem s2Step8EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step8EarlyControlHistoryArena false 0 0 785 799 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step8EarlyControl_sigma : compileHmrSigmaDropLog s2Step8EarlyControlHistoryArena false 0 0 785 799 []=some s2Step8EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step8EarlyControl_sigmaProjection
  · ext q
    simp [s2Step8EarlyControlSigmaArena,s2Step8EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step8EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step8EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step8EarlyControl_branch : compileHmrBranchRetirement s2Step8EarlyControlSigmaArena 781=some s2Step8EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step8EarlyControl_branchProjection
  · ext q
    simp [s2Step8EarlyControlSigmaArena,s2Step8EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step8EarlyControl_logged : s2Step8EarlyControlPlan.Logged s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 799 785 787 789 791 781 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step8EarlyControl_zero
  · exact s2Step8EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step8EarlyControl_flags
  · exact s2Step8EarlyControl_fit
  · exact s2Step8EarlyControl_history
  · exact s2Step8EarlyControl_sigma
  · exact s2Step8EarlyControl_branch
theorem s2Step8EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 799 785 787 789 791 781 1 s2Step8EarlyControlLog=some s2Step8EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step8EarlyControlPlan s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 799 785 787 789 791 781 1 s2Step8EarlyControl_logged
theorem s2Step8EarlyControl_checked : (compileHmrEarlyControlLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 799 785 787 789 791 781 1 s2Step8EarlyControlLog).map (fun P => P.outputArena.live.card)=some 796 := by
  rw [s2Step8EarlyControl_plan_checked]
  decide +kernel

def s2Step9EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 805)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 806)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 813)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 801) ∨ (802 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 801) ∨ (802 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step9EarlyControlLog : HmrEarlyControlLog := ⟨[780, 803, 782, 781, 783],[805],[806],[807, 808, 809, 810, 811, 812],[813]⟩
def s2Step9EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,803⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step9EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step9EarlyControlPositiveArena,[805],s2Step9EarlyControlEqualityArena,[806],⟨⟨801,false⟩,[⟨⟨805,false⟩,806⟩]⟩⟩
def s2Step9EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step9EarlyControlZeroArena,s2Step9EarlyControlZeroPlan,s2Step9EarlyControlClassPlan,s2Step9EarlyControlFlagArena,s2Step9EarlyControlFittedArena,s2Step9EarlyControlHistoryArena,s2Step9EarlyControlSigmaArena,s2Step9EarlyControlOutputArena,s2Step9EarlyControlLog⟩
theorem s2Step9EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step9EarlyControlLog.zeroWork).map Prod.snd=some (s2Step9EarlyControlLog.zeroWork,s2Step9EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step9EarlyControl_zero : compileHmrEqualityLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step9EarlyControlLog.zeroWork=some (s2Step9EarlyControlZeroArena,s2Step9EarlyControlLog.zeroWork,s2Step9EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step9EarlyControl_zeroProjection
  · ext q
    simp [s2Step9EarlyControlZeroArena,s2Step9EarlyControlArena,s2Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_classProjection : (compileHmrSourceClassLog s2Step9EarlyControlZeroArena false 777 s2Step9EarlyControlZeroPlan.top 0 801 s2Step9EarlyControlLog.positiveWork s2Step9EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step9EarlyControlClassPlan.positiveWork,s2Step9EarlyControlClassPlan.equalityWork,s2Step9EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step9EarlyControl_class : compileHmrSourceClassLog s2Step9EarlyControlZeroArena false 777 s2Step9EarlyControlZeroPlan.top 0 801 s2Step9EarlyControlLog.positiveWork s2Step9EarlyControlLog.classWork=some s2Step9EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step9EarlyControl_classProjection
  · ext q
    simp [s2Step9EarlyControlClassPlan,s2Step9EarlyControlPositiveArena,s2Step9EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step9EarlyControlClassPlan,s2Step9EarlyControlEqualityArena,s2Step9EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step9EarlyControlClassPlan.equalityArena s2Step9EarlyControlClassPlan.equality.top 787 789 791 s2Step9EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step9EarlyControl_flags : compileHmrFlagsLog s2Step9EarlyControlClassPlan.equalityArena s2Step9EarlyControlClassPlan.equality.top 787 789 791 s2Step9EarlyControlLog.flagWork=some s2Step9EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step9EarlyControl_flagsProjection
  · ext q
    simp [s2Step9EarlyControlClassPlan,s2Step9EarlyControlFlagArena,s2Step9EarlyControlEqualityArena,s2Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step9EarlyControlFlagArena [795] 2 s2Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step9EarlyControl_fit : compileHmrRecordGrowLog s2Step9EarlyControlFlagArena [795] 2 s2Step9EarlyControlLog.recordFresh=some s2Step9EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step9EarlyControl_fitProjection
  · ext q
    simp [s2Step9EarlyControlFittedArena,s2Step9EarlyControlFlagArena,s2Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step9EarlyControlArena [795] 2 s2Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step9EarlyControl_history : compileHmrRecordGrowLog s2Step9EarlyControlArena [795] 2 s2Step9EarlyControlLog.recordFresh=some s2Step9EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step9EarlyControl_historyProjection
  · ext q
    simp [s2Step9EarlyControlHistoryArena,s2Step9EarlyControlArena,s2Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step9EarlyControlHistoryArena false 0 0 785 801 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step9EarlyControl_sigma : compileHmrSigmaDropLog s2Step9EarlyControlHistoryArena false 0 0 785 801 []=some s2Step9EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step9EarlyControl_sigmaProjection
  · ext q
    simp [s2Step9EarlyControlSigmaArena,s2Step9EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step9EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step9EarlyControl_branch : compileHmrBranchRetirement s2Step9EarlyControlSigmaArena 784=some s2Step9EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step9EarlyControl_branchProjection
  · ext q
    simp [s2Step9EarlyControlSigmaArena,s2Step9EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_logged : s2Step9EarlyControlPlan.Logged s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 801 785 787 789 791 784 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step9EarlyControl_zero
  · exact s2Step9EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step9EarlyControl_flags
  · exact s2Step9EarlyControl_fit
  · exact s2Step9EarlyControl_history
  · exact s2Step9EarlyControl_sigma
  · exact s2Step9EarlyControl_branch
theorem s2Step9EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 801 785 787 789 791 784 2 s2Step9EarlyControlLog=some s2Step9EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step9EarlyControlPlan s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 801 785 787 789 791 784 2 s2Step9EarlyControl_logged
theorem s2Step9EarlyControl_checked : (compileHmrEarlyControlLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 801 785 787 789 791 784 2 s2Step9EarlyControlLog).map (fun P => P.outputArena.live.card)=some 799 := by
  rw [s2Step9EarlyControl_plan_checked]
  decide +kernel

def s2Step10EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 809) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 816)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 816)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step10EarlyControlLog : HmrEarlyControlLog := ⟨[780, 805, 783, 784, 781],[807],[808],[809, 810, 811, 812, 814, 815],[]⟩
def s2Step10EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step10EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step10EarlyControlPositiveArena,[807],s2Step10EarlyControlEqualityArena,[808],⟨⟨803,false⟩,[⟨⟨807,false⟩,808⟩]⟩⟩
def s2Step10EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step10EarlyControlZeroArena,s2Step10EarlyControlZeroPlan,s2Step10EarlyControlClassPlan,s2Step10EarlyControlFlagArena,s2Step10EarlyControlFittedArena,s2Step10EarlyControlHistoryArena,s2Step10EarlyControlSigmaArena,s2Step10EarlyControlOutputArena,s2Step10EarlyControlLog⟩
theorem s2Step10EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step10EarlyControlLog.zeroWork).map Prod.snd=some (s2Step10EarlyControlLog.zeroWork,s2Step10EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step10EarlyControl_zero : compileHmrEqualityLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step10EarlyControlLog.zeroWork=some (s2Step10EarlyControlZeroArena,s2Step10EarlyControlLog.zeroWork,s2Step10EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step10EarlyControl_zeroProjection
  · ext q
    simp [s2Step10EarlyControlZeroArena,s2Step10EarlyControlArena,s2Step10EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step10EarlyControl_classProjection : (compileHmrSourceClassLog s2Step10EarlyControlZeroArena false 777 s2Step10EarlyControlZeroPlan.top 0 803 s2Step10EarlyControlLog.positiveWork s2Step10EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step10EarlyControlClassPlan.positiveWork,s2Step10EarlyControlClassPlan.equalityWork,s2Step10EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step10EarlyControl_class : compileHmrSourceClassLog s2Step10EarlyControlZeroArena false 777 s2Step10EarlyControlZeroPlan.top 0 803 s2Step10EarlyControlLog.positiveWork s2Step10EarlyControlLog.classWork=some s2Step10EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step10EarlyControl_classProjection
  · ext q
    simp [s2Step10EarlyControlClassPlan,s2Step10EarlyControlPositiveArena,s2Step10EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step10EarlyControlClassPlan,s2Step10EarlyControlEqualityArena,s2Step10EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step10EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step10EarlyControlClassPlan.equalityArena s2Step10EarlyControlClassPlan.equality.top 787 789 791 s2Step10EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step10EarlyControl_flags : compileHmrFlagsLog s2Step10EarlyControlClassPlan.equalityArena s2Step10EarlyControlClassPlan.equality.top 787 789 791 s2Step10EarlyControlLog.flagWork=some s2Step10EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step10EarlyControl_flagsProjection
  · ext q
    simp [s2Step10EarlyControlClassPlan,s2Step10EarlyControlFlagArena,s2Step10EarlyControlEqualityArena,s2Step10EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step10EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step10EarlyControlFlagArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step10EarlyControl_fit : compileHmrRecordGrowLog s2Step10EarlyControlFlagArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh=some s2Step10EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step10EarlyControl_fitProjection
  · ext q
    simp [s2Step10EarlyControlFittedArena,s2Step10EarlyControlFlagArena,s2Step10EarlyControlLog,arenaWires]
theorem s2Step10EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step10EarlyControlArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step10EarlyControl_history : compileHmrRecordGrowLog s2Step10EarlyControlArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh=some s2Step10EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step10EarlyControl_historyProjection
  · ext q
    simp [s2Step10EarlyControlHistoryArena,s2Step10EarlyControlArena,s2Step10EarlyControlLog,arenaWires]
theorem s2Step10EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step10EarlyControlHistoryArena false 0 0 785 803 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step10EarlyControl_sigma : compileHmrSigmaDropLog s2Step10EarlyControlHistoryArena false 0 0 785 803 []=some s2Step10EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step10EarlyControl_sigmaProjection
  · ext q
    simp [s2Step10EarlyControlSigmaArena,s2Step10EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step10EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step10EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step10EarlyControl_branch : compileHmrBranchRetirement s2Step10EarlyControlSigmaArena 782=some s2Step10EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step10EarlyControl_branchProjection
  · ext q
    simp [s2Step10EarlyControlSigmaArena,s2Step10EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step10EarlyControl_logged : s2Step10EarlyControlPlan.Logged s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 803 785 787 789 791 782 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step10EarlyControl_zero
  · exact s2Step10EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step10EarlyControl_flags
  · exact s2Step10EarlyControl_fit
  · exact s2Step10EarlyControl_history
  · exact s2Step10EarlyControl_sigma
  · exact s2Step10EarlyControl_branch
theorem s2Step10EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 803 785 787 789 791 782 2 s2Step10EarlyControlLog=some s2Step10EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step10EarlyControlPlan s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 803 785 787 789 791 782 2 s2Step10EarlyControl_logged
theorem s2Step10EarlyControl_checked : (compileHmrEarlyControlLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 803 785 787 789 791 782 2 s2Step10EarlyControlLog).map (fun P => P.outputArena.live.card)=some 801 := by
  rw [s2Step10EarlyControl_plan_checked]
  decide +kernel

def s2Step11EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 809) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 810) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 814)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 818)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step11EarlyControlLog : HmrEarlyControlLog := ⟨[780, 807, 781, 782, 784],[809],[810],[811, 812, 814, 815, 816, 817],[818]⟩
def s2Step11EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,784⟩]⟩
def s2Step11EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step11EarlyControlPositiveArena,[809],s2Step11EarlyControlEqualityArena,[810],⟨⟨805,false⟩,[⟨⟨809,false⟩,810⟩]⟩⟩
def s2Step11EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step11EarlyControlZeroArena,s2Step11EarlyControlZeroPlan,s2Step11EarlyControlClassPlan,s2Step11EarlyControlFlagArena,s2Step11EarlyControlFittedArena,s2Step11EarlyControlHistoryArena,s2Step11EarlyControlSigmaArena,s2Step11EarlyControlOutputArena,s2Step11EarlyControlLog⟩
theorem s2Step11EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step11EarlyControlLog.zeroWork).map Prod.snd=some (s2Step11EarlyControlLog.zeroWork,s2Step11EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step11EarlyControl_zero : compileHmrEqualityLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step11EarlyControlLog.zeroWork=some (s2Step11EarlyControlZeroArena,s2Step11EarlyControlLog.zeroWork,s2Step11EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step11EarlyControl_zeroProjection
  · ext q
    simp [s2Step11EarlyControlZeroArena,s2Step11EarlyControlArena,s2Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_classProjection : (compileHmrSourceClassLog s2Step11EarlyControlZeroArena false 777 s2Step11EarlyControlZeroPlan.top 0 805 s2Step11EarlyControlLog.positiveWork s2Step11EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step11EarlyControlClassPlan.positiveWork,s2Step11EarlyControlClassPlan.equalityWork,s2Step11EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step11EarlyControl_class : compileHmrSourceClassLog s2Step11EarlyControlZeroArena false 777 s2Step11EarlyControlZeroPlan.top 0 805 s2Step11EarlyControlLog.positiveWork s2Step11EarlyControlLog.classWork=some s2Step11EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step11EarlyControl_classProjection
  · ext q
    simp [s2Step11EarlyControlClassPlan,s2Step11EarlyControlPositiveArena,s2Step11EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step11EarlyControlClassPlan,s2Step11EarlyControlEqualityArena,s2Step11EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step11EarlyControlClassPlan.equalityArena s2Step11EarlyControlClassPlan.equality.top 787 789 791 s2Step11EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step11EarlyControl_flags : compileHmrFlagsLog s2Step11EarlyControlClassPlan.equalityArena s2Step11EarlyControlClassPlan.equality.top 787 789 791 s2Step11EarlyControlLog.flagWork=some s2Step11EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step11EarlyControl_flagsProjection
  · ext q
    simp [s2Step11EarlyControlClassPlan,s2Step11EarlyControlFlagArena,s2Step11EarlyControlEqualityArena,s2Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step11EarlyControlFlagArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step11EarlyControl_fit : compileHmrRecordGrowLog s2Step11EarlyControlFlagArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh=some s2Step11EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step11EarlyControl_fitProjection
  · ext q
    simp [s2Step11EarlyControlFittedArena,s2Step11EarlyControlFlagArena,s2Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step11EarlyControlArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step11EarlyControl_history : compileHmrRecordGrowLog s2Step11EarlyControlArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh=some s2Step11EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step11EarlyControl_historyProjection
  · ext q
    simp [s2Step11EarlyControlHistoryArena,s2Step11EarlyControlArena,s2Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step11EarlyControlHistoryArena false 0 0 785 805 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step11EarlyControl_sigma : compileHmrSigmaDropLog s2Step11EarlyControlHistoryArena false 0 0 785 805 []=some s2Step11EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step11EarlyControl_sigmaProjection
  · ext q
    simp [s2Step11EarlyControlSigmaArena,s2Step11EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step11EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step11EarlyControl_branch : compileHmrBranchRetirement s2Step11EarlyControlSigmaArena 783=some s2Step11EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step11EarlyControl_branchProjection
  · ext q
    simp [s2Step11EarlyControlSigmaArena,s2Step11EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_logged : s2Step11EarlyControlPlan.Logged s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 805 785 787 789 791 783 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step11EarlyControl_zero
  · exact s2Step11EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step11EarlyControl_flags
  · exact s2Step11EarlyControl_fit
  · exact s2Step11EarlyControl_history
  · exact s2Step11EarlyControl_sigma
  · exact s2Step11EarlyControl_branch
theorem s2Step11EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 805 785 787 789 791 783 3 s2Step11EarlyControlLog=some s2Step11EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step11EarlyControlPlan s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 805 785 787 789 791 783 3 s2Step11EarlyControl_logged
theorem s2Step11EarlyControl_checked : (compileHmrEarlyControlLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 805 785 787 789 791 783 3 s2Step11EarlyControlLog).map (fun P => P.outputArena.live.card)=some 804 := by
  rw [s2Step11EarlyControl_plan_checked]
  decide +kernel

def s2Step12EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 821)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 821)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step12EarlyControlLog : HmrEarlyControlLog := ⟨[780, 809, 784, 783, 782],[811],[812],[814, 815, 816, 817, 819, 820],[]⟩
def s2Step12EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,809⟩,⟨⟨775,false⟩,784⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,782⟩]⟩
def s2Step12EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step12EarlyControlPositiveArena,[811],s2Step12EarlyControlEqualityArena,[812],⟨⟨807,false⟩,[⟨⟨811,false⟩,812⟩]⟩⟩
def s2Step12EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step12EarlyControlZeroArena,s2Step12EarlyControlZeroPlan,s2Step12EarlyControlClassPlan,s2Step12EarlyControlFlagArena,s2Step12EarlyControlFittedArena,s2Step12EarlyControlHistoryArena,s2Step12EarlyControlSigmaArena,s2Step12EarlyControlOutputArena,s2Step12EarlyControlLog⟩
theorem s2Step12EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step12EarlyControlLog.zeroWork).map Prod.snd=some (s2Step12EarlyControlLog.zeroWork,s2Step12EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step12EarlyControl_zero : compileHmrEqualityLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step12EarlyControlLog.zeroWork=some (s2Step12EarlyControlZeroArena,s2Step12EarlyControlLog.zeroWork,s2Step12EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step12EarlyControl_zeroProjection
  · ext q
    simp [s2Step12EarlyControlZeroArena,s2Step12EarlyControlArena,s2Step12EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step12EarlyControl_classProjection : (compileHmrSourceClassLog s2Step12EarlyControlZeroArena false 777 s2Step12EarlyControlZeroPlan.top 0 807 s2Step12EarlyControlLog.positiveWork s2Step12EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step12EarlyControlClassPlan.positiveWork,s2Step12EarlyControlClassPlan.equalityWork,s2Step12EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step12EarlyControl_class : compileHmrSourceClassLog s2Step12EarlyControlZeroArena false 777 s2Step12EarlyControlZeroPlan.top 0 807 s2Step12EarlyControlLog.positiveWork s2Step12EarlyControlLog.classWork=some s2Step12EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step12EarlyControl_classProjection
  · ext q
    simp [s2Step12EarlyControlClassPlan,s2Step12EarlyControlPositiveArena,s2Step12EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step12EarlyControlClassPlan,s2Step12EarlyControlEqualityArena,s2Step12EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step12EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step12EarlyControlClassPlan.equalityArena s2Step12EarlyControlClassPlan.equality.top 787 789 791 s2Step12EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step12EarlyControl_flags : compileHmrFlagsLog s2Step12EarlyControlClassPlan.equalityArena s2Step12EarlyControlClassPlan.equality.top 787 789 791 s2Step12EarlyControlLog.flagWork=some s2Step12EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step12EarlyControl_flagsProjection
  · ext q
    simp [s2Step12EarlyControlClassPlan,s2Step12EarlyControlFlagArena,s2Step12EarlyControlEqualityArena,s2Step12EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step12EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step12EarlyControlFlagArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step12EarlyControl_fit : compileHmrRecordGrowLog s2Step12EarlyControlFlagArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh=some s2Step12EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step12EarlyControl_fitProjection
  · ext q
    simp [s2Step12EarlyControlFittedArena,s2Step12EarlyControlFlagArena,s2Step12EarlyControlLog,arenaWires]
theorem s2Step12EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step12EarlyControlArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step12EarlyControl_history : compileHmrRecordGrowLog s2Step12EarlyControlArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh=some s2Step12EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step12EarlyControl_historyProjection
  · ext q
    simp [s2Step12EarlyControlHistoryArena,s2Step12EarlyControlArena,s2Step12EarlyControlLog,arenaWires]
theorem s2Step12EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step12EarlyControlHistoryArena false 0 0 785 807 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step12EarlyControl_sigma : compileHmrSigmaDropLog s2Step12EarlyControlHistoryArena false 0 0 785 807 []=some s2Step12EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step12EarlyControl_sigmaProjection
  · ext q
    simp [s2Step12EarlyControlSigmaArena,s2Step12EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step12EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step12EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step12EarlyControl_branch : compileHmrBranchRetirement s2Step12EarlyControlSigmaArena 781=some s2Step12EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step12EarlyControl_branchProjection
  · ext q
    simp [s2Step12EarlyControlSigmaArena,s2Step12EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step12EarlyControl_logged : s2Step12EarlyControlPlan.Logged s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 807 785 787 789 791 781 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step12EarlyControl_zero
  · exact s2Step12EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step12EarlyControl_flags
  · exact s2Step12EarlyControl_fit
  · exact s2Step12EarlyControl_history
  · exact s2Step12EarlyControl_sigma
  · exact s2Step12EarlyControl_branch
theorem s2Step12EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 807 785 787 789 791 781 3 s2Step12EarlyControlLog=some s2Step12EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step12EarlyControlPlan s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 807 785 787 789 791 781 3 s2Step12EarlyControl_logged
theorem s2Step12EarlyControl_checked : (compileHmrEarlyControlLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 807 785 787 789 791 781 3 s2Step12EarlyControlLog).map (fun P => P.outputArena.live.card)=some 806 := by
  rw [s2Step12EarlyControl_plan_checked]
  decide +kernel

def s2Step13EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 811) ∨ (812 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 823)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 811) ∨ (812 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 811) ∨ (812 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 811) ∨ (812 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step13EarlyControlLog : HmrEarlyControlLog := ⟨[780, 811, 782, 781, 783],[814],[815],[816, 817, 819, 820, 821, 822],[823]⟩
def s2Step13EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,811⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step13EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step13EarlyControlPositiveArena,[814],s2Step13EarlyControlEqualityArena,[815],⟨⟨809,false⟩,[⟨⟨814,false⟩,815⟩]⟩⟩
def s2Step13EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step13EarlyControlZeroArena,s2Step13EarlyControlZeroPlan,s2Step13EarlyControlClassPlan,s2Step13EarlyControlFlagArena,s2Step13EarlyControlFittedArena,s2Step13EarlyControlHistoryArena,s2Step13EarlyControlSigmaArena,s2Step13EarlyControlOutputArena,s2Step13EarlyControlLog⟩
theorem s2Step13EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step13EarlyControlLog.zeroWork).map Prod.snd=some (s2Step13EarlyControlLog.zeroWork,s2Step13EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step13EarlyControl_zero : compileHmrEqualityLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step13EarlyControlLog.zeroWork=some (s2Step13EarlyControlZeroArena,s2Step13EarlyControlLog.zeroWork,s2Step13EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step13EarlyControl_zeroProjection
  · ext q
    simp [s2Step13EarlyControlZeroArena,s2Step13EarlyControlArena,s2Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_classProjection : (compileHmrSourceClassLog s2Step13EarlyControlZeroArena false 777 s2Step13EarlyControlZeroPlan.top 0 809 s2Step13EarlyControlLog.positiveWork s2Step13EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step13EarlyControlClassPlan.positiveWork,s2Step13EarlyControlClassPlan.equalityWork,s2Step13EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step13EarlyControl_class : compileHmrSourceClassLog s2Step13EarlyControlZeroArena false 777 s2Step13EarlyControlZeroPlan.top 0 809 s2Step13EarlyControlLog.positiveWork s2Step13EarlyControlLog.classWork=some s2Step13EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step13EarlyControl_classProjection
  · ext q
    simp [s2Step13EarlyControlClassPlan,s2Step13EarlyControlPositiveArena,s2Step13EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step13EarlyControlClassPlan,s2Step13EarlyControlEqualityArena,s2Step13EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step13EarlyControlClassPlan.equalityArena s2Step13EarlyControlClassPlan.equality.top 787 789 791 s2Step13EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step13EarlyControl_flags : compileHmrFlagsLog s2Step13EarlyControlClassPlan.equalityArena s2Step13EarlyControlClassPlan.equality.top 787 789 791 s2Step13EarlyControlLog.flagWork=some s2Step13EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step13EarlyControl_flagsProjection
  · ext q
    simp [s2Step13EarlyControlClassPlan,s2Step13EarlyControlFlagArena,s2Step13EarlyControlEqualityArena,s2Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step13EarlyControlFlagArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step13EarlyControl_fit : compileHmrRecordGrowLog s2Step13EarlyControlFlagArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh=some s2Step13EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step13EarlyControl_fitProjection
  · ext q
    simp [s2Step13EarlyControlFittedArena,s2Step13EarlyControlFlagArena,s2Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step13EarlyControlArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step13EarlyControl_history : compileHmrRecordGrowLog s2Step13EarlyControlArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh=some s2Step13EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step13EarlyControl_historyProjection
  · ext q
    simp [s2Step13EarlyControlHistoryArena,s2Step13EarlyControlArena,s2Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step13EarlyControlHistoryArena false 0 0 785 809 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step13EarlyControl_sigma : compileHmrSigmaDropLog s2Step13EarlyControlHistoryArena false 0 0 785 809 []=some s2Step13EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step13EarlyControl_sigmaProjection
  · ext q
    simp [s2Step13EarlyControlSigmaArena,s2Step13EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step13EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step13EarlyControl_branch : compileHmrBranchRetirement s2Step13EarlyControlSigmaArena 784=some s2Step13EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step13EarlyControl_branchProjection
  · ext q
    simp [s2Step13EarlyControlSigmaArena,s2Step13EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_logged : s2Step13EarlyControlPlan.Logged s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 809 785 787 789 791 784 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step13EarlyControl_zero
  · exact s2Step13EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step13EarlyControl_flags
  · exact s2Step13EarlyControl_fit
  · exact s2Step13EarlyControl_history
  · exact s2Step13EarlyControl_sigma
  · exact s2Step13EarlyControl_branch
theorem s2Step13EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 809 785 787 789 791 784 4 s2Step13EarlyControlLog=some s2Step13EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step13EarlyControlPlan s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 809 785 787 789 791 784 4 s2Step13EarlyControl_logged
theorem s2Step13EarlyControl_checked : (compileHmrEarlyControlLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 809 785 787 789 791 784 4 s2Step13EarlyControlLog).map (fun P => P.outputArena.live.card)=some 809 := by
  rw [s2Step13EarlyControl_plan_checked]
  decide +kernel

def s2Step14EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 826)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 826)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 811) ∨ (812 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 811) ∨ (812 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step14EarlyControlLog : HmrEarlyControlLog := ⟨[780, 814, 783, 784, 781],[816],[817],[819, 820, 821, 822, 824, 825],[]⟩
def s2Step14EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step14EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step14EarlyControlPositiveArena,[816],s2Step14EarlyControlEqualityArena,[817],⟨⟨811,false⟩,[⟨⟨816,false⟩,817⟩]⟩⟩
def s2Step14EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step14EarlyControlZeroArena,s2Step14EarlyControlZeroPlan,s2Step14EarlyControlClassPlan,s2Step14EarlyControlFlagArena,s2Step14EarlyControlFittedArena,s2Step14EarlyControlHistoryArena,s2Step14EarlyControlSigmaArena,s2Step14EarlyControlOutputArena,s2Step14EarlyControlLog⟩
theorem s2Step14EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step14EarlyControlLog.zeroWork).map Prod.snd=some (s2Step14EarlyControlLog.zeroWork,s2Step14EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step14EarlyControl_zero : compileHmrEqualityLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step14EarlyControlLog.zeroWork=some (s2Step14EarlyControlZeroArena,s2Step14EarlyControlLog.zeroWork,s2Step14EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step14EarlyControl_zeroProjection
  · ext q
    simp [s2Step14EarlyControlZeroArena,s2Step14EarlyControlArena,s2Step14EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step14EarlyControl_classProjection : (compileHmrSourceClassLog s2Step14EarlyControlZeroArena false 777 s2Step14EarlyControlZeroPlan.top 0 811 s2Step14EarlyControlLog.positiveWork s2Step14EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step14EarlyControlClassPlan.positiveWork,s2Step14EarlyControlClassPlan.equalityWork,s2Step14EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step14EarlyControl_class : compileHmrSourceClassLog s2Step14EarlyControlZeroArena false 777 s2Step14EarlyControlZeroPlan.top 0 811 s2Step14EarlyControlLog.positiveWork s2Step14EarlyControlLog.classWork=some s2Step14EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step14EarlyControl_classProjection
  · ext q
    simp [s2Step14EarlyControlClassPlan,s2Step14EarlyControlPositiveArena,s2Step14EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step14EarlyControlClassPlan,s2Step14EarlyControlEqualityArena,s2Step14EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step14EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step14EarlyControlClassPlan.equalityArena s2Step14EarlyControlClassPlan.equality.top 787 789 791 s2Step14EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step14EarlyControl_flags : compileHmrFlagsLog s2Step14EarlyControlClassPlan.equalityArena s2Step14EarlyControlClassPlan.equality.top 787 789 791 s2Step14EarlyControlLog.flagWork=some s2Step14EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step14EarlyControl_flagsProjection
  · ext q
    simp [s2Step14EarlyControlClassPlan,s2Step14EarlyControlFlagArena,s2Step14EarlyControlEqualityArena,s2Step14EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step14EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step14EarlyControlFlagArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step14EarlyControl_fit : compileHmrRecordGrowLog s2Step14EarlyControlFlagArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh=some s2Step14EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step14EarlyControl_fitProjection
  · ext q
    simp [s2Step14EarlyControlFittedArena,s2Step14EarlyControlFlagArena,s2Step14EarlyControlLog,arenaWires]
theorem s2Step14EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step14EarlyControlArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step14EarlyControl_history : compileHmrRecordGrowLog s2Step14EarlyControlArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh=some s2Step14EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step14EarlyControl_historyProjection
  · ext q
    simp [s2Step14EarlyControlHistoryArena,s2Step14EarlyControlArena,s2Step14EarlyControlLog,arenaWires]
theorem s2Step14EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step14EarlyControlHistoryArena false 0 0 785 811 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step14EarlyControl_sigma : compileHmrSigmaDropLog s2Step14EarlyControlHistoryArena false 0 0 785 811 []=some s2Step14EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step14EarlyControl_sigmaProjection
  · ext q
    simp [s2Step14EarlyControlSigmaArena,s2Step14EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step14EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step14EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step14EarlyControl_branch : compileHmrBranchRetirement s2Step14EarlyControlSigmaArena 782=some s2Step14EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step14EarlyControl_branchProjection
  · ext q
    simp [s2Step14EarlyControlSigmaArena,s2Step14EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step14EarlyControl_logged : s2Step14EarlyControlPlan.Logged s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 811 785 787 789 791 782 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step14EarlyControl_zero
  · exact s2Step14EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step14EarlyControl_flags
  · exact s2Step14EarlyControl_fit
  · exact s2Step14EarlyControl_history
  · exact s2Step14EarlyControl_sigma
  · exact s2Step14EarlyControl_branch
theorem s2Step14EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 811 785 787 789 791 782 4 s2Step14EarlyControlLog=some s2Step14EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step14EarlyControlPlan s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 811 785 787 789 791 782 4 s2Step14EarlyControl_logged
theorem s2Step14EarlyControl_checked : (compileHmrEarlyControlLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 811 785 787 789 791 782 4 s2Step14EarlyControlLog).map (fun P => P.outputArena.live.card)=some 811 := by
  rw [s2Step14EarlyControl_plan_checked]
  decide +kernel

def s2Step15EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 820) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 824)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 828)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step15EarlyControlLog : HmrEarlyControlLog := ⟨[780, 816, 781, 782, 784],[819],[820],[821, 822, 824, 825, 826, 827],[828]⟩
def s2Step15EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,816⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,784⟩]⟩
def s2Step15EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step15EarlyControlPositiveArena,[819],s2Step15EarlyControlEqualityArena,[820],⟨⟨814,false⟩,[⟨⟨819,false⟩,820⟩]⟩⟩
def s2Step15EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step15EarlyControlZeroArena,s2Step15EarlyControlZeroPlan,s2Step15EarlyControlClassPlan,s2Step15EarlyControlFlagArena,s2Step15EarlyControlFittedArena,s2Step15EarlyControlHistoryArena,s2Step15EarlyControlSigmaArena,s2Step15EarlyControlOutputArena,s2Step15EarlyControlLog⟩
theorem s2Step15EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step15EarlyControlLog.zeroWork).map Prod.snd=some (s2Step15EarlyControlLog.zeroWork,s2Step15EarlyControlZeroPlan) := by
  decide +kernel
theorem s2Step15EarlyControl_zero : compileHmrEqualityLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step15EarlyControlLog.zeroWork=some (s2Step15EarlyControlZeroArena,s2Step15EarlyControlLog.zeroWork,s2Step15EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s2Step15EarlyControl_zeroProjection
  · ext q
    simp [s2Step15EarlyControlZeroArena,s2Step15EarlyControlArena,s2Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_classProjection : (compileHmrSourceClassLog s2Step15EarlyControlZeroArena false 777 s2Step15EarlyControlZeroPlan.top 0 814 s2Step15EarlyControlLog.positiveWork s2Step15EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step15EarlyControlClassPlan.positiveWork,s2Step15EarlyControlClassPlan.equalityWork,s2Step15EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s2Step15EarlyControl_class : compileHmrSourceClassLog s2Step15EarlyControlZeroArena false 777 s2Step15EarlyControlZeroPlan.top 0 814 s2Step15EarlyControlLog.positiveWork s2Step15EarlyControlLog.classWork=some s2Step15EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s2Step15EarlyControl_classProjection
  · ext q
    simp [s2Step15EarlyControlClassPlan,s2Step15EarlyControlPositiveArena,s2Step15EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s2Step15EarlyControlClassPlan,s2Step15EarlyControlEqualityArena,s2Step15EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step15EarlyControlClassPlan.equalityArena s2Step15EarlyControlClassPlan.equality.top 787 789 791 s2Step15EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step15EarlyControl_flags : compileHmrFlagsLog s2Step15EarlyControlClassPlan.equalityArena s2Step15EarlyControlClassPlan.equality.top 787 789 791 s2Step15EarlyControlLog.flagWork=some s2Step15EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s2Step15EarlyControl_flagsProjection
  · ext q
    simp [s2Step15EarlyControlClassPlan,s2Step15EarlyControlFlagArena,s2Step15EarlyControlEqualityArena,s2Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step15EarlyControlFlagArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step15EarlyControl_fit : compileHmrRecordGrowLog s2Step15EarlyControlFlagArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh=some s2Step15EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step15EarlyControl_fitProjection
  · ext q
    simp [s2Step15EarlyControlFittedArena,s2Step15EarlyControlFlagArena,s2Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step15EarlyControlArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step15EarlyControl_history : compileHmrRecordGrowLog s2Step15EarlyControlArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh=some s2Step15EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s2Step15EarlyControl_historyProjection
  · ext q
    simp [s2Step15EarlyControlHistoryArena,s2Step15EarlyControlArena,s2Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step15EarlyControlHistoryArena false 0 0 785 814 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step15EarlyControl_sigma : compileHmrSigmaDropLog s2Step15EarlyControlHistoryArena false 0 0 785 814 []=some s2Step15EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s2Step15EarlyControl_sigmaProjection
  · ext q
    simp [s2Step15EarlyControlSigmaArena,s2Step15EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step15EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  decide +kernel
theorem s2Step15EarlyControl_branch : compileHmrBranchRetirement s2Step15EarlyControlSigmaArena 783=some s2Step15EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s2Step15EarlyControl_branchProjection
  · ext q
    simp [s2Step15EarlyControlSigmaArena,s2Step15EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_logged : s2Step15EarlyControlPlan.Logged s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 814 785 787 789 791 783 5 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step15EarlyControl_zero
  · exact s2Step15EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step15EarlyControl_flags
  · exact s2Step15EarlyControl_fit
  · exact s2Step15EarlyControl_history
  · exact s2Step15EarlyControl_sigma
  · exact s2Step15EarlyControl_branch
theorem s2Step15EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 814 785 787 789 791 783 5 s2Step15EarlyControlLog=some s2Step15EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step15EarlyControlPlan s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 814 785 787 789 791 783 5 s2Step15EarlyControl_logged
theorem s2Step15EarlyControl_checked : (compileHmrEarlyControlLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 814 785 787 789 791 783 5 s2Step15EarlyControlLog).map (fun P => P.outputArena.live.card)=some 814 := by
  rw [s2Step15EarlyControl_plan_checked]
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

def s6Step2EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (859 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (859 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (859 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step2EarlyControlLog : HmrEarlyControlLog := ⟨[887, 927, 807, 860, 813],[875],[779],[868, 857, 907, 858, 908, 845],[]⟩
def s6Step2EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,927⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step2EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step2EarlyControlPositiveArena,[875],s6Step2EarlyControlEqualityArena,[779],⟨⟨874,false⟩,[⟨⟨875,false⟩,779⟩]⟩⟩
def s6Step2EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step2EarlyControlZeroArena,s6Step2EarlyControlZeroPlan,s6Step2EarlyControlClassPlan,s6Step2EarlyControlFlagArena,s6Step2EarlyControlFittedArena,s6Step2EarlyControlHistoryArena,s6Step2EarlyControlSigmaArena,s6Step2EarlyControlOutputArena,s6Step2EarlyControlLog⟩
theorem s6Step2EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step2EarlyControlLog.zeroWork).map Prod.snd=some (s6Step2EarlyControlLog.zeroWork,s6Step2EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step2EarlyControl_zero : compileHmrEqualityLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step2EarlyControlLog.zeroWork=some (s6Step2EarlyControlZeroArena,s6Step2EarlyControlLog.zeroWork,s6Step2EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step2EarlyControl_zeroProjection
  · ext q
    simp [s6Step2EarlyControlZeroArena,s6Step2EarlyControlArena,s6Step2EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step2EarlyControl_classProjection : (compileHmrSourceClassLog s6Step2EarlyControlZeroArena false 769 s6Step2EarlyControlZeroPlan.top 0 874 s6Step2EarlyControlLog.positiveWork s6Step2EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step2EarlyControlClassPlan.positiveWork,s6Step2EarlyControlClassPlan.equalityWork,s6Step2EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step2EarlyControl_class : compileHmrSourceClassLog s6Step2EarlyControlZeroArena false 769 s6Step2EarlyControlZeroPlan.top 0 874 s6Step2EarlyControlLog.positiveWork s6Step2EarlyControlLog.classWork=some s6Step2EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step2EarlyControl_classProjection
  · ext q
    simp [s6Step2EarlyControlClassPlan,s6Step2EarlyControlPositiveArena,s6Step2EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step2EarlyControlClassPlan,s6Step2EarlyControlEqualityArena,s6Step2EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step2EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step2EarlyControlClassPlan.equalityArena s6Step2EarlyControlClassPlan.equality.top 793 802 776 s6Step2EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step2EarlyControl_flags : compileHmrFlagsLog s6Step2EarlyControlClassPlan.equalityArena s6Step2EarlyControlClassPlan.equality.top 793 802 776 s6Step2EarlyControlLog.flagWork=some s6Step2EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step2EarlyControl_flagsProjection
  · ext q
    simp [s6Step2EarlyControlClassPlan,s6Step2EarlyControlFlagArena,s6Step2EarlyControlEqualityArena,s6Step2EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step2EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step2EarlyControlFlagArena [895] 1 s6Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step2EarlyControl_fit : compileHmrRecordGrowLog s6Step2EarlyControlFlagArena [895] 1 s6Step2EarlyControlLog.recordFresh=some s6Step2EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step2EarlyControl_fitProjection
  · ext q
    simp [s6Step2EarlyControlFittedArena,s6Step2EarlyControlFlagArena,s6Step2EarlyControlLog,arenaWires]
theorem s6Step2EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step2EarlyControlArena [895] 1 s6Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step2EarlyControl_history : compileHmrRecordGrowLog s6Step2EarlyControlArena [895] 1 s6Step2EarlyControlLog.recordFresh=some s6Step2EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step2EarlyControl_historyProjection
  · ext q
    simp [s6Step2EarlyControlHistoryArena,s6Step2EarlyControlArena,s6Step2EarlyControlLog,arenaWires]
theorem s6Step2EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step2EarlyControlHistoryArena false 0 0 876 874 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step2EarlyControl_sigma : compileHmrSigmaDropLog s6Step2EarlyControlHistoryArena false 0 0 876 874 []=some s6Step2EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step2EarlyControl_sigmaProjection
  · ext q
    simp [s6Step2EarlyControlSigmaArena,s6Step2EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step2EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step2EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step2EarlyControl_branch : compileHmrBranchRetirement s6Step2EarlyControlSigmaArena 862=some s6Step2EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step2EarlyControl_branchProjection
  · ext q
    simp [s6Step2EarlyControlSigmaArena,s6Step2EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step2EarlyControl_logged : s6Step2EarlyControlPlan.Logged s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 874 876 793 802 776 862 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step2EarlyControl_zero
  · exact s6Step2EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step2EarlyControl_flags
  · exact s6Step2EarlyControl_fit
  · exact s6Step2EarlyControl_history
  · exact s6Step2EarlyControl_sigma
  · exact s6Step2EarlyControl_branch
theorem s6Step2EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 874 876 793 802 776 862 1 s6Step2EarlyControlLog=some s6Step2EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step2EarlyControlPlan s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 874 876 793 802 776 862 1 s6Step2EarlyControl_logged
theorem s6Step2EarlyControl_checked : (compileHmrEarlyControlLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 874 876 793 802 776 862 1 s6Step2EarlyControlLog).map (fun P => P.outputArena.live.card)=some 784 := by
  rw [s6Step2EarlyControl_plan_checked]
  decide +kernel

def s6Step3EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896)),Finset.filter_subset _ _⟩

def s6Step3EarlyControlLog : HmrEarlyControlLog := ⟨[887, 875, 813, 862, 860],[868],[857],[907, 858, 908, 845, 890, 805],[]⟩
def s6Step3EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,860⟩]⟩
def s6Step3EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step3EarlyControlPositiveArena,[868],s6Step3EarlyControlEqualityArena,[857],⟨⟨927,false⟩,[⟨⟨868,false⟩,857⟩]⟩⟩
def s6Step3EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step3EarlyControlZeroArena,s6Step3EarlyControlZeroPlan,s6Step3EarlyControlClassPlan,s6Step3EarlyControlFlagArena,s6Step3EarlyControlFittedArena,s6Step3EarlyControlHistoryArena,s6Step3EarlyControlSigmaArena,s6Step3EarlyControlOutputArena,s6Step3EarlyControlLog⟩
theorem s6Step3EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step3EarlyControlLog.zeroWork).map Prod.snd=some (s6Step3EarlyControlLog.zeroWork,s6Step3EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step3EarlyControl_zero : compileHmrEqualityLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step3EarlyControlLog.zeroWork=some (s6Step3EarlyControlZeroArena,s6Step3EarlyControlLog.zeroWork,s6Step3EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step3EarlyControl_zeroProjection
  · ext q
    simp [s6Step3EarlyControlZeroArena,s6Step3EarlyControlArena,s6Step3EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step3EarlyControl_classProjection : (compileHmrSourceClassLog s6Step3EarlyControlZeroArena false 769 s6Step3EarlyControlZeroPlan.top 0 927 s6Step3EarlyControlLog.positiveWork s6Step3EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step3EarlyControlClassPlan.positiveWork,s6Step3EarlyControlClassPlan.equalityWork,s6Step3EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step3EarlyControl_class : compileHmrSourceClassLog s6Step3EarlyControlZeroArena false 769 s6Step3EarlyControlZeroPlan.top 0 927 s6Step3EarlyControlLog.positiveWork s6Step3EarlyControlLog.classWork=some s6Step3EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step3EarlyControl_classProjection
  · ext q
    simp [s6Step3EarlyControlClassPlan,s6Step3EarlyControlPositiveArena,s6Step3EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step3EarlyControlClassPlan,s6Step3EarlyControlEqualityArena,s6Step3EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step3EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step3EarlyControlClassPlan.equalityArena s6Step3EarlyControlClassPlan.equality.top 793 802 779 s6Step3EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step3EarlyControl_flags : compileHmrFlagsLog s6Step3EarlyControlClassPlan.equalityArena s6Step3EarlyControlClassPlan.equality.top 793 802 779 s6Step3EarlyControlLog.flagWork=some s6Step3EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step3EarlyControl_flagsProjection
  · ext q
    simp [s6Step3EarlyControlClassPlan,s6Step3EarlyControlFlagArena,s6Step3EarlyControlEqualityArena,s6Step3EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step3EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step3EarlyControlFlagArena [895] 1 s6Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step3EarlyControl_fit : compileHmrRecordGrowLog s6Step3EarlyControlFlagArena [895] 1 s6Step3EarlyControlLog.recordFresh=some s6Step3EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step3EarlyControl_fitProjection
  · ext q
    simp [s6Step3EarlyControlFittedArena,s6Step3EarlyControlFlagArena,s6Step3EarlyControlLog,arenaWires]
theorem s6Step3EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step3EarlyControlArena [895] 1 s6Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step3EarlyControl_history : compileHmrRecordGrowLog s6Step3EarlyControlArena [895] 1 s6Step3EarlyControlLog.recordFresh=some s6Step3EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step3EarlyControl_historyProjection
  · ext q
    simp [s6Step3EarlyControlHistoryArena,s6Step3EarlyControlArena,s6Step3EarlyControlLog,arenaWires]
theorem s6Step3EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step3EarlyControlHistoryArena false 0 0 876 927 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step3EarlyControl_sigma : compileHmrSigmaDropLog s6Step3EarlyControlHistoryArena false 0 0 876 927 []=some s6Step3EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step3EarlyControl_sigmaProjection
  · ext q
    simp [s6Step3EarlyControlSigmaArena,s6Step3EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step3EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step3EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step3EarlyControl_branch : compileHmrBranchRetirement s6Step3EarlyControlSigmaArena 807=some s6Step3EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step3EarlyControl_branchProjection
  · ext q
    simp [s6Step3EarlyControlSigmaArena,s6Step3EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step3EarlyControl_logged : s6Step3EarlyControlPlan.Logged s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 927 876 793 802 779 807 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step3EarlyControl_zero
  · exact s6Step3EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step3EarlyControl_flags
  · exact s6Step3EarlyControl_fit
  · exact s6Step3EarlyControl_history
  · exact s6Step3EarlyControl_sigma
  · exact s6Step3EarlyControl_branch
theorem s6Step3EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 927 876 793 802 779 807 1 s6Step3EarlyControlLog=some s6Step3EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step3EarlyControlPlan s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 927 876 793 802 779 807 1 s6Step3EarlyControl_logged
theorem s6Step3EarlyControl_checked : (compileHmrEarlyControlLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 927 876 793 802 779 807 1 s6Step3EarlyControlLog).map (fun P => P.outputArena.live.card)=some 786 := by
  rw [s6Step3EarlyControl_plan_checked]
  decide +kernel

def s6Step4EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step4EarlyControlLog : HmrEarlyControlLog := ⟨[887, 868, 860, 807, 862],[907],[858],[908, 845, 890, 805, 873, 796],[]⟩
def s6Step4EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,868⟩,⟨⟨771,false⟩,860⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,862⟩]⟩
def s6Step4EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step4EarlyControlPositiveArena,[907],s6Step4EarlyControlEqualityArena,[858],⟨⟨875,false⟩,[⟨⟨907,false⟩,858⟩]⟩⟩
def s6Step4EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step4EarlyControlZeroArena,s6Step4EarlyControlZeroPlan,s6Step4EarlyControlClassPlan,s6Step4EarlyControlFlagArena,s6Step4EarlyControlFittedArena,s6Step4EarlyControlHistoryArena,s6Step4EarlyControlSigmaArena,s6Step4EarlyControlOutputArena,s6Step4EarlyControlLog⟩
theorem s6Step4EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step4EarlyControlLog.zeroWork).map Prod.snd=some (s6Step4EarlyControlLog.zeroWork,s6Step4EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step4EarlyControl_zero : compileHmrEqualityLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step4EarlyControlLog.zeroWork=some (s6Step4EarlyControlZeroArena,s6Step4EarlyControlLog.zeroWork,s6Step4EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step4EarlyControl_zeroProjection
  · ext q
    simp [s6Step4EarlyControlZeroArena,s6Step4EarlyControlArena,s6Step4EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step4EarlyControl_classProjection : (compileHmrSourceClassLog s6Step4EarlyControlZeroArena false 769 s6Step4EarlyControlZeroPlan.top 0 875 s6Step4EarlyControlLog.positiveWork s6Step4EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step4EarlyControlClassPlan.positiveWork,s6Step4EarlyControlClassPlan.equalityWork,s6Step4EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step4EarlyControl_class : compileHmrSourceClassLog s6Step4EarlyControlZeroArena false 769 s6Step4EarlyControlZeroPlan.top 0 875 s6Step4EarlyControlLog.positiveWork s6Step4EarlyControlLog.classWork=some s6Step4EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step4EarlyControl_classProjection
  · ext q
    simp [s6Step4EarlyControlClassPlan,s6Step4EarlyControlPositiveArena,s6Step4EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step4EarlyControlClassPlan,s6Step4EarlyControlEqualityArena,s6Step4EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step4EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step4EarlyControlClassPlan.equalityArena s6Step4EarlyControlClassPlan.equality.top 793 802 779 s6Step4EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step4EarlyControl_flags : compileHmrFlagsLog s6Step4EarlyControlClassPlan.equalityArena s6Step4EarlyControlClassPlan.equality.top 793 802 779 s6Step4EarlyControlLog.flagWork=some s6Step4EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step4EarlyControl_flagsProjection
  · ext q
    simp [s6Step4EarlyControlClassPlan,s6Step4EarlyControlFlagArena,s6Step4EarlyControlEqualityArena,s6Step4EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step4EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step4EarlyControlFlagArena [895] 1 s6Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step4EarlyControl_fit : compileHmrRecordGrowLog s6Step4EarlyControlFlagArena [895] 1 s6Step4EarlyControlLog.recordFresh=some s6Step4EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step4EarlyControl_fitProjection
  · ext q
    simp [s6Step4EarlyControlFittedArena,s6Step4EarlyControlFlagArena,s6Step4EarlyControlLog,arenaWires]
theorem s6Step4EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step4EarlyControlArena [895] 1 s6Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step4EarlyControl_history : compileHmrRecordGrowLog s6Step4EarlyControlArena [895] 1 s6Step4EarlyControlLog.recordFresh=some s6Step4EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step4EarlyControl_historyProjection
  · ext q
    simp [s6Step4EarlyControlHistoryArena,s6Step4EarlyControlArena,s6Step4EarlyControlLog,arenaWires]
theorem s6Step4EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step4EarlyControlHistoryArena false 0 0 876 875 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step4EarlyControl_sigma : compileHmrSigmaDropLog s6Step4EarlyControlHistoryArena false 0 0 876 875 []=some s6Step4EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step4EarlyControl_sigmaProjection
  · ext q
    simp [s6Step4EarlyControlSigmaArena,s6Step4EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step4EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step4EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step4EarlyControl_branch : compileHmrBranchRetirement s6Step4EarlyControlSigmaArena 813=some s6Step4EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step4EarlyControl_branchProjection
  · ext q
    simp [s6Step4EarlyControlSigmaArena,s6Step4EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step4EarlyControl_logged : s6Step4EarlyControlPlan.Logged s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 875 876 793 802 779 813 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step4EarlyControl_zero
  · exact s6Step4EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step4EarlyControl_flags
  · exact s6Step4EarlyControl_fit
  · exact s6Step4EarlyControl_history
  · exact s6Step4EarlyControl_sigma
  · exact s6Step4EarlyControl_branch
theorem s6Step4EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 875 876 793 802 779 813 1 s6Step4EarlyControlLog=some s6Step4EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step4EarlyControlPlan s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 875 876 793 802 779 813 1 s6Step4EarlyControl_logged
theorem s6Step4EarlyControl_checked : (compileHmrEarlyControlLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 875 876 793 802 779 813 1 s6Step4EarlyControlLog).map (fun P => P.outputArena.live.card)=some 788 := by
  rw [s6Step4EarlyControl_plan_checked]
  decide +kernel

def s6Step5EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (857 ≤ q ∧ q < 861) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (857 ≤ q ∧ q < 861) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (857 ≤ q ∧ q < 861) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (857 ≤ q ∧ q < 860) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step5EarlyControlLog : HmrEarlyControlLog := ⟨[887, 907, 862, 813, 807],[908],[845],[890, 805, 873, 796, 863, 856],[]⟩
def s6Step5EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step5EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step5EarlyControlPositiveArena,[908],s6Step5EarlyControlEqualityArena,[845],⟨⟨868,false⟩,[⟨⟨908,false⟩,845⟩]⟩⟩
def s6Step5EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step5EarlyControlZeroArena,s6Step5EarlyControlZeroPlan,s6Step5EarlyControlClassPlan,s6Step5EarlyControlFlagArena,s6Step5EarlyControlFittedArena,s6Step5EarlyControlHistoryArena,s6Step5EarlyControlSigmaArena,s6Step5EarlyControlOutputArena,s6Step5EarlyControlLog⟩
theorem s6Step5EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step5EarlyControlLog.zeroWork).map Prod.snd=some (s6Step5EarlyControlLog.zeroWork,s6Step5EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step5EarlyControl_zero : compileHmrEqualityLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step5EarlyControlLog.zeroWork=some (s6Step5EarlyControlZeroArena,s6Step5EarlyControlLog.zeroWork,s6Step5EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step5EarlyControl_zeroProjection
  · ext q
    simp [s6Step5EarlyControlZeroArena,s6Step5EarlyControlArena,s6Step5EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step5EarlyControl_classProjection : (compileHmrSourceClassLog s6Step5EarlyControlZeroArena false 769 s6Step5EarlyControlZeroPlan.top 0 868 s6Step5EarlyControlLog.positiveWork s6Step5EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step5EarlyControlClassPlan.positiveWork,s6Step5EarlyControlClassPlan.equalityWork,s6Step5EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step5EarlyControl_class : compileHmrSourceClassLog s6Step5EarlyControlZeroArena false 769 s6Step5EarlyControlZeroPlan.top 0 868 s6Step5EarlyControlLog.positiveWork s6Step5EarlyControlLog.classWork=some s6Step5EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step5EarlyControl_classProjection
  · ext q
    simp [s6Step5EarlyControlClassPlan,s6Step5EarlyControlPositiveArena,s6Step5EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step5EarlyControlClassPlan,s6Step5EarlyControlEqualityArena,s6Step5EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step5EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step5EarlyControlClassPlan.equalityArena s6Step5EarlyControlClassPlan.equality.top 793 802 779 s6Step5EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step5EarlyControl_flags : compileHmrFlagsLog s6Step5EarlyControlClassPlan.equalityArena s6Step5EarlyControlClassPlan.equality.top 793 802 779 s6Step5EarlyControlLog.flagWork=some s6Step5EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step5EarlyControl_flagsProjection
  · ext q
    simp [s6Step5EarlyControlClassPlan,s6Step5EarlyControlFlagArena,s6Step5EarlyControlEqualityArena,s6Step5EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step5EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step5EarlyControlFlagArena [895] 1 s6Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step5EarlyControl_fit : compileHmrRecordGrowLog s6Step5EarlyControlFlagArena [895] 1 s6Step5EarlyControlLog.recordFresh=some s6Step5EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step5EarlyControl_fitProjection
  · ext q
    simp [s6Step5EarlyControlFittedArena,s6Step5EarlyControlFlagArena,s6Step5EarlyControlLog,arenaWires]
theorem s6Step5EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step5EarlyControlArena [895] 1 s6Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step5EarlyControl_history : compileHmrRecordGrowLog s6Step5EarlyControlArena [895] 1 s6Step5EarlyControlLog.recordFresh=some s6Step5EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step5EarlyControl_historyProjection
  · ext q
    simp [s6Step5EarlyControlHistoryArena,s6Step5EarlyControlArena,s6Step5EarlyControlLog,arenaWires]
theorem s6Step5EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step5EarlyControlHistoryArena false 0 0 876 868 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step5EarlyControl_sigma : compileHmrSigmaDropLog s6Step5EarlyControlHistoryArena false 0 0 876 868 []=some s6Step5EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step5EarlyControl_sigmaProjection
  · ext q
    simp [s6Step5EarlyControlSigmaArena,s6Step5EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step5EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step5EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step5EarlyControl_branch : compileHmrBranchRetirement s6Step5EarlyControlSigmaArena 860=some s6Step5EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step5EarlyControl_branchProjection
  · ext q
    simp [s6Step5EarlyControlSigmaArena,s6Step5EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step5EarlyControl_logged : s6Step5EarlyControlPlan.Logged s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 868 876 793 802 779 860 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step5EarlyControl_zero
  · exact s6Step5EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step5EarlyControl_flags
  · exact s6Step5EarlyControl_fit
  · exact s6Step5EarlyControl_history
  · exact s6Step5EarlyControl_sigma
  · exact s6Step5EarlyControl_branch
theorem s6Step5EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 868 876 793 802 779 860 1 s6Step5EarlyControlLog=some s6Step5EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step5EarlyControlPlan s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 868 876 793 802 779 860 1 s6Step5EarlyControl_logged
theorem s6Step5EarlyControl_checked : (compileHmrEarlyControlLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 868 876 793 802 779 860 1 s6Step5EarlyControlLog).map (fun P => P.outputArena.live.card)=some 790 := by
  rw [s6Step5EarlyControl_plan_checked]
  decide +kernel

def s6Step6EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step6EarlyControlLog : HmrEarlyControlLog := ⟨[887, 908, 807, 860, 813],[890],[805],[873, 796, 863, 856, 823, 865],[]⟩
def s6Step6EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step6EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step6EarlyControlPositiveArena,[890],s6Step6EarlyControlEqualityArena,[805],⟨⟨907,false⟩,[⟨⟨890,false⟩,805⟩]⟩⟩
def s6Step6EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step6EarlyControlZeroArena,s6Step6EarlyControlZeroPlan,s6Step6EarlyControlClassPlan,s6Step6EarlyControlFlagArena,s6Step6EarlyControlFittedArena,s6Step6EarlyControlHistoryArena,s6Step6EarlyControlSigmaArena,s6Step6EarlyControlOutputArena,s6Step6EarlyControlLog⟩
theorem s6Step6EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step6EarlyControlLog.zeroWork).map Prod.snd=some (s6Step6EarlyControlLog.zeroWork,s6Step6EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step6EarlyControl_zero : compileHmrEqualityLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step6EarlyControlLog.zeroWork=some (s6Step6EarlyControlZeroArena,s6Step6EarlyControlLog.zeroWork,s6Step6EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step6EarlyControl_zeroProjection
  · ext q
    simp [s6Step6EarlyControlZeroArena,s6Step6EarlyControlArena,s6Step6EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step6EarlyControl_classProjection : (compileHmrSourceClassLog s6Step6EarlyControlZeroArena false 769 s6Step6EarlyControlZeroPlan.top 0 907 s6Step6EarlyControlLog.positiveWork s6Step6EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step6EarlyControlClassPlan.positiveWork,s6Step6EarlyControlClassPlan.equalityWork,s6Step6EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step6EarlyControl_class : compileHmrSourceClassLog s6Step6EarlyControlZeroArena false 769 s6Step6EarlyControlZeroPlan.top 0 907 s6Step6EarlyControlLog.positiveWork s6Step6EarlyControlLog.classWork=some s6Step6EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step6EarlyControl_classProjection
  · ext q
    simp [s6Step6EarlyControlClassPlan,s6Step6EarlyControlPositiveArena,s6Step6EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step6EarlyControlClassPlan,s6Step6EarlyControlEqualityArena,s6Step6EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step6EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step6EarlyControlClassPlan.equalityArena s6Step6EarlyControlClassPlan.equality.top 793 802 779 s6Step6EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step6EarlyControl_flags : compileHmrFlagsLog s6Step6EarlyControlClassPlan.equalityArena s6Step6EarlyControlClassPlan.equality.top 793 802 779 s6Step6EarlyControlLog.flagWork=some s6Step6EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step6EarlyControl_flagsProjection
  · ext q
    simp [s6Step6EarlyControlClassPlan,s6Step6EarlyControlFlagArena,s6Step6EarlyControlEqualityArena,s6Step6EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step6EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step6EarlyControlFlagArena [895] 1 s6Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step6EarlyControl_fit : compileHmrRecordGrowLog s6Step6EarlyControlFlagArena [895] 1 s6Step6EarlyControlLog.recordFresh=some s6Step6EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step6EarlyControl_fitProjection
  · ext q
    simp [s6Step6EarlyControlFittedArena,s6Step6EarlyControlFlagArena,s6Step6EarlyControlLog,arenaWires]
theorem s6Step6EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step6EarlyControlArena [895] 1 s6Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step6EarlyControl_history : compileHmrRecordGrowLog s6Step6EarlyControlArena [895] 1 s6Step6EarlyControlLog.recordFresh=some s6Step6EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step6EarlyControl_historyProjection
  · ext q
    simp [s6Step6EarlyControlHistoryArena,s6Step6EarlyControlArena,s6Step6EarlyControlLog,arenaWires]
theorem s6Step6EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step6EarlyControlHistoryArena false 0 0 876 907 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step6EarlyControl_sigma : compileHmrSigmaDropLog s6Step6EarlyControlHistoryArena false 0 0 876 907 []=some s6Step6EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step6EarlyControl_sigmaProjection
  · ext q
    simp [s6Step6EarlyControlSigmaArena,s6Step6EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step6EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step6EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step6EarlyControl_branch : compileHmrBranchRetirement s6Step6EarlyControlSigmaArena 862=some s6Step6EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step6EarlyControl_branchProjection
  · ext q
    simp [s6Step6EarlyControlSigmaArena,s6Step6EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step6EarlyControl_logged : s6Step6EarlyControlPlan.Logged s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 907 876 793 802 779 862 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step6EarlyControl_zero
  · exact s6Step6EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step6EarlyControl_flags
  · exact s6Step6EarlyControl_fit
  · exact s6Step6EarlyControl_history
  · exact s6Step6EarlyControl_sigma
  · exact s6Step6EarlyControl_branch
theorem s6Step6EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 907 876 793 802 779 862 1 s6Step6EarlyControlLog=some s6Step6EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step6EarlyControlPlan s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 907 876 793 802 779 862 1 s6Step6EarlyControl_logged
theorem s6Step6EarlyControl_checked : (compileHmrEarlyControlLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 907 876 793 802 779 862 1 s6Step6EarlyControlLog).map (fun P => P.outputArena.live.card)=some 792 := by
  rw [s6Step6EarlyControl_plan_checked]
  decide +kernel

def s6Step7EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step7EarlyControlLog : HmrEarlyControlLog := ⟨[887, 890, 813, 862, 860],[873],[796],[863, 856, 823, 865, 880, 789],[]⟩
def s6Step7EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,860⟩]⟩
def s6Step7EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step7EarlyControlPositiveArena,[873],s6Step7EarlyControlEqualityArena,[796],⟨⟨908,false⟩,[⟨⟨873,false⟩,796⟩]⟩⟩
def s6Step7EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step7EarlyControlZeroArena,s6Step7EarlyControlZeroPlan,s6Step7EarlyControlClassPlan,s6Step7EarlyControlFlagArena,s6Step7EarlyControlFittedArena,s6Step7EarlyControlHistoryArena,s6Step7EarlyControlSigmaArena,s6Step7EarlyControlOutputArena,s6Step7EarlyControlLog⟩
theorem s6Step7EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step7EarlyControlLog.zeroWork).map Prod.snd=some (s6Step7EarlyControlLog.zeroWork,s6Step7EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step7EarlyControl_zero : compileHmrEqualityLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step7EarlyControlLog.zeroWork=some (s6Step7EarlyControlZeroArena,s6Step7EarlyControlLog.zeroWork,s6Step7EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step7EarlyControl_zeroProjection
  · ext q
    simp [s6Step7EarlyControlZeroArena,s6Step7EarlyControlArena,s6Step7EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step7EarlyControl_classProjection : (compileHmrSourceClassLog s6Step7EarlyControlZeroArena false 769 s6Step7EarlyControlZeroPlan.top 0 908 s6Step7EarlyControlLog.positiveWork s6Step7EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step7EarlyControlClassPlan.positiveWork,s6Step7EarlyControlClassPlan.equalityWork,s6Step7EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step7EarlyControl_class : compileHmrSourceClassLog s6Step7EarlyControlZeroArena false 769 s6Step7EarlyControlZeroPlan.top 0 908 s6Step7EarlyControlLog.positiveWork s6Step7EarlyControlLog.classWork=some s6Step7EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step7EarlyControl_classProjection
  · ext q
    simp [s6Step7EarlyControlClassPlan,s6Step7EarlyControlPositiveArena,s6Step7EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step7EarlyControlClassPlan,s6Step7EarlyControlEqualityArena,s6Step7EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step7EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step7EarlyControlClassPlan.equalityArena s6Step7EarlyControlClassPlan.equality.top 793 802 779 s6Step7EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step7EarlyControl_flags : compileHmrFlagsLog s6Step7EarlyControlClassPlan.equalityArena s6Step7EarlyControlClassPlan.equality.top 793 802 779 s6Step7EarlyControlLog.flagWork=some s6Step7EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step7EarlyControl_flagsProjection
  · ext q
    simp [s6Step7EarlyControlClassPlan,s6Step7EarlyControlFlagArena,s6Step7EarlyControlEqualityArena,s6Step7EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step7EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step7EarlyControlFlagArena [895] 1 s6Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step7EarlyControl_fit : compileHmrRecordGrowLog s6Step7EarlyControlFlagArena [895] 1 s6Step7EarlyControlLog.recordFresh=some s6Step7EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step7EarlyControl_fitProjection
  · ext q
    simp [s6Step7EarlyControlFittedArena,s6Step7EarlyControlFlagArena,s6Step7EarlyControlLog,arenaWires]
theorem s6Step7EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step7EarlyControlArena [895] 1 s6Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step7EarlyControl_history : compileHmrRecordGrowLog s6Step7EarlyControlArena [895] 1 s6Step7EarlyControlLog.recordFresh=some s6Step7EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step7EarlyControl_historyProjection
  · ext q
    simp [s6Step7EarlyControlHistoryArena,s6Step7EarlyControlArena,s6Step7EarlyControlLog,arenaWires]
theorem s6Step7EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step7EarlyControlHistoryArena false 0 0 876 908 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step7EarlyControl_sigma : compileHmrSigmaDropLog s6Step7EarlyControlHistoryArena false 0 0 876 908 []=some s6Step7EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step7EarlyControl_sigmaProjection
  · ext q
    simp [s6Step7EarlyControlSigmaArena,s6Step7EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step7EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step7EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step7EarlyControl_branch : compileHmrBranchRetirement s6Step7EarlyControlSigmaArena 807=some s6Step7EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step7EarlyControl_branchProjection
  · ext q
    simp [s6Step7EarlyControlSigmaArena,s6Step7EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step7EarlyControl_logged : s6Step7EarlyControlPlan.Logged s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 908 876 793 802 779 807 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step7EarlyControl_zero
  · exact s6Step7EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step7EarlyControl_flags
  · exact s6Step7EarlyControl_fit
  · exact s6Step7EarlyControl_history
  · exact s6Step7EarlyControl_sigma
  · exact s6Step7EarlyControl_branch
theorem s6Step7EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 908 876 793 802 779 807 1 s6Step7EarlyControlLog=some s6Step7EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step7EarlyControlPlan s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 908 876 793 802 779 807 1 s6Step7EarlyControl_logged
theorem s6Step7EarlyControl_checked : (compileHmrEarlyControlLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 908 876 793 802 779 807 1 s6Step7EarlyControlLog).map (fun P => P.outputArena.live.card)=some 794 := by
  rw [s6Step7EarlyControl_plan_checked]
  decide +kernel

def s6Step8EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (857 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step8EarlyControlLog : HmrEarlyControlLog := ⟨[887, 873, 860, 807, 862],[863],[856],[823, 865, 880, 789, 864, 818],[]⟩
def s6Step8EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,873⟩,⟨⟨771,false⟩,860⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,862⟩]⟩
def s6Step8EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step8EarlyControlPositiveArena,[863],s6Step8EarlyControlEqualityArena,[856],⟨⟨890,false⟩,[⟨⟨863,false⟩,856⟩]⟩⟩
def s6Step8EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step8EarlyControlZeroArena,s6Step8EarlyControlZeroPlan,s6Step8EarlyControlClassPlan,s6Step8EarlyControlFlagArena,s6Step8EarlyControlFittedArena,s6Step8EarlyControlHistoryArena,s6Step8EarlyControlSigmaArena,s6Step8EarlyControlOutputArena,s6Step8EarlyControlLog⟩
theorem s6Step8EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step8EarlyControlLog.zeroWork).map Prod.snd=some (s6Step8EarlyControlLog.zeroWork,s6Step8EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step8EarlyControl_zero : compileHmrEqualityLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step8EarlyControlLog.zeroWork=some (s6Step8EarlyControlZeroArena,s6Step8EarlyControlLog.zeroWork,s6Step8EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step8EarlyControl_zeroProjection
  · ext q
    simp [s6Step8EarlyControlZeroArena,s6Step8EarlyControlArena,s6Step8EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step8EarlyControl_classProjection : (compileHmrSourceClassLog s6Step8EarlyControlZeroArena false 769 s6Step8EarlyControlZeroPlan.top 0 890 s6Step8EarlyControlLog.positiveWork s6Step8EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step8EarlyControlClassPlan.positiveWork,s6Step8EarlyControlClassPlan.equalityWork,s6Step8EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step8EarlyControl_class : compileHmrSourceClassLog s6Step8EarlyControlZeroArena false 769 s6Step8EarlyControlZeroPlan.top 0 890 s6Step8EarlyControlLog.positiveWork s6Step8EarlyControlLog.classWork=some s6Step8EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step8EarlyControl_classProjection
  · ext q
    simp [s6Step8EarlyControlClassPlan,s6Step8EarlyControlPositiveArena,s6Step8EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step8EarlyControlClassPlan,s6Step8EarlyControlEqualityArena,s6Step8EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step8EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step8EarlyControlClassPlan.equalityArena s6Step8EarlyControlClassPlan.equality.top 793 802 779 s6Step8EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step8EarlyControl_flags : compileHmrFlagsLog s6Step8EarlyControlClassPlan.equalityArena s6Step8EarlyControlClassPlan.equality.top 793 802 779 s6Step8EarlyControlLog.flagWork=some s6Step8EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step8EarlyControl_flagsProjection
  · ext q
    simp [s6Step8EarlyControlClassPlan,s6Step8EarlyControlFlagArena,s6Step8EarlyControlEqualityArena,s6Step8EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step8EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step8EarlyControlFlagArena [895] 1 s6Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step8EarlyControl_fit : compileHmrRecordGrowLog s6Step8EarlyControlFlagArena [895] 1 s6Step8EarlyControlLog.recordFresh=some s6Step8EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step8EarlyControl_fitProjection
  · ext q
    simp [s6Step8EarlyControlFittedArena,s6Step8EarlyControlFlagArena,s6Step8EarlyControlLog,arenaWires]
theorem s6Step8EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step8EarlyControlArena [895] 1 s6Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step8EarlyControl_history : compileHmrRecordGrowLog s6Step8EarlyControlArena [895] 1 s6Step8EarlyControlLog.recordFresh=some s6Step8EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step8EarlyControl_historyProjection
  · ext q
    simp [s6Step8EarlyControlHistoryArena,s6Step8EarlyControlArena,s6Step8EarlyControlLog,arenaWires]
theorem s6Step8EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step8EarlyControlHistoryArena false 0 0 876 890 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step8EarlyControl_sigma : compileHmrSigmaDropLog s6Step8EarlyControlHistoryArena false 0 0 876 890 []=some s6Step8EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step8EarlyControl_sigmaProjection
  · ext q
    simp [s6Step8EarlyControlSigmaArena,s6Step8EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step8EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step8EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step8EarlyControl_branch : compileHmrBranchRetirement s6Step8EarlyControlSigmaArena 813=some s6Step8EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step8EarlyControl_branchProjection
  · ext q
    simp [s6Step8EarlyControlSigmaArena,s6Step8EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step8EarlyControl_logged : s6Step8EarlyControlPlan.Logged s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 890 876 793 802 779 813 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step8EarlyControl_zero
  · exact s6Step8EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step8EarlyControl_flags
  · exact s6Step8EarlyControl_fit
  · exact s6Step8EarlyControl_history
  · exact s6Step8EarlyControl_sigma
  · exact s6Step8EarlyControl_branch
theorem s6Step8EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 890 876 793 802 779 813 1 s6Step8EarlyControlLog=some s6Step8EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step8EarlyControlPlan s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 890 876 793 802 779 813 1 s6Step8EarlyControl_logged
theorem s6Step8EarlyControl_checked : (compileHmrEarlyControlLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 890 876 793 802 779 813 1 s6Step8EarlyControlLog).map (fun P => P.outputArena.live.card)=some 796 := by
  rw [s6Step8EarlyControl_plan_checked]
  decide +kernel

def s6Step9EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (874 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (874 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step9EarlyControlLog : HmrEarlyControlLog := ⟨[887, 863, 862, 813, 807],[823],[865],[880, 789, 864, 818, 828, 892],[870]⟩
def s6Step9EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,863⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step9EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step9EarlyControlPositiveArena,[823],s6Step9EarlyControlEqualityArena,[865],⟨⟨873,false⟩,[⟨⟨823,false⟩,865⟩]⟩⟩
def s6Step9EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step9EarlyControlZeroArena,s6Step9EarlyControlZeroPlan,s6Step9EarlyControlClassPlan,s6Step9EarlyControlFlagArena,s6Step9EarlyControlFittedArena,s6Step9EarlyControlHistoryArena,s6Step9EarlyControlSigmaArena,s6Step9EarlyControlOutputArena,s6Step9EarlyControlLog⟩
theorem s6Step9EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step9EarlyControlLog.zeroWork).map Prod.snd=some (s6Step9EarlyControlLog.zeroWork,s6Step9EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step9EarlyControl_zero : compileHmrEqualityLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step9EarlyControlLog.zeroWork=some (s6Step9EarlyControlZeroArena,s6Step9EarlyControlLog.zeroWork,s6Step9EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step9EarlyControl_zeroProjection
  · ext q
    simp [s6Step9EarlyControlZeroArena,s6Step9EarlyControlArena,s6Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_classProjection : (compileHmrSourceClassLog s6Step9EarlyControlZeroArena false 769 s6Step9EarlyControlZeroPlan.top 0 873 s6Step9EarlyControlLog.positiveWork s6Step9EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step9EarlyControlClassPlan.positiveWork,s6Step9EarlyControlClassPlan.equalityWork,s6Step9EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step9EarlyControl_class : compileHmrSourceClassLog s6Step9EarlyControlZeroArena false 769 s6Step9EarlyControlZeroPlan.top 0 873 s6Step9EarlyControlLog.positiveWork s6Step9EarlyControlLog.classWork=some s6Step9EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step9EarlyControl_classProjection
  · ext q
    simp [s6Step9EarlyControlClassPlan,s6Step9EarlyControlPositiveArena,s6Step9EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step9EarlyControlClassPlan,s6Step9EarlyControlEqualityArena,s6Step9EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step9EarlyControlClassPlan.equalityArena s6Step9EarlyControlClassPlan.equality.top 793 802 779 s6Step9EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step9EarlyControl_flags : compileHmrFlagsLog s6Step9EarlyControlClassPlan.equalityArena s6Step9EarlyControlClassPlan.equality.top 793 802 779 s6Step9EarlyControlLog.flagWork=some s6Step9EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step9EarlyControl_flagsProjection
  · ext q
    simp [s6Step9EarlyControlClassPlan,s6Step9EarlyControlFlagArena,s6Step9EarlyControlEqualityArena,s6Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step9EarlyControlFlagArena [895] 2 s6Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step9EarlyControl_fit : compileHmrRecordGrowLog s6Step9EarlyControlFlagArena [895] 2 s6Step9EarlyControlLog.recordFresh=some s6Step9EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step9EarlyControl_fitProjection
  · ext q
    simp [s6Step9EarlyControlFittedArena,s6Step9EarlyControlFlagArena,s6Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step9EarlyControlArena [895] 2 s6Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step9EarlyControl_history : compileHmrRecordGrowLog s6Step9EarlyControlArena [895] 2 s6Step9EarlyControlLog.recordFresh=some s6Step9EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step9EarlyControl_historyProjection
  · ext q
    simp [s6Step9EarlyControlHistoryArena,s6Step9EarlyControlArena,s6Step9EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step9EarlyControlHistoryArena false 0 0 876 873 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step9EarlyControl_sigma : compileHmrSigmaDropLog s6Step9EarlyControlHistoryArena false 0 0 876 873 []=some s6Step9EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step9EarlyControl_sigmaProjection
  · ext q
    simp [s6Step9EarlyControlSigmaArena,s6Step9EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step9EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step9EarlyControl_branch : compileHmrBranchRetirement s6Step9EarlyControlSigmaArena 860=some s6Step9EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step9EarlyControl_branchProjection
  · ext q
    simp [s6Step9EarlyControlSigmaArena,s6Step9EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_logged : s6Step9EarlyControlPlan.Logged s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 873 876 793 802 779 860 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step9EarlyControl_zero
  · exact s6Step9EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step9EarlyControl_flags
  · exact s6Step9EarlyControl_fit
  · exact s6Step9EarlyControl_history
  · exact s6Step9EarlyControl_sigma
  · exact s6Step9EarlyControl_branch
theorem s6Step9EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 873 876 793 802 779 860 2 s6Step9EarlyControlLog=some s6Step9EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step9EarlyControlPlan s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 873 876 793 802 779 860 2 s6Step9EarlyControl_logged
theorem s6Step9EarlyControl_checked : (compileHmrEarlyControlLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 873 876 793 802 779 860 2 s6Step9EarlyControlLog).map (fun P => P.outputArena.live.card)=some 799 := by
  rw [s6Step9EarlyControl_plan_checked]
  decide +kernel

def s6Step10EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 863) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step10EarlyControlLog : HmrEarlyControlLog := ⟨[887, 823, 807, 860, 813],[880],[789],[864, 818, 828, 892, 822, 882],[]⟩
def s6Step10EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,823⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step10EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step10EarlyControlPositiveArena,[880],s6Step10EarlyControlEqualityArena,[789],⟨⟨863,false⟩,[⟨⟨880,false⟩,789⟩]⟩⟩
def s6Step10EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step10EarlyControlZeroArena,s6Step10EarlyControlZeroPlan,s6Step10EarlyControlClassPlan,s6Step10EarlyControlFlagArena,s6Step10EarlyControlFittedArena,s6Step10EarlyControlHistoryArena,s6Step10EarlyControlSigmaArena,s6Step10EarlyControlOutputArena,s6Step10EarlyControlLog⟩
theorem s6Step10EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step10EarlyControlLog.zeroWork).map Prod.snd=some (s6Step10EarlyControlLog.zeroWork,s6Step10EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step10EarlyControl_zero : compileHmrEqualityLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step10EarlyControlLog.zeroWork=some (s6Step10EarlyControlZeroArena,s6Step10EarlyControlLog.zeroWork,s6Step10EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step10EarlyControl_zeroProjection
  · ext q
    simp [s6Step10EarlyControlZeroArena,s6Step10EarlyControlArena,s6Step10EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step10EarlyControl_classProjection : (compileHmrSourceClassLog s6Step10EarlyControlZeroArena false 769 s6Step10EarlyControlZeroPlan.top 0 863 s6Step10EarlyControlLog.positiveWork s6Step10EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step10EarlyControlClassPlan.positiveWork,s6Step10EarlyControlClassPlan.equalityWork,s6Step10EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step10EarlyControl_class : compileHmrSourceClassLog s6Step10EarlyControlZeroArena false 769 s6Step10EarlyControlZeroPlan.top 0 863 s6Step10EarlyControlLog.positiveWork s6Step10EarlyControlLog.classWork=some s6Step10EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step10EarlyControl_classProjection
  · ext q
    simp [s6Step10EarlyControlClassPlan,s6Step10EarlyControlPositiveArena,s6Step10EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step10EarlyControlClassPlan,s6Step10EarlyControlEqualityArena,s6Step10EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step10EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step10EarlyControlClassPlan.equalityArena s6Step10EarlyControlClassPlan.equality.top 793 802 779 s6Step10EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step10EarlyControl_flags : compileHmrFlagsLog s6Step10EarlyControlClassPlan.equalityArena s6Step10EarlyControlClassPlan.equality.top 793 802 779 s6Step10EarlyControlLog.flagWork=some s6Step10EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step10EarlyControl_flagsProjection
  · ext q
    simp [s6Step10EarlyControlClassPlan,s6Step10EarlyControlFlagArena,s6Step10EarlyControlEqualityArena,s6Step10EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step10EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step10EarlyControlFlagArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step10EarlyControl_fit : compileHmrRecordGrowLog s6Step10EarlyControlFlagArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh=some s6Step10EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step10EarlyControl_fitProjection
  · ext q
    simp [s6Step10EarlyControlFittedArena,s6Step10EarlyControlFlagArena,s6Step10EarlyControlLog,arenaWires]
theorem s6Step10EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step10EarlyControlArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step10EarlyControl_history : compileHmrRecordGrowLog s6Step10EarlyControlArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh=some s6Step10EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step10EarlyControl_historyProjection
  · ext q
    simp [s6Step10EarlyControlHistoryArena,s6Step10EarlyControlArena,s6Step10EarlyControlLog,arenaWires]
theorem s6Step10EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step10EarlyControlHistoryArena false 0 0 876 863 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step10EarlyControl_sigma : compileHmrSigmaDropLog s6Step10EarlyControlHistoryArena false 0 0 876 863 []=some s6Step10EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step10EarlyControl_sigmaProjection
  · ext q
    simp [s6Step10EarlyControlSigmaArena,s6Step10EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step10EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step10EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step10EarlyControl_branch : compileHmrBranchRetirement s6Step10EarlyControlSigmaArena 862=some s6Step10EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step10EarlyControl_branchProjection
  · ext q
    simp [s6Step10EarlyControlSigmaArena,s6Step10EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step10EarlyControl_logged : s6Step10EarlyControlPlan.Logged s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 863 876 793 802 779 862 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step10EarlyControl_zero
  · exact s6Step10EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step10EarlyControl_flags
  · exact s6Step10EarlyControl_fit
  · exact s6Step10EarlyControl_history
  · exact s6Step10EarlyControl_sigma
  · exact s6Step10EarlyControl_branch
theorem s6Step10EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 863 876 793 802 779 862 2 s6Step10EarlyControlLog=some s6Step10EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step10EarlyControlPlan s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 863 876 793 802 779 862 2 s6Step10EarlyControl_logged
theorem s6Step10EarlyControl_checked : (compileHmrEarlyControlLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 863 876 793 802 779 862 2 s6Step10EarlyControlLog).map (fun P => P.outputArena.live.card)=some 801 := by
  rw [s6Step10EarlyControl_plan_checked]
  decide +kernel

def s6Step11EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (873 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step11EarlyControlLog : HmrEarlyControlLog := ⟨[887, 880, 813, 862, 860],[864],[818],[828, 892, 822, 882, 780, 833],[872]⟩
def s6Step11EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,860⟩]⟩
def s6Step11EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step11EarlyControlPositiveArena,[864],s6Step11EarlyControlEqualityArena,[818],⟨⟨823,false⟩,[⟨⟨864,false⟩,818⟩]⟩⟩
def s6Step11EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step11EarlyControlZeroArena,s6Step11EarlyControlZeroPlan,s6Step11EarlyControlClassPlan,s6Step11EarlyControlFlagArena,s6Step11EarlyControlFittedArena,s6Step11EarlyControlHistoryArena,s6Step11EarlyControlSigmaArena,s6Step11EarlyControlOutputArena,s6Step11EarlyControlLog⟩
theorem s6Step11EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step11EarlyControlLog.zeroWork).map Prod.snd=some (s6Step11EarlyControlLog.zeroWork,s6Step11EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step11EarlyControl_zero : compileHmrEqualityLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step11EarlyControlLog.zeroWork=some (s6Step11EarlyControlZeroArena,s6Step11EarlyControlLog.zeroWork,s6Step11EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step11EarlyControl_zeroProjection
  · ext q
    simp [s6Step11EarlyControlZeroArena,s6Step11EarlyControlArena,s6Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_classProjection : (compileHmrSourceClassLog s6Step11EarlyControlZeroArena false 769 s6Step11EarlyControlZeroPlan.top 0 823 s6Step11EarlyControlLog.positiveWork s6Step11EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step11EarlyControlClassPlan.positiveWork,s6Step11EarlyControlClassPlan.equalityWork,s6Step11EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step11EarlyControl_class : compileHmrSourceClassLog s6Step11EarlyControlZeroArena false 769 s6Step11EarlyControlZeroPlan.top 0 823 s6Step11EarlyControlLog.positiveWork s6Step11EarlyControlLog.classWork=some s6Step11EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step11EarlyControl_classProjection
  · ext q
    simp [s6Step11EarlyControlClassPlan,s6Step11EarlyControlPositiveArena,s6Step11EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step11EarlyControlClassPlan,s6Step11EarlyControlEqualityArena,s6Step11EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step11EarlyControlClassPlan.equalityArena s6Step11EarlyControlClassPlan.equality.top 793 802 779 s6Step11EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step11EarlyControl_flags : compileHmrFlagsLog s6Step11EarlyControlClassPlan.equalityArena s6Step11EarlyControlClassPlan.equality.top 793 802 779 s6Step11EarlyControlLog.flagWork=some s6Step11EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step11EarlyControl_flagsProjection
  · ext q
    simp [s6Step11EarlyControlClassPlan,s6Step11EarlyControlFlagArena,s6Step11EarlyControlEqualityArena,s6Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step11EarlyControlFlagArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step11EarlyControl_fit : compileHmrRecordGrowLog s6Step11EarlyControlFlagArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh=some s6Step11EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step11EarlyControl_fitProjection
  · ext q
    simp [s6Step11EarlyControlFittedArena,s6Step11EarlyControlFlagArena,s6Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step11EarlyControlArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step11EarlyControl_history : compileHmrRecordGrowLog s6Step11EarlyControlArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh=some s6Step11EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step11EarlyControl_historyProjection
  · ext q
    simp [s6Step11EarlyControlHistoryArena,s6Step11EarlyControlArena,s6Step11EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step11EarlyControlHistoryArena false 0 0 876 823 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step11EarlyControl_sigma : compileHmrSigmaDropLog s6Step11EarlyControlHistoryArena false 0 0 876 823 []=some s6Step11EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step11EarlyControl_sigmaProjection
  · ext q
    simp [s6Step11EarlyControlSigmaArena,s6Step11EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step11EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step11EarlyControl_branch : compileHmrBranchRetirement s6Step11EarlyControlSigmaArena 807=some s6Step11EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step11EarlyControl_branchProjection
  · ext q
    simp [s6Step11EarlyControlSigmaArena,s6Step11EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_logged : s6Step11EarlyControlPlan.Logged s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 823 876 793 802 779 807 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step11EarlyControl_zero
  · exact s6Step11EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step11EarlyControl_flags
  · exact s6Step11EarlyControl_fit
  · exact s6Step11EarlyControl_history
  · exact s6Step11EarlyControl_sigma
  · exact s6Step11EarlyControl_branch
theorem s6Step11EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 823 876 793 802 779 807 3 s6Step11EarlyControlLog=some s6Step11EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step11EarlyControlPlan s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 823 876 793 802 779 807 3 s6Step11EarlyControl_logged
theorem s6Step11EarlyControl_checked : (compileHmrEarlyControlLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 823 876 793 802 779 807 3 s6Step11EarlyControlLog).map (fun P => P.outputArena.live.card)=some 804 := by
  rw [s6Step11EarlyControl_plan_checked]
  decide +kernel

def s6Step12EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (890 ≤ q ∧ q < 891) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step12EarlyControlLog : HmrEarlyControlLog := ⟨[887, 864, 860, 807, 862],[828],[892],[822, 882, 780, 833, 888, 886],[]⟩
def s6Step12EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,864⟩,⟨⟨771,false⟩,860⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,862⟩]⟩
def s6Step12EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step12EarlyControlPositiveArena,[828],s6Step12EarlyControlEqualityArena,[892],⟨⟨880,false⟩,[⟨⟨828,false⟩,892⟩]⟩⟩
def s6Step12EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step12EarlyControlZeroArena,s6Step12EarlyControlZeroPlan,s6Step12EarlyControlClassPlan,s6Step12EarlyControlFlagArena,s6Step12EarlyControlFittedArena,s6Step12EarlyControlHistoryArena,s6Step12EarlyControlSigmaArena,s6Step12EarlyControlOutputArena,s6Step12EarlyControlLog⟩
theorem s6Step12EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step12EarlyControlLog.zeroWork).map Prod.snd=some (s6Step12EarlyControlLog.zeroWork,s6Step12EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step12EarlyControl_zero : compileHmrEqualityLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step12EarlyControlLog.zeroWork=some (s6Step12EarlyControlZeroArena,s6Step12EarlyControlLog.zeroWork,s6Step12EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step12EarlyControl_zeroProjection
  · ext q
    simp [s6Step12EarlyControlZeroArena,s6Step12EarlyControlArena,s6Step12EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step12EarlyControl_classProjection : (compileHmrSourceClassLog s6Step12EarlyControlZeroArena false 769 s6Step12EarlyControlZeroPlan.top 0 880 s6Step12EarlyControlLog.positiveWork s6Step12EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step12EarlyControlClassPlan.positiveWork,s6Step12EarlyControlClassPlan.equalityWork,s6Step12EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step12EarlyControl_class : compileHmrSourceClassLog s6Step12EarlyControlZeroArena false 769 s6Step12EarlyControlZeroPlan.top 0 880 s6Step12EarlyControlLog.positiveWork s6Step12EarlyControlLog.classWork=some s6Step12EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step12EarlyControl_classProjection
  · ext q
    simp [s6Step12EarlyControlClassPlan,s6Step12EarlyControlPositiveArena,s6Step12EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step12EarlyControlClassPlan,s6Step12EarlyControlEqualityArena,s6Step12EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step12EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step12EarlyControlClassPlan.equalityArena s6Step12EarlyControlClassPlan.equality.top 793 802 779 s6Step12EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step12EarlyControl_flags : compileHmrFlagsLog s6Step12EarlyControlClassPlan.equalityArena s6Step12EarlyControlClassPlan.equality.top 793 802 779 s6Step12EarlyControlLog.flagWork=some s6Step12EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step12EarlyControl_flagsProjection
  · ext q
    simp [s6Step12EarlyControlClassPlan,s6Step12EarlyControlFlagArena,s6Step12EarlyControlEqualityArena,s6Step12EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step12EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step12EarlyControlFlagArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step12EarlyControl_fit : compileHmrRecordGrowLog s6Step12EarlyControlFlagArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh=some s6Step12EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step12EarlyControl_fitProjection
  · ext q
    simp [s6Step12EarlyControlFittedArena,s6Step12EarlyControlFlagArena,s6Step12EarlyControlLog,arenaWires]
theorem s6Step12EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step12EarlyControlArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step12EarlyControl_history : compileHmrRecordGrowLog s6Step12EarlyControlArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh=some s6Step12EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step12EarlyControl_historyProjection
  · ext q
    simp [s6Step12EarlyControlHistoryArena,s6Step12EarlyControlArena,s6Step12EarlyControlLog,arenaWires]
theorem s6Step12EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step12EarlyControlHistoryArena false 0 0 876 880 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step12EarlyControl_sigma : compileHmrSigmaDropLog s6Step12EarlyControlHistoryArena false 0 0 876 880 []=some s6Step12EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step12EarlyControl_sigmaProjection
  · ext q
    simp [s6Step12EarlyControlSigmaArena,s6Step12EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step12EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step12EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step12EarlyControl_branch : compileHmrBranchRetirement s6Step12EarlyControlSigmaArena 813=some s6Step12EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step12EarlyControl_branchProjection
  · ext q
    simp [s6Step12EarlyControlSigmaArena,s6Step12EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step12EarlyControl_logged : s6Step12EarlyControlPlan.Logged s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 880 876 793 802 779 813 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step12EarlyControl_zero
  · exact s6Step12EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step12EarlyControl_flags
  · exact s6Step12EarlyControl_fit
  · exact s6Step12EarlyControl_history
  · exact s6Step12EarlyControl_sigma
  · exact s6Step12EarlyControl_branch
theorem s6Step12EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 880 876 793 802 779 813 3 s6Step12EarlyControlLog=some s6Step12EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step12EarlyControlPlan s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 880 876 793 802 779 813 3 s6Step12EarlyControl_logged
theorem s6Step12EarlyControl_checked : (compileHmrEarlyControlLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 880 876 793 802 779 813 3 s6Step12EarlyControlLog).map (fun P => P.outputArena.live.card)=some 806 := by
  rw [s6Step12EarlyControl_plan_checked]
  decide +kernel

def s6Step13EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 883) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (883 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (883 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 864) ∨ (865 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (883 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step13EarlyControlLog : HmrEarlyControlLog := ⟨[887, 828, 862, 813, 807],[822],[882],[780, 833, 888, 886, 778, 838],[883]⟩
def s6Step13EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,828⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step13EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step13EarlyControlPositiveArena,[822],s6Step13EarlyControlEqualityArena,[882],⟨⟨864,false⟩,[⟨⟨822,false⟩,882⟩]⟩⟩
def s6Step13EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step13EarlyControlZeroArena,s6Step13EarlyControlZeroPlan,s6Step13EarlyControlClassPlan,s6Step13EarlyControlFlagArena,s6Step13EarlyControlFittedArena,s6Step13EarlyControlHistoryArena,s6Step13EarlyControlSigmaArena,s6Step13EarlyControlOutputArena,s6Step13EarlyControlLog⟩
theorem s6Step13EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step13EarlyControlLog.zeroWork).map Prod.snd=some (s6Step13EarlyControlLog.zeroWork,s6Step13EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step13EarlyControl_zero : compileHmrEqualityLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step13EarlyControlLog.zeroWork=some (s6Step13EarlyControlZeroArena,s6Step13EarlyControlLog.zeroWork,s6Step13EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step13EarlyControl_zeroProjection
  · ext q
    simp [s6Step13EarlyControlZeroArena,s6Step13EarlyControlArena,s6Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_classProjection : (compileHmrSourceClassLog s6Step13EarlyControlZeroArena false 769 s6Step13EarlyControlZeroPlan.top 0 864 s6Step13EarlyControlLog.positiveWork s6Step13EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step13EarlyControlClassPlan.positiveWork,s6Step13EarlyControlClassPlan.equalityWork,s6Step13EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step13EarlyControl_class : compileHmrSourceClassLog s6Step13EarlyControlZeroArena false 769 s6Step13EarlyControlZeroPlan.top 0 864 s6Step13EarlyControlLog.positiveWork s6Step13EarlyControlLog.classWork=some s6Step13EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step13EarlyControl_classProjection
  · ext q
    simp [s6Step13EarlyControlClassPlan,s6Step13EarlyControlPositiveArena,s6Step13EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step13EarlyControlClassPlan,s6Step13EarlyControlEqualityArena,s6Step13EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step13EarlyControlClassPlan.equalityArena s6Step13EarlyControlClassPlan.equality.top 793 802 779 s6Step13EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step13EarlyControl_flags : compileHmrFlagsLog s6Step13EarlyControlClassPlan.equalityArena s6Step13EarlyControlClassPlan.equality.top 793 802 779 s6Step13EarlyControlLog.flagWork=some s6Step13EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step13EarlyControl_flagsProjection
  · ext q
    simp [s6Step13EarlyControlClassPlan,s6Step13EarlyControlFlagArena,s6Step13EarlyControlEqualityArena,s6Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step13EarlyControlFlagArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step13EarlyControl_fit : compileHmrRecordGrowLog s6Step13EarlyControlFlagArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh=some s6Step13EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step13EarlyControl_fitProjection
  · ext q
    simp [s6Step13EarlyControlFittedArena,s6Step13EarlyControlFlagArena,s6Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step13EarlyControlArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step13EarlyControl_history : compileHmrRecordGrowLog s6Step13EarlyControlArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh=some s6Step13EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step13EarlyControl_historyProjection
  · ext q
    simp [s6Step13EarlyControlHistoryArena,s6Step13EarlyControlArena,s6Step13EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step13EarlyControlHistoryArena false 0 0 876 864 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step13EarlyControl_sigma : compileHmrSigmaDropLog s6Step13EarlyControlHistoryArena false 0 0 876 864 []=some s6Step13EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step13EarlyControl_sigmaProjection
  · ext q
    simp [s6Step13EarlyControlSigmaArena,s6Step13EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step13EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step13EarlyControl_branch : compileHmrBranchRetirement s6Step13EarlyControlSigmaArena 860=some s6Step13EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step13EarlyControl_branchProjection
  · ext q
    simp [s6Step13EarlyControlSigmaArena,s6Step13EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_logged : s6Step13EarlyControlPlan.Logged s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 864 876 793 802 779 860 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step13EarlyControl_zero
  · exact s6Step13EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step13EarlyControl_flags
  · exact s6Step13EarlyControl_fit
  · exact s6Step13EarlyControl_history
  · exact s6Step13EarlyControl_sigma
  · exact s6Step13EarlyControl_branch
theorem s6Step13EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 864 876 793 802 779 860 4 s6Step13EarlyControlLog=some s6Step13EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step13EarlyControlPlan s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 864 876 793 802 779 860 4 s6Step13EarlyControl_logged
theorem s6Step13EarlyControl_checked : (compileHmrEarlyControlLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 864 876 793 802 779 860 4 s6Step13EarlyControlLog).map (fun P => P.outputArena.live.card)=some 809 := by
  rw [s6Step13EarlyControl_plan_checked]
  decide +kernel

def s6Step14EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step14EarlyControlLog : HmrEarlyControlLog := ⟨[887, 822, 807, 860, 813],[780],[833],[888, 886, 778, 838, 814, 821],[]⟩
def s6Step14EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,822⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step14EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step14EarlyControlPositiveArena,[780],s6Step14EarlyControlEqualityArena,[833],⟨⟨828,false⟩,[⟨⟨780,false⟩,833⟩]⟩⟩
def s6Step14EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step14EarlyControlZeroArena,s6Step14EarlyControlZeroPlan,s6Step14EarlyControlClassPlan,s6Step14EarlyControlFlagArena,s6Step14EarlyControlFittedArena,s6Step14EarlyControlHistoryArena,s6Step14EarlyControlSigmaArena,s6Step14EarlyControlOutputArena,s6Step14EarlyControlLog⟩
theorem s6Step14EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step14EarlyControlLog.zeroWork).map Prod.snd=some (s6Step14EarlyControlLog.zeroWork,s6Step14EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step14EarlyControl_zero : compileHmrEqualityLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step14EarlyControlLog.zeroWork=some (s6Step14EarlyControlZeroArena,s6Step14EarlyControlLog.zeroWork,s6Step14EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step14EarlyControl_zeroProjection
  · ext q
    simp [s6Step14EarlyControlZeroArena,s6Step14EarlyControlArena,s6Step14EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step14EarlyControl_classProjection : (compileHmrSourceClassLog s6Step14EarlyControlZeroArena false 769 s6Step14EarlyControlZeroPlan.top 0 828 s6Step14EarlyControlLog.positiveWork s6Step14EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step14EarlyControlClassPlan.positiveWork,s6Step14EarlyControlClassPlan.equalityWork,s6Step14EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step14EarlyControl_class : compileHmrSourceClassLog s6Step14EarlyControlZeroArena false 769 s6Step14EarlyControlZeroPlan.top 0 828 s6Step14EarlyControlLog.positiveWork s6Step14EarlyControlLog.classWork=some s6Step14EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step14EarlyControl_classProjection
  · ext q
    simp [s6Step14EarlyControlClassPlan,s6Step14EarlyControlPositiveArena,s6Step14EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step14EarlyControlClassPlan,s6Step14EarlyControlEqualityArena,s6Step14EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step14EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step14EarlyControlClassPlan.equalityArena s6Step14EarlyControlClassPlan.equality.top 793 802 779 s6Step14EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step14EarlyControl_flags : compileHmrFlagsLog s6Step14EarlyControlClassPlan.equalityArena s6Step14EarlyControlClassPlan.equality.top 793 802 779 s6Step14EarlyControlLog.flagWork=some s6Step14EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step14EarlyControl_flagsProjection
  · ext q
    simp [s6Step14EarlyControlClassPlan,s6Step14EarlyControlFlagArena,s6Step14EarlyControlEqualityArena,s6Step14EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step14EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step14EarlyControlFlagArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step14EarlyControl_fit : compileHmrRecordGrowLog s6Step14EarlyControlFlagArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh=some s6Step14EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step14EarlyControl_fitProjection
  · ext q
    simp [s6Step14EarlyControlFittedArena,s6Step14EarlyControlFlagArena,s6Step14EarlyControlLog,arenaWires]
theorem s6Step14EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step14EarlyControlArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step14EarlyControl_history : compileHmrRecordGrowLog s6Step14EarlyControlArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh=some s6Step14EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step14EarlyControl_historyProjection
  · ext q
    simp [s6Step14EarlyControlHistoryArena,s6Step14EarlyControlArena,s6Step14EarlyControlLog,arenaWires]
theorem s6Step14EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step14EarlyControlHistoryArena false 0 0 876 828 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step14EarlyControl_sigma : compileHmrSigmaDropLog s6Step14EarlyControlHistoryArena false 0 0 876 828 []=some s6Step14EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step14EarlyControl_sigmaProjection
  · ext q
    simp [s6Step14EarlyControlSigmaArena,s6Step14EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step14EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step14EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step14EarlyControl_branch : compileHmrBranchRetirement s6Step14EarlyControlSigmaArena 862=some s6Step14EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step14EarlyControl_branchProjection
  · ext q
    simp [s6Step14EarlyControlSigmaArena,s6Step14EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step14EarlyControl_logged : s6Step14EarlyControlPlan.Logged s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 828 876 793 802 779 862 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step14EarlyControl_zero
  · exact s6Step14EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step14EarlyControl_flags
  · exact s6Step14EarlyControl_fit
  · exact s6Step14EarlyControl_history
  · exact s6Step14EarlyControl_sigma
  · exact s6Step14EarlyControl_branch
theorem s6Step14EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 828 876 793 802 779 862 4 s6Step14EarlyControlLog=some s6Step14EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step14EarlyControlPlan s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 828 876 793 802 779 862 4 s6Step14EarlyControl_logged
theorem s6Step14EarlyControl_checked : (compileHmrEarlyControlLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 828 876 793 802 779 862 4 s6Step14EarlyControlLog).map (fun P => P.outputArena.live.card)=some 811 := by
  rw [s6Step14EarlyControl_plan_checked]
  decide +kernel

def s6Step15EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (887 ≤ q ∧ q < 888) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (887 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step15EarlyControlLog : HmrEarlyControlLog := ⟨[887, 780, 813, 862, 860],[888],[886],[778, 838, 814, 821, 869, 843],[831]⟩
def s6Step15EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,780⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,860⟩]⟩
def s6Step15EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step15EarlyControlPositiveArena,[888],s6Step15EarlyControlEqualityArena,[886],⟨⟨822,false⟩,[⟨⟨888,false⟩,886⟩]⟩⟩
def s6Step15EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step15EarlyControlZeroArena,s6Step15EarlyControlZeroPlan,s6Step15EarlyControlClassPlan,s6Step15EarlyControlFlagArena,s6Step15EarlyControlFittedArena,s6Step15EarlyControlHistoryArena,s6Step15EarlyControlSigmaArena,s6Step15EarlyControlOutputArena,s6Step15EarlyControlLog⟩
theorem s6Step15EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step15EarlyControlLog.zeroWork).map Prod.snd=some (s6Step15EarlyControlLog.zeroWork,s6Step15EarlyControlZeroPlan) := by
  decide +kernel
theorem s6Step15EarlyControl_zero : compileHmrEqualityLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step15EarlyControlLog.zeroWork=some (s6Step15EarlyControlZeroArena,s6Step15EarlyControlLog.zeroWork,s6Step15EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_projection
  · exact s6Step15EarlyControl_zeroProjection
  · ext q
    simp [s6Step15EarlyControlZeroArena,s6Step15EarlyControlArena,s6Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_classProjection : (compileHmrSourceClassLog s6Step15EarlyControlZeroArena false 769 s6Step15EarlyControlZeroPlan.top 0 822 s6Step15EarlyControlLog.positiveWork s6Step15EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step15EarlyControlClassPlan.positiveWork,s6Step15EarlyControlClassPlan.equalityWork,s6Step15EarlyControlClassPlan.equality) := by
  decide +kernel
theorem s6Step15EarlyControl_class : compileHmrSourceClassLog s6Step15EarlyControlZeroArena false 769 s6Step15EarlyControlZeroPlan.top 0 822 s6Step15EarlyControlLog.positiveWork s6Step15EarlyControlLog.classWork=some s6Step15EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_projection
  · exact s6Step15EarlyControl_classProjection
  · ext q
    simp [s6Step15EarlyControlClassPlan,s6Step15EarlyControlPositiveArena,s6Step15EarlyControlZeroArena,arenaWires]
    simp only [Wire] at *
    omega
  · ext q
    simp [s6Step15EarlyControlClassPlan,s6Step15EarlyControlEqualityArena,s6Step15EarlyControlPositiveArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step15EarlyControlClassPlan.equalityArena s6Step15EarlyControlClassPlan.equality.top 793 802 779 s6Step15EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step15EarlyControl_flags : compileHmrFlagsLog s6Step15EarlyControlClassPlan.equalityArena s6Step15EarlyControlClassPlan.equality.top 793 802 779 s6Step15EarlyControlLog.flagWork=some s6Step15EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_accept
  · exact s6Step15EarlyControl_flagsProjection
  · ext q
    simp [s6Step15EarlyControlClassPlan,s6Step15EarlyControlFlagArena,s6Step15EarlyControlEqualityArena,s6Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step15EarlyControlFlagArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step15EarlyControl_fit : compileHmrRecordGrowLog s6Step15EarlyControlFlagArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh=some s6Step15EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step15EarlyControl_fitProjection
  · ext q
    simp [s6Step15EarlyControlFittedArena,s6Step15EarlyControlFlagArena,s6Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step15EarlyControlArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step15EarlyControl_history : compileHmrRecordGrowLog s6Step15EarlyControlArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh=some s6Step15EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_accept
  · exact s6Step15EarlyControl_historyProjection
  · ext q
    simp [s6Step15EarlyControlHistoryArena,s6Step15EarlyControlArena,s6Step15EarlyControlLog,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step15EarlyControlHistoryArena false 0 0 876 822 []).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step15EarlyControl_sigma : compileHmrSigmaDropLog s6Step15EarlyControlHistoryArena false 0 0 876 822 []=some s6Step15EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_of_accept
  · exact s6Step15EarlyControl_sigmaProjection
  · ext q
    simp [s6Step15EarlyControlSigmaArena,s6Step15EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step15EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  decide +kernel
theorem s6Step15EarlyControl_branch : compileHmrBranchRetirement s6Step15EarlyControlSigmaArena 807=some s6Step15EarlyControlOutputArena := by
  apply compileHmrBranchRetirement_of_accept
  · exact s6Step15EarlyControl_branchProjection
  · ext q
    simp [s6Step15EarlyControlSigmaArena,s6Step15EarlyControlOutputArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_logged : s6Step15EarlyControlPlan.Logged s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 822 876 793 802 779 807 5 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step15EarlyControl_zero
  · exact s6Step15EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step15EarlyControl_flags
  · exact s6Step15EarlyControl_fit
  · exact s6Step15EarlyControl_history
  · exact s6Step15EarlyControl_sigma
  · exact s6Step15EarlyControl_branch
theorem s6Step15EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 822 876 793 802 779 807 5 s6Step15EarlyControlLog=some s6Step15EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step15EarlyControlPlan s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 822 876 793 802 779 807 5 s6Step15EarlyControl_logged
theorem s6Step15EarlyControl_checked : (compileHmrEarlyControlLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 822 876 793 802 779 807 5 s6Step15EarlyControlLog).map (fun P => P.outputArena.live.card)=some 814 := by
  rw [s6Step15EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
