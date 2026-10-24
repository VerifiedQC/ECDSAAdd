import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl0Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

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
private theorem s6FirstEarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_zeroBorrow : s6FirstEarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6FirstEarlyControlLog.zeroWork=some s6FirstEarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s6FirstEarlyControlZeroArena,s6FirstEarlyControlArena,s6FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6FirstEarlyControl_zero : compileHmrEqualityLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6FirstEarlyControlLog.zeroWork=some (s6FirstEarlyControlZeroArena,s6FirstEarlyControlLog.zeroWork,s6FirstEarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6FirstEarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6FirstEarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6FirstEarlyControl_positiveBorrow : s6FirstEarlyControlZeroArena.checkBorrow (1) s6FirstEarlyControlLog.positiveWork=some s6FirstEarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6FirstEarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s6FirstEarlyControlPositiveArena,s6FirstEarlyControlZeroArena,s6FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6FirstEarlyControl_classEqualityOwned : ([887, 793] : List Wire).toFinset⊆s6FirstEarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_classEqualityBorrow : s6FirstEarlyControlPositiveArena.checkBorrow (([887, 793] : List Wire).length-1) s6FirstEarlyControlLog.classWork=some s6FirstEarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6FirstEarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s6FirstEarlyControlEqualityArena,s6FirstEarlyControlPositiveArena,s6FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6FirstEarlyControl_classEquality : compileHmrEqualityLog s6FirstEarlyControlPositiveArena [887, 793] 0 s6FirstEarlyControlLog.classWork=some (s6FirstEarlyControlEqualityArena,s6FirstEarlyControlLog.classWork,s6FirstEarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6FirstEarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6FirstEarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6FirstEarlyControl_classOwned : ([769, 874, 887] : List Wire).toFinset⊆s6FirstEarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6FirstEarlyControl_class : compileHmrSourceClassLog s6FirstEarlyControlZeroArena false 769 s6FirstEarlyControlZeroPlan.top 0 887 s6FirstEarlyControlLog.positiveWork s6FirstEarlyControlLog.classWork=some s6FirstEarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6FirstEarlyControlClassPlan s6FirstEarlyControlZeroArena false 769 s6FirstEarlyControlZeroPlan.top 0 887
  constructor
  · decide +kernel
  · exact s6FirstEarlyControl_classOwned
  · exact s6FirstEarlyControl_positiveBorrow
  · exact s6FirstEarlyControl_classEquality
private theorem s6FirstEarlyControl_flagsOwned : ([927, 776, 776, 776] : List Wire).toFinset⊆s6FirstEarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_flagsBorrow : s6FirstEarlyControlEqualityArena.checkBorrow (6) s6FirstEarlyControlLog.flagWork=some s6FirstEarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6FirstEarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6FirstEarlyControlFlagArena,s6FirstEarlyControlEqualityArena,s6FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6FirstEarlyControl_flags : compileHmrFlagsLog s6FirstEarlyControlClassPlan.equalityArena s6FirstEarlyControlClassPlan.equality.top 776 776 776 s6FirstEarlyControlLog.flagWork=some s6FirstEarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6FirstEarlyControl_flagsOwned⟩
  · exact s6FirstEarlyControl_flagsBorrow
private theorem s6FirstEarlyControl_fitOwned : ([] : List Wire).toFinset⊆s6FirstEarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_fitBorrow : s6FirstEarlyControlFlagArena.checkBorrow ((1-([] : List Wire).length)) s6FirstEarlyControlLog.recordFresh=some s6FirstEarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6FirstEarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6FirstEarlyControlFittedArena,s6FirstEarlyControlFlagArena,s6FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6FirstEarlyControl_fit : compileHmrRecordGrowLog s6FirstEarlyControlFlagArena [] 1 s6FirstEarlyControlLog.recordFresh=some s6FirstEarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6FirstEarlyControl_fitOwned,by decide +kernel⟩
  · exact s6FirstEarlyControl_fitBorrow
private theorem s6FirstEarlyControl_historyOwned : ([] : List Wire).toFinset⊆s6FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_historyBorrow : s6FirstEarlyControlArena.checkBorrow ((1-([] : List Wire).length)) s6FirstEarlyControlLog.recordFresh=some s6FirstEarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6FirstEarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s6FirstEarlyControlHistoryArena,s6FirstEarlyControlArena,s6FirstEarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6FirstEarlyControl_history : compileHmrRecordGrowLog s6FirstEarlyControlArena [] 1 s6FirstEarlyControlLog.recordFresh=some s6FirstEarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6FirstEarlyControl_historyOwned,by decide +kernel⟩
  · exact s6FirstEarlyControl_historyBorrow
private theorem s6FirstEarlyControl_sigmaOwned : ([876, 887] : List Wire).toFinset⊆s6FirstEarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_sigmaReleaseOwned : ([887] : List Wire).toFinset⊆s6FirstEarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlHistoryArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_sigmaRelease : s6FirstEarlyControlHistoryArena.release {887} (fun _ => false)=some s6FirstEarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6FirstEarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6FirstEarlyControlSigmaArena,s6FirstEarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6FirstEarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6FirstEarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6FirstEarlyControl_branch : compileHmrBranchRetirement s6FirstEarlyControlSigmaArena 813=some s6FirstEarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6FirstEarlyControl_branchOwned
  · ext q
    simp [s6FirstEarlyControlOutputArena,s6FirstEarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6FirstEarlyControl_sigma : compileHmrSigmaDropLog s6FirstEarlyControlHistoryArena false 0 0 876 887 []=some s6FirstEarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6FirstEarlyControl_sigmaOwned⟩
  · exact s6FirstEarlyControl_sigmaRelease
theorem s6FirstEarlyControl_zeroProjection : (compileHmrEqualityLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6FirstEarlyControlLog.zeroWork).map Prod.snd=some (s6FirstEarlyControlLog.zeroWork,s6FirstEarlyControlZeroPlan) := by
  rw [s6FirstEarlyControl_zero]
  rfl
theorem s6FirstEarlyControl_classProjection : (compileHmrSourceClassLog s6FirstEarlyControlZeroArena false 769 s6FirstEarlyControlZeroPlan.top 0 887 s6FirstEarlyControlLog.positiveWork s6FirstEarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6FirstEarlyControlClassPlan.positiveWork,s6FirstEarlyControlClassPlan.equalityWork,s6FirstEarlyControlClassPlan.equality) := by
  rw [s6FirstEarlyControl_class]
  rfl
theorem s6FirstEarlyControl_flagsProjection : (compileHmrFlagsLog s6FirstEarlyControlClassPlan.equalityArena s6FirstEarlyControlClassPlan.equality.top 776 776 776 s6FirstEarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6FirstEarlyControl_flags]
  rfl
theorem s6FirstEarlyControl_fitProjection : (compileHmrRecordGrowLog s6FirstEarlyControlFlagArena [] 1 s6FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6FirstEarlyControl_fit]
  rfl
theorem s6FirstEarlyControl_historyProjection : (compileHmrRecordGrowLog s6FirstEarlyControlArena [] 1 s6FirstEarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6FirstEarlyControl_history]
  rfl
theorem s6FirstEarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6FirstEarlyControlHistoryArena false 0 0 876 887 []).map (fun _ => true)=some true := by
  rw [s6FirstEarlyControl_sigma]
  rfl
theorem s6FirstEarlyControl_branchProjection : (compileHmrBranchRetirement s6FirstEarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6FirstEarlyControl_branch]
  rfl
private theorem s6FirstEarlyControl_entrySigmaOwned : ([887, 876] : List Wire).toFinset⊆s6FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
private theorem s6FirstEarlyControl_entryRecordOwned : ([813] : List Wire).toFinset⊆s6FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6FirstEarlyControl_logged : s6FirstEarlyControlPlan.Logged s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] [] 769 887 876 776 776 776 813 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6FirstEarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6FirstEarlyControl_entrySigmaOwned
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
private theorem s6Step1EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_zeroBorrow : s6Step1EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step1EarlyControlLog.zeroWork=some s6Step1EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
      decide +kernel
    · ext q
      simp [s6Step1EarlyControlZeroArena,s6Step1EarlyControlArena,s6Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step1EarlyControl_zero : compileHmrEqualityLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step1EarlyControlLog.zeroWork=some (s6Step1EarlyControlZeroArena,s6Step1EarlyControlLog.zeroWork,s6Step1EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step1EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step1EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step1EarlyControl_positiveBorrow : s6Step1EarlyControlZeroArena.checkBorrow (1) s6Step1EarlyControlLog.positiveWork=some s6Step1EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step1EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
      decide +kernel
    · ext q
      simp [s6Step1EarlyControlPositiveArena,s6Step1EarlyControlZeroArena,s6Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step1EarlyControl_classEqualityOwned : ([768, 927] : List Wire).toFinset⊆s6Step1EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_classEqualityBorrow : s6Step1EarlyControlPositiveArena.checkBorrow (([768, 927] : List Wire).length-1) s6Step1EarlyControlLog.classWork=some s6Step1EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step1EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step1EarlyControlEqualityArena,s6Step1EarlyControlPositiveArena,s6Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step1EarlyControl_classEquality : compileHmrEqualityLog s6Step1EarlyControlPositiveArena [768, 927] 0 s6Step1EarlyControlLog.classWork=some (s6Step1EarlyControlEqualityArena,s6Step1EarlyControlLog.classWork,s6Step1EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step1EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step1EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step1EarlyControl_classOwned : ([769, 807, 768] : List Wire).toFinset⊆s6Step1EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EarlyControl_class : compileHmrSourceClassLog s6Step1EarlyControlZeroArena false 769 s6Step1EarlyControlZeroPlan.top 0 768 s6Step1EarlyControlLog.positiveWork s6Step1EarlyControlLog.classWork=some s6Step1EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step1EarlyControlClassPlan s6Step1EarlyControlZeroArena false 769 s6Step1EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step1EarlyControl_classOwned
  · exact s6Step1EarlyControl_positiveBorrow
  · exact s6Step1EarlyControl_classEquality
private theorem s6Step1EarlyControl_flagsOwned : ([802, 793, 776, 776] : List Wire).toFinset⊆s6Step1EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_flagsBorrow : s6Step1EarlyControlEqualityArena.checkBorrow (6) s6Step1EarlyControlLog.flagWork=some s6Step1EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step1EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step1EarlyControlFlagArena,s6Step1EarlyControlEqualityArena,s6Step1EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step1EarlyControl_flags : compileHmrFlagsLog s6Step1EarlyControlClassPlan.equalityArena s6Step1EarlyControlClassPlan.equality.top 793 776 776 s6Step1EarlyControlLog.flagWork=some s6Step1EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step1EarlyControl_flagsOwned⟩
  · exact s6Step1EarlyControl_flagsBorrow
private theorem s6Step1EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step1EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_fitBorrow : s6Step1EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step1EarlyControlLog.recordFresh=some s6Step1EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step1EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step1EarlyControlFittedArena,s6Step1EarlyControlFlagArena,s6Step1EarlyControlLog,arenaWires]
theorem s6Step1EarlyControl_fit : compileHmrRecordGrowLog s6Step1EarlyControlFlagArena [895] 1 s6Step1EarlyControlLog.recordFresh=some s6Step1EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step1EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step1EarlyControl_fitBorrow
private theorem s6Step1EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_historyBorrow : s6Step1EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step1EarlyControlLog.recordFresh=some s6Step1EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step1EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
      decide +kernel
    · ext q
      simp [s6Step1EarlyControlHistoryArena,s6Step1EarlyControlArena,s6Step1EarlyControlLog,arenaWires]
theorem s6Step1EarlyControl_history : compileHmrRecordGrowLog s6Step1EarlyControlArena [895] 1 s6Step1EarlyControlLog.recordFresh=some s6Step1EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step1EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step1EarlyControl_historyBorrow
private theorem s6Step1EarlyControl_sigmaOwned : ([876, 768] : List Wire).toFinset⊆s6Step1EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step1EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_sigmaRelease : s6Step1EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step1EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step1EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step1EarlyControlSigmaArena,s6Step1EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step1EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step1EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlSigmaArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EarlyControl_branch : compileHmrBranchRetirement s6Step1EarlyControlSigmaArena 860=some s6Step1EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step1EarlyControl_branchOwned
  · ext q
    simp [s6Step1EarlyControlOutputArena,s6Step1EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step1EarlyControl_sigma : compileHmrSigmaDropLog s6Step1EarlyControlHistoryArena false 0 0 876 768 []=some s6Step1EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step1EarlyControl_sigmaOwned⟩
  · exact s6Step1EarlyControl_sigmaRelease
theorem s6Step1EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step1EarlyControlLog.zeroWork).map Prod.snd=some (s6Step1EarlyControlLog.zeroWork,s6Step1EarlyControlZeroPlan) := by
  rw [s6Step1EarlyControl_zero]
  rfl
theorem s6Step1EarlyControl_classProjection : (compileHmrSourceClassLog s6Step1EarlyControlZeroArena false 769 s6Step1EarlyControlZeroPlan.top 0 768 s6Step1EarlyControlLog.positiveWork s6Step1EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step1EarlyControlClassPlan.positiveWork,s6Step1EarlyControlClassPlan.equalityWork,s6Step1EarlyControlClassPlan.equality) := by
  rw [s6Step1EarlyControl_class]
  rfl
theorem s6Step1EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step1EarlyControlClassPlan.equalityArena s6Step1EarlyControlClassPlan.equality.top 793 776 776 s6Step1EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step1EarlyControl_flags]
  rfl
theorem s6Step1EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step1EarlyControlFlagArena [895] 1 s6Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step1EarlyControl_fit]
  rfl
theorem s6Step1EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step1EarlyControlArena [895] 1 s6Step1EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step1EarlyControl_history]
  rfl
theorem s6Step1EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step1EarlyControlHistoryArena false 0 0 876 768 []).map (fun _ => true)=some true := by
  rw [s6Step1EarlyControl_sigma]
  rfl
theorem s6Step1EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step1EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  rw [s6Step1EarlyControl_branch]
  rfl
private theorem s6Step1EarlyControl_entrySigmaOwned : ([768, 876] : List Wire).toFinset⊆s6Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step1EarlyControl_entryRecordOwned : ([860, 895] : List Wire).toFinset⊆s6Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EarlyControl_logged : s6Step1EarlyControlPlan.Logged s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 768 876 793 776 776 860 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step1EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step1EarlyControl_entrySigmaOwned
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
private theorem s6Step2EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_zeroBorrow : s6Step2EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step2EarlyControlLog.zeroWork=some s6Step2EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
      decide +kernel
    · ext q
      simp [s6Step2EarlyControlZeroArena,s6Step2EarlyControlArena,s6Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step2EarlyControl_zero : compileHmrEqualityLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step2EarlyControlLog.zeroWork=some (s6Step2EarlyControlZeroArena,s6Step2EarlyControlLog.zeroWork,s6Step2EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step2EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step2EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step2EarlyControl_positiveBorrow : s6Step2EarlyControlZeroArena.checkBorrow (1) s6Step2EarlyControlLog.positiveWork=some s6Step2EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step2EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step2EarlyControlPositiveArena,s6Step2EarlyControlZeroArena,s6Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step2EarlyControl_classEqualityOwned : ([874, 875] : List Wire).toFinset⊆s6Step2EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_classEqualityBorrow : s6Step2EarlyControlPositiveArena.checkBorrow (([874, 875] : List Wire).length-1) s6Step2EarlyControlLog.classWork=some s6Step2EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step2EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step2EarlyControlEqualityArena,s6Step2EarlyControlPositiveArena,s6Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step2EarlyControl_classEquality : compileHmrEqualityLog s6Step2EarlyControlPositiveArena [874, 875] 0 s6Step2EarlyControlLog.classWork=some (s6Step2EarlyControlEqualityArena,s6Step2EarlyControlLog.classWork,s6Step2EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step2EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step2EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step2EarlyControl_classOwned : ([769, 813, 874] : List Wire).toFinset⊆s6Step2EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step2EarlyControl_class : compileHmrSourceClassLog s6Step2EarlyControlZeroArena false 769 s6Step2EarlyControlZeroPlan.top 0 874 s6Step2EarlyControlLog.positiveWork s6Step2EarlyControlLog.classWork=some s6Step2EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step2EarlyControlClassPlan s6Step2EarlyControlZeroArena false 769 s6Step2EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step2EarlyControl_classOwned
  · exact s6Step2EarlyControl_positiveBorrow
  · exact s6Step2EarlyControl_classEquality
private theorem s6Step2EarlyControl_flagsOwned : ([779, 793, 802, 776] : List Wire).toFinset⊆s6Step2EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_flagsBorrow : s6Step2EarlyControlEqualityArena.checkBorrow (6) s6Step2EarlyControlLog.flagWork=some s6Step2EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step2EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step2EarlyControlFlagArena,s6Step2EarlyControlEqualityArena,s6Step2EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step2EarlyControl_flags : compileHmrFlagsLog s6Step2EarlyControlClassPlan.equalityArena s6Step2EarlyControlClassPlan.equality.top 793 802 776 s6Step2EarlyControlLog.flagWork=some s6Step2EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step2EarlyControl_flagsOwned⟩
  · exact s6Step2EarlyControl_flagsBorrow
private theorem s6Step2EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step2EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_fitBorrow : s6Step2EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step2EarlyControlLog.recordFresh=some s6Step2EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step2EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step2EarlyControlFittedArena,s6Step2EarlyControlFlagArena,s6Step2EarlyControlLog,arenaWires]
theorem s6Step2EarlyControl_fit : compileHmrRecordGrowLog s6Step2EarlyControlFlagArena [895] 1 s6Step2EarlyControlLog.recordFresh=some s6Step2EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step2EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step2EarlyControl_fitBorrow
private theorem s6Step2EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_historyBorrow : s6Step2EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step2EarlyControlLog.recordFresh=some s6Step2EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step2EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
      decide +kernel
    · ext q
      simp [s6Step2EarlyControlHistoryArena,s6Step2EarlyControlArena,s6Step2EarlyControlLog,arenaWires]
theorem s6Step2EarlyControl_history : compileHmrRecordGrowLog s6Step2EarlyControlArena [895] 1 s6Step2EarlyControlLog.recordFresh=some s6Step2EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step2EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step2EarlyControl_historyBorrow
private theorem s6Step2EarlyControl_sigmaOwned : ([876, 874] : List Wire).toFinset⊆s6Step2EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step2EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_sigmaRelease : s6Step2EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step2EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step2EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step2EarlyControlSigmaArena,s6Step2EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step2EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step2EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2EarlyControl_branch : compileHmrBranchRetirement s6Step2EarlyControlSigmaArena 862=some s6Step2EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step2EarlyControl_branchOwned
  · ext q
    simp [s6Step2EarlyControlOutputArena,s6Step2EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step2EarlyControl_sigma : compileHmrSigmaDropLog s6Step2EarlyControlHistoryArena false 0 0 876 874 []=some s6Step2EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step2EarlyControl_sigmaOwned⟩
  · exact s6Step2EarlyControl_sigmaRelease
theorem s6Step2EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step2EarlyControlLog.zeroWork).map Prod.snd=some (s6Step2EarlyControlLog.zeroWork,s6Step2EarlyControlZeroPlan) := by
  rw [s6Step2EarlyControl_zero]
  rfl
theorem s6Step2EarlyControl_classProjection : (compileHmrSourceClassLog s6Step2EarlyControlZeroArena false 769 s6Step2EarlyControlZeroPlan.top 0 874 s6Step2EarlyControlLog.positiveWork s6Step2EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step2EarlyControlClassPlan.positiveWork,s6Step2EarlyControlClassPlan.equalityWork,s6Step2EarlyControlClassPlan.equality) := by
  rw [s6Step2EarlyControl_class]
  rfl
theorem s6Step2EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step2EarlyControlClassPlan.equalityArena s6Step2EarlyControlClassPlan.equality.top 793 802 776 s6Step2EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step2EarlyControl_flags]
  rfl
theorem s6Step2EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step2EarlyControlFlagArena [895] 1 s6Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step2EarlyControl_fit]
  rfl
theorem s6Step2EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step2EarlyControlArena [895] 1 s6Step2EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step2EarlyControl_history]
  rfl
theorem s6Step2EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step2EarlyControlHistoryArena false 0 0 876 874 []).map (fun _ => true)=some true := by
  rw [s6Step2EarlyControl_sigma]
  rfl
theorem s6Step2EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step2EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  rw [s6Step2EarlyControl_branch]
  rfl
private theorem s6Step2EarlyControl_entrySigmaOwned : ([874, 876] : List Wire).toFinset⊆s6Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
private theorem s6Step2EarlyControl_entryRecordOwned : ([862, 895] : List Wire).toFinset⊆s6Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2EarlyControl_logged : s6Step2EarlyControlPlan.Logged s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 874 876 793 802 776 862 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step2EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step2EarlyControl_entrySigmaOwned
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
private theorem s6Step3EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_zeroBorrow : s6Step3EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step3EarlyControlLog.zeroWork=some s6Step3EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step3EarlyControlZeroArena,s6Step3EarlyControlArena,s6Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step3EarlyControl_zero : compileHmrEqualityLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step3EarlyControlLog.zeroWork=some (s6Step3EarlyControlZeroArena,s6Step3EarlyControlLog.zeroWork,s6Step3EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step3EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step3EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step3EarlyControl_positiveBorrow : s6Step3EarlyControlZeroArena.checkBorrow (1) s6Step3EarlyControlLog.positiveWork=some s6Step3EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step3EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step3EarlyControlPositiveArena,s6Step3EarlyControlZeroArena,s6Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step3EarlyControl_classEqualityOwned : ([927, 868] : List Wire).toFinset⊆s6Step3EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_classEqualityBorrow : s6Step3EarlyControlPositiveArena.checkBorrow (([927, 868] : List Wire).length-1) s6Step3EarlyControlLog.classWork=some s6Step3EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step3EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step3EarlyControlEqualityArena,s6Step3EarlyControlPositiveArena,s6Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step3EarlyControl_classEquality : compileHmrEqualityLog s6Step3EarlyControlPositiveArena [927, 868] 0 s6Step3EarlyControlLog.classWork=some (s6Step3EarlyControlEqualityArena,s6Step3EarlyControlLog.classWork,s6Step3EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step3EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step3EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step3EarlyControl_classOwned : ([769, 860, 927] : List Wire).toFinset⊆s6Step3EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step3EarlyControl_class : compileHmrSourceClassLog s6Step3EarlyControlZeroArena false 769 s6Step3EarlyControlZeroPlan.top 0 927 s6Step3EarlyControlLog.positiveWork s6Step3EarlyControlLog.classWork=some s6Step3EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step3EarlyControlClassPlan s6Step3EarlyControlZeroArena false 769 s6Step3EarlyControlZeroPlan.top 0 927
  constructor
  · decide +kernel
  · exact s6Step3EarlyControl_classOwned
  · exact s6Step3EarlyControl_positiveBorrow
  · exact s6Step3EarlyControl_classEquality
private theorem s6Step3EarlyControl_flagsOwned : ([857, 793, 802, 779] : List Wire).toFinset⊆s6Step3EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_flagsBorrow : s6Step3EarlyControlEqualityArena.checkBorrow (6) s6Step3EarlyControlLog.flagWork=some s6Step3EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step3EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step3EarlyControlFlagArena,s6Step3EarlyControlEqualityArena,s6Step3EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step3EarlyControl_flags : compileHmrFlagsLog s6Step3EarlyControlClassPlan.equalityArena s6Step3EarlyControlClassPlan.equality.top 793 802 779 s6Step3EarlyControlLog.flagWork=some s6Step3EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step3EarlyControl_flagsOwned⟩
  · exact s6Step3EarlyControl_flagsBorrow
private theorem s6Step3EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step3EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_fitBorrow : s6Step3EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step3EarlyControlLog.recordFresh=some s6Step3EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step3EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step3EarlyControlFittedArena,s6Step3EarlyControlFlagArena,s6Step3EarlyControlLog,arenaWires]
theorem s6Step3EarlyControl_fit : compileHmrRecordGrowLog s6Step3EarlyControlFlagArena [895] 1 s6Step3EarlyControlLog.recordFresh=some s6Step3EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step3EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step3EarlyControl_fitBorrow
private theorem s6Step3EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_historyBorrow : s6Step3EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step3EarlyControlLog.recordFresh=some s6Step3EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step3EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step3EarlyControlHistoryArena,s6Step3EarlyControlArena,s6Step3EarlyControlLog,arenaWires]
theorem s6Step3EarlyControl_history : compileHmrRecordGrowLog s6Step3EarlyControlArena [895] 1 s6Step3EarlyControlLog.recordFresh=some s6Step3EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step3EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step3EarlyControl_historyBorrow
private theorem s6Step3EarlyControl_sigmaOwned : ([876, 927] : List Wire).toFinset⊆s6Step3EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_sigmaReleaseOwned : ([927] : List Wire).toFinset⊆s6Step3EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_sigmaRelease : s6Step3EarlyControlHistoryArena.release {927} (fun _ => false)=some s6Step3EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step3EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step3EarlyControlSigmaArena,s6Step3EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step3EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step3EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step3EarlyControl_branch : compileHmrBranchRetirement s6Step3EarlyControlSigmaArena 807=some s6Step3EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step3EarlyControl_branchOwned
  · ext q
    simp [s6Step3EarlyControlOutputArena,s6Step3EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step3EarlyControl_sigma : compileHmrSigmaDropLog s6Step3EarlyControlHistoryArena false 0 0 876 927 []=some s6Step3EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step3EarlyControl_sigmaOwned⟩
  · exact s6Step3EarlyControl_sigmaRelease
theorem s6Step3EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step3EarlyControlLog.zeroWork).map Prod.snd=some (s6Step3EarlyControlLog.zeroWork,s6Step3EarlyControlZeroPlan) := by
  rw [s6Step3EarlyControl_zero]
  rfl
theorem s6Step3EarlyControl_classProjection : (compileHmrSourceClassLog s6Step3EarlyControlZeroArena false 769 s6Step3EarlyControlZeroPlan.top 0 927 s6Step3EarlyControlLog.positiveWork s6Step3EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step3EarlyControlClassPlan.positiveWork,s6Step3EarlyControlClassPlan.equalityWork,s6Step3EarlyControlClassPlan.equality) := by
  rw [s6Step3EarlyControl_class]
  rfl
theorem s6Step3EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step3EarlyControlClassPlan.equalityArena s6Step3EarlyControlClassPlan.equality.top 793 802 779 s6Step3EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step3EarlyControl_flags]
  rfl
theorem s6Step3EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step3EarlyControlFlagArena [895] 1 s6Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step3EarlyControl_fit]
  rfl
theorem s6Step3EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step3EarlyControlArena [895] 1 s6Step3EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step3EarlyControl_history]
  rfl
theorem s6Step3EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step3EarlyControlHistoryArena false 0 0 876 927 []).map (fun _ => true)=some true := by
  rw [s6Step3EarlyControl_sigma]
  rfl
theorem s6Step3EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step3EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s6Step3EarlyControl_branch]
  rfl
private theorem s6Step3EarlyControl_entrySigmaOwned : ([927, 876] : List Wire).toFinset⊆s6Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step3EarlyControl_entryRecordOwned : ([807, 895] : List Wire).toFinset⊆s6Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step3EarlyControl_logged : s6Step3EarlyControlPlan.Logged s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 927 876 793 802 779 807 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step3EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step3EarlyControl_entrySigmaOwned
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
private theorem s6Step4EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_zeroBorrow : s6Step4EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step4EarlyControlLog.zeroWork=some s6Step4EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step4EarlyControlZeroArena,s6Step4EarlyControlArena,s6Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step4EarlyControl_zero : compileHmrEqualityLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step4EarlyControlLog.zeroWork=some (s6Step4EarlyControlZeroArena,s6Step4EarlyControlLog.zeroWork,s6Step4EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step4EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step4EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step4EarlyControl_positiveBorrow : s6Step4EarlyControlZeroArena.checkBorrow (1) s6Step4EarlyControlLog.positiveWork=some s6Step4EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step4EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step4EarlyControlPositiveArena,s6Step4EarlyControlZeroArena,s6Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step4EarlyControl_classEqualityOwned : ([875, 907] : List Wire).toFinset⊆s6Step4EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_classEqualityBorrow : s6Step4EarlyControlPositiveArena.checkBorrow (([875, 907] : List Wire).length-1) s6Step4EarlyControlLog.classWork=some s6Step4EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step4EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step4EarlyControlEqualityArena,s6Step4EarlyControlPositiveArena,s6Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step4EarlyControl_classEquality : compileHmrEqualityLog s6Step4EarlyControlPositiveArena [875, 907] 0 s6Step4EarlyControlLog.classWork=some (s6Step4EarlyControlEqualityArena,s6Step4EarlyControlLog.classWork,s6Step4EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step4EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step4EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step4EarlyControl_classOwned : ([769, 862, 875] : List Wire).toFinset⊆s6Step4EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4EarlyControl_class : compileHmrSourceClassLog s6Step4EarlyControlZeroArena false 769 s6Step4EarlyControlZeroPlan.top 0 875 s6Step4EarlyControlLog.positiveWork s6Step4EarlyControlLog.classWork=some s6Step4EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step4EarlyControlClassPlan s6Step4EarlyControlZeroArena false 769 s6Step4EarlyControlZeroPlan.top 0 875
  constructor
  · decide +kernel
  · exact s6Step4EarlyControl_classOwned
  · exact s6Step4EarlyControl_positiveBorrow
  · exact s6Step4EarlyControl_classEquality
private theorem s6Step4EarlyControl_flagsOwned : ([858, 793, 802, 779] : List Wire).toFinset⊆s6Step4EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_flagsBorrow : s6Step4EarlyControlEqualityArena.checkBorrow (6) s6Step4EarlyControlLog.flagWork=some s6Step4EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step4EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step4EarlyControlFlagArena,s6Step4EarlyControlEqualityArena,s6Step4EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step4EarlyControl_flags : compileHmrFlagsLog s6Step4EarlyControlClassPlan.equalityArena s6Step4EarlyControlClassPlan.equality.top 793 802 779 s6Step4EarlyControlLog.flagWork=some s6Step4EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step4EarlyControl_flagsOwned⟩
  · exact s6Step4EarlyControl_flagsBorrow
private theorem s6Step4EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step4EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_fitBorrow : s6Step4EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step4EarlyControlLog.recordFresh=some s6Step4EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step4EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step4EarlyControlFittedArena,s6Step4EarlyControlFlagArena,s6Step4EarlyControlLog,arenaWires]
theorem s6Step4EarlyControl_fit : compileHmrRecordGrowLog s6Step4EarlyControlFlagArena [895] 1 s6Step4EarlyControlLog.recordFresh=some s6Step4EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step4EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step4EarlyControl_fitBorrow
private theorem s6Step4EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_historyBorrow : s6Step4EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step4EarlyControlLog.recordFresh=some s6Step4EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step4EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step4EarlyControlHistoryArena,s6Step4EarlyControlArena,s6Step4EarlyControlLog,arenaWires]
theorem s6Step4EarlyControl_history : compileHmrRecordGrowLog s6Step4EarlyControlArena [895] 1 s6Step4EarlyControlLog.recordFresh=some s6Step4EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step4EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step4EarlyControl_historyBorrow
private theorem s6Step4EarlyControl_sigmaOwned : ([876, 875] : List Wire).toFinset⊆s6Step4EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_sigmaReleaseOwned : ([875] : List Wire).toFinset⊆s6Step4EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_sigmaRelease : s6Step4EarlyControlHistoryArena.release {875} (fun _ => false)=some s6Step4EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step4EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step4EarlyControlSigmaArena,s6Step4EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step4EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step4EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4EarlyControl_branch : compileHmrBranchRetirement s6Step4EarlyControlSigmaArena 813=some s6Step4EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step4EarlyControl_branchOwned
  · ext q
    simp [s6Step4EarlyControlOutputArena,s6Step4EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step4EarlyControl_sigma : compileHmrSigmaDropLog s6Step4EarlyControlHistoryArena false 0 0 876 875 []=some s6Step4EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step4EarlyControl_sigmaOwned⟩
  · exact s6Step4EarlyControl_sigmaRelease
theorem s6Step4EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step4EarlyControlLog.zeroWork).map Prod.snd=some (s6Step4EarlyControlLog.zeroWork,s6Step4EarlyControlZeroPlan) := by
  rw [s6Step4EarlyControl_zero]
  rfl
theorem s6Step4EarlyControl_classProjection : (compileHmrSourceClassLog s6Step4EarlyControlZeroArena false 769 s6Step4EarlyControlZeroPlan.top 0 875 s6Step4EarlyControlLog.positiveWork s6Step4EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step4EarlyControlClassPlan.positiveWork,s6Step4EarlyControlClassPlan.equalityWork,s6Step4EarlyControlClassPlan.equality) := by
  rw [s6Step4EarlyControl_class]
  rfl
theorem s6Step4EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step4EarlyControlClassPlan.equalityArena s6Step4EarlyControlClassPlan.equality.top 793 802 779 s6Step4EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step4EarlyControl_flags]
  rfl
theorem s6Step4EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step4EarlyControlFlagArena [895] 1 s6Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step4EarlyControl_fit]
  rfl
theorem s6Step4EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step4EarlyControlArena [895] 1 s6Step4EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step4EarlyControl_history]
  rfl
theorem s6Step4EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step4EarlyControlHistoryArena false 0 0 876 875 []).map (fun _ => true)=some true := by
  rw [s6Step4EarlyControl_sigma]
  rfl
theorem s6Step4EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step4EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6Step4EarlyControl_branch]
  rfl
private theorem s6Step4EarlyControl_entrySigmaOwned : ([875, 876] : List Wire).toFinset⊆s6Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step4EarlyControl_entryRecordOwned : ([813, 895] : List Wire).toFinset⊆s6Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4EarlyControl_logged : s6Step4EarlyControlPlan.Logged s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 875 876 793 802 779 813 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step4EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step4EarlyControl_entrySigmaOwned
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
private theorem s6Step5EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_zeroBorrow : s6Step5EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step5EarlyControlLog.zeroWork=some s6Step5EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step5EarlyControlZeroArena,s6Step5EarlyControlArena,s6Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step5EarlyControl_zero : compileHmrEqualityLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step5EarlyControlLog.zeroWork=some (s6Step5EarlyControlZeroArena,s6Step5EarlyControlLog.zeroWork,s6Step5EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step5EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step5EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step5EarlyControl_positiveBorrow : s6Step5EarlyControlZeroArena.checkBorrow (1) s6Step5EarlyControlLog.positiveWork=some s6Step5EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step5EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step5EarlyControlPositiveArena,s6Step5EarlyControlZeroArena,s6Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step5EarlyControl_classEqualityOwned : ([868, 908] : List Wire).toFinset⊆s6Step5EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_classEqualityBorrow : s6Step5EarlyControlPositiveArena.checkBorrow (([868, 908] : List Wire).length-1) s6Step5EarlyControlLog.classWork=some s6Step5EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step5EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step5EarlyControlEqualityArena,s6Step5EarlyControlPositiveArena,s6Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step5EarlyControl_classEquality : compileHmrEqualityLog s6Step5EarlyControlPositiveArena [868, 908] 0 s6Step5EarlyControlLog.classWork=some (s6Step5EarlyControlEqualityArena,s6Step5EarlyControlLog.classWork,s6Step5EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step5EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step5EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step5EarlyControl_classOwned : ([769, 807, 868] : List Wire).toFinset⊆s6Step5EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EarlyControl_class : compileHmrSourceClassLog s6Step5EarlyControlZeroArena false 769 s6Step5EarlyControlZeroPlan.top 0 868 s6Step5EarlyControlLog.positiveWork s6Step5EarlyControlLog.classWork=some s6Step5EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step5EarlyControlClassPlan s6Step5EarlyControlZeroArena false 769 s6Step5EarlyControlZeroPlan.top 0 868
  constructor
  · decide +kernel
  · exact s6Step5EarlyControl_classOwned
  · exact s6Step5EarlyControl_positiveBorrow
  · exact s6Step5EarlyControl_classEquality
private theorem s6Step5EarlyControl_flagsOwned : ([845, 793, 802, 779] : List Wire).toFinset⊆s6Step5EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_flagsBorrow : s6Step5EarlyControlEqualityArena.checkBorrow (6) s6Step5EarlyControlLog.flagWork=some s6Step5EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step5EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step5EarlyControlFlagArena,s6Step5EarlyControlEqualityArena,s6Step5EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step5EarlyControl_flags : compileHmrFlagsLog s6Step5EarlyControlClassPlan.equalityArena s6Step5EarlyControlClassPlan.equality.top 793 802 779 s6Step5EarlyControlLog.flagWork=some s6Step5EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step5EarlyControl_flagsOwned⟩
  · exact s6Step5EarlyControl_flagsBorrow
private theorem s6Step5EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step5EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_fitBorrow : s6Step5EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step5EarlyControlLog.recordFresh=some s6Step5EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step5EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step5EarlyControlFittedArena,s6Step5EarlyControlFlagArena,s6Step5EarlyControlLog,arenaWires]
theorem s6Step5EarlyControl_fit : compileHmrRecordGrowLog s6Step5EarlyControlFlagArena [895] 1 s6Step5EarlyControlLog.recordFresh=some s6Step5EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step5EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step5EarlyControl_fitBorrow
private theorem s6Step5EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_historyBorrow : s6Step5EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step5EarlyControlLog.recordFresh=some s6Step5EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step5EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step5EarlyControlHistoryArena,s6Step5EarlyControlArena,s6Step5EarlyControlLog,arenaWires]
theorem s6Step5EarlyControl_history : compileHmrRecordGrowLog s6Step5EarlyControlArena [895] 1 s6Step5EarlyControlLog.recordFresh=some s6Step5EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step5EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step5EarlyControl_historyBorrow
private theorem s6Step5EarlyControl_sigmaOwned : ([876, 868] : List Wire).toFinset⊆s6Step5EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_sigmaReleaseOwned : ([868] : List Wire).toFinset⊆s6Step5EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_sigmaRelease : s6Step5EarlyControlHistoryArena.release {868} (fun _ => false)=some s6Step5EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step5EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step5EarlyControlSigmaArena,s6Step5EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step5EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step5EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EarlyControl_branch : compileHmrBranchRetirement s6Step5EarlyControlSigmaArena 860=some s6Step5EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step5EarlyControl_branchOwned
  · ext q
    simp [s6Step5EarlyControlOutputArena,s6Step5EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step5EarlyControl_sigma : compileHmrSigmaDropLog s6Step5EarlyControlHistoryArena false 0 0 876 868 []=some s6Step5EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step5EarlyControl_sigmaOwned⟩
  · exact s6Step5EarlyControl_sigmaRelease
theorem s6Step5EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step5EarlyControlLog.zeroWork).map Prod.snd=some (s6Step5EarlyControlLog.zeroWork,s6Step5EarlyControlZeroPlan) := by
  rw [s6Step5EarlyControl_zero]
  rfl
theorem s6Step5EarlyControl_classProjection : (compileHmrSourceClassLog s6Step5EarlyControlZeroArena false 769 s6Step5EarlyControlZeroPlan.top 0 868 s6Step5EarlyControlLog.positiveWork s6Step5EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step5EarlyControlClassPlan.positiveWork,s6Step5EarlyControlClassPlan.equalityWork,s6Step5EarlyControlClassPlan.equality) := by
  rw [s6Step5EarlyControl_class]
  rfl
theorem s6Step5EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step5EarlyControlClassPlan.equalityArena s6Step5EarlyControlClassPlan.equality.top 793 802 779 s6Step5EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step5EarlyControl_flags]
  rfl
theorem s6Step5EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step5EarlyControlFlagArena [895] 1 s6Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step5EarlyControl_fit]
  rfl
theorem s6Step5EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step5EarlyControlArena [895] 1 s6Step5EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step5EarlyControl_history]
  rfl
theorem s6Step5EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step5EarlyControlHistoryArena false 0 0 876 868 []).map (fun _ => true)=some true := by
  rw [s6Step5EarlyControl_sigma]
  rfl
theorem s6Step5EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step5EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  rw [s6Step5EarlyControl_branch]
  rfl
private theorem s6Step5EarlyControl_entrySigmaOwned : ([868, 876] : List Wire).toFinset⊆s6Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step5EarlyControl_entryRecordOwned : ([860, 895] : List Wire).toFinset⊆s6Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EarlyControl_logged : s6Step5EarlyControlPlan.Logged s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 868 876 793 802 779 860 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step5EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step5EarlyControl_entrySigmaOwned
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
private theorem s6Step6EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_zeroBorrow : s6Step6EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step6EarlyControlLog.zeroWork=some s6Step6EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step6EarlyControlZeroArena,s6Step6EarlyControlArena,s6Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step6EarlyControl_zero : compileHmrEqualityLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step6EarlyControlLog.zeroWork=some (s6Step6EarlyControlZeroArena,s6Step6EarlyControlLog.zeroWork,s6Step6EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step6EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step6EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step6EarlyControl_positiveBorrow : s6Step6EarlyControlZeroArena.checkBorrow (1) s6Step6EarlyControlLog.positiveWork=some s6Step6EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step6EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step6EarlyControlPositiveArena,s6Step6EarlyControlZeroArena,s6Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step6EarlyControl_classEqualityOwned : ([907, 890] : List Wire).toFinset⊆s6Step6EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_classEqualityBorrow : s6Step6EarlyControlPositiveArena.checkBorrow (([907, 890] : List Wire).length-1) s6Step6EarlyControlLog.classWork=some s6Step6EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step6EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step6EarlyControlEqualityArena,s6Step6EarlyControlPositiveArena,s6Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step6EarlyControl_classEquality : compileHmrEqualityLog s6Step6EarlyControlPositiveArena [907, 890] 0 s6Step6EarlyControlLog.classWork=some (s6Step6EarlyControlEqualityArena,s6Step6EarlyControlLog.classWork,s6Step6EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step6EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step6EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step6EarlyControl_classOwned : ([769, 813, 907] : List Wire).toFinset⊆s6Step6EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EarlyControl_class : compileHmrSourceClassLog s6Step6EarlyControlZeroArena false 769 s6Step6EarlyControlZeroPlan.top 0 907 s6Step6EarlyControlLog.positiveWork s6Step6EarlyControlLog.classWork=some s6Step6EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step6EarlyControlClassPlan s6Step6EarlyControlZeroArena false 769 s6Step6EarlyControlZeroPlan.top 0 907
  constructor
  · decide +kernel
  · exact s6Step6EarlyControl_classOwned
  · exact s6Step6EarlyControl_positiveBorrow
  · exact s6Step6EarlyControl_classEquality
private theorem s6Step6EarlyControl_flagsOwned : ([805, 793, 802, 779] : List Wire).toFinset⊆s6Step6EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_flagsBorrow : s6Step6EarlyControlEqualityArena.checkBorrow (6) s6Step6EarlyControlLog.flagWork=some s6Step6EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step6EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step6EarlyControlFlagArena,s6Step6EarlyControlEqualityArena,s6Step6EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step6EarlyControl_flags : compileHmrFlagsLog s6Step6EarlyControlClassPlan.equalityArena s6Step6EarlyControlClassPlan.equality.top 793 802 779 s6Step6EarlyControlLog.flagWork=some s6Step6EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step6EarlyControl_flagsOwned⟩
  · exact s6Step6EarlyControl_flagsBorrow
private theorem s6Step6EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step6EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_fitBorrow : s6Step6EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step6EarlyControlLog.recordFresh=some s6Step6EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step6EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step6EarlyControlFittedArena,s6Step6EarlyControlFlagArena,s6Step6EarlyControlLog,arenaWires]
theorem s6Step6EarlyControl_fit : compileHmrRecordGrowLog s6Step6EarlyControlFlagArena [895] 1 s6Step6EarlyControlLog.recordFresh=some s6Step6EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step6EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step6EarlyControl_fitBorrow
private theorem s6Step6EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_historyBorrow : s6Step6EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step6EarlyControlLog.recordFresh=some s6Step6EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step6EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step6EarlyControlHistoryArena,s6Step6EarlyControlArena,s6Step6EarlyControlLog,arenaWires]
theorem s6Step6EarlyControl_history : compileHmrRecordGrowLog s6Step6EarlyControlArena [895] 1 s6Step6EarlyControlLog.recordFresh=some s6Step6EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step6EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step6EarlyControl_historyBorrow
private theorem s6Step6EarlyControl_sigmaOwned : ([876, 907] : List Wire).toFinset⊆s6Step6EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_sigmaReleaseOwned : ([907] : List Wire).toFinset⊆s6Step6EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_sigmaRelease : s6Step6EarlyControlHistoryArena.release {907} (fun _ => false)=some s6Step6EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step6EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step6EarlyControlSigmaArena,s6Step6EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step6EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step6EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EarlyControl_branch : compileHmrBranchRetirement s6Step6EarlyControlSigmaArena 862=some s6Step6EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step6EarlyControl_branchOwned
  · ext q
    simp [s6Step6EarlyControlOutputArena,s6Step6EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step6EarlyControl_sigma : compileHmrSigmaDropLog s6Step6EarlyControlHistoryArena false 0 0 876 907 []=some s6Step6EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step6EarlyControl_sigmaOwned⟩
  · exact s6Step6EarlyControl_sigmaRelease
theorem s6Step6EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step6EarlyControlLog.zeroWork).map Prod.snd=some (s6Step6EarlyControlLog.zeroWork,s6Step6EarlyControlZeroPlan) := by
  rw [s6Step6EarlyControl_zero]
  rfl
theorem s6Step6EarlyControl_classProjection : (compileHmrSourceClassLog s6Step6EarlyControlZeroArena false 769 s6Step6EarlyControlZeroPlan.top 0 907 s6Step6EarlyControlLog.positiveWork s6Step6EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step6EarlyControlClassPlan.positiveWork,s6Step6EarlyControlClassPlan.equalityWork,s6Step6EarlyControlClassPlan.equality) := by
  rw [s6Step6EarlyControl_class]
  rfl
theorem s6Step6EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step6EarlyControlClassPlan.equalityArena s6Step6EarlyControlClassPlan.equality.top 793 802 779 s6Step6EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step6EarlyControl_flags]
  rfl
theorem s6Step6EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step6EarlyControlFlagArena [895] 1 s6Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step6EarlyControl_fit]
  rfl
theorem s6Step6EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step6EarlyControlArena [895] 1 s6Step6EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step6EarlyControl_history]
  rfl
theorem s6Step6EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step6EarlyControlHistoryArena false 0 0 876 907 []).map (fun _ => true)=some true := by
  rw [s6Step6EarlyControl_sigma]
  rfl
theorem s6Step6EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step6EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  rw [s6Step6EarlyControl_branch]
  rfl
private theorem s6Step6EarlyControl_entrySigmaOwned : ([907, 876] : List Wire).toFinset⊆s6Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step6EarlyControl_entryRecordOwned : ([862, 895] : List Wire).toFinset⊆s6Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EarlyControl_logged : s6Step6EarlyControlPlan.Logged s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 907 876 793 802 779 862 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step6EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step6EarlyControl_entrySigmaOwned
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
private theorem s6Step7EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_zeroBorrow : s6Step7EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step7EarlyControlLog.zeroWork=some s6Step7EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step7EarlyControlZeroArena,s6Step7EarlyControlArena,s6Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step7EarlyControl_zero : compileHmrEqualityLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step7EarlyControlLog.zeroWork=some (s6Step7EarlyControlZeroArena,s6Step7EarlyControlLog.zeroWork,s6Step7EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step7EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step7EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step7EarlyControl_positiveBorrow : s6Step7EarlyControlZeroArena.checkBorrow (1) s6Step7EarlyControlLog.positiveWork=some s6Step7EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step7EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step7EarlyControlPositiveArena,s6Step7EarlyControlZeroArena,s6Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step7EarlyControl_classEqualityOwned : ([908, 873] : List Wire).toFinset⊆s6Step7EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_classEqualityBorrow : s6Step7EarlyControlPositiveArena.checkBorrow (([908, 873] : List Wire).length-1) s6Step7EarlyControlLog.classWork=some s6Step7EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step7EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step7EarlyControlEqualityArena,s6Step7EarlyControlPositiveArena,s6Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step7EarlyControl_classEquality : compileHmrEqualityLog s6Step7EarlyControlPositiveArena [908, 873] 0 s6Step7EarlyControlLog.classWork=some (s6Step7EarlyControlEqualityArena,s6Step7EarlyControlLog.classWork,s6Step7EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step7EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step7EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step7EarlyControl_classOwned : ([769, 860, 908] : List Wire).toFinset⊆s6Step7EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EarlyControl_class : compileHmrSourceClassLog s6Step7EarlyControlZeroArena false 769 s6Step7EarlyControlZeroPlan.top 0 908 s6Step7EarlyControlLog.positiveWork s6Step7EarlyControlLog.classWork=some s6Step7EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step7EarlyControlClassPlan s6Step7EarlyControlZeroArena false 769 s6Step7EarlyControlZeroPlan.top 0 908
  constructor
  · decide +kernel
  · exact s6Step7EarlyControl_classOwned
  · exact s6Step7EarlyControl_positiveBorrow
  · exact s6Step7EarlyControl_classEquality
private theorem s6Step7EarlyControl_flagsOwned : ([796, 793, 802, 779] : List Wire).toFinset⊆s6Step7EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_flagsBorrow : s6Step7EarlyControlEqualityArena.checkBorrow (6) s6Step7EarlyControlLog.flagWork=some s6Step7EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step7EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step7EarlyControlFlagArena,s6Step7EarlyControlEqualityArena,s6Step7EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step7EarlyControl_flags : compileHmrFlagsLog s6Step7EarlyControlClassPlan.equalityArena s6Step7EarlyControlClassPlan.equality.top 793 802 779 s6Step7EarlyControlLog.flagWork=some s6Step7EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step7EarlyControl_flagsOwned⟩
  · exact s6Step7EarlyControl_flagsBorrow
private theorem s6Step7EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step7EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_fitBorrow : s6Step7EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step7EarlyControlLog.recordFresh=some s6Step7EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step7EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step7EarlyControlFittedArena,s6Step7EarlyControlFlagArena,s6Step7EarlyControlLog,arenaWires]
theorem s6Step7EarlyControl_fit : compileHmrRecordGrowLog s6Step7EarlyControlFlagArena [895] 1 s6Step7EarlyControlLog.recordFresh=some s6Step7EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step7EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step7EarlyControl_fitBorrow
private theorem s6Step7EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_historyBorrow : s6Step7EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step7EarlyControlLog.recordFresh=some s6Step7EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step7EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step7EarlyControlHistoryArena,s6Step7EarlyControlArena,s6Step7EarlyControlLog,arenaWires]
theorem s6Step7EarlyControl_history : compileHmrRecordGrowLog s6Step7EarlyControlArena [895] 1 s6Step7EarlyControlLog.recordFresh=some s6Step7EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step7EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step7EarlyControl_historyBorrow
private theorem s6Step7EarlyControl_sigmaOwned : ([876, 908] : List Wire).toFinset⊆s6Step7EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_sigmaReleaseOwned : ([908] : List Wire).toFinset⊆s6Step7EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_sigmaRelease : s6Step7EarlyControlHistoryArena.release {908} (fun _ => false)=some s6Step7EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step7EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step7EarlyControlSigmaArena,s6Step7EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step7EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step7EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EarlyControl_branch : compileHmrBranchRetirement s6Step7EarlyControlSigmaArena 807=some s6Step7EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step7EarlyControl_branchOwned
  · ext q
    simp [s6Step7EarlyControlOutputArena,s6Step7EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step7EarlyControl_sigma : compileHmrSigmaDropLog s6Step7EarlyControlHistoryArena false 0 0 876 908 []=some s6Step7EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step7EarlyControl_sigmaOwned⟩
  · exact s6Step7EarlyControl_sigmaRelease
theorem s6Step7EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step7EarlyControlLog.zeroWork).map Prod.snd=some (s6Step7EarlyControlLog.zeroWork,s6Step7EarlyControlZeroPlan) := by
  rw [s6Step7EarlyControl_zero]
  rfl
theorem s6Step7EarlyControl_classProjection : (compileHmrSourceClassLog s6Step7EarlyControlZeroArena false 769 s6Step7EarlyControlZeroPlan.top 0 908 s6Step7EarlyControlLog.positiveWork s6Step7EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step7EarlyControlClassPlan.positiveWork,s6Step7EarlyControlClassPlan.equalityWork,s6Step7EarlyControlClassPlan.equality) := by
  rw [s6Step7EarlyControl_class]
  rfl
theorem s6Step7EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step7EarlyControlClassPlan.equalityArena s6Step7EarlyControlClassPlan.equality.top 793 802 779 s6Step7EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step7EarlyControl_flags]
  rfl
theorem s6Step7EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step7EarlyControlFlagArena [895] 1 s6Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step7EarlyControl_fit]
  rfl
theorem s6Step7EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step7EarlyControlArena [895] 1 s6Step7EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step7EarlyControl_history]
  rfl
theorem s6Step7EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step7EarlyControlHistoryArena false 0 0 876 908 []).map (fun _ => true)=some true := by
  rw [s6Step7EarlyControl_sigma]
  rfl
theorem s6Step7EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step7EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s6Step7EarlyControl_branch]
  rfl
private theorem s6Step7EarlyControl_entrySigmaOwned : ([908, 876] : List Wire).toFinset⊆s6Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step7EarlyControl_entryRecordOwned : ([807, 895] : List Wire).toFinset⊆s6Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EarlyControl_logged : s6Step7EarlyControlPlan.Logged s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 908 876 793 802 779 807 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step7EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step7EarlyControl_entrySigmaOwned
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

end ECDSAAdd.Arithmetic.Paper935
