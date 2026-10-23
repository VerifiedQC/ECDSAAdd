import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl0Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
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
private theorem s2FirstEarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_zeroBorrow : s2FirstEarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2FirstEarlyControlLog.zeroWork=some s2FirstEarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
      decide +kernel
    · ext q
      simp [s2FirstEarlyControlZeroArena,s2FirstEarlyControlArena,s2FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2FirstEarlyControl_zero : compileHmrEqualityLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2FirstEarlyControlLog.zeroWork=some (s2FirstEarlyControlZeroArena,s2FirstEarlyControlLog.zeroWork,s2FirstEarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2FirstEarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2FirstEarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2FirstEarlyControl_positiveBorrow : s2FirstEarlyControlZeroArena.checkBorrow (1) s2FirstEarlyControlLog.positiveWork=some s2FirstEarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2FirstEarlyControlZeroArena (fun q => (0≤q ∧ q<787)) rfl
      decide +kernel
    · ext q
      simp [s2FirstEarlyControlPositiveArena,s2FirstEarlyControlZeroArena,s2FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2FirstEarlyControl_classEqualityOwned : ([780, 787] : List Wire).toFinset⊆s2FirstEarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlPositiveArena (fun q => (0≤q ∧ q<788)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_classEqualityBorrow : s2FirstEarlyControlPositiveArena.checkBorrow (([780, 787] : List Wire).length-1) s2FirstEarlyControlLog.classWork=some s2FirstEarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2FirstEarlyControlPositiveArena (fun q => (0≤q ∧ q<788)) rfl
      decide +kernel
    · ext q
      simp [s2FirstEarlyControlEqualityArena,s2FirstEarlyControlPositiveArena,s2FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2FirstEarlyControl_classEquality : compileHmrEqualityLog s2FirstEarlyControlPositiveArena [780, 787] 0 s2FirstEarlyControlLog.classWork=some (s2FirstEarlyControlEqualityArena,s2FirstEarlyControlLog.classWork,s2FirstEarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2FirstEarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2FirstEarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2FirstEarlyControl_classOwned : ([777, 786, 780] : List Wire).toFinset⊆s2FirstEarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlZeroArena (fun q => (0≤q ∧ q<787)) rfl
  decide +kernel
theorem s2FirstEarlyControl_class : compileHmrSourceClassLog s2FirstEarlyControlZeroArena false 777 s2FirstEarlyControlZeroPlan.top 0 780 s2FirstEarlyControlLog.positiveWork s2FirstEarlyControlLog.classWork=some s2FirstEarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2FirstEarlyControlClassPlan s2FirstEarlyControlZeroArena false 777 s2FirstEarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s2FirstEarlyControl_classOwned
  · exact s2FirstEarlyControl_positiveBorrow
  · exact s2FirstEarlyControl_classEquality
private theorem s2FirstEarlyControl_flagsOwned : ([788, 770, 770, 770] : List Wire).toFinset⊆s2FirstEarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlEqualityArena (fun q => (0≤q ∧ q<789)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_flagsBorrow : s2FirstEarlyControlEqualityArena.checkBorrow (6) s2FirstEarlyControlLog.flagWork=some s2FirstEarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2FirstEarlyControlEqualityArena (fun q => (0≤q ∧ q<789)) rfl
      decide +kernel
    · ext q
      simp [s2FirstEarlyControlFlagArena,s2FirstEarlyControlEqualityArena,s2FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2FirstEarlyControl_flags : compileHmrFlagsLog s2FirstEarlyControlClassPlan.equalityArena s2FirstEarlyControlClassPlan.equality.top 770 770 770 s2FirstEarlyControlLog.flagWork=some s2FirstEarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2FirstEarlyControl_flagsOwned⟩
  · exact s2FirstEarlyControl_flagsBorrow
private theorem s2FirstEarlyControl_fitOwned : ([] : List Wire).toFinset⊆s2FirstEarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlFlagArena (fun q => (0≤q ∧ q<795)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_fitBorrow : s2FirstEarlyControlFlagArena.checkBorrow ((1-([] : List Wire).length)) s2FirstEarlyControlLog.recordFresh=some s2FirstEarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2FirstEarlyControlFlagArena (fun q => (0≤q ∧ q<795)) rfl
      decide +kernel
    · ext q
      simp [s2FirstEarlyControlFittedArena,s2FirstEarlyControlFlagArena,s2FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2FirstEarlyControl_fit : compileHmrRecordGrowLog s2FirstEarlyControlFlagArena [] 1 s2FirstEarlyControlLog.recordFresh=some s2FirstEarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2FirstEarlyControl_fitOwned,by decide +kernel⟩
  · exact s2FirstEarlyControl_fitBorrow
private theorem s2FirstEarlyControl_historyOwned : ([] : List Wire).toFinset⊆s2FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_historyBorrow : s2FirstEarlyControlArena.checkBorrow ((1-([] : List Wire).length)) s2FirstEarlyControlLog.recordFresh=some s2FirstEarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
      decide +kernel
    · ext q
      simp [s2FirstEarlyControlHistoryArena,s2FirstEarlyControlArena,s2FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2FirstEarlyControl_history : compileHmrRecordGrowLog s2FirstEarlyControlArena [] 1 s2FirstEarlyControlLog.recordFresh=some s2FirstEarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2FirstEarlyControl_historyOwned,by decide +kernel⟩
  · exact s2FirstEarlyControl_historyBorrow
private theorem s2FirstEarlyControl_sigmaOwned : ([785, 780] : List Wire).toFinset⊆s2FirstEarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s2FirstEarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_sigmaRelease : s2FirstEarlyControlHistoryArena.release {780} (fun _ => false)=some s2FirstEarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2FirstEarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2FirstEarlyControlSigmaArena,s2FirstEarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2FirstEarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2FirstEarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2FirstEarlyControl_branch : compileHmrBranchRetirement s2FirstEarlyControlSigmaArena 781=some s2FirstEarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2FirstEarlyControl_branchOwned
  · ext q
    simp [s2FirstEarlyControlOutputArena,s2FirstEarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2FirstEarlyControl_sigma : compileHmrSigmaDropLog s2FirstEarlyControlHistoryArena false 0 0 785 780 []=some s2FirstEarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2FirstEarlyControl_sigmaOwned⟩
  · exact s2FirstEarlyControl_sigmaRelease
theorem s2FirstEarlyControl_zeroProjection : (compileHmrEqualityLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2FirstEarlyControlLog.zeroWork).map Prod.snd=some (s2FirstEarlyControlLog.zeroWork,s2FirstEarlyControlZeroPlan) := by
  rw [s2FirstEarlyControl_zero]
  rfl
theorem s2FirstEarlyControl_classProjection : (compileHmrSourceClassLog s2FirstEarlyControlZeroArena false 777 s2FirstEarlyControlZeroPlan.top 0 780 s2FirstEarlyControlLog.positiveWork s2FirstEarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2FirstEarlyControlClassPlan.positiveWork,s2FirstEarlyControlClassPlan.equalityWork,s2FirstEarlyControlClassPlan.equality) := by
  rw [s2FirstEarlyControl_class]
  rfl
theorem s2FirstEarlyControl_flagsProjection : (compileHmrFlagsLog s2FirstEarlyControlClassPlan.equalityArena s2FirstEarlyControlClassPlan.equality.top 770 770 770 s2FirstEarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2FirstEarlyControl_flags]
  rfl
theorem s2FirstEarlyControl_fitProjection : (compileHmrRecordGrowLog s2FirstEarlyControlFlagArena [] 1 s2FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2FirstEarlyControl_fit]
  rfl
theorem s2FirstEarlyControl_historyProjection : (compileHmrRecordGrowLog s2FirstEarlyControlArena [] 1 s2FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2FirstEarlyControl_history]
  rfl
theorem s2FirstEarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2FirstEarlyControlHistoryArena false 0 0 785 780 []).map (fun _ => true)=some true := by
  rw [s2FirstEarlyControl_sigma]
  rfl
theorem s2FirstEarlyControl_branchProjection : (compileHmrBranchRetirement s2FirstEarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2FirstEarlyControl_branch]
  rfl
private theorem s2FirstEarlyControl_entrySigmaOwned : ([780, 785] : List Wire).toFinset⊆s2FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
  decide +kernel
private theorem s2FirstEarlyControl_entryRecordOwned : ([781] : List Wire).toFinset⊆s2FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
  decide +kernel
theorem s2FirstEarlyControl_logged : s2FirstEarlyControlPlan.Logged s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] [] 777 780 785 770 770 770 781 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2FirstEarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2FirstEarlyControl_entrySigmaOwned
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
private theorem s2Step1EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_zeroBorrow : s2Step1EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step1EarlyControlLog.zeroWork=some s2Step1EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step1EarlyControlZeroArena,s2Step1EarlyControlArena,s2Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step1EarlyControl_zero : compileHmrEqualityLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step1EarlyControlLog.zeroWork=some (s2Step1EarlyControlZeroArena,s2Step1EarlyControlLog.zeroWork,s2Step1EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step1EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step1EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step1EarlyControl_positiveBorrow : s2Step1EarlyControlZeroArena.checkBorrow (1) s2Step1EarlyControlLog.positiveWork=some s2Step1EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step1EarlyControlZeroArena (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step1EarlyControlPositiveArena,s2Step1EarlyControlZeroArena,s2Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step1EarlyControl_classEqualityOwned : ([778, 788] : List Wire).toFinset⊆s2Step1EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_classEqualityBorrow : s2Step1EarlyControlPositiveArena.checkBorrow (([778, 788] : List Wire).length-1) s2Step1EarlyControlLog.classWork=some s2Step1EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step1EarlyControlPositiveArena (fun q => (0≤q ∧ q<789) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step1EarlyControlEqualityArena,s2Step1EarlyControlPositiveArena,s2Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step1EarlyControl_classEquality : compileHmrEqualityLog s2Step1EarlyControlPositiveArena [778, 788] 0 s2Step1EarlyControlLog.classWork=some (s2Step1EarlyControlEqualityArena,s2Step1EarlyControlLog.classWork,s2Step1EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step1EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step1EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step1EarlyControl_classOwned : ([777, 783, 778] : List Wire).toFinset⊆s2Step1EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlZeroArena (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EarlyControl_class : compileHmrSourceClassLog s2Step1EarlyControlZeroArena false 777 s2Step1EarlyControlZeroPlan.top 0 778 s2Step1EarlyControlLog.positiveWork s2Step1EarlyControlLog.classWork=some s2Step1EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step1EarlyControlClassPlan s2Step1EarlyControlZeroArena false 777 s2Step1EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step1EarlyControl_classOwned
  · exact s2Step1EarlyControl_positiveBorrow
  · exact s2Step1EarlyControl_classEquality
private theorem s2Step1EarlyControl_flagsOwned : ([789, 787, 770, 770] : List Wire).toFinset⊆s2Step1EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_flagsBorrow : s2Step1EarlyControlEqualityArena.checkBorrow (6) s2Step1EarlyControlLog.flagWork=some s2Step1EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step1EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step1EarlyControlFlagArena,s2Step1EarlyControlEqualityArena,s2Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step1EarlyControl_flags : compileHmrFlagsLog s2Step1EarlyControlClassPlan.equalityArena s2Step1EarlyControlClassPlan.equality.top 787 770 770 s2Step1EarlyControlLog.flagWork=some s2Step1EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step1EarlyControl_flagsOwned⟩
  · exact s2Step1EarlyControl_flagsBorrow
private theorem s2Step1EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step1EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlFlagArena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_fitBorrow : s2Step1EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step1EarlyControlLog.recordFresh=some s2Step1EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step1EarlyControlFlagArena (fun q => (0≤q ∧ q<797)) rfl
      decide +kernel
    · ext q
      simp [s2Step1EarlyControlFittedArena,s2Step1EarlyControlFlagArena,s2Step1EarlyControlLog,arenaWires]
theorem s2Step1EarlyControl_fit : compileHmrRecordGrowLog s2Step1EarlyControlFlagArena [795] 1 s2Step1EarlyControlLog.recordFresh=some s2Step1EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step1EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step1EarlyControl_fitBorrow
private theorem s2Step1EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_historyBorrow : s2Step1EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step1EarlyControlLog.recordFresh=some s2Step1EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step1EarlyControlHistoryArena,s2Step1EarlyControlArena,s2Step1EarlyControlLog,arenaWires]
theorem s2Step1EarlyControl_history : compileHmrRecordGrowLog s2Step1EarlyControlArena [795] 1 s2Step1EarlyControlLog.recordFresh=some s2Step1EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step1EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step1EarlyControl_historyBorrow
private theorem s2Step1EarlyControl_sigmaOwned : ([785, 778] : List Wire).toFinset⊆s2Step1EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step1EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_sigmaRelease : s2Step1EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step1EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step1EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step1EarlyControlSigmaArena,s2Step1EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step1EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step1EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EarlyControl_branch : compileHmrBranchRetirement s2Step1EarlyControlSigmaArena 784=some s2Step1EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step1EarlyControl_branchOwned
  · ext q
    simp [s2Step1EarlyControlOutputArena,s2Step1EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step1EarlyControl_sigma : compileHmrSigmaDropLog s2Step1EarlyControlHistoryArena false 0 0 785 778 []=some s2Step1EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step1EarlyControl_sigmaOwned⟩
  · exact s2Step1EarlyControl_sigmaRelease
theorem s2Step1EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step1EarlyControlLog.zeroWork).map Prod.snd=some (s2Step1EarlyControlLog.zeroWork,s2Step1EarlyControlZeroPlan) := by
  rw [s2Step1EarlyControl_zero]
  rfl
theorem s2Step1EarlyControl_classProjection : (compileHmrSourceClassLog s2Step1EarlyControlZeroArena false 777 s2Step1EarlyControlZeroPlan.top 0 778 s2Step1EarlyControlLog.positiveWork s2Step1EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step1EarlyControlClassPlan.positiveWork,s2Step1EarlyControlClassPlan.equalityWork,s2Step1EarlyControlClassPlan.equality) := by
  rw [s2Step1EarlyControl_class]
  rfl
theorem s2Step1EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step1EarlyControlClassPlan.equalityArena s2Step1EarlyControlClassPlan.equality.top 787 770 770 s2Step1EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step1EarlyControl_flags]
  rfl
theorem s2Step1EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step1EarlyControlFlagArena [795] 1 s2Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step1EarlyControl_fit]
  rfl
theorem s2Step1EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step1EarlyControlArena [795] 1 s2Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step1EarlyControl_history]
  rfl
theorem s2Step1EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step1EarlyControlHistoryArena false 0 0 785 778 []).map (fun _ => true)=some true := by
  rw [s2Step1EarlyControl_sigma]
  rfl
theorem s2Step1EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step1EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  rw [s2Step1EarlyControl_branch]
  rfl
private theorem s2Step1EarlyControl_entrySigmaOwned : ([778, 785] : List Wire).toFinset⊆s2Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step1EarlyControl_entryRecordOwned : ([784, 795] : List Wire).toFinset⊆s2Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EarlyControl_logged : s2Step1EarlyControlPlan.Logged s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 778 785 787 770 770 784 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step1EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step1EarlyControl_entrySigmaOwned
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
private theorem s2Step2EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_zeroBorrow : s2Step2EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step2EarlyControlLog.zeroWork=some s2Step2EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step2EarlyControlZeroArena,s2Step2EarlyControlArena,s2Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step2EarlyControl_zero : compileHmrEqualityLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step2EarlyControlLog.zeroWork=some (s2Step2EarlyControlZeroArena,s2Step2EarlyControlLog.zeroWork,s2Step2EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step2EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step2EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step2EarlyControl_positiveBorrow : s2Step2EarlyControlZeroArena.checkBorrow (1) s2Step2EarlyControlLog.positiveWork=some s2Step2EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step2EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step2EarlyControlPositiveArena,s2Step2EarlyControlZeroArena,s2Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step2EarlyControl_classEqualityOwned : ([786, 790] : List Wire).toFinset⊆s2Step2EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlPositiveArena (fun q => (0≤q ∧ q<791) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_classEqualityBorrow : s2Step2EarlyControlPositiveArena.checkBorrow (([786, 790] : List Wire).length-1) s2Step2EarlyControlLog.classWork=some s2Step2EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step2EarlyControlPositiveArena (fun q => (0≤q ∧ q<791) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step2EarlyControlEqualityArena,s2Step2EarlyControlPositiveArena,s2Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step2EarlyControl_classEquality : compileHmrEqualityLog s2Step2EarlyControlPositiveArena [786, 790] 0 s2Step2EarlyControlLog.classWork=some (s2Step2EarlyControlEqualityArena,s2Step2EarlyControlLog.classWork,s2Step2EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step2EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step2EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step2EarlyControl_classOwned : ([777, 781, 786] : List Wire).toFinset⊆s2Step2EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EarlyControl_class : compileHmrSourceClassLog s2Step2EarlyControlZeroArena false 777 s2Step2EarlyControlZeroPlan.top 0 786 s2Step2EarlyControlLog.positiveWork s2Step2EarlyControlLog.classWork=some s2Step2EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step2EarlyControlClassPlan s2Step2EarlyControlZeroArena false 777 s2Step2EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step2EarlyControl_classOwned
  · exact s2Step2EarlyControl_positiveBorrow
  · exact s2Step2EarlyControl_classEquality
private theorem s2Step2EarlyControl_flagsOwned : ([791, 787, 789, 770] : List Wire).toFinset⊆s2Step2EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_flagsBorrow : s2Step2EarlyControlEqualityArena.checkBorrow (6) s2Step2EarlyControlLog.flagWork=some s2Step2EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step2EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step2EarlyControlFlagArena,s2Step2EarlyControlEqualityArena,s2Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step2EarlyControl_flags : compileHmrFlagsLog s2Step2EarlyControlClassPlan.equalityArena s2Step2EarlyControlClassPlan.equality.top 787 789 770 s2Step2EarlyControlLog.flagWork=some s2Step2EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step2EarlyControl_flagsOwned⟩
  · exact s2Step2EarlyControl_flagsBorrow
private theorem s2Step2EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step2EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlFlagArena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_fitBorrow : s2Step2EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step2EarlyControlLog.recordFresh=some s2Step2EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step2EarlyControlFlagArena (fun q => (0≤q ∧ q<799)) rfl
      decide +kernel
    · ext q
      simp [s2Step2EarlyControlFittedArena,s2Step2EarlyControlFlagArena,s2Step2EarlyControlLog,arenaWires]
theorem s2Step2EarlyControl_fit : compileHmrRecordGrowLog s2Step2EarlyControlFlagArena [795] 1 s2Step2EarlyControlLog.recordFresh=some s2Step2EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step2EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step2EarlyControl_fitBorrow
private theorem s2Step2EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_historyBorrow : s2Step2EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step2EarlyControlLog.recordFresh=some s2Step2EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step2EarlyControlHistoryArena,s2Step2EarlyControlArena,s2Step2EarlyControlLog,arenaWires]
theorem s2Step2EarlyControl_history : compileHmrRecordGrowLog s2Step2EarlyControlArena [795] 1 s2Step2EarlyControlLog.recordFresh=some s2Step2EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step2EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step2EarlyControl_historyBorrow
private theorem s2Step2EarlyControl_sigmaOwned : ([785, 786] : List Wire).toFinset⊆s2Step2EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step2EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_sigmaRelease : s2Step2EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step2EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step2EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step2EarlyControlSigmaArena,s2Step2EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step2EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step2EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EarlyControl_branch : compileHmrBranchRetirement s2Step2EarlyControlSigmaArena 782=some s2Step2EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step2EarlyControl_branchOwned
  · ext q
    simp [s2Step2EarlyControlOutputArena,s2Step2EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step2EarlyControl_sigma : compileHmrSigmaDropLog s2Step2EarlyControlHistoryArena false 0 0 785 786 []=some s2Step2EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step2EarlyControl_sigmaOwned⟩
  · exact s2Step2EarlyControl_sigmaRelease
theorem s2Step2EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step2EarlyControlLog.zeroWork).map Prod.snd=some (s2Step2EarlyControlLog.zeroWork,s2Step2EarlyControlZeroPlan) := by
  rw [s2Step2EarlyControl_zero]
  rfl
theorem s2Step2EarlyControl_classProjection : (compileHmrSourceClassLog s2Step2EarlyControlZeroArena false 777 s2Step2EarlyControlZeroPlan.top 0 786 s2Step2EarlyControlLog.positiveWork s2Step2EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step2EarlyControlClassPlan.positiveWork,s2Step2EarlyControlClassPlan.equalityWork,s2Step2EarlyControlClassPlan.equality) := by
  rw [s2Step2EarlyControl_class]
  rfl
theorem s2Step2EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step2EarlyControlClassPlan.equalityArena s2Step2EarlyControlClassPlan.equality.top 787 789 770 s2Step2EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step2EarlyControl_flags]
  rfl
theorem s2Step2EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step2EarlyControlFlagArena [795] 1 s2Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step2EarlyControl_fit]
  rfl
theorem s2Step2EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step2EarlyControlArena [795] 1 s2Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step2EarlyControl_history]
  rfl
theorem s2Step2EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step2EarlyControlHistoryArena false 0 0 785 786 []).map (fun _ => true)=some true := by
  rw [s2Step2EarlyControl_sigma]
  rfl
theorem s2Step2EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step2EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  rw [s2Step2EarlyControl_branch]
  rfl
private theorem s2Step2EarlyControl_entrySigmaOwned : ([786, 785] : List Wire).toFinset⊆s2Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step2EarlyControl_entryRecordOwned : ([782, 795] : List Wire).toFinset⊆s2Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EarlyControl_logged : s2Step2EarlyControlPlan.Logged s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 786 785 787 789 770 782 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step2EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step2EarlyControl_entrySigmaOwned
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
private theorem s2Step3EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_zeroBorrow : s2Step3EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step3EarlyControlLog.zeroWork=some s2Step3EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step3EarlyControlZeroArena,s2Step3EarlyControlArena,s2Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step3EarlyControl_zero : compileHmrEqualityLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step3EarlyControlLog.zeroWork=some (s2Step3EarlyControlZeroArena,s2Step3EarlyControlLog.zeroWork,s2Step3EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step3EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step3EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step3EarlyControl_positiveBorrow : s2Step3EarlyControlZeroArena.checkBorrow (1) s2Step3EarlyControlLog.positiveWork=some s2Step3EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step3EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step3EarlyControlPositiveArena,s2Step3EarlyControlZeroArena,s2Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step3EarlyControl_classEqualityOwned : ([788, 792] : List Wire).toFinset⊆s2Step3EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_classEqualityBorrow : s2Step3EarlyControlPositiveArena.checkBorrow (([788, 792] : List Wire).length-1) s2Step3EarlyControlLog.classWork=some s2Step3EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step3EarlyControlPositiveArena (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step3EarlyControlEqualityArena,s2Step3EarlyControlPositiveArena,s2Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step3EarlyControl_classEquality : compileHmrEqualityLog s2Step3EarlyControlPositiveArena [788, 792] 0 s2Step3EarlyControlLog.classWork=some (s2Step3EarlyControlEqualityArena,s2Step3EarlyControlLog.classWork,s2Step3EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step3EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step3EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step3EarlyControl_classOwned : ([777, 784, 788] : List Wire).toFinset⊆s2Step3EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EarlyControl_class : compileHmrSourceClassLog s2Step3EarlyControlZeroArena false 777 s2Step3EarlyControlZeroPlan.top 0 788 s2Step3EarlyControlLog.positiveWork s2Step3EarlyControlLog.classWork=some s2Step3EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step3EarlyControlClassPlan s2Step3EarlyControlZeroArena false 777 s2Step3EarlyControlZeroPlan.top 0 788
  constructor
  · decide +kernel
  · exact s2Step3EarlyControl_classOwned
  · exact s2Step3EarlyControl_positiveBorrow
  · exact s2Step3EarlyControl_classEquality
private theorem s2Step3EarlyControl_flagsOwned : ([793, 787, 789, 791] : List Wire).toFinset⊆s2Step3EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_flagsBorrow : s2Step3EarlyControlEqualityArena.checkBorrow (6) s2Step3EarlyControlLog.flagWork=some s2Step3EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step3EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step3EarlyControlFlagArena,s2Step3EarlyControlEqualityArena,s2Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step3EarlyControl_flags : compileHmrFlagsLog s2Step3EarlyControlClassPlan.equalityArena s2Step3EarlyControlClassPlan.equality.top 787 789 791 s2Step3EarlyControlLog.flagWork=some s2Step3EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step3EarlyControl_flagsOwned⟩
  · exact s2Step3EarlyControl_flagsBorrow
private theorem s2Step3EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step3EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlFlagArena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_fitBorrow : s2Step3EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step3EarlyControlLog.recordFresh=some s2Step3EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step3EarlyControlFlagArena (fun q => (0≤q ∧ q<801)) rfl
      decide +kernel
    · ext q
      simp [s2Step3EarlyControlFittedArena,s2Step3EarlyControlFlagArena,s2Step3EarlyControlLog,arenaWires]
theorem s2Step3EarlyControl_fit : compileHmrRecordGrowLog s2Step3EarlyControlFlagArena [795] 1 s2Step3EarlyControlLog.recordFresh=some s2Step3EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step3EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step3EarlyControl_fitBorrow
private theorem s2Step3EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_historyBorrow : s2Step3EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step3EarlyControlLog.recordFresh=some s2Step3EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step3EarlyControlHistoryArena,s2Step3EarlyControlArena,s2Step3EarlyControlLog,arenaWires]
theorem s2Step3EarlyControl_history : compileHmrRecordGrowLog s2Step3EarlyControlArena [795] 1 s2Step3EarlyControlLog.recordFresh=some s2Step3EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step3EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step3EarlyControl_historyBorrow
private theorem s2Step3EarlyControl_sigmaOwned : ([785, 788] : List Wire).toFinset⊆s2Step3EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_sigmaReleaseOwned : ([788] : List Wire).toFinset⊆s2Step3EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_sigmaRelease : s2Step3EarlyControlHistoryArena.release {788} (fun _ => false)=some s2Step3EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step3EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step3EarlyControlSigmaArena,s2Step3EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step3EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step3EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EarlyControl_branch : compileHmrBranchRetirement s2Step3EarlyControlSigmaArena 783=some s2Step3EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step3EarlyControl_branchOwned
  · ext q
    simp [s2Step3EarlyControlOutputArena,s2Step3EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step3EarlyControl_sigma : compileHmrSigmaDropLog s2Step3EarlyControlHistoryArena false 0 0 785 788 []=some s2Step3EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step3EarlyControl_sigmaOwned⟩
  · exact s2Step3EarlyControl_sigmaRelease
theorem s2Step3EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step3EarlyControlLog.zeroWork).map Prod.snd=some (s2Step3EarlyControlLog.zeroWork,s2Step3EarlyControlZeroPlan) := by
  rw [s2Step3EarlyControl_zero]
  rfl
theorem s2Step3EarlyControl_classProjection : (compileHmrSourceClassLog s2Step3EarlyControlZeroArena false 777 s2Step3EarlyControlZeroPlan.top 0 788 s2Step3EarlyControlLog.positiveWork s2Step3EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step3EarlyControlClassPlan.positiveWork,s2Step3EarlyControlClassPlan.equalityWork,s2Step3EarlyControlClassPlan.equality) := by
  rw [s2Step3EarlyControl_class]
  rfl
theorem s2Step3EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step3EarlyControlClassPlan.equalityArena s2Step3EarlyControlClassPlan.equality.top 787 789 791 s2Step3EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step3EarlyControl_flags]
  rfl
theorem s2Step3EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step3EarlyControlFlagArena [795] 1 s2Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step3EarlyControl_fit]
  rfl
theorem s2Step3EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step3EarlyControlArena [795] 1 s2Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step3EarlyControl_history]
  rfl
theorem s2Step3EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step3EarlyControlHistoryArena false 0 0 785 788 []).map (fun _ => true)=some true := by
  rw [s2Step3EarlyControl_sigma]
  rfl
theorem s2Step3EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step3EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  rw [s2Step3EarlyControl_branch]
  rfl
private theorem s2Step3EarlyControl_entrySigmaOwned : ([788, 785] : List Wire).toFinset⊆s2Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step3EarlyControl_entryRecordOwned : ([783, 795] : List Wire).toFinset⊆s2Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EarlyControl_logged : s2Step3EarlyControlPlan.Logged s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 788 785 787 789 791 783 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step3EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step3EarlyControl_entrySigmaOwned
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
private theorem s2Step4EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_zeroBorrow : s2Step4EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step4EarlyControlLog.zeroWork=some s2Step4EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step4EarlyControlZeroArena,s2Step4EarlyControlArena,s2Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step4EarlyControl_zero : compileHmrEqualityLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step4EarlyControlLog.zeroWork=some (s2Step4EarlyControlZeroArena,s2Step4EarlyControlLog.zeroWork,s2Step4EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step4EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step4EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step4EarlyControl_positiveBorrow : s2Step4EarlyControlZeroArena.checkBorrow (1) s2Step4EarlyControlLog.positiveWork=some s2Step4EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step4EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step4EarlyControlPositiveArena,s2Step4EarlyControlZeroArena,s2Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step4EarlyControl_classEqualityOwned : ([790, 794] : List Wire).toFinset⊆s2Step4EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlPositiveArena (fun q => (0≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_classEqualityBorrow : s2Step4EarlyControlPositiveArena.checkBorrow (([790, 794] : List Wire).length-1) s2Step4EarlyControlLog.classWork=some s2Step4EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step4EarlyControlPositiveArena (fun q => (0≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step4EarlyControlEqualityArena,s2Step4EarlyControlPositiveArena,s2Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step4EarlyControl_classEquality : compileHmrEqualityLog s2Step4EarlyControlPositiveArena [790, 794] 0 s2Step4EarlyControlLog.classWork=some (s2Step4EarlyControlEqualityArena,s2Step4EarlyControlLog.classWork,s2Step4EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step4EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step4EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step4EarlyControl_classOwned : ([777, 782, 790] : List Wire).toFinset⊆s2Step4EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EarlyControl_class : compileHmrSourceClassLog s2Step4EarlyControlZeroArena false 777 s2Step4EarlyControlZeroPlan.top 0 790 s2Step4EarlyControlLog.positiveWork s2Step4EarlyControlLog.classWork=some s2Step4EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step4EarlyControlClassPlan s2Step4EarlyControlZeroArena false 777 s2Step4EarlyControlZeroPlan.top 0 790
  constructor
  · decide +kernel
  · exact s2Step4EarlyControl_classOwned
  · exact s2Step4EarlyControl_positiveBorrow
  · exact s2Step4EarlyControl_classEquality
private theorem s2Step4EarlyControl_flagsOwned : ([796, 787, 789, 791] : List Wire).toFinset⊆s2Step4EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlEqualityArena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_flagsBorrow : s2Step4EarlyControlEqualityArena.checkBorrow (6) s2Step4EarlyControlLog.flagWork=some s2Step4EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step4EarlyControlEqualityArena (fun q => (0≤q ∧ q<797)) rfl
      decide +kernel
    · ext q
      simp [s2Step4EarlyControlFlagArena,s2Step4EarlyControlEqualityArena,s2Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step4EarlyControl_flags : compileHmrFlagsLog s2Step4EarlyControlClassPlan.equalityArena s2Step4EarlyControlClassPlan.equality.top 787 789 791 s2Step4EarlyControlLog.flagWork=some s2Step4EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step4EarlyControl_flagsOwned⟩
  · exact s2Step4EarlyControl_flagsBorrow
private theorem s2Step4EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step4EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlFlagArena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_fitBorrow : s2Step4EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step4EarlyControlLog.recordFresh=some s2Step4EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step4EarlyControlFlagArena (fun q => (0≤q ∧ q<803)) rfl
      decide +kernel
    · ext q
      simp [s2Step4EarlyControlFittedArena,s2Step4EarlyControlFlagArena,s2Step4EarlyControlLog,arenaWires]
theorem s2Step4EarlyControl_fit : compileHmrRecordGrowLog s2Step4EarlyControlFlagArena [795] 1 s2Step4EarlyControlLog.recordFresh=some s2Step4EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step4EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step4EarlyControl_fitBorrow
private theorem s2Step4EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_historyBorrow : s2Step4EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step4EarlyControlLog.recordFresh=some s2Step4EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
      decide +kernel
    · ext q
      simp [s2Step4EarlyControlHistoryArena,s2Step4EarlyControlArena,s2Step4EarlyControlLog,arenaWires]
theorem s2Step4EarlyControl_history : compileHmrRecordGrowLog s2Step4EarlyControlArena [795] 1 s2Step4EarlyControlLog.recordFresh=some s2Step4EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step4EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step4EarlyControl_historyBorrow
private theorem s2Step4EarlyControl_sigmaOwned : ([785, 790] : List Wire).toFinset⊆s2Step4EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_sigmaReleaseOwned : ([790] : List Wire).toFinset⊆s2Step4EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_sigmaRelease : s2Step4EarlyControlHistoryArena.release {790} (fun _ => false)=some s2Step4EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step4EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step4EarlyControlSigmaArena,s2Step4EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step4EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step4EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EarlyControl_branch : compileHmrBranchRetirement s2Step4EarlyControlSigmaArena 781=some s2Step4EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step4EarlyControl_branchOwned
  · ext q
    simp [s2Step4EarlyControlOutputArena,s2Step4EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step4EarlyControl_sigma : compileHmrSigmaDropLog s2Step4EarlyControlHistoryArena false 0 0 785 790 []=some s2Step4EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step4EarlyControl_sigmaOwned⟩
  · exact s2Step4EarlyControl_sigmaRelease
theorem s2Step4EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step4EarlyControlLog.zeroWork).map Prod.snd=some (s2Step4EarlyControlLog.zeroWork,s2Step4EarlyControlZeroPlan) := by
  rw [s2Step4EarlyControl_zero]
  rfl
theorem s2Step4EarlyControl_classProjection : (compileHmrSourceClassLog s2Step4EarlyControlZeroArena false 777 s2Step4EarlyControlZeroPlan.top 0 790 s2Step4EarlyControlLog.positiveWork s2Step4EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step4EarlyControlClassPlan.positiveWork,s2Step4EarlyControlClassPlan.equalityWork,s2Step4EarlyControlClassPlan.equality) := by
  rw [s2Step4EarlyControl_class]
  rfl
theorem s2Step4EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step4EarlyControlClassPlan.equalityArena s2Step4EarlyControlClassPlan.equality.top 787 789 791 s2Step4EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step4EarlyControl_flags]
  rfl
theorem s2Step4EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step4EarlyControlFlagArena [795] 1 s2Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step4EarlyControl_fit]
  rfl
theorem s2Step4EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step4EarlyControlArena [795] 1 s2Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step4EarlyControl_history]
  rfl
theorem s2Step4EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step4EarlyControlHistoryArena false 0 0 785 790 []).map (fun _ => true)=some true := by
  rw [s2Step4EarlyControl_sigma]
  rfl
theorem s2Step4EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step4EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2Step4EarlyControl_branch]
  rfl
private theorem s2Step4EarlyControl_entrySigmaOwned : ([790, 785] : List Wire).toFinset⊆s2Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
private theorem s2Step4EarlyControl_entryRecordOwned : ([781, 795] : List Wire).toFinset⊆s2Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EarlyControl_logged : s2Step4EarlyControlPlan.Logged s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 790 785 787 789 791 781 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step4EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step4EarlyControl_entrySigmaOwned
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
private theorem s2Step5EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_zeroBorrow : s2Step5EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step5EarlyControlLog.zeroWork=some s2Step5EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
      decide +kernel
    · ext q
      simp [s2Step5EarlyControlZeroArena,s2Step5EarlyControlArena,s2Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step5EarlyControl_zero : compileHmrEqualityLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step5EarlyControlLog.zeroWork=some (s2Step5EarlyControlZeroArena,s2Step5EarlyControlLog.zeroWork,s2Step5EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step5EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step5EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step5EarlyControl_positiveBorrow : s2Step5EarlyControlZeroArena.checkBorrow (1) s2Step5EarlyControlLog.positiveWork=some s2Step5EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step5EarlyControlZeroArena (fun q => (0≤q ∧ q<797)) rfl
      decide +kernel
    · ext q
      simp [s2Step5EarlyControlPositiveArena,s2Step5EarlyControlZeroArena,s2Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step5EarlyControl_classEqualityOwned : ([792, 797] : List Wire).toFinset⊆s2Step5EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlPositiveArena (fun q => (0≤q ∧ q<798)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_classEqualityBorrow : s2Step5EarlyControlPositiveArena.checkBorrow (([792, 797] : List Wire).length-1) s2Step5EarlyControlLog.classWork=some s2Step5EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step5EarlyControlPositiveArena (fun q => (0≤q ∧ q<798)) rfl
      decide +kernel
    · ext q
      simp [s2Step5EarlyControlEqualityArena,s2Step5EarlyControlPositiveArena,s2Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step5EarlyControl_classEquality : compileHmrEqualityLog s2Step5EarlyControlPositiveArena [792, 797] 0 s2Step5EarlyControlLog.classWork=some (s2Step5EarlyControlEqualityArena,s2Step5EarlyControlLog.classWork,s2Step5EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step5EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step5EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step5EarlyControl_classOwned : ([777, 783, 792] : List Wire).toFinset⊆s2Step5EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlZeroArena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5EarlyControl_class : compileHmrSourceClassLog s2Step5EarlyControlZeroArena false 777 s2Step5EarlyControlZeroPlan.top 0 792 s2Step5EarlyControlLog.positiveWork s2Step5EarlyControlLog.classWork=some s2Step5EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step5EarlyControlClassPlan s2Step5EarlyControlZeroArena false 777 s2Step5EarlyControlZeroPlan.top 0 792
  constructor
  · decide +kernel
  · exact s2Step5EarlyControl_classOwned
  · exact s2Step5EarlyControl_positiveBorrow
  · exact s2Step5EarlyControl_classEquality
private theorem s2Step5EarlyControl_flagsOwned : ([798, 787, 789, 791] : List Wire).toFinset⊆s2Step5EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlEqualityArena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_flagsBorrow : s2Step5EarlyControlEqualityArena.checkBorrow (6) s2Step5EarlyControlLog.flagWork=some s2Step5EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step5EarlyControlEqualityArena (fun q => (0≤q ∧ q<799)) rfl
      decide +kernel
    · ext q
      simp [s2Step5EarlyControlFlagArena,s2Step5EarlyControlEqualityArena,s2Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step5EarlyControl_flags : compileHmrFlagsLog s2Step5EarlyControlClassPlan.equalityArena s2Step5EarlyControlClassPlan.equality.top 787 789 791 s2Step5EarlyControlLog.flagWork=some s2Step5EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step5EarlyControl_flagsOwned⟩
  · exact s2Step5EarlyControl_flagsBorrow
private theorem s2Step5EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step5EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlFlagArena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_fitBorrow : s2Step5EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step5EarlyControlLog.recordFresh=some s2Step5EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step5EarlyControlFlagArena (fun q => (0≤q ∧ q<805)) rfl
      decide +kernel
    · ext q
      simp [s2Step5EarlyControlFittedArena,s2Step5EarlyControlFlagArena,s2Step5EarlyControlLog,arenaWires]
theorem s2Step5EarlyControl_fit : compileHmrRecordGrowLog s2Step5EarlyControlFlagArena [795] 1 s2Step5EarlyControlLog.recordFresh=some s2Step5EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step5EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step5EarlyControl_fitBorrow
private theorem s2Step5EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_historyBorrow : s2Step5EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step5EarlyControlLog.recordFresh=some s2Step5EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
      decide +kernel
    · ext q
      simp [s2Step5EarlyControlHistoryArena,s2Step5EarlyControlArena,s2Step5EarlyControlLog,arenaWires]
theorem s2Step5EarlyControl_history : compileHmrRecordGrowLog s2Step5EarlyControlArena [795] 1 s2Step5EarlyControlLog.recordFresh=some s2Step5EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step5EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step5EarlyControl_historyBorrow
private theorem s2Step5EarlyControl_sigmaOwned : ([785, 792] : List Wire).toFinset⊆s2Step5EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_sigmaReleaseOwned : ([792] : List Wire).toFinset⊆s2Step5EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_sigmaRelease : s2Step5EarlyControlHistoryArena.release {792} (fun _ => false)=some s2Step5EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step5EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step5EarlyControlSigmaArena,s2Step5EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step5EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step5EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5EarlyControl_branch : compileHmrBranchRetirement s2Step5EarlyControlSigmaArena 784=some s2Step5EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step5EarlyControl_branchOwned
  · ext q
    simp [s2Step5EarlyControlOutputArena,s2Step5EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step5EarlyControl_sigma : compileHmrSigmaDropLog s2Step5EarlyControlHistoryArena false 0 0 785 792 []=some s2Step5EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step5EarlyControl_sigmaOwned⟩
  · exact s2Step5EarlyControl_sigmaRelease
theorem s2Step5EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step5EarlyControlLog.zeroWork).map Prod.snd=some (s2Step5EarlyControlLog.zeroWork,s2Step5EarlyControlZeroPlan) := by
  rw [s2Step5EarlyControl_zero]
  rfl
theorem s2Step5EarlyControl_classProjection : (compileHmrSourceClassLog s2Step5EarlyControlZeroArena false 777 s2Step5EarlyControlZeroPlan.top 0 792 s2Step5EarlyControlLog.positiveWork s2Step5EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step5EarlyControlClassPlan.positiveWork,s2Step5EarlyControlClassPlan.equalityWork,s2Step5EarlyControlClassPlan.equality) := by
  rw [s2Step5EarlyControl_class]
  rfl
theorem s2Step5EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step5EarlyControlClassPlan.equalityArena s2Step5EarlyControlClassPlan.equality.top 787 789 791 s2Step5EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step5EarlyControl_flags]
  rfl
theorem s2Step5EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step5EarlyControlFlagArena [795] 1 s2Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step5EarlyControl_fit]
  rfl
theorem s2Step5EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step5EarlyControlArena [795] 1 s2Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step5EarlyControl_history]
  rfl
theorem s2Step5EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step5EarlyControlHistoryArena false 0 0 785 792 []).map (fun _ => true)=some true := by
  rw [s2Step5EarlyControl_sigma]
  rfl
theorem s2Step5EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step5EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  rw [s2Step5EarlyControl_branch]
  rfl
private theorem s2Step5EarlyControl_entrySigmaOwned : ([792, 785] : List Wire).toFinset⊆s2Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
private theorem s2Step5EarlyControl_entryRecordOwned : ([784, 795] : List Wire).toFinset⊆s2Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5EarlyControl_logged : s2Step5EarlyControlPlan.Logged s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 792 785 787 789 791 784 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step5EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step5EarlyControl_entrySigmaOwned
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
private theorem s2Step6EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_zeroBorrow : s2Step6EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step6EarlyControlLog.zeroWork=some s2Step6EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
      decide +kernel
    · ext q
      simp [s2Step6EarlyControlZeroArena,s2Step6EarlyControlArena,s2Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step6EarlyControl_zero : compileHmrEqualityLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step6EarlyControlLog.zeroWork=some (s2Step6EarlyControlZeroArena,s2Step6EarlyControlLog.zeroWork,s2Step6EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step6EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step6EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step6EarlyControl_positiveBorrow : s2Step6EarlyControlZeroArena.checkBorrow (1) s2Step6EarlyControlLog.positiveWork=some s2Step6EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step6EarlyControlZeroArena (fun q => (0≤q ∧ q<799)) rfl
      decide +kernel
    · ext q
      simp [s2Step6EarlyControlPositiveArena,s2Step6EarlyControlZeroArena,s2Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step6EarlyControl_classEqualityOwned : ([794, 799] : List Wire).toFinset⊆s2Step6EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlPositiveArena (fun q => (0≤q ∧ q<800)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_classEqualityBorrow : s2Step6EarlyControlPositiveArena.checkBorrow (([794, 799] : List Wire).length-1) s2Step6EarlyControlLog.classWork=some s2Step6EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step6EarlyControlPositiveArena (fun q => (0≤q ∧ q<800)) rfl
      decide +kernel
    · ext q
      simp [s2Step6EarlyControlEqualityArena,s2Step6EarlyControlPositiveArena,s2Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step6EarlyControl_classEquality : compileHmrEqualityLog s2Step6EarlyControlPositiveArena [794, 799] 0 s2Step6EarlyControlLog.classWork=some (s2Step6EarlyControlEqualityArena,s2Step6EarlyControlLog.classWork,s2Step6EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step6EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step6EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step6EarlyControl_classOwned : ([777, 781, 794] : List Wire).toFinset⊆s2Step6EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlZeroArena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6EarlyControl_class : compileHmrSourceClassLog s2Step6EarlyControlZeroArena false 777 s2Step6EarlyControlZeroPlan.top 0 794 s2Step6EarlyControlLog.positiveWork s2Step6EarlyControlLog.classWork=some s2Step6EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step6EarlyControlClassPlan s2Step6EarlyControlZeroArena false 777 s2Step6EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step6EarlyControl_classOwned
  · exact s2Step6EarlyControl_positiveBorrow
  · exact s2Step6EarlyControl_classEquality
private theorem s2Step6EarlyControl_flagsOwned : ([800, 787, 789, 791] : List Wire).toFinset⊆s2Step6EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlEqualityArena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_flagsBorrow : s2Step6EarlyControlEqualityArena.checkBorrow (6) s2Step6EarlyControlLog.flagWork=some s2Step6EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step6EarlyControlEqualityArena (fun q => (0≤q ∧ q<801)) rfl
      decide +kernel
    · ext q
      simp [s2Step6EarlyControlFlagArena,s2Step6EarlyControlEqualityArena,s2Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step6EarlyControl_flags : compileHmrFlagsLog s2Step6EarlyControlClassPlan.equalityArena s2Step6EarlyControlClassPlan.equality.top 787 789 791 s2Step6EarlyControlLog.flagWork=some s2Step6EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step6EarlyControl_flagsOwned⟩
  · exact s2Step6EarlyControl_flagsBorrow
private theorem s2Step6EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step6EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlFlagArena (fun q => (0≤q ∧ q<807)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_fitBorrow : s2Step6EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step6EarlyControlLog.recordFresh=some s2Step6EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step6EarlyControlFlagArena (fun q => (0≤q ∧ q<807)) rfl
      decide +kernel
    · ext q
      simp [s2Step6EarlyControlFittedArena,s2Step6EarlyControlFlagArena,s2Step6EarlyControlLog,arenaWires]
theorem s2Step6EarlyControl_fit : compileHmrRecordGrowLog s2Step6EarlyControlFlagArena [795] 1 s2Step6EarlyControlLog.recordFresh=some s2Step6EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step6EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step6EarlyControl_fitBorrow
private theorem s2Step6EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_historyBorrow : s2Step6EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step6EarlyControlLog.recordFresh=some s2Step6EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
      decide +kernel
    · ext q
      simp [s2Step6EarlyControlHistoryArena,s2Step6EarlyControlArena,s2Step6EarlyControlLog,arenaWires]
theorem s2Step6EarlyControl_history : compileHmrRecordGrowLog s2Step6EarlyControlArena [795] 1 s2Step6EarlyControlLog.recordFresh=some s2Step6EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step6EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step6EarlyControl_historyBorrow
private theorem s2Step6EarlyControl_sigmaOwned : ([785, 794] : List Wire).toFinset⊆s2Step6EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step6EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_sigmaRelease : s2Step6EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step6EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step6EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step6EarlyControlSigmaArena,s2Step6EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step6EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step6EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6EarlyControl_branch : compileHmrBranchRetirement s2Step6EarlyControlSigmaArena 782=some s2Step6EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step6EarlyControl_branchOwned
  · ext q
    simp [s2Step6EarlyControlOutputArena,s2Step6EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step6EarlyControl_sigma : compileHmrSigmaDropLog s2Step6EarlyControlHistoryArena false 0 0 785 794 []=some s2Step6EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step6EarlyControl_sigmaOwned⟩
  · exact s2Step6EarlyControl_sigmaRelease
theorem s2Step6EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step6EarlyControlLog.zeroWork).map Prod.snd=some (s2Step6EarlyControlLog.zeroWork,s2Step6EarlyControlZeroPlan) := by
  rw [s2Step6EarlyControl_zero]
  rfl
theorem s2Step6EarlyControl_classProjection : (compileHmrSourceClassLog s2Step6EarlyControlZeroArena false 777 s2Step6EarlyControlZeroPlan.top 0 794 s2Step6EarlyControlLog.positiveWork s2Step6EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step6EarlyControlClassPlan.positiveWork,s2Step6EarlyControlClassPlan.equalityWork,s2Step6EarlyControlClassPlan.equality) := by
  rw [s2Step6EarlyControl_class]
  rfl
theorem s2Step6EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step6EarlyControlClassPlan.equalityArena s2Step6EarlyControlClassPlan.equality.top 787 789 791 s2Step6EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step6EarlyControl_flags]
  rfl
theorem s2Step6EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step6EarlyControlFlagArena [795] 1 s2Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step6EarlyControl_fit]
  rfl
theorem s2Step6EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step6EarlyControlArena [795] 1 s2Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step6EarlyControl_history]
  rfl
theorem s2Step6EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step6EarlyControlHistoryArena false 0 0 785 794 []).map (fun _ => true)=some true := by
  rw [s2Step6EarlyControl_sigma]
  rfl
theorem s2Step6EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step6EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  rw [s2Step6EarlyControl_branch]
  rfl
private theorem s2Step6EarlyControl_entrySigmaOwned : ([794, 785] : List Wire).toFinset⊆s2Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
private theorem s2Step6EarlyControl_entryRecordOwned : ([782, 795] : List Wire).toFinset⊆s2Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6EarlyControl_logged : s2Step6EarlyControlPlan.Logged s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 794 785 787 789 791 782 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step6EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step6EarlyControl_entrySigmaOwned
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
private theorem s2Step7EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_zeroBorrow : s2Step7EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step7EarlyControlLog.zeroWork=some s2Step7EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
      decide +kernel
    · ext q
      simp [s2Step7EarlyControlZeroArena,s2Step7EarlyControlArena,s2Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step7EarlyControl_zero : compileHmrEqualityLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step7EarlyControlLog.zeroWork=some (s2Step7EarlyControlZeroArena,s2Step7EarlyControlLog.zeroWork,s2Step7EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step7EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step7EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step7EarlyControl_positiveBorrow : s2Step7EarlyControlZeroArena.checkBorrow (1) s2Step7EarlyControlLog.positiveWork=some s2Step7EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step7EarlyControlZeroArena (fun q => (0≤q ∧ q<801)) rfl
      decide +kernel
    · ext q
      simp [s2Step7EarlyControlPositiveArena,s2Step7EarlyControlZeroArena,s2Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step7EarlyControl_classEqualityOwned : ([797, 801] : List Wire).toFinset⊆s2Step7EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlPositiveArena (fun q => (0≤q ∧ q<802)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_classEqualityBorrow : s2Step7EarlyControlPositiveArena.checkBorrow (([797, 801] : List Wire).length-1) s2Step7EarlyControlLog.classWork=some s2Step7EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step7EarlyControlPositiveArena (fun q => (0≤q ∧ q<802)) rfl
      decide +kernel
    · ext q
      simp [s2Step7EarlyControlEqualityArena,s2Step7EarlyControlPositiveArena,s2Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step7EarlyControl_classEquality : compileHmrEqualityLog s2Step7EarlyControlPositiveArena [797, 801] 0 s2Step7EarlyControlLog.classWork=some (s2Step7EarlyControlEqualityArena,s2Step7EarlyControlLog.classWork,s2Step7EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step7EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step7EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step7EarlyControl_classOwned : ([777, 784, 797] : List Wire).toFinset⊆s2Step7EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlZeroArena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7EarlyControl_class : compileHmrSourceClassLog s2Step7EarlyControlZeroArena false 777 s2Step7EarlyControlZeroPlan.top 0 797 s2Step7EarlyControlLog.positiveWork s2Step7EarlyControlLog.classWork=some s2Step7EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step7EarlyControlClassPlan s2Step7EarlyControlZeroArena false 777 s2Step7EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step7EarlyControl_classOwned
  · exact s2Step7EarlyControl_positiveBorrow
  · exact s2Step7EarlyControl_classEquality
private theorem s2Step7EarlyControl_flagsOwned : ([802, 787, 789, 791] : List Wire).toFinset⊆s2Step7EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlEqualityArena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_flagsBorrow : s2Step7EarlyControlEqualityArena.checkBorrow (6) s2Step7EarlyControlLog.flagWork=some s2Step7EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step7EarlyControlEqualityArena (fun q => (0≤q ∧ q<803)) rfl
      decide +kernel
    · ext q
      simp [s2Step7EarlyControlFlagArena,s2Step7EarlyControlEqualityArena,s2Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step7EarlyControl_flags : compileHmrFlagsLog s2Step7EarlyControlClassPlan.equalityArena s2Step7EarlyControlClassPlan.equality.top 787 789 791 s2Step7EarlyControlLog.flagWork=some s2Step7EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step7EarlyControl_flagsOwned⟩
  · exact s2Step7EarlyControl_flagsBorrow
private theorem s2Step7EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step7EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlFlagArena (fun q => (0≤q ∧ q<809)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_fitBorrow : s2Step7EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step7EarlyControlLog.recordFresh=some s2Step7EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step7EarlyControlFlagArena (fun q => (0≤q ∧ q<809)) rfl
      decide +kernel
    · ext q
      simp [s2Step7EarlyControlFittedArena,s2Step7EarlyControlFlagArena,s2Step7EarlyControlLog,arenaWires]
theorem s2Step7EarlyControl_fit : compileHmrRecordGrowLog s2Step7EarlyControlFlagArena [795] 1 s2Step7EarlyControlLog.recordFresh=some s2Step7EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step7EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step7EarlyControl_fitBorrow
private theorem s2Step7EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_historyBorrow : s2Step7EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step7EarlyControlLog.recordFresh=some s2Step7EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
      decide +kernel
    · ext q
      simp [s2Step7EarlyControlHistoryArena,s2Step7EarlyControlArena,s2Step7EarlyControlLog,arenaWires]
theorem s2Step7EarlyControl_history : compileHmrRecordGrowLog s2Step7EarlyControlArena [795] 1 s2Step7EarlyControlLog.recordFresh=some s2Step7EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step7EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step7EarlyControl_historyBorrow
private theorem s2Step7EarlyControl_sigmaOwned : ([785, 797] : List Wire).toFinset⊆s2Step7EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step7EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_sigmaRelease : s2Step7EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step7EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step7EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step7EarlyControlSigmaArena,s2Step7EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step7EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step7EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7EarlyControl_branch : compileHmrBranchRetirement s2Step7EarlyControlSigmaArena 783=some s2Step7EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step7EarlyControl_branchOwned
  · ext q
    simp [s2Step7EarlyControlOutputArena,s2Step7EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step7EarlyControl_sigma : compileHmrSigmaDropLog s2Step7EarlyControlHistoryArena false 0 0 785 797 []=some s2Step7EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step7EarlyControl_sigmaOwned⟩
  · exact s2Step7EarlyControl_sigmaRelease
theorem s2Step7EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step7EarlyControlLog.zeroWork).map Prod.snd=some (s2Step7EarlyControlLog.zeroWork,s2Step7EarlyControlZeroPlan) := by
  rw [s2Step7EarlyControl_zero]
  rfl
theorem s2Step7EarlyControl_classProjection : (compileHmrSourceClassLog s2Step7EarlyControlZeroArena false 777 s2Step7EarlyControlZeroPlan.top 0 797 s2Step7EarlyControlLog.positiveWork s2Step7EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step7EarlyControlClassPlan.positiveWork,s2Step7EarlyControlClassPlan.equalityWork,s2Step7EarlyControlClassPlan.equality) := by
  rw [s2Step7EarlyControl_class]
  rfl
theorem s2Step7EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step7EarlyControlClassPlan.equalityArena s2Step7EarlyControlClassPlan.equality.top 787 789 791 s2Step7EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step7EarlyControl_flags]
  rfl
theorem s2Step7EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step7EarlyControlFlagArena [795] 1 s2Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step7EarlyControl_fit]
  rfl
theorem s2Step7EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step7EarlyControlArena [795] 1 s2Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step7EarlyControl_history]
  rfl
theorem s2Step7EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step7EarlyControlHistoryArena false 0 0 785 797 []).map (fun _ => true)=some true := by
  rw [s2Step7EarlyControl_sigma]
  rfl
theorem s2Step7EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step7EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  rw [s2Step7EarlyControl_branch]
  rfl
private theorem s2Step7EarlyControl_entrySigmaOwned : ([797, 785] : List Wire).toFinset⊆s2Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
private theorem s2Step7EarlyControl_entryRecordOwned : ([783, 795] : List Wire).toFinset⊆s2Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7EarlyControl_logged : s2Step7EarlyControlPlan.Logged s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 797 785 787 789 791 783 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step7EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step7EarlyControl_entrySigmaOwned
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

end ECDSAAdd.Arithmetic.Paper935
