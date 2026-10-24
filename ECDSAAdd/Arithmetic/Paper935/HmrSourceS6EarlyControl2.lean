import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl1
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl2Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s6Step16EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (854 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (854 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step16EarlyControlLog : HmrEarlyControlLog := ⟨[887, 888, 860, 807, 862],[778],[838],[814, 821, 869, 843, 854, 830],[]⟩
def s6Step16EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,888⟩,⟨⟨771,false⟩,860⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,862⟩]⟩
def s6Step16EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step16EarlyControlPositiveArena,[778],s6Step16EarlyControlEqualityArena,[838],⟨⟨780,false⟩,[⟨⟨778,false⟩,838⟩]⟩⟩
def s6Step16EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step16EarlyControlZeroArena,s6Step16EarlyControlZeroPlan,s6Step16EarlyControlClassPlan,s6Step16EarlyControlFlagArena,s6Step16EarlyControlFittedArena,s6Step16EarlyControlHistoryArena,s6Step16EarlyControlSigmaArena,s6Step16EarlyControlOutputArena,s6Step16EarlyControlLog⟩
private theorem s6Step16EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_zeroBorrow : s6Step16EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step16EarlyControlLog.zeroWork=some s6Step16EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step16EarlyControlZeroArena,s6Step16EarlyControlArena,s6Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step16EarlyControl_zero : compileHmrEqualityLog s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step16EarlyControlLog.zeroWork=some (s6Step16EarlyControlZeroArena,s6Step16EarlyControlLog.zeroWork,s6Step16EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step16EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step16EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step16EarlyControl_positiveBorrow : s6Step16EarlyControlZeroArena.checkBorrow (1) s6Step16EarlyControlLog.positiveWork=some s6Step16EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step16EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step16EarlyControlPositiveArena,s6Step16EarlyControlZeroArena,s6Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step16EarlyControl_classEqualityOwned : ([780, 778] : List Wire).toFinset⊆s6Step16EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_classEqualityBorrow : s6Step16EarlyControlPositiveArena.checkBorrow (([780, 778] : List Wire).length-1) s6Step16EarlyControlLog.classWork=some s6Step16EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step16EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step16EarlyControlEqualityArena,s6Step16EarlyControlPositiveArena,s6Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step16EarlyControl_classEquality : compileHmrEqualityLog s6Step16EarlyControlPositiveArena [780, 778] 0 s6Step16EarlyControlLog.classWork=some (s6Step16EarlyControlEqualityArena,s6Step16EarlyControlLog.classWork,s6Step16EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step16EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step16EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step16EarlyControl_classOwned : ([769, 862, 780] : List Wire).toFinset⊆s6Step16EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EarlyControl_class : compileHmrSourceClassLog s6Step16EarlyControlZeroArena false 769 s6Step16EarlyControlZeroPlan.top 0 780 s6Step16EarlyControlLog.positiveWork s6Step16EarlyControlLog.classWork=some s6Step16EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step16EarlyControlClassPlan s6Step16EarlyControlZeroArena false 769 s6Step16EarlyControlZeroPlan.top 0 780
  constructor
  · decide +kernel
  · exact s6Step16EarlyControl_classOwned
  · exact s6Step16EarlyControl_positiveBorrow
  · exact s6Step16EarlyControl_classEquality
private theorem s6Step16EarlyControl_flagsOwned : ([838, 793, 802, 779] : List Wire).toFinset⊆s6Step16EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_flagsBorrow : s6Step16EarlyControlEqualityArena.checkBorrow (6) s6Step16EarlyControlLog.flagWork=some s6Step16EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step16EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step16EarlyControlFlagArena,s6Step16EarlyControlEqualityArena,s6Step16EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step16EarlyControl_flags : compileHmrFlagsLog s6Step16EarlyControlClassPlan.equalityArena s6Step16EarlyControlClassPlan.equality.top 793 802 779 s6Step16EarlyControlLog.flagWork=some s6Step16EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step16EarlyControl_flagsOwned⟩
  · exact s6Step16EarlyControl_flagsBorrow
private theorem s6Step16EarlyControl_fitOwned : ([895, 870, 872, 883, 831] : List Wire).toFinset⊆s6Step16EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_fitBorrow : s6Step16EarlyControlFlagArena.checkBorrow ((5-([895, 870, 872, 883, 831] : List Wire).length)) s6Step16EarlyControlLog.recordFresh=some s6Step16EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step16EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step16EarlyControlFittedArena,s6Step16EarlyControlFlagArena,s6Step16EarlyControlLog,arenaWires]
theorem s6Step16EarlyControl_fit : compileHmrRecordGrowLog s6Step16EarlyControlFlagArena [895, 870, 872, 883, 831] 5 s6Step16EarlyControlLog.recordFresh=some s6Step16EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step16EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step16EarlyControl_fitBorrow
private theorem s6Step16EarlyControl_historyOwned : ([895, 870, 872, 883, 831] : List Wire).toFinset⊆s6Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_historyBorrow : s6Step16EarlyControlArena.checkBorrow ((5-([895, 870, 872, 883, 831] : List Wire).length)) s6Step16EarlyControlLog.recordFresh=some s6Step16EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step16EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step16EarlyControlHistoryArena,s6Step16EarlyControlArena,s6Step16EarlyControlLog,arenaWires]
theorem s6Step16EarlyControl_history : compileHmrRecordGrowLog s6Step16EarlyControlArena [895, 870, 872, 883, 831] 5 s6Step16EarlyControlLog.recordFresh=some s6Step16EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step16EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step16EarlyControl_historyBorrow
private theorem s6Step16EarlyControl_sigmaOwned : ([876, 780] : List Wire).toFinset⊆s6Step16EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_sigmaReleaseOwned : ([780] : List Wire).toFinset⊆s6Step16EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_sigmaRelease : s6Step16EarlyControlHistoryArena.release {780} (fun _ => false)=some s6Step16EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step16EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step16EarlyControlSigmaArena,s6Step16EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step16EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step16EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EarlyControl_branch : compileHmrBranchRetirement s6Step16EarlyControlSigmaArena 813=some s6Step16EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step16EarlyControl_branchOwned
  · ext q
    simp [s6Step16EarlyControlOutputArena,s6Step16EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step16EarlyControl_sigma : compileHmrSigmaDropLog s6Step16EarlyControlHistoryArena false 0 0 876 780 []=some s6Step16EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step16EarlyControl_sigmaOwned⟩
  · exact s6Step16EarlyControl_sigmaRelease
theorem s6Step16EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step16EarlyControlLog.zeroWork).map Prod.snd=some (s6Step16EarlyControlLog.zeroWork,s6Step16EarlyControlZeroPlan) := by
  rw [s6Step16EarlyControl_zero]
  rfl
theorem s6Step16EarlyControl_classProjection : (compileHmrSourceClassLog s6Step16EarlyControlZeroArena false 769 s6Step16EarlyControlZeroPlan.top 0 780 s6Step16EarlyControlLog.positiveWork s6Step16EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step16EarlyControlClassPlan.positiveWork,s6Step16EarlyControlClassPlan.equalityWork,s6Step16EarlyControlClassPlan.equality) := by
  rw [s6Step16EarlyControl_class]
  rfl
theorem s6Step16EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step16EarlyControlClassPlan.equalityArena s6Step16EarlyControlClassPlan.equality.top 793 802 779 s6Step16EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step16EarlyControl_flags]
  rfl
theorem s6Step16EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step16EarlyControlFlagArena [895, 870, 872, 883, 831] 5 s6Step16EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step16EarlyControl_fit]
  rfl
theorem s6Step16EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step16EarlyControlArena [895, 870, 872, 883, 831] 5 s6Step16EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step16EarlyControl_history]
  rfl
theorem s6Step16EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step16EarlyControlHistoryArena false 0 0 876 780 []).map (fun _ => true)=some true := by
  rw [s6Step16EarlyControl_sigma]
  rfl
theorem s6Step16EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step16EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6Step16EarlyControl_branch]
  rfl
private theorem s6Step16EarlyControl_entrySigmaOwned : ([780, 876] : List Wire).toFinset⊆s6Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step16EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831] : List Wire).toFinset⊆s6Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16EarlyControl_logged : s6Step16EarlyControlPlan.Logged s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 780 876 793 802 779 813 5 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step16EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step16EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step16EarlyControl_zero
  · exact s6Step16EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step16EarlyControl_flags
  · exact s6Step16EarlyControl_fit
  · exact s6Step16EarlyControl_history
  · exact s6Step16EarlyControl_sigma
  · exact s6Step16EarlyControl_branch
theorem s6Step16EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 780 876 793 802 779 813 5 s6Step16EarlyControlLog=some s6Step16EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step16EarlyControlPlan s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 780 876 793 802 779 813 5 s6Step16EarlyControl_logged
theorem s6Step16EarlyControl_checked : (compileHmrEarlyControlLog s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 780 876 793 802 779 813 5 s6Step16EarlyControlLog).map (fun P => P.outputArena.live.card)=some 816 := by
  rw [s6Step16EarlyControl_plan_checked]
  decide +kernel

def s6Step17EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step17EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step17EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 861) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 861) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (822 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step17EarlyControlLog : HmrEarlyControlLog := ⟨[887, 778, 862, 813, 807],[814],[821],[869, 843, 854, 830, 898, 848],[852]⟩
def s6Step17EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,778⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step17EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step17EarlyControlPositiveArena,[814],s6Step17EarlyControlEqualityArena,[821],⟨⟨888,false⟩,[⟨⟨814,false⟩,821⟩]⟩⟩
def s6Step17EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step17EarlyControlZeroArena,s6Step17EarlyControlZeroPlan,s6Step17EarlyControlClassPlan,s6Step17EarlyControlFlagArena,s6Step17EarlyControlFittedArena,s6Step17EarlyControlHistoryArena,s6Step17EarlyControlSigmaArena,s6Step17EarlyControlOutputArena,s6Step17EarlyControlLog⟩
private theorem s6Step17EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_zeroBorrow : s6Step17EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step17EarlyControlLog.zeroWork=some s6Step17EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step17EarlyControlZeroArena,s6Step17EarlyControlArena,s6Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step17EarlyControl_zero : compileHmrEqualityLog s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step17EarlyControlLog.zeroWork=some (s6Step17EarlyControlZeroArena,s6Step17EarlyControlLog.zeroWork,s6Step17EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step17EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step17EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step17EarlyControl_positiveBorrow : s6Step17EarlyControlZeroArena.checkBorrow (1) s6Step17EarlyControlLog.positiveWork=some s6Step17EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step17EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step17EarlyControlPositiveArena,s6Step17EarlyControlZeroArena,s6Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step17EarlyControl_classEqualityOwned : ([888, 814] : List Wire).toFinset⊆s6Step17EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_classEqualityBorrow : s6Step17EarlyControlPositiveArena.checkBorrow (([888, 814] : List Wire).length-1) s6Step17EarlyControlLog.classWork=some s6Step17EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step17EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step17EarlyControlEqualityArena,s6Step17EarlyControlPositiveArena,s6Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step17EarlyControl_classEquality : compileHmrEqualityLog s6Step17EarlyControlPositiveArena [888, 814] 0 s6Step17EarlyControlLog.classWork=some (s6Step17EarlyControlEqualityArena,s6Step17EarlyControlLog.classWork,s6Step17EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step17EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step17EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step17EarlyControl_classOwned : ([769, 807, 888] : List Wire).toFinset⊆s6Step17EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EarlyControl_class : compileHmrSourceClassLog s6Step17EarlyControlZeroArena false 769 s6Step17EarlyControlZeroPlan.top 0 888 s6Step17EarlyControlLog.positiveWork s6Step17EarlyControlLog.classWork=some s6Step17EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step17EarlyControlClassPlan s6Step17EarlyControlZeroArena false 769 s6Step17EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step17EarlyControl_classOwned
  · exact s6Step17EarlyControl_positiveBorrow
  · exact s6Step17EarlyControl_classEquality
private theorem s6Step17EarlyControl_flagsOwned : ([821, 793, 802, 779] : List Wire).toFinset⊆s6Step17EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_flagsBorrow : s6Step17EarlyControlEqualityArena.checkBorrow (6) s6Step17EarlyControlLog.flagWork=some s6Step17EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step17EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step17EarlyControlEqualityArena s6Step17EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step17EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step17EarlyControl_flags : compileHmrFlagsLog s6Step17EarlyControlClassPlan.equalityArena s6Step17EarlyControlClassPlan.equality.top 793 802 779 s6Step17EarlyControlLog.flagWork=some s6Step17EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step17EarlyControl_flagsOwned⟩
  · exact s6Step17EarlyControl_flagsBorrow
private theorem s6Step17EarlyControl_fitOwned : ([895, 870, 872, 883, 831] : List Wire).toFinset⊆s6Step17EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step17EarlyControl_fitBorrow : s6Step17EarlyControlFlagArena.checkBorrow ((6-([895, 870, 872, 883, 831] : List Wire).length)) s6Step17EarlyControlLog.recordFresh=some s6Step17EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step17EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step17EarlyControlFlagArena s6Step17EarlyControlFittedArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step17EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step17EarlyControl_fit : compileHmrRecordGrowLog s6Step17EarlyControlFlagArena [895, 870, 872, 883, 831] 6 s6Step17EarlyControlLog.recordFresh=some s6Step17EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step17EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step17EarlyControl_fitBorrow
private theorem s6Step17EarlyControl_historyOwned : ([895, 870, 872, 883, 831] : List Wire).toFinset⊆s6Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_historyBorrow : s6Step17EarlyControlArena.checkBorrow ((6-([895, 870, 872, 883, 831] : List Wire).length)) s6Step17EarlyControlLog.recordFresh=some s6Step17EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step17EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step17EarlyControlHistoryArena,s6Step17EarlyControlArena,s6Step17EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step17EarlyControl_history : compileHmrRecordGrowLog s6Step17EarlyControlArena [895, 870, 872, 883, 831] 6 s6Step17EarlyControlLog.recordFresh=some s6Step17EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step17EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step17EarlyControl_historyBorrow
private theorem s6Step17EarlyControl_sigmaOwned : ([876, 888] : List Wire).toFinset⊆s6Step17EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step17EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_sigmaRelease : s6Step17EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step17EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step17EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step17EarlyControlSigmaArena,s6Step17EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step17EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step17EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EarlyControl_branch : compileHmrBranchRetirement s6Step17EarlyControlSigmaArena 860=some s6Step17EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step17EarlyControl_branchOwned
  · ext q
    simp [s6Step17EarlyControlOutputArena,s6Step17EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step17EarlyControl_sigma : compileHmrSigmaDropLog s6Step17EarlyControlHistoryArena false 0 0 876 888 []=some s6Step17EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step17EarlyControl_sigmaOwned⟩
  · exact s6Step17EarlyControl_sigmaRelease
theorem s6Step17EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step17EarlyControlLog.zeroWork).map Prod.snd=some (s6Step17EarlyControlLog.zeroWork,s6Step17EarlyControlZeroPlan) := by
  rw [s6Step17EarlyControl_zero]
  rfl
theorem s6Step17EarlyControl_classProjection : (compileHmrSourceClassLog s6Step17EarlyControlZeroArena false 769 s6Step17EarlyControlZeroPlan.top 0 888 s6Step17EarlyControlLog.positiveWork s6Step17EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step17EarlyControlClassPlan.positiveWork,s6Step17EarlyControlClassPlan.equalityWork,s6Step17EarlyControlClassPlan.equality) := by
  rw [s6Step17EarlyControl_class]
  rfl
theorem s6Step17EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step17EarlyControlClassPlan.equalityArena s6Step17EarlyControlClassPlan.equality.top 793 802 779 s6Step17EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step17EarlyControl_flags]
  rfl
theorem s6Step17EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step17EarlyControlFlagArena [895, 870, 872, 883, 831] 6 s6Step17EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step17EarlyControl_fit]
  rfl
theorem s6Step17EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step17EarlyControlArena [895, 870, 872, 883, 831] 6 s6Step17EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step17EarlyControl_history]
  rfl
theorem s6Step17EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step17EarlyControlHistoryArena false 0 0 876 888 []).map (fun _ => true)=some true := by
  rw [s6Step17EarlyControl_sigma]
  rfl
theorem s6Step17EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step17EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  rw [s6Step17EarlyControl_branch]
  rfl
private theorem s6Step17EarlyControl_entrySigmaOwned : ([888, 876] : List Wire).toFinset⊆s6Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step17EarlyControl_entryRecordOwned : ([860, 895, 870, 872, 883, 831] : List Wire).toFinset⊆s6Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17EarlyControl_logged : s6Step17EarlyControlPlan.Logged s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 888 876 793 802 779 860 6 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step17EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step17EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step17EarlyControl_zero
  · exact s6Step17EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step17EarlyControl_flags
  · exact s6Step17EarlyControl_fit
  · exact s6Step17EarlyControl_history
  · exact s6Step17EarlyControl_sigma
  · exact s6Step17EarlyControl_branch
theorem s6Step17EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 888 876 793 802 779 860 6 s6Step17EarlyControlLog=some s6Step17EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step17EarlyControlPlan s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 888 876 793 802 779 860 6 s6Step17EarlyControl_logged
theorem s6Step17EarlyControl_checked : (compileHmrEarlyControlLog s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 888 876 793 802 779 860 6 s6Step17EarlyControlLog).map (fun P => P.outputArena.live.card)=some 819 := by
  rw [s6Step17EarlyControl_plan_checked]
  decide +kernel

def s6Step18EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step18EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step18EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step18EarlyControlLog : HmrEarlyControlLog := ⟨[887, 814, 807, 860, 813],[869],[843],[854, 830, 898, 848, 841, 839],[]⟩
def s6Step18EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step18EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step18EarlyControlPositiveArena,[869],s6Step18EarlyControlEqualityArena,[843],⟨⟨778,false⟩,[⟨⟨869,false⟩,843⟩]⟩⟩
def s6Step18EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step18EarlyControlZeroArena,s6Step18EarlyControlZeroPlan,s6Step18EarlyControlClassPlan,s6Step18EarlyControlFlagArena,s6Step18EarlyControlFittedArena,s6Step18EarlyControlHistoryArena,s6Step18EarlyControlSigmaArena,s6Step18EarlyControlOutputArena,s6Step18EarlyControlLog⟩
private theorem s6Step18EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_zeroBorrow : s6Step18EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step18EarlyControlLog.zeroWork=some s6Step18EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step18EarlyControlZeroArena,s6Step18EarlyControlArena,s6Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step18EarlyControl_zero : compileHmrEqualityLog s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step18EarlyControlLog.zeroWork=some (s6Step18EarlyControlZeroArena,s6Step18EarlyControlLog.zeroWork,s6Step18EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step18EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step18EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step18EarlyControl_positiveBorrow : s6Step18EarlyControlZeroArena.checkBorrow (1) s6Step18EarlyControlLog.positiveWork=some s6Step18EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step18EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step18EarlyControlPositiveArena,s6Step18EarlyControlZeroArena,s6Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step18EarlyControl_classEqualityOwned : ([778, 869] : List Wire).toFinset⊆s6Step18EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_classEqualityBorrow : s6Step18EarlyControlPositiveArena.checkBorrow (([778, 869] : List Wire).length-1) s6Step18EarlyControlLog.classWork=some s6Step18EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step18EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step18EarlyControlEqualityArena,s6Step18EarlyControlPositiveArena,s6Step18EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step18EarlyControl_classEquality : compileHmrEqualityLog s6Step18EarlyControlPositiveArena [778, 869] 0 s6Step18EarlyControlLog.classWork=some (s6Step18EarlyControlEqualityArena,s6Step18EarlyControlLog.classWork,s6Step18EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step18EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step18EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step18EarlyControl_classOwned : ([769, 813, 778] : List Wire).toFinset⊆s6Step18EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EarlyControl_class : compileHmrSourceClassLog s6Step18EarlyControlZeroArena false 769 s6Step18EarlyControlZeroPlan.top 0 778 s6Step18EarlyControlLog.positiveWork s6Step18EarlyControlLog.classWork=some s6Step18EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step18EarlyControlClassPlan s6Step18EarlyControlZeroArena false 769 s6Step18EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s6Step18EarlyControl_classOwned
  · exact s6Step18EarlyControl_positiveBorrow
  · exact s6Step18EarlyControl_classEquality
private theorem s6Step18EarlyControl_flagsOwned : ([843, 793, 802, 779] : List Wire).toFinset⊆s6Step18EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_flagsBorrow : s6Step18EarlyControlEqualityArena.checkBorrow (6) s6Step18EarlyControlLog.flagWork=some s6Step18EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step18EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step18EarlyControlEqualityArena s6Step18EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step18EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step18EarlyControl_flags : compileHmrFlagsLog s6Step18EarlyControlClassPlan.equalityArena s6Step18EarlyControlClassPlan.equality.top 793 802 779 s6Step18EarlyControlLog.flagWork=some s6Step18EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step18EarlyControl_flagsOwned⟩
  · exact s6Step18EarlyControl_flagsBorrow
private theorem s6Step18EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852] : List Wire).toFinset⊆s6Step18EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step18EarlyControl_fitBorrow : s6Step18EarlyControlFlagArena.checkBorrow ((6-([895, 870, 872, 883, 831, 852] : List Wire).length)) s6Step18EarlyControlLog.recordFresh=some s6Step18EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step18EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step18EarlyControlFlagArena s6Step18EarlyControlFittedArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step18EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step18EarlyControl_fit : compileHmrRecordGrowLog s6Step18EarlyControlFlagArena [895, 870, 872, 883, 831, 852] 6 s6Step18EarlyControlLog.recordFresh=some s6Step18EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step18EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step18EarlyControl_fitBorrow
private theorem s6Step18EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852] : List Wire).toFinset⊆s6Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_historyBorrow : s6Step18EarlyControlArena.checkBorrow ((6-([895, 870, 872, 883, 831, 852] : List Wire).length)) s6Step18EarlyControlLog.recordFresh=some s6Step18EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step18EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step18EarlyControlHistoryArena,s6Step18EarlyControlArena,s6Step18EarlyControlLog,arenaWires]
theorem s6Step18EarlyControl_history : compileHmrRecordGrowLog s6Step18EarlyControlArena [895, 870, 872, 883, 831, 852] 6 s6Step18EarlyControlLog.recordFresh=some s6Step18EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step18EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step18EarlyControl_historyBorrow
private theorem s6Step18EarlyControl_sigmaOwned : ([876, 778] : List Wire).toFinset⊆s6Step18EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s6Step18EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_sigmaRelease : s6Step18EarlyControlHistoryArena.release {778} (fun _ => false)=some s6Step18EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step18EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s6Step18EarlyControlSigmaArena,s6Step18EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega
private theorem s6Step18EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step18EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EarlyControl_branch : compileHmrBranchRetirement s6Step18EarlyControlSigmaArena 862=some s6Step18EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step18EarlyControl_branchOwned
  · ext q
    simp [s6Step18EarlyControlOutputArena,s6Step18EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega
theorem s6Step18EarlyControl_sigma : compileHmrSigmaDropLog s6Step18EarlyControlHistoryArena false 0 0 876 778 []=some s6Step18EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step18EarlyControl_sigmaOwned⟩
  · exact s6Step18EarlyControl_sigmaRelease
theorem s6Step18EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step18EarlyControlLog.zeroWork).map Prod.snd=some (s6Step18EarlyControlLog.zeroWork,s6Step18EarlyControlZeroPlan) := by
  rw [s6Step18EarlyControl_zero]
  rfl
theorem s6Step18EarlyControl_classProjection : (compileHmrSourceClassLog s6Step18EarlyControlZeroArena false 769 s6Step18EarlyControlZeroPlan.top 0 778 s6Step18EarlyControlLog.positiveWork s6Step18EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step18EarlyControlClassPlan.positiveWork,s6Step18EarlyControlClassPlan.equalityWork,s6Step18EarlyControlClassPlan.equality) := by
  rw [s6Step18EarlyControl_class]
  rfl
theorem s6Step18EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step18EarlyControlClassPlan.equalityArena s6Step18EarlyControlClassPlan.equality.top 793 802 779 s6Step18EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step18EarlyControl_flags]
  rfl
theorem s6Step18EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step18EarlyControlFlagArena [895, 870, 872, 883, 831, 852] 6 s6Step18EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step18EarlyControl_fit]
  rfl
theorem s6Step18EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step18EarlyControlArena [895, 870, 872, 883, 831, 852] 6 s6Step18EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step18EarlyControl_history]
  rfl
theorem s6Step18EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step18EarlyControlHistoryArena false 0 0 876 778 []).map (fun _ => true)=some true := by
  rw [s6Step18EarlyControl_sigma]
  rfl
theorem s6Step18EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step18EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  rw [s6Step18EarlyControl_branch]
  rfl
private theorem s6Step18EarlyControl_entrySigmaOwned : ([778, 876] : List Wire).toFinset⊆s6Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step18EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852] : List Wire).toFinset⊆s6Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18EarlyControl_logged : s6Step18EarlyControlPlan.Logged s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 778 876 793 802 779 862 6 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step18EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step18EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step18EarlyControl_zero
  · exact s6Step18EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step18EarlyControl_flags
  · exact s6Step18EarlyControl_fit
  · exact s6Step18EarlyControl_history
  · exact s6Step18EarlyControl_sigma
  · exact s6Step18EarlyControl_branch
theorem s6Step18EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 778 876 793 802 779 862 6 s6Step18EarlyControlLog=some s6Step18EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step18EarlyControlPlan s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 778 876 793 802 779 862 6 s6Step18EarlyControl_logged
theorem s6Step18EarlyControl_checked : (compileHmrEarlyControlLog s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 778 876 793 802 779 862 6 s6Step18EarlyControlLog).map (fun P => P.outputArena.live.card)=some 821 := by
  rw [s6Step18EarlyControl_plan_checked]
  decide +kernel

def s6Step19EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step19EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step19EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (854 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step19EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (854 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step19EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step19EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step19EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step19EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step19EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (831 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 869) ∨ (870 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (911 ≤ q ∧ q < 912) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step19EarlyControlLog : HmrEarlyControlLog := ⟨[887, 869, 813, 862, 860],[854],[830],[898, 848, 841, 839, 794, 850],[911]⟩
def s6Step19EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,869⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,860⟩]⟩
def s6Step19EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step19EarlyControlPositiveArena,[854],s6Step19EarlyControlEqualityArena,[830],⟨⟨814,false⟩,[⟨⟨854,false⟩,830⟩]⟩⟩
def s6Step19EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step19EarlyControlZeroArena,s6Step19EarlyControlZeroPlan,s6Step19EarlyControlClassPlan,s6Step19EarlyControlFlagArena,s6Step19EarlyControlFittedArena,s6Step19EarlyControlHistoryArena,s6Step19EarlyControlSigmaArena,s6Step19EarlyControlOutputArena,s6Step19EarlyControlLog⟩
private theorem s6Step19EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step19EarlyControl_zeroBorrow : s6Step19EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step19EarlyControlLog.zeroWork=some s6Step19EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step19EarlyControlArena s6Step19EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) s6Step19EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step19EarlyControl_zero : compileHmrEqualityLog s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step19EarlyControlLog.zeroWork=some (s6Step19EarlyControlZeroArena,s6Step19EarlyControlLog.zeroWork,s6Step19EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step19EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step19EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step19EarlyControl_positiveBorrow : s6Step19EarlyControlZeroArena.checkBorrow (1) s6Step19EarlyControlLog.positiveWork=some s6Step19EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step19EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step19EarlyControlPositiveArena,s6Step19EarlyControlZeroArena,s6Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step19EarlyControl_classEqualityOwned : ([814, 854] : List Wire).toFinset⊆s6Step19EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step19EarlyControl_classEqualityBorrow : s6Step19EarlyControlPositiveArena.checkBorrow (([814, 854] : List Wire).length-1) s6Step19EarlyControlLog.classWork=some s6Step19EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step19EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step19EarlyControlEqualityArena,s6Step19EarlyControlPositiveArena,s6Step19EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
private theorem s6Step19EarlyControl_classEquality : compileHmrEqualityLog s6Step19EarlyControlPositiveArena [814, 854] 0 s6Step19EarlyControlLog.classWork=some (s6Step19EarlyControlEqualityArena,s6Step19EarlyControlLog.classWork,s6Step19EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step19EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step19EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step19EarlyControl_classOwned : ([769, 860, 814] : List Wire).toFinset⊆s6Step19EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19EarlyControl_class : compileHmrSourceClassLog s6Step19EarlyControlZeroArena false 769 s6Step19EarlyControlZeroPlan.top 0 814 s6Step19EarlyControlLog.positiveWork s6Step19EarlyControlLog.classWork=some s6Step19EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step19EarlyControlClassPlan s6Step19EarlyControlZeroArena false 769 s6Step19EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s6Step19EarlyControl_classOwned
  · exact s6Step19EarlyControl_positiveBorrow
  · exact s6Step19EarlyControl_classEquality
private theorem s6Step19EarlyControl_flagsOwned : ([830, 793, 802, 779] : List Wire).toFinset⊆s6Step19EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step19EarlyControl_flagsBorrow : s6Step19EarlyControlEqualityArena.checkBorrow (6) s6Step19EarlyControlLog.flagWork=some s6Step19EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step19EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step19EarlyControlEqualityArena s6Step19EarlyControlFlagArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step19EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step19EarlyControl_flags : compileHmrFlagsLog s6Step19EarlyControlClassPlan.equalityArena s6Step19EarlyControlClassPlan.equality.top 793 802 779 s6Step19EarlyControlLog.flagWork=some s6Step19EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step19EarlyControl_flagsOwned⟩
  · exact s6Step19EarlyControl_flagsBorrow
private theorem s6Step19EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852] : List Wire).toFinset⊆s6Step19EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step19EarlyControl_fitBorrow : s6Step19EarlyControlFlagArena.checkBorrow ((7-([895, 870, 872, 883, 831, 852] : List Wire).length)) s6Step19EarlyControlLog.recordFresh=some s6Step19EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step19EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step19EarlyControlFlagArena s6Step19EarlyControlFittedArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step19EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step19EarlyControl_fit : compileHmrRecordGrowLog s6Step19EarlyControlFlagArena [895, 870, 872, 883, 831, 852] 7 s6Step19EarlyControlLog.recordFresh=some s6Step19EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step19EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step19EarlyControl_fitBorrow
private theorem s6Step19EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852] : List Wire).toFinset⊆s6Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step19EarlyControl_historyBorrow : s6Step19EarlyControlArena.checkBorrow ((7-([895, 870, 872, 883, 831, 852] : List Wire).length)) s6Step19EarlyControlLog.recordFresh=some s6Step19EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step19EarlyControlArena s6Step19EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step19EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step19EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step19EarlyControl_history : compileHmrRecordGrowLog s6Step19EarlyControlArena [895, 870, 872, 883, 831, 852] 7 s6Step19EarlyControlLog.recordFresh=some s6Step19EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step19EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step19EarlyControl_historyBorrow
private theorem s6Step19EarlyControl_sigmaOwned : ([876, 814] : List Wire).toFinset⊆s6Step19EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step19EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s6Step19EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step19EarlyControl_sigmaRelease : s6Step19EarlyControlHistoryArena.release {814} (fun _ => false)=some s6Step19EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step19EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step19EarlyControlHistoryArena s6Step19EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [814] rfl rfl
    decide +kernel
private theorem s6Step19EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step19EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step19EarlyControl_branch : compileHmrBranchRetirement s6Step19EarlyControlSigmaArena 807=some s6Step19EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step19EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step19EarlyControlSigmaArena s6Step19EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) [807] rfl rfl
    decide +kernel
theorem s6Step19EarlyControl_sigma : compileHmrSigmaDropLog s6Step19EarlyControlHistoryArena false 0 0 876 814 []=some s6Step19EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step19EarlyControl_sigmaOwned⟩
  · exact s6Step19EarlyControl_sigmaRelease
theorem s6Step19EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step19EarlyControlLog.zeroWork).map Prod.snd=some (s6Step19EarlyControlLog.zeroWork,s6Step19EarlyControlZeroPlan) := by
  rw [s6Step19EarlyControl_zero]
  rfl
theorem s6Step19EarlyControl_classProjection : (compileHmrSourceClassLog s6Step19EarlyControlZeroArena false 769 s6Step19EarlyControlZeroPlan.top 0 814 s6Step19EarlyControlLog.positiveWork s6Step19EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step19EarlyControlClassPlan.positiveWork,s6Step19EarlyControlClassPlan.equalityWork,s6Step19EarlyControlClassPlan.equality) := by
  rw [s6Step19EarlyControl_class]
  rfl
theorem s6Step19EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step19EarlyControlClassPlan.equalityArena s6Step19EarlyControlClassPlan.equality.top 793 802 779 s6Step19EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step19EarlyControl_flags]
  rfl
theorem s6Step19EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step19EarlyControlFlagArena [895, 870, 872, 883, 831, 852] 7 s6Step19EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step19EarlyControl_fit]
  rfl
theorem s6Step19EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step19EarlyControlArena [895, 870, 872, 883, 831, 852] 7 s6Step19EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step19EarlyControl_history]
  rfl
theorem s6Step19EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step19EarlyControlHistoryArena false 0 0 876 814 []).map (fun _ => true)=some true := by
  rw [s6Step19EarlyControl_sigma]
  rfl
theorem s6Step19EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step19EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s6Step19EarlyControl_branch]
  rfl
private theorem s6Step19EarlyControl_entrySigmaOwned : ([814, 876] : List Wire).toFinset⊆s6Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step19EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852] : List Wire).toFinset⊆s6Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step19EarlyControl_logged : s6Step19EarlyControlPlan.Logged s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 814 876 793 802 779 807 7 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step19EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step19EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step19EarlyControl_zero
  · exact s6Step19EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step19EarlyControl_flags
  · exact s6Step19EarlyControl_fit
  · exact s6Step19EarlyControl_history
  · exact s6Step19EarlyControl_sigma
  · exact s6Step19EarlyControl_branch
theorem s6Step19EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 814 876 793 802 779 807 7 s6Step19EarlyControlLog=some s6Step19EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step19EarlyControlPlan s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 814 876 793 802 779 807 7 s6Step19EarlyControl_logged
theorem s6Step19EarlyControl_checked : (compileHmrEarlyControlLog s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 814 876 793 802 779 807 7 s6Step19EarlyControlLog).map (fun P => P.outputArena.live.card)=some 824 := by
  rw [s6Step19EarlyControl_plan_checked]
  decide +kernel

def s6Step20EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (911 ≤ q ∧ q < 912) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step20EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 781) ∨ (789 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 797) ∨ (802 ≤ q ∧ q < 803) ∨ (805 ≤ q ∧ q < 806) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (828 ≤ q ∧ q < 829) ∨ (830 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (838 ≤ q ∧ q < 839) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (852 ≤ q ∧ q < 853) ∨ (856 ≤ q ∧ q < 860) ∨ (863 ≤ q ∧ q < 866) ∨ (868 ≤ q ∧ q < 871) ∨ (872 ≤ q ∧ q < 877) ∨ (880 ≤ q ∧ q < 881) ∨ (882 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 887) ∨ (888 ≤ q ∧ q < 889) ∨ (890 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 909) ∨ (911 ≤ q ∧ q < 912) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step20EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step20EarlyControlLog : HmrEarlyControlLog := ⟨[887, 854, 860, 807, 862],[898],[848],[841, 839, 794, 850, 881, 853],[]⟩
def s6Step20EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,854⟩,⟨⟨771,false⟩,860⟩,⟨⟨770,false⟩,807⟩,⟨⟨769,false⟩,862⟩]⟩
def s6Step20EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step20EarlyControlPositiveArena,[898],s6Step20EarlyControlEqualityArena,[848],⟨⟨869,false⟩,[⟨⟨898,false⟩,848⟩]⟩⟩
def s6Step20EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step20EarlyControlZeroArena,s6Step20EarlyControlZeroPlan,s6Step20EarlyControlClassPlan,s6Step20EarlyControlFlagArena,s6Step20EarlyControlFittedArena,s6Step20EarlyControlHistoryArena,s6Step20EarlyControlSigmaArena,s6Step20EarlyControlOutputArena,s6Step20EarlyControlLog⟩
private theorem s6Step20EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step20EarlyControl_zeroBorrow : s6Step20EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step20EarlyControlLog.zeroWork=some s6Step20EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step20EarlyControlArena s6Step20EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step20EarlyControl_zero : compileHmrEqualityLog s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step20EarlyControlLog.zeroWork=some (s6Step20EarlyControlZeroArena,s6Step20EarlyControlLog.zeroWork,s6Step20EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step20EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step20EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step20EarlyControl_positiveBorrow : s6Step20EarlyControlZeroArena.checkBorrow (1) s6Step20EarlyControlLog.positiveWork=some s6Step20EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step20EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step20EarlyControlZeroArena s6Step20EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step20EarlyControl_classEqualityOwned : ([869, 898] : List Wire).toFinset⊆s6Step20EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step20EarlyControl_classEqualityBorrow : s6Step20EarlyControlPositiveArena.checkBorrow (([869, 898] : List Wire).length-1) s6Step20EarlyControlLog.classWork=some s6Step20EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step20EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step20EarlyControlPositiveArena s6Step20EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step20EarlyControl_classEquality : compileHmrEqualityLog s6Step20EarlyControlPositiveArena [869, 898] 0 s6Step20EarlyControlLog.classWork=some (s6Step20EarlyControlEqualityArena,s6Step20EarlyControlLog.classWork,s6Step20EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step20EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step20EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step20EarlyControl_classOwned : ([769, 862, 869] : List Wire).toFinset⊆s6Step20EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20EarlyControl_class : compileHmrSourceClassLog s6Step20EarlyControlZeroArena false 769 s6Step20EarlyControlZeroPlan.top 0 869 s6Step20EarlyControlLog.positiveWork s6Step20EarlyControlLog.classWork=some s6Step20EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step20EarlyControlClassPlan s6Step20EarlyControlZeroArena false 769 s6Step20EarlyControlZeroPlan.top 0 869
  constructor
  · decide +kernel
  · exact s6Step20EarlyControl_classOwned
  · exact s6Step20EarlyControl_positiveBorrow
  · exact s6Step20EarlyControl_classEquality
private theorem s6Step20EarlyControl_flagsOwned : ([848, 793, 802, 779] : List Wire).toFinset⊆s6Step20EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step20EarlyControl_flagsBorrow : s6Step20EarlyControlEqualityArena.checkBorrow (6) s6Step20EarlyControlLog.flagWork=some s6Step20EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step20EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step20EarlyControlEqualityArena s6Step20EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step20EarlyControl_flags : compileHmrFlagsLog s6Step20EarlyControlClassPlan.equalityArena s6Step20EarlyControlClassPlan.equality.top 793 802 779 s6Step20EarlyControlLog.flagWork=some s6Step20EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step20EarlyControl_flagsOwned⟩
  · exact s6Step20EarlyControl_flagsBorrow
private theorem s6Step20EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911] : List Wire).toFinset⊆s6Step20EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step20EarlyControl_fitBorrow : s6Step20EarlyControlFlagArena.checkBorrow ((7-([895, 870, 872, 883, 831, 852, 911] : List Wire).length)) s6Step20EarlyControlLog.recordFresh=some s6Step20EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step20EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step20EarlyControlFlagArena s6Step20EarlyControlFittedArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step20EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step20EarlyControl_fit : compileHmrRecordGrowLog s6Step20EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911] 7 s6Step20EarlyControlLog.recordFresh=some s6Step20EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step20EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step20EarlyControl_fitBorrow
private theorem s6Step20EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911] : List Wire).toFinset⊆s6Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step20EarlyControl_historyBorrow : s6Step20EarlyControlArena.checkBorrow ((7-([895, 870, 872, 883, 831, 852, 911] : List Wire).length)) s6Step20EarlyControlLog.recordFresh=some s6Step20EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step20EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step20EarlyControlHistoryArena,s6Step20EarlyControlArena,s6Step20EarlyControlLog,arenaWires]
theorem s6Step20EarlyControl_history : compileHmrRecordGrowLog s6Step20EarlyControlArena [895, 870, 872, 883, 831, 852, 911] 7 s6Step20EarlyControlLog.recordFresh=some s6Step20EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step20EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step20EarlyControl_historyBorrow
private theorem s6Step20EarlyControl_sigmaOwned : ([876, 869] : List Wire).toFinset⊆s6Step20EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step20EarlyControl_sigmaReleaseOwned : ([869] : List Wire).toFinset⊆s6Step20EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step20EarlyControl_sigmaRelease : s6Step20EarlyControlHistoryArena.release {869} (fun _ => false)=some s6Step20EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step20EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step20EarlyControlHistoryArena s6Step20EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [869] rfl rfl
    decide +kernel
private theorem s6Step20EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step20EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20EarlyControl_branch : compileHmrBranchRetirement s6Step20EarlyControlSigmaArena 813=some s6Step20EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step20EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step20EarlyControlSigmaArena s6Step20EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel
theorem s6Step20EarlyControl_sigma : compileHmrSigmaDropLog s6Step20EarlyControlHistoryArena false 0 0 876 869 []=some s6Step20EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step20EarlyControl_sigmaOwned⟩
  · exact s6Step20EarlyControl_sigmaRelease
theorem s6Step20EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step20EarlyControlLog.zeroWork).map Prod.snd=some (s6Step20EarlyControlLog.zeroWork,s6Step20EarlyControlZeroPlan) := by
  rw [s6Step20EarlyControl_zero]
  rfl
theorem s6Step20EarlyControl_classProjection : (compileHmrSourceClassLog s6Step20EarlyControlZeroArena false 769 s6Step20EarlyControlZeroPlan.top 0 869 s6Step20EarlyControlLog.positiveWork s6Step20EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step20EarlyControlClassPlan.positiveWork,s6Step20EarlyControlClassPlan.equalityWork,s6Step20EarlyControlClassPlan.equality) := by
  rw [s6Step20EarlyControl_class]
  rfl
theorem s6Step20EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step20EarlyControlClassPlan.equalityArena s6Step20EarlyControlClassPlan.equality.top 793 802 779 s6Step20EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step20EarlyControl_flags]
  rfl
theorem s6Step20EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step20EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911] 7 s6Step20EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step20EarlyControl_fit]
  rfl
theorem s6Step20EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step20EarlyControlArena [895, 870, 872, 883, 831, 852, 911] 7 s6Step20EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step20EarlyControl_history]
  rfl
theorem s6Step20EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step20EarlyControlHistoryArena false 0 0 876 869 []).map (fun _ => true)=some true := by
  rw [s6Step20EarlyControl_sigma]
  rfl
theorem s6Step20EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step20EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6Step20EarlyControl_branch]
  rfl
private theorem s6Step20EarlyControl_entrySigmaOwned : ([869, 876] : List Wire).toFinset⊆s6Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step20EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911] : List Wire).toFinset⊆s6Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step20EarlyControl_logged : s6Step20EarlyControlPlan.Logged s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 869 876 793 802 779 813 7 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step20EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step20EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step20EarlyControl_zero
  · exact s6Step20EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step20EarlyControl_flags
  · exact s6Step20EarlyControl_fit
  · exact s6Step20EarlyControl_history
  · exact s6Step20EarlyControl_sigma
  · exact s6Step20EarlyControl_branch
theorem s6Step20EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 869 876 793 802 779 813 7 s6Step20EarlyControlLog=some s6Step20EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step20EarlyControlPlan s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 869 876 793 802 779 813 7 s6Step20EarlyControl_logged
theorem s6Step20EarlyControl_checked : (compileHmrEarlyControlLog s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 869 876 793 802 779 813 7 s6Step20EarlyControlLog).map (fun P => P.outputArena.live.card)=some 826 := by
  rw [s6Step20EarlyControl_plan_checked]
  decide +kernel

def s6Step21EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step21EarlyControlLog : HmrEarlyControlLog := ⟨[887, 898, 862, 813, 807],[841],[839],[794, 850, 881, 853, 867, 786],[910]⟩
def s6Step21EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,898⟩,⟨⟨771,false⟩,862⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step21EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step21EarlyControlPositiveArena,[841],s6Step21EarlyControlEqualityArena,[839],⟨⟨854,false⟩,[⟨⟨841,false⟩,839⟩]⟩⟩
def s6Step21EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step21EarlyControlZeroArena,s6Step21EarlyControlZeroPlan,s6Step21EarlyControlClassPlan,s6Step21EarlyControlFlagArena,s6Step21EarlyControlFittedArena,s6Step21EarlyControlHistoryArena,s6Step21EarlyControlSigmaArena,s6Step21EarlyControlOutputArena,s6Step21EarlyControlLog⟩
private theorem s6Step21EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_zeroBorrow : s6Step21EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step21EarlyControlLog.zeroWork=some s6Step21EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step21EarlyControlArena s6Step21EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step21EarlyControl_zero : compileHmrEqualityLog s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step21EarlyControlLog.zeroWork=some (s6Step21EarlyControlZeroArena,s6Step21EarlyControlLog.zeroWork,s6Step21EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step21EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step21EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step21EarlyControl_positiveBorrow : s6Step21EarlyControlZeroArena.checkBorrow (1) s6Step21EarlyControlLog.positiveWork=some s6Step21EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step21EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step21EarlyControlZeroArena s6Step21EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step21EarlyControl_classEqualityOwned : ([854, 841] : List Wire).toFinset⊆s6Step21EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_classEqualityBorrow : s6Step21EarlyControlPositiveArena.checkBorrow (([854, 841] : List Wire).length-1) s6Step21EarlyControlLog.classWork=some s6Step21EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step21EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step21EarlyControlPositiveArena s6Step21EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step21EarlyControl_classEquality : compileHmrEqualityLog s6Step21EarlyControlPositiveArena [854, 841] 0 s6Step21EarlyControlLog.classWork=some (s6Step21EarlyControlEqualityArena,s6Step21EarlyControlLog.classWork,s6Step21EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step21EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step21EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step21EarlyControl_classOwned : ([769, 807, 854] : List Wire).toFinset⊆s6Step21EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EarlyControl_class : compileHmrSourceClassLog s6Step21EarlyControlZeroArena false 769 s6Step21EarlyControlZeroPlan.top 0 854 s6Step21EarlyControlLog.positiveWork s6Step21EarlyControlLog.classWork=some s6Step21EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step21EarlyControlClassPlan s6Step21EarlyControlZeroArena false 769 s6Step21EarlyControlZeroPlan.top 0 854
  constructor
  · decide +kernel
  · exact s6Step21EarlyControl_classOwned
  · exact s6Step21EarlyControl_positiveBorrow
  · exact s6Step21EarlyControl_classEquality
private theorem s6Step21EarlyControl_flagsOwned : ([839, 793, 802, 779] : List Wire).toFinset⊆s6Step21EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_flagsBorrow : s6Step21EarlyControlEqualityArena.checkBorrow (6) s6Step21EarlyControlLog.flagWork=some s6Step21EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step21EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step21EarlyControlEqualityArena s6Step21EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step21EarlyControl_flags : compileHmrFlagsLog s6Step21EarlyControlClassPlan.equalityArena s6Step21EarlyControlClassPlan.equality.top 793 802 779 s6Step21EarlyControlLog.flagWork=some s6Step21EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step21EarlyControl_flagsOwned⟩
  · exact s6Step21EarlyControl_flagsBorrow
private theorem s6Step21EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911] : List Wire).toFinset⊆s6Step21EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_fitBorrow : s6Step21EarlyControlFlagArena.checkBorrow ((8-([895, 870, 872, 883, 831, 852, 911] : List Wire).length)) s6Step21EarlyControlLog.recordFresh=some s6Step21EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step21EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step21EarlyControlFlagArena s6Step21EarlyControlFittedArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step21EarlyControl_fit : compileHmrRecordGrowLog s6Step21EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911] 8 s6Step21EarlyControlLog.recordFresh=some s6Step21EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step21EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step21EarlyControl_fitBorrow
private theorem s6Step21EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911] : List Wire).toFinset⊆s6Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_historyBorrow : s6Step21EarlyControlArena.checkBorrow ((8-([895, 870, 872, 883, 831, 852, 911] : List Wire).length)) s6Step21EarlyControlLog.recordFresh=some s6Step21EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step21EarlyControlArena s6Step21EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step21EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step21EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step21EarlyControl_history : compileHmrRecordGrowLog s6Step21EarlyControlArena [895, 870, 872, 883, 831, 852, 911] 8 s6Step21EarlyControlLog.recordFresh=some s6Step21EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step21EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step21EarlyControl_historyBorrow
private theorem s6Step21EarlyControl_sigmaOwned : ([876, 854] : List Wire).toFinset⊆s6Step21EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_sigmaReleaseOwned : ([854] : List Wire).toFinset⊆s6Step21EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_sigmaRelease : s6Step21EarlyControlHistoryArena.release {854} (fun _ => false)=some s6Step21EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step21EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step21EarlyControlHistoryArena s6Step21EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel
private theorem s6Step21EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step21EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EarlyControl_branch : compileHmrBranchRetirement s6Step21EarlyControlSigmaArena 860=some s6Step21EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step21EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step21EarlyControlSigmaArena s6Step21EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [860] rfl rfl
    decide +kernel
theorem s6Step21EarlyControl_sigma : compileHmrSigmaDropLog s6Step21EarlyControlHistoryArena false 0 0 876 854 []=some s6Step21EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step21EarlyControl_sigmaOwned⟩
  · exact s6Step21EarlyControl_sigmaRelease
theorem s6Step21EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step21EarlyControlLog.zeroWork).map Prod.snd=some (s6Step21EarlyControlLog.zeroWork,s6Step21EarlyControlZeroPlan) := by
  rw [s6Step21EarlyControl_zero]
  rfl
theorem s6Step21EarlyControl_classProjection : (compileHmrSourceClassLog s6Step21EarlyControlZeroArena false 769 s6Step21EarlyControlZeroPlan.top 0 854 s6Step21EarlyControlLog.positiveWork s6Step21EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step21EarlyControlClassPlan.positiveWork,s6Step21EarlyControlClassPlan.equalityWork,s6Step21EarlyControlClassPlan.equality) := by
  rw [s6Step21EarlyControl_class]
  rfl
theorem s6Step21EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step21EarlyControlClassPlan.equalityArena s6Step21EarlyControlClassPlan.equality.top 793 802 779 s6Step21EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step21EarlyControl_flags]
  rfl
theorem s6Step21EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step21EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911] 8 s6Step21EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step21EarlyControl_fit]
  rfl
theorem s6Step21EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step21EarlyControlArena [895, 870, 872, 883, 831, 852, 911] 8 s6Step21EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step21EarlyControl_history]
  rfl
theorem s6Step21EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step21EarlyControlHistoryArena false 0 0 876 854 []).map (fun _ => true)=some true := by
  rw [s6Step21EarlyControl_sigma]
  rfl
theorem s6Step21EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step21EarlyControlSigmaArena 860).map (fun _ => true)=some true := by
  rw [s6Step21EarlyControl_branch]
  rfl
private theorem s6Step21EarlyControl_entrySigmaOwned : ([854, 876] : List Wire).toFinset⊆s6Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step21EarlyControl_entryRecordOwned : ([860, 895, 870, 872, 883, 831, 852, 911] : List Wire).toFinset⊆s6Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21EarlyControl_logged : s6Step21EarlyControlPlan.Logged s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 854 876 793 802 779 860 8 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step21EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step21EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step21EarlyControl_zero
  · exact s6Step21EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step21EarlyControl_flags
  · exact s6Step21EarlyControl_fit
  · exact s6Step21EarlyControl_history
  · exact s6Step21EarlyControl_sigma
  · exact s6Step21EarlyControl_branch
theorem s6Step21EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 854 876 793 802 779 860 8 s6Step21EarlyControlLog=some s6Step21EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step21EarlyControlPlan s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 854 876 793 802 779 860 8 s6Step21EarlyControl_logged
theorem s6Step21EarlyControl_checked : (compileHmrEarlyControlLog s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 854 876 793 802 779 860 8 s6Step21EarlyControlLog).map (fun P => P.outputArena.live.card)=some 829 := by
  rw [s6Step21EarlyControl_plan_checked]
  decide +kernel

def s6Step22EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step22EarlyControlLog : HmrEarlyControlLog := ⟨[887, 841, 807, 860, 813],[794],[850],[881, 853, 867, 786, 877, 855],[]⟩
def s6Step22EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,841⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step22EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step22EarlyControlPositiveArena,[794],s6Step22EarlyControlEqualityArena,[850],⟨⟨898,false⟩,[⟨⟨794,false⟩,850⟩]⟩⟩
def s6Step22EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step22EarlyControlZeroArena,s6Step22EarlyControlZeroPlan,s6Step22EarlyControlClassPlan,s6Step22EarlyControlFlagArena,s6Step22EarlyControlFittedArena,s6Step22EarlyControlHistoryArena,s6Step22EarlyControlSigmaArena,s6Step22EarlyControlOutputArena,s6Step22EarlyControlLog⟩
private theorem s6Step22EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_zeroBorrow : s6Step22EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step22EarlyControlLog.zeroWork=some s6Step22EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step22EarlyControlArena s6Step22EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step22EarlyControl_zero : compileHmrEqualityLog s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step22EarlyControlLog.zeroWork=some (s6Step22EarlyControlZeroArena,s6Step22EarlyControlLog.zeroWork,s6Step22EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step22EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step22EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step22EarlyControl_positiveBorrow : s6Step22EarlyControlZeroArena.checkBorrow (1) s6Step22EarlyControlLog.positiveWork=some s6Step22EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step22EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step22EarlyControlZeroArena s6Step22EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step22EarlyControl_classEqualityOwned : ([898, 794] : List Wire).toFinset⊆s6Step22EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_classEqualityBorrow : s6Step22EarlyControlPositiveArena.checkBorrow (([898, 794] : List Wire).length-1) s6Step22EarlyControlLog.classWork=some s6Step22EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step22EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step22EarlyControlPositiveArena s6Step22EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step22EarlyControl_classEquality : compileHmrEqualityLog s6Step22EarlyControlPositiveArena [898, 794] 0 s6Step22EarlyControlLog.classWork=some (s6Step22EarlyControlEqualityArena,s6Step22EarlyControlLog.classWork,s6Step22EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step22EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step22EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step22EarlyControl_classOwned : ([769, 813, 898] : List Wire).toFinset⊆s6Step22EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EarlyControl_class : compileHmrSourceClassLog s6Step22EarlyControlZeroArena false 769 s6Step22EarlyControlZeroPlan.top 0 898 s6Step22EarlyControlLog.positiveWork s6Step22EarlyControlLog.classWork=some s6Step22EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step22EarlyControlClassPlan s6Step22EarlyControlZeroArena false 769 s6Step22EarlyControlZeroPlan.top 0 898
  constructor
  · decide +kernel
  · exact s6Step22EarlyControl_classOwned
  · exact s6Step22EarlyControl_positiveBorrow
  · exact s6Step22EarlyControl_classEquality
private theorem s6Step22EarlyControl_flagsOwned : ([850, 793, 802, 779] : List Wire).toFinset⊆s6Step22EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_flagsBorrow : s6Step22EarlyControlEqualityArena.checkBorrow (6) s6Step22EarlyControlLog.flagWork=some s6Step22EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step22EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step22EarlyControlEqualityArena s6Step22EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step22EarlyControl_flags : compileHmrFlagsLog s6Step22EarlyControlClassPlan.equalityArena s6Step22EarlyControlClassPlan.equality.top 793 802 779 s6Step22EarlyControlLog.flagWork=some s6Step22EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step22EarlyControl_flagsOwned⟩
  · exact s6Step22EarlyControl_flagsBorrow
private theorem s6Step22EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).toFinset⊆s6Step22EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_fitBorrow : s6Step22EarlyControlFlagArena.checkBorrow ((8-([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).length)) s6Step22EarlyControlLog.recordFresh=some s6Step22EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step22EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step22EarlyControlFlagArena s6Step22EarlyControlFittedArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step22EarlyControl_fit : compileHmrRecordGrowLog s6Step22EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22EarlyControlLog.recordFresh=some s6Step22EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step22EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step22EarlyControl_fitBorrow
private theorem s6Step22EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).toFinset⊆s6Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_historyBorrow : s6Step22EarlyControlArena.checkBorrow ((8-([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).length)) s6Step22EarlyControlLog.recordFresh=some s6Step22EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step22EarlyControlArena s6Step22EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step22EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step22EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step22EarlyControl_history : compileHmrRecordGrowLog s6Step22EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22EarlyControlLog.recordFresh=some s6Step22EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step22EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step22EarlyControl_historyBorrow
private theorem s6Step22EarlyControl_sigmaOwned : ([876, 898] : List Wire).toFinset⊆s6Step22EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_sigmaReleaseOwned : ([898] : List Wire).toFinset⊆s6Step22EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_sigmaRelease : s6Step22EarlyControlHistoryArena.release {898} (fun _ => false)=some s6Step22EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step22EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step22EarlyControlHistoryArena s6Step22EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [898] rfl rfl
    decide +kernel
private theorem s6Step22EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step22EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EarlyControl_branch : compileHmrBranchRetirement s6Step22EarlyControlSigmaArena 862=some s6Step22EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step22EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step22EarlyControlSigmaArena s6Step22EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [862] rfl rfl
    decide +kernel
theorem s6Step22EarlyControl_sigma : compileHmrSigmaDropLog s6Step22EarlyControlHistoryArena false 0 0 876 898 []=some s6Step22EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step22EarlyControl_sigmaOwned⟩
  · exact s6Step22EarlyControl_sigmaRelease
theorem s6Step22EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step22EarlyControlLog.zeroWork).map Prod.snd=some (s6Step22EarlyControlLog.zeroWork,s6Step22EarlyControlZeroPlan) := by
  rw [s6Step22EarlyControl_zero]
  rfl
theorem s6Step22EarlyControl_classProjection : (compileHmrSourceClassLog s6Step22EarlyControlZeroArena false 769 s6Step22EarlyControlZeroPlan.top 0 898 s6Step22EarlyControlLog.positiveWork s6Step22EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step22EarlyControlClassPlan.positiveWork,s6Step22EarlyControlClassPlan.equalityWork,s6Step22EarlyControlClassPlan.equality) := by
  rw [s6Step22EarlyControl_class]
  rfl
theorem s6Step22EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step22EarlyControlClassPlan.equalityArena s6Step22EarlyControlClassPlan.equality.top 793 802 779 s6Step22EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step22EarlyControl_flags]
  rfl
theorem s6Step22EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step22EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step22EarlyControl_fit]
  rfl
theorem s6Step22EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step22EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step22EarlyControl_history]
  rfl
theorem s6Step22EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step22EarlyControlHistoryArena false 0 0 876 898 []).map (fun _ => true)=some true := by
  rw [s6Step22EarlyControl_sigma]
  rfl
theorem s6Step22EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step22EarlyControlSigmaArena 862).map (fun _ => true)=some true := by
  rw [s6Step22EarlyControl_branch]
  rfl
private theorem s6Step22EarlyControl_entrySigmaOwned : ([898, 876] : List Wire).toFinset⊆s6Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step22EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852, 911, 910] : List Wire).toFinset⊆s6Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22EarlyControl_logged : s6Step22EarlyControlPlan.Logged s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 898 876 793 802 779 862 8 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step22EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step22EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step22EarlyControl_zero
  · exact s6Step22EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step22EarlyControl_flags
  · exact s6Step22EarlyControl_fit
  · exact s6Step22EarlyControl_history
  · exact s6Step22EarlyControl_sigma
  · exact s6Step22EarlyControl_branch
theorem s6Step22EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 898 876 793 802 779 862 8 s6Step22EarlyControlLog=some s6Step22EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step22EarlyControlPlan s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 898 876 793 802 779 862 8 s6Step22EarlyControl_logged
theorem s6Step22EarlyControl_checked : (compileHmrEarlyControlLog s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 898 876 793 802 779 862 8 s6Step22EarlyControlLog).map (fun P => P.outputArena.live.card)=some 831 := by
  rw [s6Step22EarlyControl_plan_checked]
  decide +kernel

def s6Step23EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step23EarlyControlLog : HmrEarlyControlLog := ⟨[887, 794, 813, 862, 860],[881],[853],[867, 786, 877, 855, 803, 922],[799]⟩
def s6Step23EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,887⟩,⟨⟨772,false⟩,794⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,862⟩,⟨⟨769,false⟩,860⟩]⟩
def s6Step23EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step23EarlyControlPositiveArena,[881],s6Step23EarlyControlEqualityArena,[853],⟨⟨841,false⟩,[⟨⟨881,false⟩,853⟩]⟩⟩
def s6Step23EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step23EarlyControlZeroArena,s6Step23EarlyControlZeroPlan,s6Step23EarlyControlClassPlan,s6Step23EarlyControlFlagArena,s6Step23EarlyControlFittedArena,s6Step23EarlyControlHistoryArena,s6Step23EarlyControlSigmaArena,s6Step23EarlyControlOutputArena,s6Step23EarlyControlLog⟩
private theorem s6Step23EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_zeroBorrow : s6Step23EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step23EarlyControlLog.zeroWork=some s6Step23EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step23EarlyControlArena s6Step23EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step23EarlyControl_zero : compileHmrEqualityLog s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step23EarlyControlLog.zeroWork=some (s6Step23EarlyControlZeroArena,s6Step23EarlyControlLog.zeroWork,s6Step23EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step23EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step23EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step23EarlyControl_positiveBorrow : s6Step23EarlyControlZeroArena.checkBorrow (1) s6Step23EarlyControlLog.positiveWork=some s6Step23EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step23EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step23EarlyControlZeroArena s6Step23EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step23EarlyControl_classEqualityOwned : ([841, 881] : List Wire).toFinset⊆s6Step23EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_classEqualityBorrow : s6Step23EarlyControlPositiveArena.checkBorrow (([841, 881] : List Wire).length-1) s6Step23EarlyControlLog.classWork=some s6Step23EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step23EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step23EarlyControlPositiveArena s6Step23EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step23EarlyControl_classEquality : compileHmrEqualityLog s6Step23EarlyControlPositiveArena [841, 881] 0 s6Step23EarlyControlLog.classWork=some (s6Step23EarlyControlEqualityArena,s6Step23EarlyControlLog.classWork,s6Step23EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step23EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step23EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step23EarlyControl_classOwned : ([769, 860, 841] : List Wire).toFinset⊆s6Step23EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EarlyControl_class : compileHmrSourceClassLog s6Step23EarlyControlZeroArena false 769 s6Step23EarlyControlZeroPlan.top 0 841 s6Step23EarlyControlLog.positiveWork s6Step23EarlyControlLog.classWork=some s6Step23EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step23EarlyControlClassPlan s6Step23EarlyControlZeroArena false 769 s6Step23EarlyControlZeroPlan.top 0 841
  constructor
  · decide +kernel
  · exact s6Step23EarlyControl_classOwned
  · exact s6Step23EarlyControl_positiveBorrow
  · exact s6Step23EarlyControl_classEquality
private theorem s6Step23EarlyControl_flagsOwned : ([853, 793, 802, 779] : List Wire).toFinset⊆s6Step23EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_flagsBorrow : s6Step23EarlyControlEqualityArena.checkBorrow (6) s6Step23EarlyControlLog.flagWork=some s6Step23EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step23EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step23EarlyControlEqualityArena s6Step23EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step23EarlyControl_flags : compileHmrFlagsLog s6Step23EarlyControlClassPlan.equalityArena s6Step23EarlyControlClassPlan.equality.top 793 802 779 s6Step23EarlyControlLog.flagWork=some s6Step23EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step23EarlyControl_flagsOwned⟩
  · exact s6Step23EarlyControl_flagsBorrow
private theorem s6Step23EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).toFinset⊆s6Step23EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_fitBorrow : s6Step23EarlyControlFlagArena.checkBorrow ((9-([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).length)) s6Step23EarlyControlLog.recordFresh=some s6Step23EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step23EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step23EarlyControlFlagArena s6Step23EarlyControlFittedArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step23EarlyControl_fit : compileHmrRecordGrowLog s6Step23EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23EarlyControlLog.recordFresh=some s6Step23EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step23EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step23EarlyControl_fitBorrow
private theorem s6Step23EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).toFinset⊆s6Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_historyBorrow : s6Step23EarlyControlArena.checkBorrow ((9-([895, 870, 872, 883, 831, 852, 911, 910] : List Wire).length)) s6Step23EarlyControlLog.recordFresh=some s6Step23EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step23EarlyControlArena s6Step23EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step23EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step23EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step23EarlyControl_history : compileHmrRecordGrowLog s6Step23EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23EarlyControlLog.recordFresh=some s6Step23EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step23EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step23EarlyControl_historyBorrow
private theorem s6Step23EarlyControl_sigmaOwned : ([876, 841] : List Wire).toFinset⊆s6Step23EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_sigmaReleaseOwned : ([841] : List Wire).toFinset⊆s6Step23EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_sigmaRelease : s6Step23EarlyControlHistoryArena.release {841} (fun _ => false)=some s6Step23EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step23EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step23EarlyControlHistoryArena s6Step23EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [841] rfl rfl
    decide +kernel
private theorem s6Step23EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s6Step23EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EarlyControl_branch : compileHmrBranchRetirement s6Step23EarlyControlSigmaArena 807=some s6Step23EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step23EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step23EarlyControlSigmaArena s6Step23EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel
theorem s6Step23EarlyControl_sigma : compileHmrSigmaDropLog s6Step23EarlyControlHistoryArena false 0 0 876 841 []=some s6Step23EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step23EarlyControl_sigmaOwned⟩
  · exact s6Step23EarlyControl_sigmaRelease
theorem s6Step23EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step23EarlyControlLog.zeroWork).map Prod.snd=some (s6Step23EarlyControlLog.zeroWork,s6Step23EarlyControlZeroPlan) := by
  rw [s6Step23EarlyControl_zero]
  rfl
theorem s6Step23EarlyControl_classProjection : (compileHmrSourceClassLog s6Step23EarlyControlZeroArena false 769 s6Step23EarlyControlZeroPlan.top 0 841 s6Step23EarlyControlLog.positiveWork s6Step23EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step23EarlyControlClassPlan.positiveWork,s6Step23EarlyControlClassPlan.equalityWork,s6Step23EarlyControlClassPlan.equality) := by
  rw [s6Step23EarlyControl_class]
  rfl
theorem s6Step23EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step23EarlyControlClassPlan.equalityArena s6Step23EarlyControlClassPlan.equality.top 793 802 779 s6Step23EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step23EarlyControl_flags]
  rfl
theorem s6Step23EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step23EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step23EarlyControl_fit]
  rfl
theorem s6Step23EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step23EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step23EarlyControl_history]
  rfl
theorem s6Step23EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step23EarlyControlHistoryArena false 0 0 876 841 []).map (fun _ => true)=some true := by
  rw [s6Step23EarlyControl_sigma]
  rfl
theorem s6Step23EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step23EarlyControlSigmaArena 807).map (fun _ => true)=some true := by
  rw [s6Step23EarlyControl_branch]
  rfl
private theorem s6Step23EarlyControl_entrySigmaOwned : ([841, 876] : List Wire).toFinset⊆s6Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step23EarlyControl_entryRecordOwned : ([807, 895, 870, 872, 883, 831, 852, 911, 910] : List Wire).toFinset⊆s6Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23EarlyControl_logged : s6Step23EarlyControlPlan.Logged s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 841 876 793 802 779 807 9 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step23EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step23EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step23EarlyControl_zero
  · exact s6Step23EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step23EarlyControl_flags
  · exact s6Step23EarlyControl_fit
  · exact s6Step23EarlyControl_history
  · exact s6Step23EarlyControl_sigma
  · exact s6Step23EarlyControl_branch
theorem s6Step23EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 841 876 793 802 779 807 9 s6Step23EarlyControlLog=some s6Step23EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step23EarlyControlPlan s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 841 876 793 802 779 807 9 s6Step23EarlyControl_logged
theorem s6Step23EarlyControl_checked : (compileHmrEarlyControlLog s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 841 876 793 802 779 807 9 s6Step23EarlyControlLog).map (fun P => P.outputArena.live.card)=some 834 := by
  rw [s6Step23EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
