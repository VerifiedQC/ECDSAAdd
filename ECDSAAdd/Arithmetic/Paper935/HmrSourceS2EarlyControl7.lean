import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl6
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl7Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2Step56EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 815) ∨ (816 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (816 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step56EarlyControlLog : HmrEarlyControlLog := ⟨[817, 800, 808, 790, 792],[807],[812],[844, 845, 846, 847, 849, 851],[]⟩
def s2Step56EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,817⟩,⟨⟨774,false⟩,800⟩,⟨⟨775,false⟩,808⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,792⟩]⟩
def s2Step56EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step56EarlyControlPositiveArena,[807],s2Step56EarlyControlEqualityArena,[812],⟨⟨815,false⟩,[⟨⟨807,false⟩,812⟩]⟩⟩
def s2Step56EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step56EarlyControlZeroArena,s2Step56EarlyControlZeroPlan,s2Step56EarlyControlClassPlan,s2Step56EarlyControlFlagArena,s2Step56EarlyControlFittedArena,s2Step56EarlyControlHistoryArena,s2Step56EarlyControlSigmaArena,s2Step56EarlyControlOutputArena,s2Step56EarlyControlLog⟩
private theorem s2Step56EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_zeroBorrow : s2Step56EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step56EarlyControlLog.zeroWork=some s2Step56EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step56EarlyControlZeroArena,s2Step56EarlyControlArena,s2Step56EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step56EarlyControl_zero : compileHmrEqualityLog s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step56EarlyControlLog.zeroWork=some (s2Step56EarlyControlZeroArena,s2Step56EarlyControlLog.zeroWork,s2Step56EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step56EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step56EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step56EarlyControl_positiveBorrow : s2Step56EarlyControlZeroArena.checkBorrow (1) s2Step56EarlyControlLog.positiveWork=some s2Step56EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step56EarlyControlZeroArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step56EarlyControlPositiveArena,s2Step56EarlyControlZeroArena,s2Step56EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step56EarlyControl_classEqualityOwned : ([815, 807] : List Wire).toFinset⊆s2Step56EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlPositiveArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_classEqualityBorrow : s2Step56EarlyControlPositiveArena.checkBorrow (([815, 807] : List Wire).length-1) s2Step56EarlyControlLog.classWork=some s2Step56EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step56EarlyControlPositiveArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step56EarlyControlEqualityArena,s2Step56EarlyControlPositiveArena,s2Step56EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step56EarlyControl_classEquality : compileHmrEqualityLog s2Step56EarlyControlPositiveArena [815, 807] 0 s2Step56EarlyControlLog.classWork=some (s2Step56EarlyControlEqualityArena,s2Step56EarlyControlLog.classWork,s2Step56EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step56EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step56EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step56EarlyControl_classOwned : ([777, 792, 815] : List Wire).toFinset⊆s2Step56EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlZeroArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EarlyControl_class : compileHmrSourceClassLog s2Step56EarlyControlZeroArena false 777 s2Step56EarlyControlZeroPlan.top 0 815 s2Step56EarlyControlLog.positiveWork s2Step56EarlyControlLog.classWork=some s2Step56EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step56EarlyControlClassPlan s2Step56EarlyControlZeroArena false 777 s2Step56EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step56EarlyControl_classOwned
  · exact s2Step56EarlyControl_positiveBorrow
  · exact s2Step56EarlyControl_classEquality
private theorem s2Step56EarlyControl_flagsOwned : ([812, 253, 252, 251] : List Wire).toFinset⊆s2Step56EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_flagsBorrow : s2Step56EarlyControlEqualityArena.checkBorrow (6) s2Step56EarlyControlLog.flagWork=some s2Step56EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step56EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step56EarlyControlFlagArena,s2Step56EarlyControlEqualityArena,s2Step56EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step56EarlyControl_flags : compileHmrFlagsLog s2Step56EarlyControlClassPlan.equalityArena s2Step56EarlyControlClassPlan.equality.top 253 252 251 s2Step56EarlyControlLog.flagWork=some s2Step56EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step56EarlyControl_flagsOwned⟩
  · exact s2Step56EarlyControl_flagsBorrow
private theorem s2Step56EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step56EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlFlagArena (fun q => (0≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_fitBorrow : s2Step56EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step56EarlyControlLog.recordFresh=some s2Step56EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step56EarlyControlFlagArena (fun q => (0≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step56EarlyControlFittedArena,s2Step56EarlyControlFlagArena,s2Step56EarlyControlLog,arenaWires]
theorem s2Step56EarlyControl_fit : compileHmrRecordGrowLog s2Step56EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56EarlyControlLog.recordFresh=some s2Step56EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step56EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step56EarlyControl_fitBorrow
private theorem s2Step56EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_historyBorrow : s2Step56EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step56EarlyControlLog.recordFresh=some s2Step56EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step56EarlyControlHistoryArena,s2Step56EarlyControlArena,s2Step56EarlyControlLog,arenaWires]
theorem s2Step56EarlyControl_history : compileHmrRecordGrowLog s2Step56EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56EarlyControlLog.recordFresh=some s2Step56EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step56EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step56EarlyControl_historyBorrow
private theorem s2Step56EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step56EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step56EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_sigmaRelease : s2Step56EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step56EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step56EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step56EarlyControlSigmaArena,s2Step56EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step56EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step56EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EarlyControl_branch : compileHmrBranchRetirement s2Step56EarlyControlSigmaArena 814=some s2Step56EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step56EarlyControl_branchOwned
  · ext q
    simp [s2Step56EarlyControlOutputArena,s2Step56EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step56EarlyControl_sigma : compileHmrSigmaDropLog s2Step56EarlyControlHistoryArena false 0 0 254 815 []=some s2Step56EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step56EarlyControl_sigmaOwned⟩
  · exact s2Step56EarlyControl_sigmaRelease
theorem s2Step56EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step56EarlyControlLog.zeroWork).map Prod.snd=some (s2Step56EarlyControlLog.zeroWork,s2Step56EarlyControlZeroPlan) := by
  rw [s2Step56EarlyControl_zero]
  rfl
theorem s2Step56EarlyControl_classProjection : (compileHmrSourceClassLog s2Step56EarlyControlZeroArena false 777 s2Step56EarlyControlZeroPlan.top 0 815 s2Step56EarlyControlLog.positiveWork s2Step56EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step56EarlyControlClassPlan.positiveWork,s2Step56EarlyControlClassPlan.equalityWork,s2Step56EarlyControlClassPlan.equality) := by
  rw [s2Step56EarlyControl_class]
  rfl
theorem s2Step56EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step56EarlyControlClassPlan.equalityArena s2Step56EarlyControlClassPlan.equality.top 253 252 251 s2Step56EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step56EarlyControl_flags]
  rfl
theorem s2Step56EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step56EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step56EarlyControl_fit]
  rfl
theorem s2Step56EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step56EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step56EarlyControl_history]
  rfl
theorem s2Step56EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step56EarlyControlHistoryArena false 0 0 254 815 []).map (fun _ => true)=some true := by
  rw [s2Step56EarlyControl_sigma]
  rfl
theorem s2Step56EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step56EarlyControlSigmaArena 814).map (fun _ => true)=some true := by
  rw [s2Step56EarlyControl_branch]
  rfl
private theorem s2Step56EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step56EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EarlyControl_logged : s2Step56EarlyControlPlan.Logged s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 814 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step56EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step56EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step56EarlyControl_zero
  · exact s2Step56EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step56EarlyControl_flags
  · exact s2Step56EarlyControl_fit
  · exact s2Step56EarlyControl_history
  · exact s2Step56EarlyControl_sigma
  · exact s2Step56EarlyControl_branch
theorem s2Step56EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 814 25 s2Step56EarlyControlLog=some s2Step56EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step56EarlyControlPlan s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 814 25 s2Step56EarlyControl_logged
theorem s2Step56EarlyControl_checked : (compileHmrEarlyControlLog s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 814 25 s2Step56EarlyControlLog).map (fun P => P.outputArena.live.card)=some 852 := by
  rw [s2Step56EarlyControl_plan_checked]
  decide +kernel

def s2Step57EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (817 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step57EarlyControlLog : HmrEarlyControlLog := ⟨[816, 820, 790, 792, 808],[814],[800],[807, 812, 844, 845, 846, 847],[]⟩
def s2Step57EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,816⟩,⟨⟨774,false⟩,820⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,792⟩,⟨⟨777,false⟩,808⟩]⟩
def s2Step57EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step57EarlyControlPositiveArena,[814],s2Step57EarlyControlEqualityArena,[800],⟨⟨815,false⟩,[⟨⟨814,false⟩,800⟩]⟩⟩
def s2Step57EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step57EarlyControlZeroArena,s2Step57EarlyControlZeroPlan,s2Step57EarlyControlClassPlan,s2Step57EarlyControlFlagArena,s2Step57EarlyControlFittedArena,s2Step57EarlyControlHistoryArena,s2Step57EarlyControlSigmaArena,s2Step57EarlyControlOutputArena,s2Step57EarlyControlLog⟩
private theorem s2Step57EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_zeroBorrow : s2Step57EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step57EarlyControlLog.zeroWork=some s2Step57EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step57EarlyControlZeroArena,s2Step57EarlyControlArena,s2Step57EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step57EarlyControl_zero : compileHmrEqualityLog s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step57EarlyControlLog.zeroWork=some (s2Step57EarlyControlZeroArena,s2Step57EarlyControlLog.zeroWork,s2Step57EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step57EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step57EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step57EarlyControl_positiveBorrow : s2Step57EarlyControlZeroArena.checkBorrow (1) s2Step57EarlyControlLog.positiveWork=some s2Step57EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step57EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step57EarlyControlPositiveArena,s2Step57EarlyControlZeroArena,s2Step57EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step57EarlyControl_classEqualityOwned : ([815, 814] : List Wire).toFinset⊆s2Step57EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_classEqualityBorrow : s2Step57EarlyControlPositiveArena.checkBorrow (([815, 814] : List Wire).length-1) s2Step57EarlyControlLog.classWork=some s2Step57EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step57EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step57EarlyControlEqualityArena,s2Step57EarlyControlPositiveArena,s2Step57EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step57EarlyControl_classEquality : compileHmrEqualityLog s2Step57EarlyControlPositiveArena [815, 814] 0 s2Step57EarlyControlLog.classWork=some (s2Step57EarlyControlEqualityArena,s2Step57EarlyControlLog.classWork,s2Step57EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step57EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step57EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step57EarlyControl_classOwned : ([777, 808, 815] : List Wire).toFinset⊆s2Step57EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EarlyControl_class : compileHmrSourceClassLog s2Step57EarlyControlZeroArena false 777 s2Step57EarlyControlZeroPlan.top 0 815 s2Step57EarlyControlLog.positiveWork s2Step57EarlyControlLog.classWork=some s2Step57EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step57EarlyControlClassPlan s2Step57EarlyControlZeroArena false 777 s2Step57EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step57EarlyControl_classOwned
  · exact s2Step57EarlyControl_positiveBorrow
  · exact s2Step57EarlyControl_classEquality
private theorem s2Step57EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step57EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlEqualityArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_flagsBorrow : s2Step57EarlyControlEqualityArena.checkBorrow (6) s2Step57EarlyControlLog.flagWork=some s2Step57EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step57EarlyControlEqualityArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step57EarlyControlFlagArena,s2Step57EarlyControlEqualityArena,s2Step57EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step57EarlyControl_flags : compileHmrFlagsLog s2Step57EarlyControlClassPlan.equalityArena s2Step57EarlyControlClassPlan.equality.top 253 252 251 s2Step57EarlyControlLog.flagWork=some s2Step57EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step57EarlyControl_flagsOwned⟩
  · exact s2Step57EarlyControl_flagsBorrow
private theorem s2Step57EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step57EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlFlagArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_fitBorrow : s2Step57EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step57EarlyControlLog.recordFresh=some s2Step57EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step57EarlyControlFlagArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step57EarlyControlFittedArena,s2Step57EarlyControlFlagArena,s2Step57EarlyControlLog,arenaWires]
theorem s2Step57EarlyControl_fit : compileHmrRecordGrowLog s2Step57EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57EarlyControlLog.recordFresh=some s2Step57EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step57EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step57EarlyControl_fitBorrow
private theorem s2Step57EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_historyBorrow : s2Step57EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step57EarlyControlLog.recordFresh=some s2Step57EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step57EarlyControlHistoryArena,s2Step57EarlyControlArena,s2Step57EarlyControlLog,arenaWires]
theorem s2Step57EarlyControl_history : compileHmrRecordGrowLog s2Step57EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57EarlyControlLog.recordFresh=some s2Step57EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step57EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step57EarlyControl_historyBorrow
private theorem s2Step57EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step57EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step57EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_sigmaRelease : s2Step57EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step57EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step57EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step57EarlyControlSigmaArena,s2Step57EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step57EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step57EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EarlyControl_branch : compileHmrBranchRetirement s2Step57EarlyControlSigmaArena 817=some s2Step57EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step57EarlyControl_branchOwned
  · ext q
    simp [s2Step57EarlyControlOutputArena,s2Step57EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step57EarlyControl_sigma : compileHmrSigmaDropLog s2Step57EarlyControlHistoryArena false 0 0 254 815 []=some s2Step57EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step57EarlyControl_sigmaOwned⟩
  · exact s2Step57EarlyControl_sigmaRelease
theorem s2Step57EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step57EarlyControlLog.zeroWork).map Prod.snd=some (s2Step57EarlyControlLog.zeroWork,s2Step57EarlyControlZeroPlan) := by
  rw [s2Step57EarlyControl_zero]
  rfl
theorem s2Step57EarlyControl_classProjection : (compileHmrSourceClassLog s2Step57EarlyControlZeroArena false 777 s2Step57EarlyControlZeroPlan.top 0 815 s2Step57EarlyControlLog.positiveWork s2Step57EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step57EarlyControlClassPlan.positiveWork,s2Step57EarlyControlClassPlan.equalityWork,s2Step57EarlyControlClassPlan.equality) := by
  rw [s2Step57EarlyControl_class]
  rfl
theorem s2Step57EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step57EarlyControlClassPlan.equalityArena s2Step57EarlyControlClassPlan.equality.top 253 252 251 s2Step57EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step57EarlyControl_flags]
  rfl
theorem s2Step57EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step57EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step57EarlyControl_fit]
  rfl
theorem s2Step57EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step57EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step57EarlyControl_history]
  rfl
theorem s2Step57EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step57EarlyControlHistoryArena false 0 0 254 815 []).map (fun _ => true)=some true := by
  rw [s2Step57EarlyControl_sigma]
  rfl
theorem s2Step57EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step57EarlyControlSigmaArena 817).map (fun _ => true)=some true := by
  rw [s2Step57EarlyControl_branch]
  rfl
private theorem s2Step57EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step57EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EarlyControl_logged : s2Step57EarlyControlPlan.Logged s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 817 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step57EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step57EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step57EarlyControl_zero
  · exact s2Step57EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step57EarlyControl_flags
  · exact s2Step57EarlyControl_fit
  · exact s2Step57EarlyControl_history
  · exact s2Step57EarlyControl_sigma
  · exact s2Step57EarlyControl_branch
theorem s2Step57EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 817 25 s2Step57EarlyControlLog=some s2Step57EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step57EarlyControlPlan s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 817 25 s2Step57EarlyControl_logged
theorem s2Step57EarlyControl_checked : (compileHmrEarlyControlLog s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 817 25 s2Step57EarlyControlLog).map (fun P => P.outputArena.live.card)=some 850 := by
  rw [s2Step57EarlyControl_plan_checked]
  decide +kernel

def s2Step58EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (816 ≤ q ∧ q < 817) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step58EarlyControlLog : HmrEarlyControlLog := ⟨[792, 790, 817, 820, 814],[800],[807],[812, 844, 845, 846, 847, 849],[]⟩
def s2Step58EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,817⟩,⟨⟨776,false⟩,820⟩,⟨⟨777,false⟩,814⟩]⟩
def s2Step58EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step58EarlyControlPositiveArena,[800],s2Step58EarlyControlEqualityArena,[807],⟨⟨815,false⟩,[⟨⟨800,false⟩,807⟩]⟩⟩
def s2Step58EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step58EarlyControlZeroArena,s2Step58EarlyControlZeroPlan,s2Step58EarlyControlClassPlan,s2Step58EarlyControlFlagArena,s2Step58EarlyControlFittedArena,s2Step58EarlyControlHistoryArena,s2Step58EarlyControlSigmaArena,s2Step58EarlyControlOutputArena,s2Step58EarlyControlLog⟩
private theorem s2Step58EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_zeroBorrow : s2Step58EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step58EarlyControlLog.zeroWork=some s2Step58EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step58EarlyControlZeroArena,s2Step58EarlyControlArena,s2Step58EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step58EarlyControl_zero : compileHmrEqualityLog s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step58EarlyControlLog.zeroWork=some (s2Step58EarlyControlZeroArena,s2Step58EarlyControlLog.zeroWork,s2Step58EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step58EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step58EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step58EarlyControl_positiveBorrow : s2Step58EarlyControlZeroArena.checkBorrow (1) s2Step58EarlyControlLog.positiveWork=some s2Step58EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step58EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step58EarlyControlPositiveArena,s2Step58EarlyControlZeroArena,s2Step58EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step58EarlyControl_classEqualityOwned : ([815, 800] : List Wire).toFinset⊆s2Step58EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlPositiveArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_classEqualityBorrow : s2Step58EarlyControlPositiveArena.checkBorrow (([815, 800] : List Wire).length-1) s2Step58EarlyControlLog.classWork=some s2Step58EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step58EarlyControlPositiveArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step58EarlyControlEqualityArena,s2Step58EarlyControlPositiveArena,s2Step58EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step58EarlyControl_classEquality : compileHmrEqualityLog s2Step58EarlyControlPositiveArena [815, 800] 0 s2Step58EarlyControlLog.classWork=some (s2Step58EarlyControlEqualityArena,s2Step58EarlyControlLog.classWork,s2Step58EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step58EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step58EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step58EarlyControl_classOwned : ([777, 814, 815] : List Wire).toFinset⊆s2Step58EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EarlyControl_class : compileHmrSourceClassLog s2Step58EarlyControlZeroArena false 777 s2Step58EarlyControlZeroPlan.top 0 815 s2Step58EarlyControlLog.positiveWork s2Step58EarlyControlLog.classWork=some s2Step58EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step58EarlyControlClassPlan s2Step58EarlyControlZeroArena false 777 s2Step58EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step58EarlyControl_classOwned
  · exact s2Step58EarlyControl_positiveBorrow
  · exact s2Step58EarlyControl_classEquality
private theorem s2Step58EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s2Step58EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlEqualityArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_flagsBorrow : s2Step58EarlyControlEqualityArena.checkBorrow (6) s2Step58EarlyControlLog.flagWork=some s2Step58EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step58EarlyControlEqualityArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step58EarlyControlFlagArena,s2Step58EarlyControlEqualityArena,s2Step58EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step58EarlyControl_flags : compileHmrFlagsLog s2Step58EarlyControlClassPlan.equalityArena s2Step58EarlyControlClassPlan.equality.top 253 252 251 s2Step58EarlyControlLog.flagWork=some s2Step58EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step58EarlyControl_flagsOwned⟩
  · exact s2Step58EarlyControl_flagsBorrow
private theorem s2Step58EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step58EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlFlagArena (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_fitBorrow : s2Step58EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step58EarlyControlLog.recordFresh=some s2Step58EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step58EarlyControlFlagArena (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step58EarlyControlFittedArena,s2Step58EarlyControlFlagArena,s2Step58EarlyControlLog,arenaWires]
theorem s2Step58EarlyControl_fit : compileHmrRecordGrowLog s2Step58EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58EarlyControlLog.recordFresh=some s2Step58EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step58EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step58EarlyControl_fitBorrow
private theorem s2Step58EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_historyBorrow : s2Step58EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step58EarlyControlLog.recordFresh=some s2Step58EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step58EarlyControlHistoryArena,s2Step58EarlyControlArena,s2Step58EarlyControlLog,arenaWires]
theorem s2Step58EarlyControl_history : compileHmrRecordGrowLog s2Step58EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58EarlyControlLog.recordFresh=some s2Step58EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step58EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step58EarlyControl_historyBorrow
private theorem s2Step58EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step58EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step58EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_sigmaRelease : s2Step58EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step58EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step58EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step58EarlyControlSigmaArena,s2Step58EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step58EarlyControl_branchOwned : ([816] : List Wire).toFinset⊆s2Step58EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EarlyControl_branch : compileHmrBranchRetirement s2Step58EarlyControlSigmaArena 816=some s2Step58EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step58EarlyControl_branchOwned
  · ext q
    simp [s2Step58EarlyControlOutputArena,s2Step58EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step58EarlyControl_sigma : compileHmrSigmaDropLog s2Step58EarlyControlHistoryArena false 0 0 254 815 []=some s2Step58EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step58EarlyControl_sigmaOwned⟩
  · exact s2Step58EarlyControl_sigmaRelease
theorem s2Step58EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step58EarlyControlLog.zeroWork).map Prod.snd=some (s2Step58EarlyControlLog.zeroWork,s2Step58EarlyControlZeroPlan) := by
  rw [s2Step58EarlyControl_zero]
  rfl
theorem s2Step58EarlyControl_classProjection : (compileHmrSourceClassLog s2Step58EarlyControlZeroArena false 777 s2Step58EarlyControlZeroPlan.top 0 815 s2Step58EarlyControlLog.positiveWork s2Step58EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step58EarlyControlClassPlan.positiveWork,s2Step58EarlyControlClassPlan.equalityWork,s2Step58EarlyControlClassPlan.equality) := by
  rw [s2Step58EarlyControl_class]
  rfl
theorem s2Step58EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step58EarlyControlClassPlan.equalityArena s2Step58EarlyControlClassPlan.equality.top 253 252 251 s2Step58EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step58EarlyControl_flags]
  rfl
theorem s2Step58EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step58EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step58EarlyControl_fit]
  rfl
theorem s2Step58EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step58EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step58EarlyControl_history]
  rfl
theorem s2Step58EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step58EarlyControlHistoryArena false 0 0 254 815 []).map (fun _ => true)=some true := by
  rw [s2Step58EarlyControl_sigma]
  rfl
theorem s2Step58EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step58EarlyControlSigmaArena 816).map (fun _ => true)=some true := by
  rw [s2Step58EarlyControl_branch]
  rfl
private theorem s2Step58EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step58EarlyControl_entryRecordOwned : ([816, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EarlyControl_logged : s2Step58EarlyControlPlan.Logged s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 816 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step58EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step58EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step58EarlyControl_zero
  · exact s2Step58EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step58EarlyControl_flags
  · exact s2Step58EarlyControl_fit
  · exact s2Step58EarlyControl_history
  · exact s2Step58EarlyControl_sigma
  · exact s2Step58EarlyControl_branch
theorem s2Step58EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 816 25 s2Step58EarlyControlLog=some s2Step58EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step58EarlyControlPlan s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 816 25 s2Step58EarlyControl_logged
theorem s2Step58EarlyControl_checked : (compileHmrEarlyControlLog s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 254 253 252 251 816 25 s2Step58EarlyControlLog).map (fun P => P.outputArena.live.card)=some 851 := by
  rw [s2Step58EarlyControl_plan_checked]
  decide +kernel

def s2Step59EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 868)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 868)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step59EarlyControlLog : HmrEarlyControlLog := ⟨[814, 820, 816, 817, 807],[812],[844],[845, 846, 847, 849, 851, 867],[]⟩
def s2Step59EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨774,false⟩,820⟩,⟨⟨775,false⟩,816⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,807⟩]⟩
def s2Step59EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step59EarlyControlPositiveArena,[812],s2Step59EarlyControlEqualityArena,[844],⟨⟨792,false⟩,[⟨⟨812,false⟩,844⟩]⟩⟩
def s2Step59EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step59EarlyControlZeroArena,s2Step59EarlyControlZeroPlan,s2Step59EarlyControlClassPlan,s2Step59EarlyControlFlagArena,s2Step59EarlyControlFittedArena,s2Step59EarlyControlHistoryArena,s2Step59EarlyControlSigmaArena,s2Step59EarlyControlOutputArena,s2Step59EarlyControlLog⟩
private theorem s2Step59EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_zeroBorrow : s2Step59EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step59EarlyControlLog.zeroWork=some s2Step59EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step59EarlyControlZeroArena,s2Step59EarlyControlArena,s2Step59EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step59EarlyControl_zero : compileHmrEqualityLog s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step59EarlyControlLog.zeroWork=some (s2Step59EarlyControlZeroArena,s2Step59EarlyControlLog.zeroWork,s2Step59EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step59EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step59EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step59EarlyControl_positiveBorrow : s2Step59EarlyControlZeroArena.checkBorrow (1) s2Step59EarlyControlLog.positiveWork=some s2Step59EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step59EarlyControlZeroArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step59EarlyControlPositiveArena,s2Step59EarlyControlZeroArena,s2Step59EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step59EarlyControl_classEqualityOwned : ([792, 812] : List Wire).toFinset⊆s2Step59EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_classEqualityBorrow : s2Step59EarlyControlPositiveArena.checkBorrow (([792, 812] : List Wire).length-1) s2Step59EarlyControlLog.classWork=some s2Step59EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step59EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step59EarlyControlEqualityArena,s2Step59EarlyControlPositiveArena,s2Step59EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step59EarlyControl_classEquality : compileHmrEqualityLog s2Step59EarlyControlPositiveArena [792, 812] 0 s2Step59EarlyControlLog.classWork=some (s2Step59EarlyControlEqualityArena,s2Step59EarlyControlLog.classWork,s2Step59EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step59EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step59EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step59EarlyControl_classOwned : ([777, 807, 792] : List Wire).toFinset⊆s2Step59EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlZeroArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EarlyControl_class : compileHmrSourceClassLog s2Step59EarlyControlZeroArena false 777 s2Step59EarlyControlZeroPlan.top 0 792 s2Step59EarlyControlLog.positiveWork s2Step59EarlyControlLog.classWork=some s2Step59EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step59EarlyControlClassPlan s2Step59EarlyControlZeroArena false 777 s2Step59EarlyControlZeroPlan.top 0 792
  constructor
  · decide +kernel
  · exact s2Step59EarlyControl_classOwned
  · exact s2Step59EarlyControl_positiveBorrow
  · exact s2Step59EarlyControl_classEquality
private theorem s2Step59EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step59EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_flagsBorrow : s2Step59EarlyControlEqualityArena.checkBorrow (6) s2Step59EarlyControlLog.flagWork=some s2Step59EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step59EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step59EarlyControlFlagArena,s2Step59EarlyControlEqualityArena,s2Step59EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step59EarlyControl_flags : compileHmrFlagsLog s2Step59EarlyControlClassPlan.equalityArena s2Step59EarlyControlClassPlan.equality.top 253 252 251 s2Step59EarlyControlLog.flagWork=some s2Step59EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step59EarlyControl_flagsOwned⟩
  · exact s2Step59EarlyControl_flagsBorrow
private theorem s2Step59EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step59EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlFlagArena (fun q => (0≤q ∧ q<868)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_fitBorrow : s2Step59EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step59EarlyControlLog.recordFresh=some s2Step59EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step59EarlyControlFlagArena (fun q => (0≤q ∧ q<868)) rfl
      decide +kernel
    · ext q
      simp [s2Step59EarlyControlFittedArena,s2Step59EarlyControlFlagArena,s2Step59EarlyControlLog,arenaWires]
theorem s2Step59EarlyControl_fit : compileHmrRecordGrowLog s2Step59EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59EarlyControlLog.recordFresh=some s2Step59EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step59EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step59EarlyControl_fitBorrow
private theorem s2Step59EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_historyBorrow : s2Step59EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step59EarlyControlLog.recordFresh=some s2Step59EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step59EarlyControlHistoryArena,s2Step59EarlyControlArena,s2Step59EarlyControlLog,arenaWires]
theorem s2Step59EarlyControl_history : compileHmrRecordGrowLog s2Step59EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59EarlyControlLog.recordFresh=some s2Step59EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step59EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step59EarlyControl_historyBorrow
private theorem s2Step59EarlyControl_sigmaOwned : ([254, 792] : List Wire).toFinset⊆s2Step59EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlHistoryArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_sigmaReleaseOwned : ([792] : List Wire).toFinset⊆s2Step59EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlHistoryArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_sigmaRelease : s2Step59EarlyControlHistoryArena.release {792} (fun _ => false)=some s2Step59EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step59EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step59EarlyControlSigmaArena,s2Step59EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step59EarlyControl_branchOwned : ([790] : List Wire).toFinset⊆s2Step59EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EarlyControl_branch : compileHmrBranchRetirement s2Step59EarlyControlSigmaArena 790=some s2Step59EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step59EarlyControl_branchOwned
  · ext q
    simp [s2Step59EarlyControlOutputArena,s2Step59EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step59EarlyControl_sigma : compileHmrSigmaDropLog s2Step59EarlyControlHistoryArena false 0 0 254 792 []=some s2Step59EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step59EarlyControl_sigmaOwned⟩
  · exact s2Step59EarlyControl_sigmaRelease
theorem s2Step59EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step59EarlyControlLog.zeroWork).map Prod.snd=some (s2Step59EarlyControlLog.zeroWork,s2Step59EarlyControlZeroPlan) := by
  rw [s2Step59EarlyControl_zero]
  rfl
theorem s2Step59EarlyControl_classProjection : (compileHmrSourceClassLog s2Step59EarlyControlZeroArena false 777 s2Step59EarlyControlZeroPlan.top 0 792 s2Step59EarlyControlLog.positiveWork s2Step59EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step59EarlyControlClassPlan.positiveWork,s2Step59EarlyControlClassPlan.equalityWork,s2Step59EarlyControlClassPlan.equality) := by
  rw [s2Step59EarlyControl_class]
  rfl
theorem s2Step59EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step59EarlyControlClassPlan.equalityArena s2Step59EarlyControlClassPlan.equality.top 253 252 251 s2Step59EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step59EarlyControl_flags]
  rfl
theorem s2Step59EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step59EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step59EarlyControl_fit]
  rfl
theorem s2Step59EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step59EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step59EarlyControl_history]
  rfl
theorem s2Step59EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step59EarlyControlHistoryArena false 0 0 254 792 []).map (fun _ => true)=some true := by
  rw [s2Step59EarlyControl_sigma]
  rfl
theorem s2Step59EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step59EarlyControlSigmaArena 790).map (fun _ => true)=some true := by
  rw [s2Step59EarlyControl_branch]
  rfl
private theorem s2Step59EarlyControl_entrySigmaOwned : ([792, 254] : List Wire).toFinset⊆s2Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step59EarlyControl_entryRecordOwned : ([790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EarlyControl_logged : s2Step59EarlyControlPlan.Logged s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 792 254 253 252 251 790 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step59EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step59EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step59EarlyControl_zero
  · exact s2Step59EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step59EarlyControl_flags
  · exact s2Step59EarlyControl_fit
  · exact s2Step59EarlyControl_history
  · exact s2Step59EarlyControl_sigma
  · exact s2Step59EarlyControl_branch
theorem s2Step59EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 792 254 253 252 251 790 25 s2Step59EarlyControlLog=some s2Step59EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step59EarlyControlPlan s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 792 254 253 252 251 790 25 s2Step59EarlyControl_logged
theorem s2Step59EarlyControl_checked : (compileHmrEarlyControlLog s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 792 254 253 252 251 790 25 s2Step59EarlyControlLog).map (fun P => P.outputArena.live.card)=some 853 := by
  rw [s2Step59EarlyControl_plan_checked]
  decide +kernel

def s2Step60EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 869)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 869)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step60EarlyControlLog : HmrEarlyControlLog := ⟨[822, 807, 817, 790, 816],[844],[845],[846, 847, 849, 851, 867, 868],[]⟩
def s2Step60EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,817⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,816⟩]⟩
def s2Step60EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step60EarlyControlPositiveArena,[844],s2Step60EarlyControlEqualityArena,[845],⟨⟨814,false⟩,[⟨⟨844,false⟩,845⟩]⟩⟩
def s2Step60EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step60EarlyControlZeroArena,s2Step60EarlyControlZeroPlan,s2Step60EarlyControlClassPlan,s2Step60EarlyControlFlagArena,s2Step60EarlyControlFittedArena,s2Step60EarlyControlHistoryArena,s2Step60EarlyControlSigmaArena,s2Step60EarlyControlOutputArena,s2Step60EarlyControlLog⟩
private theorem s2Step60EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_zeroBorrow : s2Step60EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step60EarlyControlLog.zeroWork=some s2Step60EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step60EarlyControlZeroArena,s2Step60EarlyControlArena,s2Step60EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step60EarlyControl_zero : compileHmrEqualityLog s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step60EarlyControlLog.zeroWork=some (s2Step60EarlyControlZeroArena,s2Step60EarlyControlLog.zeroWork,s2Step60EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step60EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step60EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step60EarlyControl_positiveBorrow : s2Step60EarlyControlZeroArena.checkBorrow (1) s2Step60EarlyControlLog.positiveWork=some s2Step60EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step60EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step60EarlyControlPositiveArena,s2Step60EarlyControlZeroArena,s2Step60EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step60EarlyControl_classEqualityOwned : ([814, 844] : List Wire).toFinset⊆s2Step60EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_classEqualityBorrow : s2Step60EarlyControlPositiveArena.checkBorrow (([814, 844] : List Wire).length-1) s2Step60EarlyControlLog.classWork=some s2Step60EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step60EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step60EarlyControlEqualityArena,s2Step60EarlyControlPositiveArena,s2Step60EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step60EarlyControl_classEquality : compileHmrEqualityLog s2Step60EarlyControlPositiveArena [814, 844] 0 s2Step60EarlyControlLog.classWork=some (s2Step60EarlyControlEqualityArena,s2Step60EarlyControlLog.classWork,s2Step60EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step60EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step60EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step60EarlyControl_classOwned : ([777, 816, 814] : List Wire).toFinset⊆s2Step60EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EarlyControl_class : compileHmrSourceClassLog s2Step60EarlyControlZeroArena false 777 s2Step60EarlyControlZeroPlan.top 0 814 s2Step60EarlyControlLog.positiveWork s2Step60EarlyControlLog.classWork=some s2Step60EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step60EarlyControlClassPlan s2Step60EarlyControlZeroArena false 777 s2Step60EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step60EarlyControl_classOwned
  · exact s2Step60EarlyControl_positiveBorrow
  · exact s2Step60EarlyControl_classEquality
private theorem s2Step60EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step60EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_flagsBorrow : s2Step60EarlyControlEqualityArena.checkBorrow (6) s2Step60EarlyControlLog.flagWork=some s2Step60EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step60EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step60EarlyControlFlagArena,s2Step60EarlyControlEqualityArena,s2Step60EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step60EarlyControl_flags : compileHmrFlagsLog s2Step60EarlyControlClassPlan.equalityArena s2Step60EarlyControlClassPlan.equality.top 253 252 251 s2Step60EarlyControlLog.flagWork=some s2Step60EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step60EarlyControl_flagsOwned⟩
  · exact s2Step60EarlyControl_flagsBorrow
private theorem s2Step60EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step60EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlFlagArena (fun q => (0≤q ∧ q<869)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_fitBorrow : s2Step60EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step60EarlyControlLog.recordFresh=some s2Step60EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step60EarlyControlFlagArena (fun q => (0≤q ∧ q<869)) rfl
      decide +kernel
    · ext q
      simp [s2Step60EarlyControlFittedArena,s2Step60EarlyControlFlagArena,s2Step60EarlyControlLog,arenaWires]
theorem s2Step60EarlyControl_fit : compileHmrRecordGrowLog s2Step60EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60EarlyControlLog.recordFresh=some s2Step60EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step60EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step60EarlyControl_fitBorrow
private theorem s2Step60EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_historyBorrow : s2Step60EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step60EarlyControlLog.recordFresh=some s2Step60EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step60EarlyControlHistoryArena,s2Step60EarlyControlArena,s2Step60EarlyControlLog,arenaWires]
theorem s2Step60EarlyControl_history : compileHmrRecordGrowLog s2Step60EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60EarlyControlLog.recordFresh=some s2Step60EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step60EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step60EarlyControl_historyBorrow
private theorem s2Step60EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step60EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step60EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_sigmaRelease : s2Step60EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step60EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step60EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step60EarlyControlSigmaArena,s2Step60EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step60EarlyControl_branchOwned : ([820] : List Wire).toFinset⊆s2Step60EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EarlyControl_branch : compileHmrBranchRetirement s2Step60EarlyControlSigmaArena 820=some s2Step60EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step60EarlyControl_branchOwned
  · ext q
    simp [s2Step60EarlyControlOutputArena,s2Step60EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step60EarlyControl_sigma : compileHmrSigmaDropLog s2Step60EarlyControlHistoryArena false 0 0 254 814 []=some s2Step60EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step60EarlyControl_sigmaOwned⟩
  · exact s2Step60EarlyControl_sigmaRelease
theorem s2Step60EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step60EarlyControlLog.zeroWork).map Prod.snd=some (s2Step60EarlyControlLog.zeroWork,s2Step60EarlyControlZeroPlan) := by
  rw [s2Step60EarlyControl_zero]
  rfl
theorem s2Step60EarlyControl_classProjection : (compileHmrSourceClassLog s2Step60EarlyControlZeroArena false 777 s2Step60EarlyControlZeroPlan.top 0 814 s2Step60EarlyControlLog.positiveWork s2Step60EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step60EarlyControlClassPlan.positiveWork,s2Step60EarlyControlClassPlan.equalityWork,s2Step60EarlyControlClassPlan.equality) := by
  rw [s2Step60EarlyControl_class]
  rfl
theorem s2Step60EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step60EarlyControlClassPlan.equalityArena s2Step60EarlyControlClassPlan.equality.top 253 252 251 s2Step60EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step60EarlyControl_flags]
  rfl
theorem s2Step60EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step60EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step60EarlyControl_fit]
  rfl
theorem s2Step60EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step60EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step60EarlyControl_history]
  rfl
theorem s2Step60EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step60EarlyControlHistoryArena false 0 0 254 814 []).map (fun _ => true)=some true := by
  rw [s2Step60EarlyControl_sigma]
  rfl
theorem s2Step60EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step60EarlyControlSigmaArena 820).map (fun _ => true)=some true := by
  rw [s2Step60EarlyControl_branch]
  rfl
private theorem s2Step60EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step60EarlyControl_entryRecordOwned : ([820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EarlyControl_logged : s2Step60EarlyControlPlan.Logged s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 814 254 253 252 251 820 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step60EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step60EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step60EarlyControl_zero
  · exact s2Step60EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step60EarlyControl_flags
  · exact s2Step60EarlyControl_fit
  · exact s2Step60EarlyControl_history
  · exact s2Step60EarlyControl_sigma
  · exact s2Step60EarlyControl_branch
theorem s2Step60EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 814 254 253 252 251 820 25 s2Step60EarlyControlLog=some s2Step60EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step60EarlyControlPlan s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 814 254 253 252 251 820 25 s2Step60EarlyControl_logged
theorem s2Step60EarlyControl_checked : (compileHmrEarlyControlLog s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 814 254 253 252 251 820 25 s2Step60EarlyControlLog).map (fun P => P.outputArena.live.card)=some 854 := by
  rw [s2Step60EarlyControl_plan_checked]
  decide +kernel

def s2Step61EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 868)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 868)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step61EarlyControlLog : HmrEarlyControlLog := ⟨[819, 822, 844, 845, 816],[820],[814],[790, 846, 847, 849, 851, 867],[]⟩
def s2Step61EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,844⟩,⟨⟨776,false⟩,845⟩,⟨⟨777,false⟩,816⟩]⟩
def s2Step61EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step61EarlyControlPositiveArena,[820],s2Step61EarlyControlEqualityArena,[814],⟨⟨807,false⟩,[⟨⟨820,false⟩,814⟩]⟩⟩
def s2Step61EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step61EarlyControlZeroArena,s2Step61EarlyControlZeroPlan,s2Step61EarlyControlClassPlan,s2Step61EarlyControlFlagArena,s2Step61EarlyControlFittedArena,s2Step61EarlyControlHistoryArena,s2Step61EarlyControlSigmaArena,s2Step61EarlyControlOutputArena,s2Step61EarlyControlLog⟩
private theorem s2Step61EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_zeroBorrow : s2Step61EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step61EarlyControlLog.zeroWork=some s2Step61EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step61EarlyControlZeroArena,s2Step61EarlyControlArena,s2Step61EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step61EarlyControl_zero : compileHmrEqualityLog s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step61EarlyControlLog.zeroWork=some (s2Step61EarlyControlZeroArena,s2Step61EarlyControlLog.zeroWork,s2Step61EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step61EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step61EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step61EarlyControl_positiveBorrow : s2Step61EarlyControlZeroArena.checkBorrow (1) s2Step61EarlyControlLog.positiveWork=some s2Step61EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step61EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step61EarlyControlPositiveArena,s2Step61EarlyControlZeroArena,s2Step61EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step61EarlyControl_classEqualityOwned : ([807, 820] : List Wire).toFinset⊆s2Step61EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_classEqualityBorrow : s2Step61EarlyControlPositiveArena.checkBorrow (([807, 820] : List Wire).length-1) s2Step61EarlyControlLog.classWork=some s2Step61EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step61EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step61EarlyControlEqualityArena,s2Step61EarlyControlPositiveArena,s2Step61EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step61EarlyControl_classEquality : compileHmrEqualityLog s2Step61EarlyControlPositiveArena [807, 820] 0 s2Step61EarlyControlLog.classWork=some (s2Step61EarlyControlEqualityArena,s2Step61EarlyControlLog.classWork,s2Step61EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step61EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step61EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step61EarlyControl_classOwned : ([777, 816, 807] : List Wire).toFinset⊆s2Step61EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EarlyControl_class : compileHmrSourceClassLog s2Step61EarlyControlZeroArena false 777 s2Step61EarlyControlZeroPlan.top 0 807 s2Step61EarlyControlLog.positiveWork s2Step61EarlyControlLog.classWork=some s2Step61EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step61EarlyControlClassPlan s2Step61EarlyControlZeroArena false 777 s2Step61EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s2Step61EarlyControl_classOwned
  · exact s2Step61EarlyControl_positiveBorrow
  · exact s2Step61EarlyControl_classEquality
private theorem s2Step61EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step61EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_flagsBorrow : s2Step61EarlyControlEqualityArena.checkBorrow (6) s2Step61EarlyControlLog.flagWork=some s2Step61EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step61EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step61EarlyControlFlagArena,s2Step61EarlyControlEqualityArena,s2Step61EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step61EarlyControl_flags : compileHmrFlagsLog s2Step61EarlyControlClassPlan.equalityArena s2Step61EarlyControlClassPlan.equality.top 253 252 251 s2Step61EarlyControlLog.flagWork=some s2Step61EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step61EarlyControl_flagsOwned⟩
  · exact s2Step61EarlyControl_flagsBorrow
private theorem s2Step61EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step61EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlFlagArena (fun q => (0≤q ∧ q<868)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_fitBorrow : s2Step61EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step61EarlyControlLog.recordFresh=some s2Step61EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step61EarlyControlFlagArena (fun q => (0≤q ∧ q<868)) rfl
      decide +kernel
    · ext q
      simp [s2Step61EarlyControlFittedArena,s2Step61EarlyControlFlagArena,s2Step61EarlyControlLog,arenaWires]
theorem s2Step61EarlyControl_fit : compileHmrRecordGrowLog s2Step61EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61EarlyControlLog.recordFresh=some s2Step61EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step61EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step61EarlyControl_fitBorrow
private theorem s2Step61EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_historyBorrow : s2Step61EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step61EarlyControlLog.recordFresh=some s2Step61EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step61EarlyControlHistoryArena,s2Step61EarlyControlArena,s2Step61EarlyControlLog,arenaWires]
theorem s2Step61EarlyControl_history : compileHmrRecordGrowLog s2Step61EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61EarlyControlLog.recordFresh=some s2Step61EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step61EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step61EarlyControl_historyBorrow
private theorem s2Step61EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s2Step61EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s2Step61EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_sigmaRelease : s2Step61EarlyControlHistoryArena.release {807} (fun _ => false)=some s2Step61EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step61EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step61EarlyControlSigmaArena,s2Step61EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step61EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step61EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EarlyControl_branch : compileHmrBranchRetirement s2Step61EarlyControlSigmaArena 817=some s2Step61EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step61EarlyControl_branchOwned
  · ext q
    simp [s2Step61EarlyControlOutputArena,s2Step61EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step61EarlyControl_sigma : compileHmrSigmaDropLog s2Step61EarlyControlHistoryArena false 0 0 254 807 []=some s2Step61EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step61EarlyControl_sigmaOwned⟩
  · exact s2Step61EarlyControl_sigmaRelease
theorem s2Step61EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step61EarlyControlLog.zeroWork).map Prod.snd=some (s2Step61EarlyControlLog.zeroWork,s2Step61EarlyControlZeroPlan) := by
  rw [s2Step61EarlyControl_zero]
  rfl
theorem s2Step61EarlyControl_classProjection : (compileHmrSourceClassLog s2Step61EarlyControlZeroArena false 777 s2Step61EarlyControlZeroPlan.top 0 807 s2Step61EarlyControlLog.positiveWork s2Step61EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step61EarlyControlClassPlan.positiveWork,s2Step61EarlyControlClassPlan.equalityWork,s2Step61EarlyControlClassPlan.equality) := by
  rw [s2Step61EarlyControl_class]
  rfl
theorem s2Step61EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step61EarlyControlClassPlan.equalityArena s2Step61EarlyControlClassPlan.equality.top 253 252 251 s2Step61EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step61EarlyControl_flags]
  rfl
theorem s2Step61EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step61EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step61EarlyControl_fit]
  rfl
theorem s2Step61EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step61EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step61EarlyControl_history]
  rfl
theorem s2Step61EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step61EarlyControlHistoryArena false 0 0 254 807 []).map (fun _ => true)=some true := by
  rw [s2Step61EarlyControl_sigma]
  rfl
theorem s2Step61EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step61EarlyControlSigmaArena 817).map (fun _ => true)=some true := by
  rw [s2Step61EarlyControl_branch]
  rfl
private theorem s2Step61EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s2Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step61EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EarlyControl_logged : s2Step61EarlyControlPlan.Logged s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 807 254 253 252 251 817 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step61EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step61EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step61EarlyControl_zero
  · exact s2Step61EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step61EarlyControl_flags
  · exact s2Step61EarlyControl_fit
  · exact s2Step61EarlyControl_history
  · exact s2Step61EarlyControl_sigma
  · exact s2Step61EarlyControl_branch
theorem s2Step61EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 807 254 253 252 251 817 25 s2Step61EarlyControlLog=some s2Step61EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step61EarlyControlPlan s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 807 254 253 252 251 817 25 s2Step61EarlyControl_logged
theorem s2Step61EarlyControl_checked : (compileHmrEarlyControlLog s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 807 254 253 252 251 817 25 s2Step61EarlyControlLog).map (fun P => P.outputArena.live.card)=some 853 := by
  rw [s2Step61EarlyControl_plan_checked]
  decide +kernel

def s2Step62EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 869)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (822 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step62EarlyControlLog : HmrEarlyControlLog := ⟨[821, 816, 845, 817, 844],[814],[790],[846, 847, 849, 851, 867, 868],[869]⟩
def s2Step62EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨774,false⟩,816⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,844⟩]⟩
def s2Step62EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step62EarlyControlPositiveArena,[814],s2Step62EarlyControlEqualityArena,[790],⟨⟨819,false⟩,[⟨⟨814,false⟩,790⟩]⟩⟩
def s2Step62EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step62EarlyControlZeroArena,s2Step62EarlyControlZeroPlan,s2Step62EarlyControlClassPlan,s2Step62EarlyControlFlagArena,s2Step62EarlyControlFittedArena,s2Step62EarlyControlHistoryArena,s2Step62EarlyControlSigmaArena,s2Step62EarlyControlOutputArena,s2Step62EarlyControlLog⟩
private theorem s2Step62EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_zeroBorrow : s2Step62EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step62EarlyControlLog.zeroWork=some s2Step62EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step62EarlyControlZeroArena,s2Step62EarlyControlArena,s2Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step62EarlyControl_zero : compileHmrEqualityLog s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step62EarlyControlLog.zeroWork=some (s2Step62EarlyControlZeroArena,s2Step62EarlyControlLog.zeroWork,s2Step62EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step62EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step62EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step62EarlyControl_positiveBorrow : s2Step62EarlyControlZeroArena.checkBorrow (1) s2Step62EarlyControlLog.positiveWork=some s2Step62EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step62EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step62EarlyControlPositiveArena,s2Step62EarlyControlZeroArena,s2Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step62EarlyControl_classEqualityOwned : ([819, 814] : List Wire).toFinset⊆s2Step62EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_classEqualityBorrow : s2Step62EarlyControlPositiveArena.checkBorrow (([819, 814] : List Wire).length-1) s2Step62EarlyControlLog.classWork=some s2Step62EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step62EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step62EarlyControlEqualityArena,s2Step62EarlyControlPositiveArena,s2Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step62EarlyControl_classEquality : compileHmrEqualityLog s2Step62EarlyControlPositiveArena [819, 814] 0 s2Step62EarlyControlLog.classWork=some (s2Step62EarlyControlEqualityArena,s2Step62EarlyControlLog.classWork,s2Step62EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step62EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step62EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step62EarlyControl_classOwned : ([777, 844, 819] : List Wire).toFinset⊆s2Step62EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62EarlyControl_class : compileHmrSourceClassLog s2Step62EarlyControlZeroArena false 777 s2Step62EarlyControlZeroPlan.top 0 819 s2Step62EarlyControlLog.positiveWork s2Step62EarlyControlLog.classWork=some s2Step62EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step62EarlyControlClassPlan s2Step62EarlyControlZeroArena false 777 s2Step62EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step62EarlyControl_classOwned
  · exact s2Step62EarlyControl_positiveBorrow
  · exact s2Step62EarlyControl_classEquality
private theorem s2Step62EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step62EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_flagsBorrow : s2Step62EarlyControlEqualityArena.checkBorrow (6) s2Step62EarlyControlLog.flagWork=some s2Step62EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step62EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step62EarlyControlFlagArena,s2Step62EarlyControlEqualityArena,s2Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step62EarlyControl_flags : compileHmrFlagsLog s2Step62EarlyControlClassPlan.equalityArena s2Step62EarlyControlClassPlan.equality.top 253 252 251 s2Step62EarlyControlLog.flagWork=some s2Step62EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step62EarlyControl_flagsOwned⟩
  · exact s2Step62EarlyControl_flagsBorrow
private theorem s2Step62EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step62EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlFlagArena (fun q => (0≤q ∧ q<869)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_fitBorrow : s2Step62EarlyControlFlagArena.checkBorrow ((26-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step62EarlyControlLog.recordFresh=some s2Step62EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step62EarlyControlFlagArena (fun q => (0≤q ∧ q<869)) rfl
      decide +kernel
    · ext q
      simp [s2Step62EarlyControlFittedArena,s2Step62EarlyControlFlagArena,s2Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step62EarlyControl_fit : compileHmrRecordGrowLog s2Step62EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62EarlyControlLog.recordFresh=some s2Step62EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step62EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step62EarlyControl_fitBorrow
private theorem s2Step62EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_historyBorrow : s2Step62EarlyControlArena.checkBorrow ((26-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).length)) s2Step62EarlyControlLog.recordFresh=some s2Step62EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step62EarlyControlHistoryArena,s2Step62EarlyControlArena,s2Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step62EarlyControl_history : compileHmrRecordGrowLog s2Step62EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62EarlyControlLog.recordFresh=some s2Step62EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step62EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step62EarlyControl_historyBorrow
private theorem s2Step62EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step62EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step62EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_sigmaRelease : s2Step62EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step62EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step62EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step62EarlyControlSigmaArena,s2Step62EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step62EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s2Step62EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step62EarlyControl_branch : compileHmrBranchRetirement s2Step62EarlyControlSigmaArena 822=some s2Step62EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step62EarlyControl_branchOwned
  · ext q
    simp [s2Step62EarlyControlOutputArena,s2Step62EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step62EarlyControl_sigma : compileHmrSigmaDropLog s2Step62EarlyControlHistoryArena false 0 0 254 819 []=some s2Step62EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step62EarlyControl_sigmaOwned⟩
  · exact s2Step62EarlyControl_sigmaRelease
theorem s2Step62EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step62EarlyControlLog.zeroWork).map Prod.snd=some (s2Step62EarlyControlLog.zeroWork,s2Step62EarlyControlZeroPlan) := by
  rw [s2Step62EarlyControl_zero]
  rfl
theorem s2Step62EarlyControl_classProjection : (compileHmrSourceClassLog s2Step62EarlyControlZeroArena false 777 s2Step62EarlyControlZeroPlan.top 0 819 s2Step62EarlyControlLog.positiveWork s2Step62EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step62EarlyControlClassPlan.positiveWork,s2Step62EarlyControlClassPlan.equalityWork,s2Step62EarlyControlClassPlan.equality) := by
  rw [s2Step62EarlyControl_class]
  rfl
theorem s2Step62EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step62EarlyControlClassPlan.equalityArena s2Step62EarlyControlClassPlan.equality.top 253 252 251 s2Step62EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step62EarlyControl_flags]
  rfl
theorem s2Step62EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step62EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step62EarlyControl_fit]
  rfl
theorem s2Step62EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step62EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step62EarlyControl_history]
  rfl
theorem s2Step62EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step62EarlyControlHistoryArena false 0 0 254 819 []).map (fun _ => true)=some true := by
  rw [s2Step62EarlyControl_sigma]
  rfl
theorem s2Step62EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step62EarlyControlSigmaArena 822).map (fun _ => true)=some true := by
  rw [s2Step62EarlyControl_branch]
  rfl
private theorem s2Step62EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step62EarlyControl_entryRecordOwned : ([822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] : List Wire).toFinset⊆s2Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62EarlyControl_logged : s2Step62EarlyControlPlan.Logged s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 819 254 253 252 251 822 26 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step62EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step62EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step62EarlyControl_zero
  · exact s2Step62EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step62EarlyControl_flags
  · exact s2Step62EarlyControl_fit
  · exact s2Step62EarlyControl_history
  · exact s2Step62EarlyControl_sigma
  · exact s2Step62EarlyControl_branch
theorem s2Step62EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 819 254 253 252 251 822 26 s2Step62EarlyControlLog=some s2Step62EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step62EarlyControlPlan s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 819 254 253 252 251 822 26 s2Step62EarlyControl_logged
theorem s2Step62EarlyControl_checked : (compileHmrEarlyControlLog s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 819 254 253 252 251 822 26 s2Step62EarlyControlLog).map (fun P => P.outputArena.live.card)=some 855 := by
  rw [s2Step62EarlyControl_plan_checked]
  decide +kernel

def s2Step63EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 871)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 872)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870) ∨ (871 ≤ q ∧ q < 872)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 822) ∨ (823 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870) ∨ (871 ≤ q ∧ q < 872)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 816) ∨ (818 ≤ q ∧ q < 819) ∨ (820 ≤ q ∧ q < 821) ∨ (823 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867) ∨ (869 ≤ q ∧ q < 870) ∨ (871 ≤ q ∧ q < 872)),Finset.filter_subset _ _⟩

def s2Step63EarlyControlLog : HmrEarlyControlLog := ⟨[822, 817, 845, 816, 814],[790],[846],[847, 849, 851, 867, 868, 870],[871]⟩
def s2Step63EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,845⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,814⟩]⟩
def s2Step63EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step63EarlyControlPositiveArena,[790],s2Step63EarlyControlEqualityArena,[846],⟨⟨819,false⟩,[⟨⟨790,false⟩,846⟩]⟩⟩
def s2Step63EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step63EarlyControlZeroArena,s2Step63EarlyControlZeroPlan,s2Step63EarlyControlClassPlan,s2Step63EarlyControlFlagArena,s2Step63EarlyControlFittedArena,s2Step63EarlyControlHistoryArena,s2Step63EarlyControlSigmaArena,s2Step63EarlyControlOutputArena,s2Step63EarlyControlLog⟩
private theorem s2Step63EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_zeroBorrow : s2Step63EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step63EarlyControlLog.zeroWork=some s2Step63EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
      decide +kernel
    · ext q
      simp [s2Step63EarlyControlZeroArena,s2Step63EarlyControlArena,s2Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step63EarlyControl_zero : compileHmrEqualityLog s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step63EarlyControlLog.zeroWork=some (s2Step63EarlyControlZeroArena,s2Step63EarlyControlLog.zeroWork,s2Step63EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step63EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step63EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step63EarlyControl_positiveBorrow : s2Step63EarlyControlZeroArena.checkBorrow (1) s2Step63EarlyControlLog.positiveWork=some s2Step63EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step63EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
      decide +kernel
    · ext q
      simp [s2Step63EarlyControlPositiveArena,s2Step63EarlyControlZeroArena,s2Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step63EarlyControl_classEqualityOwned : ([819, 790] : List Wire).toFinset⊆s2Step63EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_classEqualityBorrow : s2Step63EarlyControlPositiveArena.checkBorrow (([819, 790] : List Wire).length-1) s2Step63EarlyControlLog.classWork=some s2Step63EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step63EarlyControlPositiveArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
      decide +kernel
    · ext q
      simp [s2Step63EarlyControlEqualityArena,s2Step63EarlyControlPositiveArena,s2Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step63EarlyControl_classEquality : compileHmrEqualityLog s2Step63EarlyControlPositiveArena [819, 790] 0 s2Step63EarlyControlLog.classWork=some (s2Step63EarlyControlEqualityArena,s2Step63EarlyControlLog.classWork,s2Step63EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step63EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step63EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step63EarlyControl_classOwned : ([777, 814, 819] : List Wire).toFinset⊆s2Step63EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63EarlyControl_class : compileHmrSourceClassLog s2Step63EarlyControlZeroArena false 777 s2Step63EarlyControlZeroPlan.top 0 819 s2Step63EarlyControlLog.positiveWork s2Step63EarlyControlLog.classWork=some s2Step63EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step63EarlyControlClassPlan s2Step63EarlyControlZeroArena false 777 s2Step63EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step63EarlyControl_classOwned
  · exact s2Step63EarlyControl_positiveBorrow
  · exact s2Step63EarlyControl_classEquality
private theorem s2Step63EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step63EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_flagsBorrow : s2Step63EarlyControlEqualityArena.checkBorrow (6) s2Step63EarlyControlLog.flagWork=some s2Step63EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step63EarlyControlEqualityArena (fun q => (0≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
      decide +kernel
    · ext q
      simp [s2Step63EarlyControlFlagArena,s2Step63EarlyControlEqualityArena,s2Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step63EarlyControl_flags : compileHmrFlagsLog s2Step63EarlyControlClassPlan.equalityArena s2Step63EarlyControlClassPlan.equality.top 253 252 251 s2Step63EarlyControlLog.flagWork=some s2Step63EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step63EarlyControl_flagsOwned⟩
  · exact s2Step63EarlyControl_flagsBorrow
private theorem s2Step63EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] : List Wire).toFinset⊆s2Step63EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlFlagArena (fun q => (0≤q ∧ q<871)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_fitBorrow : s2Step63EarlyControlFlagArena.checkBorrow ((27-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] : List Wire).length)) s2Step63EarlyControlLog.recordFresh=some s2Step63EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step63EarlyControlFlagArena (fun q => (0≤q ∧ q<871)) rfl
      decide +kernel
    · ext q
      simp [s2Step63EarlyControlFittedArena,s2Step63EarlyControlFlagArena,s2Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step63EarlyControl_fit : compileHmrRecordGrowLog s2Step63EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63EarlyControlLog.recordFresh=some s2Step63EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step63EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step63EarlyControl_fitBorrow
private theorem s2Step63EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] : List Wire).toFinset⊆s2Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_historyBorrow : s2Step63EarlyControlArena.checkBorrow ((27-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] : List Wire).length)) s2Step63EarlyControlLog.recordFresh=some s2Step63EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
      decide +kernel
    · ext q
      simp [s2Step63EarlyControlHistoryArena,s2Step63EarlyControlArena,s2Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step63EarlyControl_history : compileHmrRecordGrowLog s2Step63EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63EarlyControlLog.recordFresh=some s2Step63EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step63EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step63EarlyControl_historyBorrow
private theorem s2Step63EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step63EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step63EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_sigmaRelease : s2Step63EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step63EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step63EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step63EarlyControlSigmaArena,s2Step63EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step63EarlyControl_branchOwned : ([821] : List Wire).toFinset⊆s2Step63EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870) ∨ (871≤q ∧ q<872)) rfl
  decide +kernel
theorem s2Step63EarlyControl_branch : compileHmrBranchRetirement s2Step63EarlyControlSigmaArena 821=some s2Step63EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step63EarlyControl_branchOwned
  · ext q
    simp [s2Step63EarlyControlOutputArena,s2Step63EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step63EarlyControl_sigma : compileHmrSigmaDropLog s2Step63EarlyControlHistoryArena false 0 0 254 819 []=some s2Step63EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step63EarlyControl_sigmaOwned⟩
  · exact s2Step63EarlyControl_sigmaRelease
theorem s2Step63EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step63EarlyControlLog.zeroWork).map Prod.snd=some (s2Step63EarlyControlLog.zeroWork,s2Step63EarlyControlZeroPlan) := by
  rw [s2Step63EarlyControl_zero]
  rfl
theorem s2Step63EarlyControl_classProjection : (compileHmrSourceClassLog s2Step63EarlyControlZeroArena false 777 s2Step63EarlyControlZeroPlan.top 0 819 s2Step63EarlyControlLog.positiveWork s2Step63EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step63EarlyControlClassPlan.positiveWork,s2Step63EarlyControlClassPlan.equalityWork,s2Step63EarlyControlClassPlan.equality) := by
  rw [s2Step63EarlyControl_class]
  rfl
theorem s2Step63EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step63EarlyControlClassPlan.equalityArena s2Step63EarlyControlClassPlan.equality.top 253 252 251 s2Step63EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step63EarlyControl_flags]
  rfl
theorem s2Step63EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step63EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step63EarlyControl_fit]
  rfl
theorem s2Step63EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step63EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step63EarlyControl_history]
  rfl
theorem s2Step63EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step63EarlyControlHistoryArena false 0 0 254 819 []).map (fun _ => true)=some true := by
  rw [s2Step63EarlyControl_sigma]
  rfl
theorem s2Step63EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step63EarlyControlSigmaArena 821).map (fun _ => true)=some true := by
  rw [s2Step63EarlyControl_branch]
  rfl
private theorem s2Step63EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
private theorem s2Step63EarlyControl_entryRecordOwned : ([821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] : List Wire).toFinset⊆s2Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63EarlyControl_logged : s2Step63EarlyControlPlan.Logged s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 777 819 254 253 252 251 821 27 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step63EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step63EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step63EarlyControl_zero
  · exact s2Step63EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step63EarlyControl_flags
  · exact s2Step63EarlyControl_fit
  · exact s2Step63EarlyControl_history
  · exact s2Step63EarlyControl_sigma
  · exact s2Step63EarlyControl_branch
theorem s2Step63EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 777 819 254 253 252 251 821 27 s2Step63EarlyControlLog=some s2Step63EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step63EarlyControlPlan s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 777 819 254 253 252 251 821 27 s2Step63EarlyControl_logged
theorem s2Step63EarlyControl_checked : (compileHmrEarlyControlLog s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 777 819 254 253 252 251 821 27 s2Step63EarlyControlLog).map (fun P => P.outputArena.live.card)=some 857 := by
  rw [s2Step63EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
