import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl5
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl6Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2Step48EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step48EarlyControlLog : HmrEarlyControlLog := ⟨[808, 787, 790, 805, 806],[792],[800],[844, 845, 846, 847, 849, 851],[]⟩
def s2Step48EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,808⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,805⟩,⟨⟨777,false⟩,806⟩]⟩
def s2Step48EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step48EarlyControlPositiveArena,[792],s2Step48EarlyControlEqualityArena,[800],⟨⟨798,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step48EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step48EarlyControlZeroArena,s2Step48EarlyControlZeroPlan,s2Step48EarlyControlClassPlan,s2Step48EarlyControlFlagArena,s2Step48EarlyControlFittedArena,s2Step48EarlyControlHistoryArena,s2Step48EarlyControlSigmaArena,s2Step48EarlyControlOutputArena,s2Step48EarlyControlLog⟩
private theorem s2Step48EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_zeroBorrow : s2Step48EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step48EarlyControlLog.zeroWork=some s2Step48EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step48EarlyControlZeroArena,s2Step48EarlyControlArena,s2Step48EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step48EarlyControl_zero : compileHmrEqualityLog s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step48EarlyControlLog.zeroWork=some (s2Step48EarlyControlZeroArena,s2Step48EarlyControlLog.zeroWork,s2Step48EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step48EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step48EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step48EarlyControl_positiveBorrow : s2Step48EarlyControlZeroArena.checkBorrow (1) s2Step48EarlyControlLog.positiveWork=some s2Step48EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step48EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step48EarlyControlPositiveArena,s2Step48EarlyControlZeroArena,s2Step48EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step48EarlyControl_classEqualityOwned : ([798, 792] : List Wire).toFinset⊆s2Step48EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_classEqualityBorrow : s2Step48EarlyControlPositiveArena.checkBorrow (([798, 792] : List Wire).length-1) s2Step48EarlyControlLog.classWork=some s2Step48EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step48EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step48EarlyControlEqualityArena,s2Step48EarlyControlPositiveArena,s2Step48EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step48EarlyControl_classEquality : compileHmrEqualityLog s2Step48EarlyControlPositiveArena [798, 792] 0 s2Step48EarlyControlLog.classWork=some (s2Step48EarlyControlEqualityArena,s2Step48EarlyControlLog.classWork,s2Step48EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step48EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step48EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step48EarlyControl_classOwned : ([777, 806, 798] : List Wire).toFinset⊆s2Step48EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EarlyControl_class : compileHmrSourceClassLog s2Step48EarlyControlZeroArena false 777 s2Step48EarlyControlZeroPlan.top 0 798 s2Step48EarlyControlLog.positiveWork s2Step48EarlyControlLog.classWork=some s2Step48EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step48EarlyControlClassPlan s2Step48EarlyControlZeroArena false 777 s2Step48EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step48EarlyControl_classOwned
  · exact s2Step48EarlyControl_positiveBorrow
  · exact s2Step48EarlyControl_classEquality
private theorem s2Step48EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step48EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_flagsBorrow : s2Step48EarlyControlEqualityArena.checkBorrow (6) s2Step48EarlyControlLog.flagWork=some s2Step48EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step48EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step48EarlyControlFlagArena,s2Step48EarlyControlEqualityArena,s2Step48EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step48EarlyControl_flags : compileHmrFlagsLog s2Step48EarlyControlClassPlan.equalityArena s2Step48EarlyControlClassPlan.equality.top 253 252 251 s2Step48EarlyControlLog.flagWork=some s2Step48EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step48EarlyControl_flagsOwned⟩
  · exact s2Step48EarlyControl_flagsBorrow
private theorem s2Step48EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).toFinset⊆s2Step48EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlFlagArena (fun q => (0≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_fitBorrow : s2Step48EarlyControlFlagArena.checkBorrow ((21-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).length)) s2Step48EarlyControlLog.recordFresh=some s2Step48EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step48EarlyControlFlagArena (fun q => (0≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step48EarlyControlFittedArena,s2Step48EarlyControlFlagArena,s2Step48EarlyControlLog,arenaWires]
theorem s2Step48EarlyControl_fit : compileHmrRecordGrowLog s2Step48EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48EarlyControlLog.recordFresh=some s2Step48EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step48EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step48EarlyControl_fitBorrow
private theorem s2Step48EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).toFinset⊆s2Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_historyBorrow : s2Step48EarlyControlArena.checkBorrow ((21-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).length)) s2Step48EarlyControlLog.recordFresh=some s2Step48EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step48EarlyControlHistoryArena,s2Step48EarlyControlArena,s2Step48EarlyControlLog,arenaWires]
theorem s2Step48EarlyControl_history : compileHmrRecordGrowLog s2Step48EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48EarlyControlLog.recordFresh=some s2Step48EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step48EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step48EarlyControl_historyBorrow
private theorem s2Step48EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step48EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step48EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_sigmaRelease : s2Step48EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step48EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step48EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step48EarlyControlSigmaArena,s2Step48EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step48EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step48EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EarlyControl_branch : compileHmrBranchRetirement s2Step48EarlyControlSigmaArena 803=some s2Step48EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step48EarlyControl_branchOwned
  · ext q
    simp [s2Step48EarlyControlOutputArena,s2Step48EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step48EarlyControl_sigma : compileHmrSigmaDropLog s2Step48EarlyControlHistoryArena false 0 0 254 798 []=some s2Step48EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step48EarlyControl_sigmaOwned⟩
  · exact s2Step48EarlyControl_sigmaRelease
theorem s2Step48EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step48EarlyControlLog.zeroWork).map Prod.snd=some (s2Step48EarlyControlLog.zeroWork,s2Step48EarlyControlZeroPlan) := by
  rw [s2Step48EarlyControl_zero]
  rfl
theorem s2Step48EarlyControl_classProjection : (compileHmrSourceClassLog s2Step48EarlyControlZeroArena false 777 s2Step48EarlyControlZeroPlan.top 0 798 s2Step48EarlyControlLog.positiveWork s2Step48EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step48EarlyControlClassPlan.positiveWork,s2Step48EarlyControlClassPlan.equalityWork,s2Step48EarlyControlClassPlan.equality) := by
  rw [s2Step48EarlyControl_class]
  rfl
theorem s2Step48EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step48EarlyControlClassPlan.equalityArena s2Step48EarlyControlClassPlan.equality.top 253 252 251 s2Step48EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step48EarlyControl_flags]
  rfl
theorem s2Step48EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step48EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step48EarlyControl_fit]
  rfl
theorem s2Step48EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step48EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step48EarlyControl_history]
  rfl
theorem s2Step48EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step48EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step48EarlyControl_sigma]
  rfl
theorem s2Step48EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step48EarlyControlSigmaArena 803).map (fun _ => true)=some true := by
  rw [s2Step48EarlyControl_branch]
  rfl
private theorem s2Step48EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step48EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).toFinset⊆s2Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EarlyControl_logged : s2Step48EarlyControlPlan.Logged s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 803 21 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step48EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step48EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step48EarlyControl_zero
  · exact s2Step48EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step48EarlyControl_flags
  · exact s2Step48EarlyControl_fit
  · exact s2Step48EarlyControl_history
  · exact s2Step48EarlyControl_sigma
  · exact s2Step48EarlyControl_branch
theorem s2Step48EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 803 21 s2Step48EarlyControlLog=some s2Step48EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step48EarlyControlPlan s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 803 21 s2Step48EarlyControl_logged
theorem s2Step48EarlyControl_checked : (compileHmrEarlyControlLog s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 803 21 s2Step48EarlyControlLog).map (fun P => P.outputArena.live.card)=some 848 := by
  rw [s2Step48EarlyControl_plan_checked]
  decide +kernel

def s2Step49EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step49EarlyControlLog : HmrEarlyControlLog := ⟨[807, 805, 790, 803, 787],[792],[800],[844, 845, 846, 847, 849, 851],[862]⟩
def s2Step49EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,803⟩,⟨⟨777,false⟩,787⟩]⟩
def s2Step49EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step49EarlyControlPositiveArena,[792],s2Step49EarlyControlEqualityArena,[800],⟨⟨798,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step49EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step49EarlyControlZeroArena,s2Step49EarlyControlZeroPlan,s2Step49EarlyControlClassPlan,s2Step49EarlyControlFlagArena,s2Step49EarlyControlFittedArena,s2Step49EarlyControlHistoryArena,s2Step49EarlyControlSigmaArena,s2Step49EarlyControlOutputArena,s2Step49EarlyControlLog⟩
private theorem s2Step49EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_zeroBorrow : s2Step49EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step49EarlyControlLog.zeroWork=some s2Step49EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step49EarlyControlZeroArena,s2Step49EarlyControlArena,s2Step49EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step49EarlyControl_zero : compileHmrEqualityLog s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step49EarlyControlLog.zeroWork=some (s2Step49EarlyControlZeroArena,s2Step49EarlyControlLog.zeroWork,s2Step49EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step49EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step49EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step49EarlyControl_positiveBorrow : s2Step49EarlyControlZeroArena.checkBorrow (1) s2Step49EarlyControlLog.positiveWork=some s2Step49EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step49EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step49EarlyControlPositiveArena,s2Step49EarlyControlZeroArena,s2Step49EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step49EarlyControl_classEqualityOwned : ([798, 792] : List Wire).toFinset⊆s2Step49EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_classEqualityBorrow : s2Step49EarlyControlPositiveArena.checkBorrow (([798, 792] : List Wire).length-1) s2Step49EarlyControlLog.classWork=some s2Step49EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step49EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step49EarlyControlEqualityArena,s2Step49EarlyControlPositiveArena,s2Step49EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step49EarlyControl_classEquality : compileHmrEqualityLog s2Step49EarlyControlPositiveArena [798, 792] 0 s2Step49EarlyControlLog.classWork=some (s2Step49EarlyControlEqualityArena,s2Step49EarlyControlLog.classWork,s2Step49EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step49EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step49EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step49EarlyControl_classOwned : ([777, 787, 798] : List Wire).toFinset⊆s2Step49EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EarlyControl_class : compileHmrSourceClassLog s2Step49EarlyControlZeroArena false 777 s2Step49EarlyControlZeroPlan.top 0 798 s2Step49EarlyControlLog.positiveWork s2Step49EarlyControlLog.classWork=some s2Step49EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step49EarlyControlClassPlan s2Step49EarlyControlZeroArena false 777 s2Step49EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step49EarlyControl_classOwned
  · exact s2Step49EarlyControl_positiveBorrow
  · exact s2Step49EarlyControl_classEquality
private theorem s2Step49EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step49EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_flagsBorrow : s2Step49EarlyControlEqualityArena.checkBorrow (6) s2Step49EarlyControlLog.flagWork=some s2Step49EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step49EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step49EarlyControlFlagArena,s2Step49EarlyControlEqualityArena,s2Step49EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step49EarlyControl_flags : compileHmrFlagsLog s2Step49EarlyControlClassPlan.equalityArena s2Step49EarlyControlClassPlan.equality.top 253 252 251 s2Step49EarlyControlLog.flagWork=some s2Step49EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step49EarlyControl_flagsOwned⟩
  · exact s2Step49EarlyControl_flagsBorrow
private theorem s2Step49EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).toFinset⊆s2Step49EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlFlagArena (fun q => (0≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_fitBorrow : s2Step49EarlyControlFlagArena.checkBorrow ((22-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).length)) s2Step49EarlyControlLog.recordFresh=some s2Step49EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step49EarlyControlFlagArena (fun q => (0≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step49EarlyControlFittedArena,s2Step49EarlyControlFlagArena,s2Step49EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step49EarlyControl_fit : compileHmrRecordGrowLog s2Step49EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49EarlyControlLog.recordFresh=some s2Step49EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step49EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step49EarlyControl_fitBorrow
private theorem s2Step49EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).toFinset⊆s2Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_historyBorrow : s2Step49EarlyControlArena.checkBorrow ((22-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).length)) s2Step49EarlyControlLog.recordFresh=some s2Step49EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step49EarlyControlHistoryArena,s2Step49EarlyControlArena,s2Step49EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step49EarlyControl_history : compileHmrRecordGrowLog s2Step49EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49EarlyControlLog.recordFresh=some s2Step49EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step49EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step49EarlyControl_historyBorrow
private theorem s2Step49EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step49EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step49EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_sigmaRelease : s2Step49EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step49EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step49EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step49EarlyControlSigmaArena,s2Step49EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step49EarlyControl_branchOwned : ([808] : List Wire).toFinset⊆s2Step49EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EarlyControl_branch : compileHmrBranchRetirement s2Step49EarlyControlSigmaArena 808=some s2Step49EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step49EarlyControl_branchOwned
  · ext q
    simp [s2Step49EarlyControlOutputArena,s2Step49EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step49EarlyControl_sigma : compileHmrSigmaDropLog s2Step49EarlyControlHistoryArena false 0 0 254 798 []=some s2Step49EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step49EarlyControl_sigmaOwned⟩
  · exact s2Step49EarlyControl_sigmaRelease
theorem s2Step49EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step49EarlyControlLog.zeroWork).map Prod.snd=some (s2Step49EarlyControlLog.zeroWork,s2Step49EarlyControlZeroPlan) := by
  rw [s2Step49EarlyControl_zero]
  rfl
theorem s2Step49EarlyControl_classProjection : (compileHmrSourceClassLog s2Step49EarlyControlZeroArena false 777 s2Step49EarlyControlZeroPlan.top 0 798 s2Step49EarlyControlLog.positiveWork s2Step49EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step49EarlyControlClassPlan.positiveWork,s2Step49EarlyControlClassPlan.equalityWork,s2Step49EarlyControlClassPlan.equality) := by
  rw [s2Step49EarlyControl_class]
  rfl
theorem s2Step49EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step49EarlyControlClassPlan.equalityArena s2Step49EarlyControlClassPlan.equality.top 253 252 251 s2Step49EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step49EarlyControl_flags]
  rfl
theorem s2Step49EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step49EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step49EarlyControl_fit]
  rfl
theorem s2Step49EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step49EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step49EarlyControl_history]
  rfl
theorem s2Step49EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step49EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step49EarlyControl_sigma]
  rfl
theorem s2Step49EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step49EarlyControlSigmaArena 808).map (fun _ => true)=some true := by
  rw [s2Step49EarlyControl_branch]
  rfl
private theorem s2Step49EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step49EarlyControl_entryRecordOwned : ([808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] : List Wire).toFinset⊆s2Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EarlyControl_logged : s2Step49EarlyControlPlan.Logged s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 808 22 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step49EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step49EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step49EarlyControl_zero
  · exact s2Step49EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step49EarlyControl_flags
  · exact s2Step49EarlyControl_fit
  · exact s2Step49EarlyControl_history
  · exact s2Step49EarlyControl_sigma
  · exact s2Step49EarlyControl_branch
theorem s2Step49EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 808 22 s2Step49EarlyControlLog=some s2Step49EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step49EarlyControlPlan s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 808 22 s2Step49EarlyControl_logged
theorem s2Step49EarlyControl_checked : (compileHmrEarlyControlLog s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 254 253 252 251 808 22 s2Step49EarlyControlLog).map (fun P => P.outputArena.live.card)=some 849 := by
  rw [s2Step49EarlyControl_plan_checked]
  decide +kernel

def s2Step50EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (806 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step50EarlyControlLog : HmrEarlyControlLog := ⟨[810, 808, 803, 787, 790],[805],[792],[800, 844, 845, 846, 847, 849],[]⟩
def s2Step50EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,810⟩,⟨⟨774,false⟩,808⟩,⟨⟨775,false⟩,803⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,790⟩]⟩
def s2Step50EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step50EarlyControlPositiveArena,[805],s2Step50EarlyControlEqualityArena,[792],⟨⟨798,false⟩,[⟨⟨805,false⟩,792⟩]⟩⟩
def s2Step50EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step50EarlyControlZeroArena,s2Step50EarlyControlZeroPlan,s2Step50EarlyControlClassPlan,s2Step50EarlyControlFlagArena,s2Step50EarlyControlFittedArena,s2Step50EarlyControlHistoryArena,s2Step50EarlyControlSigmaArena,s2Step50EarlyControlOutputArena,s2Step50EarlyControlLog⟩
private theorem s2Step50EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_zeroBorrow : s2Step50EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step50EarlyControlLog.zeroWork=some s2Step50EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step50EarlyControlZeroArena,s2Step50EarlyControlArena,s2Step50EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step50EarlyControl_zero : compileHmrEqualityLog s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step50EarlyControlLog.zeroWork=some (s2Step50EarlyControlZeroArena,s2Step50EarlyControlLog.zeroWork,s2Step50EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step50EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step50EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step50EarlyControl_positiveBorrow : s2Step50EarlyControlZeroArena.checkBorrow (1) s2Step50EarlyControlLog.positiveWork=some s2Step50EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step50EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step50EarlyControlPositiveArena,s2Step50EarlyControlZeroArena,s2Step50EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step50EarlyControl_classEqualityOwned : ([798, 805] : List Wire).toFinset⊆s2Step50EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_classEqualityBorrow : s2Step50EarlyControlPositiveArena.checkBorrow (([798, 805] : List Wire).length-1) s2Step50EarlyControlLog.classWork=some s2Step50EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step50EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step50EarlyControlEqualityArena,s2Step50EarlyControlPositiveArena,s2Step50EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step50EarlyControl_classEquality : compileHmrEqualityLog s2Step50EarlyControlPositiveArena [798, 805] 0 s2Step50EarlyControlLog.classWork=some (s2Step50EarlyControlEqualityArena,s2Step50EarlyControlLog.classWork,s2Step50EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step50EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step50EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step50EarlyControl_classOwned : ([777, 790, 798] : List Wire).toFinset⊆s2Step50EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EarlyControl_class : compileHmrSourceClassLog s2Step50EarlyControlZeroArena false 777 s2Step50EarlyControlZeroPlan.top 0 798 s2Step50EarlyControlLog.positiveWork s2Step50EarlyControlLog.classWork=some s2Step50EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step50EarlyControlClassPlan s2Step50EarlyControlZeroArena false 777 s2Step50EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step50EarlyControl_classOwned
  · exact s2Step50EarlyControl_positiveBorrow
  · exact s2Step50EarlyControl_classEquality
private theorem s2Step50EarlyControl_flagsOwned : ([792, 253, 252, 251] : List Wire).toFinset⊆s2Step50EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_flagsBorrow : s2Step50EarlyControlEqualityArena.checkBorrow (6) s2Step50EarlyControlLog.flagWork=some s2Step50EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step50EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step50EarlyControlFlagArena,s2Step50EarlyControlEqualityArena,s2Step50EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step50EarlyControl_flags : compileHmrFlagsLog s2Step50EarlyControlClassPlan.equalityArena s2Step50EarlyControlClassPlan.equality.top 253 252 251 s2Step50EarlyControlLog.flagWork=some s2Step50EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step50EarlyControl_flagsOwned⟩
  · exact s2Step50EarlyControl_flagsBorrow
private theorem s2Step50EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).toFinset⊆s2Step50EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlFlagArena (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_fitBorrow : s2Step50EarlyControlFlagArena.checkBorrow ((22-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).length)) s2Step50EarlyControlLog.recordFresh=some s2Step50EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step50EarlyControlFlagArena (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step50EarlyControlFittedArena,s2Step50EarlyControlFlagArena,s2Step50EarlyControlLog,arenaWires]
theorem s2Step50EarlyControl_fit : compileHmrRecordGrowLog s2Step50EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50EarlyControlLog.recordFresh=some s2Step50EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step50EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step50EarlyControl_fitBorrow
private theorem s2Step50EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).toFinset⊆s2Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_historyBorrow : s2Step50EarlyControlArena.checkBorrow ((22-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).length)) s2Step50EarlyControlLog.recordFresh=some s2Step50EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step50EarlyControlHistoryArena,s2Step50EarlyControlArena,s2Step50EarlyControlLog,arenaWires]
theorem s2Step50EarlyControl_history : compileHmrRecordGrowLog s2Step50EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50EarlyControlLog.recordFresh=some s2Step50EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step50EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step50EarlyControl_historyBorrow
private theorem s2Step50EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step50EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step50EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_sigmaRelease : s2Step50EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step50EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step50EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step50EarlyControlSigmaArena,s2Step50EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step50EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step50EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EarlyControl_branch : compileHmrBranchRetirement s2Step50EarlyControlSigmaArena 807=some s2Step50EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step50EarlyControl_branchOwned
  · ext q
    simp [s2Step50EarlyControlOutputArena,s2Step50EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step50EarlyControl_sigma : compileHmrSigmaDropLog s2Step50EarlyControlHistoryArena false 0 0 254 798 []=some s2Step50EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step50EarlyControl_sigmaOwned⟩
  · exact s2Step50EarlyControl_sigmaRelease
theorem s2Step50EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step50EarlyControlLog.zeroWork).map Prod.snd=some (s2Step50EarlyControlLog.zeroWork,s2Step50EarlyControlZeroPlan) := by
  rw [s2Step50EarlyControl_zero]
  rfl
theorem s2Step50EarlyControl_classProjection : (compileHmrSourceClassLog s2Step50EarlyControlZeroArena false 777 s2Step50EarlyControlZeroPlan.top 0 798 s2Step50EarlyControlLog.positiveWork s2Step50EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step50EarlyControlClassPlan.positiveWork,s2Step50EarlyControlClassPlan.equalityWork,s2Step50EarlyControlClassPlan.equality) := by
  rw [s2Step50EarlyControl_class]
  rfl
theorem s2Step50EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step50EarlyControlClassPlan.equalityArena s2Step50EarlyControlClassPlan.equality.top 253 252 251 s2Step50EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step50EarlyControl_flags]
  rfl
theorem s2Step50EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step50EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step50EarlyControl_fit]
  rfl
theorem s2Step50EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step50EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step50EarlyControl_history]
  rfl
theorem s2Step50EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step50EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step50EarlyControl_sigma]
  rfl
theorem s2Step50EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step50EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s2Step50EarlyControl_branch]
  rfl
private theorem s2Step50EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step50EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).toFinset⊆s2Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EarlyControl_logged : s2Step50EarlyControlPlan.Logged s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 798 254 253 252 251 807 22 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step50EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step50EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step50EarlyControl_zero
  · exact s2Step50EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step50EarlyControl_flags
  · exact s2Step50EarlyControl_fit
  · exact s2Step50EarlyControl_history
  · exact s2Step50EarlyControl_sigma
  · exact s2Step50EarlyControl_branch
theorem s2Step50EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 798 254 253 252 251 807 22 s2Step50EarlyControlLog=some s2Step50EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step50EarlyControlPlan s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 798 254 253 252 251 807 22 s2Step50EarlyControl_logged
theorem s2Step50EarlyControl_checked : (compileHmrEarlyControlLog s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 798 254 253 252 251 807 22 s2Step50EarlyControlLog).map (fun P => P.outputArena.live.card)=some 848 := by
  rw [s2Step50EarlyControl_plan_checked]
  decide +kernel

def s2Step51EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (810 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 809) ∨ (811 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (811 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step51EarlyControlLog : HmrEarlyControlLog := ⟨[809, 790, 787, 807, 803],[792],[800],[844, 845, 846, 847, 849, 851],[864]⟩
def s2Step51EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,809⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,803⟩]⟩
def s2Step51EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step51EarlyControlPositiveArena,[792],s2Step51EarlyControlEqualityArena,[800],⟨⟨810,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step51EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step51EarlyControlZeroArena,s2Step51EarlyControlZeroPlan,s2Step51EarlyControlClassPlan,s2Step51EarlyControlFlagArena,s2Step51EarlyControlFittedArena,s2Step51EarlyControlHistoryArena,s2Step51EarlyControlSigmaArena,s2Step51EarlyControlOutputArena,s2Step51EarlyControlLog⟩
private theorem s2Step51EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_zeroBorrow : s2Step51EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step51EarlyControlLog.zeroWork=some s2Step51EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step51EarlyControlZeroArena,s2Step51EarlyControlArena,s2Step51EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step51EarlyControl_zero : compileHmrEqualityLog s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step51EarlyControlLog.zeroWork=some (s2Step51EarlyControlZeroArena,s2Step51EarlyControlLog.zeroWork,s2Step51EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step51EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step51EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step51EarlyControl_positiveBorrow : s2Step51EarlyControlZeroArena.checkBorrow (1) s2Step51EarlyControlLog.positiveWork=some s2Step51EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step51EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step51EarlyControlPositiveArena,s2Step51EarlyControlZeroArena,s2Step51EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step51EarlyControl_classEqualityOwned : ([810, 792] : List Wire).toFinset⊆s2Step51EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_classEqualityBorrow : s2Step51EarlyControlPositiveArena.checkBorrow (([810, 792] : List Wire).length-1) s2Step51EarlyControlLog.classWork=some s2Step51EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step51EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step51EarlyControlEqualityArena,s2Step51EarlyControlPositiveArena,s2Step51EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step51EarlyControl_classEquality : compileHmrEqualityLog s2Step51EarlyControlPositiveArena [810, 792] 0 s2Step51EarlyControlLog.classWork=some (s2Step51EarlyControlEqualityArena,s2Step51EarlyControlLog.classWork,s2Step51EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step51EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step51EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step51EarlyControl_classOwned : ([777, 803, 810] : List Wire).toFinset⊆s2Step51EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51EarlyControl_class : compileHmrSourceClassLog s2Step51EarlyControlZeroArena false 777 s2Step51EarlyControlZeroPlan.top 0 810 s2Step51EarlyControlLog.positiveWork s2Step51EarlyControlLog.classWork=some s2Step51EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step51EarlyControlClassPlan s2Step51EarlyControlZeroArena false 777 s2Step51EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step51EarlyControl_classOwned
  · exact s2Step51EarlyControl_positiveBorrow
  · exact s2Step51EarlyControl_classEquality
private theorem s2Step51EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step51EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_flagsBorrow : s2Step51EarlyControlEqualityArena.checkBorrow (6) s2Step51EarlyControlLog.flagWork=some s2Step51EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step51EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step51EarlyControlFlagArena,s2Step51EarlyControlEqualityArena,s2Step51EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step51EarlyControl_flags : compileHmrFlagsLog s2Step51EarlyControlClassPlan.equalityArena s2Step51EarlyControlClassPlan.equality.top 253 252 251 s2Step51EarlyControlLog.flagWork=some s2Step51EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step51EarlyControl_flagsOwned⟩
  · exact s2Step51EarlyControl_flagsBorrow
private theorem s2Step51EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).toFinset⊆s2Step51EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlFlagArena (fun q => (0≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_fitBorrow : s2Step51EarlyControlFlagArena.checkBorrow ((23-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).length)) s2Step51EarlyControlLog.recordFresh=some s2Step51EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step51EarlyControlFlagArena (fun q => (0≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step51EarlyControlFittedArena,s2Step51EarlyControlFlagArena,s2Step51EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step51EarlyControl_fit : compileHmrRecordGrowLog s2Step51EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51EarlyControlLog.recordFresh=some s2Step51EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step51EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step51EarlyControl_fitBorrow
private theorem s2Step51EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).toFinset⊆s2Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_historyBorrow : s2Step51EarlyControlArena.checkBorrow ((23-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).length)) s2Step51EarlyControlLog.recordFresh=some s2Step51EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
      decide +kernel
    · ext q
      simp [s2Step51EarlyControlHistoryArena,s2Step51EarlyControlArena,s2Step51EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step51EarlyControl_history : compileHmrRecordGrowLog s2Step51EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51EarlyControlLog.recordFresh=some s2Step51EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step51EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step51EarlyControl_historyBorrow
private theorem s2Step51EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step51EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step51EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_sigmaRelease : s2Step51EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step51EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step51EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step51EarlyControlSigmaArena,s2Step51EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step51EarlyControl_branchOwned : ([808] : List Wire).toFinset⊆s2Step51EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step51EarlyControl_branch : compileHmrBranchRetirement s2Step51EarlyControlSigmaArena 808=some s2Step51EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step51EarlyControl_branchOwned
  · ext q
    simp [s2Step51EarlyControlOutputArena,s2Step51EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step51EarlyControl_sigma : compileHmrSigmaDropLog s2Step51EarlyControlHistoryArena false 0 0 254 810 []=some s2Step51EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step51EarlyControl_sigmaOwned⟩
  · exact s2Step51EarlyControl_sigmaRelease
theorem s2Step51EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step51EarlyControlLog.zeroWork).map Prod.snd=some (s2Step51EarlyControlLog.zeroWork,s2Step51EarlyControlZeroPlan) := by
  rw [s2Step51EarlyControl_zero]
  rfl
theorem s2Step51EarlyControl_classProjection : (compileHmrSourceClassLog s2Step51EarlyControlZeroArena false 777 s2Step51EarlyControlZeroPlan.top 0 810 s2Step51EarlyControlLog.positiveWork s2Step51EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step51EarlyControlClassPlan.positiveWork,s2Step51EarlyControlClassPlan.equalityWork,s2Step51EarlyControlClassPlan.equality) := by
  rw [s2Step51EarlyControl_class]
  rfl
theorem s2Step51EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step51EarlyControlClassPlan.equalityArena s2Step51EarlyControlClassPlan.equality.top 253 252 251 s2Step51EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step51EarlyControl_flags]
  rfl
theorem s2Step51EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step51EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step51EarlyControl_fit]
  rfl
theorem s2Step51EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step51EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step51EarlyControl_history]
  rfl
theorem s2Step51EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step51EarlyControlHistoryArena false 0 0 254 810 []).map (fun _ => true)=some true := by
  rw [s2Step51EarlyControl_sigma]
  rfl
theorem s2Step51EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step51EarlyControlSigmaArena 808).map (fun _ => true)=some true := by
  rw [s2Step51EarlyControl_branch]
  rfl
private theorem s2Step51EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step51EarlyControl_entryRecordOwned : ([808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] : List Wire).toFinset⊆s2Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51EarlyControl_logged : s2Step51EarlyControlPlan.Logged s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 810 254 253 252 251 808 23 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step51EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step51EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step51EarlyControl_zero
  · exact s2Step51EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step51EarlyControl_flags
  · exact s2Step51EarlyControl_fit
  · exact s2Step51EarlyControl_history
  · exact s2Step51EarlyControl_sigma
  · exact s2Step51EarlyControl_branch
theorem s2Step51EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 810 254 253 252 251 808 23 s2Step51EarlyControlLog=some s2Step51EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step51EarlyControlPlan s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 810 254 253 252 251 808 23 s2Step51EarlyControl_logged
theorem s2Step51EarlyControl_checked : (compileHmrEarlyControlLog s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 810 254 253 252 251 808 23 s2Step51EarlyControlLog).map (fun P => P.outputArena.live.card)=some 850 := by
  rw [s2Step51EarlyControl_plan_checked]
  decide +kernel

def s2Step52EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 811) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 810) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 807) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step52EarlyControlLog : HmrEarlyControlLog := ⟨[811, 812, 808, 807, 803],[787],[790],[792, 800, 844, 845, 846, 847],[]⟩
def s2Step52EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,811⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,808⟩,⟨⟨776,false⟩,807⟩,⟨⟨777,false⟩,803⟩]⟩
def s2Step52EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step52EarlyControlPositiveArena,[787],s2Step52EarlyControlEqualityArena,[790],⟨⟨810,false⟩,[⟨⟨787,false⟩,790⟩]⟩⟩
def s2Step52EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step52EarlyControlZeroArena,s2Step52EarlyControlZeroPlan,s2Step52EarlyControlClassPlan,s2Step52EarlyControlFlagArena,s2Step52EarlyControlFittedArena,s2Step52EarlyControlHistoryArena,s2Step52EarlyControlSigmaArena,s2Step52EarlyControlOutputArena,s2Step52EarlyControlLog⟩
private theorem s2Step52EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_zeroBorrow : s2Step52EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step52EarlyControlLog.zeroWork=some s2Step52EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step52EarlyControlZeroArena,s2Step52EarlyControlArena,s2Step52EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step52EarlyControl_zero : compileHmrEqualityLog s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step52EarlyControlLog.zeroWork=some (s2Step52EarlyControlZeroArena,s2Step52EarlyControlLog.zeroWork,s2Step52EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step52EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step52EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step52EarlyControl_positiveBorrow : s2Step52EarlyControlZeroArena.checkBorrow (1) s2Step52EarlyControlLog.positiveWork=some s2Step52EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step52EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step52EarlyControlPositiveArena,s2Step52EarlyControlZeroArena,s2Step52EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step52EarlyControl_classEqualityOwned : ([810, 787] : List Wire).toFinset⊆s2Step52EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_classEqualityBorrow : s2Step52EarlyControlPositiveArena.checkBorrow (([810, 787] : List Wire).length-1) s2Step52EarlyControlLog.classWork=some s2Step52EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step52EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step52EarlyControlEqualityArena,s2Step52EarlyControlPositiveArena,s2Step52EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step52EarlyControl_classEquality : compileHmrEqualityLog s2Step52EarlyControlPositiveArena [810, 787] 0 s2Step52EarlyControlLog.classWork=some (s2Step52EarlyControlEqualityArena,s2Step52EarlyControlLog.classWork,s2Step52EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step52EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step52EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step52EarlyControl_classOwned : ([777, 803, 810] : List Wire).toFinset⊆s2Step52EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EarlyControl_class : compileHmrSourceClassLog s2Step52EarlyControlZeroArena false 777 s2Step52EarlyControlZeroPlan.top 0 810 s2Step52EarlyControlLog.positiveWork s2Step52EarlyControlLog.classWork=some s2Step52EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step52EarlyControlClassPlan s2Step52EarlyControlZeroArena false 777 s2Step52EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step52EarlyControl_classOwned
  · exact s2Step52EarlyControl_positiveBorrow
  · exact s2Step52EarlyControl_classEquality
private theorem s2Step52EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step52EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_flagsBorrow : s2Step52EarlyControlEqualityArena.checkBorrow (6) s2Step52EarlyControlLog.flagWork=some s2Step52EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step52EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step52EarlyControlFlagArena,s2Step52EarlyControlEqualityArena,s2Step52EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step52EarlyControl_flags : compileHmrFlagsLog s2Step52EarlyControlClassPlan.equalityArena s2Step52EarlyControlClassPlan.equality.top 253 252 251 s2Step52EarlyControlLog.flagWork=some s2Step52EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step52EarlyControl_flagsOwned⟩
  · exact s2Step52EarlyControl_flagsBorrow
private theorem s2Step52EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).toFinset⊆s2Step52EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlFlagArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_fitBorrow : s2Step52EarlyControlFlagArena.checkBorrow ((23-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).length)) s2Step52EarlyControlLog.recordFresh=some s2Step52EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step52EarlyControlFlagArena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step52EarlyControlFittedArena,s2Step52EarlyControlFlagArena,s2Step52EarlyControlLog,arenaWires]
theorem s2Step52EarlyControl_fit : compileHmrRecordGrowLog s2Step52EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52EarlyControlLog.recordFresh=some s2Step52EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step52EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step52EarlyControl_fitBorrow
private theorem s2Step52EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).toFinset⊆s2Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_historyBorrow : s2Step52EarlyControlArena.checkBorrow ((23-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).length)) s2Step52EarlyControlLog.recordFresh=some s2Step52EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step52EarlyControlHistoryArena,s2Step52EarlyControlArena,s2Step52EarlyControlLog,arenaWires]
theorem s2Step52EarlyControl_history : compileHmrRecordGrowLog s2Step52EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52EarlyControlLog.recordFresh=some s2Step52EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step52EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step52EarlyControl_historyBorrow
private theorem s2Step52EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step52EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step52EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_sigmaRelease : s2Step52EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step52EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step52EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step52EarlyControlSigmaArena,s2Step52EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step52EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s2Step52EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EarlyControl_branch : compileHmrBranchRetirement s2Step52EarlyControlSigmaArena 809=some s2Step52EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step52EarlyControl_branchOwned
  · ext q
    simp [s2Step52EarlyControlOutputArena,s2Step52EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step52EarlyControl_sigma : compileHmrSigmaDropLog s2Step52EarlyControlHistoryArena false 0 0 254 810 []=some s2Step52EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step52EarlyControl_sigmaOwned⟩
  · exact s2Step52EarlyControl_sigmaRelease
theorem s2Step52EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step52EarlyControlLog.zeroWork).map Prod.snd=some (s2Step52EarlyControlLog.zeroWork,s2Step52EarlyControlZeroPlan) := by
  rw [s2Step52EarlyControl_zero]
  rfl
theorem s2Step52EarlyControl_classProjection : (compileHmrSourceClassLog s2Step52EarlyControlZeroArena false 777 s2Step52EarlyControlZeroPlan.top 0 810 s2Step52EarlyControlLog.positiveWork s2Step52EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step52EarlyControlClassPlan.positiveWork,s2Step52EarlyControlClassPlan.equalityWork,s2Step52EarlyControlClassPlan.equality) := by
  rw [s2Step52EarlyControl_class]
  rfl
theorem s2Step52EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step52EarlyControlClassPlan.equalityArena s2Step52EarlyControlClassPlan.equality.top 253 252 251 s2Step52EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step52EarlyControl_flags]
  rfl
theorem s2Step52EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step52EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step52EarlyControl_fit]
  rfl
theorem s2Step52EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step52EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step52EarlyControl_history]
  rfl
theorem s2Step52EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step52EarlyControlHistoryArena false 0 0 254 810 []).map (fun _ => true)=some true := by
  rw [s2Step52EarlyControl_sigma]
  rfl
theorem s2Step52EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step52EarlyControlSigmaArena 809).map (fun _ => true)=some true := by
  rw [s2Step52EarlyControl_branch]
  rfl
private theorem s2Step52EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step52EarlyControl_entryRecordOwned : ([809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).toFinset⊆s2Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EarlyControl_logged : s2Step52EarlyControlPlan.Logged s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 809 23 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step52EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step52EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step52EarlyControl_zero
  · exact s2Step52EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step52EarlyControl_flags
  · exact s2Step52EarlyControl_fit
  · exact s2Step52EarlyControl_history
  · exact s2Step52EarlyControl_sigma
  · exact s2Step52EarlyControl_branch
theorem s2Step52EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 809 23 s2Step52EarlyControlLog=some s2Step52EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step52EarlyControlPlan s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 809 23 s2Step52EarlyControl_logged
theorem s2Step52EarlyControl_checked : (compileHmrEarlyControlLog s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 809 23 s2Step52EarlyControlLog).map (fun P => P.outputArena.live.card)=some 848 := by
  rw [s2Step52EarlyControl_plan_checked]
  decide +kernel

def s2Step53EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 865)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 810) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step53EarlyControlLog : HmrEarlyControlLog := ⟨[807, 808, 812, 787, 790],[792],[800],[844, 845, 846, 847, 849, 851],[865]⟩
def s2Step53EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,808⟩,⟨⟨775,false⟩,812⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,790⟩]⟩
def s2Step53EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step53EarlyControlPositiveArena,[792],s2Step53EarlyControlEqualityArena,[800],⟨⟨810,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step53EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step53EarlyControlZeroArena,s2Step53EarlyControlZeroPlan,s2Step53EarlyControlClassPlan,s2Step53EarlyControlFlagArena,s2Step53EarlyControlFittedArena,s2Step53EarlyControlHistoryArena,s2Step53EarlyControlSigmaArena,s2Step53EarlyControlOutputArena,s2Step53EarlyControlLog⟩
private theorem s2Step53EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_zeroBorrow : s2Step53EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step53EarlyControlLog.zeroWork=some s2Step53EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step53EarlyControlZeroArena,s2Step53EarlyControlArena,s2Step53EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step53EarlyControl_zero : compileHmrEqualityLog s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step53EarlyControlLog.zeroWork=some (s2Step53EarlyControlZeroArena,s2Step53EarlyControlLog.zeroWork,s2Step53EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step53EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step53EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step53EarlyControl_positiveBorrow : s2Step53EarlyControlZeroArena.checkBorrow (1) s2Step53EarlyControlLog.positiveWork=some s2Step53EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step53EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step53EarlyControlPositiveArena,s2Step53EarlyControlZeroArena,s2Step53EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step53EarlyControl_classEqualityOwned : ([810, 792] : List Wire).toFinset⊆s2Step53EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_classEqualityBorrow : s2Step53EarlyControlPositiveArena.checkBorrow (([810, 792] : List Wire).length-1) s2Step53EarlyControlLog.classWork=some s2Step53EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step53EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step53EarlyControlEqualityArena,s2Step53EarlyControlPositiveArena,s2Step53EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step53EarlyControl_classEquality : compileHmrEqualityLog s2Step53EarlyControlPositiveArena [810, 792] 0 s2Step53EarlyControlLog.classWork=some (s2Step53EarlyControlEqualityArena,s2Step53EarlyControlLog.classWork,s2Step53EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step53EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step53EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step53EarlyControl_classOwned : ([777, 790, 810] : List Wire).toFinset⊆s2Step53EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53EarlyControl_class : compileHmrSourceClassLog s2Step53EarlyControlZeroArena false 777 s2Step53EarlyControlZeroPlan.top 0 810 s2Step53EarlyControlLog.positiveWork s2Step53EarlyControlLog.classWork=some s2Step53EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step53EarlyControlClassPlan s2Step53EarlyControlZeroArena false 777 s2Step53EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step53EarlyControl_classOwned
  · exact s2Step53EarlyControl_positiveBorrow
  · exact s2Step53EarlyControl_classEquality
private theorem s2Step53EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step53EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_flagsBorrow : s2Step53EarlyControlEqualityArena.checkBorrow (6) s2Step53EarlyControlLog.flagWork=some s2Step53EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step53EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step53EarlyControlFlagArena,s2Step53EarlyControlEqualityArena,s2Step53EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step53EarlyControl_flags : compileHmrFlagsLog s2Step53EarlyControlClassPlan.equalityArena s2Step53EarlyControlClassPlan.equality.top 253 252 251 s2Step53EarlyControlLog.flagWork=some s2Step53EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step53EarlyControl_flagsOwned⟩
  · exact s2Step53EarlyControl_flagsBorrow
private theorem s2Step53EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).toFinset⊆s2Step53EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlFlagArena (fun q => (0≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_fitBorrow : s2Step53EarlyControlFlagArena.checkBorrow ((24-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).length)) s2Step53EarlyControlLog.recordFresh=some s2Step53EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step53EarlyControlFlagArena (fun q => (0≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step53EarlyControlFittedArena,s2Step53EarlyControlFlagArena,s2Step53EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step53EarlyControl_fit : compileHmrRecordGrowLog s2Step53EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53EarlyControlLog.recordFresh=some s2Step53EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step53EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step53EarlyControl_fitBorrow
private theorem s2Step53EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).toFinset⊆s2Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_historyBorrow : s2Step53EarlyControlArena.checkBorrow ((24-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).length)) s2Step53EarlyControlLog.recordFresh=some s2Step53EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
      decide +kernel
    · ext q
      simp [s2Step53EarlyControlHistoryArena,s2Step53EarlyControlArena,s2Step53EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step53EarlyControl_history : compileHmrRecordGrowLog s2Step53EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53EarlyControlLog.recordFresh=some s2Step53EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step53EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step53EarlyControl_historyBorrow
private theorem s2Step53EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step53EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step53EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_sigmaRelease : s2Step53EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step53EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step53EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step53EarlyControlSigmaArena,s2Step53EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step53EarlyControl_branchOwned : ([811] : List Wire).toFinset⊆s2Step53EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step53EarlyControl_branch : compileHmrBranchRetirement s2Step53EarlyControlSigmaArena 811=some s2Step53EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step53EarlyControl_branchOwned
  · ext q
    simp [s2Step53EarlyControlOutputArena,s2Step53EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step53EarlyControl_sigma : compileHmrSigmaDropLog s2Step53EarlyControlHistoryArena false 0 0 254 810 []=some s2Step53EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step53EarlyControl_sigmaOwned⟩
  · exact s2Step53EarlyControl_sigmaRelease
theorem s2Step53EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step53EarlyControlLog.zeroWork).map Prod.snd=some (s2Step53EarlyControlLog.zeroWork,s2Step53EarlyControlZeroPlan) := by
  rw [s2Step53EarlyControl_zero]
  rfl
theorem s2Step53EarlyControl_classProjection : (compileHmrSourceClassLog s2Step53EarlyControlZeroArena false 777 s2Step53EarlyControlZeroPlan.top 0 810 s2Step53EarlyControlLog.positiveWork s2Step53EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step53EarlyControlClassPlan.positiveWork,s2Step53EarlyControlClassPlan.equalityWork,s2Step53EarlyControlClassPlan.equality) := by
  rw [s2Step53EarlyControl_class]
  rfl
theorem s2Step53EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step53EarlyControlClassPlan.equalityArena s2Step53EarlyControlClassPlan.equality.top 253 252 251 s2Step53EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step53EarlyControl_flags]
  rfl
theorem s2Step53EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step53EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step53EarlyControl_fit]
  rfl
theorem s2Step53EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step53EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step53EarlyControl_history]
  rfl
theorem s2Step53EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step53EarlyControlHistoryArena false 0 0 254 810 []).map (fun _ => true)=some true := by
  rw [s2Step53EarlyControl_sigma]
  rfl
theorem s2Step53EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step53EarlyControlSigmaArena 811).map (fun _ => true)=some true := by
  rw [s2Step53EarlyControl_branch]
  rfl
private theorem s2Step53EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
private theorem s2Step53EarlyControl_entryRecordOwned : ([811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] : List Wire).toFinset⊆s2Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53EarlyControl_logged : s2Step53EarlyControlPlan.Logged s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 811 24 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step53EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step53EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step53EarlyControl_zero
  · exact s2Step53EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step53EarlyControl_flags
  · exact s2Step53EarlyControl_fit
  · exact s2Step53EarlyControl_history
  · exact s2Step53EarlyControl_sigma
  · exact s2Step53EarlyControl_branch
theorem s2Step53EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 811 24 s2Step53EarlyControlLog=some s2Step53EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step53EarlyControlPlan s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 811 24 s2Step53EarlyControl_logged
theorem s2Step53EarlyControl_checked : (compileHmrEarlyControlLog s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 254 253 252 251 811 24 s2Step53EarlyControlLog).map (fun P => P.outputArena.live.card)=some 851 := by
  rw [s2Step53EarlyControl_plan_checked]
  decide +kernel

def s2Step54EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 815) ∨ (816 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 815) ∨ (816 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 815) ∨ (816 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 810) ∨ (811 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 815) ∨ (816 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step54EarlyControlLog : HmrEarlyControlLog := ⟨[815, 787, 812, 808, 792],[800],[844],[845, 846, 847, 849, 851, 866],[]⟩
def s2Step54EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,815⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,812⟩,⟨⟨776,false⟩,808⟩,⟨⟨777,false⟩,792⟩]⟩
def s2Step54EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step54EarlyControlPositiveArena,[800],s2Step54EarlyControlEqualityArena,[844],⟨⟨810,false⟩,[⟨⟨800,false⟩,844⟩]⟩⟩
def s2Step54EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step54EarlyControlZeroArena,s2Step54EarlyControlZeroPlan,s2Step54EarlyControlClassPlan,s2Step54EarlyControlFlagArena,s2Step54EarlyControlFittedArena,s2Step54EarlyControlHistoryArena,s2Step54EarlyControlSigmaArena,s2Step54EarlyControlOutputArena,s2Step54EarlyControlLog⟩
private theorem s2Step54EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_zeroBorrow : s2Step54EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step54EarlyControlLog.zeroWork=some s2Step54EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step54EarlyControlZeroArena,s2Step54EarlyControlArena,s2Step54EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step54EarlyControl_zero : compileHmrEqualityLog s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step54EarlyControlLog.zeroWork=some (s2Step54EarlyControlZeroArena,s2Step54EarlyControlLog.zeroWork,s2Step54EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step54EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step54EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step54EarlyControl_positiveBorrow : s2Step54EarlyControlZeroArena.checkBorrow (1) s2Step54EarlyControlLog.positiveWork=some s2Step54EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step54EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step54EarlyControlPositiveArena,s2Step54EarlyControlZeroArena,s2Step54EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step54EarlyControl_classEqualityOwned : ([810, 800] : List Wire).toFinset⊆s2Step54EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_classEqualityBorrow : s2Step54EarlyControlPositiveArena.checkBorrow (([810, 800] : List Wire).length-1) s2Step54EarlyControlLog.classWork=some s2Step54EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step54EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step54EarlyControlEqualityArena,s2Step54EarlyControlPositiveArena,s2Step54EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step54EarlyControl_classEquality : compileHmrEqualityLog s2Step54EarlyControlPositiveArena [810, 800] 0 s2Step54EarlyControlLog.classWork=some (s2Step54EarlyControlEqualityArena,s2Step54EarlyControlLog.classWork,s2Step54EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step54EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step54EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step54EarlyControl_classOwned : ([777, 792, 810] : List Wire).toFinset⊆s2Step54EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EarlyControl_class : compileHmrSourceClassLog s2Step54EarlyControlZeroArena false 777 s2Step54EarlyControlZeroPlan.top 0 810 s2Step54EarlyControlLog.positiveWork s2Step54EarlyControlLog.classWork=some s2Step54EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step54EarlyControlClassPlan s2Step54EarlyControlZeroArena false 777 s2Step54EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step54EarlyControl_classOwned
  · exact s2Step54EarlyControl_positiveBorrow
  · exact s2Step54EarlyControl_classEquality
private theorem s2Step54EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step54EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_flagsBorrow : s2Step54EarlyControlEqualityArena.checkBorrow (6) s2Step54EarlyControlLog.flagWork=some s2Step54EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step54EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step54EarlyControlFlagArena,s2Step54EarlyControlEqualityArena,s2Step54EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step54EarlyControl_flags : compileHmrFlagsLog s2Step54EarlyControlClassPlan.equalityArena s2Step54EarlyControlClassPlan.equality.top 253 252 251 s2Step54EarlyControlLog.flagWork=some s2Step54EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step54EarlyControl_flagsOwned⟩
  · exact s2Step54EarlyControl_flagsBorrow
private theorem s2Step54EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).toFinset⊆s2Step54EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlFlagArena (fun q => (0≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_fitBorrow : s2Step54EarlyControlFlagArena.checkBorrow ((24-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).length)) s2Step54EarlyControlLog.recordFresh=some s2Step54EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step54EarlyControlFlagArena (fun q => (0≤q ∧ q<867)) rfl
      decide +kernel
    · ext q
      simp [s2Step54EarlyControlFittedArena,s2Step54EarlyControlFlagArena,s2Step54EarlyControlLog,arenaWires]
theorem s2Step54EarlyControl_fit : compileHmrRecordGrowLog s2Step54EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54EarlyControlLog.recordFresh=some s2Step54EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step54EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step54EarlyControl_fitBorrow
private theorem s2Step54EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).toFinset⊆s2Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_historyBorrow : s2Step54EarlyControlArena.checkBorrow ((24-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).length)) s2Step54EarlyControlLog.recordFresh=some s2Step54EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step54EarlyControlHistoryArena,s2Step54EarlyControlArena,s2Step54EarlyControlLog,arenaWires]
theorem s2Step54EarlyControl_history : compileHmrRecordGrowLog s2Step54EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54EarlyControlLog.recordFresh=some s2Step54EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step54EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step54EarlyControl_historyBorrow
private theorem s2Step54EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step54EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step54EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_sigmaRelease : s2Step54EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step54EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step54EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step54EarlyControlSigmaArena,s2Step54EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step54EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step54EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EarlyControl_branch : compileHmrBranchRetirement s2Step54EarlyControlSigmaArena 807=some s2Step54EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step54EarlyControl_branchOwned
  · ext q
    simp [s2Step54EarlyControlOutputArena,s2Step54EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step54EarlyControl_sigma : compileHmrSigmaDropLog s2Step54EarlyControlHistoryArena false 0 0 254 810 []=some s2Step54EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step54EarlyControl_sigmaOwned⟩
  · exact s2Step54EarlyControl_sigmaRelease
theorem s2Step54EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step54EarlyControlLog.zeroWork).map Prod.snd=some (s2Step54EarlyControlLog.zeroWork,s2Step54EarlyControlZeroPlan) := by
  rw [s2Step54EarlyControl_zero]
  rfl
theorem s2Step54EarlyControl_classProjection : (compileHmrSourceClassLog s2Step54EarlyControlZeroArena false 777 s2Step54EarlyControlZeroPlan.top 0 810 s2Step54EarlyControlLog.positiveWork s2Step54EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step54EarlyControlClassPlan.positiveWork,s2Step54EarlyControlClassPlan.equalityWork,s2Step54EarlyControlClassPlan.equality) := by
  rw [s2Step54EarlyControl_class]
  rfl
theorem s2Step54EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step54EarlyControlClassPlan.equalityArena s2Step54EarlyControlClassPlan.equality.top 253 252 251 s2Step54EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step54EarlyControl_flags]
  rfl
theorem s2Step54EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step54EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step54EarlyControl_fit]
  rfl
theorem s2Step54EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step54EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step54EarlyControl_history]
  rfl
theorem s2Step54EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step54EarlyControlHistoryArena false 0 0 254 810 []).map (fun _ => true)=some true := by
  rw [s2Step54EarlyControl_sigma]
  rfl
theorem s2Step54EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step54EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s2Step54EarlyControl_branch]
  rfl
private theorem s2Step54EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step54EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).toFinset⊆s2Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EarlyControl_logged : s2Step54EarlyControlPlan.Logged s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 810 254 253 252 251 807 24 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step54EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step54EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step54EarlyControl_zero
  · exact s2Step54EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step54EarlyControl_flags
  · exact s2Step54EarlyControl_fit
  · exact s2Step54EarlyControl_history
  · exact s2Step54EarlyControl_sigma
  · exact s2Step54EarlyControl_branch
theorem s2Step54EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 810 254 253 252 251 807 24 s2Step54EarlyControlLog=some s2Step54EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step54EarlyControlPlan s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 810 254 253 252 251 807 24 s2Step54EarlyControl_logged
theorem s2Step54EarlyControl_checked : (compileHmrEarlyControlLog s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 810 254 253 252 251 807 24 s2Step54EarlyControlLog).map (fun P => P.outputArena.live.card)=some 852 := by
  rw [s2Step54EarlyControl_plan_checked]
  decide +kernel

def s2Step55EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 807) ∨ (808 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 866)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (815 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (816 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 807) ∨ (809 ≤ q ∧ q < 812) ∨ (813 ≤ q ∧ q < 814) ∨ (816 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 867)),Finset.filter_subset _ _⟩

def s2Step55EarlyControlLog : HmrEarlyControlLog := ⟨[814, 792, 790, 800, 808],[807],[812],[844, 845, 846, 847, 849, 851],[866]⟩
def s2Step55EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨774,false⟩,792⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,808⟩]⟩
def s2Step55EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step55EarlyControlPositiveArena,[807],s2Step55EarlyControlEqualityArena,[812],⟨⟨815,false⟩,[⟨⟨807,false⟩,812⟩]⟩⟩
def s2Step55EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step55EarlyControlZeroArena,s2Step55EarlyControlZeroPlan,s2Step55EarlyControlClassPlan,s2Step55EarlyControlFlagArena,s2Step55EarlyControlFittedArena,s2Step55EarlyControlHistoryArena,s2Step55EarlyControlSigmaArena,s2Step55EarlyControlOutputArena,s2Step55EarlyControlLog⟩
private theorem s2Step55EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_zeroBorrow : s2Step55EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step55EarlyControlLog.zeroWork=some s2Step55EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step55EarlyControlZeroArena,s2Step55EarlyControlArena,s2Step55EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step55EarlyControl_zero : compileHmrEqualityLog s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step55EarlyControlLog.zeroWork=some (s2Step55EarlyControlZeroArena,s2Step55EarlyControlLog.zeroWork,s2Step55EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step55EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step55EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step55EarlyControl_positiveBorrow : s2Step55EarlyControlZeroArena.checkBorrow (1) s2Step55EarlyControlLog.positiveWork=some s2Step55EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step55EarlyControlZeroArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step55EarlyControlPositiveArena,s2Step55EarlyControlZeroArena,s2Step55EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step55EarlyControl_classEqualityOwned : ([815, 807] : List Wire).toFinset⊆s2Step55EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlPositiveArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_classEqualityBorrow : s2Step55EarlyControlPositiveArena.checkBorrow (([815, 807] : List Wire).length-1) s2Step55EarlyControlLog.classWork=some s2Step55EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step55EarlyControlPositiveArena (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step55EarlyControlEqualityArena,s2Step55EarlyControlPositiveArena,s2Step55EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step55EarlyControl_classEquality : compileHmrEqualityLog s2Step55EarlyControlPositiveArena [815, 807] 0 s2Step55EarlyControlLog.classWork=some (s2Step55EarlyControlEqualityArena,s2Step55EarlyControlLog.classWork,s2Step55EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step55EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step55EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step55EarlyControl_classOwned : ([777, 808, 815] : List Wire).toFinset⊆s2Step55EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlZeroArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55EarlyControl_class : compileHmrSourceClassLog s2Step55EarlyControlZeroArena false 777 s2Step55EarlyControlZeroPlan.top 0 815 s2Step55EarlyControlLog.positiveWork s2Step55EarlyControlLog.classWork=some s2Step55EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step55EarlyControlClassPlan s2Step55EarlyControlZeroArena false 777 s2Step55EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step55EarlyControl_classOwned
  · exact s2Step55EarlyControl_positiveBorrow
  · exact s2Step55EarlyControl_classEquality
private theorem s2Step55EarlyControl_flagsOwned : ([812, 253, 252, 251] : List Wire).toFinset⊆s2Step55EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_flagsBorrow : s2Step55EarlyControlEqualityArena.checkBorrow (6) s2Step55EarlyControlLog.flagWork=some s2Step55EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step55EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step55EarlyControlFlagArena,s2Step55EarlyControlEqualityArena,s2Step55EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step55EarlyControl_flags : compileHmrFlagsLog s2Step55EarlyControlClassPlan.equalityArena s2Step55EarlyControlClassPlan.equality.top 253 252 251 s2Step55EarlyControlLog.flagWork=some s2Step55EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step55EarlyControl_flagsOwned⟩
  · exact s2Step55EarlyControl_flagsBorrow
private theorem s2Step55EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).toFinset⊆s2Step55EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlFlagArena (fun q => (0≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_fitBorrow : s2Step55EarlyControlFlagArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).length)) s2Step55EarlyControlLog.recordFresh=some s2Step55EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step55EarlyControlFlagArena (fun q => (0≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step55EarlyControlFittedArena,s2Step55EarlyControlFlagArena,s2Step55EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step55EarlyControl_fit : compileHmrRecordGrowLog s2Step55EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55EarlyControlLog.recordFresh=some s2Step55EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step55EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step55EarlyControl_fitBorrow
private theorem s2Step55EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).toFinset⊆s2Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_historyBorrow : s2Step55EarlyControlArena.checkBorrow ((25-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).length)) s2Step55EarlyControlLog.recordFresh=some s2Step55EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
      decide +kernel
    · ext q
      simp [s2Step55EarlyControlHistoryArena,s2Step55EarlyControlArena,s2Step55EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step55EarlyControl_history : compileHmrRecordGrowLog s2Step55EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55EarlyControlLog.recordFresh=some s2Step55EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step55EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step55EarlyControl_historyBorrow
private theorem s2Step55EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step55EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step55EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlHistoryArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_sigmaRelease : s2Step55EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step55EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step55EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step55EarlyControlSigmaArena,s2Step55EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step55EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step55EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlSigmaArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step55EarlyControl_branch : compileHmrBranchRetirement s2Step55EarlyControlSigmaArena 787=some s2Step55EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step55EarlyControl_branchOwned
  · ext q
    simp [s2Step55EarlyControlOutputArena,s2Step55EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step55EarlyControl_sigma : compileHmrSigmaDropLog s2Step55EarlyControlHistoryArena false 0 0 254 815 []=some s2Step55EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step55EarlyControl_sigmaOwned⟩
  · exact s2Step55EarlyControl_sigmaRelease
theorem s2Step55EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step55EarlyControlLog.zeroWork).map Prod.snd=some (s2Step55EarlyControlLog.zeroWork,s2Step55EarlyControlZeroPlan) := by
  rw [s2Step55EarlyControl_zero]
  rfl
theorem s2Step55EarlyControl_classProjection : (compileHmrSourceClassLog s2Step55EarlyControlZeroArena false 777 s2Step55EarlyControlZeroPlan.top 0 815 s2Step55EarlyControlLog.positiveWork s2Step55EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step55EarlyControlClassPlan.positiveWork,s2Step55EarlyControlClassPlan.equalityWork,s2Step55EarlyControlClassPlan.equality) := by
  rw [s2Step55EarlyControl_class]
  rfl
theorem s2Step55EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step55EarlyControlClassPlan.equalityArena s2Step55EarlyControlClassPlan.equality.top 253 252 251 s2Step55EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step55EarlyControl_flags]
  rfl
theorem s2Step55EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step55EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step55EarlyControl_fit]
  rfl
theorem s2Step55EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step55EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step55EarlyControl_history]
  rfl
theorem s2Step55EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step55EarlyControlHistoryArena false 0 0 254 815 []).map (fun _ => true)=some true := by
  rw [s2Step55EarlyControl_sigma]
  rfl
theorem s2Step55EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step55EarlyControlSigmaArena 787).map (fun _ => true)=some true := by
  rw [s2Step55EarlyControl_branch]
  rfl
private theorem s2Step55EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
private theorem s2Step55EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] : List Wire).toFinset⊆s2Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55EarlyControl_logged : s2Step55EarlyControlPlan.Logged s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 815 254 253 252 251 787 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step55EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step55EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step55EarlyControl_zero
  · exact s2Step55EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step55EarlyControl_flags
  · exact s2Step55EarlyControl_fit
  · exact s2Step55EarlyControl_history
  · exact s2Step55EarlyControl_sigma
  · exact s2Step55EarlyControl_branch
theorem s2Step55EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 815 254 253 252 251 787 25 s2Step55EarlyControlLog=some s2Step55EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step55EarlyControlPlan s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 815 254 253 252 251 787 25 s2Step55EarlyControl_logged
theorem s2Step55EarlyControl_checked : (compileHmrEarlyControlLog s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 815 254 253 252 251 787 25 s2Step55EarlyControlLog).map (fun P => P.outputArena.live.card)=some 852 := by
  rw [s2Step55EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
