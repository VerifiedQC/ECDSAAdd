import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl0
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl1Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

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
private theorem s6Step8EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_zeroBorrow : s6Step8EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step8EarlyControlLog.zeroWork=some s6Step8EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step8EarlyControlZeroArena,s6Step8EarlyControlArena,s6Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step8EarlyControl_zero : compileHmrEqualityLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step8EarlyControlLog.zeroWork=some (s6Step8EarlyControlZeroArena,s6Step8EarlyControlLog.zeroWork,s6Step8EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step8EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step8EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step8EarlyControl_positiveBorrow : s6Step8EarlyControlZeroArena.checkBorrow (1) s6Step8EarlyControlLog.positiveWork=some s6Step8EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step8EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step8EarlyControlPositiveArena,s6Step8EarlyControlZeroArena,s6Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step8EarlyControl_classEqualityOwned : ([890, 863] : List Wire).toFinset⊆s6Step8EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_classEqualityBorrow : s6Step8EarlyControlPositiveArena.checkBorrow (([890, 863] : List Wire).length-1) s6Step8EarlyControlLog.classWork=some s6Step8EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step8EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step8EarlyControlEqualityArena,s6Step8EarlyControlPositiveArena,s6Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step8EarlyControl_classEquality : compileHmrEqualityLog s6Step8EarlyControlPositiveArena [890, 863] 0 s6Step8EarlyControlLog.classWork=some (s6Step8EarlyControlEqualityArena,s6Step8EarlyControlLog.classWork,s6Step8EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step8EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step8EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step8EarlyControl_classOwned : ([769, 862, 890] : List Wire).toFinset⊆s6Step8EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EarlyControl_class : compileHmrSourceClassLog s6Step8EarlyControlZeroArena false 769 s6Step8EarlyControlZeroPlan.top 0 890 s6Step8EarlyControlLog.positiveWork s6Step8EarlyControlLog.classWork=some s6Step8EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step8EarlyControlClassPlan s6Step8EarlyControlZeroArena false 769 s6Step8EarlyControlZeroPlan.top 0 890
  constructor
  · decide +kernel
  · exact s6Step8EarlyControl_classOwned
  · exact s6Step8EarlyControl_positiveBorrow
  · exact s6Step8EarlyControl_classEquality
private theorem s6Step8EarlyControl_flagsOwned : ([856, 793, 802, 779] : List Wire).toFinset⊆s6Step8EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_flagsBorrow : s6Step8EarlyControlEqualityArena.checkBorrow (6) s6Step8EarlyControlLog.flagWork=some s6Step8EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step8EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step8EarlyControlFlagArena,s6Step8EarlyControlEqualityArena,s6Step8EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step8EarlyControl_flags : compileHmrFlagsLog s6Step8EarlyControlClassPlan.equalityArena s6Step8EarlyControlClassPlan.equality.top 793 802 779 s6Step8EarlyControlLog.flagWork=some s6Step8EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step8EarlyControl_flagsOwned⟩
  · exact s6Step8EarlyControl_flagsBorrow
private theorem s6Step8EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step8EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_fitBorrow : s6Step8EarlyControlFlagArena.checkBorrow ((1-([895] : List Wire).length)) s6Step8EarlyControlLog.recordFresh=some s6Step8EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step8EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step8EarlyControlFittedArena,s6Step8EarlyControlFlagArena,s6Step8EarlyControlLog,arenaWires]
theorem s6Step8EarlyControl_fit : compileHmrRecordGrowLog s6Step8EarlyControlFlagArena [895] 1 s6Step8EarlyControlLog.recordFresh=some s6Step8EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step8EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step8EarlyControl_fitBorrow
private theorem s6Step8EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_historyBorrow : s6Step8EarlyControlArena.checkBorrow ((1-([895] : List Wire).length)) s6Step8EarlyControlLog.recordFresh=some s6Step8EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step8EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step8EarlyControlHistoryArena,s6Step8EarlyControlArena,s6Step8EarlyControlLog,arenaWires]
theorem s6Step8EarlyControl_history : compileHmrRecordGrowLog s6Step8EarlyControlArena [895] 1 s6Step8EarlyControlLog.recordFresh=some s6Step8EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step8EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step8EarlyControl_historyBorrow
private theorem s6Step8EarlyControl_sigmaOwned : ([876, 890] : List Wire).toFinset⊆s6Step8EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_sigmaReleaseOwned : ([890] : List Wire).toFinset⊆s6Step8EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_sigmaRelease : s6Step8EarlyControlHistoryArena.release {890} (fun _ => false)=some s6Step8EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step8EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step8EarlyControlSigmaArena,s6Step8EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step8EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step8EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EarlyControl_branch : compileHmrBranchRetirement s6Step8EarlyControlSigmaArena 813=some s6Step8EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step8EarlyControl_branchOwned
  · ext q
    simp [s6Step8EarlyControlOutputArena,s6Step8EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step8EarlyControl_sigma : compileHmrSigmaDropLog s6Step8EarlyControlHistoryArena false 0 0 876 890 []=some s6Step8EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step8EarlyControl_sigmaOwned⟩
  · exact s6Step8EarlyControl_sigmaRelease
theorem s6Step8EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step8EarlyControlLog.zeroWork).map Prod.snd=some (s6Step8EarlyControlLog.zeroWork,s6Step8EarlyControlZeroPlan) := by
  rw [s6Step8EarlyControl_zero]
  rfl
theorem s6Step8EarlyControl_classProjection : (compileHmrSourceClassLog s6Step8EarlyControlZeroArena false 769 s6Step8EarlyControlZeroPlan.top 0 890 s6Step8EarlyControlLog.positiveWork s6Step8EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step8EarlyControlClassPlan.positiveWork,s6Step8EarlyControlClassPlan.equalityWork,s6Step8EarlyControlClassPlan.equality) := by
  rw [s6Step8EarlyControl_class]
  rfl
theorem s6Step8EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step8EarlyControlClassPlan.equalityArena s6Step8EarlyControlClassPlan.equality.top 793 802 779 s6Step8EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step8EarlyControl_flags]
  rfl
theorem s6Step8EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step8EarlyControlFlagArena [895] 1 s6Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step8EarlyControl_fit]
  rfl
theorem s6Step8EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step8EarlyControlArena [895] 1 s6Step8EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step8EarlyControl_history]
  rfl
theorem s6Step8EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step8EarlyControlHistoryArena false 0 0 876 890 []).map (fun _ => true)=some true := by
  rw [s6Step8EarlyControl_sigma]
  rfl
theorem s6Step8EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step8EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6Step8EarlyControl_branch]
  rfl
private theorem s6Step8EarlyControl_entrySigmaOwned : ([890, 876] : List Wire).toFinset⊆s6Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step8EarlyControl_entryRecordOwned : ([813, 895] : List Wire).toFinset⊆s6Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EarlyControl_logged : s6Step8EarlyControlPlan.Logged s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 890 876 793 802 779 813 1 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step8EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step8EarlyControl_entrySigmaOwned
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
private theorem s6Step9EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_zeroBorrow : s6Step9EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step9EarlyControlLog.zeroWork=some s6Step9EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step9EarlyControlZeroArena,s6Step9EarlyControlArena,s6Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step9EarlyControl_zero : compileHmrEqualityLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step9EarlyControlLog.zeroWork=some (s6Step9EarlyControlZeroArena,s6Step9EarlyControlLog.zeroWork,s6Step9EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step9EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step9EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step9EarlyControl_positiveBorrow : s6Step9EarlyControlZeroArena.checkBorrow (1) s6Step9EarlyControlLog.positiveWork=some s6Step9EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step9EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step9EarlyControlPositiveArena,s6Step9EarlyControlZeroArena,s6Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step9EarlyControl_classEqualityOwned : ([873, 823] : List Wire).toFinset⊆s6Step9EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_classEqualityBorrow : s6Step9EarlyControlPositiveArena.checkBorrow (([873, 823] : List Wire).length-1) s6Step9EarlyControlLog.classWork=some s6Step9EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step9EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step9EarlyControlEqualityArena,s6Step9EarlyControlPositiveArena,s6Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step9EarlyControl_classEquality : compileHmrEqualityLog s6Step9EarlyControlPositiveArena [873, 823] 0 s6Step9EarlyControlLog.classWork=some (s6Step9EarlyControlEqualityArena,s6Step9EarlyControlLog.classWork,s6Step9EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step9EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step9EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step9EarlyControl_classOwned : ([769, 807, 873] : List Wire).toFinset⊆s6Step9EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EarlyControl_class : compileHmrSourceClassLog s6Step9EarlyControlZeroArena false 769 s6Step9EarlyControlZeroPlan.top 0 873 s6Step9EarlyControlLog.positiveWork s6Step9EarlyControlLog.classWork=some s6Step9EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step9EarlyControlClassPlan s6Step9EarlyControlZeroArena false 769 s6Step9EarlyControlZeroPlan.top 0 873
  constructor
  · decide +kernel
  · exact s6Step9EarlyControl_classOwned
  · exact s6Step9EarlyControl_positiveBorrow
  · exact s6Step9EarlyControl_classEquality
private theorem s6Step9EarlyControl_flagsOwned : ([865, 793, 802, 779] : List Wire).toFinset⊆s6Step9EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_flagsBorrow : s6Step9EarlyControlEqualityArena.checkBorrow (6) s6Step9EarlyControlLog.flagWork=some s6Step9EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step9EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step9EarlyControlFlagArena,s6Step9EarlyControlEqualityArena,s6Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step9EarlyControl_flags : compileHmrFlagsLog s6Step9EarlyControlClassPlan.equalityArena s6Step9EarlyControlClassPlan.equality.top 793 802 779 s6Step9EarlyControlLog.flagWork=some s6Step9EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step9EarlyControl_flagsOwned⟩
  · exact s6Step9EarlyControl_flagsBorrow
private theorem s6Step9EarlyControl_fitOwned : ([895] : List Wire).toFinset⊆s6Step9EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_fitBorrow : s6Step9EarlyControlFlagArena.checkBorrow ((2-([895] : List Wire).length)) s6Step9EarlyControlLog.recordFresh=some s6Step9EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step9EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step9EarlyControlFittedArena,s6Step9EarlyControlFlagArena,s6Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step9EarlyControl_fit : compileHmrRecordGrowLog s6Step9EarlyControlFlagArena [895] 2 s6Step9EarlyControlLog.recordFresh=some s6Step9EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step9EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step9EarlyControl_fitBorrow
private theorem s6Step9EarlyControl_historyOwned : ([895] : List Wire).toFinset⊆s6Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_historyBorrow : s6Step9EarlyControlArena.checkBorrow ((2-([895] : List Wire).length)) s6Step9EarlyControlLog.recordFresh=some s6Step9EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step9EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step9EarlyControlHistoryArena,s6Step9EarlyControlArena,s6Step9EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step9EarlyControl_history : compileHmrRecordGrowLog s6Step9EarlyControlArena [895] 2 s6Step9EarlyControlLog.recordFresh=some s6Step9EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step9EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step9EarlyControl_historyBorrow
private theorem s6Step9EarlyControl_sigmaOwned : ([876, 873] : List Wire).toFinset⊆s6Step9EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_sigmaReleaseOwned : ([873] : List Wire).toFinset⊆s6Step9EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_sigmaRelease : s6Step9EarlyControlHistoryArena.release {873} (fun _ => false)=some s6Step9EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step9EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step9EarlyControlSigmaArena,s6Step9EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step9EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step9EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EarlyControl_branch : compileHmrBranchRetirement s6Step9EarlyControlSigmaArena 860=some s6Step9EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step9EarlyControl_branchOwned
  · ext q
    simp [s6Step9EarlyControlOutputArena,s6Step9EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step9EarlyControl_sigma : compileHmrSigmaDropLog s6Step9EarlyControlHistoryArena false 0 0 876 873 []=some s6Step9EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step9EarlyControl_sigmaOwned⟩
  · exact s6Step9EarlyControl_sigmaRelease
theorem s6Step9EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step9EarlyControlLog.zeroWork).map Prod.snd=some (s6Step9EarlyControlLog.zeroWork,s6Step9EarlyControlZeroPlan) := by
  rw [s6Step9EarlyControl_zero]
  rfl
theorem s6Step9EarlyControl_classProjection : (compileHmrSourceClassLog s6Step9EarlyControlZeroArena false 769 s6Step9EarlyControlZeroPlan.top 0 873 s6Step9EarlyControlLog.positiveWork s6Step9EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step9EarlyControlClassPlan.positiveWork,s6Step9EarlyControlClassPlan.equalityWork,s6Step9EarlyControlClassPlan.equality) := by
  rw [s6Step9EarlyControl_class]
  rfl
theorem s6Step9EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step9EarlyControlClassPlan.equalityArena s6Step9EarlyControlClassPlan.equality.top 793 802 779 s6Step9EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step9EarlyControl_flags]
  rfl
theorem s6Step9EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step9EarlyControlFlagArena [895] 2 s6Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step9EarlyControl_fit]
  rfl
theorem s6Step9EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step9EarlyControlArena [895] 2 s6Step9EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step9EarlyControl_history]
  rfl
theorem s6Step9EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step9EarlyControlHistoryArena false 0 0 876 873 []).map (fun _ => true)=some true := by
  rw [s6Step9EarlyControl_sigma]
  rfl
theorem s6Step9EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step9EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  rw [s6Step9EarlyControl_branch]
  rfl
private theorem s6Step9EarlyControl_entrySigmaOwned : ([873, 876] : List Wire).toFinset⊆s6Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step9EarlyControl_entryRecordOwned : ([860, 895] : List Wire).toFinset⊆s6Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EarlyControl_logged : s6Step9EarlyControlPlan.Logged s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 873 876 793 802 779 860 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step9EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step9EarlyControl_entrySigmaOwned
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
private theorem s6Step10EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_zeroBorrow : s6Step10EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step10EarlyControlLog.zeroWork=some s6Step10EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step10EarlyControlZeroArena,s6Step10EarlyControlArena,s6Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step10EarlyControl_zero : compileHmrEqualityLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step10EarlyControlLog.zeroWork=some (s6Step10EarlyControlZeroArena,s6Step10EarlyControlLog.zeroWork,s6Step10EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step10EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step10EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step10EarlyControl_positiveBorrow : s6Step10EarlyControlZeroArena.checkBorrow (1) s6Step10EarlyControlLog.positiveWork=some s6Step10EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step10EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step10EarlyControlPositiveArena,s6Step10EarlyControlZeroArena,s6Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step10EarlyControl_classEqualityOwned : ([863, 880] : List Wire).toFinset⊆s6Step10EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_classEqualityBorrow : s6Step10EarlyControlPositiveArena.checkBorrow (([863, 880] : List Wire).length-1) s6Step10EarlyControlLog.classWork=some s6Step10EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step10EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step10EarlyControlEqualityArena,s6Step10EarlyControlPositiveArena,s6Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step10EarlyControl_classEquality : compileHmrEqualityLog s6Step10EarlyControlPositiveArena [863, 880] 0 s6Step10EarlyControlLog.classWork=some (s6Step10EarlyControlEqualityArena,s6Step10EarlyControlLog.classWork,s6Step10EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step10EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step10EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step10EarlyControl_classOwned : ([769, 813, 863] : List Wire).toFinset⊆s6Step10EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EarlyControl_class : compileHmrSourceClassLog s6Step10EarlyControlZeroArena false 769 s6Step10EarlyControlZeroPlan.top 0 863 s6Step10EarlyControlLog.positiveWork s6Step10EarlyControlLog.classWork=some s6Step10EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step10EarlyControlClassPlan s6Step10EarlyControlZeroArena false 769 s6Step10EarlyControlZeroPlan.top 0 863
  constructor
  · decide +kernel
  · exact s6Step10EarlyControl_classOwned
  · exact s6Step10EarlyControl_positiveBorrow
  · exact s6Step10EarlyControl_classEquality
private theorem s6Step10EarlyControl_flagsOwned : ([789, 793, 802, 779] : List Wire).toFinset⊆s6Step10EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_flagsBorrow : s6Step10EarlyControlEqualityArena.checkBorrow (6) s6Step10EarlyControlLog.flagWork=some s6Step10EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step10EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step10EarlyControlFlagArena,s6Step10EarlyControlEqualityArena,s6Step10EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step10EarlyControl_flags : compileHmrFlagsLog s6Step10EarlyControlClassPlan.equalityArena s6Step10EarlyControlClassPlan.equality.top 793 802 779 s6Step10EarlyControlLog.flagWork=some s6Step10EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step10EarlyControl_flagsOwned⟩
  · exact s6Step10EarlyControl_flagsBorrow
private theorem s6Step10EarlyControl_fitOwned : ([895, 870] : List Wire).toFinset⊆s6Step10EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_fitBorrow : s6Step10EarlyControlFlagArena.checkBorrow ((2-([895, 870] : List Wire).length)) s6Step10EarlyControlLog.recordFresh=some s6Step10EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step10EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step10EarlyControlFittedArena,s6Step10EarlyControlFlagArena,s6Step10EarlyControlLog,arenaWires]
theorem s6Step10EarlyControl_fit : compileHmrRecordGrowLog s6Step10EarlyControlFlagArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh=some s6Step10EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step10EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step10EarlyControl_fitBorrow
private theorem s6Step10EarlyControl_historyOwned : ([895, 870] : List Wire).toFinset⊆s6Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_historyBorrow : s6Step10EarlyControlArena.checkBorrow ((2-([895, 870] : List Wire).length)) s6Step10EarlyControlLog.recordFresh=some s6Step10EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step10EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step10EarlyControlHistoryArena,s6Step10EarlyControlArena,s6Step10EarlyControlLog,arenaWires]
theorem s6Step10EarlyControl_history : compileHmrRecordGrowLog s6Step10EarlyControlArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh=some s6Step10EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step10EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step10EarlyControl_historyBorrow
private theorem s6Step10EarlyControl_sigmaOwned : ([876, 863] : List Wire).toFinset⊆s6Step10EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_sigmaReleaseOwned : ([863] : List Wire).toFinset⊆s6Step10EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_sigmaRelease : s6Step10EarlyControlHistoryArena.release {863} (fun _ => false)=some s6Step10EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step10EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step10EarlyControlSigmaArena,s6Step10EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step10EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step10EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EarlyControl_branch : compileHmrBranchRetirement s6Step10EarlyControlSigmaArena 862=some s6Step10EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step10EarlyControl_branchOwned
  · ext q
    simp [s6Step10EarlyControlOutputArena,s6Step10EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step10EarlyControl_sigma : compileHmrSigmaDropLog s6Step10EarlyControlHistoryArena false 0 0 876 863 []=some s6Step10EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step10EarlyControl_sigmaOwned⟩
  · exact s6Step10EarlyControl_sigmaRelease
theorem s6Step10EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step10EarlyControlLog.zeroWork).map Prod.snd=some (s6Step10EarlyControlLog.zeroWork,s6Step10EarlyControlZeroPlan) := by
  rw [s6Step10EarlyControl_zero]
  rfl
theorem s6Step10EarlyControl_classProjection : (compileHmrSourceClassLog s6Step10EarlyControlZeroArena false 769 s6Step10EarlyControlZeroPlan.top 0 863 s6Step10EarlyControlLog.positiveWork s6Step10EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step10EarlyControlClassPlan.positiveWork,s6Step10EarlyControlClassPlan.equalityWork,s6Step10EarlyControlClassPlan.equality) := by
  rw [s6Step10EarlyControl_class]
  rfl
theorem s6Step10EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step10EarlyControlClassPlan.equalityArena s6Step10EarlyControlClassPlan.equality.top 793 802 779 s6Step10EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step10EarlyControl_flags]
  rfl
theorem s6Step10EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step10EarlyControlFlagArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step10EarlyControl_fit]
  rfl
theorem s6Step10EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step10EarlyControlArena [895, 870] 2 s6Step10EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step10EarlyControl_history]
  rfl
theorem s6Step10EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step10EarlyControlHistoryArena false 0 0 876 863 []).map (fun _ => true)=some true := by
  rw [s6Step10EarlyControl_sigma]
  rfl
theorem s6Step10EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step10EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  rw [s6Step10EarlyControl_branch]
  rfl
private theorem s6Step10EarlyControl_entrySigmaOwned : ([863, 876] : List Wire).toFinset⊆s6Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step10EarlyControl_entryRecordOwned : ([862, 895, 870] : List Wire).toFinset⊆s6Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EarlyControl_logged : s6Step10EarlyControlPlan.Logged s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 863 876 793 802 779 862 2 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step10EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step10EarlyControl_entrySigmaOwned
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
private theorem s6Step11EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_zeroBorrow : s6Step11EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step11EarlyControlLog.zeroWork=some s6Step11EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step11EarlyControlZeroArena,s6Step11EarlyControlArena,s6Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step11EarlyControl_zero : compileHmrEqualityLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step11EarlyControlLog.zeroWork=some (s6Step11EarlyControlZeroArena,s6Step11EarlyControlLog.zeroWork,s6Step11EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step11EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step11EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step11EarlyControl_positiveBorrow : s6Step11EarlyControlZeroArena.checkBorrow (1) s6Step11EarlyControlLog.positiveWork=some s6Step11EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step11EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step11EarlyControlPositiveArena,s6Step11EarlyControlZeroArena,s6Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step11EarlyControl_classEqualityOwned : ([823, 864] : List Wire).toFinset⊆s6Step11EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_classEqualityBorrow : s6Step11EarlyControlPositiveArena.checkBorrow (([823, 864] : List Wire).length-1) s6Step11EarlyControlLog.classWork=some s6Step11EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step11EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step11EarlyControlEqualityArena,s6Step11EarlyControlPositiveArena,s6Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step11EarlyControl_classEquality : compileHmrEqualityLog s6Step11EarlyControlPositiveArena [823, 864] 0 s6Step11EarlyControlLog.classWork=some (s6Step11EarlyControlEqualityArena,s6Step11EarlyControlLog.classWork,s6Step11EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step11EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step11EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step11EarlyControl_classOwned : ([769, 860, 823] : List Wire).toFinset⊆s6Step11EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EarlyControl_class : compileHmrSourceClassLog s6Step11EarlyControlZeroArena false 769 s6Step11EarlyControlZeroPlan.top 0 823 s6Step11EarlyControlLog.positiveWork s6Step11EarlyControlLog.classWork=some s6Step11EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step11EarlyControlClassPlan s6Step11EarlyControlZeroArena false 769 s6Step11EarlyControlZeroPlan.top 0 823
  constructor
  · decide +kernel
  · exact s6Step11EarlyControl_classOwned
  · exact s6Step11EarlyControl_positiveBorrow
  · exact s6Step11EarlyControl_classEquality
private theorem s6Step11EarlyControl_flagsOwned : ([818, 793, 802, 779] : List Wire).toFinset⊆s6Step11EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_flagsBorrow : s6Step11EarlyControlEqualityArena.checkBorrow (6) s6Step11EarlyControlLog.flagWork=some s6Step11EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step11EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step11EarlyControlFlagArena,s6Step11EarlyControlEqualityArena,s6Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step11EarlyControl_flags : compileHmrFlagsLog s6Step11EarlyControlClassPlan.equalityArena s6Step11EarlyControlClassPlan.equality.top 793 802 779 s6Step11EarlyControlLog.flagWork=some s6Step11EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step11EarlyControl_flagsOwned⟩
  · exact s6Step11EarlyControl_flagsBorrow
private theorem s6Step11EarlyControl_fitOwned : ([895, 870] : List Wire).toFinset⊆s6Step11EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_fitBorrow : s6Step11EarlyControlFlagArena.checkBorrow ((3-([895, 870] : List Wire).length)) s6Step11EarlyControlLog.recordFresh=some s6Step11EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step11EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step11EarlyControlFittedArena,s6Step11EarlyControlFlagArena,s6Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step11EarlyControl_fit : compileHmrRecordGrowLog s6Step11EarlyControlFlagArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh=some s6Step11EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step11EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step11EarlyControl_fitBorrow
private theorem s6Step11EarlyControl_historyOwned : ([895, 870] : List Wire).toFinset⊆s6Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_historyBorrow : s6Step11EarlyControlArena.checkBorrow ((3-([895, 870] : List Wire).length)) s6Step11EarlyControlLog.recordFresh=some s6Step11EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step11EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step11EarlyControlHistoryArena,s6Step11EarlyControlArena,s6Step11EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step11EarlyControl_history : compileHmrRecordGrowLog s6Step11EarlyControlArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh=some s6Step11EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step11EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step11EarlyControl_historyBorrow
private theorem s6Step11EarlyControl_sigmaOwned : ([876, 823] : List Wire).toFinset⊆s6Step11EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_sigmaReleaseOwned : ([823] : List Wire).toFinset⊆s6Step11EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_sigmaRelease : s6Step11EarlyControlHistoryArena.release {823} (fun _ => false)=some s6Step11EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step11EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step11EarlyControlSigmaArena,s6Step11EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step11EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step11EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EarlyControl_branch : compileHmrBranchRetirement s6Step11EarlyControlSigmaArena 807=some s6Step11EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step11EarlyControl_branchOwned
  · ext q
    simp [s6Step11EarlyControlOutputArena,s6Step11EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step11EarlyControl_sigma : compileHmrSigmaDropLog s6Step11EarlyControlHistoryArena false 0 0 876 823 []=some s6Step11EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step11EarlyControl_sigmaOwned⟩
  · exact s6Step11EarlyControl_sigmaRelease
theorem s6Step11EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step11EarlyControlLog.zeroWork).map Prod.snd=some (s6Step11EarlyControlLog.zeroWork,s6Step11EarlyControlZeroPlan) := by
  rw [s6Step11EarlyControl_zero]
  rfl
theorem s6Step11EarlyControl_classProjection : (compileHmrSourceClassLog s6Step11EarlyControlZeroArena false 769 s6Step11EarlyControlZeroPlan.top 0 823 s6Step11EarlyControlLog.positiveWork s6Step11EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step11EarlyControlClassPlan.positiveWork,s6Step11EarlyControlClassPlan.equalityWork,s6Step11EarlyControlClassPlan.equality) := by
  rw [s6Step11EarlyControl_class]
  rfl
theorem s6Step11EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step11EarlyControlClassPlan.equalityArena s6Step11EarlyControlClassPlan.equality.top 793 802 779 s6Step11EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step11EarlyControl_flags]
  rfl
theorem s6Step11EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step11EarlyControlFlagArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step11EarlyControl_fit]
  rfl
theorem s6Step11EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step11EarlyControlArena [895, 870] 3 s6Step11EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step11EarlyControl_history]
  rfl
theorem s6Step11EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step11EarlyControlHistoryArena false 0 0 876 823 []).map (fun _ => true)=some true := by
  rw [s6Step11EarlyControl_sigma]
  rfl
theorem s6Step11EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step11EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s6Step11EarlyControl_branch]
  rfl
private theorem s6Step11EarlyControl_entrySigmaOwned : ([823, 876] : List Wire).toFinset⊆s6Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step11EarlyControl_entryRecordOwned : ([807, 895, 870] : List Wire).toFinset⊆s6Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EarlyControl_logged : s6Step11EarlyControlPlan.Logged s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 823 876 793 802 779 807 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step11EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step11EarlyControl_entrySigmaOwned
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
private theorem s6Step12EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_zeroBorrow : s6Step12EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step12EarlyControlLog.zeroWork=some s6Step12EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step12EarlyControlZeroArena,s6Step12EarlyControlArena,s6Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step12EarlyControl_zero : compileHmrEqualityLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step12EarlyControlLog.zeroWork=some (s6Step12EarlyControlZeroArena,s6Step12EarlyControlLog.zeroWork,s6Step12EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step12EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step12EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step12EarlyControl_positiveBorrow : s6Step12EarlyControlZeroArena.checkBorrow (1) s6Step12EarlyControlLog.positiveWork=some s6Step12EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step12EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step12EarlyControlPositiveArena,s6Step12EarlyControlZeroArena,s6Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step12EarlyControl_classEqualityOwned : ([880, 828] : List Wire).toFinset⊆s6Step12EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_classEqualityBorrow : s6Step12EarlyControlPositiveArena.checkBorrow (([880, 828] : List Wire).length-1) s6Step12EarlyControlLog.classWork=some s6Step12EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step12EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step12EarlyControlEqualityArena,s6Step12EarlyControlPositiveArena,s6Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step12EarlyControl_classEquality : compileHmrEqualityLog s6Step12EarlyControlPositiveArena [880, 828] 0 s6Step12EarlyControlLog.classWork=some (s6Step12EarlyControlEqualityArena,s6Step12EarlyControlLog.classWork,s6Step12EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step12EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step12EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step12EarlyControl_classOwned : ([769, 862, 880] : List Wire).toFinset⊆s6Step12EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EarlyControl_class : compileHmrSourceClassLog s6Step12EarlyControlZeroArena false 769 s6Step12EarlyControlZeroPlan.top 0 880 s6Step12EarlyControlLog.positiveWork s6Step12EarlyControlLog.classWork=some s6Step12EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step12EarlyControlClassPlan s6Step12EarlyControlZeroArena false 769 s6Step12EarlyControlZeroPlan.top 0 880
  constructor
  · decide +kernel
  · exact s6Step12EarlyControl_classOwned
  · exact s6Step12EarlyControl_positiveBorrow
  · exact s6Step12EarlyControl_classEquality
private theorem s6Step12EarlyControl_flagsOwned : ([892, 793, 802, 779] : List Wire).toFinset⊆s6Step12EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_flagsBorrow : s6Step12EarlyControlEqualityArena.checkBorrow (6) s6Step12EarlyControlLog.flagWork=some s6Step12EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step12EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step12EarlyControlFlagArena,s6Step12EarlyControlEqualityArena,s6Step12EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step12EarlyControl_flags : compileHmrFlagsLog s6Step12EarlyControlClassPlan.equalityArena s6Step12EarlyControlClassPlan.equality.top 793 802 779 s6Step12EarlyControlLog.flagWork=some s6Step12EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step12EarlyControl_flagsOwned⟩
  · exact s6Step12EarlyControl_flagsBorrow
private theorem s6Step12EarlyControl_fitOwned : ([895, 870, 872] : List Wire).toFinset⊆s6Step12EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_fitBorrow : s6Step12EarlyControlFlagArena.checkBorrow ((3-([895, 870, 872] : List Wire).length)) s6Step12EarlyControlLog.recordFresh=some s6Step12EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step12EarlyControlFlagArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step12EarlyControlFittedArena,s6Step12EarlyControlFlagArena,s6Step12EarlyControlLog,arenaWires]
theorem s6Step12EarlyControl_fit : compileHmrRecordGrowLog s6Step12EarlyControlFlagArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh=some s6Step12EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step12EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step12EarlyControl_fitBorrow
private theorem s6Step12EarlyControl_historyOwned : ([895, 870, 872] : List Wire).toFinset⊆s6Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_historyBorrow : s6Step12EarlyControlArena.checkBorrow ((3-([895, 870, 872] : List Wire).length)) s6Step12EarlyControlLog.recordFresh=some s6Step12EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step12EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step12EarlyControlHistoryArena,s6Step12EarlyControlArena,s6Step12EarlyControlLog,arenaWires]
theorem s6Step12EarlyControl_history : compileHmrRecordGrowLog s6Step12EarlyControlArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh=some s6Step12EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step12EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step12EarlyControl_historyBorrow
private theorem s6Step12EarlyControl_sigmaOwned : ([876, 880] : List Wire).toFinset⊆s6Step12EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_sigmaReleaseOwned : ([880] : List Wire).toFinset⊆s6Step12EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_sigmaRelease : s6Step12EarlyControlHistoryArena.release {880} (fun _ => false)=some s6Step12EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step12EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step12EarlyControlSigmaArena,s6Step12EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step12EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step12EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EarlyControl_branch : compileHmrBranchRetirement s6Step12EarlyControlSigmaArena 813=some s6Step12EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step12EarlyControl_branchOwned
  · ext q
    simp [s6Step12EarlyControlOutputArena,s6Step12EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step12EarlyControl_sigma : compileHmrSigmaDropLog s6Step12EarlyControlHistoryArena false 0 0 876 880 []=some s6Step12EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step12EarlyControl_sigmaOwned⟩
  · exact s6Step12EarlyControl_sigmaRelease
theorem s6Step12EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step12EarlyControlLog.zeroWork).map Prod.snd=some (s6Step12EarlyControlLog.zeroWork,s6Step12EarlyControlZeroPlan) := by
  rw [s6Step12EarlyControl_zero]
  rfl
theorem s6Step12EarlyControl_classProjection : (compileHmrSourceClassLog s6Step12EarlyControlZeroArena false 769 s6Step12EarlyControlZeroPlan.top 0 880 s6Step12EarlyControlLog.positiveWork s6Step12EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step12EarlyControlClassPlan.positiveWork,s6Step12EarlyControlClassPlan.equalityWork,s6Step12EarlyControlClassPlan.equality) := by
  rw [s6Step12EarlyControl_class]
  rfl
theorem s6Step12EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step12EarlyControlClassPlan.equalityArena s6Step12EarlyControlClassPlan.equality.top 793 802 779 s6Step12EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step12EarlyControl_flags]
  rfl
theorem s6Step12EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step12EarlyControlFlagArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step12EarlyControl_fit]
  rfl
theorem s6Step12EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step12EarlyControlArena [895, 870, 872] 3 s6Step12EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step12EarlyControl_history]
  rfl
theorem s6Step12EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step12EarlyControlHistoryArena false 0 0 876 880 []).map (fun _ => true)=some true := by
  rw [s6Step12EarlyControl_sigma]
  rfl
theorem s6Step12EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step12EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6Step12EarlyControl_branch]
  rfl
private theorem s6Step12EarlyControl_entrySigmaOwned : ([880, 876] : List Wire).toFinset⊆s6Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step12EarlyControl_entryRecordOwned : ([813, 895, 870, 872] : List Wire).toFinset⊆s6Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EarlyControl_logged : s6Step12EarlyControlPlan.Logged s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 880 876 793 802 779 813 3 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step12EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step12EarlyControl_entrySigmaOwned
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
private theorem s6Step13EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_zeroBorrow : s6Step13EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step13EarlyControlLog.zeroWork=some s6Step13EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step13EarlyControlZeroArena,s6Step13EarlyControlArena,s6Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step13EarlyControl_zero : compileHmrEqualityLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step13EarlyControlLog.zeroWork=some (s6Step13EarlyControlZeroArena,s6Step13EarlyControlLog.zeroWork,s6Step13EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step13EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step13EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step13EarlyControl_positiveBorrow : s6Step13EarlyControlZeroArena.checkBorrow (1) s6Step13EarlyControlLog.positiveWork=some s6Step13EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step13EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step13EarlyControlPositiveArena,s6Step13EarlyControlZeroArena,s6Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step13EarlyControl_classEqualityOwned : ([864, 822] : List Wire).toFinset⊆s6Step13EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_classEqualityBorrow : s6Step13EarlyControlPositiveArena.checkBorrow (([864, 822] : List Wire).length-1) s6Step13EarlyControlLog.classWork=some s6Step13EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step13EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step13EarlyControlEqualityArena,s6Step13EarlyControlPositiveArena,s6Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step13EarlyControl_classEquality : compileHmrEqualityLog s6Step13EarlyControlPositiveArena [864, 822] 0 s6Step13EarlyControlLog.classWork=some (s6Step13EarlyControlEqualityArena,s6Step13EarlyControlLog.classWork,s6Step13EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step13EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step13EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step13EarlyControl_classOwned : ([769, 807, 864] : List Wire).toFinset⊆s6Step13EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EarlyControl_class : compileHmrSourceClassLog s6Step13EarlyControlZeroArena false 769 s6Step13EarlyControlZeroPlan.top 0 864 s6Step13EarlyControlLog.positiveWork s6Step13EarlyControlLog.classWork=some s6Step13EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step13EarlyControlClassPlan s6Step13EarlyControlZeroArena false 769 s6Step13EarlyControlZeroPlan.top 0 864
  constructor
  · decide +kernel
  · exact s6Step13EarlyControl_classOwned
  · exact s6Step13EarlyControl_positiveBorrow
  · exact s6Step13EarlyControl_classEquality
private theorem s6Step13EarlyControl_flagsOwned : ([882, 793, 802, 779] : List Wire).toFinset⊆s6Step13EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_flagsBorrow : s6Step13EarlyControlEqualityArena.checkBorrow (6) s6Step13EarlyControlLog.flagWork=some s6Step13EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step13EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step13EarlyControlFlagArena,s6Step13EarlyControlEqualityArena,s6Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step13EarlyControl_flags : compileHmrFlagsLog s6Step13EarlyControlClassPlan.equalityArena s6Step13EarlyControlClassPlan.equality.top 793 802 779 s6Step13EarlyControlLog.flagWork=some s6Step13EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step13EarlyControl_flagsOwned⟩
  · exact s6Step13EarlyControl_flagsBorrow
private theorem s6Step13EarlyControl_fitOwned : ([895, 870, 872] : List Wire).toFinset⊆s6Step13EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_fitBorrow : s6Step13EarlyControlFlagArena.checkBorrow ((4-([895, 870, 872] : List Wire).length)) s6Step13EarlyControlLog.recordFresh=some s6Step13EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step13EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<883) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step13EarlyControlFittedArena,s6Step13EarlyControlFlagArena,s6Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step13EarlyControl_fit : compileHmrRecordGrowLog s6Step13EarlyControlFlagArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh=some s6Step13EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step13EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step13EarlyControl_fitBorrow
private theorem s6Step13EarlyControl_historyOwned : ([895, 870, 872] : List Wire).toFinset⊆s6Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_historyBorrow : s6Step13EarlyControlArena.checkBorrow ((4-([895, 870, 872] : List Wire).length)) s6Step13EarlyControlLog.recordFresh=some s6Step13EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step13EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step13EarlyControlHistoryArena,s6Step13EarlyControlArena,s6Step13EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step13EarlyControl_history : compileHmrRecordGrowLog s6Step13EarlyControlArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh=some s6Step13EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step13EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step13EarlyControl_historyBorrow
private theorem s6Step13EarlyControl_sigmaOwned : ([876, 864] : List Wire).toFinset⊆s6Step13EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_sigmaReleaseOwned : ([864] : List Wire).toFinset⊆s6Step13EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_sigmaRelease : s6Step13EarlyControlHistoryArena.release {864} (fun _ => false)=some s6Step13EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step13EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step13EarlyControlSigmaArena,s6Step13EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step13EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step13EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EarlyControl_branch : compileHmrBranchRetirement s6Step13EarlyControlSigmaArena 860=some s6Step13EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step13EarlyControl_branchOwned
  · ext q
    simp [s6Step13EarlyControlOutputArena,s6Step13EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step13EarlyControl_sigma : compileHmrSigmaDropLog s6Step13EarlyControlHistoryArena false 0 0 876 864 []=some s6Step13EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step13EarlyControl_sigmaOwned⟩
  · exact s6Step13EarlyControl_sigmaRelease
theorem s6Step13EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step13EarlyControlLog.zeroWork).map Prod.snd=some (s6Step13EarlyControlLog.zeroWork,s6Step13EarlyControlZeroPlan) := by
  rw [s6Step13EarlyControl_zero]
  rfl
theorem s6Step13EarlyControl_classProjection : (compileHmrSourceClassLog s6Step13EarlyControlZeroArena false 769 s6Step13EarlyControlZeroPlan.top 0 864 s6Step13EarlyControlLog.positiveWork s6Step13EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step13EarlyControlClassPlan.positiveWork,s6Step13EarlyControlClassPlan.equalityWork,s6Step13EarlyControlClassPlan.equality) := by
  rw [s6Step13EarlyControl_class]
  rfl
theorem s6Step13EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step13EarlyControlClassPlan.equalityArena s6Step13EarlyControlClassPlan.equality.top 793 802 779 s6Step13EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step13EarlyControl_flags]
  rfl
theorem s6Step13EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step13EarlyControlFlagArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step13EarlyControl_fit]
  rfl
theorem s6Step13EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step13EarlyControlArena [895, 870, 872] 4 s6Step13EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step13EarlyControl_history]
  rfl
theorem s6Step13EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step13EarlyControlHistoryArena false 0 0 876 864 []).map (fun _ => true)=some true := by
  rw [s6Step13EarlyControl_sigma]
  rfl
theorem s6Step13EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step13EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  rw [s6Step13EarlyControl_branch]
  rfl
private theorem s6Step13EarlyControl_entrySigmaOwned : ([864, 876] : List Wire).toFinset⊆s6Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step13EarlyControl_entryRecordOwned : ([860, 895, 870, 872] : List Wire).toFinset⊆s6Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EarlyControl_logged : s6Step13EarlyControlPlan.Logged s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 864 876 793 802 779 860 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step13EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step13EarlyControl_entrySigmaOwned
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
private theorem s6Step14EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_zeroBorrow : s6Step14EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step14EarlyControlLog.zeroWork=some s6Step14EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step14EarlyControlZeroArena,s6Step14EarlyControlArena,s6Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step14EarlyControl_zero : compileHmrEqualityLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step14EarlyControlLog.zeroWork=some (s6Step14EarlyControlZeroArena,s6Step14EarlyControlLog.zeroWork,s6Step14EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step14EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step14EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step14EarlyControl_positiveBorrow : s6Step14EarlyControlZeroArena.checkBorrow (1) s6Step14EarlyControlLog.positiveWork=some s6Step14EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step14EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step14EarlyControlPositiveArena,s6Step14EarlyControlZeroArena,s6Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step14EarlyControl_classEqualityOwned : ([828, 780] : List Wire).toFinset⊆s6Step14EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_classEqualityBorrow : s6Step14EarlyControlPositiveArena.checkBorrow (([828, 780] : List Wire).length-1) s6Step14EarlyControlLog.classWork=some s6Step14EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step14EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step14EarlyControlEqualityArena,s6Step14EarlyControlPositiveArena,s6Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step14EarlyControl_classEquality : compileHmrEqualityLog s6Step14EarlyControlPositiveArena [828, 780] 0 s6Step14EarlyControlLog.classWork=some (s6Step14EarlyControlEqualityArena,s6Step14EarlyControlLog.classWork,s6Step14EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step14EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step14EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step14EarlyControl_classOwned : ([769, 813, 828] : List Wire).toFinset⊆s6Step14EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EarlyControl_class : compileHmrSourceClassLog s6Step14EarlyControlZeroArena false 769 s6Step14EarlyControlZeroPlan.top 0 828 s6Step14EarlyControlLog.positiveWork s6Step14EarlyControlLog.classWork=some s6Step14EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step14EarlyControlClassPlan s6Step14EarlyControlZeroArena false 769 s6Step14EarlyControlZeroPlan.top 0 828
  constructor
  · decide +kernel
  · exact s6Step14EarlyControl_classOwned
  · exact s6Step14EarlyControl_positiveBorrow
  · exact s6Step14EarlyControl_classEquality
private theorem s6Step14EarlyControl_flagsOwned : ([833, 793, 802, 779] : List Wire).toFinset⊆s6Step14EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_flagsBorrow : s6Step14EarlyControlEqualityArena.checkBorrow (6) s6Step14EarlyControlLog.flagWork=some s6Step14EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step14EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step14EarlyControlFlagArena,s6Step14EarlyControlEqualityArena,s6Step14EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step14EarlyControl_flags : compileHmrFlagsLog s6Step14EarlyControlClassPlan.equalityArena s6Step14EarlyControlClassPlan.equality.top 793 802 779 s6Step14EarlyControlLog.flagWork=some s6Step14EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step14EarlyControl_flagsOwned⟩
  · exact s6Step14EarlyControl_flagsBorrow
private theorem s6Step14EarlyControl_fitOwned : ([895, 870, 872, 883] : List Wire).toFinset⊆s6Step14EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_fitBorrow : s6Step14EarlyControlFlagArena.checkBorrow ((4-([895, 870, 872, 883] : List Wire).length)) s6Step14EarlyControlLog.recordFresh=some s6Step14EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step14EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step14EarlyControlFittedArena,s6Step14EarlyControlFlagArena,s6Step14EarlyControlLog,arenaWires]
theorem s6Step14EarlyControl_fit : compileHmrRecordGrowLog s6Step14EarlyControlFlagArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh=some s6Step14EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step14EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step14EarlyControl_fitBorrow
private theorem s6Step14EarlyControl_historyOwned : ([895, 870, 872, 883] : List Wire).toFinset⊆s6Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_historyBorrow : s6Step14EarlyControlArena.checkBorrow ((4-([895, 870, 872, 883] : List Wire).length)) s6Step14EarlyControlLog.recordFresh=some s6Step14EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step14EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step14EarlyControlHistoryArena,s6Step14EarlyControlArena,s6Step14EarlyControlLog,arenaWires]
theorem s6Step14EarlyControl_history : compileHmrRecordGrowLog s6Step14EarlyControlArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh=some s6Step14EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step14EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step14EarlyControl_historyBorrow
private theorem s6Step14EarlyControl_sigmaOwned : ([876, 828] : List Wire).toFinset⊆s6Step14EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_sigmaReleaseOwned : ([828] : List Wire).toFinset⊆s6Step14EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_sigmaRelease : s6Step14EarlyControlHistoryArena.release {828} (fun _ => false)=some s6Step14EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step14EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step14EarlyControlSigmaArena,s6Step14EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step14EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step14EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EarlyControl_branch : compileHmrBranchRetirement s6Step14EarlyControlSigmaArena 862=some s6Step14EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step14EarlyControl_branchOwned
  · ext q
    simp [s6Step14EarlyControlOutputArena,s6Step14EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step14EarlyControl_sigma : compileHmrSigmaDropLog s6Step14EarlyControlHistoryArena false 0 0 876 828 []=some s6Step14EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step14EarlyControl_sigmaOwned⟩
  · exact s6Step14EarlyControl_sigmaRelease
theorem s6Step14EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step14EarlyControlLog.zeroWork).map Prod.snd=some (s6Step14EarlyControlLog.zeroWork,s6Step14EarlyControlZeroPlan) := by
  rw [s6Step14EarlyControl_zero]
  rfl
theorem s6Step14EarlyControl_classProjection : (compileHmrSourceClassLog s6Step14EarlyControlZeroArena false 769 s6Step14EarlyControlZeroPlan.top 0 828 s6Step14EarlyControlLog.positiveWork s6Step14EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step14EarlyControlClassPlan.positiveWork,s6Step14EarlyControlClassPlan.equalityWork,s6Step14EarlyControlClassPlan.equality) := by
  rw [s6Step14EarlyControl_class]
  rfl
theorem s6Step14EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step14EarlyControlClassPlan.equalityArena s6Step14EarlyControlClassPlan.equality.top 793 802 779 s6Step14EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step14EarlyControl_flags]
  rfl
theorem s6Step14EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step14EarlyControlFlagArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step14EarlyControl_fit]
  rfl
theorem s6Step14EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step14EarlyControlArena [895, 870, 872, 883] 4 s6Step14EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step14EarlyControl_history]
  rfl
theorem s6Step14EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step14EarlyControlHistoryArena false 0 0 876 828 []).map (fun _ => true)=some true := by
  rw [s6Step14EarlyControl_sigma]
  rfl
theorem s6Step14EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step14EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  rw [s6Step14EarlyControl_branch]
  rfl
private theorem s6Step14EarlyControl_entrySigmaOwned : ([828, 876] : List Wire).toFinset⊆s6Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step14EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883] : List Wire).toFinset⊆s6Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EarlyControl_logged : s6Step14EarlyControlPlan.Logged s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 828 876 793 802 779 862 4 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step14EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step14EarlyControl_entrySigmaOwned
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
private theorem s6Step15EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_zeroBorrow : s6Step15EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step15EarlyControlLog.zeroWork=some s6Step15EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step15EarlyControlZeroArena,s6Step15EarlyControlArena,s6Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step15EarlyControl_zero : compileHmrEqualityLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step15EarlyControlLog.zeroWork=some (s6Step15EarlyControlZeroArena,s6Step15EarlyControlLog.zeroWork,s6Step15EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step15EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step15EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step15EarlyControl_positiveBorrow : s6Step15EarlyControlZeroArena.checkBorrow (1) s6Step15EarlyControlLog.positiveWork=some s6Step15EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step15EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step15EarlyControlPositiveArena,s6Step15EarlyControlZeroArena,s6Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step15EarlyControl_classEqualityOwned : ([822, 888] : List Wire).toFinset⊆s6Step15EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_classEqualityBorrow : s6Step15EarlyControlPositiveArena.checkBorrow (([822, 888] : List Wire).length-1) s6Step15EarlyControlLog.classWork=some s6Step15EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step15EarlyControlPositiveArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step15EarlyControlEqualityArena,s6Step15EarlyControlPositiveArena,s6Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step15EarlyControl_classEquality : compileHmrEqualityLog s6Step15EarlyControlPositiveArena [822, 888] 0 s6Step15EarlyControlLog.classWork=some (s6Step15EarlyControlEqualityArena,s6Step15EarlyControlLog.classWork,s6Step15EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step15EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step15EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step15EarlyControl_classOwned : ([769, 860, 822] : List Wire).toFinset⊆s6Step15EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EarlyControl_class : compileHmrSourceClassLog s6Step15EarlyControlZeroArena false 769 s6Step15EarlyControlZeroPlan.top 0 822 s6Step15EarlyControlLog.positiveWork s6Step15EarlyControlLog.classWork=some s6Step15EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step15EarlyControlClassPlan s6Step15EarlyControlZeroArena false 769 s6Step15EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step15EarlyControl_classOwned
  · exact s6Step15EarlyControl_positiveBorrow
  · exact s6Step15EarlyControl_classEquality
private theorem s6Step15EarlyControl_flagsOwned : ([886, 793, 802, 779] : List Wire).toFinset⊆s6Step15EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_flagsBorrow : s6Step15EarlyControlEqualityArena.checkBorrow (6) s6Step15EarlyControlLog.flagWork=some s6Step15EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step15EarlyControlEqualityArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step15EarlyControlFlagArena,s6Step15EarlyControlEqualityArena,s6Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step15EarlyControl_flags : compileHmrFlagsLog s6Step15EarlyControlClassPlan.equalityArena s6Step15EarlyControlClassPlan.equality.top 793 802 779 s6Step15EarlyControlLog.flagWork=some s6Step15EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step15EarlyControl_flagsOwned⟩
  · exact s6Step15EarlyControl_flagsBorrow
private theorem s6Step15EarlyControl_fitOwned : ([895, 870, 872, 883] : List Wire).toFinset⊆s6Step15EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_fitBorrow : s6Step15EarlyControlFlagArena.checkBorrow ((5-([895, 870, 872, 883] : List Wire).length)) s6Step15EarlyControlLog.recordFresh=some s6Step15EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step15EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step15EarlyControlFittedArena,s6Step15EarlyControlFlagArena,s6Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step15EarlyControl_fit : compileHmrRecordGrowLog s6Step15EarlyControlFlagArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh=some s6Step15EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step15EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step15EarlyControl_fitBorrow
private theorem s6Step15EarlyControl_historyOwned : ([895, 870, 872, 883] : List Wire).toFinset⊆s6Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_historyBorrow : s6Step15EarlyControlArena.checkBorrow ((5-([895, 870, 872, 883] : List Wire).length)) s6Step15EarlyControlLog.recordFresh=some s6Step15EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step15EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step15EarlyControlHistoryArena,s6Step15EarlyControlArena,s6Step15EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step15EarlyControl_history : compileHmrRecordGrowLog s6Step15EarlyControlArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh=some s6Step15EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step15EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step15EarlyControl_historyBorrow
private theorem s6Step15EarlyControl_sigmaOwned : ([876, 822] : List Wire).toFinset⊆s6Step15EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step15EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_sigmaRelease : s6Step15EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step15EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step15EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step15EarlyControlSigmaArena,s6Step15EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step15EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step15EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EarlyControl_branch : compileHmrBranchRetirement s6Step15EarlyControlSigmaArena 807=some s6Step15EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step15EarlyControl_branchOwned
  · ext q
    simp [s6Step15EarlyControlOutputArena,s6Step15EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step15EarlyControl_sigma : compileHmrSigmaDropLog s6Step15EarlyControlHistoryArena false 0 0 876 822 []=some s6Step15EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step15EarlyControl_sigmaOwned⟩
  · exact s6Step15EarlyControl_sigmaRelease
theorem s6Step15EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step15EarlyControlLog.zeroWork).map Prod.snd=some (s6Step15EarlyControlLog.zeroWork,s6Step15EarlyControlZeroPlan) := by
  rw [s6Step15EarlyControl_zero]
  rfl
theorem s6Step15EarlyControl_classProjection : (compileHmrSourceClassLog s6Step15EarlyControlZeroArena false 769 s6Step15EarlyControlZeroPlan.top 0 822 s6Step15EarlyControlLog.positiveWork s6Step15EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step15EarlyControlClassPlan.positiveWork,s6Step15EarlyControlClassPlan.equalityWork,s6Step15EarlyControlClassPlan.equality) := by
  rw [s6Step15EarlyControl_class]
  rfl
theorem s6Step15EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step15EarlyControlClassPlan.equalityArena s6Step15EarlyControlClassPlan.equality.top 793 802 779 s6Step15EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step15EarlyControl_flags]
  rfl
theorem s6Step15EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step15EarlyControlFlagArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step15EarlyControl_fit]
  rfl
theorem s6Step15EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step15EarlyControlArena [895, 870, 872, 883] 5 s6Step15EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step15EarlyControl_history]
  rfl
theorem s6Step15EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step15EarlyControlHistoryArena false 0 0 876 822 []).map (fun _ => true)=some true := by
  rw [s6Step15EarlyControl_sigma]
  rfl
theorem s6Step15EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step15EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s6Step15EarlyControl_branch]
  rfl
private theorem s6Step15EarlyControl_entrySigmaOwned : ([822, 876] : List Wire).toFinset⊆s6Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step15EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883] : List Wire).toFinset⊆s6Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EarlyControl_logged : s6Step15EarlyControlPlan.Logged s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 822 876 793 802 779 807 5 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step15EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step15EarlyControl_entrySigmaOwned
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
