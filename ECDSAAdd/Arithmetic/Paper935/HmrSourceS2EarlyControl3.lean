import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl2
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl3Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2Step24EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 782) ∨ (786 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 782) ∨ (786 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 782) ∨ (786 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (786 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step24EarlyControlLog : HmrEarlyControlLog := ⟨[779, 785, 780, 839, 840],[784],[783],[782, 841, 842, 844, 845, 846],[]⟩
def s2Step24EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,780⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,840⟩]⟩
def s2Step24EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step24EarlyControlPositiveArena,[784],s2Step24EarlyControlEqualityArena,[783],⟨⟨836,false⟩,[⟨⟨784,false⟩,783⟩]⟩⟩
def s2Step24EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step24EarlyControlZeroArena,s2Step24EarlyControlZeroPlan,s2Step24EarlyControlClassPlan,s2Step24EarlyControlFlagArena,s2Step24EarlyControlFittedArena,s2Step24EarlyControlHistoryArena,s2Step24EarlyControlSigmaArena,s2Step24EarlyControlOutputArena,s2Step24EarlyControlLog⟩
private theorem s2Step24EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_zeroBorrow : s2Step24EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step24EarlyControlLog.zeroWork=some s2Step24EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step24EarlyControlZeroArena,s2Step24EarlyControlArena,s2Step24EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step24EarlyControl_zero : compileHmrEqualityLog s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step24EarlyControlLog.zeroWork=some (s2Step24EarlyControlZeroArena,s2Step24EarlyControlLog.zeroWork,s2Step24EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step24EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step24EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step24EarlyControl_positiveBorrow : s2Step24EarlyControlZeroArena.checkBorrow (1) s2Step24EarlyControlLog.positiveWork=some s2Step24EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step24EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step24EarlyControlPositiveArena,s2Step24EarlyControlZeroArena,s2Step24EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step24EarlyControl_classEqualityOwned : ([836, 784] : List Wire).toFinset⊆s2Step24EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_classEqualityBorrow : s2Step24EarlyControlPositiveArena.checkBorrow (([836, 784] : List Wire).length-1) s2Step24EarlyControlLog.classWork=some s2Step24EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step24EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step24EarlyControlEqualityArena,s2Step24EarlyControlPositiveArena,s2Step24EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step24EarlyControl_classEquality : compileHmrEqualityLog s2Step24EarlyControlPositiveArena [836, 784] 0 s2Step24EarlyControlLog.classWork=some (s2Step24EarlyControlEqualityArena,s2Step24EarlyControlLog.classWork,s2Step24EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step24EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step24EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step24EarlyControl_classOwned : ([777, 840, 836] : List Wire).toFinset⊆s2Step24EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EarlyControl_class : compileHmrSourceClassLog s2Step24EarlyControlZeroArena false 777 s2Step24EarlyControlZeroPlan.top 0 836 s2Step24EarlyControlLog.positiveWork s2Step24EarlyControlLog.classWork=some s2Step24EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step24EarlyControlClassPlan s2Step24EarlyControlZeroArena false 777 s2Step24EarlyControlZeroPlan.top 0 836
  constructor
  · decide +kernel
  · exact s2Step24EarlyControl_classOwned
  · exact s2Step24EarlyControl_positiveBorrow
  · exact s2Step24EarlyControl_classEquality
private theorem s2Step24EarlyControl_flagsOwned : ([783, 787, 789, 791] : List Wire).toFinset⊆s2Step24EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_flagsBorrow : s2Step24EarlyControlEqualityArena.checkBorrow (6) s2Step24EarlyControlLog.flagWork=some s2Step24EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step24EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step24EarlyControlFlagArena,s2Step24EarlyControlEqualityArena,s2Step24EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step24EarlyControl_flags : compileHmrFlagsLog s2Step24EarlyControlClassPlan.equalityArena s2Step24EarlyControlClassPlan.equality.top 787 789 791 s2Step24EarlyControlLog.flagWork=some s2Step24EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step24EarlyControl_flagsOwned⟩
  · exact s2Step24EarlyControl_flagsBorrow
private theorem s2Step24EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).toFinset⊆s2Step24EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlFlagArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_fitBorrow : s2Step24EarlyControlFlagArena.checkBorrow ((9-([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).length)) s2Step24EarlyControlLog.recordFresh=some s2Step24EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step24EarlyControlFlagArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step24EarlyControlFittedArena,s2Step24EarlyControlFlagArena,s2Step24EarlyControlLog,arenaWires]
theorem s2Step24EarlyControl_fit : compileHmrRecordGrowLog s2Step24EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24EarlyControlLog.recordFresh=some s2Step24EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step24EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step24EarlyControl_fitBorrow
private theorem s2Step24EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).toFinset⊆s2Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_historyBorrow : s2Step24EarlyControlArena.checkBorrow ((9-([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).length)) s2Step24EarlyControlLog.recordFresh=some s2Step24EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step24EarlyControlHistoryArena,s2Step24EarlyControlArena,s2Step24EarlyControlLog,arenaWires]
theorem s2Step24EarlyControl_history : compileHmrRecordGrowLog s2Step24EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24EarlyControlLog.recordFresh=some s2Step24EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step24EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step24EarlyControl_historyBorrow
private theorem s2Step24EarlyControl_sigmaOwned : ([254, 836] : List Wire).toFinset⊆s2Step24EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_sigmaReleaseOwned : ([836] : List Wire).toFinset⊆s2Step24EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_sigmaRelease : s2Step24EarlyControlHistoryArena.release {836} (fun _ => false)=some s2Step24EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step24EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step24EarlyControlSigmaArena,s2Step24EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step24EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step24EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EarlyControl_branch : compileHmrBranchRetirement s2Step24EarlyControlSigmaArena 781=some s2Step24EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step24EarlyControl_branchOwned
  · ext q
    simp [s2Step24EarlyControlOutputArena,s2Step24EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step24EarlyControl_sigma : compileHmrSigmaDropLog s2Step24EarlyControlHistoryArena false 0 0 254 836 []=some s2Step24EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step24EarlyControl_sigmaOwned⟩
  · exact s2Step24EarlyControl_sigmaRelease
theorem s2Step24EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step24EarlyControlLog.zeroWork).map Prod.snd=some (s2Step24EarlyControlLog.zeroWork,s2Step24EarlyControlZeroPlan) := by
  rw [s2Step24EarlyControl_zero]
  rfl
theorem s2Step24EarlyControl_classProjection : (compileHmrSourceClassLog s2Step24EarlyControlZeroArena false 777 s2Step24EarlyControlZeroPlan.top 0 836 s2Step24EarlyControlLog.positiveWork s2Step24EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step24EarlyControlClassPlan.positiveWork,s2Step24EarlyControlClassPlan.equalityWork,s2Step24EarlyControlClassPlan.equality) := by
  rw [s2Step24EarlyControl_class]
  rfl
theorem s2Step24EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step24EarlyControlClassPlan.equalityArena s2Step24EarlyControlClassPlan.equality.top 787 789 791 s2Step24EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step24EarlyControl_flags]
  rfl
theorem s2Step24EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step24EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step24EarlyControl_fit]
  rfl
theorem s2Step24EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step24EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step24EarlyControl_history]
  rfl
theorem s2Step24EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step24EarlyControlHistoryArena false 0 0 254 836 []).map (fun _ => true)=some true := by
  rw [s2Step24EarlyControl_sigma]
  rfl
theorem s2Step24EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step24EarlyControlSigmaArena 781).map (fun _ => true)=some true := by
  rw [s2Step24EarlyControl_branch]
  rfl
private theorem s2Step24EarlyControl_entrySigmaOwned : ([836, 254] : List Wire).toFinset⊆s2Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step24EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).toFinset⊆s2Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EarlyControl_logged : s2Step24EarlyControlPlan.Logged s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 836 254 787 789 791 781 9 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step24EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step24EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step24EarlyControl_zero
  · exact s2Step24EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step24EarlyControl_flags
  · exact s2Step24EarlyControl_fit
  · exact s2Step24EarlyControl_history
  · exact s2Step24EarlyControl_sigma
  · exact s2Step24EarlyControl_branch
theorem s2Step24EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 836 254 787 789 791 781 9 s2Step24EarlyControlLog=some s2Step24EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step24EarlyControlPlan s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 836 254 787 789 791 781 9 s2Step24EarlyControl_logged
theorem s2Step24EarlyControl_checked : (compileHmrEarlyControlLog s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 836 254 787 789 791 781 9 s2Step24EarlyControlLog).map (fun P => P.outputArena.live.card)=some 833 := by
  rw [s2Step24EarlyControl_plan_checked]
  decide +kernel

def s2Step25EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 850)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (784 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (784 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step25EarlyControlLog : HmrEarlyControlLog := ⟨[840, 839, 781, 780, 783],[782],[841],[842, 844, 845, 846, 847, 849],[850]⟩
def s2Step25EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,840⟩,⟨⟨774,false⟩,839⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,783⟩]⟩
def s2Step25EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step25EarlyControlPositiveArena,[782],s2Step25EarlyControlEqualityArena,[841],⟨⟨779,false⟩,[⟨⟨782,false⟩,841⟩]⟩⟩
def s2Step25EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step25EarlyControlZeroArena,s2Step25EarlyControlZeroPlan,s2Step25EarlyControlClassPlan,s2Step25EarlyControlFlagArena,s2Step25EarlyControlFittedArena,s2Step25EarlyControlHistoryArena,s2Step25EarlyControlSigmaArena,s2Step25EarlyControlOutputArena,s2Step25EarlyControlLog⟩
private theorem s2Step25EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_zeroBorrow : s2Step25EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step25EarlyControlLog.zeroWork=some s2Step25EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step25EarlyControlZeroArena,s2Step25EarlyControlArena,s2Step25EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step25EarlyControl_zero : compileHmrEqualityLog s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step25EarlyControlLog.zeroWork=some (s2Step25EarlyControlZeroArena,s2Step25EarlyControlLog.zeroWork,s2Step25EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step25EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step25EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step25EarlyControl_positiveBorrow : s2Step25EarlyControlZeroArena.checkBorrow (1) s2Step25EarlyControlLog.positiveWork=some s2Step25EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step25EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step25EarlyControlPositiveArena,s2Step25EarlyControlZeroArena,s2Step25EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step25EarlyControl_classEqualityOwned : ([779, 782] : List Wire).toFinset⊆s2Step25EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlPositiveArena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_classEqualityBorrow : s2Step25EarlyControlPositiveArena.checkBorrow (([779, 782] : List Wire).length-1) s2Step25EarlyControlLog.classWork=some s2Step25EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step25EarlyControlPositiveArena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step25EarlyControlEqualityArena,s2Step25EarlyControlPositiveArena,s2Step25EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step25EarlyControl_classEquality : compileHmrEqualityLog s2Step25EarlyControlPositiveArena [779, 782] 0 s2Step25EarlyControlLog.classWork=some (s2Step25EarlyControlEqualityArena,s2Step25EarlyControlLog.classWork,s2Step25EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step25EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step25EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step25EarlyControl_classOwned : ([777, 783, 779] : List Wire).toFinset⊆s2Step25EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25EarlyControl_class : compileHmrSourceClassLog s2Step25EarlyControlZeroArena false 777 s2Step25EarlyControlZeroPlan.top 0 779 s2Step25EarlyControlLog.positiveWork s2Step25EarlyControlLog.classWork=some s2Step25EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step25EarlyControlClassPlan s2Step25EarlyControlZeroArena false 777 s2Step25EarlyControlZeroPlan.top 0 779
  constructor
  · decide +kernel
  · exact s2Step25EarlyControl_classOwned
  · exact s2Step25EarlyControl_positiveBorrow
  · exact s2Step25EarlyControl_classEquality
private theorem s2Step25EarlyControl_flagsOwned : ([841, 787, 789, 791] : List Wire).toFinset⊆s2Step25EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlEqualityArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_flagsBorrow : s2Step25EarlyControlEqualityArena.checkBorrow (6) s2Step25EarlyControlLog.flagWork=some s2Step25EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step25EarlyControlEqualityArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step25EarlyControlFlagArena,s2Step25EarlyControlEqualityArena,s2Step25EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step25EarlyControl_flags : compileHmrFlagsLog s2Step25EarlyControlClassPlan.equalityArena s2Step25EarlyControlClassPlan.equality.top 787 789 791 s2Step25EarlyControlLog.flagWork=some s2Step25EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step25EarlyControl_flagsOwned⟩
  · exact s2Step25EarlyControl_flagsBorrow
private theorem s2Step25EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).toFinset⊆s2Step25EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlFlagArena (fun q => (0≤q ∧ q<850)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_fitBorrow : s2Step25EarlyControlFlagArena.checkBorrow ((10-([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).length)) s2Step25EarlyControlLog.recordFresh=some s2Step25EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step25EarlyControlFlagArena (fun q => (0≤q ∧ q<850)) rfl
      decide +kernel
    · ext q
      simp [s2Step25EarlyControlFittedArena,s2Step25EarlyControlFlagArena,s2Step25EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step25EarlyControl_fit : compileHmrRecordGrowLog s2Step25EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25EarlyControlLog.recordFresh=some s2Step25EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step25EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step25EarlyControl_fitBorrow
private theorem s2Step25EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).toFinset⊆s2Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_historyBorrow : s2Step25EarlyControlArena.checkBorrow ((10-([795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).length)) s2Step25EarlyControlLog.recordFresh=some s2Step25EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
      decide +kernel
    · ext q
      simp [s2Step25EarlyControlHistoryArena,s2Step25EarlyControlArena,s2Step25EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step25EarlyControl_history : compileHmrRecordGrowLog s2Step25EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25EarlyControlLog.recordFresh=some s2Step25EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step25EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step25EarlyControl_historyBorrow
private theorem s2Step25EarlyControl_sigmaOwned : ([254, 779] : List Wire).toFinset⊆s2Step25EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_sigmaReleaseOwned : ([779] : List Wire).toFinset⊆s2Step25EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_sigmaRelease : s2Step25EarlyControlHistoryArena.release {779} (fun _ => false)=some s2Step25EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step25EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step25EarlyControlSigmaArena,s2Step25EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step25EarlyControl_branchOwned : ([785] : List Wire).toFinset⊆s2Step25EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step25EarlyControl_branch : compileHmrBranchRetirement s2Step25EarlyControlSigmaArena 785=some s2Step25EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step25EarlyControl_branchOwned
  · ext q
    simp [s2Step25EarlyControlOutputArena,s2Step25EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step25EarlyControl_sigma : compileHmrSigmaDropLog s2Step25EarlyControlHistoryArena false 0 0 254 779 []=some s2Step25EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step25EarlyControl_sigmaOwned⟩
  · exact s2Step25EarlyControl_sigmaRelease
theorem s2Step25EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step25EarlyControlLog.zeroWork).map Prod.snd=some (s2Step25EarlyControlLog.zeroWork,s2Step25EarlyControlZeroPlan) := by
  rw [s2Step25EarlyControl_zero]
  rfl
theorem s2Step25EarlyControl_classProjection : (compileHmrSourceClassLog s2Step25EarlyControlZeroArena false 777 s2Step25EarlyControlZeroPlan.top 0 779 s2Step25EarlyControlLog.positiveWork s2Step25EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step25EarlyControlClassPlan.positiveWork,s2Step25EarlyControlClassPlan.equalityWork,s2Step25EarlyControlClassPlan.equality) := by
  rw [s2Step25EarlyControl_class]
  rfl
theorem s2Step25EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step25EarlyControlClassPlan.equalityArena s2Step25EarlyControlClassPlan.equality.top 787 789 791 s2Step25EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step25EarlyControl_flags]
  rfl
theorem s2Step25EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step25EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step25EarlyControl_fit]
  rfl
theorem s2Step25EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step25EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step25EarlyControl_history]
  rfl
theorem s2Step25EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step25EarlyControlHistoryArena false 0 0 254 779 []).map (fun _ => true)=some true := by
  rw [s2Step25EarlyControl_sigma]
  rfl
theorem s2Step25EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step25EarlyControlSigmaArena 785).map (fun _ => true)=some true := by
  rw [s2Step25EarlyControl_branch]
  rfl
private theorem s2Step25EarlyControl_entrySigmaOwned : ([779, 254] : List Wire).toFinset⊆s2Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
private theorem s2Step25EarlyControl_entryRecordOwned : ([785, 795, 813, 818, 823, 828, 833, 838, 843, 848] : List Wire).toFinset⊆s2Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25EarlyControl_logged : s2Step25EarlyControlPlan.Logged s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 779 254 787 789 791 785 10 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step25EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step25EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step25EarlyControl_zero
  · exact s2Step25EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step25EarlyControl_flags
  · exact s2Step25EarlyControl_fit
  · exact s2Step25EarlyControl_history
  · exact s2Step25EarlyControl_sigma
  · exact s2Step25EarlyControl_branch
theorem s2Step25EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 779 254 787 789 791 785 10 s2Step25EarlyControlLog=some s2Step25EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step25EarlyControlPlan s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 779 254 787 789 791 785 10 s2Step25EarlyControl_logged
theorem s2Step25EarlyControl_checked : (compileHmrEarlyControlLog s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 779 254 787 789 791 785 10 s2Step25EarlyControlLog).map (fun P => P.outputArena.live.card)=some 836 := by
  rw [s2Step25EarlyControl_plan_checked]
  decide +kernel

def s2Step26EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 783) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 852)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 852)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 783) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 841) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 783) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 840) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 783) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step26EarlyControlLog : HmrEarlyControlLog := ⟨[779, 783, 780, 785, 781],[841],[842],[844, 845, 846, 847, 849, 851],[]⟩
def s2Step26EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,780⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step26EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step26EarlyControlPositiveArena,[841],s2Step26EarlyControlEqualityArena,[842],⟨⟨840,false⟩,[⟨⟨841,false⟩,842⟩]⟩⟩
def s2Step26EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step26EarlyControlZeroArena,s2Step26EarlyControlZeroPlan,s2Step26EarlyControlClassPlan,s2Step26EarlyControlFlagArena,s2Step26EarlyControlFittedArena,s2Step26EarlyControlHistoryArena,s2Step26EarlyControlSigmaArena,s2Step26EarlyControlOutputArena,s2Step26EarlyControlLog⟩
private theorem s2Step26EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_zeroBorrow : s2Step26EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step26EarlyControlLog.zeroWork=some s2Step26EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step26EarlyControlZeroArena,s2Step26EarlyControlArena,s2Step26EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step26EarlyControl_zero : compileHmrEqualityLog s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step26EarlyControlLog.zeroWork=some (s2Step26EarlyControlZeroArena,s2Step26EarlyControlLog.zeroWork,s2Step26EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step26EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step26EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step26EarlyControl_positiveBorrow : s2Step26EarlyControlZeroArena.checkBorrow (1) s2Step26EarlyControlLog.positiveWork=some s2Step26EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step26EarlyControlZeroArena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step26EarlyControlPositiveArena,s2Step26EarlyControlZeroArena,s2Step26EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step26EarlyControl_classEqualityOwned : ([840, 841] : List Wire).toFinset⊆s2Step26EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlPositiveArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_classEqualityBorrow : s2Step26EarlyControlPositiveArena.checkBorrow (([840, 841] : List Wire).length-1) s2Step26EarlyControlLog.classWork=some s2Step26EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step26EarlyControlPositiveArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step26EarlyControlEqualityArena,s2Step26EarlyControlPositiveArena,s2Step26EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step26EarlyControl_classEquality : compileHmrEqualityLog s2Step26EarlyControlPositiveArena [840, 841] 0 s2Step26EarlyControlLog.classWork=some (s2Step26EarlyControlEqualityArena,s2Step26EarlyControlLog.classWork,s2Step26EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step26EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step26EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step26EarlyControl_classOwned : ([777, 781, 840] : List Wire).toFinset⊆s2Step26EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlZeroArena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EarlyControl_class : compileHmrSourceClassLog s2Step26EarlyControlZeroArena false 777 s2Step26EarlyControlZeroPlan.top 0 840 s2Step26EarlyControlLog.positiveWork s2Step26EarlyControlLog.classWork=some s2Step26EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step26EarlyControlClassPlan s2Step26EarlyControlZeroArena false 777 s2Step26EarlyControlZeroPlan.top 0 840
  constructor
  · decide +kernel
  · exact s2Step26EarlyControl_classOwned
  · exact s2Step26EarlyControl_positiveBorrow
  · exact s2Step26EarlyControl_classEquality
private theorem s2Step26EarlyControl_flagsOwned : ([842, 787, 789, 791] : List Wire).toFinset⊆s2Step26EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_flagsBorrow : s2Step26EarlyControlEqualityArena.checkBorrow (6) s2Step26EarlyControlLog.flagWork=some s2Step26EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step26EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step26EarlyControlFlagArena,s2Step26EarlyControlEqualityArena,s2Step26EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step26EarlyControl_flags : compileHmrFlagsLog s2Step26EarlyControlClassPlan.equalityArena s2Step26EarlyControlClassPlan.equality.top 787 789 791 s2Step26EarlyControlLog.flagWork=some s2Step26EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step26EarlyControl_flagsOwned⟩
  · exact s2Step26EarlyControl_flagsBorrow
private theorem s2Step26EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).toFinset⊆s2Step26EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlFlagArena (fun q => (0≤q ∧ q<852)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_fitBorrow : s2Step26EarlyControlFlagArena.checkBorrow ((10-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).length)) s2Step26EarlyControlLog.recordFresh=some s2Step26EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step26EarlyControlFlagArena (fun q => (0≤q ∧ q<852)) rfl
      decide +kernel
    · ext q
      simp [s2Step26EarlyControlFittedArena,s2Step26EarlyControlFlagArena,s2Step26EarlyControlLog,arenaWires]
theorem s2Step26EarlyControl_fit : compileHmrRecordGrowLog s2Step26EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26EarlyControlLog.recordFresh=some s2Step26EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step26EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step26EarlyControl_fitBorrow
private theorem s2Step26EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).toFinset⊆s2Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_historyBorrow : s2Step26EarlyControlArena.checkBorrow ((10-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).length)) s2Step26EarlyControlLog.recordFresh=some s2Step26EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step26EarlyControlHistoryArena,s2Step26EarlyControlArena,s2Step26EarlyControlLog,arenaWires]
theorem s2Step26EarlyControl_history : compileHmrRecordGrowLog s2Step26EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26EarlyControlLog.recordFresh=some s2Step26EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step26EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step26EarlyControl_historyBorrow
private theorem s2Step26EarlyControl_sigmaOwned : ([254, 840] : List Wire).toFinset⊆s2Step26EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_sigmaReleaseOwned : ([840] : List Wire).toFinset⊆s2Step26EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_sigmaRelease : s2Step26EarlyControlHistoryArena.release {840} (fun _ => false)=some s2Step26EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step26EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step26EarlyControlSigmaArena,s2Step26EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step26EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step26EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EarlyControl_branch : compileHmrBranchRetirement s2Step26EarlyControlSigmaArena 839=some s2Step26EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step26EarlyControl_branchOwned
  · ext q
    simp [s2Step26EarlyControlOutputArena,s2Step26EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step26EarlyControl_sigma : compileHmrSigmaDropLog s2Step26EarlyControlHistoryArena false 0 0 254 840 []=some s2Step26EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step26EarlyControl_sigmaOwned⟩
  · exact s2Step26EarlyControl_sigmaRelease
theorem s2Step26EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step26EarlyControlLog.zeroWork).map Prod.snd=some (s2Step26EarlyControlLog.zeroWork,s2Step26EarlyControlZeroPlan) := by
  rw [s2Step26EarlyControl_zero]
  rfl
theorem s2Step26EarlyControl_classProjection : (compileHmrSourceClassLog s2Step26EarlyControlZeroArena false 777 s2Step26EarlyControlZeroPlan.top 0 840 s2Step26EarlyControlLog.positiveWork s2Step26EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step26EarlyControlClassPlan.positiveWork,s2Step26EarlyControlClassPlan.equalityWork,s2Step26EarlyControlClassPlan.equality) := by
  rw [s2Step26EarlyControl_class]
  rfl
theorem s2Step26EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step26EarlyControlClassPlan.equalityArena s2Step26EarlyControlClassPlan.equality.top 787 789 791 s2Step26EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step26EarlyControl_flags]
  rfl
theorem s2Step26EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step26EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step26EarlyControl_fit]
  rfl
theorem s2Step26EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step26EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step26EarlyControl_history]
  rfl
theorem s2Step26EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step26EarlyControlHistoryArena false 0 0 254 840 []).map (fun _ => true)=some true := by
  rw [s2Step26EarlyControl_sigma]
  rfl
theorem s2Step26EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step26EarlyControlSigmaArena 839).map (fun _ => true)=some true := by
  rw [s2Step26EarlyControl_branch]
  rfl
private theorem s2Step26EarlyControl_entrySigmaOwned : ([840, 254] : List Wire).toFinset⊆s2Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step26EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).toFinset⊆s2Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EarlyControl_logged : s2Step26EarlyControlPlan.Logged s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 840 254 787 789 791 839 10 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step26EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step26EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step26EarlyControl_zero
  · exact s2Step26EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step26EarlyControl_flags
  · exact s2Step26EarlyControl_fit
  · exact s2Step26EarlyControl_history
  · exact s2Step26EarlyControl_sigma
  · exact s2Step26EarlyControl_branch
theorem s2Step26EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 840 254 787 789 791 839 10 s2Step26EarlyControlLog=some s2Step26EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step26EarlyControlPlan s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 840 254 787 789 791 839 10 s2Step26EarlyControl_logged
theorem s2Step26EarlyControl_checked : (compileHmrEarlyControlLog s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 840 254 787 789 791 839 10 s2Step26EarlyControlLog).map (fun P => P.outputArena.live.card)=some 837 := by
  rw [s2Step26EarlyControl_plan_checked]
  decide +kernel

def s2Step27EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (780 ≤ q ∧ q < 781) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 852)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (780 ≤ q ∧ q < 781) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (780 ≤ q ∧ q < 781) ∨ (782 ≤ q ∧ q < 783) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (782 ≤ q ∧ q < 783) ∨ (784 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step27EarlyControlLog : HmrEarlyControlLog := ⟨[778, 787, 779, 841, 781],[839],[785],[844, 845, 846, 847, 849, 851],[852]⟩
def s2Step27EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,779⟩,⟨⟨776,false⟩,841⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step27EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step27EarlyControlPositiveArena,[839],s2Step27EarlyControlEqualityArena,[785],⟨⟨783,false⟩,[⟨⟨839,false⟩,785⟩]⟩⟩
def s2Step27EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step27EarlyControlZeroArena,s2Step27EarlyControlZeroPlan,s2Step27EarlyControlClassPlan,s2Step27EarlyControlFlagArena,s2Step27EarlyControlFittedArena,s2Step27EarlyControlHistoryArena,s2Step27EarlyControlSigmaArena,s2Step27EarlyControlOutputArena,s2Step27EarlyControlLog⟩
private theorem s2Step27EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_zeroBorrow : s2Step27EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step27EarlyControlLog.zeroWork=some s2Step27EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step27EarlyControlZeroArena,s2Step27EarlyControlArena,s2Step27EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step27EarlyControl_zero : compileHmrEqualityLog s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step27EarlyControlLog.zeroWork=some (s2Step27EarlyControlZeroArena,s2Step27EarlyControlLog.zeroWork,s2Step27EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step27EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step27EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step27EarlyControl_positiveBorrow : s2Step27EarlyControlZeroArena.checkBorrow (1) s2Step27EarlyControlLog.positiveWork=some s2Step27EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step27EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step27EarlyControlPositiveArena,s2Step27EarlyControlZeroArena,s2Step27EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step27EarlyControl_classEqualityOwned : ([783, 839] : List Wire).toFinset⊆s2Step27EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_classEqualityBorrow : s2Step27EarlyControlPositiveArena.checkBorrow (([783, 839] : List Wire).length-1) s2Step27EarlyControlLog.classWork=some s2Step27EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step27EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step27EarlyControlEqualityArena,s2Step27EarlyControlPositiveArena,s2Step27EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step27EarlyControl_classEquality : compileHmrEqualityLog s2Step27EarlyControlPositiveArena [783, 839] 0 s2Step27EarlyControlLog.classWork=some (s2Step27EarlyControlEqualityArena,s2Step27EarlyControlLog.classWork,s2Step27EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step27EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step27EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step27EarlyControl_classOwned : ([777, 781, 783] : List Wire).toFinset⊆s2Step27EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27EarlyControl_class : compileHmrSourceClassLog s2Step27EarlyControlZeroArena false 777 s2Step27EarlyControlZeroPlan.top 0 783 s2Step27EarlyControlLog.positiveWork s2Step27EarlyControlLog.classWork=some s2Step27EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step27EarlyControlClassPlan s2Step27EarlyControlZeroArena false 777 s2Step27EarlyControlZeroPlan.top 0 783
  constructor
  · decide +kernel
  · exact s2Step27EarlyControl_classOwned
  · exact s2Step27EarlyControl_positiveBorrow
  · exact s2Step27EarlyControl_classEquality
private theorem s2Step27EarlyControl_flagsOwned : ([785, 253, 789, 791] : List Wire).toFinset⊆s2Step27EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_flagsBorrow : s2Step27EarlyControlEqualityArena.checkBorrow (6) s2Step27EarlyControlLog.flagWork=some s2Step27EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step27EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step27EarlyControlFlagArena,s2Step27EarlyControlEqualityArena,s2Step27EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step27EarlyControl_flags : compileHmrFlagsLog s2Step27EarlyControlClassPlan.equalityArena s2Step27EarlyControlClassPlan.equality.top 253 789 791 s2Step27EarlyControlLog.flagWork=some s2Step27EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step27EarlyControl_flagsOwned⟩
  · exact s2Step27EarlyControl_flagsBorrow
private theorem s2Step27EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).toFinset⊆s2Step27EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlFlagArena (fun q => (0≤q ∧ q<852)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_fitBorrow : s2Step27EarlyControlFlagArena.checkBorrow ((11-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).length)) s2Step27EarlyControlLog.recordFresh=some s2Step27EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step27EarlyControlFlagArena (fun q => (0≤q ∧ q<852)) rfl
      decide +kernel
    · ext q
      simp [s2Step27EarlyControlFittedArena,s2Step27EarlyControlFlagArena,s2Step27EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step27EarlyControl_fit : compileHmrRecordGrowLog s2Step27EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27EarlyControlLog.recordFresh=some s2Step27EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step27EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step27EarlyControl_fitBorrow
private theorem s2Step27EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).toFinset⊆s2Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_historyBorrow : s2Step27EarlyControlArena.checkBorrow ((11-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).length)) s2Step27EarlyControlLog.recordFresh=some s2Step27EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
      decide +kernel
    · ext q
      simp [s2Step27EarlyControlHistoryArena,s2Step27EarlyControlArena,s2Step27EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step27EarlyControl_history : compileHmrRecordGrowLog s2Step27EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27EarlyControlLog.recordFresh=some s2Step27EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step27EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step27EarlyControl_historyBorrow
private theorem s2Step27EarlyControl_sigmaOwned : ([254, 783] : List Wire).toFinset⊆s2Step27EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_sigmaReleaseOwned : ([783] : List Wire).toFinset⊆s2Step27EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_sigmaRelease : s2Step27EarlyControlHistoryArena.release {783} (fun _ => false)=some s2Step27EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step27EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step27EarlyControlSigmaArena,s2Step27EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step27EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s2Step27EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step27EarlyControl_branch : compileHmrBranchRetirement s2Step27EarlyControlSigmaArena 780=some s2Step27EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step27EarlyControl_branchOwned
  · ext q
    simp [s2Step27EarlyControlOutputArena,s2Step27EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step27EarlyControl_sigma : compileHmrSigmaDropLog s2Step27EarlyControlHistoryArena false 0 0 254 783 []=some s2Step27EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step27EarlyControl_sigmaOwned⟩
  · exact s2Step27EarlyControl_sigmaRelease
theorem s2Step27EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step27EarlyControlLog.zeroWork).map Prod.snd=some (s2Step27EarlyControlLog.zeroWork,s2Step27EarlyControlZeroPlan) := by
  rw [s2Step27EarlyControl_zero]
  rfl
theorem s2Step27EarlyControl_classProjection : (compileHmrSourceClassLog s2Step27EarlyControlZeroArena false 777 s2Step27EarlyControlZeroPlan.top 0 783 s2Step27EarlyControlLog.positiveWork s2Step27EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step27EarlyControlClassPlan.positiveWork,s2Step27EarlyControlClassPlan.equalityWork,s2Step27EarlyControlClassPlan.equality) := by
  rw [s2Step27EarlyControl_class]
  rfl
theorem s2Step27EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step27EarlyControlClassPlan.equalityArena s2Step27EarlyControlClassPlan.equality.top 253 789 791 s2Step27EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step27EarlyControl_flags]
  rfl
theorem s2Step27EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step27EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step27EarlyControl_fit]
  rfl
theorem s2Step27EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step27EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step27EarlyControl_history]
  rfl
theorem s2Step27EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step27EarlyControlHistoryArena false 0 0 254 783 []).map (fun _ => true)=some true := by
  rw [s2Step27EarlyControl_sigma]
  rfl
theorem s2Step27EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step27EarlyControlSigmaArena 780).map (fun _ => true)=some true := by
  rw [s2Step27EarlyControl_branch]
  rfl
private theorem s2Step27EarlyControl_entrySigmaOwned : ([783, 254] : List Wire).toFinset⊆s2Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
private theorem s2Step27EarlyControl_entryRecordOwned : ([780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850] : List Wire).toFinset⊆s2Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27EarlyControl_logged : s2Step27EarlyControlPlan.Logged s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 783 254 253 789 791 780 11 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step27EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step27EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step27EarlyControl_zero
  · exact s2Step27EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step27EarlyControl_flags
  · exact s2Step27EarlyControl_fit
  · exact s2Step27EarlyControl_history
  · exact s2Step27EarlyControl_sigma
  · exact s2Step27EarlyControl_branch
theorem s2Step27EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 783 254 253 789 791 780 11 s2Step27EarlyControlLog=some s2Step27EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step27EarlyControlPlan s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 783 254 253 789 791 780 11 s2Step27EarlyControl_logged
theorem s2Step27EarlyControl_checked : (compileHmrEarlyControlLog s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 783 254 253 789 791 780 11 s2Step27EarlyControlLog).map (fun P => P.outputArena.live.card)=some 838 := by
  rw [s2Step27EarlyControl_plan_checked]
  decide +kernel

def s2Step28EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 841) ∨ (842 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step28EarlyControlLog : HmrEarlyControlLog := ⟨[778, 839, 785, 781, 780],[841],[844],[845, 846, 847, 849, 851, 853],[]⟩
def s2Step28EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,839⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,780⟩]⟩
def s2Step28EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step28EarlyControlPositiveArena,[841],s2Step28EarlyControlEqualityArena,[844],⟨⟨787,false⟩,[⟨⟨841,false⟩,844⟩]⟩⟩
def s2Step28EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step28EarlyControlZeroArena,s2Step28EarlyControlZeroPlan,s2Step28EarlyControlClassPlan,s2Step28EarlyControlFlagArena,s2Step28EarlyControlFittedArena,s2Step28EarlyControlHistoryArena,s2Step28EarlyControlSigmaArena,s2Step28EarlyControlOutputArena,s2Step28EarlyControlLog⟩
private theorem s2Step28EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_zeroBorrow : s2Step28EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step28EarlyControlLog.zeroWork=some s2Step28EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step28EarlyControlZeroArena,s2Step28EarlyControlArena,s2Step28EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step28EarlyControl_zero : compileHmrEqualityLog s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step28EarlyControlLog.zeroWork=some (s2Step28EarlyControlZeroArena,s2Step28EarlyControlLog.zeroWork,s2Step28EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step28EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step28EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step28EarlyControl_positiveBorrow : s2Step28EarlyControlZeroArena.checkBorrow (1) s2Step28EarlyControlLog.positiveWork=some s2Step28EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step28EarlyControlZeroArena (fun q => (0≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step28EarlyControlPositiveArena,s2Step28EarlyControlZeroArena,s2Step28EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step28EarlyControl_classEqualityOwned : ([787, 841] : List Wire).toFinset⊆s2Step28EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_classEqualityBorrow : s2Step28EarlyControlPositiveArena.checkBorrow (([787, 841] : List Wire).length-1) s2Step28EarlyControlLog.classWork=some s2Step28EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step28EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step28EarlyControlEqualityArena,s2Step28EarlyControlPositiveArena,s2Step28EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step28EarlyControl_classEquality : compileHmrEqualityLog s2Step28EarlyControlPositiveArena [787, 841] 0 s2Step28EarlyControlLog.classWork=some (s2Step28EarlyControlEqualityArena,s2Step28EarlyControlLog.classWork,s2Step28EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step28EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step28EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step28EarlyControl_classOwned : ([777, 780, 787] : List Wire).toFinset⊆s2Step28EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlZeroArena (fun q => (0≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EarlyControl_class : compileHmrSourceClassLog s2Step28EarlyControlZeroArena false 777 s2Step28EarlyControlZeroPlan.top 0 787 s2Step28EarlyControlLog.positiveWork s2Step28EarlyControlLog.classWork=some s2Step28EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step28EarlyControlClassPlan s2Step28EarlyControlZeroArena false 777 s2Step28EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step28EarlyControl_classOwned
  · exact s2Step28EarlyControl_positiveBorrow
  · exact s2Step28EarlyControl_classEquality
private theorem s2Step28EarlyControl_flagsOwned : ([844, 253, 789, 791] : List Wire).toFinset⊆s2Step28EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_flagsBorrow : s2Step28EarlyControlEqualityArena.checkBorrow (6) s2Step28EarlyControlLog.flagWork=some s2Step28EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step28EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step28EarlyControlFlagArena,s2Step28EarlyControlEqualityArena,s2Step28EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step28EarlyControl_flags : compileHmrFlagsLog s2Step28EarlyControlClassPlan.equalityArena s2Step28EarlyControlClassPlan.equality.top 253 789 791 s2Step28EarlyControlLog.flagWork=some s2Step28EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step28EarlyControl_flagsOwned⟩
  · exact s2Step28EarlyControl_flagsBorrow
private theorem s2Step28EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).toFinset⊆s2Step28EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlFlagArena (fun q => (0≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_fitBorrow : s2Step28EarlyControlFlagArena.checkBorrow ((11-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).length)) s2Step28EarlyControlLog.recordFresh=some s2Step28EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step28EarlyControlFlagArena (fun q => (0≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step28EarlyControlFittedArena,s2Step28EarlyControlFlagArena,s2Step28EarlyControlLog,arenaWires]
theorem s2Step28EarlyControl_fit : compileHmrRecordGrowLog s2Step28EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28EarlyControlLog.recordFresh=some s2Step28EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step28EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step28EarlyControl_fitBorrow
private theorem s2Step28EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).toFinset⊆s2Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_historyBorrow : s2Step28EarlyControlArena.checkBorrow ((11-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).length)) s2Step28EarlyControlLog.recordFresh=some s2Step28EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step28EarlyControlHistoryArena,s2Step28EarlyControlArena,s2Step28EarlyControlLog,arenaWires]
theorem s2Step28EarlyControl_history : compileHmrRecordGrowLog s2Step28EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28EarlyControlLog.recordFresh=some s2Step28EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step28EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step28EarlyControl_historyBorrow
private theorem s2Step28EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step28EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step28EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_sigmaRelease : s2Step28EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step28EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step28EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step28EarlyControlSigmaArena,s2Step28EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step28EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step28EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EarlyControl_branch : compileHmrBranchRetirement s2Step28EarlyControlSigmaArena 779=some s2Step28EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step28EarlyControl_branchOwned
  · ext q
    simp [s2Step28EarlyControlOutputArena,s2Step28EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step28EarlyControl_sigma : compileHmrSigmaDropLog s2Step28EarlyControlHistoryArena false 0 0 254 787 []=some s2Step28EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step28EarlyControl_sigmaOwned⟩
  · exact s2Step28EarlyControl_sigmaRelease
theorem s2Step28EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step28EarlyControlLog.zeroWork).map Prod.snd=some (s2Step28EarlyControlLog.zeroWork,s2Step28EarlyControlZeroPlan) := by
  rw [s2Step28EarlyControl_zero]
  rfl
theorem s2Step28EarlyControl_classProjection : (compileHmrSourceClassLog s2Step28EarlyControlZeroArena false 777 s2Step28EarlyControlZeroPlan.top 0 787 s2Step28EarlyControlLog.positiveWork s2Step28EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step28EarlyControlClassPlan.positiveWork,s2Step28EarlyControlClassPlan.equalityWork,s2Step28EarlyControlClassPlan.equality) := by
  rw [s2Step28EarlyControl_class]
  rfl
theorem s2Step28EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step28EarlyControlClassPlan.equalityArena s2Step28EarlyControlClassPlan.equality.top 253 789 791 s2Step28EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step28EarlyControl_flags]
  rfl
theorem s2Step28EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step28EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step28EarlyControl_fit]
  rfl
theorem s2Step28EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step28EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step28EarlyControl_history]
  rfl
theorem s2Step28EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step28EarlyControlHistoryArena false 0 0 254 787 []).map (fun _ => true)=some true := by
  rw [s2Step28EarlyControl_sigma]
  rfl
theorem s2Step28EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step28EarlyControlSigmaArena 779).map (fun _ => true)=some true := by
  rw [s2Step28EarlyControl_branch]
  rfl
private theorem s2Step28EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step28EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).toFinset⊆s2Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EarlyControl_logged : s2Step28EarlyControlPlan.Logged s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 787 254 253 789 791 779 11 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step28EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step28EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step28EarlyControl_zero
  · exact s2Step28EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step28EarlyControl_flags
  · exact s2Step28EarlyControl_fit
  · exact s2Step28EarlyControl_history
  · exact s2Step28EarlyControl_sigma
  · exact s2Step28EarlyControl_branch
theorem s2Step28EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 787 254 253 789 791 779 11 s2Step28EarlyControlLog=some s2Step28EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step28EarlyControlPlan s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 787 254 253 789 791 779 11 s2Step28EarlyControl_logged
theorem s2Step28EarlyControl_checked : (compileHmrEarlyControlLog s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 787 254 253 789 791 779 11 s2Step28EarlyControlLog).map (fun P => P.outputArena.live.card)=some 839 := by
  rw [s2Step28EarlyControl_plan_checked]
  decide +kernel

def s2Step29EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (780 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 853)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step29EarlyControlLog : HmrEarlyControlLog := ⟨[786, 789, 787, 780, 781],[779],[785],[844, 845, 846, 847, 849, 851],[853]⟩
def s2Step29EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step29EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step29EarlyControlPositiveArena,[779],s2Step29EarlyControlEqualityArena,[785],⟨⟨778,false⟩,[⟨⟨779,false⟩,785⟩]⟩⟩
def s2Step29EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step29EarlyControlZeroArena,s2Step29EarlyControlZeroPlan,s2Step29EarlyControlClassPlan,s2Step29EarlyControlFlagArena,s2Step29EarlyControlFittedArena,s2Step29EarlyControlHistoryArena,s2Step29EarlyControlSigmaArena,s2Step29EarlyControlOutputArena,s2Step29EarlyControlLog⟩
private theorem s2Step29EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_zeroBorrow : s2Step29EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step29EarlyControlLog.zeroWork=some s2Step29EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step29EarlyControlZeroArena,s2Step29EarlyControlArena,s2Step29EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step29EarlyControl_zero : compileHmrEqualityLog s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step29EarlyControlLog.zeroWork=some (s2Step29EarlyControlZeroArena,s2Step29EarlyControlLog.zeroWork,s2Step29EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step29EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step29EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step29EarlyControl_positiveBorrow : s2Step29EarlyControlZeroArena.checkBorrow (1) s2Step29EarlyControlLog.positiveWork=some s2Step29EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step29EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step29EarlyControlPositiveArena,s2Step29EarlyControlZeroArena,s2Step29EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step29EarlyControl_classEqualityOwned : ([778, 779] : List Wire).toFinset⊆s2Step29EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_classEqualityBorrow : s2Step29EarlyControlPositiveArena.checkBorrow (([778, 779] : List Wire).length-1) s2Step29EarlyControlLog.classWork=some s2Step29EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step29EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step29EarlyControlEqualityArena,s2Step29EarlyControlPositiveArena,s2Step29EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step29EarlyControl_classEquality : compileHmrEqualityLog s2Step29EarlyControlPositiveArena [778, 779] 0 s2Step29EarlyControlLog.classWork=some (s2Step29EarlyControlEqualityArena,s2Step29EarlyControlLog.classWork,s2Step29EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step29EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step29EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step29EarlyControl_classOwned : ([777, 781, 778] : List Wire).toFinset⊆s2Step29EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlZeroArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29EarlyControl_class : compileHmrSourceClassLog s2Step29EarlyControlZeroArena false 777 s2Step29EarlyControlZeroPlan.top 0 778 s2Step29EarlyControlLog.positiveWork s2Step29EarlyControlLog.classWork=some s2Step29EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step29EarlyControlClassPlan s2Step29EarlyControlZeroArena false 777 s2Step29EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step29EarlyControl_classOwned
  · exact s2Step29EarlyControl_positiveBorrow
  · exact s2Step29EarlyControl_classEquality
private theorem s2Step29EarlyControl_flagsOwned : ([785, 253, 252, 791] : List Wire).toFinset⊆s2Step29EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_flagsBorrow : s2Step29EarlyControlEqualityArena.checkBorrow (6) s2Step29EarlyControlLog.flagWork=some s2Step29EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step29EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step29EarlyControlFlagArena,s2Step29EarlyControlEqualityArena,s2Step29EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step29EarlyControl_flags : compileHmrFlagsLog s2Step29EarlyControlClassPlan.equalityArena s2Step29EarlyControlClassPlan.equality.top 253 252 791 s2Step29EarlyControlLog.flagWork=some s2Step29EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step29EarlyControl_flagsOwned⟩
  · exact s2Step29EarlyControl_flagsBorrow
private theorem s2Step29EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).toFinset⊆s2Step29EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlFlagArena (fun q => (0≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_fitBorrow : s2Step29EarlyControlFlagArena.checkBorrow ((12-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).length)) s2Step29EarlyControlLog.recordFresh=some s2Step29EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step29EarlyControlFlagArena (fun q => (0≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step29EarlyControlFittedArena,s2Step29EarlyControlFlagArena,s2Step29EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step29EarlyControl_fit : compileHmrRecordGrowLog s2Step29EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29EarlyControlLog.recordFresh=some s2Step29EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step29EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step29EarlyControl_fitBorrow
private theorem s2Step29EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).toFinset⊆s2Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_historyBorrow : s2Step29EarlyControlArena.checkBorrow ((12-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).length)) s2Step29EarlyControlLog.recordFresh=some s2Step29EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
      decide +kernel
    · ext q
      simp [s2Step29EarlyControlHistoryArena,s2Step29EarlyControlArena,s2Step29EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step29EarlyControl_history : compileHmrRecordGrowLog s2Step29EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29EarlyControlLog.recordFresh=some s2Step29EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step29EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step29EarlyControl_historyBorrow
private theorem s2Step29EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step29EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step29EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_sigmaRelease : s2Step29EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step29EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step29EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step29EarlyControlSigmaArena,s2Step29EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step29EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step29EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step29EarlyControl_branch : compileHmrBranchRetirement s2Step29EarlyControlSigmaArena 839=some s2Step29EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step29EarlyControl_branchOwned
  · ext q
    simp [s2Step29EarlyControlOutputArena,s2Step29EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step29EarlyControl_sigma : compileHmrSigmaDropLog s2Step29EarlyControlHistoryArena false 0 0 254 778 []=some s2Step29EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step29EarlyControl_sigmaOwned⟩
  · exact s2Step29EarlyControl_sigmaRelease
theorem s2Step29EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step29EarlyControlLog.zeroWork).map Prod.snd=some (s2Step29EarlyControlLog.zeroWork,s2Step29EarlyControlZeroPlan) := by
  rw [s2Step29EarlyControl_zero]
  rfl
theorem s2Step29EarlyControl_classProjection : (compileHmrSourceClassLog s2Step29EarlyControlZeroArena false 777 s2Step29EarlyControlZeroPlan.top 0 778 s2Step29EarlyControlLog.positiveWork s2Step29EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step29EarlyControlClassPlan.positiveWork,s2Step29EarlyControlClassPlan.equalityWork,s2Step29EarlyControlClassPlan.equality) := by
  rw [s2Step29EarlyControl_class]
  rfl
theorem s2Step29EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step29EarlyControlClassPlan.equalityArena s2Step29EarlyControlClassPlan.equality.top 253 252 791 s2Step29EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step29EarlyControl_flags]
  rfl
theorem s2Step29EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step29EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step29EarlyControl_fit]
  rfl
theorem s2Step29EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step29EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step29EarlyControl_history]
  rfl
theorem s2Step29EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step29EarlyControlHistoryArena false 0 0 254 778 []).map (fun _ => true)=some true := by
  rw [s2Step29EarlyControl_sigma]
  rfl
theorem s2Step29EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step29EarlyControlSigmaArena 839).map (fun _ => true)=some true := by
  rw [s2Step29EarlyControl_branch]
  rfl
private theorem s2Step29EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
private theorem s2Step29EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] : List Wire).toFinset⊆s2Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29EarlyControl_logged : s2Step29EarlyControlPlan.Logged s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 778 254 253 252 791 839 12 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step29EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step29EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step29EarlyControl_zero
  · exact s2Step29EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step29EarlyControl_flags
  · exact s2Step29EarlyControl_fit
  · exact s2Step29EarlyControl_history
  · exact s2Step29EarlyControl_sigma
  · exact s2Step29EarlyControl_branch
theorem s2Step29EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 778 254 253 252 791 839 12 s2Step29EarlyControlLog=some s2Step29EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step29EarlyControlPlan s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 778 254 253 252 791 839 12 s2Step29EarlyControl_logged
theorem s2Step29EarlyControl_checked : (compileHmrEarlyControlLog s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 778 254 253 252 791 839 12 s2Step29EarlyControlLog).map (fun P => P.outputArena.live.card)=some 839 := by
  rw [s2Step29EarlyControl_plan_checked]
  decide +kernel

def s2Step30EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (787 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (787 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (787 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step30EarlyControlLog : HmrEarlyControlLog := ⟨[786, 779, 785, 781, 839],[780],[844],[845, 846, 847, 849, 851, 854],[]⟩
def s2Step30EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,779⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,839⟩]⟩
def s2Step30EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step30EarlyControlPositiveArena,[780],s2Step30EarlyControlEqualityArena,[844],⟨⟨789,false⟩,[⟨⟨780,false⟩,844⟩]⟩⟩
def s2Step30EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step30EarlyControlZeroArena,s2Step30EarlyControlZeroPlan,s2Step30EarlyControlClassPlan,s2Step30EarlyControlFlagArena,s2Step30EarlyControlFittedArena,s2Step30EarlyControlHistoryArena,s2Step30EarlyControlSigmaArena,s2Step30EarlyControlOutputArena,s2Step30EarlyControlLog⟩
private theorem s2Step30EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_zeroBorrow : s2Step30EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step30EarlyControlLog.zeroWork=some s2Step30EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step30EarlyControlZeroArena,s2Step30EarlyControlArena,s2Step30EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step30EarlyControl_zero : compileHmrEqualityLog s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step30EarlyControlLog.zeroWork=some (s2Step30EarlyControlZeroArena,s2Step30EarlyControlLog.zeroWork,s2Step30EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step30EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step30EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step30EarlyControl_positiveBorrow : s2Step30EarlyControlZeroArena.checkBorrow (1) s2Step30EarlyControlLog.positiveWork=some s2Step30EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step30EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step30EarlyControlPositiveArena,s2Step30EarlyControlZeroArena,s2Step30EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step30EarlyControl_classEqualityOwned : ([789, 780] : List Wire).toFinset⊆s2Step30EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_classEqualityBorrow : s2Step30EarlyControlPositiveArena.checkBorrow (([789, 780] : List Wire).length-1) s2Step30EarlyControlLog.classWork=some s2Step30EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step30EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step30EarlyControlEqualityArena,s2Step30EarlyControlPositiveArena,s2Step30EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step30EarlyControl_classEquality : compileHmrEqualityLog s2Step30EarlyControlPositiveArena [789, 780] 0 s2Step30EarlyControlLog.classWork=some (s2Step30EarlyControlEqualityArena,s2Step30EarlyControlLog.classWork,s2Step30EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step30EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step30EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step30EarlyControl_classOwned : ([777, 839, 789] : List Wire).toFinset⊆s2Step30EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EarlyControl_class : compileHmrSourceClassLog s2Step30EarlyControlZeroArena false 777 s2Step30EarlyControlZeroPlan.top 0 789 s2Step30EarlyControlLog.positiveWork s2Step30EarlyControlLog.classWork=some s2Step30EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step30EarlyControlClassPlan s2Step30EarlyControlZeroArena false 777 s2Step30EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s2Step30EarlyControl_classOwned
  · exact s2Step30EarlyControl_positiveBorrow
  · exact s2Step30EarlyControl_classEquality
private theorem s2Step30EarlyControl_flagsOwned : ([844, 253, 252, 791] : List Wire).toFinset⊆s2Step30EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_flagsBorrow : s2Step30EarlyControlEqualityArena.checkBorrow (6) s2Step30EarlyControlLog.flagWork=some s2Step30EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step30EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step30EarlyControlFlagArena,s2Step30EarlyControlEqualityArena,s2Step30EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step30EarlyControl_flags : compileHmrFlagsLog s2Step30EarlyControlClassPlan.equalityArena s2Step30EarlyControlClassPlan.equality.top 253 252 791 s2Step30EarlyControlLog.flagWork=some s2Step30EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step30EarlyControl_flagsOwned⟩
  · exact s2Step30EarlyControl_flagsBorrow
private theorem s2Step30EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).toFinset⊆s2Step30EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlFlagArena (fun q => (0≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_fitBorrow : s2Step30EarlyControlFlagArena.checkBorrow ((12-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).length)) s2Step30EarlyControlLog.recordFresh=some s2Step30EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step30EarlyControlFlagArena (fun q => (0≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step30EarlyControlFittedArena,s2Step30EarlyControlFlagArena,s2Step30EarlyControlLog,arenaWires]
theorem s2Step30EarlyControl_fit : compileHmrRecordGrowLog s2Step30EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30EarlyControlLog.recordFresh=some s2Step30EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step30EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step30EarlyControl_fitBorrow
private theorem s2Step30EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).toFinset⊆s2Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_historyBorrow : s2Step30EarlyControlArena.checkBorrow ((12-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).length)) s2Step30EarlyControlLog.recordFresh=some s2Step30EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step30EarlyControlHistoryArena,s2Step30EarlyControlArena,s2Step30EarlyControlLog,arenaWires]
theorem s2Step30EarlyControl_history : compileHmrRecordGrowLog s2Step30EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30EarlyControlLog.recordFresh=some s2Step30EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step30EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step30EarlyControl_historyBorrow
private theorem s2Step30EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s2Step30EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s2Step30EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_sigmaRelease : s2Step30EarlyControlHistoryArena.release {789} (fun _ => false)=some s2Step30EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step30EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step30EarlyControlSigmaArena,s2Step30EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step30EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step30EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EarlyControl_branch : compileHmrBranchRetirement s2Step30EarlyControlSigmaArena 787=some s2Step30EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step30EarlyControl_branchOwned
  · ext q
    simp [s2Step30EarlyControlOutputArena,s2Step30EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step30EarlyControl_sigma : compileHmrSigmaDropLog s2Step30EarlyControlHistoryArena false 0 0 254 789 []=some s2Step30EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step30EarlyControl_sigmaOwned⟩
  · exact s2Step30EarlyControl_sigmaRelease
theorem s2Step30EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step30EarlyControlLog.zeroWork).map Prod.snd=some (s2Step30EarlyControlLog.zeroWork,s2Step30EarlyControlZeroPlan) := by
  rw [s2Step30EarlyControl_zero]
  rfl
theorem s2Step30EarlyControl_classProjection : (compileHmrSourceClassLog s2Step30EarlyControlZeroArena false 777 s2Step30EarlyControlZeroPlan.top 0 789 s2Step30EarlyControlLog.positiveWork s2Step30EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step30EarlyControlClassPlan.positiveWork,s2Step30EarlyControlClassPlan.equalityWork,s2Step30EarlyControlClassPlan.equality) := by
  rw [s2Step30EarlyControl_class]
  rfl
theorem s2Step30EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step30EarlyControlClassPlan.equalityArena s2Step30EarlyControlClassPlan.equality.top 253 252 791 s2Step30EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step30EarlyControl_flags]
  rfl
theorem s2Step30EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step30EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step30EarlyControl_fit]
  rfl
theorem s2Step30EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step30EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step30EarlyControl_history]
  rfl
theorem s2Step30EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step30EarlyControlHistoryArena false 0 0 254 789 []).map (fun _ => true)=some true := by
  rw [s2Step30EarlyControl_sigma]
  rfl
theorem s2Step30EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step30EarlyControlSigmaArena 787).map (fun _ => true)=some true := by
  rw [s2Step30EarlyControl_branch]
  rfl
private theorem s2Step30EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s2Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step30EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).toFinset⊆s2Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EarlyControl_logged : s2Step30EarlyControlPlan.Logged s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 789 254 253 252 791 787 12 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step30EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step30EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step30EarlyControl_zero
  · exact s2Step30EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step30EarlyControl_flags
  · exact s2Step30EarlyControl_fit
  · exact s2Step30EarlyControl_history
  · exact s2Step30EarlyControl_sigma
  · exact s2Step30EarlyControl_branch
theorem s2Step30EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 789 254 253 252 791 787 12 s2Step30EarlyControlLog=some s2Step30EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step30EarlyControlPlan s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 789 254 253 252 791 787 12 s2Step30EarlyControl_logged
theorem s2Step30EarlyControl_checked : (compileHmrEarlyControlLog s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 789 254 253 252 791 787 12 s2Step30EarlyControlLog).map (fun P => P.outputArena.live.card)=some 840 := by
  rw [s2Step30EarlyControl_plan_checked]
  decide +kernel

def s2Step31EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 854)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (786 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (782 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step31EarlyControlLog : HmrEarlyControlLog := ⟨[791, 789, 839, 780, 781],[787],[785],[844, 845, 846, 847, 849, 851],[854]⟩
def s2Step31EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,839⟩,⟨⟨776,false⟩,780⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step31EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step31EarlyControlPositiveArena,[787],s2Step31EarlyControlEqualityArena,[785],⟨⟨786,false⟩,[⟨⟨787,false⟩,785⟩]⟩⟩
def s2Step31EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step31EarlyControlZeroArena,s2Step31EarlyControlZeroPlan,s2Step31EarlyControlClassPlan,s2Step31EarlyControlFlagArena,s2Step31EarlyControlFittedArena,s2Step31EarlyControlHistoryArena,s2Step31EarlyControlSigmaArena,s2Step31EarlyControlOutputArena,s2Step31EarlyControlLog⟩
private theorem s2Step31EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_zeroBorrow : s2Step31EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step31EarlyControlLog.zeroWork=some s2Step31EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step31EarlyControlZeroArena,s2Step31EarlyControlArena,s2Step31EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step31EarlyControl_zero : compileHmrEqualityLog s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step31EarlyControlLog.zeroWork=some (s2Step31EarlyControlZeroArena,s2Step31EarlyControlLog.zeroWork,s2Step31EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step31EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step31EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step31EarlyControl_positiveBorrow : s2Step31EarlyControlZeroArena.checkBorrow (1) s2Step31EarlyControlLog.positiveWork=some s2Step31EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step31EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step31EarlyControlPositiveArena,s2Step31EarlyControlZeroArena,s2Step31EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step31EarlyControl_classEqualityOwned : ([786, 787] : List Wire).toFinset⊆s2Step31EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_classEqualityBorrow : s2Step31EarlyControlPositiveArena.checkBorrow (([786, 787] : List Wire).length-1) s2Step31EarlyControlLog.classWork=some s2Step31EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step31EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step31EarlyControlEqualityArena,s2Step31EarlyControlPositiveArena,s2Step31EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step31EarlyControl_classEquality : compileHmrEqualityLog s2Step31EarlyControlPositiveArena [786, 787] 0 s2Step31EarlyControlLog.classWork=some (s2Step31EarlyControlEqualityArena,s2Step31EarlyControlLog.classWork,s2Step31EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step31EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step31EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step31EarlyControl_classOwned : ([777, 781, 786] : List Wire).toFinset⊆s2Step31EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31EarlyControl_class : compileHmrSourceClassLog s2Step31EarlyControlZeroArena false 777 s2Step31EarlyControlZeroPlan.top 0 786 s2Step31EarlyControlLog.positiveWork s2Step31EarlyControlLog.classWork=some s2Step31EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step31EarlyControlClassPlan s2Step31EarlyControlZeroArena false 777 s2Step31EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step31EarlyControl_classOwned
  · exact s2Step31EarlyControl_positiveBorrow
  · exact s2Step31EarlyControl_classEquality
private theorem s2Step31EarlyControl_flagsOwned : ([785, 253, 252, 251] : List Wire).toFinset⊆s2Step31EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_flagsBorrow : s2Step31EarlyControlEqualityArena.checkBorrow (6) s2Step31EarlyControlLog.flagWork=some s2Step31EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step31EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step31EarlyControlFlagArena,s2Step31EarlyControlEqualityArena,s2Step31EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step31EarlyControl_flags : compileHmrFlagsLog s2Step31EarlyControlClassPlan.equalityArena s2Step31EarlyControlClassPlan.equality.top 253 252 251 s2Step31EarlyControlLog.flagWork=some s2Step31EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step31EarlyControl_flagsOwned⟩
  · exact s2Step31EarlyControl_flagsBorrow
private theorem s2Step31EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).toFinset⊆s2Step31EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlFlagArena (fun q => (0≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_fitBorrow : s2Step31EarlyControlFlagArena.checkBorrow ((13-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).length)) s2Step31EarlyControlLog.recordFresh=some s2Step31EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step31EarlyControlFlagArena (fun q => (0≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step31EarlyControlFittedArena,s2Step31EarlyControlFlagArena,s2Step31EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step31EarlyControl_fit : compileHmrRecordGrowLog s2Step31EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31EarlyControlLog.recordFresh=some s2Step31EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step31EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step31EarlyControl_fitBorrow
private theorem s2Step31EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).toFinset⊆s2Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_historyBorrow : s2Step31EarlyControlArena.checkBorrow ((13-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).length)) s2Step31EarlyControlLog.recordFresh=some s2Step31EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
      decide +kernel
    · ext q
      simp [s2Step31EarlyControlHistoryArena,s2Step31EarlyControlArena,s2Step31EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step31EarlyControl_history : compileHmrRecordGrowLog s2Step31EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31EarlyControlLog.recordFresh=some s2Step31EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step31EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step31EarlyControl_historyBorrow
private theorem s2Step31EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step31EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step31EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_sigmaRelease : s2Step31EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step31EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step31EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step31EarlyControlSigmaArena,s2Step31EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step31EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step31EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step31EarlyControl_branch : compileHmrBranchRetirement s2Step31EarlyControlSigmaArena 779=some s2Step31EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step31EarlyControl_branchOwned
  · ext q
    simp [s2Step31EarlyControlOutputArena,s2Step31EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step31EarlyControl_sigma : compileHmrSigmaDropLog s2Step31EarlyControlHistoryArena false 0 0 254 786 []=some s2Step31EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step31EarlyControl_sigmaOwned⟩
  · exact s2Step31EarlyControl_sigmaRelease
theorem s2Step31EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step31EarlyControlLog.zeroWork).map Prod.snd=some (s2Step31EarlyControlLog.zeroWork,s2Step31EarlyControlZeroPlan) := by
  rw [s2Step31EarlyControl_zero]
  rfl
theorem s2Step31EarlyControl_classProjection : (compileHmrSourceClassLog s2Step31EarlyControlZeroArena false 777 s2Step31EarlyControlZeroPlan.top 0 786 s2Step31EarlyControlLog.positiveWork s2Step31EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step31EarlyControlClassPlan.positiveWork,s2Step31EarlyControlClassPlan.equalityWork,s2Step31EarlyControlClassPlan.equality) := by
  rw [s2Step31EarlyControl_class]
  rfl
theorem s2Step31EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step31EarlyControlClassPlan.equalityArena s2Step31EarlyControlClassPlan.equality.top 253 252 251 s2Step31EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step31EarlyControl_flags]
  rfl
theorem s2Step31EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step31EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step31EarlyControl_fit]
  rfl
theorem s2Step31EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step31EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step31EarlyControl_history]
  rfl
theorem s2Step31EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step31EarlyControlHistoryArena false 0 0 254 786 []).map (fun _ => true)=some true := by
  rw [s2Step31EarlyControl_sigma]
  rfl
theorem s2Step31EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step31EarlyControlSigmaArena 779).map (fun _ => true)=some true := by
  rw [s2Step31EarlyControl_branch]
  rfl
private theorem s2Step31EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
private theorem s2Step31EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] : List Wire).toFinset⊆s2Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31EarlyControl_logged : s2Step31EarlyControlPlan.Logged s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 786 254 253 252 251 779 13 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step31EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step31EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step31EarlyControl_zero
  · exact s2Step31EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step31EarlyControl_flags
  · exact s2Step31EarlyControl_fit
  · exact s2Step31EarlyControl_history
  · exact s2Step31EarlyControl_sigma
  · exact s2Step31EarlyControl_branch
theorem s2Step31EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 786 254 253 252 251 779 13 s2Step31EarlyControlLog=some s2Step31EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step31EarlyControlPlan s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 786 254 253 252 251 779 13 s2Step31EarlyControl_logged
theorem s2Step31EarlyControl_checked : (compileHmrEarlyControlLog s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 786 254 253 252 251 779 13 s2Step31EarlyControlLog).map (fun P => P.outputArena.live.card)=some 840 := by
  rw [s2Step31EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
