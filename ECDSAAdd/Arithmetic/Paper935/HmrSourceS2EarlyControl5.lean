import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl4
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS2EarlyControl5Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2Step40EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 861)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 861)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step40EarlyControlLog : HmrEarlyControlLog := ⟨[797, 792, 794, 787, 790],[844],[845],[846, 847, 849, 851, 856, 860],[]⟩
def s2Step40EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,797⟩,⟨⟨774,false⟩,792⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,790⟩]⟩
def s2Step40EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step40EarlyControlPositiveArena,[844],s2Step40EarlyControlEqualityArena,[845],⟨⟨798,false⟩,[⟨⟨844,false⟩,845⟩]⟩⟩
def s2Step40EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step40EarlyControlZeroArena,s2Step40EarlyControlZeroPlan,s2Step40EarlyControlClassPlan,s2Step40EarlyControlFlagArena,s2Step40EarlyControlFittedArena,s2Step40EarlyControlHistoryArena,s2Step40EarlyControlSigmaArena,s2Step40EarlyControlOutputArena,s2Step40EarlyControlLog⟩
private theorem s2Step40EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_zeroBorrow : s2Step40EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step40EarlyControlLog.zeroWork=some s2Step40EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step40EarlyControlZeroArena,s2Step40EarlyControlArena,s2Step40EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step40EarlyControl_zero : compileHmrEqualityLog s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step40EarlyControlLog.zeroWork=some (s2Step40EarlyControlZeroArena,s2Step40EarlyControlLog.zeroWork,s2Step40EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step40EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step40EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step40EarlyControl_positiveBorrow : s2Step40EarlyControlZeroArena.checkBorrow (1) s2Step40EarlyControlLog.positiveWork=some s2Step40EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step40EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step40EarlyControlPositiveArena,s2Step40EarlyControlZeroArena,s2Step40EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step40EarlyControl_classEqualityOwned : ([798, 844] : List Wire).toFinset⊆s2Step40EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_classEqualityBorrow : s2Step40EarlyControlPositiveArena.checkBorrow (([798, 844] : List Wire).length-1) s2Step40EarlyControlLog.classWork=some s2Step40EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step40EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step40EarlyControlEqualityArena,s2Step40EarlyControlPositiveArena,s2Step40EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step40EarlyControl_classEquality : compileHmrEqualityLog s2Step40EarlyControlPositiveArena [798, 844] 0 s2Step40EarlyControlLog.classWork=some (s2Step40EarlyControlEqualityArena,s2Step40EarlyControlLog.classWork,s2Step40EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step40EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step40EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step40EarlyControl_classOwned : ([777, 790, 798] : List Wire).toFinset⊆s2Step40EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EarlyControl_class : compileHmrSourceClassLog s2Step40EarlyControlZeroArena false 777 s2Step40EarlyControlZeroPlan.top 0 798 s2Step40EarlyControlLog.positiveWork s2Step40EarlyControlLog.classWork=some s2Step40EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step40EarlyControlClassPlan s2Step40EarlyControlZeroArena false 777 s2Step40EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step40EarlyControl_classOwned
  · exact s2Step40EarlyControl_positiveBorrow
  · exact s2Step40EarlyControl_classEquality
private theorem s2Step40EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step40EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_flagsBorrow : s2Step40EarlyControlEqualityArena.checkBorrow (6) s2Step40EarlyControlLog.flagWork=some s2Step40EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step40EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step40EarlyControlFlagArena,s2Step40EarlyControlEqualityArena,s2Step40EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step40EarlyControl_flags : compileHmrFlagsLog s2Step40EarlyControlClassPlan.equalityArena s2Step40EarlyControlClassPlan.equality.top 253 252 251 s2Step40EarlyControlLog.flagWork=some s2Step40EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step40EarlyControl_flagsOwned⟩
  · exact s2Step40EarlyControl_flagsBorrow
private theorem s2Step40EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).toFinset⊆s2Step40EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlFlagArena (fun q => (0≤q ∧ q<861)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_fitBorrow : s2Step40EarlyControlFlagArena.checkBorrow ((17-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).length)) s2Step40EarlyControlLog.recordFresh=some s2Step40EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step40EarlyControlFlagArena (fun q => (0≤q ∧ q<861)) rfl
      decide +kernel
    · ext q
      simp [s2Step40EarlyControlFittedArena,s2Step40EarlyControlFlagArena,s2Step40EarlyControlLog,arenaWires]
theorem s2Step40EarlyControl_fit : compileHmrRecordGrowLog s2Step40EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40EarlyControlLog.recordFresh=some s2Step40EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step40EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step40EarlyControl_fitBorrow
private theorem s2Step40EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).toFinset⊆s2Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_historyBorrow : s2Step40EarlyControlArena.checkBorrow ((17-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).length)) s2Step40EarlyControlLog.recordFresh=some s2Step40EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step40EarlyControlHistoryArena,s2Step40EarlyControlArena,s2Step40EarlyControlLog,arenaWires]
theorem s2Step40EarlyControl_history : compileHmrRecordGrowLog s2Step40EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40EarlyControlLog.recordFresh=some s2Step40EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step40EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step40EarlyControl_historyBorrow
private theorem s2Step40EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step40EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step40EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_sigmaRelease : s2Step40EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step40EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step40EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step40EarlyControlSigmaArena,s2Step40EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step40EarlyControl_branchOwned : ([791] : List Wire).toFinset⊆s2Step40EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EarlyControl_branch : compileHmrBranchRetirement s2Step40EarlyControlSigmaArena 791=some s2Step40EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step40EarlyControl_branchOwned
  · ext q
    simp [s2Step40EarlyControlOutputArena,s2Step40EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step40EarlyControl_sigma : compileHmrSigmaDropLog s2Step40EarlyControlHistoryArena false 0 0 254 798 []=some s2Step40EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step40EarlyControl_sigmaOwned⟩
  · exact s2Step40EarlyControl_sigmaRelease
theorem s2Step40EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step40EarlyControlLog.zeroWork).map Prod.snd=some (s2Step40EarlyControlLog.zeroWork,s2Step40EarlyControlZeroPlan) := by
  rw [s2Step40EarlyControl_zero]
  rfl
theorem s2Step40EarlyControl_classProjection : (compileHmrSourceClassLog s2Step40EarlyControlZeroArena false 777 s2Step40EarlyControlZeroPlan.top 0 798 s2Step40EarlyControlLog.positiveWork s2Step40EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step40EarlyControlClassPlan.positiveWork,s2Step40EarlyControlClassPlan.equalityWork,s2Step40EarlyControlClassPlan.equality) := by
  rw [s2Step40EarlyControl_class]
  rfl
theorem s2Step40EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step40EarlyControlClassPlan.equalityArena s2Step40EarlyControlClassPlan.equality.top 253 252 251 s2Step40EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step40EarlyControl_flags]
  rfl
theorem s2Step40EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step40EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step40EarlyControl_fit]
  rfl
theorem s2Step40EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step40EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step40EarlyControl_history]
  rfl
theorem s2Step40EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step40EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step40EarlyControl_sigma]
  rfl
theorem s2Step40EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step40EarlyControlSigmaArena 791).map (fun _ => true)=some true := by
  rw [s2Step40EarlyControl_branch]
  rfl
private theorem s2Step40EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step40EarlyControl_entryRecordOwned : ([791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).toFinset⊆s2Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EarlyControl_logged : s2Step40EarlyControlPlan.Logged s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 791 17 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step40EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step40EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step40EarlyControl_zero
  · exact s2Step40EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step40EarlyControl_flags
  · exact s2Step40EarlyControl_fit
  · exact s2Step40EarlyControl_history
  · exact s2Step40EarlyControl_sigma
  · exact s2Step40EarlyControl_branch
theorem s2Step40EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 791 17 s2Step40EarlyControlLog=some s2Step40EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step40EarlyControlPlan s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 791 17 s2Step40EarlyControl_logged
theorem s2Step40EarlyControl_checked : (compileHmrEarlyControlLog s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 791 17 s2Step40EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s2Step40EarlyControl_plan_checked]
  decide +kernel

def s2Step41EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 861)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step41EarlyControlLog : HmrEarlyControlLog := ⟨[791, 787, 790, 794, 792],[844],[845],[846, 847, 849, 851, 856, 860],[861]⟩
def s2Step41EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,792⟩]⟩
def s2Step41EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step41EarlyControlPositiveArena,[844],s2Step41EarlyControlEqualityArena,[845],⟨⟨798,false⟩,[⟨⟨844,false⟩,845⟩]⟩⟩
def s2Step41EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step41EarlyControlZeroArena,s2Step41EarlyControlZeroPlan,s2Step41EarlyControlClassPlan,s2Step41EarlyControlFlagArena,s2Step41EarlyControlFittedArena,s2Step41EarlyControlHistoryArena,s2Step41EarlyControlSigmaArena,s2Step41EarlyControlOutputArena,s2Step41EarlyControlLog⟩
private theorem s2Step41EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_zeroBorrow : s2Step41EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step41EarlyControlLog.zeroWork=some s2Step41EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step41EarlyControlZeroArena,s2Step41EarlyControlArena,s2Step41EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step41EarlyControl_zero : compileHmrEqualityLog s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step41EarlyControlLog.zeroWork=some (s2Step41EarlyControlZeroArena,s2Step41EarlyControlLog.zeroWork,s2Step41EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step41EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step41EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step41EarlyControl_positiveBorrow : s2Step41EarlyControlZeroArena.checkBorrow (1) s2Step41EarlyControlLog.positiveWork=some s2Step41EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step41EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step41EarlyControlPositiveArena,s2Step41EarlyControlZeroArena,s2Step41EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step41EarlyControl_classEqualityOwned : ([798, 844] : List Wire).toFinset⊆s2Step41EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_classEqualityBorrow : s2Step41EarlyControlPositiveArena.checkBorrow (([798, 844] : List Wire).length-1) s2Step41EarlyControlLog.classWork=some s2Step41EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step41EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step41EarlyControlEqualityArena,s2Step41EarlyControlPositiveArena,s2Step41EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step41EarlyControl_classEquality : compileHmrEqualityLog s2Step41EarlyControlPositiveArena [798, 844] 0 s2Step41EarlyControlLog.classWork=some (s2Step41EarlyControlEqualityArena,s2Step41EarlyControlLog.classWork,s2Step41EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step41EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step41EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step41EarlyControl_classOwned : ([777, 792, 798] : List Wire).toFinset⊆s2Step41EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41EarlyControl_class : compileHmrSourceClassLog s2Step41EarlyControlZeroArena false 777 s2Step41EarlyControlZeroPlan.top 0 798 s2Step41EarlyControlLog.positiveWork s2Step41EarlyControlLog.classWork=some s2Step41EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step41EarlyControlClassPlan s2Step41EarlyControlZeroArena false 777 s2Step41EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step41EarlyControl_classOwned
  · exact s2Step41EarlyControl_positiveBorrow
  · exact s2Step41EarlyControl_classEquality
private theorem s2Step41EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step41EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_flagsBorrow : s2Step41EarlyControlEqualityArena.checkBorrow (6) s2Step41EarlyControlLog.flagWork=some s2Step41EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step41EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step41EarlyControlFlagArena,s2Step41EarlyControlEqualityArena,s2Step41EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step41EarlyControl_flags : compileHmrFlagsLog s2Step41EarlyControlClassPlan.equalityArena s2Step41EarlyControlClassPlan.equality.top 253 252 251 s2Step41EarlyControlLog.flagWork=some s2Step41EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step41EarlyControl_flagsOwned⟩
  · exact s2Step41EarlyControl_flagsBorrow
private theorem s2Step41EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).toFinset⊆s2Step41EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlFlagArena (fun q => (0≤q ∧ q<861)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_fitBorrow : s2Step41EarlyControlFlagArena.checkBorrow ((18-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).length)) s2Step41EarlyControlLog.recordFresh=some s2Step41EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step41EarlyControlFlagArena (fun q => (0≤q ∧ q<861)) rfl
      decide +kernel
    · ext q
      simp [s2Step41EarlyControlFittedArena,s2Step41EarlyControlFlagArena,s2Step41EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step41EarlyControl_fit : compileHmrRecordGrowLog s2Step41EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41EarlyControlLog.recordFresh=some s2Step41EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step41EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step41EarlyControl_fitBorrow
private theorem s2Step41EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).toFinset⊆s2Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_historyBorrow : s2Step41EarlyControlArena.checkBorrow ((18-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).length)) s2Step41EarlyControlLog.recordFresh=some s2Step41EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
      decide +kernel
    · ext q
      simp [s2Step41EarlyControlHistoryArena,s2Step41EarlyControlArena,s2Step41EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step41EarlyControl_history : compileHmrRecordGrowLog s2Step41EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41EarlyControlLog.recordFresh=some s2Step41EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step41EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step41EarlyControl_historyBorrow
private theorem s2Step41EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step41EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step41EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_sigmaRelease : s2Step41EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step41EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step41EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step41EarlyControlSigmaArena,s2Step41EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step41EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step41EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step41EarlyControl_branch : compileHmrBranchRetirement s2Step41EarlyControlSigmaArena 797=some s2Step41EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step41EarlyControl_branchOwned
  · ext q
    simp [s2Step41EarlyControlOutputArena,s2Step41EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step41EarlyControl_sigma : compileHmrSigmaDropLog s2Step41EarlyControlHistoryArena false 0 0 254 798 []=some s2Step41EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step41EarlyControl_sigmaOwned⟩
  · exact s2Step41EarlyControl_sigmaRelease
theorem s2Step41EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step41EarlyControlLog.zeroWork).map Prod.snd=some (s2Step41EarlyControlLog.zeroWork,s2Step41EarlyControlZeroPlan) := by
  rw [s2Step41EarlyControl_zero]
  rfl
theorem s2Step41EarlyControl_classProjection : (compileHmrSourceClassLog s2Step41EarlyControlZeroArena false 777 s2Step41EarlyControlZeroPlan.top 0 798 s2Step41EarlyControlLog.positiveWork s2Step41EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step41EarlyControlClassPlan.positiveWork,s2Step41EarlyControlClassPlan.equalityWork,s2Step41EarlyControlClassPlan.equality) := by
  rw [s2Step41EarlyControl_class]
  rfl
theorem s2Step41EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step41EarlyControlClassPlan.equalityArena s2Step41EarlyControlClassPlan.equality.top 253 252 251 s2Step41EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step41EarlyControl_flags]
  rfl
theorem s2Step41EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step41EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step41EarlyControl_fit]
  rfl
theorem s2Step41EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step41EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step41EarlyControl_history]
  rfl
theorem s2Step41EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step41EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step41EarlyControl_sigma]
  rfl
theorem s2Step41EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step41EarlyControlSigmaArena 797).map (fun _ => true)=some true := by
  rw [s2Step41EarlyControl_branch]
  rfl
private theorem s2Step41EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
private theorem s2Step41EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] : List Wire).toFinset⊆s2Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41EarlyControl_logged : s2Step41EarlyControlPlan.Logged s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 797 18 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step41EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step41EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step41EarlyControl_zero
  · exact s2Step41EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step41EarlyControl_flags
  · exact s2Step41EarlyControl_fit
  · exact s2Step41EarlyControl_history
  · exact s2Step41EarlyControl_sigma
  · exact s2Step41EarlyControl_branch
theorem s2Step41EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 797 18 s2Step41EarlyControlLog=some s2Step41EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step41EarlyControlPlan s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 797 18 s2Step41EarlyControl_logged
theorem s2Step41EarlyControl_checked : (compileHmrEarlyControlLog s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 254 253 252 251 797 18 s2Step41EarlyControlLog).map (fun P => P.outputArena.live.card)=some 847 := by
  rw [s2Step41EarlyControl_plan_checked]
  decide +kernel

def s2Step42EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 799) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 799) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step42EarlyControlLog : HmrEarlyControlLog := ⟨[799, 800, 792, 790, 787],[844],[845],[846, 847, 849, 851, 856, 860],[]⟩
def s2Step42EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,800⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,787⟩]⟩
def s2Step42EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step42EarlyControlPositiveArena,[844],s2Step42EarlyControlEqualityArena,[845],⟨⟨798,false⟩,[⟨⟨844,false⟩,845⟩]⟩⟩
def s2Step42EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step42EarlyControlZeroArena,s2Step42EarlyControlZeroPlan,s2Step42EarlyControlClassPlan,s2Step42EarlyControlFlagArena,s2Step42EarlyControlFittedArena,s2Step42EarlyControlHistoryArena,s2Step42EarlyControlSigmaArena,s2Step42EarlyControlOutputArena,s2Step42EarlyControlLog⟩
private theorem s2Step42EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_zeroBorrow : s2Step42EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step42EarlyControlLog.zeroWork=some s2Step42EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step42EarlyControlZeroArena,s2Step42EarlyControlArena,s2Step42EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step42EarlyControl_zero : compileHmrEqualityLog s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step42EarlyControlLog.zeroWork=some (s2Step42EarlyControlZeroArena,s2Step42EarlyControlLog.zeroWork,s2Step42EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step42EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step42EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step42EarlyControl_positiveBorrow : s2Step42EarlyControlZeroArena.checkBorrow (1) s2Step42EarlyControlLog.positiveWork=some s2Step42EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step42EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step42EarlyControlPositiveArena,s2Step42EarlyControlZeroArena,s2Step42EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step42EarlyControl_classEqualityOwned : ([798, 844] : List Wire).toFinset⊆s2Step42EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_classEqualityBorrow : s2Step42EarlyControlPositiveArena.checkBorrow (([798, 844] : List Wire).length-1) s2Step42EarlyControlLog.classWork=some s2Step42EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step42EarlyControlPositiveArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step42EarlyControlEqualityArena,s2Step42EarlyControlPositiveArena,s2Step42EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step42EarlyControl_classEquality : compileHmrEqualityLog s2Step42EarlyControlPositiveArena [798, 844] 0 s2Step42EarlyControlLog.classWork=some (s2Step42EarlyControlEqualityArena,s2Step42EarlyControlLog.classWork,s2Step42EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step42EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step42EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step42EarlyControl_classOwned : ([777, 787, 798] : List Wire).toFinset⊆s2Step42EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlZeroArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EarlyControl_class : compileHmrSourceClassLog s2Step42EarlyControlZeroArena false 777 s2Step42EarlyControlZeroPlan.top 0 798 s2Step42EarlyControlLog.positiveWork s2Step42EarlyControlLog.classWork=some s2Step42EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step42EarlyControlClassPlan s2Step42EarlyControlZeroArena false 777 s2Step42EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step42EarlyControl_classOwned
  · exact s2Step42EarlyControl_positiveBorrow
  · exact s2Step42EarlyControl_classEquality
private theorem s2Step42EarlyControl_flagsOwned : ([845, 253, 252, 251] : List Wire).toFinset⊆s2Step42EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_flagsBorrow : s2Step42EarlyControlEqualityArena.checkBorrow (6) s2Step42EarlyControlLog.flagWork=some s2Step42EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step42EarlyControlEqualityArena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step42EarlyControlFlagArena,s2Step42EarlyControlEqualityArena,s2Step42EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step42EarlyControl_flags : compileHmrFlagsLog s2Step42EarlyControlClassPlan.equalityArena s2Step42EarlyControlClassPlan.equality.top 253 252 251 s2Step42EarlyControlLog.flagWork=some s2Step42EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step42EarlyControl_flagsOwned⟩
  · exact s2Step42EarlyControl_flagsBorrow
private theorem s2Step42EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).toFinset⊆s2Step42EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlFlagArena (fun q => (0≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_fitBorrow : s2Step42EarlyControlFlagArena.checkBorrow ((18-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).length)) s2Step42EarlyControlLog.recordFresh=some s2Step42EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step42EarlyControlFlagArena (fun q => (0≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step42EarlyControlFittedArena,s2Step42EarlyControlFlagArena,s2Step42EarlyControlLog,arenaWires]
theorem s2Step42EarlyControl_fit : compileHmrRecordGrowLog s2Step42EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42EarlyControlLog.recordFresh=some s2Step42EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step42EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step42EarlyControl_fitBorrow
private theorem s2Step42EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).toFinset⊆s2Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_historyBorrow : s2Step42EarlyControlArena.checkBorrow ((18-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).length)) s2Step42EarlyControlLog.recordFresh=some s2Step42EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step42EarlyControlHistoryArena,s2Step42EarlyControlArena,s2Step42EarlyControlLog,arenaWires]
theorem s2Step42EarlyControl_history : compileHmrRecordGrowLog s2Step42EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42EarlyControlLog.recordFresh=some s2Step42EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step42EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step42EarlyControl_historyBorrow
private theorem s2Step42EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step42EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step42EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_sigmaRelease : s2Step42EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step42EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step42EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step42EarlyControlSigmaArena,s2Step42EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step42EarlyControl_branchOwned : ([791] : List Wire).toFinset⊆s2Step42EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EarlyControl_branch : compileHmrBranchRetirement s2Step42EarlyControlSigmaArena 791=some s2Step42EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step42EarlyControl_branchOwned
  · ext q
    simp [s2Step42EarlyControlOutputArena,s2Step42EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step42EarlyControl_sigma : compileHmrSigmaDropLog s2Step42EarlyControlHistoryArena false 0 0 254 798 []=some s2Step42EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step42EarlyControl_sigmaOwned⟩
  · exact s2Step42EarlyControl_sigmaRelease
theorem s2Step42EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step42EarlyControlLog.zeroWork).map Prod.snd=some (s2Step42EarlyControlLog.zeroWork,s2Step42EarlyControlZeroPlan) := by
  rw [s2Step42EarlyControl_zero]
  rfl
theorem s2Step42EarlyControl_classProjection : (compileHmrSourceClassLog s2Step42EarlyControlZeroArena false 777 s2Step42EarlyControlZeroPlan.top 0 798 s2Step42EarlyControlLog.positiveWork s2Step42EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step42EarlyControlClassPlan.positiveWork,s2Step42EarlyControlClassPlan.equalityWork,s2Step42EarlyControlClassPlan.equality) := by
  rw [s2Step42EarlyControl_class]
  rfl
theorem s2Step42EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step42EarlyControlClassPlan.equalityArena s2Step42EarlyControlClassPlan.equality.top 253 252 251 s2Step42EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step42EarlyControl_flags]
  rfl
theorem s2Step42EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step42EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step42EarlyControl_fit]
  rfl
theorem s2Step42EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step42EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step42EarlyControl_history]
  rfl
theorem s2Step42EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step42EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step42EarlyControl_sigma]
  rfl
theorem s2Step42EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step42EarlyControlSigmaArena 791).map (fun _ => true)=some true := by
  rw [s2Step42EarlyControl_branch]
  rfl
private theorem s2Step42EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step42EarlyControl_entryRecordOwned : ([791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).toFinset⊆s2Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EarlyControl_logged : s2Step42EarlyControlPlan.Logged s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 791 18 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step42EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step42EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step42EarlyControl_zero
  · exact s2Step42EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step42EarlyControl_flags
  · exact s2Step42EarlyControl_fit
  · exact s2Step42EarlyControl_history
  · exact s2Step42EarlyControl_sigma
  · exact s2Step42EarlyControl_branch
theorem s2Step42EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 791 18 s2Step42EarlyControlLog=some s2Step42EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step42EarlyControlPlan s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 791 18 s2Step42EarlyControl_logged
theorem s2Step42EarlyControl_checked : (compileHmrEarlyControlLog s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 791 18 s2Step42EarlyControlLog).map (fun P => P.outputArena.live.card)=some 847 := by
  rw [s2Step42EarlyControl_plan_checked]
  decide +kernel

def s2Step43EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (803 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 856) ∨ (857 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (803 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (803 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (803 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step43EarlyControlLog : HmrEarlyControlLog := ⟨[801, 802, 790, 791, 787],[792],[800],[844, 845, 846, 847, 849, 851],[856]⟩
def s2Step43EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,801⟩,⟨⟨774,false⟩,802⟩,⟨⟨775,false⟩,790⟩,⟨⟨776,false⟩,791⟩,⟨⟨777,false⟩,787⟩]⟩
def s2Step43EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step43EarlyControlPositiveArena,[792],s2Step43EarlyControlEqualityArena,[800],⟨⟨798,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step43EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step43EarlyControlZeroArena,s2Step43EarlyControlZeroPlan,s2Step43EarlyControlClassPlan,s2Step43EarlyControlFlagArena,s2Step43EarlyControlFittedArena,s2Step43EarlyControlHistoryArena,s2Step43EarlyControlSigmaArena,s2Step43EarlyControlOutputArena,s2Step43EarlyControlLog⟩
private theorem s2Step43EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_zeroBorrow : s2Step43EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step43EarlyControlLog.zeroWork=some s2Step43EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step43EarlyControlZeroArena,s2Step43EarlyControlArena,s2Step43EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step43EarlyControl_zero : compileHmrEqualityLog s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step43EarlyControlLog.zeroWork=some (s2Step43EarlyControlZeroArena,s2Step43EarlyControlLog.zeroWork,s2Step43EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step43EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step43EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step43EarlyControl_positiveBorrow : s2Step43EarlyControlZeroArena.checkBorrow (1) s2Step43EarlyControlLog.positiveWork=some s2Step43EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step43EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step43EarlyControlPositiveArena,s2Step43EarlyControlZeroArena,s2Step43EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step43EarlyControl_classEqualityOwned : ([798, 792] : List Wire).toFinset⊆s2Step43EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_classEqualityBorrow : s2Step43EarlyControlPositiveArena.checkBorrow (([798, 792] : List Wire).length-1) s2Step43EarlyControlLog.classWork=some s2Step43EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step43EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step43EarlyControlEqualityArena,s2Step43EarlyControlPositiveArena,s2Step43EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step43EarlyControl_classEquality : compileHmrEqualityLog s2Step43EarlyControlPositiveArena [798, 792] 0 s2Step43EarlyControlLog.classWork=some (s2Step43EarlyControlEqualityArena,s2Step43EarlyControlLog.classWork,s2Step43EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step43EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step43EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step43EarlyControl_classOwned : ([777, 787, 798] : List Wire).toFinset⊆s2Step43EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EarlyControl_class : compileHmrSourceClassLog s2Step43EarlyControlZeroArena false 777 s2Step43EarlyControlZeroPlan.top 0 798 s2Step43EarlyControlLog.positiveWork s2Step43EarlyControlLog.classWork=some s2Step43EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step43EarlyControlClassPlan s2Step43EarlyControlZeroArena false 777 s2Step43EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step43EarlyControl_classOwned
  · exact s2Step43EarlyControl_positiveBorrow
  · exact s2Step43EarlyControl_classEquality
private theorem s2Step43EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step43EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_flagsBorrow : s2Step43EarlyControlEqualityArena.checkBorrow (6) s2Step43EarlyControlLog.flagWork=some s2Step43EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step43EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step43EarlyControlFlagArena,s2Step43EarlyControlEqualityArena,s2Step43EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step43EarlyControl_flags : compileHmrFlagsLog s2Step43EarlyControlClassPlan.equalityArena s2Step43EarlyControlClassPlan.equality.top 253 252 251 s2Step43EarlyControlLog.flagWork=some s2Step43EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step43EarlyControl_flagsOwned⟩
  · exact s2Step43EarlyControl_flagsBorrow
private theorem s2Step43EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).toFinset⊆s2Step43EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlFlagArena (fun q => (0≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_fitBorrow : s2Step43EarlyControlFlagArena.checkBorrow ((19-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).length)) s2Step43EarlyControlLog.recordFresh=some s2Step43EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step43EarlyControlFlagArena (fun q => (0≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step43EarlyControlFittedArena,s2Step43EarlyControlFlagArena,s2Step43EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step43EarlyControl_fit : compileHmrRecordGrowLog s2Step43EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43EarlyControlLog.recordFresh=some s2Step43EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step43EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step43EarlyControl_fitBorrow
private theorem s2Step43EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).toFinset⊆s2Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_historyBorrow : s2Step43EarlyControlArena.checkBorrow ((19-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).length)) s2Step43EarlyControlLog.recordFresh=some s2Step43EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step43EarlyControlHistoryArena,s2Step43EarlyControlArena,s2Step43EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step43EarlyControl_history : compileHmrRecordGrowLog s2Step43EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43EarlyControlLog.recordFresh=some s2Step43EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step43EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step43EarlyControl_historyBorrow
private theorem s2Step43EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step43EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step43EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_sigmaRelease : s2Step43EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step43EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step43EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step43EarlyControlSigmaArena,s2Step43EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step43EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step43EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EarlyControl_branch : compileHmrBranchRetirement s2Step43EarlyControlSigmaArena 799=some s2Step43EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step43EarlyControl_branchOwned
  · ext q
    simp [s2Step43EarlyControlOutputArena,s2Step43EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step43EarlyControl_sigma : compileHmrSigmaDropLog s2Step43EarlyControlHistoryArena false 0 0 254 798 []=some s2Step43EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step43EarlyControl_sigmaOwned⟩
  · exact s2Step43EarlyControl_sigmaRelease
theorem s2Step43EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step43EarlyControlLog.zeroWork).map Prod.snd=some (s2Step43EarlyControlLog.zeroWork,s2Step43EarlyControlZeroPlan) := by
  rw [s2Step43EarlyControl_zero]
  rfl
theorem s2Step43EarlyControl_classProjection : (compileHmrSourceClassLog s2Step43EarlyControlZeroArena false 777 s2Step43EarlyControlZeroPlan.top 0 798 s2Step43EarlyControlLog.positiveWork s2Step43EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step43EarlyControlClassPlan.positiveWork,s2Step43EarlyControlClassPlan.equalityWork,s2Step43EarlyControlClassPlan.equality) := by
  rw [s2Step43EarlyControl_class]
  rfl
theorem s2Step43EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step43EarlyControlClassPlan.equalityArena s2Step43EarlyControlClassPlan.equality.top 253 252 251 s2Step43EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step43EarlyControl_flags]
  rfl
theorem s2Step43EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step43EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step43EarlyControl_fit]
  rfl
theorem s2Step43EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step43EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step43EarlyControl_history]
  rfl
theorem s2Step43EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step43EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step43EarlyControl_sigma]
  rfl
theorem s2Step43EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step43EarlyControlSigmaArena 799).map (fun _ => true)=some true := by
  rw [s2Step43EarlyControl_branch]
  rfl
private theorem s2Step43EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step43EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] : List Wire).toFinset⊆s2Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EarlyControl_logged : s2Step43EarlyControlPlan.Logged s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 799 19 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step43EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step43EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step43EarlyControl_zero
  · exact s2Step43EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step43EarlyControl_flags
  · exact s2Step43EarlyControl_fit
  · exact s2Step43EarlyControl_history
  · exact s2Step43EarlyControl_sigma
  · exact s2Step43EarlyControl_branch
theorem s2Step43EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 799 19 s2Step43EarlyControlLog=some s2Step43EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step43EarlyControlPlan s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 799 19 s2Step43EarlyControl_logged
theorem s2Step43EarlyControl_checked : (compileHmrEarlyControlLog s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 254 253 252 251 799 19 s2Step43EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s2Step43EarlyControl_plan_checked]
  decide +kernel

def s2Step44EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 802) ∨ (803 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 802) ∨ (803 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 802) ∨ (803 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (803 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step44EarlyControlLog : HmrEarlyControlLog := ⟨[804, 791, 787, 790, 802],[792],[800],[844, 845, 846, 847, 849, 851],[]⟩
def s2Step44EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,804⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,802⟩]⟩
def s2Step44EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step44EarlyControlPositiveArena,[792],s2Step44EarlyControlEqualityArena,[800],⟨⟨798,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step44EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step44EarlyControlZeroArena,s2Step44EarlyControlZeroPlan,s2Step44EarlyControlClassPlan,s2Step44EarlyControlFlagArena,s2Step44EarlyControlFittedArena,s2Step44EarlyControlHistoryArena,s2Step44EarlyControlSigmaArena,s2Step44EarlyControlOutputArena,s2Step44EarlyControlLog⟩
private theorem s2Step44EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_zeroBorrow : s2Step44EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step44EarlyControlLog.zeroWork=some s2Step44EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step44EarlyControlZeroArena,s2Step44EarlyControlArena,s2Step44EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step44EarlyControl_zero : compileHmrEqualityLog s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step44EarlyControlLog.zeroWork=some (s2Step44EarlyControlZeroArena,s2Step44EarlyControlLog.zeroWork,s2Step44EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step44EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step44EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step44EarlyControl_positiveBorrow : s2Step44EarlyControlZeroArena.checkBorrow (1) s2Step44EarlyControlLog.positiveWork=some s2Step44EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step44EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step44EarlyControlPositiveArena,s2Step44EarlyControlZeroArena,s2Step44EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step44EarlyControl_classEqualityOwned : ([798, 792] : List Wire).toFinset⊆s2Step44EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_classEqualityBorrow : s2Step44EarlyControlPositiveArena.checkBorrow (([798, 792] : List Wire).length-1) s2Step44EarlyControlLog.classWork=some s2Step44EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step44EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step44EarlyControlEqualityArena,s2Step44EarlyControlPositiveArena,s2Step44EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step44EarlyControl_classEquality : compileHmrEqualityLog s2Step44EarlyControlPositiveArena [798, 792] 0 s2Step44EarlyControlLog.classWork=some (s2Step44EarlyControlEqualityArena,s2Step44EarlyControlLog.classWork,s2Step44EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step44EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step44EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step44EarlyControl_classOwned : ([777, 802, 798] : List Wire).toFinset⊆s2Step44EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EarlyControl_class : compileHmrSourceClassLog s2Step44EarlyControlZeroArena false 777 s2Step44EarlyControlZeroPlan.top 0 798 s2Step44EarlyControlLog.positiveWork s2Step44EarlyControlLog.classWork=some s2Step44EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step44EarlyControlClassPlan s2Step44EarlyControlZeroArena false 777 s2Step44EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step44EarlyControl_classOwned
  · exact s2Step44EarlyControl_positiveBorrow
  · exact s2Step44EarlyControl_classEquality
private theorem s2Step44EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step44EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_flagsBorrow : s2Step44EarlyControlEqualityArena.checkBorrow (6) s2Step44EarlyControlLog.flagWork=some s2Step44EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step44EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step44EarlyControlFlagArena,s2Step44EarlyControlEqualityArena,s2Step44EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step44EarlyControl_flags : compileHmrFlagsLog s2Step44EarlyControlClassPlan.equalityArena s2Step44EarlyControlClassPlan.equality.top 253 252 251 s2Step44EarlyControlLog.flagWork=some s2Step44EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step44EarlyControl_flagsOwned⟩
  · exact s2Step44EarlyControl_flagsBorrow
private theorem s2Step44EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).toFinset⊆s2Step44EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlFlagArena (fun q => (0≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_fitBorrow : s2Step44EarlyControlFlagArena.checkBorrow ((19-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).length)) s2Step44EarlyControlLog.recordFresh=some s2Step44EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step44EarlyControlFlagArena (fun q => (0≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step44EarlyControlFittedArena,s2Step44EarlyControlFlagArena,s2Step44EarlyControlLog,arenaWires]
theorem s2Step44EarlyControl_fit : compileHmrRecordGrowLog s2Step44EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44EarlyControlLog.recordFresh=some s2Step44EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step44EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step44EarlyControl_fitBorrow
private theorem s2Step44EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).toFinset⊆s2Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_historyBorrow : s2Step44EarlyControlArena.checkBorrow ((19-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).length)) s2Step44EarlyControlLog.recordFresh=some s2Step44EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step44EarlyControlHistoryArena,s2Step44EarlyControlArena,s2Step44EarlyControlLog,arenaWires]
theorem s2Step44EarlyControl_history : compileHmrRecordGrowLog s2Step44EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44EarlyControlLog.recordFresh=some s2Step44EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step44EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step44EarlyControl_historyBorrow
private theorem s2Step44EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step44EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step44EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_sigmaRelease : s2Step44EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step44EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step44EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step44EarlyControlSigmaArena,s2Step44EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step44EarlyControl_branchOwned : ([801] : List Wire).toFinset⊆s2Step44EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EarlyControl_branch : compileHmrBranchRetirement s2Step44EarlyControlSigmaArena 801=some s2Step44EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step44EarlyControl_branchOwned
  · ext q
    simp [s2Step44EarlyControlOutputArena,s2Step44EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step44EarlyControl_sigma : compileHmrSigmaDropLog s2Step44EarlyControlHistoryArena false 0 0 254 798 []=some s2Step44EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step44EarlyControl_sigmaOwned⟩
  · exact s2Step44EarlyControl_sigmaRelease
theorem s2Step44EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step44EarlyControlLog.zeroWork).map Prod.snd=some (s2Step44EarlyControlLog.zeroWork,s2Step44EarlyControlZeroPlan) := by
  rw [s2Step44EarlyControl_zero]
  rfl
theorem s2Step44EarlyControl_classProjection : (compileHmrSourceClassLog s2Step44EarlyControlZeroArena false 777 s2Step44EarlyControlZeroPlan.top 0 798 s2Step44EarlyControlLog.positiveWork s2Step44EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step44EarlyControlClassPlan.positiveWork,s2Step44EarlyControlClassPlan.equalityWork,s2Step44EarlyControlClassPlan.equality) := by
  rw [s2Step44EarlyControl_class]
  rfl
theorem s2Step44EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step44EarlyControlClassPlan.equalityArena s2Step44EarlyControlClassPlan.equality.top 253 252 251 s2Step44EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step44EarlyControl_flags]
  rfl
theorem s2Step44EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step44EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step44EarlyControl_fit]
  rfl
theorem s2Step44EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step44EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step44EarlyControl_history]
  rfl
theorem s2Step44EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step44EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step44EarlyControl_sigma]
  rfl
theorem s2Step44EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step44EarlyControlSigmaArena 801).map (fun _ => true)=some true := by
  rw [s2Step44EarlyControl_branch]
  rfl
private theorem s2Step44EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step44EarlyControl_entryRecordOwned : ([801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).toFinset⊆s2Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EarlyControl_logged : s2Step44EarlyControlPlan.Logged s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 801 19 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step44EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step44EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step44EarlyControl_zero
  · exact s2Step44EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step44EarlyControl_flags
  · exact s2Step44EarlyControl_fit
  · exact s2Step44EarlyControl_history
  · exact s2Step44EarlyControl_sigma
  · exact s2Step44EarlyControl_branch
theorem s2Step44EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 801 19 s2Step44EarlyControlLog=some s2Step44EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step44EarlyControlPlan s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 801 19 s2Step44EarlyControl_logged
theorem s2Step44EarlyControl_checked : (compileHmrEarlyControlLog s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 801 19 s2Step44EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s2Step44EarlyControl_plan_checked]
  decide +kernel

def s2Step45EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 860) ∨ (861 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step45EarlyControlLog : HmrEarlyControlLog := ⟨[803, 790, 787, 801, 791],[792],[800],[844, 845, 846, 847, 849, 851],[860]⟩
def s2Step45EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,801⟩,⟨⟨777,false⟩,791⟩]⟩
def s2Step45EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step45EarlyControlPositiveArena,[792],s2Step45EarlyControlEqualityArena,[800],⟨⟨798,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩
def s2Step45EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step45EarlyControlZeroArena,s2Step45EarlyControlZeroPlan,s2Step45EarlyControlClassPlan,s2Step45EarlyControlFlagArena,s2Step45EarlyControlFittedArena,s2Step45EarlyControlHistoryArena,s2Step45EarlyControlSigmaArena,s2Step45EarlyControlOutputArena,s2Step45EarlyControlLog⟩
private theorem s2Step45EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_zeroBorrow : s2Step45EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step45EarlyControlLog.zeroWork=some s2Step45EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step45EarlyControlZeroArena,s2Step45EarlyControlArena,s2Step45EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step45EarlyControl_zero : compileHmrEqualityLog s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step45EarlyControlLog.zeroWork=some (s2Step45EarlyControlZeroArena,s2Step45EarlyControlLog.zeroWork,s2Step45EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step45EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step45EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step45EarlyControl_positiveBorrow : s2Step45EarlyControlZeroArena.checkBorrow (1) s2Step45EarlyControlLog.positiveWork=some s2Step45EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step45EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step45EarlyControlPositiveArena,s2Step45EarlyControlZeroArena,s2Step45EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step45EarlyControl_classEqualityOwned : ([798, 792] : List Wire).toFinset⊆s2Step45EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_classEqualityBorrow : s2Step45EarlyControlPositiveArena.checkBorrow (([798, 792] : List Wire).length-1) s2Step45EarlyControlLog.classWork=some s2Step45EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step45EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step45EarlyControlEqualityArena,s2Step45EarlyControlPositiveArena,s2Step45EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step45EarlyControl_classEquality : compileHmrEqualityLog s2Step45EarlyControlPositiveArena [798, 792] 0 s2Step45EarlyControlLog.classWork=some (s2Step45EarlyControlEqualityArena,s2Step45EarlyControlLog.classWork,s2Step45EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step45EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step45EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step45EarlyControl_classOwned : ([777, 791, 798] : List Wire).toFinset⊆s2Step45EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EarlyControl_class : compileHmrSourceClassLog s2Step45EarlyControlZeroArena false 777 s2Step45EarlyControlZeroPlan.top 0 798 s2Step45EarlyControlLog.positiveWork s2Step45EarlyControlLog.classWork=some s2Step45EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step45EarlyControlClassPlan s2Step45EarlyControlZeroArena false 777 s2Step45EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step45EarlyControl_classOwned
  · exact s2Step45EarlyControl_positiveBorrow
  · exact s2Step45EarlyControl_classEquality
private theorem s2Step45EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step45EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_flagsBorrow : s2Step45EarlyControlEqualityArena.checkBorrow (6) s2Step45EarlyControlLog.flagWork=some s2Step45EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step45EarlyControlEqualityArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step45EarlyControlFlagArena,s2Step45EarlyControlEqualityArena,s2Step45EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step45EarlyControl_flags : compileHmrFlagsLog s2Step45EarlyControlClassPlan.equalityArena s2Step45EarlyControlClassPlan.equality.top 253 252 251 s2Step45EarlyControlLog.flagWork=some s2Step45EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step45EarlyControl_flagsOwned⟩
  · exact s2Step45EarlyControl_flagsBorrow
private theorem s2Step45EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).toFinset⊆s2Step45EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlFlagArena (fun q => (0≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_fitBorrow : s2Step45EarlyControlFlagArena.checkBorrow ((20-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).length)) s2Step45EarlyControlLog.recordFresh=some s2Step45EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step45EarlyControlFlagArena (fun q => (0≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step45EarlyControlFittedArena,s2Step45EarlyControlFlagArena,s2Step45EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step45EarlyControl_fit : compileHmrRecordGrowLog s2Step45EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45EarlyControlLog.recordFresh=some s2Step45EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step45EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step45EarlyControl_fitBorrow
private theorem s2Step45EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).toFinset⊆s2Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_historyBorrow : s2Step45EarlyControlArena.checkBorrow ((20-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).length)) s2Step45EarlyControlLog.recordFresh=some s2Step45EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step45EarlyControlHistoryArena,s2Step45EarlyControlArena,s2Step45EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step45EarlyControl_history : compileHmrRecordGrowLog s2Step45EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45EarlyControlLog.recordFresh=some s2Step45EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step45EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step45EarlyControl_historyBorrow
private theorem s2Step45EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step45EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step45EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_sigmaRelease : s2Step45EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step45EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step45EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step45EarlyControlSigmaArena,s2Step45EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step45EarlyControl_branchOwned : ([804] : List Wire).toFinset⊆s2Step45EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EarlyControl_branch : compileHmrBranchRetirement s2Step45EarlyControlSigmaArena 804=some s2Step45EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step45EarlyControl_branchOwned
  · ext q
    simp [s2Step45EarlyControlOutputArena,s2Step45EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step45EarlyControl_sigma : compileHmrSigmaDropLog s2Step45EarlyControlHistoryArena false 0 0 254 798 []=some s2Step45EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step45EarlyControl_sigmaOwned⟩
  · exact s2Step45EarlyControl_sigmaRelease
theorem s2Step45EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step45EarlyControlLog.zeroWork).map Prod.snd=some (s2Step45EarlyControlLog.zeroWork,s2Step45EarlyControlZeroPlan) := by
  rw [s2Step45EarlyControl_zero]
  rfl
theorem s2Step45EarlyControl_classProjection : (compileHmrSourceClassLog s2Step45EarlyControlZeroArena false 777 s2Step45EarlyControlZeroPlan.top 0 798 s2Step45EarlyControlLog.positiveWork s2Step45EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step45EarlyControlClassPlan.positiveWork,s2Step45EarlyControlClassPlan.equalityWork,s2Step45EarlyControlClassPlan.equality) := by
  rw [s2Step45EarlyControl_class]
  rfl
theorem s2Step45EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step45EarlyControlClassPlan.equalityArena s2Step45EarlyControlClassPlan.equality.top 253 252 251 s2Step45EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step45EarlyControl_flags]
  rfl
theorem s2Step45EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step45EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step45EarlyControl_fit]
  rfl
theorem s2Step45EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step45EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step45EarlyControl_history]
  rfl
theorem s2Step45EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step45EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step45EarlyControl_sigma]
  rfl
theorem s2Step45EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step45EarlyControlSigmaArena 804).map (fun _ => true)=some true := by
  rw [s2Step45EarlyControl_branch]
  rfl
private theorem s2Step45EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step45EarlyControl_entryRecordOwned : ([804, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] : List Wire).toFinset⊆s2Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EarlyControl_logged : s2Step45EarlyControlPlan.Logged s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 804 20 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step45EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step45EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step45EarlyControl_zero
  · exact s2Step45EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step45EarlyControl_flags
  · exact s2Step45EarlyControl_fit
  · exact s2Step45EarlyControl_history
  · exact s2Step45EarlyControl_sigma
  · exact s2Step45EarlyControl_branch
theorem s2Step45EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 804 20 s2Step45EarlyControlLog=some s2Step45EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step45EarlyControlPlan s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 804 20 s2Step45EarlyControl_logged
theorem s2Step45EarlyControl_checked : (compileHmrEarlyControlLog s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 254 253 252 251 804 20 s2Step45EarlyControlLog).map (fun P => P.outputArena.live.card)=some 847 := by
  rw [s2Step45EarlyControl_plan_checked]
  decide +kernel

def s2Step46EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step46EarlyControlLog : HmrEarlyControlLog := ⟨[805, 806, 801, 791, 787],[790],[792],[800, 844, 845, 846, 847, 849],[]⟩
def s2Step46EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,806⟩,⟨⟨775,false⟩,801⟩,⟨⟨776,false⟩,791⟩,⟨⟨777,false⟩,787⟩]⟩
def s2Step46EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step46EarlyControlPositiveArena,[790],s2Step46EarlyControlEqualityArena,[792],⟨⟨798,false⟩,[⟨⟨790,false⟩,792⟩]⟩⟩
def s2Step46EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step46EarlyControlZeroArena,s2Step46EarlyControlZeroPlan,s2Step46EarlyControlClassPlan,s2Step46EarlyControlFlagArena,s2Step46EarlyControlFittedArena,s2Step46EarlyControlHistoryArena,s2Step46EarlyControlSigmaArena,s2Step46EarlyControlOutputArena,s2Step46EarlyControlLog⟩
private theorem s2Step46EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_zeroBorrow : s2Step46EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step46EarlyControlLog.zeroWork=some s2Step46EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step46EarlyControlZeroArena,s2Step46EarlyControlArena,s2Step46EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step46EarlyControl_zero : compileHmrEqualityLog s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step46EarlyControlLog.zeroWork=some (s2Step46EarlyControlZeroArena,s2Step46EarlyControlLog.zeroWork,s2Step46EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step46EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step46EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step46EarlyControl_positiveBorrow : s2Step46EarlyControlZeroArena.checkBorrow (1) s2Step46EarlyControlLog.positiveWork=some s2Step46EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step46EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step46EarlyControlPositiveArena,s2Step46EarlyControlZeroArena,s2Step46EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step46EarlyControl_classEqualityOwned : ([798, 790] : List Wire).toFinset⊆s2Step46EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_classEqualityBorrow : s2Step46EarlyControlPositiveArena.checkBorrow (([798, 790] : List Wire).length-1) s2Step46EarlyControlLog.classWork=some s2Step46EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step46EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step46EarlyControlEqualityArena,s2Step46EarlyControlPositiveArena,s2Step46EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step46EarlyControl_classEquality : compileHmrEqualityLog s2Step46EarlyControlPositiveArena [798, 790] 0 s2Step46EarlyControlLog.classWork=some (s2Step46EarlyControlEqualityArena,s2Step46EarlyControlLog.classWork,s2Step46EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step46EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step46EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step46EarlyControl_classOwned : ([777, 787, 798] : List Wire).toFinset⊆s2Step46EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EarlyControl_class : compileHmrSourceClassLog s2Step46EarlyControlZeroArena false 777 s2Step46EarlyControlZeroPlan.top 0 798 s2Step46EarlyControlLog.positiveWork s2Step46EarlyControlLog.classWork=some s2Step46EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step46EarlyControlClassPlan s2Step46EarlyControlZeroArena false 777 s2Step46EarlyControlZeroPlan.top 0 798
  constructor
  · decide +kernel
  · exact s2Step46EarlyControl_classOwned
  · exact s2Step46EarlyControl_positiveBorrow
  · exact s2Step46EarlyControl_classEquality
private theorem s2Step46EarlyControl_flagsOwned : ([792, 253, 252, 251] : List Wire).toFinset⊆s2Step46EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_flagsBorrow : s2Step46EarlyControlEqualityArena.checkBorrow (6) s2Step46EarlyControlLog.flagWork=some s2Step46EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step46EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step46EarlyControlFlagArena,s2Step46EarlyControlEqualityArena,s2Step46EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step46EarlyControl_flags : compileHmrFlagsLog s2Step46EarlyControlClassPlan.equalityArena s2Step46EarlyControlClassPlan.equality.top 253 252 251 s2Step46EarlyControlLog.flagWork=some s2Step46EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step46EarlyControl_flagsOwned⟩
  · exact s2Step46EarlyControl_flagsBorrow
private theorem s2Step46EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).toFinset⊆s2Step46EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlFlagArena (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_fitBorrow : s2Step46EarlyControlFlagArena.checkBorrow ((20-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).length)) s2Step46EarlyControlLog.recordFresh=some s2Step46EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step46EarlyControlFlagArena (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step46EarlyControlFittedArena,s2Step46EarlyControlFlagArena,s2Step46EarlyControlLog,arenaWires]
theorem s2Step46EarlyControl_fit : compileHmrRecordGrowLog s2Step46EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46EarlyControlLog.recordFresh=some s2Step46EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step46EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step46EarlyControl_fitBorrow
private theorem s2Step46EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).toFinset⊆s2Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_historyBorrow : s2Step46EarlyControlArena.checkBorrow ((20-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).length)) s2Step46EarlyControlLog.recordFresh=some s2Step46EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step46EarlyControlHistoryArena,s2Step46EarlyControlArena,s2Step46EarlyControlLog,arenaWires]
theorem s2Step46EarlyControl_history : compileHmrRecordGrowLog s2Step46EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46EarlyControlLog.recordFresh=some s2Step46EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step46EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step46EarlyControl_historyBorrow
private theorem s2Step46EarlyControl_sigmaOwned : ([254, 798] : List Wire).toFinset⊆s2Step46EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_sigmaReleaseOwned : ([798] : List Wire).toFinset⊆s2Step46EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_sigmaRelease : s2Step46EarlyControlHistoryArena.release {798} (fun _ => false)=some s2Step46EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step46EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step46EarlyControlSigmaArena,s2Step46EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step46EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step46EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EarlyControl_branch : compileHmrBranchRetirement s2Step46EarlyControlSigmaArena 803=some s2Step46EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step46EarlyControl_branchOwned
  · ext q
    simp [s2Step46EarlyControlOutputArena,s2Step46EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step46EarlyControl_sigma : compileHmrSigmaDropLog s2Step46EarlyControlHistoryArena false 0 0 254 798 []=some s2Step46EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step46EarlyControl_sigmaOwned⟩
  · exact s2Step46EarlyControl_sigmaRelease
theorem s2Step46EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step46EarlyControlLog.zeroWork).map Prod.snd=some (s2Step46EarlyControlLog.zeroWork,s2Step46EarlyControlZeroPlan) := by
  rw [s2Step46EarlyControl_zero]
  rfl
theorem s2Step46EarlyControl_classProjection : (compileHmrSourceClassLog s2Step46EarlyControlZeroArena false 777 s2Step46EarlyControlZeroPlan.top 0 798 s2Step46EarlyControlLog.positiveWork s2Step46EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step46EarlyControlClassPlan.positiveWork,s2Step46EarlyControlClassPlan.equalityWork,s2Step46EarlyControlClassPlan.equality) := by
  rw [s2Step46EarlyControl_class]
  rfl
theorem s2Step46EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step46EarlyControlClassPlan.equalityArena s2Step46EarlyControlClassPlan.equality.top 253 252 251 s2Step46EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step46EarlyControl_flags]
  rfl
theorem s2Step46EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step46EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step46EarlyControl_fit]
  rfl
theorem s2Step46EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step46EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step46EarlyControl_history]
  rfl
theorem s2Step46EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step46EarlyControlHistoryArena false 0 0 254 798 []).map (fun _ => true)=some true := by
  rw [s2Step46EarlyControl_sigma]
  rfl
theorem s2Step46EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step46EarlyControlSigmaArena 803).map (fun _ => true)=some true := by
  rw [s2Step46EarlyControl_branch]
  rfl
private theorem s2Step46EarlyControl_entrySigmaOwned : ([798, 254] : List Wire).toFinset⊆s2Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step46EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).toFinset⊆s2Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EarlyControl_logged : s2Step46EarlyControlPlan.Logged s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 798 254 253 252 251 803 20 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step46EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step46EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step46EarlyControl_zero
  · exact s2Step46EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step46EarlyControl_flags
  · exact s2Step46EarlyControl_fit
  · exact s2Step46EarlyControl_history
  · exact s2Step46EarlyControl_sigma
  · exact s2Step46EarlyControl_branch
theorem s2Step46EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 798 254 253 252 251 803 20 s2Step46EarlyControlLog=some s2Step46EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step46EarlyControlPlan s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 798 254 253 252 251 803 20 s2Step46EarlyControl_logged
theorem s2Step46EarlyControl_checked : (compileHmrEarlyControlLog s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 798 254 253 252 251 803 20 s2Step46EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s2Step46EarlyControl_plan_checked]
  decide +kernel

def s2Step47EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 863)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 792) ∨ (793 ≤ q ∧ q < 798) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 803) ∨ (804 ≤ q ∧ q < 805) ∨ (807 ≤ q ∧ q < 844) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 851) ∨ (852 ≤ q ∧ q < 862) ∨ (863 ≤ q ∧ q < 864)),Finset.filter_subset _ _⟩

def s2Step47EarlyControlLog : HmrEarlyControlLog := ⟨[806, 805, 787, 790, 792],[800],[844],[845, 846, 847, 849, 851, 862],[863]⟩
def s2Step47EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,806⟩,⟨⟨774,false⟩,805⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,792⟩]⟩
def s2Step47EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step47EarlyControlPositiveArena,[800],s2Step47EarlyControlEqualityArena,[844],⟨⟨803,false⟩,[⟨⟨800,false⟩,844⟩]⟩⟩
def s2Step47EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step47EarlyControlZeroArena,s2Step47EarlyControlZeroPlan,s2Step47EarlyControlClassPlan,s2Step47EarlyControlFlagArena,s2Step47EarlyControlFittedArena,s2Step47EarlyControlHistoryArena,s2Step47EarlyControlSigmaArena,s2Step47EarlyControlOutputArena,s2Step47EarlyControlLog⟩
private theorem s2Step47EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_zeroBorrow : s2Step47EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step47EarlyControlLog.zeroWork=some s2Step47EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step47EarlyControlZeroArena,s2Step47EarlyControlArena,s2Step47EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step47EarlyControl_zero : compileHmrEqualityLog s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step47EarlyControlLog.zeroWork=some (s2Step47EarlyControlZeroArena,s2Step47EarlyControlLog.zeroWork,s2Step47EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step47EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step47EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s2Step47EarlyControl_positiveBorrow : s2Step47EarlyControlZeroArena.checkBorrow (1) s2Step47EarlyControlLog.positiveWork=some s2Step47EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step47EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step47EarlyControlPositiveArena,s2Step47EarlyControlZeroArena,s2Step47EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step47EarlyControl_classEqualityOwned : ([803, 800] : List Wire).toFinset⊆s2Step47EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_classEqualityBorrow : s2Step47EarlyControlPositiveArena.checkBorrow (([803, 800] : List Wire).length-1) s2Step47EarlyControlLog.classWork=some s2Step47EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step47EarlyControlPositiveArena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step47EarlyControlEqualityArena,s2Step47EarlyControlPositiveArena,s2Step47EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s2Step47EarlyControl_classEquality : compileHmrEqualityLog s2Step47EarlyControlPositiveArena [803, 800] 0 s2Step47EarlyControlLog.classWork=some (s2Step47EarlyControlEqualityArena,s2Step47EarlyControlLog.classWork,s2Step47EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step47EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step47EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s2Step47EarlyControl_classOwned : ([777, 792, 803] : List Wire).toFinset⊆s2Step47EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47EarlyControl_class : compileHmrSourceClassLog s2Step47EarlyControlZeroArena false 777 s2Step47EarlyControlZeroPlan.top 0 803 s2Step47EarlyControlLog.positiveWork s2Step47EarlyControlLog.classWork=some s2Step47EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step47EarlyControlClassPlan s2Step47EarlyControlZeroArena false 777 s2Step47EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s2Step47EarlyControl_classOwned
  · exact s2Step47EarlyControl_positiveBorrow
  · exact s2Step47EarlyControl_classEquality
private theorem s2Step47EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step47EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_flagsBorrow : s2Step47EarlyControlEqualityArena.checkBorrow (6) s2Step47EarlyControlLog.flagWork=some s2Step47EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step47EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step47EarlyControlFlagArena,s2Step47EarlyControlEqualityArena,s2Step47EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step47EarlyControl_flags : compileHmrFlagsLog s2Step47EarlyControlClassPlan.equalityArena s2Step47EarlyControlClassPlan.equality.top 253 252 251 s2Step47EarlyControlLog.flagWork=some s2Step47EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step47EarlyControl_flagsOwned⟩
  · exact s2Step47EarlyControl_flagsBorrow
private theorem s2Step47EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).toFinset⊆s2Step47EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlFlagArena (fun q => (0≤q ∧ q<863)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_fitBorrow : s2Step47EarlyControlFlagArena.checkBorrow ((21-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).length)) s2Step47EarlyControlLog.recordFresh=some s2Step47EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step47EarlyControlFlagArena (fun q => (0≤q ∧ q<863)) rfl
      decide +kernel
    · ext q
      simp [s2Step47EarlyControlFittedArena,s2Step47EarlyControlFlagArena,s2Step47EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step47EarlyControl_fit : compileHmrRecordGrowLog s2Step47EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47EarlyControlLog.recordFresh=some s2Step47EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step47EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step47EarlyControl_fitBorrow
private theorem s2Step47EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).toFinset⊆s2Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_historyBorrow : s2Step47EarlyControlArena.checkBorrow ((21-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).length)) s2Step47EarlyControlLog.recordFresh=some s2Step47EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
      decide +kernel
    · ext q
      simp [s2Step47EarlyControlHistoryArena,s2Step47EarlyControlArena,s2Step47EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s2Step47EarlyControl_history : compileHmrRecordGrowLog s2Step47EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47EarlyControlLog.recordFresh=some s2Step47EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step47EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step47EarlyControl_historyBorrow
private theorem s2Step47EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s2Step47EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s2Step47EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_sigmaRelease : s2Step47EarlyControlHistoryArena.release {803} (fun _ => false)=some s2Step47EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step47EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step47EarlyControlSigmaArena,s2Step47EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s2Step47EarlyControl_branchOwned : ([798] : List Wire).toFinset⊆s2Step47EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step47EarlyControl_branch : compileHmrBranchRetirement s2Step47EarlyControlSigmaArena 798=some s2Step47EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step47EarlyControl_branchOwned
  · ext q
    simp [s2Step47EarlyControlOutputArena,s2Step47EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s2Step47EarlyControl_sigma : compileHmrSigmaDropLog s2Step47EarlyControlHistoryArena false 0 0 254 803 []=some s2Step47EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step47EarlyControl_sigmaOwned⟩
  · exact s2Step47EarlyControl_sigmaRelease
theorem s2Step47EarlyControl_zeroProjection : (compileHmrEqualityLog s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step47EarlyControlLog.zeroWork).map Prod.snd=some (s2Step47EarlyControlLog.zeroWork,s2Step47EarlyControlZeroPlan) := by
  rw [s2Step47EarlyControl_zero]
  rfl
theorem s2Step47EarlyControl_classProjection : (compileHmrSourceClassLog s2Step47EarlyControlZeroArena false 777 s2Step47EarlyControlZeroPlan.top 0 803 s2Step47EarlyControlLog.positiveWork s2Step47EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2Step47EarlyControlClassPlan.positiveWork,s2Step47EarlyControlClassPlan.equalityWork,s2Step47EarlyControlClassPlan.equality) := by
  rw [s2Step47EarlyControl_class]
  rfl
theorem s2Step47EarlyControl_flagsProjection : (compileHmrFlagsLog s2Step47EarlyControlClassPlan.equalityArena s2Step47EarlyControlClassPlan.equality.top 253 252 251 s2Step47EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s2Step47EarlyControl_flags]
  rfl
theorem s2Step47EarlyControl_fitProjection : (compileHmrRecordGrowLog s2Step47EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step47EarlyControl_fit]
  rfl
theorem s2Step47EarlyControl_historyProjection : (compileHmrRecordGrowLog s2Step47EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s2Step47EarlyControl_history]
  rfl
theorem s2Step47EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s2Step47EarlyControlHistoryArena false 0 0 254 803 []).map (fun _ => true)=some true := by
  rw [s2Step47EarlyControl_sigma]
  rfl
theorem s2Step47EarlyControl_branchProjection : (compileHmrBranchRetirement s2Step47EarlyControlSigmaArena 798).map (fun _ => true)=some true := by
  rw [s2Step47EarlyControl_branch]
  rfl
private theorem s2Step47EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s2Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
private theorem s2Step47EarlyControl_entryRecordOwned : ([798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] : List Wire).toFinset⊆s2Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47EarlyControl_logged : s2Step47EarlyControlPlan.Logged s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 803 254 253 252 251 798 21 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step47EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step47EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step47EarlyControl_zero
  · exact s2Step47EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step47EarlyControl_flags
  · exact s2Step47EarlyControl_fit
  · exact s2Step47EarlyControl_history
  · exact s2Step47EarlyControl_sigma
  · exact s2Step47EarlyControl_branch
theorem s2Step47EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 803 254 253 252 251 798 21 s2Step47EarlyControlLog=some s2Step47EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step47EarlyControlPlan s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 803 254 253 252 251 798 21 s2Step47EarlyControl_logged
theorem s2Step47EarlyControl_checked : (compileHmrEarlyControlLog s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 803 254 253 252 251 798 21 s2Step47EarlyControlLog).map (fun P => P.outputArena.live.card)=some 849 := by
  rw [s2Step47EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
