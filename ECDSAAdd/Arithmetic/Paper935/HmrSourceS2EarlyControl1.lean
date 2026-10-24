import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl0
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl1Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

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
private theorem s2Step8EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_zeroBorrow : s2Step8EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step8EarlyControlLog.zeroWork=some s2Step8EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
      decide +kernel
    · ext q
      simp [s2Step8EarlyControlZeroArena,s2Step8EarlyControlArena,s2Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step8EarlyControl_zero : compileHmrEqualityLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step8EarlyControlLog.zeroWork=some (s2Step8EarlyControlZeroArena,s2Step8EarlyControlLog.zeroWork,s2Step8EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step8EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step8EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step8EarlyControl_positiveBorrow : s2Step8EarlyControlZeroArena.checkBorrow (1) s2Step8EarlyControlLog.positiveWork=some s2Step8EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step8EarlyControlZeroArena (fun q => (0≤q ∧ q<803)) rfl
      decide +kernel
    · ext q
      simp [s2Step8EarlyControlPositiveArena,s2Step8EarlyControlZeroArena,s2Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step8EarlyControl_classEqualityOwned : ([799, 803] : List Wire).toFinset⊆s2Step8EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlPositiveArena (fun q => (0≤q ∧ q<804)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_classEqualityBorrow : s2Step8EarlyControlPositiveArena.checkBorrow (([799, 803] : List Wire).length-1) s2Step8EarlyControlLog.classWork=some s2Step8EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step8EarlyControlPositiveArena (fun q => (0≤q ∧ q<804)) rfl
      decide +kernel
    · ext q
      simp [s2Step8EarlyControlEqualityArena,s2Step8EarlyControlPositiveArena,s2Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step8EarlyControl_classEquality : compileHmrEqualityLog s2Step8EarlyControlPositiveArena [799, 803] 0 s2Step8EarlyControlLog.classWork=some (s2Step8EarlyControlEqualityArena,s2Step8EarlyControlLog.classWork,s2Step8EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step8EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step8EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step8EarlyControl_classOwned : ([777, 782, 799] : List Wire).toFinset⊆s2Step8EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlZeroArena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8EarlyControl_class : compileHmrSourceClassLog s2Step8EarlyControlZeroArena false 777 s2Step8EarlyControlZeroPlan.top 0 799 s2Step8EarlyControlLog.positiveWork s2Step8EarlyControlLog.classWork=some s2Step8EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step8EarlyControlClassPlan s2Step8EarlyControlZeroArena false 777 s2Step8EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step8EarlyControl_classOwned
  · exact s2Step8EarlyControl_positiveBorrow
  · exact s2Step8EarlyControl_classEquality
private theorem s2Step8EarlyControl_flagsOwned : ([804, 787, 789, 791] : List Wire).toFinset⊆s2Step8EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlEqualityArena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_flagsBorrow : s2Step8EarlyControlEqualityArena.checkBorrow (6) s2Step8EarlyControlLog.flagWork=some s2Step8EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step8EarlyControlEqualityArena (fun q => (0≤q ∧ q<805)) rfl
      decide +kernel
    · ext q
      simp [s2Step8EarlyControlFlagArena,s2Step8EarlyControlEqualityArena,s2Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step8EarlyControl_flags : compileHmrFlagsLog s2Step8EarlyControlClassPlan.equalityArena s2Step8EarlyControlClassPlan.equality.top 787 789 791 s2Step8EarlyControlLog.flagWork=some s2Step8EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step8EarlyControl_flagsOwned⟩
  · exact s2Step8EarlyControl_flagsBorrow
private theorem s2Step8EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step8EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlFlagArena (fun q => (0≤q ∧ q<811)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_fitBorrow : s2Step8EarlyControlFlagArena.checkBorrow ((1-([795] : List Wire).length)) s2Step8EarlyControlLog.recordFresh=some s2Step8EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step8EarlyControlFlagArena (fun q => (0≤q ∧ q<811)) rfl
      decide +kernel
    · ext q
      simp [s2Step8EarlyControlFittedArena,s2Step8EarlyControlFlagArena,s2Step8EarlyControlLog,arenaWires]
theorem s2Step8EarlyControl_fit : compileHmrRecordGrowLog s2Step8EarlyControlFlagArena [795] 1 s2Step8EarlyControlLog.recordFresh=some s2Step8EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step8EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step8EarlyControl_fitBorrow
private theorem s2Step8EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_historyBorrow : s2Step8EarlyControlArena.checkBorrow ((1-([795] : List Wire).length)) s2Step8EarlyControlLog.recordFresh=some s2Step8EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
      decide +kernel
    · ext q
      simp [s2Step8EarlyControlHistoryArena,s2Step8EarlyControlArena,s2Step8EarlyControlLog,arenaWires]
theorem s2Step8EarlyControl_history : compileHmrRecordGrowLog s2Step8EarlyControlArena [795] 1 s2Step8EarlyControlLog.recordFresh=some s2Step8EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step8EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step8EarlyControl_historyBorrow
private theorem s2Step8EarlyControl_sigmaOwned : ([785, 799] : List Wire).toFinset⊆s2Step8EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step8EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_sigmaRelease : s2Step8EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step8EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step8EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step8EarlyControlSigmaArena,s2Step8EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step8EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step8EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8EarlyControl_branch : compileHmrBranchRetirement s2Step8EarlyControlSigmaArena 781=some s2Step8EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step8EarlyControl_branchOwned
  · ext q
    simp [s2Step8EarlyControlOutputArena,s2Step8EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step8EarlyControl_sigma : compileHmrSigmaDropLog s2Step8EarlyControlHistoryArena false 0 0 785 799 []=some s2Step8EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step8EarlyControl_sigmaOwned⟩
  · exact s2Step8EarlyControl_sigmaRelease
theorem s2Step8EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step8EarlyControlLog.zeroWork).map Prod.snd=some (s2Step8EarlyControlLog.zeroWork,s2Step8EarlyControlZeroPlan) := by
  rw [s2Step8EarlyControl_zero]
  rfl
theorem s2Step8EarlyControl_classProjection : (compileHmrSourceClassLog s2Step8EarlyControlZeroArena false 777 s2Step8EarlyControlZeroPlan.top 0 799 s2Step8EarlyControlLog.positiveWork s2Step8EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step8EarlyControlClassPlan.positiveWork,s2Step8EarlyControlClassPlan.equalityWork,s2Step8EarlyControlClassPlan.equality) := by
  rw [s2Step8EarlyControl_class]
  rfl
theorem s2Step8EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step8EarlyControlClassPlan.equalityArena s2Step8EarlyControlClassPlan.equality.top 787 789 791 s2Step8EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step8EarlyControl_flags]
  rfl
theorem s2Step8EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step8EarlyControlFlagArena [795] 1 s2Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step8EarlyControl_fit]
  rfl
theorem s2Step8EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step8EarlyControlArena [795] 1 s2Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step8EarlyControl_history]
  rfl
theorem s2Step8EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step8EarlyControlHistoryArena false 0 0 785 799 []).map (fun _ => true)=some true := by
  rw [s2Step8EarlyControl_sigma]
  rfl
theorem s2Step8EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step8EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2Step8EarlyControl_branch]
  rfl
private theorem s2Step8EarlyControl_entrySigmaOwned : ([799, 785] : List Wire).toFinset⊆s2Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
private theorem s2Step8EarlyControl_entryRecordOwned : ([781, 795] : List Wire).toFinset⊆s2Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8EarlyControl_logged : s2Step8EarlyControlPlan.Logged s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 799 785 787 789 791 781 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step8EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step8EarlyControl_entrySigmaOwned
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
private theorem s2Step9EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_zeroBorrow : s2Step9EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step9EarlyControlLog.zeroWork=some s2Step9EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
      decide +kernel
    · ext q
      simp [s2Step9EarlyControlZeroArena,s2Step9EarlyControlArena,s2Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step9EarlyControl_zero : compileHmrEqualityLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step9EarlyControlLog.zeroWork=some (s2Step9EarlyControlZeroArena,s2Step9EarlyControlLog.zeroWork,s2Step9EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step9EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step9EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step9EarlyControl_positiveBorrow : s2Step9EarlyControlZeroArena.checkBorrow (1) s2Step9EarlyControlLog.positiveWork=some s2Step9EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step9EarlyControlZeroArena (fun q => (0≤q ∧ q<805)) rfl
      decide +kernel
    · ext q
      simp [s2Step9EarlyControlPositiveArena,s2Step9EarlyControlZeroArena,s2Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step9EarlyControl_classEqualityOwned : ([801, 805] : List Wire).toFinset⊆s2Step9EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlPositiveArena (fun q => (0≤q ∧ q<806)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_classEqualityBorrow : s2Step9EarlyControlPositiveArena.checkBorrow (([801, 805] : List Wire).length-1) s2Step9EarlyControlLog.classWork=some s2Step9EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step9EarlyControlPositiveArena (fun q => (0≤q ∧ q<806)) rfl
      decide +kernel
    · ext q
      simp [s2Step9EarlyControlEqualityArena,s2Step9EarlyControlPositiveArena,s2Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step9EarlyControl_classEquality : compileHmrEqualityLog s2Step9EarlyControlPositiveArena [801, 805] 0 s2Step9EarlyControlLog.classWork=some (s2Step9EarlyControlEqualityArena,s2Step9EarlyControlLog.classWork,s2Step9EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step9EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step9EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step9EarlyControl_classOwned : ([777, 783, 801] : List Wire).toFinset⊆s2Step9EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlZeroArena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9EarlyControl_class : compileHmrSourceClassLog s2Step9EarlyControlZeroArena false 777 s2Step9EarlyControlZeroPlan.top 0 801 s2Step9EarlyControlLog.positiveWork s2Step9EarlyControlLog.classWork=some s2Step9EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step9EarlyControlClassPlan s2Step9EarlyControlZeroArena false 777 s2Step9EarlyControlZeroPlan.top 0 801
  constructor
  · decide +kernel
  · exact s2Step9EarlyControl_classOwned
  · exact s2Step9EarlyControl_positiveBorrow
  · exact s2Step9EarlyControl_classEquality
private theorem s2Step9EarlyControl_flagsOwned : ([806, 787, 789, 791] : List Wire).toFinset⊆s2Step9EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlEqualityArena (fun q => (0≤q ∧ q<807)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_flagsBorrow : s2Step9EarlyControlEqualityArena.checkBorrow (6) s2Step9EarlyControlLog.flagWork=some s2Step9EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step9EarlyControlEqualityArena (fun q => (0≤q ∧ q<807)) rfl
      decide +kernel
    · ext q
      simp [s2Step9EarlyControlFlagArena,s2Step9EarlyControlEqualityArena,s2Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step9EarlyControl_flags : compileHmrFlagsLog s2Step9EarlyControlClassPlan.equalityArena s2Step9EarlyControlClassPlan.equality.top 787 789 791 s2Step9EarlyControlLog.flagWork=some s2Step9EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step9EarlyControl_flagsOwned⟩
  · exact s2Step9EarlyControl_flagsBorrow
private theorem s2Step9EarlyControl_fitOwned : ([795] : List Wire).toFinset⊆s2Step9EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlFlagArena (fun q => (0≤q ∧ q<813)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_fitBorrow : s2Step9EarlyControlFlagArena.checkBorrow ((2-([795] : List Wire).length)) s2Step9EarlyControlLog.recordFresh=some s2Step9EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step9EarlyControlFlagArena (fun q => (0≤q ∧ q<813)) rfl
      decide +kernel
    · ext q
      simp [s2Step9EarlyControlFittedArena,s2Step9EarlyControlFlagArena,s2Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step9EarlyControl_fit : compileHmrRecordGrowLog s2Step9EarlyControlFlagArena [795] 2 s2Step9EarlyControlLog.recordFresh=some s2Step9EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step9EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step9EarlyControl_fitBorrow
private theorem s2Step9EarlyControl_historyOwned : ([795] : List Wire).toFinset⊆s2Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_historyBorrow : s2Step9EarlyControlArena.checkBorrow ((2-([795] : List Wire).length)) s2Step9EarlyControlLog.recordFresh=some s2Step9EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
      decide +kernel
    · ext q
      simp [s2Step9EarlyControlHistoryArena,s2Step9EarlyControlArena,s2Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step9EarlyControl_history : compileHmrRecordGrowLog s2Step9EarlyControlArena [795] 2 s2Step9EarlyControlLog.recordFresh=some s2Step9EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step9EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step9EarlyControl_historyBorrow
private theorem s2Step9EarlyControl_sigmaOwned : ([785, 801] : List Wire).toFinset⊆s2Step9EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_sigmaReleaseOwned : ([801] : List Wire).toFinset⊆s2Step9EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_sigmaRelease : s2Step9EarlyControlHistoryArena.release {801} (fun _ => false)=some s2Step9EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step9EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step9EarlyControlSigmaArena,s2Step9EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step9EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step9EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step9EarlyControl_branch : compileHmrBranchRetirement s2Step9EarlyControlSigmaArena 784=some s2Step9EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step9EarlyControl_branchOwned
  · ext q
    simp [s2Step9EarlyControlOutputArena,s2Step9EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step9EarlyControl_sigma : compileHmrSigmaDropLog s2Step9EarlyControlHistoryArena false 0 0 785 801 []=some s2Step9EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step9EarlyControl_sigmaOwned⟩
  · exact s2Step9EarlyControl_sigmaRelease
theorem s2Step9EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step9EarlyControlLog.zeroWork).map Prod.snd=some (s2Step9EarlyControlLog.zeroWork,s2Step9EarlyControlZeroPlan) := by
  rw [s2Step9EarlyControl_zero]
  rfl
theorem s2Step9EarlyControl_classProjection : (compileHmrSourceClassLog s2Step9EarlyControlZeroArena false 777 s2Step9EarlyControlZeroPlan.top 0 801 s2Step9EarlyControlLog.positiveWork s2Step9EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step9EarlyControlClassPlan.positiveWork,s2Step9EarlyControlClassPlan.equalityWork,s2Step9EarlyControlClassPlan.equality) := by
  rw [s2Step9EarlyControl_class]
  rfl
theorem s2Step9EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step9EarlyControlClassPlan.equalityArena s2Step9EarlyControlClassPlan.equality.top 787 789 791 s2Step9EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step9EarlyControl_flags]
  rfl
theorem s2Step9EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step9EarlyControlFlagArena [795] 2 s2Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step9EarlyControl_fit]
  rfl
theorem s2Step9EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step9EarlyControlArena [795] 2 s2Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step9EarlyControl_history]
  rfl
theorem s2Step9EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step9EarlyControlHistoryArena false 0 0 785 801 []).map (fun _ => true)=some true := by
  rw [s2Step9EarlyControl_sigma]
  rfl
theorem s2Step9EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step9EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  rw [s2Step9EarlyControl_branch]
  rfl
private theorem s2Step9EarlyControl_entrySigmaOwned : ([801, 785] : List Wire).toFinset⊆s2Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
  decide +kernel
private theorem s2Step9EarlyControl_entryRecordOwned : ([784, 795] : List Wire).toFinset⊆s2Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9EarlyControl_logged : s2Step9EarlyControlPlan.Logged s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 801 785 787 789 791 784 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step9EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step9EarlyControl_entrySigmaOwned
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
private theorem s2Step10EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_zeroBorrow : s2Step10EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step10EarlyControlLog.zeroWork=some s2Step10EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step10EarlyControlZeroArena,s2Step10EarlyControlArena,s2Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step10EarlyControl_zero : compileHmrEqualityLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step10EarlyControlLog.zeroWork=some (s2Step10EarlyControlZeroArena,s2Step10EarlyControlLog.zeroWork,s2Step10EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step10EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step10EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step10EarlyControl_positiveBorrow : s2Step10EarlyControlZeroArena.checkBorrow (1) s2Step10EarlyControlLog.positiveWork=some s2Step10EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step10EarlyControlZeroArena (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step10EarlyControlPositiveArena,s2Step10EarlyControlZeroArena,s2Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step10EarlyControl_classEqualityOwned : ([803, 807] : List Wire).toFinset⊆s2Step10EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlPositiveArena (fun q => (0≤q ∧ q<808) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_classEqualityBorrow : s2Step10EarlyControlPositiveArena.checkBorrow (([803, 807] : List Wire).length-1) s2Step10EarlyControlLog.classWork=some s2Step10EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step10EarlyControlPositiveArena (fun q => (0≤q ∧ q<808) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step10EarlyControlEqualityArena,s2Step10EarlyControlPositiveArena,s2Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step10EarlyControl_classEquality : compileHmrEqualityLog s2Step10EarlyControlPositiveArena [803, 807] 0 s2Step10EarlyControlLog.classWork=some (s2Step10EarlyControlEqualityArena,s2Step10EarlyControlLog.classWork,s2Step10EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step10EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step10EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step10EarlyControl_classOwned : ([777, 781, 803] : List Wire).toFinset⊆s2Step10EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlZeroArena (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EarlyControl_class : compileHmrSourceClassLog s2Step10EarlyControlZeroArena false 777 s2Step10EarlyControlZeroPlan.top 0 803 s2Step10EarlyControlLog.positiveWork s2Step10EarlyControlLog.classWork=some s2Step10EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step10EarlyControlClassPlan s2Step10EarlyControlZeroArena false 777 s2Step10EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s2Step10EarlyControl_classOwned
  · exact s2Step10EarlyControl_positiveBorrow
  · exact s2Step10EarlyControl_classEquality
private theorem s2Step10EarlyControl_flagsOwned : ([808, 787, 789, 791] : List Wire).toFinset⊆s2Step10EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlEqualityArena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_flagsBorrow : s2Step10EarlyControlEqualityArena.checkBorrow (6) s2Step10EarlyControlLog.flagWork=some s2Step10EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step10EarlyControlEqualityArena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step10EarlyControlFlagArena,s2Step10EarlyControlEqualityArena,s2Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step10EarlyControl_flags : compileHmrFlagsLog s2Step10EarlyControlClassPlan.equalityArena s2Step10EarlyControlClassPlan.equality.top 787 789 791 s2Step10EarlyControlLog.flagWork=some s2Step10EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step10EarlyControl_flagsOwned⟩
  · exact s2Step10EarlyControl_flagsBorrow
private theorem s2Step10EarlyControl_fitOwned : ([795, 813] : List Wire).toFinset⊆s2Step10EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlFlagArena (fun q => (0≤q ∧ q<816)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_fitBorrow : s2Step10EarlyControlFlagArena.checkBorrow ((2-([795, 813] : List Wire).length)) s2Step10EarlyControlLog.recordFresh=some s2Step10EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step10EarlyControlFlagArena (fun q => (0≤q ∧ q<816)) rfl
      decide +kernel
    · ext q
      simp [s2Step10EarlyControlFittedArena,s2Step10EarlyControlFlagArena,s2Step10EarlyControlLog,arenaWires]
theorem s2Step10EarlyControl_fit : compileHmrRecordGrowLog s2Step10EarlyControlFlagArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh=some s2Step10EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step10EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step10EarlyControl_fitBorrow
private theorem s2Step10EarlyControl_historyOwned : ([795, 813] : List Wire).toFinset⊆s2Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_historyBorrow : s2Step10EarlyControlArena.checkBorrow ((2-([795, 813] : List Wire).length)) s2Step10EarlyControlLog.recordFresh=some s2Step10EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step10EarlyControlHistoryArena,s2Step10EarlyControlArena,s2Step10EarlyControlLog,arenaWires]
theorem s2Step10EarlyControl_history : compileHmrRecordGrowLog s2Step10EarlyControlArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh=some s2Step10EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step10EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step10EarlyControl_historyBorrow
private theorem s2Step10EarlyControl_sigmaOwned : ([785, 803] : List Wire).toFinset⊆s2Step10EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s2Step10EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_sigmaRelease : s2Step10EarlyControlHistoryArena.release {803} (fun _ => false)=some s2Step10EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step10EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step10EarlyControlSigmaArena,s2Step10EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step10EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step10EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EarlyControl_branch : compileHmrBranchRetirement s2Step10EarlyControlSigmaArena 782=some s2Step10EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step10EarlyControl_branchOwned
  · ext q
    simp [s2Step10EarlyControlOutputArena,s2Step10EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step10EarlyControl_sigma : compileHmrSigmaDropLog s2Step10EarlyControlHistoryArena false 0 0 785 803 []=some s2Step10EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step10EarlyControl_sigmaOwned⟩
  · exact s2Step10EarlyControl_sigmaRelease
theorem s2Step10EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step10EarlyControlLog.zeroWork).map Prod.snd=some (s2Step10EarlyControlLog.zeroWork,s2Step10EarlyControlZeroPlan) := by
  rw [s2Step10EarlyControl_zero]
  rfl
theorem s2Step10EarlyControl_classProjection : (compileHmrSourceClassLog s2Step10EarlyControlZeroArena false 777 s2Step10EarlyControlZeroPlan.top 0 803 s2Step10EarlyControlLog.positiveWork s2Step10EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step10EarlyControlClassPlan.positiveWork,s2Step10EarlyControlClassPlan.equalityWork,s2Step10EarlyControlClassPlan.equality) := by
  rw [s2Step10EarlyControl_class]
  rfl
theorem s2Step10EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step10EarlyControlClassPlan.equalityArena s2Step10EarlyControlClassPlan.equality.top 787 789 791 s2Step10EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step10EarlyControl_flags]
  rfl
theorem s2Step10EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step10EarlyControlFlagArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step10EarlyControl_fit]
  rfl
theorem s2Step10EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step10EarlyControlArena [795, 813] 2 s2Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step10EarlyControl_history]
  rfl
theorem s2Step10EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step10EarlyControlHistoryArena false 0 0 785 803 []).map (fun _ => true)=some true := by
  rw [s2Step10EarlyControl_sigma]
  rfl
theorem s2Step10EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step10EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  rw [s2Step10EarlyControl_branch]
  rfl
private theorem s2Step10EarlyControl_entrySigmaOwned : ([803, 785] : List Wire).toFinset⊆s2Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step10EarlyControl_entryRecordOwned : ([782, 795, 813] : List Wire).toFinset⊆s2Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EarlyControl_logged : s2Step10EarlyControlPlan.Logged s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 803 785 787 789 791 782 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step10EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step10EarlyControl_entrySigmaOwned
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
private theorem s2Step11EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_zeroBorrow : s2Step11EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step11EarlyControlLog.zeroWork=some s2Step11EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step11EarlyControlZeroArena,s2Step11EarlyControlArena,s2Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step11EarlyControl_zero : compileHmrEqualityLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step11EarlyControlLog.zeroWork=some (s2Step11EarlyControlZeroArena,s2Step11EarlyControlLog.zeroWork,s2Step11EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step11EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step11EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step11EarlyControl_positiveBorrow : s2Step11EarlyControlZeroArena.checkBorrow (1) s2Step11EarlyControlLog.positiveWork=some s2Step11EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step11EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step11EarlyControlPositiveArena,s2Step11EarlyControlZeroArena,s2Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step11EarlyControl_classEqualityOwned : ([805, 809] : List Wire).toFinset⊆s2Step11EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlPositiveArena (fun q => (0≤q ∧ q<810) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_classEqualityBorrow : s2Step11EarlyControlPositiveArena.checkBorrow (([805, 809] : List Wire).length-1) s2Step11EarlyControlLog.classWork=some s2Step11EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step11EarlyControlPositiveArena (fun q => (0≤q ∧ q<810) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step11EarlyControlEqualityArena,s2Step11EarlyControlPositiveArena,s2Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step11EarlyControl_classEquality : compileHmrEqualityLog s2Step11EarlyControlPositiveArena [805, 809] 0 s2Step11EarlyControlLog.classWork=some (s2Step11EarlyControlEqualityArena,s2Step11EarlyControlLog.classWork,s2Step11EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step11EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step11EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step11EarlyControl_classOwned : ([777, 784, 805] : List Wire).toFinset⊆s2Step11EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11EarlyControl_class : compileHmrSourceClassLog s2Step11EarlyControlZeroArena false 777 s2Step11EarlyControlZeroPlan.top 0 805 s2Step11EarlyControlLog.positiveWork s2Step11EarlyControlLog.classWork=some s2Step11EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step11EarlyControlClassPlan s2Step11EarlyControlZeroArena false 777 s2Step11EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step11EarlyControl_classOwned
  · exact s2Step11EarlyControl_positiveBorrow
  · exact s2Step11EarlyControl_classEquality
private theorem s2Step11EarlyControl_flagsOwned : ([810, 787, 789, 791] : List Wire).toFinset⊆s2Step11EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlEqualityArena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_flagsBorrow : s2Step11EarlyControlEqualityArena.checkBorrow (6) s2Step11EarlyControlLog.flagWork=some s2Step11EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step11EarlyControlEqualityArena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step11EarlyControlFlagArena,s2Step11EarlyControlEqualityArena,s2Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step11EarlyControl_flags : compileHmrFlagsLog s2Step11EarlyControlClassPlan.equalityArena s2Step11EarlyControlClassPlan.equality.top 787 789 791 s2Step11EarlyControlLog.flagWork=some s2Step11EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step11EarlyControl_flagsOwned⟩
  · exact s2Step11EarlyControl_flagsBorrow
private theorem s2Step11EarlyControl_fitOwned : ([795, 813] : List Wire).toFinset⊆s2Step11EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlFlagArena (fun q => (0≤q ∧ q<818)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_fitBorrow : s2Step11EarlyControlFlagArena.checkBorrow ((3-([795, 813] : List Wire).length)) s2Step11EarlyControlLog.recordFresh=some s2Step11EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step11EarlyControlFlagArena (fun q => (0≤q ∧ q<818)) rfl
      decide +kernel
    · ext q
      simp [s2Step11EarlyControlFittedArena,s2Step11EarlyControlFlagArena,s2Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step11EarlyControl_fit : compileHmrRecordGrowLog s2Step11EarlyControlFlagArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh=some s2Step11EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step11EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step11EarlyControl_fitBorrow
private theorem s2Step11EarlyControl_historyOwned : ([795, 813] : List Wire).toFinset⊆s2Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_historyBorrow : s2Step11EarlyControlArena.checkBorrow ((3-([795, 813] : List Wire).length)) s2Step11EarlyControlLog.recordFresh=some s2Step11EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
      decide +kernel
    · ext q
      simp [s2Step11EarlyControlHistoryArena,s2Step11EarlyControlArena,s2Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step11EarlyControl_history : compileHmrRecordGrowLog s2Step11EarlyControlArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh=some s2Step11EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step11EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step11EarlyControl_historyBorrow
private theorem s2Step11EarlyControl_sigmaOwned : ([785, 805] : List Wire).toFinset⊆s2Step11EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step11EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_sigmaRelease : s2Step11EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step11EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step11EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step11EarlyControlSigmaArena,s2Step11EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step11EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step11EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step11EarlyControl_branch : compileHmrBranchRetirement s2Step11EarlyControlSigmaArena 783=some s2Step11EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step11EarlyControl_branchOwned
  · ext q
    simp [s2Step11EarlyControlOutputArena,s2Step11EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step11EarlyControl_sigma : compileHmrSigmaDropLog s2Step11EarlyControlHistoryArena false 0 0 785 805 []=some s2Step11EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step11EarlyControl_sigmaOwned⟩
  · exact s2Step11EarlyControl_sigmaRelease
theorem s2Step11EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step11EarlyControlLog.zeroWork).map Prod.snd=some (s2Step11EarlyControlLog.zeroWork,s2Step11EarlyControlZeroPlan) := by
  rw [s2Step11EarlyControl_zero]
  rfl
theorem s2Step11EarlyControl_classProjection : (compileHmrSourceClassLog s2Step11EarlyControlZeroArena false 777 s2Step11EarlyControlZeroPlan.top 0 805 s2Step11EarlyControlLog.positiveWork s2Step11EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step11EarlyControlClassPlan.positiveWork,s2Step11EarlyControlClassPlan.equalityWork,s2Step11EarlyControlClassPlan.equality) := by
  rw [s2Step11EarlyControl_class]
  rfl
theorem s2Step11EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step11EarlyControlClassPlan.equalityArena s2Step11EarlyControlClassPlan.equality.top 787 789 791 s2Step11EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step11EarlyControl_flags]
  rfl
theorem s2Step11EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step11EarlyControlFlagArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step11EarlyControl_fit]
  rfl
theorem s2Step11EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step11EarlyControlArena [795, 813] 3 s2Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step11EarlyControl_history]
  rfl
theorem s2Step11EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step11EarlyControlHistoryArena false 0 0 785 805 []).map (fun _ => true)=some true := by
  rw [s2Step11EarlyControl_sigma]
  rfl
theorem s2Step11EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step11EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  rw [s2Step11EarlyControl_branch]
  rfl
private theorem s2Step11EarlyControl_entrySigmaOwned : ([805, 785] : List Wire).toFinset⊆s2Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
private theorem s2Step11EarlyControl_entryRecordOwned : ([783, 795, 813] : List Wire).toFinset⊆s2Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11EarlyControl_logged : s2Step11EarlyControlPlan.Logged s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 805 785 787 789 791 783 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step11EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step11EarlyControl_entrySigmaOwned
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
private theorem s2Step12EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_zeroBorrow : s2Step12EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step12EarlyControlLog.zeroWork=some s2Step12EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step12EarlyControlZeroArena,s2Step12EarlyControlArena,s2Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step12EarlyControl_zero : compileHmrEqualityLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step12EarlyControlLog.zeroWork=some (s2Step12EarlyControlZeroArena,s2Step12EarlyControlLog.zeroWork,s2Step12EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step12EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step12EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step12EarlyControl_positiveBorrow : s2Step12EarlyControlZeroArena.checkBorrow (1) s2Step12EarlyControlLog.positiveWork=some s2Step12EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step12EarlyControlZeroArena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step12EarlyControlPositiveArena,s2Step12EarlyControlZeroArena,s2Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step12EarlyControl_classEqualityOwned : ([807, 811] : List Wire).toFinset⊆s2Step12EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlPositiveArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_classEqualityBorrow : s2Step12EarlyControlPositiveArena.checkBorrow (([807, 811] : List Wire).length-1) s2Step12EarlyControlLog.classWork=some s2Step12EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step12EarlyControlPositiveArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step12EarlyControlEqualityArena,s2Step12EarlyControlPositiveArena,s2Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step12EarlyControl_classEquality : compileHmrEqualityLog s2Step12EarlyControlPositiveArena [807, 811] 0 s2Step12EarlyControlLog.classWork=some (s2Step12EarlyControlEqualityArena,s2Step12EarlyControlLog.classWork,s2Step12EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step12EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step12EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step12EarlyControl_classOwned : ([777, 782, 807] : List Wire).toFinset⊆s2Step12EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlZeroArena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EarlyControl_class : compileHmrSourceClassLog s2Step12EarlyControlZeroArena false 777 s2Step12EarlyControlZeroPlan.top 0 807 s2Step12EarlyControlLog.positiveWork s2Step12EarlyControlLog.classWork=some s2Step12EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step12EarlyControlClassPlan s2Step12EarlyControlZeroArena false 777 s2Step12EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step12EarlyControl_classOwned
  · exact s2Step12EarlyControl_positiveBorrow
  · exact s2Step12EarlyControl_classEquality
private theorem s2Step12EarlyControl_flagsOwned : ([812, 787, 789, 791] : List Wire).toFinset⊆s2Step12EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_flagsBorrow : s2Step12EarlyControlEqualityArena.checkBorrow (6) s2Step12EarlyControlLog.flagWork=some s2Step12EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step12EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step12EarlyControlFlagArena,s2Step12EarlyControlEqualityArena,s2Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step12EarlyControl_flags : compileHmrFlagsLog s2Step12EarlyControlClassPlan.equalityArena s2Step12EarlyControlClassPlan.equality.top 787 789 791 s2Step12EarlyControlLog.flagWork=some s2Step12EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step12EarlyControl_flagsOwned⟩
  · exact s2Step12EarlyControl_flagsBorrow
private theorem s2Step12EarlyControl_fitOwned : ([795, 813, 818] : List Wire).toFinset⊆s2Step12EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlFlagArena (fun q => (0≤q ∧ q<821)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_fitBorrow : s2Step12EarlyControlFlagArena.checkBorrow ((3-([795, 813, 818] : List Wire).length)) s2Step12EarlyControlLog.recordFresh=some s2Step12EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step12EarlyControlFlagArena (fun q => (0≤q ∧ q<821)) rfl
      decide +kernel
    · ext q
      simp [s2Step12EarlyControlFittedArena,s2Step12EarlyControlFlagArena,s2Step12EarlyControlLog,arenaWires]
theorem s2Step12EarlyControl_fit : compileHmrRecordGrowLog s2Step12EarlyControlFlagArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh=some s2Step12EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step12EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step12EarlyControl_fitBorrow
private theorem s2Step12EarlyControl_historyOwned : ([795, 813, 818] : List Wire).toFinset⊆s2Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_historyBorrow : s2Step12EarlyControlArena.checkBorrow ((3-([795, 813, 818] : List Wire).length)) s2Step12EarlyControlLog.recordFresh=some s2Step12EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step12EarlyControlHistoryArena,s2Step12EarlyControlArena,s2Step12EarlyControlLog,arenaWires]
theorem s2Step12EarlyControl_history : compileHmrRecordGrowLog s2Step12EarlyControlArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh=some s2Step12EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step12EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step12EarlyControl_historyBorrow
private theorem s2Step12EarlyControl_sigmaOwned : ([785, 807] : List Wire).toFinset⊆s2Step12EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step12EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_sigmaRelease : s2Step12EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step12EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step12EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step12EarlyControlSigmaArena,s2Step12EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step12EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step12EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EarlyControl_branch : compileHmrBranchRetirement s2Step12EarlyControlSigmaArena 781=some s2Step12EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step12EarlyControl_branchOwned
  · ext q
    simp [s2Step12EarlyControlOutputArena,s2Step12EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step12EarlyControl_sigma : compileHmrSigmaDropLog s2Step12EarlyControlHistoryArena false 0 0 785 807 []=some s2Step12EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step12EarlyControl_sigmaOwned⟩
  · exact s2Step12EarlyControl_sigmaRelease
theorem s2Step12EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step12EarlyControlLog.zeroWork).map Prod.snd=some (s2Step12EarlyControlLog.zeroWork,s2Step12EarlyControlZeroPlan) := by
  rw [s2Step12EarlyControl_zero]
  rfl
theorem s2Step12EarlyControl_classProjection : (compileHmrSourceClassLog s2Step12EarlyControlZeroArena false 777 s2Step12EarlyControlZeroPlan.top 0 807 s2Step12EarlyControlLog.positiveWork s2Step12EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step12EarlyControlClassPlan.positiveWork,s2Step12EarlyControlClassPlan.equalityWork,s2Step12EarlyControlClassPlan.equality) := by
  rw [s2Step12EarlyControl_class]
  rfl
theorem s2Step12EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step12EarlyControlClassPlan.equalityArena s2Step12EarlyControlClassPlan.equality.top 787 789 791 s2Step12EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step12EarlyControl_flags]
  rfl
theorem s2Step12EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step12EarlyControlFlagArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step12EarlyControl_fit]
  rfl
theorem s2Step12EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step12EarlyControlArena [795, 813, 818] 3 s2Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step12EarlyControl_history]
  rfl
theorem s2Step12EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step12EarlyControlHistoryArena false 0 0 785 807 []).map (fun _ => true)=some true := by
  rw [s2Step12EarlyControl_sigma]
  rfl
theorem s2Step12EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step12EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2Step12EarlyControl_branch]
  rfl
private theorem s2Step12EarlyControl_entrySigmaOwned : ([807, 785] : List Wire).toFinset⊆s2Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step12EarlyControl_entryRecordOwned : ([781, 795, 813, 818] : List Wire).toFinset⊆s2Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EarlyControl_logged : s2Step12EarlyControlPlan.Logged s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 807 785 787 789 791 781 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step12EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step12EarlyControl_entrySigmaOwned
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
private theorem s2Step13EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_zeroBorrow : s2Step13EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step13EarlyControlLog.zeroWork=some s2Step13EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step13EarlyControlZeroArena,s2Step13EarlyControlArena,s2Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step13EarlyControl_zero : compileHmrEqualityLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step13EarlyControlLog.zeroWork=some (s2Step13EarlyControlZeroArena,s2Step13EarlyControlLog.zeroWork,s2Step13EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step13EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step13EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step13EarlyControl_positiveBorrow : s2Step13EarlyControlZeroArena.checkBorrow (1) s2Step13EarlyControlLog.positiveWork=some s2Step13EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step13EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step13EarlyControlPositiveArena,s2Step13EarlyControlZeroArena,s2Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step13EarlyControl_classEqualityOwned : ([809, 814] : List Wire).toFinset⊆s2Step13EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_classEqualityBorrow : s2Step13EarlyControlPositiveArena.checkBorrow (([809, 814] : List Wire).length-1) s2Step13EarlyControlLog.classWork=some s2Step13EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step13EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step13EarlyControlEqualityArena,s2Step13EarlyControlPositiveArena,s2Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step13EarlyControl_classEquality : compileHmrEqualityLog s2Step13EarlyControlPositiveArena [809, 814] 0 s2Step13EarlyControlLog.classWork=some (s2Step13EarlyControlEqualityArena,s2Step13EarlyControlLog.classWork,s2Step13EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step13EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step13EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step13EarlyControl_classOwned : ([777, 783, 809] : List Wire).toFinset⊆s2Step13EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13EarlyControl_class : compileHmrSourceClassLog s2Step13EarlyControlZeroArena false 777 s2Step13EarlyControlZeroPlan.top 0 809 s2Step13EarlyControlLog.positiveWork s2Step13EarlyControlLog.classWork=some s2Step13EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step13EarlyControlClassPlan s2Step13EarlyControlZeroArena false 777 s2Step13EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step13EarlyControl_classOwned
  · exact s2Step13EarlyControl_positiveBorrow
  · exact s2Step13EarlyControl_classEquality
private theorem s2Step13EarlyControl_flagsOwned : ([815, 787, 789, 791] : List Wire).toFinset⊆s2Step13EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_flagsBorrow : s2Step13EarlyControlEqualityArena.checkBorrow (6) s2Step13EarlyControlLog.flagWork=some s2Step13EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step13EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step13EarlyControlFlagArena,s2Step13EarlyControlEqualityArena,s2Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step13EarlyControl_flags : compileHmrFlagsLog s2Step13EarlyControlClassPlan.equalityArena s2Step13EarlyControlClassPlan.equality.top 787 789 791 s2Step13EarlyControlLog.flagWork=some s2Step13EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step13EarlyControl_flagsOwned⟩
  · exact s2Step13EarlyControl_flagsBorrow
private theorem s2Step13EarlyControl_fitOwned : ([795, 813, 818] : List Wire).toFinset⊆s2Step13EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlFlagArena (fun q => (0≤q ∧ q<823)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_fitBorrow : s2Step13EarlyControlFlagArena.checkBorrow ((4-([795, 813, 818] : List Wire).length)) s2Step13EarlyControlLog.recordFresh=some s2Step13EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step13EarlyControlFlagArena (fun q => (0≤q ∧ q<823)) rfl
      decide +kernel
    · ext q
      simp [s2Step13EarlyControlFittedArena,s2Step13EarlyControlFlagArena,s2Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step13EarlyControl_fit : compileHmrRecordGrowLog s2Step13EarlyControlFlagArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh=some s2Step13EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step13EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step13EarlyControl_fitBorrow
private theorem s2Step13EarlyControl_historyOwned : ([795, 813, 818] : List Wire).toFinset⊆s2Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_historyBorrow : s2Step13EarlyControlArena.checkBorrow ((4-([795, 813, 818] : List Wire).length)) s2Step13EarlyControlLog.recordFresh=some s2Step13EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
      decide +kernel
    · ext q
      simp [s2Step13EarlyControlHistoryArena,s2Step13EarlyControlArena,s2Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step13EarlyControl_history : compileHmrRecordGrowLog s2Step13EarlyControlArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh=some s2Step13EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step13EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step13EarlyControl_historyBorrow
private theorem s2Step13EarlyControl_sigmaOwned : ([785, 809] : List Wire).toFinset⊆s2Step13EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step13EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_sigmaRelease : s2Step13EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step13EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step13EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step13EarlyControlSigmaArena,s2Step13EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step13EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step13EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step13EarlyControl_branch : compileHmrBranchRetirement s2Step13EarlyControlSigmaArena 784=some s2Step13EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step13EarlyControl_branchOwned
  · ext q
    simp [s2Step13EarlyControlOutputArena,s2Step13EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step13EarlyControl_sigma : compileHmrSigmaDropLog s2Step13EarlyControlHistoryArena false 0 0 785 809 []=some s2Step13EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step13EarlyControl_sigmaOwned⟩
  · exact s2Step13EarlyControl_sigmaRelease
theorem s2Step13EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step13EarlyControlLog.zeroWork).map Prod.snd=some (s2Step13EarlyControlLog.zeroWork,s2Step13EarlyControlZeroPlan) := by
  rw [s2Step13EarlyControl_zero]
  rfl
theorem s2Step13EarlyControl_classProjection : (compileHmrSourceClassLog s2Step13EarlyControlZeroArena false 777 s2Step13EarlyControlZeroPlan.top 0 809 s2Step13EarlyControlLog.positiveWork s2Step13EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step13EarlyControlClassPlan.positiveWork,s2Step13EarlyControlClassPlan.equalityWork,s2Step13EarlyControlClassPlan.equality) := by
  rw [s2Step13EarlyControl_class]
  rfl
theorem s2Step13EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step13EarlyControlClassPlan.equalityArena s2Step13EarlyControlClassPlan.equality.top 787 789 791 s2Step13EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step13EarlyControl_flags]
  rfl
theorem s2Step13EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step13EarlyControlFlagArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step13EarlyControl_fit]
  rfl
theorem s2Step13EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step13EarlyControlArena [795, 813, 818] 4 s2Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step13EarlyControl_history]
  rfl
theorem s2Step13EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step13EarlyControlHistoryArena false 0 0 785 809 []).map (fun _ => true)=some true := by
  rw [s2Step13EarlyControl_sigma]
  rfl
theorem s2Step13EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step13EarlyControlSigmaArena 784).map (fun _ => true)=some true := by
  rw [s2Step13EarlyControl_branch]
  rfl
private theorem s2Step13EarlyControl_entrySigmaOwned : ([809, 785] : List Wire).toFinset⊆s2Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
private theorem s2Step13EarlyControl_entryRecordOwned : ([784, 795, 813, 818] : List Wire).toFinset⊆s2Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13EarlyControl_logged : s2Step13EarlyControlPlan.Logged s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 809 785 787 789 791 784 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step13EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step13EarlyControl_entrySigmaOwned
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
private theorem s2Step14EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_zeroBorrow : s2Step14EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step14EarlyControlLog.zeroWork=some s2Step14EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step14EarlyControlZeroArena,s2Step14EarlyControlArena,s2Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step14EarlyControl_zero : compileHmrEqualityLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step14EarlyControlLog.zeroWork=some (s2Step14EarlyControlZeroArena,s2Step14EarlyControlLog.zeroWork,s2Step14EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step14EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step14EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step14EarlyControl_positiveBorrow : s2Step14EarlyControlZeroArena.checkBorrow (1) s2Step14EarlyControlLog.positiveWork=some s2Step14EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step14EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step14EarlyControlPositiveArena,s2Step14EarlyControlZeroArena,s2Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step14EarlyControl_classEqualityOwned : ([811, 816] : List Wire).toFinset⊆s2Step14EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlPositiveArena (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_classEqualityBorrow : s2Step14EarlyControlPositiveArena.checkBorrow (([811, 816] : List Wire).length-1) s2Step14EarlyControlLog.classWork=some s2Step14EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step14EarlyControlPositiveArena (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step14EarlyControlEqualityArena,s2Step14EarlyControlPositiveArena,s2Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step14EarlyControl_classEquality : compileHmrEqualityLog s2Step14EarlyControlPositiveArena [811, 816] 0 s2Step14EarlyControlLog.classWork=some (s2Step14EarlyControlEqualityArena,s2Step14EarlyControlLog.classWork,s2Step14EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step14EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step14EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step14EarlyControl_classOwned : ([777, 781, 811] : List Wire).toFinset⊆s2Step14EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EarlyControl_class : compileHmrSourceClassLog s2Step14EarlyControlZeroArena false 777 s2Step14EarlyControlZeroPlan.top 0 811 s2Step14EarlyControlLog.positiveWork s2Step14EarlyControlLog.classWork=some s2Step14EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step14EarlyControlClassPlan s2Step14EarlyControlZeroArena false 777 s2Step14EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step14EarlyControl_classOwned
  · exact s2Step14EarlyControl_positiveBorrow
  · exact s2Step14EarlyControl_classEquality
private theorem s2Step14EarlyControl_flagsOwned : ([817, 787, 789, 791] : List Wire).toFinset⊆s2Step14EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlEqualityArena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_flagsBorrow : s2Step14EarlyControlEqualityArena.checkBorrow (6) s2Step14EarlyControlLog.flagWork=some s2Step14EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step14EarlyControlEqualityArena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step14EarlyControlFlagArena,s2Step14EarlyControlEqualityArena,s2Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step14EarlyControl_flags : compileHmrFlagsLog s2Step14EarlyControlClassPlan.equalityArena s2Step14EarlyControlClassPlan.equality.top 787 789 791 s2Step14EarlyControlLog.flagWork=some s2Step14EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step14EarlyControl_flagsOwned⟩
  · exact s2Step14EarlyControl_flagsBorrow
private theorem s2Step14EarlyControl_fitOwned : ([795, 813, 818, 823] : List Wire).toFinset⊆s2Step14EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlFlagArena (fun q => (0≤q ∧ q<826)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_fitBorrow : s2Step14EarlyControlFlagArena.checkBorrow ((4-([795, 813, 818, 823] : List Wire).length)) s2Step14EarlyControlLog.recordFresh=some s2Step14EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step14EarlyControlFlagArena (fun q => (0≤q ∧ q<826)) rfl
      decide +kernel
    · ext q
      simp [s2Step14EarlyControlFittedArena,s2Step14EarlyControlFlagArena,s2Step14EarlyControlLog,arenaWires]
theorem s2Step14EarlyControl_fit : compileHmrRecordGrowLog s2Step14EarlyControlFlagArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh=some s2Step14EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step14EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step14EarlyControl_fitBorrow
private theorem s2Step14EarlyControl_historyOwned : ([795, 813, 818, 823] : List Wire).toFinset⊆s2Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_historyBorrow : s2Step14EarlyControlArena.checkBorrow ((4-([795, 813, 818, 823] : List Wire).length)) s2Step14EarlyControlLog.recordFresh=some s2Step14EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step14EarlyControlHistoryArena,s2Step14EarlyControlArena,s2Step14EarlyControlLog,arenaWires]
theorem s2Step14EarlyControl_history : compileHmrRecordGrowLog s2Step14EarlyControlArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh=some s2Step14EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step14EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step14EarlyControl_historyBorrow
private theorem s2Step14EarlyControl_sigmaOwned : ([785, 811] : List Wire).toFinset⊆s2Step14EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step14EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_sigmaRelease : s2Step14EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step14EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step14EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step14EarlyControlSigmaArena,s2Step14EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step14EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step14EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EarlyControl_branch : compileHmrBranchRetirement s2Step14EarlyControlSigmaArena 782=some s2Step14EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step14EarlyControl_branchOwned
  · ext q
    simp [s2Step14EarlyControlOutputArena,s2Step14EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step14EarlyControl_sigma : compileHmrSigmaDropLog s2Step14EarlyControlHistoryArena false 0 0 785 811 []=some s2Step14EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step14EarlyControl_sigmaOwned⟩
  · exact s2Step14EarlyControl_sigmaRelease
theorem s2Step14EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step14EarlyControlLog.zeroWork).map Prod.snd=some (s2Step14EarlyControlLog.zeroWork,s2Step14EarlyControlZeroPlan) := by
  rw [s2Step14EarlyControl_zero]
  rfl
theorem s2Step14EarlyControl_classProjection : (compileHmrSourceClassLog s2Step14EarlyControlZeroArena false 777 s2Step14EarlyControlZeroPlan.top 0 811 s2Step14EarlyControlLog.positiveWork s2Step14EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step14EarlyControlClassPlan.positiveWork,s2Step14EarlyControlClassPlan.equalityWork,s2Step14EarlyControlClassPlan.equality) := by
  rw [s2Step14EarlyControl_class]
  rfl
theorem s2Step14EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step14EarlyControlClassPlan.equalityArena s2Step14EarlyControlClassPlan.equality.top 787 789 791 s2Step14EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step14EarlyControl_flags]
  rfl
theorem s2Step14EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step14EarlyControlFlagArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step14EarlyControl_fit]
  rfl
theorem s2Step14EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step14EarlyControlArena [795, 813, 818, 823] 4 s2Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step14EarlyControl_history]
  rfl
theorem s2Step14EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step14EarlyControlHistoryArena false 0 0 785 811 []).map (fun _ => true)=some true := by
  rw [s2Step14EarlyControl_sigma]
  rfl
theorem s2Step14EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step14EarlyControlSigmaArena 782).map (fun _ => true)=some true := by
  rw [s2Step14EarlyControl_branch]
  rfl
private theorem s2Step14EarlyControl_entrySigmaOwned : ([811, 785] : List Wire).toFinset⊆s2Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step14EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823] : List Wire).toFinset⊆s2Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EarlyControl_logged : s2Step14EarlyControlPlan.Logged s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 811 785 787 789 791 782 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step14EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step14EarlyControl_entrySigmaOwned
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
private theorem s2Step15EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_zeroBorrow : s2Step15EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step15EarlyControlLog.zeroWork=some s2Step15EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step15EarlyControlZeroArena,s2Step15EarlyControlArena,s2Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step15EarlyControl_zero : compileHmrEqualityLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step15EarlyControlLog.zeroWork=some (s2Step15EarlyControlZeroArena,s2Step15EarlyControlLog.zeroWork,s2Step15EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step15EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step15EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step15EarlyControl_positiveBorrow : s2Step15EarlyControlZeroArena.checkBorrow (1) s2Step15EarlyControlLog.positiveWork=some s2Step15EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step15EarlyControlZeroArena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step15EarlyControlPositiveArena,s2Step15EarlyControlZeroArena,s2Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step15EarlyControl_classEqualityOwned : ([814, 819] : List Wire).toFinset⊆s2Step15EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlPositiveArena (fun q => (0≤q ∧ q<820) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_classEqualityBorrow : s2Step15EarlyControlPositiveArena.checkBorrow (([814, 819] : List Wire).length-1) s2Step15EarlyControlLog.classWork=some s2Step15EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step15EarlyControlPositiveArena (fun q => (0≤q ∧ q<820) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step15EarlyControlEqualityArena,s2Step15EarlyControlPositiveArena,s2Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step15EarlyControl_classEquality : compileHmrEqualityLog s2Step15EarlyControlPositiveArena [814, 819] 0 s2Step15EarlyControlLog.classWork=some (s2Step15EarlyControlEqualityArena,s2Step15EarlyControlLog.classWork,s2Step15EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step15EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step15EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step15EarlyControl_classOwned : ([777, 784, 814] : List Wire).toFinset⊆s2Step15EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlZeroArena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15EarlyControl_class : compileHmrSourceClassLog s2Step15EarlyControlZeroArena false 777 s2Step15EarlyControlZeroPlan.top 0 814 s2Step15EarlyControlLog.positiveWork s2Step15EarlyControlLog.classWork=some s2Step15EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step15EarlyControlClassPlan s2Step15EarlyControlZeroArena false 777 s2Step15EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step15EarlyControl_classOwned
  · exact s2Step15EarlyControl_positiveBorrow
  · exact s2Step15EarlyControl_classEquality
private theorem s2Step15EarlyControl_flagsOwned : ([820, 787, 789, 791] : List Wire).toFinset⊆s2Step15EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlEqualityArena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_flagsBorrow : s2Step15EarlyControlEqualityArena.checkBorrow (6) s2Step15EarlyControlLog.flagWork=some s2Step15EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step15EarlyControlEqualityArena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step15EarlyControlFlagArena,s2Step15EarlyControlEqualityArena,s2Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step15EarlyControl_flags : compileHmrFlagsLog s2Step15EarlyControlClassPlan.equalityArena s2Step15EarlyControlClassPlan.equality.top 787 789 791 s2Step15EarlyControlLog.flagWork=some s2Step15EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step15EarlyControl_flagsOwned⟩
  · exact s2Step15EarlyControl_flagsBorrow
private theorem s2Step15EarlyControl_fitOwned : ([795, 813, 818, 823] : List Wire).toFinset⊆s2Step15EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlFlagArena (fun q => (0≤q ∧ q<828)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_fitBorrow : s2Step15EarlyControlFlagArena.checkBorrow ((5-([795, 813, 818, 823] : List Wire).length)) s2Step15EarlyControlLog.recordFresh=some s2Step15EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step15EarlyControlFlagArena (fun q => (0≤q ∧ q<828)) rfl
      decide +kernel
    · ext q
      simp [s2Step15EarlyControlFittedArena,s2Step15EarlyControlFlagArena,s2Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step15EarlyControl_fit : compileHmrRecordGrowLog s2Step15EarlyControlFlagArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh=some s2Step15EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step15EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step15EarlyControl_fitBorrow
private theorem s2Step15EarlyControl_historyOwned : ([795, 813, 818, 823] : List Wire).toFinset⊆s2Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_historyBorrow : s2Step15EarlyControlArena.checkBorrow ((5-([795, 813, 818, 823] : List Wire).length)) s2Step15EarlyControlLog.recordFresh=some s2Step15EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
      decide +kernel
    · ext q
      simp [s2Step15EarlyControlHistoryArena,s2Step15EarlyControlArena,s2Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step15EarlyControl_history : compileHmrRecordGrowLog s2Step15EarlyControlArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh=some s2Step15EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step15EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step15EarlyControl_historyBorrow
private theorem s2Step15EarlyControl_sigmaOwned : ([785, 814] : List Wire).toFinset⊆s2Step15EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step15EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_sigmaRelease : s2Step15EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step15EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step15EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step15EarlyControlSigmaArena,s2Step15EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step15EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step15EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step15EarlyControl_branch : compileHmrBranchRetirement s2Step15EarlyControlSigmaArena 783=some s2Step15EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step15EarlyControl_branchOwned
  · ext q
    simp [s2Step15EarlyControlOutputArena,s2Step15EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step15EarlyControl_sigma : compileHmrSigmaDropLog s2Step15EarlyControlHistoryArena false 0 0 785 814 []=some s2Step15EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step15EarlyControl_sigmaOwned⟩
  · exact s2Step15EarlyControl_sigmaRelease
theorem s2Step15EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step15EarlyControlLog.zeroWork).map Prod.snd=some (s2Step15EarlyControlLog.zeroWork,s2Step15EarlyControlZeroPlan) := by
  rw [s2Step15EarlyControl_zero]
  rfl
theorem s2Step15EarlyControl_classProjection : (compileHmrSourceClassLog s2Step15EarlyControlZeroArena false 777 s2Step15EarlyControlZeroPlan.top 0 814 s2Step15EarlyControlLog.positiveWork s2Step15EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step15EarlyControlClassPlan.positiveWork,s2Step15EarlyControlClassPlan.equalityWork,s2Step15EarlyControlClassPlan.equality) := by
  rw [s2Step15EarlyControl_class]
  rfl
theorem s2Step15EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step15EarlyControlClassPlan.equalityArena s2Step15EarlyControlClassPlan.equality.top 787 789 791 s2Step15EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step15EarlyControl_flags]
  rfl
theorem s2Step15EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step15EarlyControlFlagArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step15EarlyControl_fit]
  rfl
theorem s2Step15EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step15EarlyControlArena [795, 813, 818, 823] 5 s2Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step15EarlyControl_history]
  rfl
theorem s2Step15EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step15EarlyControlHistoryArena false 0 0 785 814 []).map (fun _ => true)=some true := by
  rw [s2Step15EarlyControl_sigma]
  rfl
theorem s2Step15EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step15EarlyControlSigmaArena 783).map (fun _ => true)=some true := by
  rw [s2Step15EarlyControl_branch]
  rfl
private theorem s2Step15EarlyControl_entrySigmaOwned : ([814, 785] : List Wire).toFinset⊆s2Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
private theorem s2Step15EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823] : List Wire).toFinset⊆s2Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15EarlyControl_logged : s2Step15EarlyControlPlan.Logged s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 814 785 787 789 791 783 5 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step15EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step15EarlyControl_entrySigmaOwned
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

end ECDSAAdd.Arithmetic.Paper935
