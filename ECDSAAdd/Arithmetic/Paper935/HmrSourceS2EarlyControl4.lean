import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl3
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl4Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2Step32EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (789 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (789 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (782 ≤ q ∧ q < 785) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 839) ∨ (840 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step32EarlyControlLog : HmrEarlyControlLog := ⟨[788, 791, 787, 785, 781],[786],[780],[844, 845, 846, 847, 849, 851],[]⟩
def s2Step32EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,788⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,781⟩]⟩
def s2Step32EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step32EarlyControlPositiveArena,[786],s2Step32EarlyControlEqualityArena,[780],⟨⟨789,false⟩,[⟨⟨786,false⟩,780⟩]⟩⟩
def s2Step32EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step32EarlyControlZeroArena,s2Step32EarlyControlZeroPlan,s2Step32EarlyControlClassPlan,s2Step32EarlyControlFlagArena,s2Step32EarlyControlFittedArena,s2Step32EarlyControlHistoryArena,s2Step32EarlyControlSigmaArena,s2Step32EarlyControlOutputArena,s2Step32EarlyControlLog⟩
private theorem s2Step32EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_zeroBorrow : s2Step32EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step32EarlyControlLog.zeroWork=some s2Step32EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step32EarlyControlZeroArena,s2Step32EarlyControlArena,s2Step32EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step32EarlyControl_zero : compileHmrEqualityLog s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step32EarlyControlLog.zeroWork=some (s2Step32EarlyControlZeroArena,s2Step32EarlyControlLog.zeroWork,s2Step32EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step32EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step32EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step32EarlyControl_positiveBorrow : s2Step32EarlyControlZeroArena.checkBorrow (1) s2Step32EarlyControlLog.positiveWork=some s2Step32EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step32EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step32EarlyControlPositiveArena,s2Step32EarlyControlZeroArena,s2Step32EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step32EarlyControl_classEqualityOwned : ([789, 786] : List Wire).toFinset⊆s2Step32EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_classEqualityBorrow : s2Step32EarlyControlPositiveArena.checkBorrow (([789, 786] : List Wire).length-1) s2Step32EarlyControlLog.classWork=some s2Step32EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step32EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step32EarlyControlEqualityArena,s2Step32EarlyControlPositiveArena,s2Step32EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step32EarlyControl_classEquality : compileHmrEqualityLog s2Step32EarlyControlPositiveArena [789, 786] 0 s2Step32EarlyControlLog.classWork=some (s2Step32EarlyControlEqualityArena,s2Step32EarlyControlLog.classWork,s2Step32EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step32EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step32EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step32EarlyControl_classOwned : ([777, 781, 789] : List Wire).toFinset⊆s2Step32EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EarlyControl_class : compileHmrSourceClassLog s2Step32EarlyControlZeroArena false 777 s2Step32EarlyControlZeroPlan.top 0 789 s2Step32EarlyControlLog.positiveWork s2Step32EarlyControlLog.classWork=some s2Step32EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step32EarlyControlClassPlan s2Step32EarlyControlZeroArena false 777 s2Step32EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s2Step32EarlyControl_classOwned
  · exact s2Step32EarlyControl_positiveBorrow
  · exact s2Step32EarlyControl_classEquality
private theorem s2Step32EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step32EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_flagsBorrow : s2Step32EarlyControlEqualityArena.checkBorrow (6) s2Step32EarlyControlLog.flagWork=some s2Step32EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step32EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step32EarlyControlFlagArena,s2Step32EarlyControlEqualityArena,s2Step32EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step32EarlyControl_flags : compileHmrFlagsLog s2Step32EarlyControlClassPlan.equalityArena s2Step32EarlyControlClassPlan.equality.top 253 252 251 s2Step32EarlyControlLog.flagWork=some s2Step32EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step32EarlyControl_flagsOwned⟩
  · exact s2Step32EarlyControl_flagsBorrow
private theorem s2Step32EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).toFinset⊆s2Step32EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlFlagArena (fun q => (0≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_fitBorrow : s2Step32EarlyControlFlagArena.checkBorrow ((13-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).length)) s2Step32EarlyControlLog.recordFresh=some s2Step32EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step32EarlyControlFlagArena (fun q => (0≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step32EarlyControlFittedArena,s2Step32EarlyControlFlagArena,s2Step32EarlyControlLog,arenaWires]
theorem s2Step32EarlyControl_fit : compileHmrRecordGrowLog s2Step32EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32EarlyControlLog.recordFresh=some s2Step32EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step32EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step32EarlyControl_fitBorrow
private theorem s2Step32EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).toFinset⊆s2Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_historyBorrow : s2Step32EarlyControlArena.checkBorrow ((13-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).length)) s2Step32EarlyControlLog.recordFresh=some s2Step32EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step32EarlyControlHistoryArena,s2Step32EarlyControlArena,s2Step32EarlyControlLog,arenaWires]
theorem s2Step32EarlyControl_history : compileHmrRecordGrowLog s2Step32EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32EarlyControlLog.recordFresh=some s2Step32EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step32EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step32EarlyControl_historyBorrow
private theorem s2Step32EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s2Step32EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s2Step32EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_sigmaRelease : s2Step32EarlyControlHistoryArena.release {789} (fun _ => false)=some s2Step32EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step32EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step32EarlyControlSigmaArena,s2Step32EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step32EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step32EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EarlyControl_branch : compileHmrBranchRetirement s2Step32EarlyControlSigmaArena 839=some s2Step32EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step32EarlyControl_branchOwned
  · ext q
    simp [s2Step32EarlyControlOutputArena,s2Step32EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step32EarlyControl_sigma : compileHmrSigmaDropLog s2Step32EarlyControlHistoryArena false 0 0 254 789 []=some s2Step32EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step32EarlyControl_sigmaOwned⟩
  · exact s2Step32EarlyControl_sigmaRelease
theorem s2Step32EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step32EarlyControlLog.zeroWork).map Prod.snd=some (s2Step32EarlyControlLog.zeroWork,s2Step32EarlyControlZeroPlan) := by
  rw [s2Step32EarlyControl_zero]
  rfl
theorem s2Step32EarlyControl_classProjection : (compileHmrSourceClassLog s2Step32EarlyControlZeroArena false 777 s2Step32EarlyControlZeroPlan.top 0 789 s2Step32EarlyControlLog.positiveWork s2Step32EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step32EarlyControlClassPlan.positiveWork,s2Step32EarlyControlClassPlan.equalityWork,s2Step32EarlyControlClassPlan.equality) := by
  rw [s2Step32EarlyControl_class]
  rfl
theorem s2Step32EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step32EarlyControlClassPlan.equalityArena s2Step32EarlyControlClassPlan.equality.top 253 252 251 s2Step32EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step32EarlyControl_flags]
  rfl
theorem s2Step32EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step32EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step32EarlyControl_fit]
  rfl
theorem s2Step32EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step32EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step32EarlyControl_history]
  rfl
theorem s2Step32EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step32EarlyControlHistoryArena false 0 0 254 789 []).map (fun _ => true)=some true := by
  rw [s2Step32EarlyControl_sigma]
  rfl
theorem s2Step32EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step32EarlyControlSigmaArena 839).map (fun _ => true)=some true := by
  rw [s2Step32EarlyControl_branch]
  rfl
private theorem s2Step32EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s2Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step32EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).toFinset⊆s2Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EarlyControl_logged : s2Step32EarlyControlPlan.Logged s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 839 13 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step32EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step32EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step32EarlyControl_zero
  · exact s2Step32EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step32EarlyControl_flags
  · exact s2Step32EarlyControl_fit
  · exact s2Step32EarlyControl_history
  · exact s2Step32EarlyControl_sigma
  · exact s2Step32EarlyControl_branch
theorem s2Step32EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 839 13 s2Step32EarlyControlLog=some s2Step32EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step32EarlyControlPlan s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 839 13 s2Step32EarlyControl_logged
theorem s2Step32EarlyControl_checked : (compileHmrEarlyControlLog s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 839 13 s2Step32EarlyControlLog).map (fun P => P.outputArena.live.card)=some 840 := by
  rw [s2Step32EarlyControl_plan_checked]
  decide +kernel

def s2Step33EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 855)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step33EarlyControlLog : HmrEarlyControlLog := ⟨[790, 785, 787, 779, 791],[786],[780],[844, 845, 846, 847, 849, 851],[855]⟩
def s2Step33EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,790⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,791⟩]⟩
def s2Step33EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step33EarlyControlPositiveArena,[786],s2Step33EarlyControlEqualityArena,[780],⟨⟨789,false⟩,[⟨⟨786,false⟩,780⟩]⟩⟩
def s2Step33EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step33EarlyControlZeroArena,s2Step33EarlyControlZeroPlan,s2Step33EarlyControlClassPlan,s2Step33EarlyControlFlagArena,s2Step33EarlyControlFittedArena,s2Step33EarlyControlHistoryArena,s2Step33EarlyControlSigmaArena,s2Step33EarlyControlOutputArena,s2Step33EarlyControlLog⟩
private theorem s2Step33EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_zeroBorrow : s2Step33EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step33EarlyControlLog.zeroWork=some s2Step33EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step33EarlyControlZeroArena,s2Step33EarlyControlArena,s2Step33EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step33EarlyControl_zero : compileHmrEqualityLog s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step33EarlyControlLog.zeroWork=some (s2Step33EarlyControlZeroArena,s2Step33EarlyControlLog.zeroWork,s2Step33EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step33EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step33EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step33EarlyControl_positiveBorrow : s2Step33EarlyControlZeroArena.checkBorrow (1) s2Step33EarlyControlLog.positiveWork=some s2Step33EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step33EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step33EarlyControlPositiveArena,s2Step33EarlyControlZeroArena,s2Step33EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step33EarlyControl_classEqualityOwned : ([789, 786] : List Wire).toFinset⊆s2Step33EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_classEqualityBorrow : s2Step33EarlyControlPositiveArena.checkBorrow (([789, 786] : List Wire).length-1) s2Step33EarlyControlLog.classWork=some s2Step33EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step33EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step33EarlyControlEqualityArena,s2Step33EarlyControlPositiveArena,s2Step33EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step33EarlyControl_classEquality : compileHmrEqualityLog s2Step33EarlyControlPositiveArena [789, 786] 0 s2Step33EarlyControlLog.classWork=some (s2Step33EarlyControlEqualityArena,s2Step33EarlyControlLog.classWork,s2Step33EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step33EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step33EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step33EarlyControl_classOwned : ([777, 791, 789] : List Wire).toFinset⊆s2Step33EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33EarlyControl_class : compileHmrSourceClassLog s2Step33EarlyControlZeroArena false 777 s2Step33EarlyControlZeroPlan.top 0 789 s2Step33EarlyControlLog.positiveWork s2Step33EarlyControlLog.classWork=some s2Step33EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step33EarlyControlClassPlan s2Step33EarlyControlZeroArena false 777 s2Step33EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s2Step33EarlyControl_classOwned
  · exact s2Step33EarlyControl_positiveBorrow
  · exact s2Step33EarlyControl_classEquality
private theorem s2Step33EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step33EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_flagsBorrow : s2Step33EarlyControlEqualityArena.checkBorrow (6) s2Step33EarlyControlLog.flagWork=some s2Step33EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step33EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step33EarlyControlFlagArena,s2Step33EarlyControlEqualityArena,s2Step33EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step33EarlyControl_flags : compileHmrFlagsLog s2Step33EarlyControlClassPlan.equalityArena s2Step33EarlyControlClassPlan.equality.top 253 252 251 s2Step33EarlyControlLog.flagWork=some s2Step33EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step33EarlyControl_flagsOwned⟩
  · exact s2Step33EarlyControl_flagsBorrow
private theorem s2Step33EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).toFinset⊆s2Step33EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlFlagArena (fun q => (0≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_fitBorrow : s2Step33EarlyControlFlagArena.checkBorrow ((14-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).length)) s2Step33EarlyControlLog.recordFresh=some s2Step33EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step33EarlyControlFlagArena (fun q => (0≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step33EarlyControlFittedArena,s2Step33EarlyControlFlagArena,s2Step33EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step33EarlyControl_fit : compileHmrRecordGrowLog s2Step33EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33EarlyControlLog.recordFresh=some s2Step33EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step33EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step33EarlyControl_fitBorrow
private theorem s2Step33EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).toFinset⊆s2Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_historyBorrow : s2Step33EarlyControlArena.checkBorrow ((14-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).length)) s2Step33EarlyControlLog.recordFresh=some s2Step33EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
      decide +kernel
    · ext q
      simp [s2Step33EarlyControlHistoryArena,s2Step33EarlyControlArena,s2Step33EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step33EarlyControl_history : compileHmrRecordGrowLog s2Step33EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33EarlyControlLog.recordFresh=some s2Step33EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step33EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step33EarlyControl_historyBorrow
private theorem s2Step33EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s2Step33EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s2Step33EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_sigmaRelease : s2Step33EarlyControlHistoryArena.release {789} (fun _ => false)=some s2Step33EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step33EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step33EarlyControlSigmaArena,s2Step33EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step33EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step33EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step33EarlyControl_branch : compileHmrBranchRetirement s2Step33EarlyControlSigmaArena 788=some s2Step33EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step33EarlyControl_branchOwned
  · ext q
    simp [s2Step33EarlyControlOutputArena,s2Step33EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step33EarlyControl_sigma : compileHmrSigmaDropLog s2Step33EarlyControlHistoryArena false 0 0 254 789 []=some s2Step33EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step33EarlyControl_sigmaOwned⟩
  · exact s2Step33EarlyControl_sigmaRelease
theorem s2Step33EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step33EarlyControlLog.zeroWork).map Prod.snd=some (s2Step33EarlyControlLog.zeroWork,s2Step33EarlyControlZeroPlan) := by
  rw [s2Step33EarlyControl_zero]
  rfl
theorem s2Step33EarlyControl_classProjection : (compileHmrSourceClassLog s2Step33EarlyControlZeroArena false 777 s2Step33EarlyControlZeroPlan.top 0 789 s2Step33EarlyControlLog.positiveWork s2Step33EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step33EarlyControlClassPlan.positiveWork,s2Step33EarlyControlClassPlan.equalityWork,s2Step33EarlyControlClassPlan.equality) := by
  rw [s2Step33EarlyControl_class]
  rfl
theorem s2Step33EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step33EarlyControlClassPlan.equalityArena s2Step33EarlyControlClassPlan.equality.top 253 252 251 s2Step33EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step33EarlyControl_flags]
  rfl
theorem s2Step33EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step33EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step33EarlyControl_fit]
  rfl
theorem s2Step33EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step33EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step33EarlyControl_history]
  rfl
theorem s2Step33EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step33EarlyControlHistoryArena false 0 0 254 789 []).map (fun _ => true)=some true := by
  rw [s2Step33EarlyControl_sigma]
  rfl
theorem s2Step33EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step33EarlyControlSigmaArena 788).map (fun _ => true)=some true := by
  rw [s2Step33EarlyControl_branch]
  rfl
private theorem s2Step33EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s2Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
private theorem s2Step33EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] : List Wire).toFinset⊆s2Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33EarlyControl_logged : s2Step33EarlyControlPlan.Logged s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 788 14 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step33EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step33EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step33EarlyControl_zero
  · exact s2Step33EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step33EarlyControl_flags
  · exact s2Step33EarlyControl_fit
  · exact s2Step33EarlyControl_history
  · exact s2Step33EarlyControl_sigma
  · exact s2Step33EarlyControl_branch
theorem s2Step33EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 788 14 s2Step33EarlyControlLog=some s2Step33EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step33EarlyControlPlan s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 788 14 s2Step33EarlyControl_logged
theorem s2Step33EarlyControl_checked : (compileHmrEarlyControlLog s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 254 253 252 251 788 14 s2Step33EarlyControlLog).map (fun P => P.outputArena.live.card)=some 841 := by
  rw [s2Step33EarlyControl_plan_checked]
  decide +kernel

def s2Step34EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 793) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 793) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 793) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 785) ∨ (788 ≤ q ∧ q < 789) ∨ (792 ≤ q ∧ q < 793) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step34EarlyControlLog : HmrEarlyControlLog := ⟨[793, 779, 791, 787, 785],[786],[780],[844, 845, 846, 847, 849, 851],[]⟩
def s2Step34EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨774,false⟩,779⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,785⟩]⟩
def s2Step34EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step34EarlyControlPositiveArena,[786],s2Step34EarlyControlEqualityArena,[780],⟨⟨789,false⟩,[⟨⟨786,false⟩,780⟩]⟩⟩
def s2Step34EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step34EarlyControlZeroArena,s2Step34EarlyControlZeroPlan,s2Step34EarlyControlClassPlan,s2Step34EarlyControlFlagArena,s2Step34EarlyControlFittedArena,s2Step34EarlyControlHistoryArena,s2Step34EarlyControlSigmaArena,s2Step34EarlyControlOutputArena,s2Step34EarlyControlLog⟩
private theorem s2Step34EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_zeroBorrow : s2Step34EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step34EarlyControlLog.zeroWork=some s2Step34EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step34EarlyControlZeroArena,s2Step34EarlyControlArena,s2Step34EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step34EarlyControl_zero : compileHmrEqualityLog s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step34EarlyControlLog.zeroWork=some (s2Step34EarlyControlZeroArena,s2Step34EarlyControlLog.zeroWork,s2Step34EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step34EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step34EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step34EarlyControl_positiveBorrow : s2Step34EarlyControlZeroArena.checkBorrow (1) s2Step34EarlyControlLog.positiveWork=some s2Step34EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step34EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step34EarlyControlPositiveArena,s2Step34EarlyControlZeroArena,s2Step34EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step34EarlyControl_classEqualityOwned : ([789, 786] : List Wire).toFinset⊆s2Step34EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_classEqualityBorrow : s2Step34EarlyControlPositiveArena.checkBorrow (([789, 786] : List Wire).length-1) s2Step34EarlyControlLog.classWork=some s2Step34EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step34EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step34EarlyControlEqualityArena,s2Step34EarlyControlPositiveArena,s2Step34EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step34EarlyControl_classEquality : compileHmrEqualityLog s2Step34EarlyControlPositiveArena [789, 786] 0 s2Step34EarlyControlLog.classWork=some (s2Step34EarlyControlEqualityArena,s2Step34EarlyControlLog.classWork,s2Step34EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step34EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step34EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step34EarlyControl_classOwned : ([777, 785, 789] : List Wire).toFinset⊆s2Step34EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EarlyControl_class : compileHmrSourceClassLog s2Step34EarlyControlZeroArena false 777 s2Step34EarlyControlZeroPlan.top 0 789 s2Step34EarlyControlLog.positiveWork s2Step34EarlyControlLog.classWork=some s2Step34EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step34EarlyControlClassPlan s2Step34EarlyControlZeroArena false 777 s2Step34EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s2Step34EarlyControl_classOwned
  · exact s2Step34EarlyControl_positiveBorrow
  · exact s2Step34EarlyControl_classEquality
private theorem s2Step34EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step34EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_flagsBorrow : s2Step34EarlyControlEqualityArena.checkBorrow (6) s2Step34EarlyControlLog.flagWork=some s2Step34EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step34EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step34EarlyControlFlagArena,s2Step34EarlyControlEqualityArena,s2Step34EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step34EarlyControl_flags : compileHmrFlagsLog s2Step34EarlyControlClassPlan.equalityArena s2Step34EarlyControlClassPlan.equality.top 253 252 251 s2Step34EarlyControlLog.flagWork=some s2Step34EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step34EarlyControl_flagsOwned⟩
  · exact s2Step34EarlyControl_flagsBorrow
private theorem s2Step34EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).toFinset⊆s2Step34EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlFlagArena (fun q => (0≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_fitBorrow : s2Step34EarlyControlFlagArena.checkBorrow ((14-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).length)) s2Step34EarlyControlLog.recordFresh=some s2Step34EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step34EarlyControlFlagArena (fun q => (0≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step34EarlyControlFittedArena,s2Step34EarlyControlFlagArena,s2Step34EarlyControlLog,arenaWires]
theorem s2Step34EarlyControl_fit : compileHmrRecordGrowLog s2Step34EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34EarlyControlLog.recordFresh=some s2Step34EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step34EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step34EarlyControl_fitBorrow
private theorem s2Step34EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).toFinset⊆s2Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_historyBorrow : s2Step34EarlyControlArena.checkBorrow ((14-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).length)) s2Step34EarlyControlLog.recordFresh=some s2Step34EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step34EarlyControlHistoryArena,s2Step34EarlyControlArena,s2Step34EarlyControlLog,arenaWires]
theorem s2Step34EarlyControl_history : compileHmrRecordGrowLog s2Step34EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34EarlyControlLog.recordFresh=some s2Step34EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step34EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step34EarlyControl_historyBorrow
private theorem s2Step34EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s2Step34EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s2Step34EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_sigmaRelease : s2Step34EarlyControlHistoryArena.release {789} (fun _ => false)=some s2Step34EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step34EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step34EarlyControlSigmaArena,s2Step34EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step34EarlyControl_branchOwned : ([790] : List Wire).toFinset⊆s2Step34EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EarlyControl_branch : compileHmrBranchRetirement s2Step34EarlyControlSigmaArena 790=some s2Step34EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step34EarlyControl_branchOwned
  · ext q
    simp [s2Step34EarlyControlOutputArena,s2Step34EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step34EarlyControl_sigma : compileHmrSigmaDropLog s2Step34EarlyControlHistoryArena false 0 0 254 789 []=some s2Step34EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step34EarlyControl_sigmaOwned⟩
  · exact s2Step34EarlyControl_sigmaRelease
theorem s2Step34EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step34EarlyControlLog.zeroWork).map Prod.snd=some (s2Step34EarlyControlLog.zeroWork,s2Step34EarlyControlZeroPlan) := by
  rw [s2Step34EarlyControl_zero]
  rfl
theorem s2Step34EarlyControl_classProjection : (compileHmrSourceClassLog s2Step34EarlyControlZeroArena false 777 s2Step34EarlyControlZeroPlan.top 0 789 s2Step34EarlyControlLog.positiveWork s2Step34EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step34EarlyControlClassPlan.positiveWork,s2Step34EarlyControlClassPlan.equalityWork,s2Step34EarlyControlClassPlan.equality) := by
  rw [s2Step34EarlyControl_class]
  rfl
theorem s2Step34EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step34EarlyControlClassPlan.equalityArena s2Step34EarlyControlClassPlan.equality.top 253 252 251 s2Step34EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step34EarlyControl_flags]
  rfl
theorem s2Step34EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step34EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step34EarlyControl_fit]
  rfl
theorem s2Step34EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step34EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step34EarlyControl_history]
  rfl
theorem s2Step34EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step34EarlyControlHistoryArena false 0 0 254 789 []).map (fun _ => true)=some true := by
  rw [s2Step34EarlyControl_sigma]
  rfl
theorem s2Step34EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step34EarlyControlSigmaArena 790).map (fun _ => true)=some true := by
  rw [s2Step34EarlyControl_branch]
  rfl
private theorem s2Step34EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s2Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step34EarlyControl_entryRecordOwned : ([790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).toFinset⊆s2Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EarlyControl_logged : s2Step34EarlyControlPlan.Logged s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 790 14 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step34EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step34EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step34EarlyControl_zero
  · exact s2Step34EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step34EarlyControl_flags
  · exact s2Step34EarlyControl_fit
  · exact s2Step34EarlyControl_history
  · exact s2Step34EarlyControl_sigma
  · exact s2Step34EarlyControl_branch
theorem s2Step34EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 790 14 s2Step34EarlyControlLog=some s2Step34EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step34EarlyControlPlan s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 790 14 s2Step34EarlyControl_logged
theorem s2Step34EarlyControl_checked : (compileHmrEarlyControlLog s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 790 14 s2Step34EarlyControlLog).map (fun P => P.outputArena.live.card)=some 841 := by
  rw [s2Step34EarlyControl_plan_checked]
  decide +kernel

def s2Step35EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 791) ∨ (793 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 857)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 791) ∨ (793 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (793 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 789) ∨ (790 ≤ q ∧ q < 791) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step35EarlyControlLog : HmrEarlyControlLog := ⟨[792, 787, 791, 779, 786],[780],[844],[845, 846, 847, 849, 851, 856],[857]⟩
def s2Step35EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,786⟩]⟩
def s2Step35EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step35EarlyControlPositiveArena,[780],s2Step35EarlyControlEqualityArena,[844],⟨⟨789,false⟩,[⟨⟨780,false⟩,844⟩]⟩⟩
def s2Step35EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step35EarlyControlZeroArena,s2Step35EarlyControlZeroPlan,s2Step35EarlyControlClassPlan,s2Step35EarlyControlFlagArena,s2Step35EarlyControlFittedArena,s2Step35EarlyControlHistoryArena,s2Step35EarlyControlSigmaArena,s2Step35EarlyControlOutputArena,s2Step35EarlyControlLog⟩
private theorem s2Step35EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_zeroBorrow : s2Step35EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step35EarlyControlLog.zeroWork=some s2Step35EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step35EarlyControlZeroArena,s2Step35EarlyControlArena,s2Step35EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step35EarlyControl_zero : compileHmrEqualityLog s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step35EarlyControlLog.zeroWork=some (s2Step35EarlyControlZeroArena,s2Step35EarlyControlLog.zeroWork,s2Step35EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step35EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step35EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step35EarlyControl_positiveBorrow : s2Step35EarlyControlZeroArena.checkBorrow (1) s2Step35EarlyControlLog.positiveWork=some s2Step35EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step35EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step35EarlyControlPositiveArena,s2Step35EarlyControlZeroArena,s2Step35EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step35EarlyControl_classEqualityOwned : ([789, 780] : List Wire).toFinset⊆s2Step35EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_classEqualityBorrow : s2Step35EarlyControlPositiveArena.checkBorrow (([789, 780] : List Wire).length-1) s2Step35EarlyControlLog.classWork=some s2Step35EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step35EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step35EarlyControlEqualityArena,s2Step35EarlyControlPositiveArena,s2Step35EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step35EarlyControl_classEquality : compileHmrEqualityLog s2Step35EarlyControlPositiveArena [789, 780] 0 s2Step35EarlyControlLog.classWork=some (s2Step35EarlyControlEqualityArena,s2Step35EarlyControlLog.classWork,s2Step35EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step35EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step35EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step35EarlyControl_classOwned : ([777, 786, 789] : List Wire).toFinset⊆s2Step35EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35EarlyControl_class : compileHmrSourceClassLog s2Step35EarlyControlZeroArena false 777 s2Step35EarlyControlZeroPlan.top 0 789 s2Step35EarlyControlLog.positiveWork s2Step35EarlyControlLog.classWork=some s2Step35EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step35EarlyControlClassPlan s2Step35EarlyControlZeroArena false 777 s2Step35EarlyControlZeroPlan.top 0 789
  constructor
  · decide +kernel
  · exact s2Step35EarlyControl_classOwned
  · exact s2Step35EarlyControl_positiveBorrow
  · exact s2Step35EarlyControl_classEquality
private theorem s2Step35EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step35EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_flagsBorrow : s2Step35EarlyControlEqualityArena.checkBorrow (6) s2Step35EarlyControlLog.flagWork=some s2Step35EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step35EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step35EarlyControlFlagArena,s2Step35EarlyControlEqualityArena,s2Step35EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step35EarlyControl_flags : compileHmrFlagsLog s2Step35EarlyControlClassPlan.equalityArena s2Step35EarlyControlClassPlan.equality.top 253 252 251 s2Step35EarlyControlLog.flagWork=some s2Step35EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step35EarlyControl_flagsOwned⟩
  · exact s2Step35EarlyControl_flagsBorrow
private theorem s2Step35EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).toFinset⊆s2Step35EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlFlagArena (fun q => (0≤q ∧ q<857)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_fitBorrow : s2Step35EarlyControlFlagArena.checkBorrow ((15-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).length)) s2Step35EarlyControlLog.recordFresh=some s2Step35EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step35EarlyControlFlagArena (fun q => (0≤q ∧ q<857)) rfl
      decide +kernel
    · ext q
      simp [s2Step35EarlyControlFittedArena,s2Step35EarlyControlFlagArena,s2Step35EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step35EarlyControl_fit : compileHmrRecordGrowLog s2Step35EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35EarlyControlLog.recordFresh=some s2Step35EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step35EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step35EarlyControl_fitBorrow
private theorem s2Step35EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).toFinset⊆s2Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_historyBorrow : s2Step35EarlyControlArena.checkBorrow ((15-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).length)) s2Step35EarlyControlLog.recordFresh=some s2Step35EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
      decide +kernel
    · ext q
      simp [s2Step35EarlyControlHistoryArena,s2Step35EarlyControlArena,s2Step35EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step35EarlyControl_history : compileHmrRecordGrowLog s2Step35EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35EarlyControlLog.recordFresh=some s2Step35EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step35EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step35EarlyControl_historyBorrow
private theorem s2Step35EarlyControl_sigmaOwned : ([254, 789] : List Wire).toFinset⊆s2Step35EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_sigmaReleaseOwned : ([789] : List Wire).toFinset⊆s2Step35EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_sigmaRelease : s2Step35EarlyControlHistoryArena.release {789} (fun _ => false)=some s2Step35EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step35EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step35EarlyControlSigmaArena,s2Step35EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step35EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step35EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step35EarlyControl_branch : compileHmrBranchRetirement s2Step35EarlyControlSigmaArena 793=some s2Step35EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step35EarlyControl_branchOwned
  · ext q
    simp [s2Step35EarlyControlOutputArena,s2Step35EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step35EarlyControl_sigma : compileHmrSigmaDropLog s2Step35EarlyControlHistoryArena false 0 0 254 789 []=some s2Step35EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step35EarlyControl_sigmaOwned⟩
  · exact s2Step35EarlyControl_sigmaRelease
theorem s2Step35EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step35EarlyControlLog.zeroWork).map Prod.snd=some (s2Step35EarlyControlLog.zeroWork,s2Step35EarlyControlZeroPlan) := by
  rw [s2Step35EarlyControl_zero]
  rfl
theorem s2Step35EarlyControl_classProjection : (compileHmrSourceClassLog s2Step35EarlyControlZeroArena false 777 s2Step35EarlyControlZeroPlan.top 0 789 s2Step35EarlyControlLog.positiveWork s2Step35EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step35EarlyControlClassPlan.positiveWork,s2Step35EarlyControlClassPlan.equalityWork,s2Step35EarlyControlClassPlan.equality) := by
  rw [s2Step35EarlyControl_class]
  rfl
theorem s2Step35EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step35EarlyControlClassPlan.equalityArena s2Step35EarlyControlClassPlan.equality.top 253 252 251 s2Step35EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step35EarlyControl_flags]
  rfl
theorem s2Step35EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step35EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step35EarlyControl_fit]
  rfl
theorem s2Step35EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step35EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step35EarlyControl_history]
  rfl
theorem s2Step35EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step35EarlyControlHistoryArena false 0 0 254 789 []).map (fun _ => true)=some true := by
  rw [s2Step35EarlyControl_sigma]
  rfl
theorem s2Step35EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step35EarlyControlSigmaArena 793).map (fun _ => true)=some true := by
  rw [s2Step35EarlyControl_branch]
  rfl
private theorem s2Step35EarlyControl_entrySigmaOwned : ([789, 254] : List Wire).toFinset⊆s2Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
private theorem s2Step35EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] : List Wire).toFinset⊆s2Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35EarlyControl_logged : s2Step35EarlyControlPlan.Logged s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 793 15 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step35EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step35EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step35EarlyControl_zero
  · exact s2Step35EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step35EarlyControl_flags
  · exact s2Step35EarlyControl_fit
  · exact s2Step35EarlyControl_history
  · exact s2Step35EarlyControl_sigma
  · exact s2Step35EarlyControl_branch
theorem s2Step35EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 793 15 s2Step35EarlyControlLog=some s2Step35EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step35EarlyControlPlan s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 793 15 s2Step35EarlyControl_logged
theorem s2Step35EarlyControl_checked : (compileHmrEarlyControlLog s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 254 253 252 251 793 15 s2Step35EarlyControlLog).map (fun P => P.outputArena.live.card)=some 843 := by
  rw [s2Step35EarlyControl_plan_checked]
  decide +kernel

def s2Step36EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 793) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 791) ∨ (792 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 793) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 779) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 790) ∨ (794 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step36EarlyControlLog : HmrEarlyControlLog := ⟨[786, 780, 793, 779, 790],[791],[844],[845, 846, 847, 849, 851, 856],[]⟩
def s2Step36EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,780⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,779⟩,⟨⟨777,false⟩,790⟩]⟩
def s2Step36EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step36EarlyControlPositiveArena,[791],s2Step36EarlyControlEqualityArena,[844],⟨⟨792,false⟩,[⟨⟨791,false⟩,844⟩]⟩⟩
def s2Step36EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step36EarlyControlZeroArena,s2Step36EarlyControlZeroPlan,s2Step36EarlyControlClassPlan,s2Step36EarlyControlFlagArena,s2Step36EarlyControlFittedArena,s2Step36EarlyControlHistoryArena,s2Step36EarlyControlSigmaArena,s2Step36EarlyControlOutputArena,s2Step36EarlyControlLog⟩
private theorem s2Step36EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_zeroBorrow : s2Step36EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step36EarlyControlLog.zeroWork=some s2Step36EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step36EarlyControlZeroArena,s2Step36EarlyControlArena,s2Step36EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step36EarlyControl_zero : compileHmrEqualityLog s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step36EarlyControlLog.zeroWork=some (s2Step36EarlyControlZeroArena,s2Step36EarlyControlLog.zeroWork,s2Step36EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step36EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step36EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step36EarlyControl_positiveBorrow : s2Step36EarlyControlZeroArena.checkBorrow (1) s2Step36EarlyControlLog.positiveWork=some s2Step36EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step36EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step36EarlyControlPositiveArena,s2Step36EarlyControlZeroArena,s2Step36EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step36EarlyControl_classEqualityOwned : ([792, 791] : List Wire).toFinset⊆s2Step36EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_classEqualityBorrow : s2Step36EarlyControlPositiveArena.checkBorrow (([792, 791] : List Wire).length-1) s2Step36EarlyControlLog.classWork=some s2Step36EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step36EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step36EarlyControlEqualityArena,s2Step36EarlyControlPositiveArena,s2Step36EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step36EarlyControl_classEquality : compileHmrEqualityLog s2Step36EarlyControlPositiveArena [792, 791] 0 s2Step36EarlyControlLog.classWork=some (s2Step36EarlyControlEqualityArena,s2Step36EarlyControlLog.classWork,s2Step36EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step36EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step36EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step36EarlyControl_classOwned : ([777, 790, 792] : List Wire).toFinset⊆s2Step36EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlZeroArena (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EarlyControl_class : compileHmrSourceClassLog s2Step36EarlyControlZeroArena false 777 s2Step36EarlyControlZeroPlan.top 0 792 s2Step36EarlyControlLog.positiveWork s2Step36EarlyControlLog.classWork=some s2Step36EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step36EarlyControlClassPlan s2Step36EarlyControlZeroArena false 777 s2Step36EarlyControlZeroPlan.top 0 792
  constructor
  · decide +kernel
  · exact s2Step36EarlyControl_classOwned
  · exact s2Step36EarlyControl_positiveBorrow
  · exact s2Step36EarlyControl_classEquality
private theorem s2Step36EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step36EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_flagsBorrow : s2Step36EarlyControlEqualityArena.checkBorrow (6) s2Step36EarlyControlLog.flagWork=some s2Step36EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step36EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step36EarlyControlFlagArena,s2Step36EarlyControlEqualityArena,s2Step36EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step36EarlyControl_flags : compileHmrFlagsLog s2Step36EarlyControlClassPlan.equalityArena s2Step36EarlyControlClassPlan.equality.top 253 252 251 s2Step36EarlyControlLog.flagWork=some s2Step36EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step36EarlyControl_flagsOwned⟩
  · exact s2Step36EarlyControl_flagsBorrow
private theorem s2Step36EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).toFinset⊆s2Step36EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlFlagArena (fun q => (0≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_fitBorrow : s2Step36EarlyControlFlagArena.checkBorrow ((15-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).length)) s2Step36EarlyControlLog.recordFresh=some s2Step36EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step36EarlyControlFlagArena (fun q => (0≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step36EarlyControlFittedArena,s2Step36EarlyControlFlagArena,s2Step36EarlyControlLog,arenaWires]
theorem s2Step36EarlyControl_fit : compileHmrRecordGrowLog s2Step36EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36EarlyControlLog.recordFresh=some s2Step36EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step36EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step36EarlyControl_fitBorrow
private theorem s2Step36EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).toFinset⊆s2Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_historyBorrow : s2Step36EarlyControlArena.checkBorrow ((15-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).length)) s2Step36EarlyControlLog.recordFresh=some s2Step36EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step36EarlyControlHistoryArena,s2Step36EarlyControlArena,s2Step36EarlyControlLog,arenaWires]
theorem s2Step36EarlyControl_history : compileHmrRecordGrowLog s2Step36EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36EarlyControlLog.recordFresh=some s2Step36EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step36EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step36EarlyControl_historyBorrow
private theorem s2Step36EarlyControl_sigmaOwned : ([254, 792] : List Wire).toFinset⊆s2Step36EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_sigmaReleaseOwned : ([792] : List Wire).toFinset⊆s2Step36EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_sigmaRelease : s2Step36EarlyControlHistoryArena.release {792} (fun _ => false)=some s2Step36EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step36EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step36EarlyControlSigmaArena,s2Step36EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step36EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step36EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EarlyControl_branch : compileHmrBranchRetirement s2Step36EarlyControlSigmaArena 787=some s2Step36EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step36EarlyControl_branchOwned
  · ext q
    simp [s2Step36EarlyControlOutputArena,s2Step36EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step36EarlyControl_sigma : compileHmrSigmaDropLog s2Step36EarlyControlHistoryArena false 0 0 254 792 []=some s2Step36EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step36EarlyControl_sigmaOwned⟩
  · exact s2Step36EarlyControl_sigmaRelease
theorem s2Step36EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step36EarlyControlLog.zeroWork).map Prod.snd=some (s2Step36EarlyControlLog.zeroWork,s2Step36EarlyControlZeroPlan) := by
  rw [s2Step36EarlyControl_zero]
  rfl
theorem s2Step36EarlyControl_classProjection : (compileHmrSourceClassLog s2Step36EarlyControlZeroArena false 777 s2Step36EarlyControlZeroPlan.top 0 792 s2Step36EarlyControlLog.positiveWork s2Step36EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step36EarlyControlClassPlan.positiveWork,s2Step36EarlyControlClassPlan.equalityWork,s2Step36EarlyControlClassPlan.equality) := by
  rw [s2Step36EarlyControl_class]
  rfl
theorem s2Step36EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step36EarlyControlClassPlan.equalityArena s2Step36EarlyControlClassPlan.equality.top 253 252 251 s2Step36EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step36EarlyControl_flags]
  rfl
theorem s2Step36EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step36EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step36EarlyControl_fit]
  rfl
theorem s2Step36EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step36EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step36EarlyControl_history]
  rfl
theorem s2Step36EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step36EarlyControlHistoryArena false 0 0 254 792 []).map (fun _ => true)=some true := by
  rw [s2Step36EarlyControl_sigma]
  rfl
theorem s2Step36EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step36EarlyControlSigmaArena 787).map (fun _ => true)=some true := by
  rw [s2Step36EarlyControl_branch]
  rfl
private theorem s2Step36EarlyControl_entrySigmaOwned : ([792, 254] : List Wire).toFinset⊆s2Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step36EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).toFinset⊆s2Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EarlyControl_logged : s2Step36EarlyControlPlan.Logged s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 792 254 253 252 251 787 15 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step36EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step36EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step36EarlyControl_zero
  · exact s2Step36EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step36EarlyControl_flags
  · exact s2Step36EarlyControl_fit
  · exact s2Step36EarlyControl_history
  · exact s2Step36EarlyControl_sigma
  · exact s2Step36EarlyControl_branch
theorem s2Step36EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 792 254 253 252 251 787 15 s2Step36EarlyControlLog=some s2Step36EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step36EarlyControlPlan s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 792 254 253 252 251 787 15 s2Step36EarlyControl_logged
theorem s2Step36EarlyControl_checked : (compileHmrEarlyControlLog s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 792 254 253 252 251 787 15 s2Step36EarlyControlLog).map (fun P => P.outputArena.live.card)=some 843 := by
  rw [s2Step36EarlyControl_plan_checked]
  decide +kernel

def s2Step37EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 859)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step37EarlyControlLog : HmrEarlyControlLog := ⟨[796, 780, 786, 790, 791],[844],[845],[846, 847, 849, 851, 856, 858],[859]⟩
def s2Step37EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,780⟩,⟨⟨775,false⟩,786⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,791⟩]⟩
def s2Step37EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step37EarlyControlPositiveArena,[844],s2Step37EarlyControlEqualityArena,[845],⟨⟨787,false⟩,[⟨⟨844,false⟩,845⟩]⟩⟩
def s2Step37EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step37EarlyControlZeroArena,s2Step37EarlyControlZeroPlan,s2Step37EarlyControlClassPlan,s2Step37EarlyControlFlagArena,s2Step37EarlyControlFittedArena,s2Step37EarlyControlHistoryArena,s2Step37EarlyControlSigmaArena,s2Step37EarlyControlOutputArena,s2Step37EarlyControlLog⟩
private theorem s2Step37EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_zeroBorrow : s2Step37EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step37EarlyControlLog.zeroWork=some s2Step37EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step37EarlyControlZeroArena,s2Step37EarlyControlArena,s2Step37EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step37EarlyControl_zero : compileHmrEqualityLog s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step37EarlyControlLog.zeroWork=some (s2Step37EarlyControlZeroArena,s2Step37EarlyControlLog.zeroWork,s2Step37EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step37EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step37EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step37EarlyControl_positiveBorrow : s2Step37EarlyControlZeroArena.checkBorrow (1) s2Step37EarlyControlLog.positiveWork=some s2Step37EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step37EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step37EarlyControlPositiveArena,s2Step37EarlyControlZeroArena,s2Step37EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step37EarlyControl_classEqualityOwned : ([787, 844] : List Wire).toFinset⊆s2Step37EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_classEqualityBorrow : s2Step37EarlyControlPositiveArena.checkBorrow (([787, 844] : List Wire).length-1) s2Step37EarlyControlLog.classWork=some s2Step37EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step37EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step37EarlyControlEqualityArena,s2Step37EarlyControlPositiveArena,s2Step37EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step37EarlyControl_classEquality : compileHmrEqualityLog s2Step37EarlyControlPositiveArena [787, 844] 0 s2Step37EarlyControlLog.classWork=some (s2Step37EarlyControlEqualityArena,s2Step37EarlyControlLog.classWork,s2Step37EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step37EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step37EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step37EarlyControl_classOwned : ([777, 791, 787] : List Wire).toFinset⊆s2Step37EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37EarlyControl_class : compileHmrSourceClassLog s2Step37EarlyControlZeroArena false 777 s2Step37EarlyControlZeroPlan.top 0 787 s2Step37EarlyControlLog.positiveWork s2Step37EarlyControlLog.classWork=some s2Step37EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step37EarlyControlClassPlan s2Step37EarlyControlZeroArena false 777 s2Step37EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step37EarlyControl_classOwned
  · exact s2Step37EarlyControl_positiveBorrow
  · exact s2Step37EarlyControl_classEquality
private theorem s2Step37EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step37EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_flagsBorrow : s2Step37EarlyControlEqualityArena.checkBorrow (6) s2Step37EarlyControlLog.flagWork=some s2Step37EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step37EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step37EarlyControlFlagArena,s2Step37EarlyControlEqualityArena,s2Step37EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step37EarlyControl_flags : compileHmrFlagsLog s2Step37EarlyControlClassPlan.equalityArena s2Step37EarlyControlClassPlan.equality.top 253 252 251 s2Step37EarlyControlLog.flagWork=some s2Step37EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step37EarlyControl_flagsOwned⟩
  · exact s2Step37EarlyControl_flagsBorrow
private theorem s2Step37EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).toFinset⊆s2Step37EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlFlagArena (fun q => (0≤q ∧ q<859)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_fitBorrow : s2Step37EarlyControlFlagArena.checkBorrow ((16-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).length)) s2Step37EarlyControlLog.recordFresh=some s2Step37EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step37EarlyControlFlagArena (fun q => (0≤q ∧ q<859)) rfl
      decide +kernel
    · ext q
      simp [s2Step37EarlyControlFittedArena,s2Step37EarlyControlFlagArena,s2Step37EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step37EarlyControl_fit : compileHmrRecordGrowLog s2Step37EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37EarlyControlLog.recordFresh=some s2Step37EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step37EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step37EarlyControl_fitBorrow
private theorem s2Step37EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).toFinset⊆s2Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_historyBorrow : s2Step37EarlyControlArena.checkBorrow ((16-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).length)) s2Step37EarlyControlLog.recordFresh=some s2Step37EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
      decide +kernel
    · ext q
      simp [s2Step37EarlyControlHistoryArena,s2Step37EarlyControlArena,s2Step37EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step37EarlyControl_history : compileHmrRecordGrowLog s2Step37EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37EarlyControlLog.recordFresh=some s2Step37EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step37EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step37EarlyControl_historyBorrow
private theorem s2Step37EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step37EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step37EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_sigmaRelease : s2Step37EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step37EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step37EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step37EarlyControlSigmaArena,s2Step37EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step37EarlyControl_branchOwned : ([792] : List Wire).toFinset⊆s2Step37EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step37EarlyControl_branch : compileHmrBranchRetirement s2Step37EarlyControlSigmaArena 792=some s2Step37EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step37EarlyControl_branchOwned
  · ext q
    simp [s2Step37EarlyControlOutputArena,s2Step37EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step37EarlyControl_sigma : compileHmrSigmaDropLog s2Step37EarlyControlHistoryArena false 0 0 254 787 []=some s2Step37EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step37EarlyControl_sigmaOwned⟩
  · exact s2Step37EarlyControl_sigmaRelease
theorem s2Step37EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step37EarlyControlLog.zeroWork).map Prod.snd=some (s2Step37EarlyControlLog.zeroWork,s2Step37EarlyControlZeroPlan) := by
  rw [s2Step37EarlyControl_zero]
  rfl
theorem s2Step37EarlyControl_classProjection : (compileHmrSourceClassLog s2Step37EarlyControlZeroArena false 777 s2Step37EarlyControlZeroPlan.top 0 787 s2Step37EarlyControlLog.positiveWork s2Step37EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step37EarlyControlClassPlan.positiveWork,s2Step37EarlyControlClassPlan.equalityWork,s2Step37EarlyControlClassPlan.equality) := by
  rw [s2Step37EarlyControl_class]
  rfl
theorem s2Step37EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step37EarlyControlClassPlan.equalityArena s2Step37EarlyControlClassPlan.equality.top 253 252 251 s2Step37EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step37EarlyControl_flags]
  rfl
theorem s2Step37EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step37EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step37EarlyControl_fit]
  rfl
theorem s2Step37EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step37EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step37EarlyControl_history]
  rfl
theorem s2Step37EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step37EarlyControlHistoryArena false 0 0 254 787 []).map (fun _ => true)=some true := by
  rw [s2Step37EarlyControl_sigma]
  rfl
theorem s2Step37EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step37EarlyControlSigmaArena 792).map (fun _ => true)=some true := by
  rw [s2Step37EarlyControl_branch]
  rfl
private theorem s2Step37EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
private theorem s2Step37EarlyControl_entryRecordOwned : ([792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] : List Wire).toFinset⊆s2Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37EarlyControl_logged : s2Step37EarlyControlPlan.Logged s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 787 254 253 252 251 792 16 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step37EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step37EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step37EarlyControl_zero
  · exact s2Step37EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step37EarlyControl_flags
  · exact s2Step37EarlyControl_fit
  · exact s2Step37EarlyControl_history
  · exact s2Step37EarlyControl_sigma
  · exact s2Step37EarlyControl_branch
theorem s2Step37EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 787 254 253 252 251 792 16 s2Step37EarlyControlLog=some s2Step37EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step37EarlyControlPlan s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 787 254 253 252 251 792 16 s2Step37EarlyControl_logged
theorem s2Step37EarlyControl_checked : (compileHmrEarlyControlLog s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 787 254 253 252 251 792 16 s2Step37EarlyControlLog).map (fun P => P.outputArena.live.card)=some 845 := by
  rw [s2Step37EarlyControl_plan_checked]
  decide +kernel

def s2Step38EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (787 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 786) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step38EarlyControlLog : HmrEarlyControlLog := ⟨[794, 790, 791, 786, 792],[780],[844],[845, 846, 847, 849, 851, 856],[]⟩
def s2Step38EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,786⟩,⟨⟨777,false⟩,792⟩]⟩
def s2Step38EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step38EarlyControlPositiveArena,[780],s2Step38EarlyControlEqualityArena,[844],⟨⟨787,false⟩,[⟨⟨780,false⟩,844⟩]⟩⟩
def s2Step38EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step38EarlyControlZeroArena,s2Step38EarlyControlZeroPlan,s2Step38EarlyControlClassPlan,s2Step38EarlyControlFlagArena,s2Step38EarlyControlFittedArena,s2Step38EarlyControlHistoryArena,s2Step38EarlyControlSigmaArena,s2Step38EarlyControlOutputArena,s2Step38EarlyControlLog⟩
private theorem s2Step38EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_zeroBorrow : s2Step38EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step38EarlyControlLog.zeroWork=some s2Step38EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step38EarlyControlZeroArena,s2Step38EarlyControlArena,s2Step38EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step38EarlyControl_zero : compileHmrEqualityLog s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step38EarlyControlLog.zeroWork=some (s2Step38EarlyControlZeroArena,s2Step38EarlyControlLog.zeroWork,s2Step38EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step38EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step38EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step38EarlyControl_positiveBorrow : s2Step38EarlyControlZeroArena.checkBorrow (1) s2Step38EarlyControlLog.positiveWork=some s2Step38EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step38EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step38EarlyControlPositiveArena,s2Step38EarlyControlZeroArena,s2Step38EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step38EarlyControl_classEqualityOwned : ([787, 780] : List Wire).toFinset⊆s2Step38EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_classEqualityBorrow : s2Step38EarlyControlPositiveArena.checkBorrow (([787, 780] : List Wire).length-1) s2Step38EarlyControlLog.classWork=some s2Step38EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step38EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step38EarlyControlEqualityArena,s2Step38EarlyControlPositiveArena,s2Step38EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step38EarlyControl_classEquality : compileHmrEqualityLog s2Step38EarlyControlPositiveArena [787, 780] 0 s2Step38EarlyControlLog.classWork=some (s2Step38EarlyControlEqualityArena,s2Step38EarlyControlLog.classWork,s2Step38EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step38EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step38EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step38EarlyControl_classOwned : ([777, 792, 787] : List Wire).toFinset⊆s2Step38EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EarlyControl_class : compileHmrSourceClassLog s2Step38EarlyControlZeroArena false 777 s2Step38EarlyControlZeroPlan.top 0 787 s2Step38EarlyControlLog.positiveWork s2Step38EarlyControlLog.classWork=some s2Step38EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step38EarlyControlClassPlan s2Step38EarlyControlZeroArena false 777 s2Step38EarlyControlZeroPlan.top 0 787
  constructor
  · decide +kernel
  · exact s2Step38EarlyControl_classOwned
  · exact s2Step38EarlyControl_positiveBorrow
  · exact s2Step38EarlyControl_classEquality
private theorem s2Step38EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step38EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_flagsBorrow : s2Step38EarlyControlEqualityArena.checkBorrow (6) s2Step38EarlyControlLog.flagWork=some s2Step38EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step38EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step38EarlyControlFlagArena,s2Step38EarlyControlEqualityArena,s2Step38EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step38EarlyControl_flags : compileHmrFlagsLog s2Step38EarlyControlClassPlan.equalityArena s2Step38EarlyControlClassPlan.equality.top 253 252 251 s2Step38EarlyControlLog.flagWork=some s2Step38EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step38EarlyControl_flagsOwned⟩
  · exact s2Step38EarlyControl_flagsBorrow
private theorem s2Step38EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).toFinset⊆s2Step38EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlFlagArena (fun q => (0≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_fitBorrow : s2Step38EarlyControlFlagArena.checkBorrow ((16-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).length)) s2Step38EarlyControlLog.recordFresh=some s2Step38EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step38EarlyControlFlagArena (fun q => (0≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step38EarlyControlFittedArena,s2Step38EarlyControlFlagArena,s2Step38EarlyControlLog,arenaWires]
theorem s2Step38EarlyControl_fit : compileHmrRecordGrowLog s2Step38EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38EarlyControlLog.recordFresh=some s2Step38EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step38EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step38EarlyControl_fitBorrow
private theorem s2Step38EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).toFinset⊆s2Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_historyBorrow : s2Step38EarlyControlArena.checkBorrow ((16-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).length)) s2Step38EarlyControlLog.recordFresh=some s2Step38EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step38EarlyControlHistoryArena,s2Step38EarlyControlArena,s2Step38EarlyControlLog,arenaWires]
theorem s2Step38EarlyControl_history : compileHmrRecordGrowLog s2Step38EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38EarlyControlLog.recordFresh=some s2Step38EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step38EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step38EarlyControl_historyBorrow
private theorem s2Step38EarlyControl_sigmaOwned : ([254, 787] : List Wire).toFinset⊆s2Step38EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_sigmaReleaseOwned : ([787] : List Wire).toFinset⊆s2Step38EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_sigmaRelease : s2Step38EarlyControlHistoryArena.release {787} (fun _ => false)=some s2Step38EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step38EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step38EarlyControlSigmaArena,s2Step38EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step38EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step38EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EarlyControl_branch : compileHmrBranchRetirement s2Step38EarlyControlSigmaArena 796=some s2Step38EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step38EarlyControl_branchOwned
  · ext q
    simp [s2Step38EarlyControlOutputArena,s2Step38EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step38EarlyControl_sigma : compileHmrSigmaDropLog s2Step38EarlyControlHistoryArena false 0 0 254 787 []=some s2Step38EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step38EarlyControl_sigmaOwned⟩
  · exact s2Step38EarlyControl_sigmaRelease
theorem s2Step38EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step38EarlyControlLog.zeroWork).map Prod.snd=some (s2Step38EarlyControlLog.zeroWork,s2Step38EarlyControlZeroPlan) := by
  rw [s2Step38EarlyControl_zero]
  rfl
theorem s2Step38EarlyControl_classProjection : (compileHmrSourceClassLog s2Step38EarlyControlZeroArena false 777 s2Step38EarlyControlZeroPlan.top 0 787 s2Step38EarlyControlLog.positiveWork s2Step38EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step38EarlyControlClassPlan.positiveWork,s2Step38EarlyControlClassPlan.equalityWork,s2Step38EarlyControlClassPlan.equality) := by
  rw [s2Step38EarlyControl_class]
  rfl
theorem s2Step38EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step38EarlyControlClassPlan.equalityArena s2Step38EarlyControlClassPlan.equality.top 253 252 251 s2Step38EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step38EarlyControl_flags]
  rfl
theorem s2Step38EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step38EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step38EarlyControl_fit]
  rfl
theorem s2Step38EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step38EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step38EarlyControl_history]
  rfl
theorem s2Step38EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step38EarlyControlHistoryArena false 0 0 254 787 []).map (fun _ => true)=some true := by
  rw [s2Step38EarlyControl_sigma]
  rfl
theorem s2Step38EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step38EarlyControlSigmaArena 796).map (fun _ => true)=some true := by
  rw [s2Step38EarlyControl_branch]
  rfl
private theorem s2Step38EarlyControl_entrySigmaOwned : ([787, 254] : List Wire).toFinset⊆s2Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step38EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).toFinset⊆s2Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EarlyControl_logged : s2Step38EarlyControlPlan.Logged s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 787 254 253 252 251 796 16 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step38EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step38EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step38EarlyControl_zero
  · exact s2Step38EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step38EarlyControl_flags
  · exact s2Step38EarlyControl_fit
  · exact s2Step38EarlyControl_history
  · exact s2Step38EarlyControl_sigma
  · exact s2Step38EarlyControl_branch
theorem s2Step38EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 787 254 253 252 251 796 16 s2Step38EarlyControlLog=some s2Step38EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step38EarlyControlPlan s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 787 254 253 252 251 796 16 s2Step38EarlyControl_logged
theorem s2Step38EarlyControl_checked : (compileHmrEarlyControlLog s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 787 254 253 252 251 796 16 s2Step38EarlyControlLog).map (fun P => P.outputArena.live.card)=some 844 := by
  rw [s2Step38EarlyControl_plan_checked]
  decide +kernel

def s2Step39EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 780) ∨ (781 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (797 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step39EarlyControlLog : HmrEarlyControlLog := ⟨[798, 791, 790, 794, 792],[780],[844],[845, 846, 847, 849, 851, 856],[858]⟩
def s2Step39EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,792⟩]⟩
def s2Step39EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step39EarlyControlPositiveArena,[780],s2Step39EarlyControlEqualityArena,[844],⟨⟨796,false⟩,[⟨⟨780,false⟩,844⟩]⟩⟩
def s2Step39EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step39EarlyControlZeroArena,s2Step39EarlyControlZeroPlan,s2Step39EarlyControlClassPlan,s2Step39EarlyControlFlagArena,s2Step39EarlyControlFittedArena,s2Step39EarlyControlHistoryArena,s2Step39EarlyControlSigmaArena,s2Step39EarlyControlOutputArena,s2Step39EarlyControlLog⟩
private theorem s2Step39EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_zeroBorrow : s2Step39EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step39EarlyControlLog.zeroWork=some s2Step39EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step39EarlyControlZeroArena,s2Step39EarlyControlArena,s2Step39EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step39EarlyControl_zero : compileHmrEqualityLog s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step39EarlyControlLog.zeroWork=some (s2Step39EarlyControlZeroArena,s2Step39EarlyControlLog.zeroWork,s2Step39EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step39EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step39EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step39EarlyControl_positiveBorrow : s2Step39EarlyControlZeroArena.checkBorrow (1) s2Step39EarlyControlLog.positiveWork=some s2Step39EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step39EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step39EarlyControlPositiveArena,s2Step39EarlyControlZeroArena,s2Step39EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step39EarlyControl_classEqualityOwned : ([796, 780] : List Wire).toFinset⊆s2Step39EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_classEqualityBorrow : s2Step39EarlyControlPositiveArena.checkBorrow (([796, 780] : List Wire).length-1) s2Step39EarlyControlLog.classWork=some s2Step39EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step39EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step39EarlyControlEqualityArena,s2Step39EarlyControlPositiveArena,s2Step39EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step39EarlyControl_classEquality : compileHmrEqualityLog s2Step39EarlyControlPositiveArena [796, 780] 0 s2Step39EarlyControlLog.classWork=some (s2Step39EarlyControlEqualityArena,s2Step39EarlyControlLog.classWork,s2Step39EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step39EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step39EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step39EarlyControl_classOwned : ([777, 792, 796] : List Wire).toFinset⊆s2Step39EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EarlyControl_class : compileHmrSourceClassLog s2Step39EarlyControlZeroArena false 777 s2Step39EarlyControlZeroPlan.top 0 796 s2Step39EarlyControlLog.positiveWork s2Step39EarlyControlLog.classWork=some s2Step39EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step39EarlyControlClassPlan s2Step39EarlyControlZeroArena false 777 s2Step39EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step39EarlyControl_classOwned
  · exact s2Step39EarlyControl_positiveBorrow
  · exact s2Step39EarlyControl_classEquality
private theorem s2Step39EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step39EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_flagsBorrow : s2Step39EarlyControlEqualityArena.checkBorrow (6) s2Step39EarlyControlLog.flagWork=some s2Step39EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step39EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step39EarlyControlFlagArena,s2Step39EarlyControlEqualityArena,s2Step39EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step39EarlyControl_flags : compileHmrFlagsLog s2Step39EarlyControlClassPlan.equalityArena s2Step39EarlyControlClassPlan.equality.top 253 252 251 s2Step39EarlyControlLog.flagWork=some s2Step39EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step39EarlyControl_flagsOwned⟩
  · exact s2Step39EarlyControl_flagsBorrow
private theorem s2Step39EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).toFinset⊆s2Step39EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlFlagArena (fun q => (0≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_fitBorrow : s2Step39EarlyControlFlagArena.checkBorrow ((17-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).length)) s2Step39EarlyControlLog.recordFresh=some s2Step39EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step39EarlyControlFlagArena (fun q => (0≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step39EarlyControlFittedArena,s2Step39EarlyControlFlagArena,s2Step39EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step39EarlyControl_fit : compileHmrRecordGrowLog s2Step39EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39EarlyControlLog.recordFresh=some s2Step39EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step39EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step39EarlyControl_fitBorrow
private theorem s2Step39EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).toFinset⊆s2Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_historyBorrow : s2Step39EarlyControlArena.checkBorrow ((17-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).length)) s2Step39EarlyControlLog.recordFresh=some s2Step39EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step39EarlyControlHistoryArena,s2Step39EarlyControlArena,s2Step39EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step39EarlyControl_history : compileHmrRecordGrowLog s2Step39EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39EarlyControlLog.recordFresh=some s2Step39EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step39EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step39EarlyControl_historyBorrow
private theorem s2Step39EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step39EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step39EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_sigmaRelease : s2Step39EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step39EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step39EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step39EarlyControlSigmaArena,s2Step39EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step39EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step39EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EarlyControl_branch : compileHmrBranchRetirement s2Step39EarlyControlSigmaArena 787=some s2Step39EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step39EarlyControl_branchOwned
  · ext q
    simp [s2Step39EarlyControlOutputArena,s2Step39EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step39EarlyControl_sigma : compileHmrSigmaDropLog s2Step39EarlyControlHistoryArena false 0 0 254 796 []=some s2Step39EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step39EarlyControl_sigmaOwned⟩
  · exact s2Step39EarlyControl_sigmaRelease
theorem s2Step39EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step39EarlyControlLog.zeroWork).map Prod.snd=some (s2Step39EarlyControlLog.zeroWork,s2Step39EarlyControlZeroPlan) := by
  rw [s2Step39EarlyControl_zero]
  rfl
theorem s2Step39EarlyControl_classProjection : (compileHmrSourceClassLog s2Step39EarlyControlZeroArena false 777 s2Step39EarlyControlZeroPlan.top 0 796 s2Step39EarlyControlLog.positiveWork s2Step39EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step39EarlyControlClassPlan.positiveWork,s2Step39EarlyControlClassPlan.equalityWork,s2Step39EarlyControlClassPlan.equality) := by
  rw [s2Step39EarlyControl_class]
  rfl
theorem s2Step39EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step39EarlyControlClassPlan.equalityArena s2Step39EarlyControlClassPlan.equality.top 253 252 251 s2Step39EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step39EarlyControl_flags]
  rfl
theorem s2Step39EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step39EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step39EarlyControl_fit]
  rfl
theorem s2Step39EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step39EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step39EarlyControl_history]
  rfl
theorem s2Step39EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step39EarlyControlHistoryArena false 0 0 254 796 []).map (fun _ => true)=some true := by
  rw [s2Step39EarlyControl_sigma]
  rfl
theorem s2Step39EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step39EarlyControlSigmaArena 787).map (fun _ => true)=some true := by
  rw [s2Step39EarlyControl_branch]
  rfl
private theorem s2Step39EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step39EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] : List Wire).toFinset⊆s2Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EarlyControl_logged : s2Step39EarlyControlPlan.Logged s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 796 254 253 252 251 787 17 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step39EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step39EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step39EarlyControl_zero
  · exact s2Step39EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step39EarlyControl_flags
  · exact s2Step39EarlyControl_fit
  · exact s2Step39EarlyControl_history
  · exact s2Step39EarlyControl_sigma
  · exact s2Step39EarlyControl_branch
theorem s2Step39EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 796 254 253 252 251 787 17 s2Step39EarlyControlLog=some s2Step39EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step39EarlyControlPlan s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 796 254 253 252 251 787 17 s2Step39EarlyControl_logged
theorem s2Step39EarlyControl_checked : (compileHmrEarlyControlLog s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 796 254 253 252 251 787 17 s2Step39EarlyControlLog).map (fun P => P.outputArena.live.card)=some 845 := by
  rw [s2Step39EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
