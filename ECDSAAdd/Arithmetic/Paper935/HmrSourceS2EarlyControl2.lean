import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl1
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl2Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2Step16EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 831)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 831)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step16EarlyControlLog : HmrEarlyControlLog := ⟨[780, 819, 784, 783, 782],[821],[822],[824, 825, 826, 827, 829, 830],[]⟩
def s2Step16EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,819⟩,⟨⟨775,false⟩,784⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,782⟩]⟩
def s2Step16EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step16EarlyControlPositiveArena,[821],s2Step16EarlyControlEqualityArena,[822],⟨⟨816,false⟩,[⟨⟨821,false⟩,822⟩]⟩⟩
def s2Step16EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step16EarlyControlZeroArena,s2Step16EarlyControlZeroPlan,s2Step16EarlyControlClassPlan,s2Step16EarlyControlFlagArena,s2Step16EarlyControlFittedArena,s2Step16EarlyControlHistoryArena,s2Step16EarlyControlSigmaArena,s2Step16EarlyControlOutputArena,s2Step16EarlyControlLog⟩
private theorem s2Step16EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_zeroBorrow : s2Step16EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step16EarlyControlLog.zeroWork=some s2Step16EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step16EarlyControlZeroArena,s2Step16EarlyControlArena,s2Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step16EarlyControl_zero : compileHmrEqualityLog s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step16EarlyControlLog.zeroWork=some (s2Step16EarlyControlZeroArena,s2Step16EarlyControlLog.zeroWork,s2Step16EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step16EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step16EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step16EarlyControl_positiveBorrow : s2Step16EarlyControlZeroArena.checkBorrow (1) s2Step16EarlyControlLog.positiveWork=some s2Step16EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step16EarlyControlZeroArena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step16EarlyControlPositiveArena,s2Step16EarlyControlZeroArena,s2Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step16EarlyControl_classEqualityOwned : ([816, 821] : List Wire).toFinset⊆s2Step16EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlPositiveArena (fun q => (0≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_classEqualityBorrow : s2Step16EarlyControlPositiveArena.checkBorrow (([816, 821] : List Wire).length-1) s2Step16EarlyControlLog.classWork=some s2Step16EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step16EarlyControlPositiveArena (fun q => (0≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step16EarlyControlEqualityArena,s2Step16EarlyControlPositiveArena,s2Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step16EarlyControl_classEquality : compileHmrEqualityLog s2Step16EarlyControlPositiveArena [816, 821] 0 s2Step16EarlyControlLog.classWork=some (s2Step16EarlyControlEqualityArena,s2Step16EarlyControlLog.classWork,s2Step16EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step16EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step16EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step16EarlyControl_classOwned : ([777, 782, 816] : List Wire).toFinset⊆s2Step16EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlZeroArena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EarlyControl_class : compileHmrSourceClassLog s2Step16EarlyControlZeroArena false 777 s2Step16EarlyControlZeroPlan.top 0 816 s2Step16EarlyControlLog.positiveWork s2Step16EarlyControlLog.classWork=some s2Step16EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step16EarlyControlClassPlan s2Step16EarlyControlZeroArena false 777 s2Step16EarlyControlZeroPlan.top 0 816
  constructor
  · decide +kernel
  · exact s2Step16EarlyControl_classOwned
  · exact s2Step16EarlyControl_positiveBorrow
  · exact s2Step16EarlyControl_classEquality
private theorem s2Step16EarlyControl_flagsOwned : ([822, 787, 789, 791] : List Wire).toFinset⊆s2Step16EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlEqualityArena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_flagsBorrow : s2Step16EarlyControlEqualityArena.checkBorrow (6) s2Step16EarlyControlLog.flagWork=some s2Step16EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step16EarlyControlEqualityArena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step16EarlyControlFlagArena,s2Step16EarlyControlEqualityArena,s2Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step16EarlyControl_flags : compileHmrFlagsLog s2Step16EarlyControlClassPlan.equalityArena s2Step16EarlyControlClassPlan.equality.top 787 789 791 s2Step16EarlyControlLog.flagWork=some s2Step16EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step16EarlyControl_flagsOwned⟩
  · exact s2Step16EarlyControl_flagsBorrow
private theorem s2Step16EarlyControl_fitOwned : ([795, 813, 818, 823, 828] : List Wire).toFinset⊆s2Step16EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlFlagArena (fun q => (0≤q ∧ q<831)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_fitBorrow : s2Step16EarlyControlFlagArena.checkBorrow ((5-([795, 813, 818, 823, 828] : List Wire).length)) s2Step16EarlyControlLog.recordFresh=some s2Step16EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step16EarlyControlFlagArena (fun q => (0≤q ∧ q<831)) rfl
      decide +kernel
    · ext q
      simp [s2Step16EarlyControlFittedArena,s2Step16EarlyControlFlagArena,s2Step16EarlyControlLog,arenaWires]
theorem s2Step16EarlyControl_fit : compileHmrRecordGrowLog s2Step16EarlyControlFlagArena [795, 813, 818, 823, 828] 5 s2Step16EarlyControlLog.recordFresh=some s2Step16EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step16EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step16EarlyControl_fitBorrow
private theorem s2Step16EarlyControl_historyOwned : ([795, 813, 818, 823, 828] : List Wire).toFinset⊆s2Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_historyBorrow : s2Step16EarlyControlArena.checkBorrow ((5-([795, 813, 818, 823, 828] : List Wire).length)) s2Step16EarlyControlLog.recordFresh=some s2Step16EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step16EarlyControlHistoryArena,s2Step16EarlyControlArena,s2Step16EarlyControlLog,arenaWires]
theorem s2Step16EarlyControl_history : compileHmrRecordGrowLog s2Step16EarlyControlArena [795, 813, 818, 823, 828] 5 s2Step16EarlyControlLog.recordFresh=some s2Step16EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step16EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step16EarlyControl_historyBorrow
private theorem s2Step16EarlyControl_sigmaOwned : ([785, 816] : List Wire).toFinset⊆s2Step16EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_sigmaReleaseOwned : ([816] : List Wire).toFinset⊆s2Step16EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_sigmaRelease : s2Step16EarlyControlHistoryArena.release {816} (fun _ => false)=some s2Step16EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step16EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step16EarlyControlSigmaArena,s2Step16EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step16EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step16EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EarlyControl_branch : compileHmrBranchRetirement s2Step16EarlyControlSigmaArena 781=some s2Step16EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step16EarlyControl_branchOwned
  · ext q
    simp [s2Step16EarlyControlOutputArena,s2Step16EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step16EarlyControl_sigma : compileHmrSigmaDropLog s2Step16EarlyControlHistoryArena false 0 0 785 816 []=some s2Step16EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step16EarlyControl_sigmaOwned⟩
  · exact s2Step16EarlyControl_sigmaRelease
theorem s2Step16EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step16EarlyControlLog.zeroWork).map Prod.snd=some (s2Step16EarlyControlLog.zeroWork,s2Step16EarlyControlZeroPlan) := by
  rw [s2Step16EarlyControl_zero]
  rfl
theorem s2Step16EarlyControl_classProjection : (compileHmrSourceClassLog s2Step16EarlyControlZeroArena false 777 s2Step16EarlyControlZeroPlan.top 0 816 s2Step16EarlyControlLog.positiveWork s2Step16EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step16EarlyControlClassPlan.positiveWork,s2Step16EarlyControlClassPlan.equalityWork,s2Step16EarlyControlClassPlan.equality) := by
  rw [s2Step16EarlyControl_class]
  rfl
theorem s2Step16EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step16EarlyControlClassPlan.equalityArena s2Step16EarlyControlClassPlan.equality.top 787 789 791 s2Step16EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step16EarlyControl_flags]
  rfl
theorem s2Step16EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step16EarlyControlFlagArena [795, 813, 818, 823, 828] 5 s2Step16EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step16EarlyControl_fit]
  rfl
theorem s2Step16EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step16EarlyControlArena [795, 813, 818, 823, 828] 5 s2Step16EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step16EarlyControl_history]
  rfl
theorem s2Step16EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step16EarlyControlHistoryArena false 0 0 785 816 []).map (fun _ => true)=some true := by
  rw [s2Step16EarlyControl_sigma]
  rfl
theorem s2Step16EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step16EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2Step16EarlyControl_branch]
  rfl
private theorem s2Step16EarlyControl_entrySigmaOwned : ([816, 785] : List Wire).toFinset⊆s2Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step16EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828] : List Wire).toFinset⊆s2Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EarlyControl_logged : s2Step16EarlyControlPlan.Logged s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 816 785 787 789 791 781 5 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step16EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step16EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step16EarlyControl_zero
  · exact s2Step16EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step16EarlyControl_flags
  · exact s2Step16EarlyControl_fit
  · exact s2Step16EarlyControl_history
  · exact s2Step16EarlyControl_sigma
  · exact s2Step16EarlyControl_branch
theorem s2Step16EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 816 785 787 789 791 781 5 s2Step16EarlyControlLog=some s2Step16EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step16EarlyControlPlan s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 816 785 787 789 791 781 5 s2Step16EarlyControl_logged
theorem s2Step16EarlyControl_checked : (compileHmrEarlyControlLog s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 816 785 787 789 791 781 5 s2Step16EarlyControlLog).map (fun P => P.outputArena.live.card)=some 816 := by
  rw [s2Step16EarlyControl_plan_checked]
  decide +kernel

def s2Step17EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 825) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 826) ∨ (828 ≤ q ∧ q < 829)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 833)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step17EarlyControlLog : HmrEarlyControlLog := ⟨[780, 821, 782, 781, 783],[824],[825],[826, 827, 829, 830, 831, 832],[833]⟩
def s2Step17EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,821⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step17EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step17EarlyControlPositiveArena,[824],s2Step17EarlyControlEqualityArena,[825],⟨⟨819,false⟩,[⟨⟨824,false⟩,825⟩]⟩⟩
def s2Step17EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step17EarlyControlZeroArena,s2Step17EarlyControlZeroPlan,s2Step17EarlyControlClassPlan,s2Step17EarlyControlFlagArena,s2Step17EarlyControlFittedArena,s2Step17EarlyControlHistoryArena,s2Step17EarlyControlSigmaArena,s2Step17EarlyControlOutputArena,s2Step17EarlyControlLog⟩
private theorem s2Step17EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_zeroBorrow : s2Step17EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step17EarlyControlLog.zeroWork=some s2Step17EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step17EarlyControlZeroArena,s2Step17EarlyControlArena,s2Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step17EarlyControl_zero : compileHmrEqualityLog s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step17EarlyControlLog.zeroWork=some (s2Step17EarlyControlZeroArena,s2Step17EarlyControlLog.zeroWork,s2Step17EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step17EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step17EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step17EarlyControl_positiveBorrow : s2Step17EarlyControlZeroArena.checkBorrow (1) s2Step17EarlyControlLog.positiveWork=some s2Step17EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step17EarlyControlZeroArena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step17EarlyControlPositiveArena,s2Step17EarlyControlZeroArena,s2Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step17EarlyControl_classEqualityOwned : ([819, 824] : List Wire).toFinset⊆s2Step17EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_classEqualityBorrow : s2Step17EarlyControlPositiveArena.checkBorrow (([819, 824] : List Wire).length-1) s2Step17EarlyControlLog.classWork=some s2Step17EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step17EarlyControlPositiveArena (fun q => (0≤q ∧ q<825) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step17EarlyControlEqualityArena,s2Step17EarlyControlPositiveArena,s2Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step17EarlyControl_classEquality : compileHmrEqualityLog s2Step17EarlyControlPositiveArena [819, 824] 0 s2Step17EarlyControlLog.classWork=some (s2Step17EarlyControlEqualityArena,s2Step17EarlyControlLog.classWork,s2Step17EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step17EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step17EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step17EarlyControl_classOwned : ([777, 783, 819] : List Wire).toFinset⊆s2Step17EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlZeroArena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17EarlyControl_class : compileHmrSourceClassLog s2Step17EarlyControlZeroArena false 777 s2Step17EarlyControlZeroPlan.top 0 819 s2Step17EarlyControlLog.positiveWork s2Step17EarlyControlLog.classWork=some s2Step17EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step17EarlyControlClassPlan s2Step17EarlyControlZeroArena false 777 s2Step17EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step17EarlyControl_classOwned
  · exact s2Step17EarlyControl_positiveBorrow
  · exact s2Step17EarlyControl_classEquality
private theorem s2Step17EarlyControl_flagsOwned : ([825, 787, 789, 791] : List Wire).toFinset⊆s2Step17EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_flagsBorrow : s2Step17EarlyControlEqualityArena.checkBorrow (6) s2Step17EarlyControlLog.flagWork=some s2Step17EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step17EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step17EarlyControlFlagArena,s2Step17EarlyControlEqualityArena,s2Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step17EarlyControl_flags : compileHmrFlagsLog s2Step17EarlyControlClassPlan.equalityArena s2Step17EarlyControlClassPlan.equality.top 787 789 791 s2Step17EarlyControlLog.flagWork=some s2Step17EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step17EarlyControl_flagsOwned⟩
  · exact s2Step17EarlyControl_flagsBorrow
private theorem s2Step17EarlyControl_fitOwned : ([795, 813, 818, 823, 828] : List Wire).toFinset⊆s2Step17EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlFlagArena (fun q => (0≤q ∧ q<833)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_fitBorrow : s2Step17EarlyControlFlagArena.checkBorrow ((6-([795, 813, 818, 823, 828] : List Wire).length)) s2Step17EarlyControlLog.recordFresh=some s2Step17EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step17EarlyControlFlagArena (fun q => (0≤q ∧ q<833)) rfl
      decide +kernel
    · ext q
      simp [s2Step17EarlyControlFittedArena,s2Step17EarlyControlFlagArena,s2Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step17EarlyControl_fit : compileHmrRecordGrowLog s2Step17EarlyControlFlagArena [795, 813, 818, 823, 828] 6 s2Step17EarlyControlLog.recordFresh=some s2Step17EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step17EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step17EarlyControl_fitBorrow
private theorem s2Step17EarlyControl_historyOwned : ([795, 813, 818, 823, 828] : List Wire).toFinset⊆s2Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_historyBorrow : s2Step17EarlyControlArena.checkBorrow ((6-([795, 813, 818, 823, 828] : List Wire).length)) s2Step17EarlyControlLog.recordFresh=some s2Step17EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
      decide +kernel
    · ext q
      simp [s2Step17EarlyControlHistoryArena,s2Step17EarlyControlArena,s2Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step17EarlyControl_history : compileHmrRecordGrowLog s2Step17EarlyControlArena [795, 813, 818, 823, 828] 6 s2Step17EarlyControlLog.recordFresh=some s2Step17EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step17EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step17EarlyControl_historyBorrow
private theorem s2Step17EarlyControl_sigmaOwned : ([785, 819] : List Wire).toFinset⊆s2Step17EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step17EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_sigmaRelease : s2Step17EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step17EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step17EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step17EarlyControlSigmaArena,s2Step17EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step17EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step17EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step17EarlyControl_branch : compileHmrBranchRetirement s2Step17EarlyControlSigmaArena 784=some s2Step17EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step17EarlyControl_branchOwned
  · ext q
    simp [s2Step17EarlyControlOutputArena,s2Step17EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step17EarlyControl_sigma : compileHmrSigmaDropLog s2Step17EarlyControlHistoryArena false 0 0 785 819 []=some s2Step17EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step17EarlyControl_sigmaOwned⟩
  · exact s2Step17EarlyControl_sigmaRelease
theorem s2Step17EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step17EarlyControlLog.zeroWork).map Prod.snd=some (s2Step17EarlyControlLog.zeroWork,s2Step17EarlyControlZeroPlan) := by
  rw [s2Step17EarlyControl_zero]
  rfl
theorem s2Step17EarlyControl_classProjection : (compileHmrSourceClassLog s2Step17EarlyControlZeroArena false 777 s2Step17EarlyControlZeroPlan.top 0 819 s2Step17EarlyControlLog.positiveWork s2Step17EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step17EarlyControlClassPlan.positiveWork,s2Step17EarlyControlClassPlan.equalityWork,s2Step17EarlyControlClassPlan.equality) := by
  rw [s2Step17EarlyControl_class]
  rfl
theorem s2Step17EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step17EarlyControlClassPlan.equalityArena s2Step17EarlyControlClassPlan.equality.top 787 789 791 s2Step17EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step17EarlyControl_flags]
  rfl
theorem s2Step17EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step17EarlyControlFlagArena [795, 813, 818, 823, 828] 6 s2Step17EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step17EarlyControl_fit]
  rfl
theorem s2Step17EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step17EarlyControlArena [795, 813, 818, 823, 828] 6 s2Step17EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step17EarlyControl_history]
  rfl
theorem s2Step17EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step17EarlyControlHistoryArena false 0 0 785 819 []).map (fun _ => true)=some true := by
  rw [s2Step17EarlyControl_sigma]
  rfl
theorem s2Step17EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step17EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  rw [s2Step17EarlyControl_branch]
  rfl
private theorem s2Step17EarlyControl_entrySigmaOwned : ([819, 785] : List Wire).toFinset⊆s2Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step17EarlyControl_entryRecordOwned : ([784, 795, 813, 818, 823, 828] : List Wire).toFinset⊆s2Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17EarlyControl_logged : s2Step17EarlyControlPlan.Logged s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 819 785 787 789 791 784 6 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step17EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step17EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step17EarlyControl_zero
  · exact s2Step17EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step17EarlyControl_flags
  · exact s2Step17EarlyControl_fit
  · exact s2Step17EarlyControl_history
  · exact s2Step17EarlyControl_sigma
  · exact s2Step17EarlyControl_branch
theorem s2Step17EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 819 785 787 789 791 784 6 s2Step17EarlyControlLog=some s2Step17EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step17EarlyControlPlan s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 819 785 787 789 791 784 6 s2Step17EarlyControl_logged
theorem s2Step17EarlyControl_checked : (compileHmrEarlyControlLog s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 819 785 787 789 791 784 6 s2Step17EarlyControlLog).map (fun P => P.outputArena.live.card)=some 819 := by
  rw [s2Step17EarlyControl_plan_checked]
  decide +kernel

def s2Step18EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 824) ∨ (825 ≤ q ∧ q < 826) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 826) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 827) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 836)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 836)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 824) ∨ (825 ≤ q ∧ q < 826) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 824) ∨ (825 ≤ q ∧ q < 826) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 824) ∨ (825 ≤ q ∧ q < 826) ∨ (828 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step18EarlyControlLog : HmrEarlyControlLog := ⟨[780, 824, 783, 784, 781],[826],[827],[829, 830, 831, 832, 834, 835],[]⟩
def s2Step18EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step18EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step18EarlyControlPositiveArena,[826],s2Step18EarlyControlEqualityArena,[827],⟨⟨821,false⟩,[⟨⟨826,false⟩,827⟩]⟩⟩
def s2Step18EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step18EarlyControlZeroArena,s2Step18EarlyControlZeroPlan,s2Step18EarlyControlClassPlan,s2Step18EarlyControlFlagArena,s2Step18EarlyControlFittedArena,s2Step18EarlyControlHistoryArena,s2Step18EarlyControlSigmaArena,s2Step18EarlyControlOutputArena,s2Step18EarlyControlLog⟩
private theorem s2Step18EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_zeroBorrow : s2Step18EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step18EarlyControlLog.zeroWork=some s2Step18EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step18EarlyControlZeroArena,s2Step18EarlyControlArena,s2Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step18EarlyControl_zero : compileHmrEqualityLog s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step18EarlyControlLog.zeroWork=some (s2Step18EarlyControlZeroArena,s2Step18EarlyControlLog.zeroWork,s2Step18EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step18EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step18EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step18EarlyControl_positiveBorrow : s2Step18EarlyControlZeroArena.checkBorrow (1) s2Step18EarlyControlLog.positiveWork=some s2Step18EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step18EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step18EarlyControlPositiveArena,s2Step18EarlyControlZeroArena,s2Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step18EarlyControl_classEqualityOwned : ([821, 826] : List Wire).toFinset⊆s2Step18EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_classEqualityBorrow : s2Step18EarlyControlPositiveArena.checkBorrow (([821, 826] : List Wire).length-1) s2Step18EarlyControlLog.classWork=some s2Step18EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step18EarlyControlPositiveArena (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step18EarlyControlEqualityArena,s2Step18EarlyControlPositiveArena,s2Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step18EarlyControl_classEquality : compileHmrEqualityLog s2Step18EarlyControlPositiveArena [821, 826] 0 s2Step18EarlyControlLog.classWork=some (s2Step18EarlyControlEqualityArena,s2Step18EarlyControlLog.classWork,s2Step18EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step18EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step18EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step18EarlyControl_classOwned : ([777, 781, 821] : List Wire).toFinset⊆s2Step18EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EarlyControl_class : compileHmrSourceClassLog s2Step18EarlyControlZeroArena false 777 s2Step18EarlyControlZeroPlan.top 0 821 s2Step18EarlyControlLog.positiveWork s2Step18EarlyControlLog.classWork=some s2Step18EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step18EarlyControlClassPlan s2Step18EarlyControlZeroArena false 777 s2Step18EarlyControlZeroPlan.top 0 821
  constructor
  · decide +kernel
  · exact s2Step18EarlyControl_classOwned
  · exact s2Step18EarlyControl_positiveBorrow
  · exact s2Step18EarlyControl_classEquality
private theorem s2Step18EarlyControl_flagsOwned : ([827, 787, 789, 791] : List Wire).toFinset⊆s2Step18EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlEqualityArena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_flagsBorrow : s2Step18EarlyControlEqualityArena.checkBorrow (6) s2Step18EarlyControlLog.flagWork=some s2Step18EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step18EarlyControlEqualityArena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step18EarlyControlFlagArena,s2Step18EarlyControlEqualityArena,s2Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step18EarlyControl_flags : compileHmrFlagsLog s2Step18EarlyControlClassPlan.equalityArena s2Step18EarlyControlClassPlan.equality.top 787 789 791 s2Step18EarlyControlLog.flagWork=some s2Step18EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step18EarlyControl_flagsOwned⟩
  · exact s2Step18EarlyControl_flagsBorrow
private theorem s2Step18EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833] : List Wire).toFinset⊆s2Step18EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlFlagArena (fun q => (0≤q ∧ q<836)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_fitBorrow : s2Step18EarlyControlFlagArena.checkBorrow ((6-([795, 813, 818, 823, 828, 833] : List Wire).length)) s2Step18EarlyControlLog.recordFresh=some s2Step18EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step18EarlyControlFlagArena (fun q => (0≤q ∧ q<836)) rfl
      decide +kernel
    · ext q
      simp [s2Step18EarlyControlFittedArena,s2Step18EarlyControlFlagArena,s2Step18EarlyControlLog,arenaWires]
theorem s2Step18EarlyControl_fit : compileHmrRecordGrowLog s2Step18EarlyControlFlagArena [795, 813, 818, 823, 828, 833] 6 s2Step18EarlyControlLog.recordFresh=some s2Step18EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step18EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step18EarlyControl_fitBorrow
private theorem s2Step18EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833] : List Wire).toFinset⊆s2Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_historyBorrow : s2Step18EarlyControlArena.checkBorrow ((6-([795, 813, 818, 823, 828, 833] : List Wire).length)) s2Step18EarlyControlLog.recordFresh=some s2Step18EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step18EarlyControlHistoryArena,s2Step18EarlyControlArena,s2Step18EarlyControlLog,arenaWires]
theorem s2Step18EarlyControl_history : compileHmrRecordGrowLog s2Step18EarlyControlArena [795, 813, 818, 823, 828, 833] 6 s2Step18EarlyControlLog.recordFresh=some s2Step18EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step18EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step18EarlyControl_historyBorrow
private theorem s2Step18EarlyControl_sigmaOwned : ([785, 821] : List Wire).toFinset⊆s2Step18EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_sigmaReleaseOwned : ([821] : List Wire).toFinset⊆s2Step18EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_sigmaRelease : s2Step18EarlyControlHistoryArena.release {821} (fun _ => false)=some s2Step18EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step18EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step18EarlyControlSigmaArena,s2Step18EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step18EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step18EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EarlyControl_branch : compileHmrBranchRetirement s2Step18EarlyControlSigmaArena 782=some s2Step18EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step18EarlyControl_branchOwned
  · ext q
    simp [s2Step18EarlyControlOutputArena,s2Step18EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step18EarlyControl_sigma : compileHmrSigmaDropLog s2Step18EarlyControlHistoryArena false 0 0 785 821 []=some s2Step18EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step18EarlyControl_sigmaOwned⟩
  · exact s2Step18EarlyControl_sigmaRelease
theorem s2Step18EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step18EarlyControlLog.zeroWork).map Prod.snd=some (s2Step18EarlyControlLog.zeroWork,s2Step18EarlyControlZeroPlan) := by
  rw [s2Step18EarlyControl_zero]
  rfl
theorem s2Step18EarlyControl_classProjection : (compileHmrSourceClassLog s2Step18EarlyControlZeroArena false 777 s2Step18EarlyControlZeroPlan.top 0 821 s2Step18EarlyControlLog.positiveWork s2Step18EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step18EarlyControlClassPlan.positiveWork,s2Step18EarlyControlClassPlan.equalityWork,s2Step18EarlyControlClassPlan.equality) := by
  rw [s2Step18EarlyControl_class]
  rfl
theorem s2Step18EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step18EarlyControlClassPlan.equalityArena s2Step18EarlyControlClassPlan.equality.top 787 789 791 s2Step18EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step18EarlyControl_flags]
  rfl
theorem s2Step18EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step18EarlyControlFlagArena [795, 813, 818, 823, 828, 833] 6 s2Step18EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step18EarlyControl_fit]
  rfl
theorem s2Step18EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step18EarlyControlArena [795, 813, 818, 823, 828, 833] 6 s2Step18EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step18EarlyControl_history]
  rfl
theorem s2Step18EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step18EarlyControlHistoryArena false 0 0 785 821 []).map (fun _ => true)=some true := by
  rw [s2Step18EarlyControl_sigma]
  rfl
theorem s2Step18EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step18EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  rw [s2Step18EarlyControl_branch]
  rfl
private theorem s2Step18EarlyControl_entrySigmaOwned : ([821, 785] : List Wire).toFinset⊆s2Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step18EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833] : List Wire).toFinset⊆s2Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EarlyControl_logged : s2Step18EarlyControlPlan.Logged s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 821 785 787 789 791 782 6 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step18EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step18EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step18EarlyControl_zero
  · exact s2Step18EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step18EarlyControl_flags
  · exact s2Step18EarlyControl_fit
  · exact s2Step18EarlyControl_history
  · exact s2Step18EarlyControl_sigma
  · exact s2Step18EarlyControl_branch
theorem s2Step18EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 821 785 787 789 791 782 6 s2Step18EarlyControlLog=some s2Step18EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step18EarlyControlPlan s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 821 785 787 789 791 782 6 s2Step18EarlyControl_logged
theorem s2Step18EarlyControl_checked : (compileHmrEarlyControlLog s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 821 785 787 789 791 782 6 s2Step18EarlyControlLog).map (fun P => P.outputArena.live.card)=some 821 := by
  rw [s2Step18EarlyControl_plan_checked]
  decide +kernel

def s2Step19EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 826) ∨ (827 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 830) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 831) ∨ (833 ≤ q ∧ q < 834)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 838)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 826) ∨ (827 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 824) ∨ (825 ≤ q ∧ q < 826) ∨ (827 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 824) ∨ (825 ≤ q ∧ q < 826) ∨ (827 ≤ q ∧ q < 829) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step19EarlyControlLog : HmrEarlyControlLog := ⟨[780, 826, 781, 782, 784],[829],[830],[831, 832, 834, 835, 836, 837],[838]⟩
def s2Step19EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,826⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,784⟩]⟩
def s2Step19EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step19EarlyControlPositiveArena,[829],s2Step19EarlyControlEqualityArena,[830],⟨⟨824,false⟩,[⟨⟨829,false⟩,830⟩]⟩⟩
def s2Step19EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step19EarlyControlZeroArena,s2Step19EarlyControlZeroPlan,s2Step19EarlyControlClassPlan,s2Step19EarlyControlFlagArena,s2Step19EarlyControlFittedArena,s2Step19EarlyControlHistoryArena,s2Step19EarlyControlSigmaArena,s2Step19EarlyControlOutputArena,s2Step19EarlyControlLog⟩
private theorem s2Step19EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_zeroBorrow : s2Step19EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step19EarlyControlLog.zeroWork=some s2Step19EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step19EarlyControlZeroArena,s2Step19EarlyControlArena,s2Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step19EarlyControl_zero : compileHmrEqualityLog s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step19EarlyControlLog.zeroWork=some (s2Step19EarlyControlZeroArena,s2Step19EarlyControlLog.zeroWork,s2Step19EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step19EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step19EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step19EarlyControl_positiveBorrow : s2Step19EarlyControlZeroArena.checkBorrow (1) s2Step19EarlyControlLog.positiveWork=some s2Step19EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step19EarlyControlZeroArena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step19EarlyControlPositiveArena,s2Step19EarlyControlZeroArena,s2Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step19EarlyControl_classEqualityOwned : ([824, 829] : List Wire).toFinset⊆s2Step19EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlPositiveArena (fun q => (0≤q ∧ q<830) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_classEqualityBorrow : s2Step19EarlyControlPositiveArena.checkBorrow (([824, 829] : List Wire).length-1) s2Step19EarlyControlLog.classWork=some s2Step19EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step19EarlyControlPositiveArena (fun q => (0≤q ∧ q<830) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step19EarlyControlEqualityArena,s2Step19EarlyControlPositiveArena,s2Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step19EarlyControl_classEquality : compileHmrEqualityLog s2Step19EarlyControlPositiveArena [824, 829] 0 s2Step19EarlyControlLog.classWork=some (s2Step19EarlyControlEqualityArena,s2Step19EarlyControlLog.classWork,s2Step19EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step19EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step19EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step19EarlyControl_classOwned : ([777, 784, 824] : List Wire).toFinset⊆s2Step19EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlZeroArena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19EarlyControl_class : compileHmrSourceClassLog s2Step19EarlyControlZeroArena false 777 s2Step19EarlyControlZeroPlan.top 0 824 s2Step19EarlyControlLog.positiveWork s2Step19EarlyControlLog.classWork=some s2Step19EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step19EarlyControlClassPlan s2Step19EarlyControlZeroArena false 777 s2Step19EarlyControlZeroPlan.top 0 824
  constructor
  · decide +kernel
  · exact s2Step19EarlyControl_classOwned
  · exact s2Step19EarlyControl_positiveBorrow
  · exact s2Step19EarlyControl_classEquality
private theorem s2Step19EarlyControl_flagsOwned : ([830, 787, 789, 791] : List Wire).toFinset⊆s2Step19EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlEqualityArena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_flagsBorrow : s2Step19EarlyControlEqualityArena.checkBorrow (6) s2Step19EarlyControlLog.flagWork=some s2Step19EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step19EarlyControlEqualityArena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step19EarlyControlFlagArena,s2Step19EarlyControlEqualityArena,s2Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step19EarlyControl_flags : compileHmrFlagsLog s2Step19EarlyControlClassPlan.equalityArena s2Step19EarlyControlClassPlan.equality.top 787 789 791 s2Step19EarlyControlLog.flagWork=some s2Step19EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step19EarlyControl_flagsOwned⟩
  · exact s2Step19EarlyControl_flagsBorrow
private theorem s2Step19EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833] : List Wire).toFinset⊆s2Step19EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlFlagArena (fun q => (0≤q ∧ q<838)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_fitBorrow : s2Step19EarlyControlFlagArena.checkBorrow ((7-([795, 813, 818, 823, 828, 833] : List Wire).length)) s2Step19EarlyControlLog.recordFresh=some s2Step19EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step19EarlyControlFlagArena (fun q => (0≤q ∧ q<838)) rfl
      decide +kernel
    · ext q
      simp [s2Step19EarlyControlFittedArena,s2Step19EarlyControlFlagArena,s2Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step19EarlyControl_fit : compileHmrRecordGrowLog s2Step19EarlyControlFlagArena [795, 813, 818, 823, 828, 833] 7 s2Step19EarlyControlLog.recordFresh=some s2Step19EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step19EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step19EarlyControl_fitBorrow
private theorem s2Step19EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833] : List Wire).toFinset⊆s2Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_historyBorrow : s2Step19EarlyControlArena.checkBorrow ((7-([795, 813, 818, 823, 828, 833] : List Wire).length)) s2Step19EarlyControlLog.recordFresh=some s2Step19EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
      decide +kernel
    · ext q
      simp [s2Step19EarlyControlHistoryArena,s2Step19EarlyControlArena,s2Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step19EarlyControl_history : compileHmrRecordGrowLog s2Step19EarlyControlArena [795, 813, 818, 823, 828, 833] 7 s2Step19EarlyControlLog.recordFresh=some s2Step19EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step19EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step19EarlyControl_historyBorrow
private theorem s2Step19EarlyControl_sigmaOwned : ([785, 824] : List Wire).toFinset⊆s2Step19EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_sigmaReleaseOwned : ([824] : List Wire).toFinset⊆s2Step19EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_sigmaRelease : s2Step19EarlyControlHistoryArena.release {824} (fun _ => false)=some s2Step19EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step19EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step19EarlyControlSigmaArena,s2Step19EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step19EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step19EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step19EarlyControl_branch : compileHmrBranchRetirement s2Step19EarlyControlSigmaArena 783=some s2Step19EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step19EarlyControl_branchOwned
  · ext q
    simp [s2Step19EarlyControlOutputArena,s2Step19EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step19EarlyControl_sigma : compileHmrSigmaDropLog s2Step19EarlyControlHistoryArena false 0 0 785 824 []=some s2Step19EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step19EarlyControl_sigmaOwned⟩
  · exact s2Step19EarlyControl_sigmaRelease
theorem s2Step19EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step19EarlyControlLog.zeroWork).map Prod.snd=some (s2Step19EarlyControlLog.zeroWork,s2Step19EarlyControlZeroPlan) := by
  rw [s2Step19EarlyControl_zero]
  rfl
theorem s2Step19EarlyControl_classProjection : (compileHmrSourceClassLog s2Step19EarlyControlZeroArena false 777 s2Step19EarlyControlZeroPlan.top 0 824 s2Step19EarlyControlLog.positiveWork s2Step19EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step19EarlyControlClassPlan.positiveWork,s2Step19EarlyControlClassPlan.equalityWork,s2Step19EarlyControlClassPlan.equality) := by
  rw [s2Step19EarlyControl_class]
  rfl
theorem s2Step19EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step19EarlyControlClassPlan.equalityArena s2Step19EarlyControlClassPlan.equality.top 787 789 791 s2Step19EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step19EarlyControl_flags]
  rfl
theorem s2Step19EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step19EarlyControlFlagArena [795, 813, 818, 823, 828, 833] 7 s2Step19EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step19EarlyControl_fit]
  rfl
theorem s2Step19EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step19EarlyControlArena [795, 813, 818, 823, 828, 833] 7 s2Step19EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step19EarlyControl_history]
  rfl
theorem s2Step19EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step19EarlyControlHistoryArena false 0 0 785 824 []).map (fun _ => true)=some true := by
  rw [s2Step19EarlyControl_sigma]
  rfl
theorem s2Step19EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step19EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  rw [s2Step19EarlyControl_branch]
  rfl
private theorem s2Step19EarlyControl_entrySigmaOwned : ([824, 785] : List Wire).toFinset⊆s2Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
private theorem s2Step19EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833] : List Wire).toFinset⊆s2Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19EarlyControl_logged : s2Step19EarlyControlPlan.Logged s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 824 785 787 789 791 783 7 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step19EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step19EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step19EarlyControl_zero
  · exact s2Step19EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step19EarlyControl_flags
  · exact s2Step19EarlyControl_fit
  · exact s2Step19EarlyControl_history
  · exact s2Step19EarlyControl_sigma
  · exact s2Step19EarlyControl_branch
theorem s2Step19EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 824 785 787 789 791 783 7 s2Step19EarlyControlLog=some s2Step19EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step19EarlyControlPlan s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 824 785 787 789 791 783 7 s2Step19EarlyControl_logged
theorem s2Step19EarlyControl_checked : (compileHmrEarlyControlLog s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 824 785 787 789 791 783 7 s2Step19EarlyControlLog).map (fun P => P.outputArena.live.card)=some 824 := by
  rw [s2Step19EarlyControl_plan_checked]
  decide +kernel

def s2Step20EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 831) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 831) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 841)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 841)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 831) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 826) ∨ (827 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 831) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 826) ∨ (827 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 831) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step20EarlyControlLog : HmrEarlyControlLog := ⟨[780, 829, 784, 783, 782],[831],[832],[834, 835, 836, 837, 839, 840],[]⟩
def s2Step20EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,829⟩,⟨⟨775,false⟩,784⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,782⟩]⟩
def s2Step20EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step20EarlyControlPositiveArena,[831],s2Step20EarlyControlEqualityArena,[832],⟨⟨826,false⟩,[⟨⟨831,false⟩,832⟩]⟩⟩
def s2Step20EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step20EarlyControlZeroArena,s2Step20EarlyControlZeroPlan,s2Step20EarlyControlClassPlan,s2Step20EarlyControlFlagArena,s2Step20EarlyControlFittedArena,s2Step20EarlyControlHistoryArena,s2Step20EarlyControlSigmaArena,s2Step20EarlyControlOutputArena,s2Step20EarlyControlLog⟩
private theorem s2Step20EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_zeroBorrow : s2Step20EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step20EarlyControlLog.zeroWork=some s2Step20EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step20EarlyControlZeroArena,s2Step20EarlyControlArena,s2Step20EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step20EarlyControl_zero : compileHmrEqualityLog s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step20EarlyControlLog.zeroWork=some (s2Step20EarlyControlZeroArena,s2Step20EarlyControlLog.zeroWork,s2Step20EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step20EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step20EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step20EarlyControl_positiveBorrow : s2Step20EarlyControlZeroArena.checkBorrow (1) s2Step20EarlyControlLog.positiveWork=some s2Step20EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step20EarlyControlZeroArena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step20EarlyControlPositiveArena,s2Step20EarlyControlZeroArena,s2Step20EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step20EarlyControl_classEqualityOwned : ([826, 831] : List Wire).toFinset⊆s2Step20EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlPositiveArena (fun q => (0≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_classEqualityBorrow : s2Step20EarlyControlPositiveArena.checkBorrow (([826, 831] : List Wire).length-1) s2Step20EarlyControlLog.classWork=some s2Step20EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step20EarlyControlPositiveArena (fun q => (0≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step20EarlyControlEqualityArena,s2Step20EarlyControlPositiveArena,s2Step20EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step20EarlyControl_classEquality : compileHmrEqualityLog s2Step20EarlyControlPositiveArena [826, 831] 0 s2Step20EarlyControlLog.classWork=some (s2Step20EarlyControlEqualityArena,s2Step20EarlyControlLog.classWork,s2Step20EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step20EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step20EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step20EarlyControl_classOwned : ([777, 782, 826] : List Wire).toFinset⊆s2Step20EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlZeroArena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EarlyControl_class : compileHmrSourceClassLog s2Step20EarlyControlZeroArena false 777 s2Step20EarlyControlZeroPlan.top 0 826 s2Step20EarlyControlLog.positiveWork s2Step20EarlyControlLog.classWork=some s2Step20EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step20EarlyControlClassPlan s2Step20EarlyControlZeroArena false 777 s2Step20EarlyControlZeroPlan.top 0 826
  constructor
  · decide +kernel
  · exact s2Step20EarlyControl_classOwned
  · exact s2Step20EarlyControl_positiveBorrow
  · exact s2Step20EarlyControl_classEquality
private theorem s2Step20EarlyControl_flagsOwned : ([832, 787, 789, 791] : List Wire).toFinset⊆s2Step20EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlEqualityArena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_flagsBorrow : s2Step20EarlyControlEqualityArena.checkBorrow (6) s2Step20EarlyControlLog.flagWork=some s2Step20EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step20EarlyControlEqualityArena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step20EarlyControlFlagArena,s2Step20EarlyControlEqualityArena,s2Step20EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step20EarlyControl_flags : compileHmrFlagsLog s2Step20EarlyControlClassPlan.equalityArena s2Step20EarlyControlClassPlan.equality.top 787 789 791 s2Step20EarlyControlLog.flagWork=some s2Step20EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step20EarlyControl_flagsOwned⟩
  · exact s2Step20EarlyControl_flagsBorrow
private theorem s2Step20EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838] : List Wire).toFinset⊆s2Step20EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlFlagArena (fun q => (0≤q ∧ q<841)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_fitBorrow : s2Step20EarlyControlFlagArena.checkBorrow ((7-([795, 813, 818, 823, 828, 833, 838] : List Wire).length)) s2Step20EarlyControlLog.recordFresh=some s2Step20EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step20EarlyControlFlagArena (fun q => (0≤q ∧ q<841)) rfl
      decide +kernel
    · ext q
      simp [s2Step20EarlyControlFittedArena,s2Step20EarlyControlFlagArena,s2Step20EarlyControlLog,arenaWires]
theorem s2Step20EarlyControl_fit : compileHmrRecordGrowLog s2Step20EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838] 7 s2Step20EarlyControlLog.recordFresh=some s2Step20EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step20EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step20EarlyControl_fitBorrow
private theorem s2Step20EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838] : List Wire).toFinset⊆s2Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_historyBorrow : s2Step20EarlyControlArena.checkBorrow ((7-([795, 813, 818, 823, 828, 833, 838] : List Wire).length)) s2Step20EarlyControlLog.recordFresh=some s2Step20EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step20EarlyControlHistoryArena,s2Step20EarlyControlArena,s2Step20EarlyControlLog,arenaWires]
theorem s2Step20EarlyControl_history : compileHmrRecordGrowLog s2Step20EarlyControlArena [795, 813, 818, 823, 828, 833, 838] 7 s2Step20EarlyControlLog.recordFresh=some s2Step20EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step20EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step20EarlyControl_historyBorrow
private theorem s2Step20EarlyControl_sigmaOwned : ([785, 826] : List Wire).toFinset⊆s2Step20EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_sigmaReleaseOwned : ([826] : List Wire).toFinset⊆s2Step20EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_sigmaRelease : s2Step20EarlyControlHistoryArena.release {826} (fun _ => false)=some s2Step20EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step20EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step20EarlyControlSigmaArena,s2Step20EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step20EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step20EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EarlyControl_branch : compileHmrBranchRetirement s2Step20EarlyControlSigmaArena 781=some s2Step20EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step20EarlyControl_branchOwned
  · ext q
    simp [s2Step20EarlyControlOutputArena,s2Step20EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step20EarlyControl_sigma : compileHmrSigmaDropLog s2Step20EarlyControlHistoryArena false 0 0 785 826 []=some s2Step20EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step20EarlyControl_sigmaOwned⟩
  · exact s2Step20EarlyControl_sigmaRelease
theorem s2Step20EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step20EarlyControlLog.zeroWork).map Prod.snd=some (s2Step20EarlyControlLog.zeroWork,s2Step20EarlyControlZeroPlan) := by
  rw [s2Step20EarlyControl_zero]
  rfl
theorem s2Step20EarlyControl_classProjection : (compileHmrSourceClassLog s2Step20EarlyControlZeroArena false 777 s2Step20EarlyControlZeroPlan.top 0 826 s2Step20EarlyControlLog.positiveWork s2Step20EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step20EarlyControlClassPlan.positiveWork,s2Step20EarlyControlClassPlan.equalityWork,s2Step20EarlyControlClassPlan.equality) := by
  rw [s2Step20EarlyControl_class]
  rfl
theorem s2Step20EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step20EarlyControlClassPlan.equalityArena s2Step20EarlyControlClassPlan.equality.top 787 789 791 s2Step20EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step20EarlyControl_flags]
  rfl
theorem s2Step20EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step20EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838] 7 s2Step20EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step20EarlyControl_fit]
  rfl
theorem s2Step20EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step20EarlyControlArena [795, 813, 818, 823, 828, 833, 838] 7 s2Step20EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step20EarlyControl_history]
  rfl
theorem s2Step20EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step20EarlyControlHistoryArena false 0 0 785 826 []).map (fun _ => true)=some true := by
  rw [s2Step20EarlyControl_sigma]
  rfl
theorem s2Step20EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step20EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2Step20EarlyControl_branch]
  rfl
private theorem s2Step20EarlyControl_entrySigmaOwned : ([826, 785] : List Wire).toFinset⊆s2Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step20EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838] : List Wire).toFinset⊆s2Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EarlyControl_logged : s2Step20EarlyControlPlan.Logged s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 826 785 787 789 791 781 7 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step20EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step20EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step20EarlyControl_zero
  · exact s2Step20EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step20EarlyControl_flags
  · exact s2Step20EarlyControl_fit
  · exact s2Step20EarlyControl_history
  · exact s2Step20EarlyControl_sigma
  · exact s2Step20EarlyControl_branch
theorem s2Step20EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 826 785 787 789 791 781 7 s2Step20EarlyControlLog=some s2Step20EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step20EarlyControlPlan s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 826 785 787 789 791 781 7 s2Step20EarlyControl_logged
theorem s2Step20EarlyControl_checked : (compileHmrEarlyControlLog s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 826 785 787 789 791 781 7 s2Step20EarlyControlLog).map (fun P => P.outputArena.live.card)=some 826 := by
  rw [s2Step20EarlyControl_plan_checked]
  decide +kernel

def s2Step21EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 831) ∨ (832 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 835) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 836) ∨ (838 ≤ q ∧ q < 839)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 843)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 831) ∨ (832 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 831) ∨ (832 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 831) ∨ (832 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step21EarlyControlLog : HmrEarlyControlLog := ⟨[780, 831, 782, 781, 783],[834],[835],[836, 837, 839, 840, 841, 842],[843]⟩
def s2Step21EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,831⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step21EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step21EarlyControlPositiveArena,[834],s2Step21EarlyControlEqualityArena,[835],⟨⟨829,false⟩,[⟨⟨834,false⟩,835⟩]⟩⟩
def s2Step21EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step21EarlyControlZeroArena,s2Step21EarlyControlZeroPlan,s2Step21EarlyControlClassPlan,s2Step21EarlyControlFlagArena,s2Step21EarlyControlFittedArena,s2Step21EarlyControlHistoryArena,s2Step21EarlyControlSigmaArena,s2Step21EarlyControlOutputArena,s2Step21EarlyControlLog⟩
private theorem s2Step21EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_zeroBorrow : s2Step21EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step21EarlyControlLog.zeroWork=some s2Step21EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step21EarlyControlZeroArena,s2Step21EarlyControlArena,s2Step21EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step21EarlyControl_zero : compileHmrEqualityLog s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step21EarlyControlLog.zeroWork=some (s2Step21EarlyControlZeroArena,s2Step21EarlyControlLog.zeroWork,s2Step21EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step21EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step21EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step21EarlyControl_positiveBorrow : s2Step21EarlyControlZeroArena.checkBorrow (1) s2Step21EarlyControlLog.positiveWork=some s2Step21EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step21EarlyControlZeroArena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step21EarlyControlPositiveArena,s2Step21EarlyControlZeroArena,s2Step21EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step21EarlyControl_classEqualityOwned : ([829, 834] : List Wire).toFinset⊆s2Step21EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlPositiveArena (fun q => (0≤q ∧ q<835) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_classEqualityBorrow : s2Step21EarlyControlPositiveArena.checkBorrow (([829, 834] : List Wire).length-1) s2Step21EarlyControlLog.classWork=some s2Step21EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step21EarlyControlPositiveArena (fun q => (0≤q ∧ q<835) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step21EarlyControlEqualityArena,s2Step21EarlyControlPositiveArena,s2Step21EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step21EarlyControl_classEquality : compileHmrEqualityLog s2Step21EarlyControlPositiveArena [829, 834] 0 s2Step21EarlyControlLog.classWork=some (s2Step21EarlyControlEqualityArena,s2Step21EarlyControlLog.classWork,s2Step21EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step21EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step21EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step21EarlyControl_classOwned : ([777, 783, 829] : List Wire).toFinset⊆s2Step21EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlZeroArena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21EarlyControl_class : compileHmrSourceClassLog s2Step21EarlyControlZeroArena false 777 s2Step21EarlyControlZeroPlan.top 0 829 s2Step21EarlyControlLog.positiveWork s2Step21EarlyControlLog.classWork=some s2Step21EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step21EarlyControlClassPlan s2Step21EarlyControlZeroArena false 777 s2Step21EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step21EarlyControl_classOwned
  · exact s2Step21EarlyControl_positiveBorrow
  · exact s2Step21EarlyControl_classEquality
private theorem s2Step21EarlyControl_flagsOwned : ([835, 787, 789, 791] : List Wire).toFinset⊆s2Step21EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlEqualityArena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_flagsBorrow : s2Step21EarlyControlEqualityArena.checkBorrow (6) s2Step21EarlyControlLog.flagWork=some s2Step21EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step21EarlyControlEqualityArena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step21EarlyControlFlagArena,s2Step21EarlyControlEqualityArena,s2Step21EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step21EarlyControl_flags : compileHmrFlagsLog s2Step21EarlyControlClassPlan.equalityArena s2Step21EarlyControlClassPlan.equality.top 787 789 791 s2Step21EarlyControlLog.flagWork=some s2Step21EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step21EarlyControl_flagsOwned⟩
  · exact s2Step21EarlyControl_flagsBorrow
private theorem s2Step21EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838] : List Wire).toFinset⊆s2Step21EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlFlagArena (fun q => (0≤q ∧ q<843)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_fitBorrow : s2Step21EarlyControlFlagArena.checkBorrow ((8-([795, 813, 818, 823, 828, 833, 838] : List Wire).length)) s2Step21EarlyControlLog.recordFresh=some s2Step21EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step21EarlyControlFlagArena (fun q => (0≤q ∧ q<843)) rfl
      decide +kernel
    · ext q
      simp [s2Step21EarlyControlFittedArena,s2Step21EarlyControlFlagArena,s2Step21EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step21EarlyControl_fit : compileHmrRecordGrowLog s2Step21EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838] 8 s2Step21EarlyControlLog.recordFresh=some s2Step21EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step21EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step21EarlyControl_fitBorrow
private theorem s2Step21EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838] : List Wire).toFinset⊆s2Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_historyBorrow : s2Step21EarlyControlArena.checkBorrow ((8-([795, 813, 818, 823, 828, 833, 838] : List Wire).length)) s2Step21EarlyControlLog.recordFresh=some s2Step21EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
      decide +kernel
    · ext q
      simp [s2Step21EarlyControlHistoryArena,s2Step21EarlyControlArena,s2Step21EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step21EarlyControl_history : compileHmrRecordGrowLog s2Step21EarlyControlArena [795, 813, 818, 823, 828, 833, 838] 8 s2Step21EarlyControlLog.recordFresh=some s2Step21EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step21EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step21EarlyControl_historyBorrow
private theorem s2Step21EarlyControl_sigmaOwned : ([785, 829] : List Wire).toFinset⊆s2Step21EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step21EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_sigmaRelease : s2Step21EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step21EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step21EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step21EarlyControlSigmaArena,s2Step21EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step21EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step21EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step21EarlyControl_branch : compileHmrBranchRetirement s2Step21EarlyControlSigmaArena 784=some s2Step21EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step21EarlyControl_branchOwned
  · ext q
    simp [s2Step21EarlyControlOutputArena,s2Step21EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step21EarlyControl_sigma : compileHmrSigmaDropLog s2Step21EarlyControlHistoryArena false 0 0 785 829 []=some s2Step21EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step21EarlyControl_sigmaOwned⟩
  · exact s2Step21EarlyControl_sigmaRelease
theorem s2Step21EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step21EarlyControlLog.zeroWork).map Prod.snd=some (s2Step21EarlyControlLog.zeroWork,s2Step21EarlyControlZeroPlan) := by
  rw [s2Step21EarlyControl_zero]
  rfl
theorem s2Step21EarlyControl_classProjection : (compileHmrSourceClassLog s2Step21EarlyControlZeroArena false 777 s2Step21EarlyControlZeroPlan.top 0 829 s2Step21EarlyControlLog.positiveWork s2Step21EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step21EarlyControlClassPlan.positiveWork,s2Step21EarlyControlClassPlan.equalityWork,s2Step21EarlyControlClassPlan.equality) := by
  rw [s2Step21EarlyControl_class]
  rfl
theorem s2Step21EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step21EarlyControlClassPlan.equalityArena s2Step21EarlyControlClassPlan.equality.top 787 789 791 s2Step21EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step21EarlyControl_flags]
  rfl
theorem s2Step21EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step21EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838] 8 s2Step21EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step21EarlyControl_fit]
  rfl
theorem s2Step21EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step21EarlyControlArena [795, 813, 818, 823, 828, 833, 838] 8 s2Step21EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step21EarlyControl_history]
  rfl
theorem s2Step21EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step21EarlyControlHistoryArena false 0 0 785 829 []).map (fun _ => true)=some true := by
  rw [s2Step21EarlyControl_sigma]
  rfl
theorem s2Step21EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step21EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  rw [s2Step21EarlyControl_branch]
  rfl
private theorem s2Step21EarlyControl_entrySigmaOwned : ([829, 785] : List Wire).toFinset⊆s2Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
private theorem s2Step21EarlyControl_entryRecordOwned : ([784, 795, 813, 818, 823, 828, 833, 838] : List Wire).toFinset⊆s2Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21EarlyControl_logged : s2Step21EarlyControlPlan.Logged s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 829 785 787 789 791 784 8 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step21EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step21EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step21EarlyControl_zero
  · exact s2Step21EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step21EarlyControl_flags
  · exact s2Step21EarlyControl_fit
  · exact s2Step21EarlyControl_history
  · exact s2Step21EarlyControl_sigma
  · exact s2Step21EarlyControl_branch
theorem s2Step21EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 829 785 787 789 791 784 8 s2Step21EarlyControlLog=some s2Step21EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step21EarlyControlPlan s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 829 785 787 789 791 784 8 s2Step21EarlyControl_logged
theorem s2Step21EarlyControl_checked : (compileHmrEarlyControlLog s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 829 785 787 789 791 784 8 s2Step21EarlyControlLog).map (fun P => P.outputArena.live.card)=some 829 := by
  rw [s2Step21EarlyControl_plan_checked]
  decide +kernel

def s2Step22EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 836) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 837) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 783) ∨ (785 ≤ q ∧ q < 831) ∨ (832 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 831) ∨ (832 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step22EarlyControlLog : HmrEarlyControlLog := ⟨[780, 834, 783, 784, 781],[836],[837],[839, 840, 841, 842, 844, 845],[]⟩
def s2Step22EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,834⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,784⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step22EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step22EarlyControlPositiveArena,[836],s2Step22EarlyControlEqualityArena,[837],⟨⟨831,false⟩,[⟨⟨836,false⟩,837⟩]⟩⟩
def s2Step22EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step22EarlyControlZeroArena,s2Step22EarlyControlZeroPlan,s2Step22EarlyControlClassPlan,s2Step22EarlyControlFlagArena,s2Step22EarlyControlFittedArena,s2Step22EarlyControlHistoryArena,s2Step22EarlyControlSigmaArena,s2Step22EarlyControlOutputArena,s2Step22EarlyControlLog⟩
private theorem s2Step22EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_zeroBorrow : s2Step22EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step22EarlyControlLog.zeroWork=some s2Step22EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step22EarlyControlZeroArena,s2Step22EarlyControlArena,s2Step22EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step22EarlyControl_zero : compileHmrEqualityLog s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step22EarlyControlLog.zeroWork=some (s2Step22EarlyControlZeroArena,s2Step22EarlyControlLog.zeroWork,s2Step22EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step22EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step22EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step22EarlyControl_positiveBorrow : s2Step22EarlyControlZeroArena.checkBorrow (1) s2Step22EarlyControlLog.positiveWork=some s2Step22EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step22EarlyControlZeroArena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step22EarlyControlPositiveArena,s2Step22EarlyControlZeroArena,s2Step22EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step22EarlyControl_classEqualityOwned : ([831, 836] : List Wire).toFinset⊆s2Step22EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlPositiveArena (fun q => (0≤q ∧ q<837) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_classEqualityBorrow : s2Step22EarlyControlPositiveArena.checkBorrow (([831, 836] : List Wire).length-1) s2Step22EarlyControlLog.classWork=some s2Step22EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step22EarlyControlPositiveArena (fun q => (0≤q ∧ q<837) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step22EarlyControlEqualityArena,s2Step22EarlyControlPositiveArena,s2Step22EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step22EarlyControl_classEquality : compileHmrEqualityLog s2Step22EarlyControlPositiveArena [831, 836] 0 s2Step22EarlyControlLog.classWork=some (s2Step22EarlyControlEqualityArena,s2Step22EarlyControlLog.classWork,s2Step22EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step22EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step22EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step22EarlyControl_classOwned : ([777, 781, 831] : List Wire).toFinset⊆s2Step22EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlZeroArena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EarlyControl_class : compileHmrSourceClassLog s2Step22EarlyControlZeroArena false 777 s2Step22EarlyControlZeroPlan.top 0 831 s2Step22EarlyControlLog.positiveWork s2Step22EarlyControlLog.classWork=some s2Step22EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step22EarlyControlClassPlan s2Step22EarlyControlZeroArena false 777 s2Step22EarlyControlZeroPlan.top 0 831
  constructor
  · decide +kernel
  · exact s2Step22EarlyControl_classOwned
  · exact s2Step22EarlyControl_positiveBorrow
  · exact s2Step22EarlyControl_classEquality
private theorem s2Step22EarlyControl_flagsOwned : ([837, 787, 789, 791] : List Wire).toFinset⊆s2Step22EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlEqualityArena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_flagsBorrow : s2Step22EarlyControlEqualityArena.checkBorrow (6) s2Step22EarlyControlLog.flagWork=some s2Step22EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step22EarlyControlEqualityArena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step22EarlyControlFlagArena,s2Step22EarlyControlEqualityArena,s2Step22EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step22EarlyControl_flags : compileHmrFlagsLog s2Step22EarlyControlClassPlan.equalityArena s2Step22EarlyControlClassPlan.equality.top 787 789 791 s2Step22EarlyControlLog.flagWork=some s2Step22EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step22EarlyControl_flagsOwned⟩
  · exact s2Step22EarlyControl_flagsBorrow
private theorem s2Step22EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).toFinset⊆s2Step22EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlFlagArena (fun q => (0≤q ∧ q<846)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_fitBorrow : s2Step22EarlyControlFlagArena.checkBorrow ((8-([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).length)) s2Step22EarlyControlLog.recordFresh=some s2Step22EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step22EarlyControlFlagArena (fun q => (0≤q ∧ q<846)) rfl
      decide +kernel
    · ext q
      simp [s2Step22EarlyControlFittedArena,s2Step22EarlyControlFlagArena,s2Step22EarlyControlLog,arenaWires]
theorem s2Step22EarlyControl_fit : compileHmrRecordGrowLog s2Step22EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22EarlyControlLog.recordFresh=some s2Step22EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step22EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step22EarlyControl_fitBorrow
private theorem s2Step22EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).toFinset⊆s2Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_historyBorrow : s2Step22EarlyControlArena.checkBorrow ((8-([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).length)) s2Step22EarlyControlLog.recordFresh=some s2Step22EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step22EarlyControlHistoryArena,s2Step22EarlyControlArena,s2Step22EarlyControlLog,arenaWires]
theorem s2Step22EarlyControl_history : compileHmrRecordGrowLog s2Step22EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22EarlyControlLog.recordFresh=some s2Step22EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step22EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step22EarlyControl_historyBorrow
private theorem s2Step22EarlyControl_sigmaOwned : ([785, 831] : List Wire).toFinset⊆s2Step22EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_sigmaReleaseOwned : ([831] : List Wire).toFinset⊆s2Step22EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_sigmaRelease : s2Step22EarlyControlHistoryArena.release {831} (fun _ => false)=some s2Step22EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step22EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step22EarlyControlSigmaArena,s2Step22EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step22EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step22EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EarlyControl_branch : compileHmrBranchRetirement s2Step22EarlyControlSigmaArena 782=some s2Step22EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step22EarlyControl_branchOwned
  · ext q
    simp [s2Step22EarlyControlOutputArena,s2Step22EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step22EarlyControl_sigma : compileHmrSigmaDropLog s2Step22EarlyControlHistoryArena false 0 0 785 831 []=some s2Step22EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step22EarlyControl_sigmaOwned⟩
  · exact s2Step22EarlyControl_sigmaRelease
theorem s2Step22EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step22EarlyControlLog.zeroWork).map Prod.snd=some (s2Step22EarlyControlLog.zeroWork,s2Step22EarlyControlZeroPlan) := by
  rw [s2Step22EarlyControl_zero]
  rfl
theorem s2Step22EarlyControl_classProjection : (compileHmrSourceClassLog s2Step22EarlyControlZeroArena false 777 s2Step22EarlyControlZeroPlan.top 0 831 s2Step22EarlyControlLog.positiveWork s2Step22EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step22EarlyControlClassPlan.positiveWork,s2Step22EarlyControlClassPlan.equalityWork,s2Step22EarlyControlClassPlan.equality) := by
  rw [s2Step22EarlyControl_class]
  rfl
theorem s2Step22EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step22EarlyControlClassPlan.equalityArena s2Step22EarlyControlClassPlan.equality.top 787 789 791 s2Step22EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step22EarlyControl_flags]
  rfl
theorem s2Step22EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step22EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step22EarlyControl_fit]
  rfl
theorem s2Step22EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step22EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step22EarlyControl_history]
  rfl
theorem s2Step22EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step22EarlyControlHistoryArena false 0 0 785 831 []).map (fun _ => true)=some true := by
  rw [s2Step22EarlyControl_sigma]
  rfl
theorem s2Step22EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step22EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  rw [s2Step22EarlyControl_branch]
  rfl
private theorem s2Step22EarlyControl_entrySigmaOwned : ([831, 785] : List Wire).toFinset⊆s2Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step22EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833, 838, 843] : List Wire).toFinset⊆s2Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EarlyControl_logged : s2Step22EarlyControlPlan.Logged s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 831 785 787 789 791 782 8 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step22EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step22EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step22EarlyControl_zero
  · exact s2Step22EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step22EarlyControl_flags
  · exact s2Step22EarlyControl_fit
  · exact s2Step22EarlyControl_history
  · exact s2Step22EarlyControl_sigma
  · exact s2Step22EarlyControl_branch
theorem s2Step22EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 831 785 787 789 791 782 8 s2Step22EarlyControlLog=some s2Step22EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step22EarlyControlPlan s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 831 785 787 789 791 782 8 s2Step22EarlyControl_logged
theorem s2Step22EarlyControl_checked : (compileHmrEarlyControlLog s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 831 785 787 789 791 782 8 s2Step22EarlyControlLog).map (fun P => P.outputArena.live.card)=some 831 := by
  rw [s2Step22EarlyControl_plan_checked]
  decide +kernel

def s2Step23EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 840) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 848)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (783 ≤ q ∧ q < 784) ∨ (785 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (785 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step23EarlyControlLog : HmrEarlyControlLog := ⟨[780, 836, 781, 782, 784],[839],[840],[841, 842, 844, 845, 846, 847],[848]⟩
def s2Step23EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,836⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,782⟩,⟨⟨777,false⟩,784⟩]⟩
def s2Step23EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step23EarlyControlPositiveArena,[839],s2Step23EarlyControlEqualityArena,[840],⟨⟨834,false⟩,[⟨⟨839,false⟩,840⟩]⟩⟩
def s2Step23EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step23EarlyControlZeroArena,s2Step23EarlyControlZeroPlan,s2Step23EarlyControlClassPlan,s2Step23EarlyControlFlagArena,s2Step23EarlyControlFittedArena,s2Step23EarlyControlHistoryArena,s2Step23EarlyControlSigmaArena,s2Step23EarlyControlOutputArena,s2Step23EarlyControlLog⟩
private theorem s2Step23EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_zeroBorrow : s2Step23EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step23EarlyControlLog.zeroWork=some s2Step23EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step23EarlyControlZeroArena,s2Step23EarlyControlArena,s2Step23EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step23EarlyControl_zero : compileHmrEqualityLog s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step23EarlyControlLog.zeroWork=some (s2Step23EarlyControlZeroArena,s2Step23EarlyControlLog.zeroWork,s2Step23EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step23EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step23EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step23EarlyControl_positiveBorrow : s2Step23EarlyControlZeroArena.checkBorrow (1) s2Step23EarlyControlLog.positiveWork=some s2Step23EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step23EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step23EarlyControlPositiveArena,s2Step23EarlyControlZeroArena,s2Step23EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step23EarlyControl_classEqualityOwned : ([834, 839] : List Wire).toFinset⊆s2Step23EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlPositiveArena (fun q => (0≤q ∧ q<840) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_classEqualityBorrow : s2Step23EarlyControlPositiveArena.checkBorrow (([834, 839] : List Wire).length-1) s2Step23EarlyControlLog.classWork=some s2Step23EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step23EarlyControlPositiveArena (fun q => (0≤q ∧ q<840) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step23EarlyControlEqualityArena,s2Step23EarlyControlPositiveArena,s2Step23EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step23EarlyControl_classEquality : compileHmrEqualityLog s2Step23EarlyControlPositiveArena [834, 839] 0 s2Step23EarlyControlLog.classWork=some (s2Step23EarlyControlEqualityArena,s2Step23EarlyControlLog.classWork,s2Step23EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step23EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step23EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step23EarlyControl_classOwned : ([777, 784, 834] : List Wire).toFinset⊆s2Step23EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlZeroArena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23EarlyControl_class : compileHmrSourceClassLog s2Step23EarlyControlZeroArena false 777 s2Step23EarlyControlZeroPlan.top 0 834 s2Step23EarlyControlLog.positiveWork s2Step23EarlyControlLog.classWork=some s2Step23EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step23EarlyControlClassPlan s2Step23EarlyControlZeroArena false 777 s2Step23EarlyControlZeroPlan.top 0 834
  constructor
  · decide +kernel
  · exact s2Step23EarlyControl_classOwned
  · exact s2Step23EarlyControl_positiveBorrow
  · exact s2Step23EarlyControl_classEquality
private theorem s2Step23EarlyControl_flagsOwned : ([840, 787, 789, 791] : List Wire).toFinset⊆s2Step23EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlEqualityArena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_flagsBorrow : s2Step23EarlyControlEqualityArena.checkBorrow (6) s2Step23EarlyControlLog.flagWork=some s2Step23EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step23EarlyControlEqualityArena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step23EarlyControlFlagArena,s2Step23EarlyControlEqualityArena,s2Step23EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step23EarlyControl_flags : compileHmrFlagsLog s2Step23EarlyControlClassPlan.equalityArena s2Step23EarlyControlClassPlan.equality.top 787 789 791 s2Step23EarlyControlLog.flagWork=some s2Step23EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step23EarlyControl_flagsOwned⟩
  · exact s2Step23EarlyControl_flagsBorrow
private theorem s2Step23EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).toFinset⊆s2Step23EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlFlagArena (fun q => (0≤q ∧ q<848)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_fitBorrow : s2Step23EarlyControlFlagArena.checkBorrow ((9-([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).length)) s2Step23EarlyControlLog.recordFresh=some s2Step23EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step23EarlyControlFlagArena (fun q => (0≤q ∧ q<848)) rfl
      decide +kernel
    · ext q
      simp [s2Step23EarlyControlFittedArena,s2Step23EarlyControlFlagArena,s2Step23EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step23EarlyControl_fit : compileHmrRecordGrowLog s2Step23EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23EarlyControlLog.recordFresh=some s2Step23EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step23EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step23EarlyControl_fitBorrow
private theorem s2Step23EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).toFinset⊆s2Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_historyBorrow : s2Step23EarlyControlArena.checkBorrow ((9-([795, 813, 818, 823, 828, 833, 838, 843] : List Wire).length)) s2Step23EarlyControlLog.recordFresh=some s2Step23EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
      decide +kernel
    · ext q
      simp [s2Step23EarlyControlHistoryArena,s2Step23EarlyControlArena,s2Step23EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step23EarlyControl_history : compileHmrRecordGrowLog s2Step23EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23EarlyControlLog.recordFresh=some s2Step23EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step23EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step23EarlyControl_historyBorrow
private theorem s2Step23EarlyControl_sigmaOwned : ([785, 834] : List Wire).toFinset⊆s2Step23EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_sigmaReleaseOwned : ([834] : List Wire).toFinset⊆s2Step23EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_sigmaRelease : s2Step23EarlyControlHistoryArena.release {834} (fun _ => false)=some s2Step23EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step23EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step23EarlyControlSigmaArena,s2Step23EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step23EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step23EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step23EarlyControl_branch : compileHmrBranchRetirement s2Step23EarlyControlSigmaArena 783=some s2Step23EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step23EarlyControl_branchOwned
  · ext q
    simp [s2Step23EarlyControlOutputArena,s2Step23EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step23EarlyControl_sigma : compileHmrSigmaDropLog s2Step23EarlyControlHistoryArena false 0 0 785 834 []=some s2Step23EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step23EarlyControl_sigmaOwned⟩
  · exact s2Step23EarlyControl_sigmaRelease
theorem s2Step23EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step23EarlyControlLog.zeroWork).map Prod.snd=some (s2Step23EarlyControlLog.zeroWork,s2Step23EarlyControlZeroPlan) := by
  rw [s2Step23EarlyControl_zero]
  rfl
theorem s2Step23EarlyControl_classProjection : (compileHmrSourceClassLog s2Step23EarlyControlZeroArena false 777 s2Step23EarlyControlZeroPlan.top 0 834 s2Step23EarlyControlLog.positiveWork s2Step23EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step23EarlyControlClassPlan.positiveWork,s2Step23EarlyControlClassPlan.equalityWork,s2Step23EarlyControlClassPlan.equality) := by
  rw [s2Step23EarlyControl_class]
  rfl
theorem s2Step23EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step23EarlyControlClassPlan.equalityArena s2Step23EarlyControlClassPlan.equality.top 787 789 791 s2Step23EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step23EarlyControl_flags]
  rfl
theorem s2Step23EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step23EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step23EarlyControl_fit]
  rfl
theorem s2Step23EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step23EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step23EarlyControl_history]
  rfl
theorem s2Step23EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step23EarlyControlHistoryArena false 0 0 785 834 []).map (fun _ => true)=some true := by
  rw [s2Step23EarlyControl_sigma]
  rfl
theorem s2Step23EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step23EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  rw [s2Step23EarlyControl_branch]
  rfl
private theorem s2Step23EarlyControl_entrySigmaOwned : ([834, 785] : List Wire).toFinset⊆s2Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
private theorem s2Step23EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843] : List Wire).toFinset⊆s2Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23EarlyControl_logged : s2Step23EarlyControlPlan.Logged s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 834 785 787 789 791 783 9 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step23EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step23EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step23EarlyControl_zero
  · exact s2Step23EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step23EarlyControl_flags
  · exact s2Step23EarlyControl_fit
  · exact s2Step23EarlyControl_history
  · exact s2Step23EarlyControl_sigma
  · exact s2Step23EarlyControl_branch
theorem s2Step23EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 834 785 787 789 791 783 9 s2Step23EarlyControlLog=some s2Step23EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step23EarlyControlPlan s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 834 785 787 789 791 783 9 s2Step23EarlyControl_logged
theorem s2Step23EarlyControl_checked : (compileHmrEarlyControlLog s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 834 785 787 789 791 783 9 s2Step23EarlyControlLog).map (fun P => P.outputArena.live.card)=some 834 := by
  rw [s2Step23EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
