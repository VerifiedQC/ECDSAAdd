import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl6
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl7Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s6Step56EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step56EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step56EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step56EarlyControlLog : HmrEarlyControlLog := ⟨[833, 805, 789, 875, 868],[880],[892],[877, 855, 803, 922, 879, 784],[]⟩
def s6Step56EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,833⟩,⟨⟨772,false⟩,805⟩,⟨⟨771,false⟩,789⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,868⟩]⟩
def s6Step56EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step56EarlyControlPositiveArena,[880],s6Step56EarlyControlEqualityArena,[892],⟨⟨882,false⟩,[⟨⟨880,false⟩,892⟩]⟩⟩
def s6Step56EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step56EarlyControlZeroArena,s6Step56EarlyControlZeroPlan,s6Step56EarlyControlClassPlan,s6Step56EarlyControlFlagArena,s6Step56EarlyControlFittedArena,s6Step56EarlyControlHistoryArena,s6Step56EarlyControlSigmaArena,s6Step56EarlyControlOutputArena,s6Step56EarlyControlLog⟩
private theorem s6Step56EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_zeroBorrow : s6Step56EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step56EarlyControlLog.zeroWork=some s6Step56EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step56EarlyControlArena s6Step56EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step56EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step56EarlyControl_zero : compileHmrEqualityLog s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step56EarlyControlLog.zeroWork=some (s6Step56EarlyControlZeroArena,s6Step56EarlyControlLog.zeroWork,s6Step56EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step56EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step56EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step56EarlyControl_positiveBorrow : s6Step56EarlyControlZeroArena.checkBorrow (1) s6Step56EarlyControlLog.positiveWork=some s6Step56EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step56EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step56EarlyControlZeroArena s6Step56EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step56EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step56EarlyControl_classEqualityOwned : ([882, 880] : List Wire).toFinset⊆s6Step56EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_classEqualityBorrow : s6Step56EarlyControlPositiveArena.checkBorrow (([882, 880] : List Wire).length-1) s6Step56EarlyControlLog.classWork=some s6Step56EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step56EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step56EarlyControlPositiveArena s6Step56EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step56EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step56EarlyControl_classEquality : compileHmrEqualityLog s6Step56EarlyControlPositiveArena [882, 880] 0 s6Step56EarlyControlLog.classWork=some (s6Step56EarlyControlEqualityArena,s6Step56EarlyControlLog.classWork,s6Step56EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step56EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step56EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step56EarlyControl_classOwned : ([769, 868, 882] : List Wire).toFinset⊆s6Step56EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56EarlyControl_class : compileHmrSourceClassLog s6Step56EarlyControlZeroArena false 769 s6Step56EarlyControlZeroPlan.top 0 882 s6Step56EarlyControlLog.positiveWork s6Step56EarlyControlLog.classWork=some s6Step56EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step56EarlyControlClassPlan s6Step56EarlyControlZeroArena false 769 s6Step56EarlyControlZeroPlan.top 0 882
  constructor
  · decide +kernel
  · exact s6Step56EarlyControl_classOwned
  · exact s6Step56EarlyControl_positiveBorrow
  · exact s6Step56EarlyControl_classEquality
private theorem s6Step56EarlyControl_flagsOwned : ([892, 253, 252, 251] : List Wire).toFinset⊆s6Step56EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_flagsBorrow : s6Step56EarlyControlEqualityArena.checkBorrow (6) s6Step56EarlyControlLog.flagWork=some s6Step56EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step56EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step56EarlyControlEqualityArena s6Step56EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step56EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step56EarlyControl_flags : compileHmrFlagsLog s6Step56EarlyControlClassPlan.equalityArena s6Step56EarlyControlClassPlan.equality.top 253 252 251 s6Step56EarlyControlLog.flagWork=some s6Step56EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step56EarlyControl_flagsOwned⟩
  · exact s6Step56EarlyControl_flagsBorrow
private theorem s6Step56EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step56EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step56EarlyControl_fitBorrow : s6Step56EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step56EarlyControlLog.recordFresh=some s6Step56EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step56EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step56EarlyControlFittedArena,s6Step56EarlyControlFlagArena,s6Step56EarlyControlLog,arenaWires]
theorem s6Step56EarlyControl_fit : compileHmrRecordGrowLog s6Step56EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56EarlyControlLog.recordFresh=some s6Step56EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step56EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step56EarlyControl_fitBorrow
private theorem s6Step56EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_historyBorrow : s6Step56EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step56EarlyControlLog.recordFresh=some s6Step56EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step56EarlyControlArena s6Step56EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step56EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step56EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step56EarlyControl_history : compileHmrRecordGrowLog s6Step56EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56EarlyControlLog.recordFresh=some s6Step56EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step56EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step56EarlyControl_historyBorrow
private theorem s6Step56EarlyControl_sigmaOwned : ([254, 882] : List Wire).toFinset⊆s6Step56EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_sigmaReleaseOwned : ([882] : List Wire).toFinset⊆s6Step56EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_sigmaRelease : s6Step56EarlyControlHistoryArena.release {882} (fun _ => false)=some s6Step56EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step56EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step56EarlyControlHistoryArena s6Step56EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel
private theorem s6Step56EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s6Step56EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56EarlyControl_branch : compileHmrBranchRetirement s6Step56EarlyControlSigmaArena 822=some s6Step56EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step56EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step56EarlyControlSigmaArena s6Step56EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [822] rfl rfl
    decide +kernel
theorem s6Step56EarlyControl_sigma : compileHmrSigmaDropLog s6Step56EarlyControlHistoryArena false 0 0 254 882 []=some s6Step56EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step56EarlyControl_sigmaOwned⟩
  · exact s6Step56EarlyControl_sigmaRelease
theorem s6Step56EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step56EarlyControlLog.zeroWork).map Prod.snd=some (s6Step56EarlyControlLog.zeroWork,s6Step56EarlyControlZeroPlan) := by
  rw [s6Step56EarlyControl_zero]
  rfl
theorem s6Step56EarlyControl_classProjection : (compileHmrSourceClassLog s6Step56EarlyControlZeroArena false 769 s6Step56EarlyControlZeroPlan.top 0 882 s6Step56EarlyControlLog.positiveWork s6Step56EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step56EarlyControlClassPlan.positiveWork,s6Step56EarlyControlClassPlan.equalityWork,s6Step56EarlyControlClassPlan.equality) := by
  rw [s6Step56EarlyControl_class]
  rfl
theorem s6Step56EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step56EarlyControlClassPlan.equalityArena s6Step56EarlyControlClassPlan.equality.top 253 252 251 s6Step56EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step56EarlyControl_flags]
  rfl
theorem s6Step56EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step56EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step56EarlyControl_fit]
  rfl
theorem s6Step56EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step56EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step56EarlyControl_history]
  rfl
theorem s6Step56EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step56EarlyControlHistoryArena false 0 0 254 882 []).map (fun _ => true)=some true := by
  rw [s6Step56EarlyControl_sigma]
  rfl
theorem s6Step56EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step56EarlyControlSigmaArena 822).map (fun _ => true)=some true := by
  rw [s6Step56EarlyControl_branch]
  rfl
private theorem s6Step56EarlyControl_entrySigmaOwned : ([882, 254] : List Wire).toFinset⊆s6Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step56EarlyControl_entryRecordOwned : ([822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56EarlyControl_logged : s6Step56EarlyControlPlan.Logged s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 822 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step56EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step56EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step56EarlyControl_zero
  · exact s6Step56EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step56EarlyControl_flags
  · exact s6Step56EarlyControl_fit
  · exact s6Step56EarlyControl_history
  · exact s6Step56EarlyControl_sigma
  · exact s6Step56EarlyControl_branch
theorem s6Step56EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 822 25 s6Step56EarlyControlLog=some s6Step56EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step56EarlyControlPlan s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 822 25 s6Step56EarlyControl_logged
theorem s6Step56EarlyControl_checked : (compileHmrEarlyControlLog s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 822 25 s6Step56EarlyControlLog).map (fun P => P.outputArena.live.card)=some 852 := by
  rw [s6Step56EarlyControl_plan_checked]
  decide +kernel

def s6Step57EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step57EarlyControlLog : HmrEarlyControlLog := ⟨[780, 886, 875, 868, 789],[822],[805],[880, 892, 877, 855, 803, 922],[]⟩
def s6Step57EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨772,false⟩,886⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,868⟩,⟨⟨769,false⟩,789⟩]⟩
def s6Step57EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step57EarlyControlPositiveArena,[822],s6Step57EarlyControlEqualityArena,[805],⟨⟨882,false⟩,[⟨⟨822,false⟩,805⟩]⟩⟩
def s6Step57EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step57EarlyControlZeroArena,s6Step57EarlyControlZeroPlan,s6Step57EarlyControlClassPlan,s6Step57EarlyControlFlagArena,s6Step57EarlyControlFittedArena,s6Step57EarlyControlHistoryArena,s6Step57EarlyControlSigmaArena,s6Step57EarlyControlOutputArena,s6Step57EarlyControlLog⟩
private theorem s6Step57EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_zeroBorrow : s6Step57EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step57EarlyControlLog.zeroWork=some s6Step57EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step57EarlyControlArena s6Step57EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step57EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step57EarlyControl_zero : compileHmrEqualityLog s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step57EarlyControlLog.zeroWork=some (s6Step57EarlyControlZeroArena,s6Step57EarlyControlLog.zeroWork,s6Step57EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step57EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step57EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step57EarlyControl_positiveBorrow : s6Step57EarlyControlZeroArena.checkBorrow (1) s6Step57EarlyControlLog.positiveWork=some s6Step57EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step57EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step57EarlyControlZeroArena s6Step57EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step57EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step57EarlyControl_classEqualityOwned : ([882, 822] : List Wire).toFinset⊆s6Step57EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_classEqualityBorrow : s6Step57EarlyControlPositiveArena.checkBorrow (([882, 822] : List Wire).length-1) s6Step57EarlyControlLog.classWork=some s6Step57EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step57EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step57EarlyControlPositiveArena s6Step57EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step57EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step57EarlyControl_classEquality : compileHmrEqualityLog s6Step57EarlyControlPositiveArena [882, 822] 0 s6Step57EarlyControlLog.classWork=some (s6Step57EarlyControlEqualityArena,s6Step57EarlyControlLog.classWork,s6Step57EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step57EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step57EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step57EarlyControl_classOwned : ([769, 789, 882] : List Wire).toFinset⊆s6Step57EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57EarlyControl_class : compileHmrSourceClassLog s6Step57EarlyControlZeroArena false 769 s6Step57EarlyControlZeroPlan.top 0 882 s6Step57EarlyControlLog.positiveWork s6Step57EarlyControlLog.classWork=some s6Step57EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step57EarlyControlClassPlan s6Step57EarlyControlZeroArena false 769 s6Step57EarlyControlZeroPlan.top 0 882
  constructor
  · decide +kernel
  · exact s6Step57EarlyControl_classOwned
  · exact s6Step57EarlyControl_positiveBorrow
  · exact s6Step57EarlyControl_classEquality
private theorem s6Step57EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step57EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_flagsBorrow : s6Step57EarlyControlEqualityArena.checkBorrow (6) s6Step57EarlyControlLog.flagWork=some s6Step57EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step57EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step57EarlyControlEqualityArena s6Step57EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step57EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step57EarlyControl_flags : compileHmrFlagsLog s6Step57EarlyControlClassPlan.equalityArena s6Step57EarlyControlClassPlan.equality.top 253 252 251 s6Step57EarlyControlLog.flagWork=some s6Step57EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step57EarlyControl_flagsOwned⟩
  · exact s6Step57EarlyControl_flagsBorrow
private theorem s6Step57EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step57EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_fitBorrow : s6Step57EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step57EarlyControlLog.recordFresh=some s6Step57EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step57EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step57EarlyControlFlagArena s6Step57EarlyControlFittedArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step57EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step57EarlyControl_fit : compileHmrRecordGrowLog s6Step57EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57EarlyControlLog.recordFresh=some s6Step57EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step57EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step57EarlyControl_fitBorrow
private theorem s6Step57EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_historyBorrow : s6Step57EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step57EarlyControlLog.recordFresh=some s6Step57EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step57EarlyControlArena s6Step57EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step57EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step57EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step57EarlyControl_history : compileHmrRecordGrowLog s6Step57EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57EarlyControlLog.recordFresh=some s6Step57EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step57EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step57EarlyControl_historyBorrow
private theorem s6Step57EarlyControl_sigmaOwned : ([254, 882] : List Wire).toFinset⊆s6Step57EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_sigmaReleaseOwned : ([882] : List Wire).toFinset⊆s6Step57EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_sigmaRelease : s6Step57EarlyControlHistoryArena.release {882} (fun _ => false)=some s6Step57EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step57EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step57EarlyControlHistoryArena s6Step57EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel
private theorem s6Step57EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step57EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57EarlyControl_branch : compileHmrBranchRetirement s6Step57EarlyControlSigmaArena 833=some s6Step57EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step57EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step57EarlyControlSigmaArena s6Step57EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel
theorem s6Step57EarlyControl_sigma : compileHmrSigmaDropLog s6Step57EarlyControlHistoryArena false 0 0 254 882 []=some s6Step57EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step57EarlyControl_sigmaOwned⟩
  · exact s6Step57EarlyControl_sigmaRelease
theorem s6Step57EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step57EarlyControlLog.zeroWork).map Prod.snd=some (s6Step57EarlyControlLog.zeroWork,s6Step57EarlyControlZeroPlan) := by
  rw [s6Step57EarlyControl_zero]
  rfl
theorem s6Step57EarlyControl_classProjection : (compileHmrSourceClassLog s6Step57EarlyControlZeroArena false 769 s6Step57EarlyControlZeroPlan.top 0 882 s6Step57EarlyControlLog.positiveWork s6Step57EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step57EarlyControlClassPlan.positiveWork,s6Step57EarlyControlClassPlan.equalityWork,s6Step57EarlyControlClassPlan.equality) := by
  rw [s6Step57EarlyControl_class]
  rfl
theorem s6Step57EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step57EarlyControlClassPlan.equalityArena s6Step57EarlyControlClassPlan.equality.top 253 252 251 s6Step57EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step57EarlyControl_flags]
  rfl
theorem s6Step57EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step57EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step57EarlyControl_fit]
  rfl
theorem s6Step57EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step57EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step57EarlyControl_history]
  rfl
theorem s6Step57EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step57EarlyControlHistoryArena false 0 0 254 882 []).map (fun _ => true)=some true := by
  rw [s6Step57EarlyControl_sigma]
  rfl
theorem s6Step57EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step57EarlyControlSigmaArena 833).map (fun _ => true)=some true := by
  rw [s6Step57EarlyControl_branch]
  rfl
private theorem s6Step57EarlyControl_entrySigmaOwned : ([882, 254] : List Wire).toFinset⊆s6Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step57EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57EarlyControl_logged : s6Step57EarlyControlPlan.Logged s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 833 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step57EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step57EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step57EarlyControl_zero
  · exact s6Step57EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step57EarlyControl_flags
  · exact s6Step57EarlyControl_fit
  · exact s6Step57EarlyControl_history
  · exact s6Step57EarlyControl_sigma
  · exact s6Step57EarlyControl_branch
theorem s6Step57EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 833 25 s6Step57EarlyControlLog=some s6Step57EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step57EarlyControlPlan s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 833 25 s6Step57EarlyControl_logged
theorem s6Step57EarlyControl_checked : (compileHmrEarlyControlLog s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 833 25 s6Step57EarlyControlLog).map (fun P => P.outputArena.live.card)=some 850 := by
  rw [s6Step57EarlyControl_plan_checked]
  decide +kernel

def s6Step58EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step58EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step58EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step58EarlyControlLog : HmrEarlyControlLog := ⟨[868, 875, 833, 886, 822],[805],[880],[892, 877, 855, 803, 922, 879],[]⟩
def s6Step58EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,833⟩,⟨⟨770,false⟩,886⟩,⟨⟨769,false⟩,822⟩]⟩
def s6Step58EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step58EarlyControlPositiveArena,[805],s6Step58EarlyControlEqualityArena,[880],⟨⟨882,false⟩,[⟨⟨805,false⟩,880⟩]⟩⟩
def s6Step58EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step58EarlyControlZeroArena,s6Step58EarlyControlZeroPlan,s6Step58EarlyControlClassPlan,s6Step58EarlyControlFlagArena,s6Step58EarlyControlFittedArena,s6Step58EarlyControlHistoryArena,s6Step58EarlyControlSigmaArena,s6Step58EarlyControlOutputArena,s6Step58EarlyControlLog⟩
private theorem s6Step58EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_zeroBorrow : s6Step58EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step58EarlyControlLog.zeroWork=some s6Step58EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step58EarlyControlArena s6Step58EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step58EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step58EarlyControl_zero : compileHmrEqualityLog s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step58EarlyControlLog.zeroWork=some (s6Step58EarlyControlZeroArena,s6Step58EarlyControlLog.zeroWork,s6Step58EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step58EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step58EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step58EarlyControl_positiveBorrow : s6Step58EarlyControlZeroArena.checkBorrow (1) s6Step58EarlyControlLog.positiveWork=some s6Step58EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step58EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step58EarlyControlZeroArena s6Step58EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step58EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step58EarlyControl_classEqualityOwned : ([882, 805] : List Wire).toFinset⊆s6Step58EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_classEqualityBorrow : s6Step58EarlyControlPositiveArena.checkBorrow (([882, 805] : List Wire).length-1) s6Step58EarlyControlLog.classWork=some s6Step58EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step58EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step58EarlyControlPositiveArena s6Step58EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step58EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step58EarlyControl_classEquality : compileHmrEqualityLog s6Step58EarlyControlPositiveArena [882, 805] 0 s6Step58EarlyControlLog.classWork=some (s6Step58EarlyControlEqualityArena,s6Step58EarlyControlLog.classWork,s6Step58EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step58EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step58EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step58EarlyControl_classOwned : ([769, 822, 882] : List Wire).toFinset⊆s6Step58EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58EarlyControl_class : compileHmrSourceClassLog s6Step58EarlyControlZeroArena false 769 s6Step58EarlyControlZeroPlan.top 0 882 s6Step58EarlyControlLog.positiveWork s6Step58EarlyControlLog.classWork=some s6Step58EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step58EarlyControlClassPlan s6Step58EarlyControlZeroArena false 769 s6Step58EarlyControlZeroPlan.top 0 882
  constructor
  · decide +kernel
  · exact s6Step58EarlyControl_classOwned
  · exact s6Step58EarlyControl_positiveBorrow
  · exact s6Step58EarlyControl_classEquality
private theorem s6Step58EarlyControl_flagsOwned : ([880, 253, 252, 251] : List Wire).toFinset⊆s6Step58EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_flagsBorrow : s6Step58EarlyControlEqualityArena.checkBorrow (6) s6Step58EarlyControlLog.flagWork=some s6Step58EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step58EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step58EarlyControlEqualityArena s6Step58EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step58EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step58EarlyControl_flags : compileHmrFlagsLog s6Step58EarlyControlClassPlan.equalityArena s6Step58EarlyControlClassPlan.equality.top 253 252 251 s6Step58EarlyControlLog.flagWork=some s6Step58EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step58EarlyControl_flagsOwned⟩
  · exact s6Step58EarlyControl_flagsBorrow
private theorem s6Step58EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step58EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step58EarlyControl_fitBorrow : s6Step58EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step58EarlyControlLog.recordFresh=some s6Step58EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step58EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step58EarlyControlFittedArena,s6Step58EarlyControlFlagArena,s6Step58EarlyControlLog,arenaWires]
theorem s6Step58EarlyControl_fit : compileHmrRecordGrowLog s6Step58EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58EarlyControlLog.recordFresh=some s6Step58EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step58EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step58EarlyControl_fitBorrow
private theorem s6Step58EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_historyBorrow : s6Step58EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step58EarlyControlLog.recordFresh=some s6Step58EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step58EarlyControlArena s6Step58EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step58EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step58EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step58EarlyControl_history : compileHmrRecordGrowLog s6Step58EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58EarlyControlLog.recordFresh=some s6Step58EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step58EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step58EarlyControl_historyBorrow
private theorem s6Step58EarlyControl_sigmaOwned : ([254, 882] : List Wire).toFinset⊆s6Step58EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_sigmaReleaseOwned : ([882] : List Wire).toFinset⊆s6Step58EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_sigmaRelease : s6Step58EarlyControlHistoryArena.release {882} (fun _ => false)=some s6Step58EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step58EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step58EarlyControlHistoryArena s6Step58EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel
private theorem s6Step58EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s6Step58EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58EarlyControl_branch : compileHmrBranchRetirement s6Step58EarlyControlSigmaArena 780=some s6Step58EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step58EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step58EarlyControlSigmaArena s6Step58EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [780] rfl rfl
    decide +kernel
theorem s6Step58EarlyControl_sigma : compileHmrSigmaDropLog s6Step58EarlyControlHistoryArena false 0 0 254 882 []=some s6Step58EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step58EarlyControl_sigmaOwned⟩
  · exact s6Step58EarlyControl_sigmaRelease
theorem s6Step58EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step58EarlyControlLog.zeroWork).map Prod.snd=some (s6Step58EarlyControlLog.zeroWork,s6Step58EarlyControlZeroPlan) := by
  rw [s6Step58EarlyControl_zero]
  rfl
theorem s6Step58EarlyControl_classProjection : (compileHmrSourceClassLog s6Step58EarlyControlZeroArena false 769 s6Step58EarlyControlZeroPlan.top 0 882 s6Step58EarlyControlLog.positiveWork s6Step58EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step58EarlyControlClassPlan.positiveWork,s6Step58EarlyControlClassPlan.equalityWork,s6Step58EarlyControlClassPlan.equality) := by
  rw [s6Step58EarlyControl_class]
  rfl
theorem s6Step58EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step58EarlyControlClassPlan.equalityArena s6Step58EarlyControlClassPlan.equality.top 253 252 251 s6Step58EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step58EarlyControl_flags]
  rfl
theorem s6Step58EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step58EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step58EarlyControl_fit]
  rfl
theorem s6Step58EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step58EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step58EarlyControl_history]
  rfl
theorem s6Step58EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step58EarlyControlHistoryArena false 0 0 254 882 []).map (fun _ => true)=some true := by
  rw [s6Step58EarlyControl_sigma]
  rfl
theorem s6Step58EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step58EarlyControlSigmaArena 780).map (fun _ => true)=some true := by
  rw [s6Step58EarlyControl_branch]
  rfl
private theorem s6Step58EarlyControl_entrySigmaOwned : ([882, 254] : List Wire).toFinset⊆s6Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step58EarlyControl_entryRecordOwned : ([780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58EarlyControl_logged : s6Step58EarlyControlPlan.Logged s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 780 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step58EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step58EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step58EarlyControl_zero
  · exact s6Step58EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step58EarlyControl_flags
  · exact s6Step58EarlyControl_fit
  · exact s6Step58EarlyControl_history
  · exact s6Step58EarlyControl_sigma
  · exact s6Step58EarlyControl_branch
theorem s6Step58EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 780 25 s6Step58EarlyControlLog=some s6Step58EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step58EarlyControlPlan s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 780 25 s6Step58EarlyControl_logged
theorem s6Step58EarlyControl_checked : (compileHmrEarlyControlLog s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 254 253 252 251 780 25 s6Step58EarlyControlLog).map (fun P => P.outputArena.live.card)=some 851 := by
  rw [s6Step58EarlyControl_plan_checked]
  decide +kernel

def s6Step59EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step59EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step59EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step59EarlyControlLog : HmrEarlyControlLog := ⟨[822, 886, 780, 833, 880],[892],[877],[855, 803, 922, 879, 784, 891],[]⟩
def s6Step59EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨772,false⟩,886⟩,⟨⟨771,false⟩,780⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,880⟩]⟩
def s6Step59EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step59EarlyControlPositiveArena,[892],s6Step59EarlyControlEqualityArena,[877],⟨⟨868,false⟩,[⟨⟨892,false⟩,877⟩]⟩⟩
def s6Step59EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step59EarlyControlZeroArena,s6Step59EarlyControlZeroPlan,s6Step59EarlyControlClassPlan,s6Step59EarlyControlFlagArena,s6Step59EarlyControlFittedArena,s6Step59EarlyControlHistoryArena,s6Step59EarlyControlSigmaArena,s6Step59EarlyControlOutputArena,s6Step59EarlyControlLog⟩
private theorem s6Step59EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_zeroBorrow : s6Step59EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step59EarlyControlLog.zeroWork=some s6Step59EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step59EarlyControlArena s6Step59EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step59EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step59EarlyControl_zero : compileHmrEqualityLog s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step59EarlyControlLog.zeroWork=some (s6Step59EarlyControlZeroArena,s6Step59EarlyControlLog.zeroWork,s6Step59EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step59EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step59EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step59EarlyControl_positiveBorrow : s6Step59EarlyControlZeroArena.checkBorrow (1) s6Step59EarlyControlLog.positiveWork=some s6Step59EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step59EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step59EarlyControlZeroArena s6Step59EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step59EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step59EarlyControl_classEqualityOwned : ([868, 892] : List Wire).toFinset⊆s6Step59EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_classEqualityBorrow : s6Step59EarlyControlPositiveArena.checkBorrow (([868, 892] : List Wire).length-1) s6Step59EarlyControlLog.classWork=some s6Step59EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step59EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step59EarlyControlPositiveArena s6Step59EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step59EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step59EarlyControl_classEquality : compileHmrEqualityLog s6Step59EarlyControlPositiveArena [868, 892] 0 s6Step59EarlyControlLog.classWork=some (s6Step59EarlyControlEqualityArena,s6Step59EarlyControlLog.classWork,s6Step59EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step59EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step59EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step59EarlyControl_classOwned : ([769, 880, 868] : List Wire).toFinset⊆s6Step59EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59EarlyControl_class : compileHmrSourceClassLog s6Step59EarlyControlZeroArena false 769 s6Step59EarlyControlZeroPlan.top 0 868 s6Step59EarlyControlLog.positiveWork s6Step59EarlyControlLog.classWork=some s6Step59EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step59EarlyControlClassPlan s6Step59EarlyControlZeroArena false 769 s6Step59EarlyControlZeroPlan.top 0 868
  constructor
  · decide +kernel
  · exact s6Step59EarlyControl_classOwned
  · exact s6Step59EarlyControl_positiveBorrow
  · exact s6Step59EarlyControl_classEquality
private theorem s6Step59EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step59EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_flagsBorrow : s6Step59EarlyControlEqualityArena.checkBorrow (6) s6Step59EarlyControlLog.flagWork=some s6Step59EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step59EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step59EarlyControlEqualityArena s6Step59EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step59EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step59EarlyControl_flags : compileHmrFlagsLog s6Step59EarlyControlClassPlan.equalityArena s6Step59EarlyControlClassPlan.equality.top 253 252 251 s6Step59EarlyControlLog.flagWork=some s6Step59EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step59EarlyControl_flagsOwned⟩
  · exact s6Step59EarlyControl_flagsBorrow
private theorem s6Step59EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step59EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step59EarlyControl_fitBorrow : s6Step59EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step59EarlyControlLog.recordFresh=some s6Step59EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step59EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step59EarlyControlFittedArena,s6Step59EarlyControlFlagArena,s6Step59EarlyControlLog,arenaWires]
theorem s6Step59EarlyControl_fit : compileHmrRecordGrowLog s6Step59EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59EarlyControlLog.recordFresh=some s6Step59EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step59EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step59EarlyControl_fitBorrow
private theorem s6Step59EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_historyBorrow : s6Step59EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step59EarlyControlLog.recordFresh=some s6Step59EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step59EarlyControlArena s6Step59EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step59EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step59EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step59EarlyControl_history : compileHmrRecordGrowLog s6Step59EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59EarlyControlLog.recordFresh=some s6Step59EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step59EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step59EarlyControl_historyBorrow
private theorem s6Step59EarlyControl_sigmaOwned : ([254, 868] : List Wire).toFinset⊆s6Step59EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_sigmaReleaseOwned : ([868] : List Wire).toFinset⊆s6Step59EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_sigmaRelease : s6Step59EarlyControlHistoryArena.release {868} (fun _ => false)=some s6Step59EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step59EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step59EarlyControlHistoryArena s6Step59EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [868] rfl rfl
    decide +kernel
private theorem s6Step59EarlyControl_branchOwned : ([875] : List Wire).toFinset⊆s6Step59EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59EarlyControl_branch : compileHmrBranchRetirement s6Step59EarlyControlSigmaArena 875=some s6Step59EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step59EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step59EarlyControlSigmaArena s6Step59EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [875] rfl rfl
    decide +kernel
theorem s6Step59EarlyControl_sigma : compileHmrSigmaDropLog s6Step59EarlyControlHistoryArena false 0 0 254 868 []=some s6Step59EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step59EarlyControl_sigmaOwned⟩
  · exact s6Step59EarlyControl_sigmaRelease
theorem s6Step59EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step59EarlyControlLog.zeroWork).map Prod.snd=some (s6Step59EarlyControlLog.zeroWork,s6Step59EarlyControlZeroPlan) := by
  rw [s6Step59EarlyControl_zero]
  rfl
theorem s6Step59EarlyControl_classProjection : (compileHmrSourceClassLog s6Step59EarlyControlZeroArena false 769 s6Step59EarlyControlZeroPlan.top 0 868 s6Step59EarlyControlLog.positiveWork s6Step59EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step59EarlyControlClassPlan.positiveWork,s6Step59EarlyControlClassPlan.equalityWork,s6Step59EarlyControlClassPlan.equality) := by
  rw [s6Step59EarlyControl_class]
  rfl
theorem s6Step59EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step59EarlyControlClassPlan.equalityArena s6Step59EarlyControlClassPlan.equality.top 253 252 251 s6Step59EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step59EarlyControl_flags]
  rfl
theorem s6Step59EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step59EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step59EarlyControl_fit]
  rfl
theorem s6Step59EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step59EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step59EarlyControl_history]
  rfl
theorem s6Step59EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step59EarlyControlHistoryArena false 0 0 254 868 []).map (fun _ => true)=some true := by
  rw [s6Step59EarlyControl_sigma]
  rfl
theorem s6Step59EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step59EarlyControlSigmaArena 875).map (fun _ => true)=some true := by
  rw [s6Step59EarlyControl_branch]
  rfl
private theorem s6Step59EarlyControl_entrySigmaOwned : ([868, 254] : List Wire).toFinset⊆s6Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step59EarlyControl_entryRecordOwned : ([875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59EarlyControl_logged : s6Step59EarlyControlPlan.Logged s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 868 254 253 252 251 875 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step59EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step59EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step59EarlyControl_zero
  · exact s6Step59EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step59EarlyControl_flags
  · exact s6Step59EarlyControl_fit
  · exact s6Step59EarlyControl_history
  · exact s6Step59EarlyControl_sigma
  · exact s6Step59EarlyControl_branch
theorem s6Step59EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 868 254 253 252 251 875 25 s6Step59EarlyControlLog=some s6Step59EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step59EarlyControlPlan s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 868 254 253 252 251 875 25 s6Step59EarlyControl_logged
theorem s6Step59EarlyControl_checked : (compileHmrEarlyControlLog s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 868 254 253 252 251 875 25 s6Step59EarlyControlLog).map (fun P => P.outputArena.live.card)=some 853 := by
  rw [s6Step59EarlyControl_plan_checked]
  decide +kernel

def s6Step60EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step60EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step60EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step60EarlyControlLog : HmrEarlyControlLog := ⟨[838, 880, 833, 875, 780],[877],[855],[803, 922, 879, 784, 891, 846],[]⟩
def s6Step60EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,838⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,833⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,780⟩]⟩
def s6Step60EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step60EarlyControlPositiveArena,[877],s6Step60EarlyControlEqualityArena,[855],⟨⟨822,false⟩,[⟨⟨877,false⟩,855⟩]⟩⟩
def s6Step60EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step60EarlyControlZeroArena,s6Step60EarlyControlZeroPlan,s6Step60EarlyControlClassPlan,s6Step60EarlyControlFlagArena,s6Step60EarlyControlFittedArena,s6Step60EarlyControlHistoryArena,s6Step60EarlyControlSigmaArena,s6Step60EarlyControlOutputArena,s6Step60EarlyControlLog⟩
private theorem s6Step60EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_zeroBorrow : s6Step60EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step60EarlyControlLog.zeroWork=some s6Step60EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step60EarlyControlArena s6Step60EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step60EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step60EarlyControl_zero : compileHmrEqualityLog s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step60EarlyControlLog.zeroWork=some (s6Step60EarlyControlZeroArena,s6Step60EarlyControlLog.zeroWork,s6Step60EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step60EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step60EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step60EarlyControl_positiveBorrow : s6Step60EarlyControlZeroArena.checkBorrow (1) s6Step60EarlyControlLog.positiveWork=some s6Step60EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step60EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step60EarlyControlZeroArena s6Step60EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step60EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step60EarlyControl_classEqualityOwned : ([822, 877] : List Wire).toFinset⊆s6Step60EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_classEqualityBorrow : s6Step60EarlyControlPositiveArena.checkBorrow (([822, 877] : List Wire).length-1) s6Step60EarlyControlLog.classWork=some s6Step60EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step60EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step60EarlyControlPositiveArena s6Step60EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step60EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step60EarlyControl_classEquality : compileHmrEqualityLog s6Step60EarlyControlPositiveArena [822, 877] 0 s6Step60EarlyControlLog.classWork=some (s6Step60EarlyControlEqualityArena,s6Step60EarlyControlLog.classWork,s6Step60EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step60EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step60EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step60EarlyControl_classOwned : ([769, 780, 822] : List Wire).toFinset⊆s6Step60EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60EarlyControl_class : compileHmrSourceClassLog s6Step60EarlyControlZeroArena false 769 s6Step60EarlyControlZeroPlan.top 0 822 s6Step60EarlyControlLog.positiveWork s6Step60EarlyControlLog.classWork=some s6Step60EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step60EarlyControlClassPlan s6Step60EarlyControlZeroArena false 769 s6Step60EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s6Step60EarlyControl_classOwned
  · exact s6Step60EarlyControl_positiveBorrow
  · exact s6Step60EarlyControl_classEquality
private theorem s6Step60EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step60EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_flagsBorrow : s6Step60EarlyControlEqualityArena.checkBorrow (6) s6Step60EarlyControlLog.flagWork=some s6Step60EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step60EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step60EarlyControlEqualityArena s6Step60EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step60EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step60EarlyControl_flags : compileHmrFlagsLog s6Step60EarlyControlClassPlan.equalityArena s6Step60EarlyControlClassPlan.equality.top 253 252 251 s6Step60EarlyControlLog.flagWork=some s6Step60EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step60EarlyControl_flagsOwned⟩
  · exact s6Step60EarlyControl_flagsBorrow
private theorem s6Step60EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step60EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step60EarlyControl_fitBorrow : s6Step60EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step60EarlyControlLog.recordFresh=some s6Step60EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step60EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step60EarlyControlFittedArena,s6Step60EarlyControlFlagArena,s6Step60EarlyControlLog,arenaWires]
theorem s6Step60EarlyControl_fit : compileHmrRecordGrowLog s6Step60EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60EarlyControlLog.recordFresh=some s6Step60EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step60EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step60EarlyControl_fitBorrow
private theorem s6Step60EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_historyBorrow : s6Step60EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step60EarlyControlLog.recordFresh=some s6Step60EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step60EarlyControlArena s6Step60EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step60EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step60EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step60EarlyControl_history : compileHmrRecordGrowLog s6Step60EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60EarlyControlLog.recordFresh=some s6Step60EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step60EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step60EarlyControl_historyBorrow
private theorem s6Step60EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s6Step60EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s6Step60EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_sigmaRelease : s6Step60EarlyControlHistoryArena.release {822} (fun _ => false)=some s6Step60EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step60EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step60EarlyControlHistoryArena s6Step60EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [822] rfl rfl
    decide +kernel
private theorem s6Step60EarlyControl_branchOwned : ([886] : List Wire).toFinset⊆s6Step60EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60EarlyControl_branch : compileHmrBranchRetirement s6Step60EarlyControlSigmaArena 886=some s6Step60EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step60EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step60EarlyControlSigmaArena s6Step60EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [886] rfl rfl
    decide +kernel
theorem s6Step60EarlyControl_sigma : compileHmrSigmaDropLog s6Step60EarlyControlHistoryArena false 0 0 254 822 []=some s6Step60EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step60EarlyControl_sigmaOwned⟩
  · exact s6Step60EarlyControl_sigmaRelease
theorem s6Step60EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step60EarlyControlLog.zeroWork).map Prod.snd=some (s6Step60EarlyControlLog.zeroWork,s6Step60EarlyControlZeroPlan) := by
  rw [s6Step60EarlyControl_zero]
  rfl
theorem s6Step60EarlyControl_classProjection : (compileHmrSourceClassLog s6Step60EarlyControlZeroArena false 769 s6Step60EarlyControlZeroPlan.top 0 822 s6Step60EarlyControlLog.positiveWork s6Step60EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step60EarlyControlClassPlan.positiveWork,s6Step60EarlyControlClassPlan.equalityWork,s6Step60EarlyControlClassPlan.equality) := by
  rw [s6Step60EarlyControl_class]
  rfl
theorem s6Step60EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step60EarlyControlClassPlan.equalityArena s6Step60EarlyControlClassPlan.equality.top 253 252 251 s6Step60EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step60EarlyControl_flags]
  rfl
theorem s6Step60EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step60EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step60EarlyControl_fit]
  rfl
theorem s6Step60EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step60EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step60EarlyControl_history]
  rfl
theorem s6Step60EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step60EarlyControlHistoryArena false 0 0 254 822 []).map (fun _ => true)=some true := by
  rw [s6Step60EarlyControl_sigma]
  rfl
theorem s6Step60EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step60EarlyControlSigmaArena 886).map (fun _ => true)=some true := by
  rw [s6Step60EarlyControl_branch]
  rfl
private theorem s6Step60EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s6Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step60EarlyControl_entryRecordOwned : ([886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60EarlyControl_logged : s6Step60EarlyControlPlan.Logged s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 822 254 253 252 251 886 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step60EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step60EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step60EarlyControl_zero
  · exact s6Step60EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step60EarlyControl_flags
  · exact s6Step60EarlyControl_fit
  · exact s6Step60EarlyControl_history
  · exact s6Step60EarlyControl_sigma
  · exact s6Step60EarlyControl_branch
theorem s6Step60EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 822 254 253 252 251 886 25 s6Step60EarlyControlLog=some s6Step60EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step60EarlyControlPlan s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 822 254 253 252 251 886 25 s6Step60EarlyControl_logged
theorem s6Step60EarlyControl_checked : (compileHmrEarlyControlLog s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 822 254 253 252 251 886 25 s6Step60EarlyControlLog).map (fun P => P.outputArena.live.card)=some 854 := by
  rw [s6Step60EarlyControl_plan_checked]
  decide +kernel

def s6Step61EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step61EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step61EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step61EarlyControlLog : HmrEarlyControlLog := ⟨[888, 838, 877, 855, 780],[886],[822],[875, 803, 922, 879, 784, 891],[]⟩
def s6Step61EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,888⟩,⟨⟨772,false⟩,838⟩,⟨⟨771,false⟩,877⟩,⟨⟨770,false⟩,855⟩,⟨⟨769,false⟩,780⟩]⟩
def s6Step61EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step61EarlyControlPositiveArena,[886],s6Step61EarlyControlEqualityArena,[822],⟨⟨880,false⟩,[⟨⟨886,false⟩,822⟩]⟩⟩
def s6Step61EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step61EarlyControlZeroArena,s6Step61EarlyControlZeroPlan,s6Step61EarlyControlClassPlan,s6Step61EarlyControlFlagArena,s6Step61EarlyControlFittedArena,s6Step61EarlyControlHistoryArena,s6Step61EarlyControlSigmaArena,s6Step61EarlyControlOutputArena,s6Step61EarlyControlLog⟩
private theorem s6Step61EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_zeroBorrow : s6Step61EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step61EarlyControlLog.zeroWork=some s6Step61EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step61EarlyControlArena s6Step61EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step61EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step61EarlyControl_zero : compileHmrEqualityLog s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step61EarlyControlLog.zeroWork=some (s6Step61EarlyControlZeroArena,s6Step61EarlyControlLog.zeroWork,s6Step61EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step61EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step61EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step61EarlyControl_positiveBorrow : s6Step61EarlyControlZeroArena.checkBorrow (1) s6Step61EarlyControlLog.positiveWork=some s6Step61EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step61EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step61EarlyControlZeroArena s6Step61EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step61EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step61EarlyControl_classEqualityOwned : ([880, 886] : List Wire).toFinset⊆s6Step61EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_classEqualityBorrow : s6Step61EarlyControlPositiveArena.checkBorrow (([880, 886] : List Wire).length-1) s6Step61EarlyControlLog.classWork=some s6Step61EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step61EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step61EarlyControlPositiveArena s6Step61EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step61EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step61EarlyControl_classEquality : compileHmrEqualityLog s6Step61EarlyControlPositiveArena [880, 886] 0 s6Step61EarlyControlLog.classWork=some (s6Step61EarlyControlEqualityArena,s6Step61EarlyControlLog.classWork,s6Step61EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step61EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step61EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step61EarlyControl_classOwned : ([769, 780, 880] : List Wire).toFinset⊆s6Step61EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61EarlyControl_class : compileHmrSourceClassLog s6Step61EarlyControlZeroArena false 769 s6Step61EarlyControlZeroPlan.top 0 880 s6Step61EarlyControlLog.positiveWork s6Step61EarlyControlLog.classWork=some s6Step61EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step61EarlyControlClassPlan s6Step61EarlyControlZeroArena false 769 s6Step61EarlyControlZeroPlan.top 0 880
  constructor
  · decide +kernel
  · exact s6Step61EarlyControl_classOwned
  · exact s6Step61EarlyControl_positiveBorrow
  · exact s6Step61EarlyControl_classEquality
private theorem s6Step61EarlyControl_flagsOwned : ([822, 253, 252, 251] : List Wire).toFinset⊆s6Step61EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_flagsBorrow : s6Step61EarlyControlEqualityArena.checkBorrow (6) s6Step61EarlyControlLog.flagWork=some s6Step61EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step61EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step61EarlyControlEqualityArena s6Step61EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step61EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step61EarlyControl_flags : compileHmrFlagsLog s6Step61EarlyControlClassPlan.equalityArena s6Step61EarlyControlClassPlan.equality.top 253 252 251 s6Step61EarlyControlLog.flagWork=some s6Step61EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step61EarlyControl_flagsOwned⟩
  · exact s6Step61EarlyControl_flagsBorrow
private theorem s6Step61EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step61EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step61EarlyControl_fitBorrow : s6Step61EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step61EarlyControlLog.recordFresh=some s6Step61EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step61EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step61EarlyControlFittedArena,s6Step61EarlyControlFlagArena,s6Step61EarlyControlLog,arenaWires]
theorem s6Step61EarlyControl_fit : compileHmrRecordGrowLog s6Step61EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61EarlyControlLog.recordFresh=some s6Step61EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step61EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step61EarlyControl_fitBorrow
private theorem s6Step61EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_historyBorrow : s6Step61EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step61EarlyControlLog.recordFresh=some s6Step61EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step61EarlyControlArena s6Step61EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step61EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step61EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step61EarlyControl_history : compileHmrRecordGrowLog s6Step61EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61EarlyControlLog.recordFresh=some s6Step61EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step61EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step61EarlyControl_historyBorrow
private theorem s6Step61EarlyControl_sigmaOwned : ([254, 880] : List Wire).toFinset⊆s6Step61EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_sigmaReleaseOwned : ([880] : List Wire).toFinset⊆s6Step61EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_sigmaRelease : s6Step61EarlyControlHistoryArena.release {880} (fun _ => false)=some s6Step61EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step61EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step61EarlyControlHistoryArena s6Step61EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel
private theorem s6Step61EarlyControl_branchOwned : ([833] : List Wire).toFinset⊆s6Step61EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61EarlyControl_branch : compileHmrBranchRetirement s6Step61EarlyControlSigmaArena 833=some s6Step61EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step61EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step61EarlyControlSigmaArena s6Step61EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel
theorem s6Step61EarlyControl_sigma : compileHmrSigmaDropLog s6Step61EarlyControlHistoryArena false 0 0 254 880 []=some s6Step61EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step61EarlyControl_sigmaOwned⟩
  · exact s6Step61EarlyControl_sigmaRelease
theorem s6Step61EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step61EarlyControlLog.zeroWork).map Prod.snd=some (s6Step61EarlyControlLog.zeroWork,s6Step61EarlyControlZeroPlan) := by
  rw [s6Step61EarlyControl_zero]
  rfl
theorem s6Step61EarlyControl_classProjection : (compileHmrSourceClassLog s6Step61EarlyControlZeroArena false 769 s6Step61EarlyControlZeroPlan.top 0 880 s6Step61EarlyControlLog.positiveWork s6Step61EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step61EarlyControlClassPlan.positiveWork,s6Step61EarlyControlClassPlan.equalityWork,s6Step61EarlyControlClassPlan.equality) := by
  rw [s6Step61EarlyControl_class]
  rfl
theorem s6Step61EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step61EarlyControlClassPlan.equalityArena s6Step61EarlyControlClassPlan.equality.top 253 252 251 s6Step61EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step61EarlyControl_flags]
  rfl
theorem s6Step61EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step61EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step61EarlyControl_fit]
  rfl
theorem s6Step61EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step61EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step61EarlyControl_history]
  rfl
theorem s6Step61EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step61EarlyControlHistoryArena false 0 0 254 880 []).map (fun _ => true)=some true := by
  rw [s6Step61EarlyControl_sigma]
  rfl
theorem s6Step61EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step61EarlyControlSigmaArena 833).map (fun _ => true)=some true := by
  rw [s6Step61EarlyControl_branch]
  rfl
private theorem s6Step61EarlyControl_entrySigmaOwned : ([880, 254] : List Wire).toFinset⊆s6Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step61EarlyControl_entryRecordOwned : ([833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61EarlyControl_logged : s6Step61EarlyControlPlan.Logged s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 880 254 253 252 251 833 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step61EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step61EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step61EarlyControl_zero
  · exact s6Step61EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step61EarlyControl_flags
  · exact s6Step61EarlyControl_fit
  · exact s6Step61EarlyControl_history
  · exact s6Step61EarlyControl_sigma
  · exact s6Step61EarlyControl_branch
theorem s6Step61EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 880 254 253 252 251 833 25 s6Step61EarlyControlLog=some s6Step61EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step61EarlyControlPlan s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 880 254 253 252 251 833 25 s6Step61EarlyControl_logged
theorem s6Step61EarlyControl_checked : (compileHmrEarlyControlLog s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 880 254 253 252 251 833 25 s6Step61EarlyControlLog).map (fun P => P.outputArena.live.card)=some 853 := by
  rw [s6Step61EarlyControl_plan_checked]
  decide +kernel

def s6Step62EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step62EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (913 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step62EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step62EarlyControlLog : HmrEarlyControlLog := ⟨[778, 780, 855, 833, 877],[822],[875],[803, 922, 879, 784, 891, 846],[913]⟩
def s6Step62EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨772,false⟩,780⟩,⟨⟨771,false⟩,855⟩,⟨⟨770,false⟩,833⟩,⟨⟨769,false⟩,877⟩]⟩
def s6Step62EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step62EarlyControlPositiveArena,[822],s6Step62EarlyControlEqualityArena,[875],⟨⟨888,false⟩,[⟨⟨822,false⟩,875⟩]⟩⟩
def s6Step62EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step62EarlyControlZeroArena,s6Step62EarlyControlZeroPlan,s6Step62EarlyControlClassPlan,s6Step62EarlyControlFlagArena,s6Step62EarlyControlFittedArena,s6Step62EarlyControlHistoryArena,s6Step62EarlyControlSigmaArena,s6Step62EarlyControlOutputArena,s6Step62EarlyControlLog⟩
private theorem s6Step62EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_zeroBorrow : s6Step62EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step62EarlyControlLog.zeroWork=some s6Step62EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step62EarlyControlArena s6Step62EarlyControlZeroArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step62EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step62EarlyControl_zero : compileHmrEqualityLog s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step62EarlyControlLog.zeroWork=some (s6Step62EarlyControlZeroArena,s6Step62EarlyControlLog.zeroWork,s6Step62EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step62EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step62EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step62EarlyControl_positiveBorrow : s6Step62EarlyControlZeroArena.checkBorrow (1) s6Step62EarlyControlLog.positiveWork=some s6Step62EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step62EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step62EarlyControlZeroArena s6Step62EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step62EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step62EarlyControl_classEqualityOwned : ([888, 822] : List Wire).toFinset⊆s6Step62EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_classEqualityBorrow : s6Step62EarlyControlPositiveArena.checkBorrow (([888, 822] : List Wire).length-1) s6Step62EarlyControlLog.classWork=some s6Step62EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step62EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step62EarlyControlPositiveArena s6Step62EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step62EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step62EarlyControl_classEquality : compileHmrEqualityLog s6Step62EarlyControlPositiveArena [888, 822] 0 s6Step62EarlyControlLog.classWork=some (s6Step62EarlyControlEqualityArena,s6Step62EarlyControlLog.classWork,s6Step62EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step62EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step62EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step62EarlyControl_classOwned : ([769, 877, 888] : List Wire).toFinset⊆s6Step62EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62EarlyControl_class : compileHmrSourceClassLog s6Step62EarlyControlZeroArena false 769 s6Step62EarlyControlZeroPlan.top 0 888 s6Step62EarlyControlLog.positiveWork s6Step62EarlyControlLog.classWork=some s6Step62EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step62EarlyControlClassPlan s6Step62EarlyControlZeroArena false 769 s6Step62EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step62EarlyControl_classOwned
  · exact s6Step62EarlyControl_positiveBorrow
  · exact s6Step62EarlyControl_classEquality
private theorem s6Step62EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step62EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_flagsBorrow : s6Step62EarlyControlEqualityArena.checkBorrow (6) s6Step62EarlyControlLog.flagWork=some s6Step62EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step62EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step62EarlyControlEqualityArena s6Step62EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step62EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step62EarlyControl_flags : compileHmrFlagsLog s6Step62EarlyControlClassPlan.equalityArena s6Step62EarlyControlClassPlan.equality.top 253 252 251 s6Step62EarlyControlLog.flagWork=some s6Step62EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step62EarlyControl_flagsOwned⟩
  · exact s6Step62EarlyControl_flagsBorrow
private theorem s6Step62EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step62EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step62EarlyControl_fitBorrow : s6Step62EarlyControlFlagArena.checkBorrow ((26-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step62EarlyControlLog.recordFresh=some s6Step62EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step62EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step62EarlyControlFittedArena,s6Step62EarlyControlFlagArena,s6Step62EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step62EarlyControl_fit : compileHmrRecordGrowLog s6Step62EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62EarlyControlLog.recordFresh=some s6Step62EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step62EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step62EarlyControl_fitBorrow
private theorem s6Step62EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_historyBorrow : s6Step62EarlyControlArena.checkBorrow ((26-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).length)) s6Step62EarlyControlLog.recordFresh=some s6Step62EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step62EarlyControlArena s6Step62EarlyControlHistoryArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step62EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step62EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step62EarlyControl_history : compileHmrRecordGrowLog s6Step62EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62EarlyControlLog.recordFresh=some s6Step62EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step62EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step62EarlyControl_historyBorrow
private theorem s6Step62EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step62EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlHistoryArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step62EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlHistoryArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_sigmaRelease : s6Step62EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step62EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step62EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step62EarlyControlHistoryArena s6Step62EarlyControlSigmaArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [888] rfl rfl
    decide +kernel
private theorem s6Step62EarlyControl_branchOwned : ([838] : List Wire).toFinset⊆s6Step62EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlSigmaArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62EarlyControl_branch : compileHmrBranchRetirement s6Step62EarlyControlSigmaArena 838=some s6Step62EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step62EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step62EarlyControlSigmaArena s6Step62EarlyControlOutputArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel
theorem s6Step62EarlyControl_sigma : compileHmrSigmaDropLog s6Step62EarlyControlHistoryArena false 0 0 254 888 []=some s6Step62EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step62EarlyControl_sigmaOwned⟩
  · exact s6Step62EarlyControl_sigmaRelease
theorem s6Step62EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step62EarlyControlLog.zeroWork).map Prod.snd=some (s6Step62EarlyControlLog.zeroWork,s6Step62EarlyControlZeroPlan) := by
  rw [s6Step62EarlyControl_zero]
  rfl
theorem s6Step62EarlyControl_classProjection : (compileHmrSourceClassLog s6Step62EarlyControlZeroArena false 769 s6Step62EarlyControlZeroPlan.top 0 888 s6Step62EarlyControlLog.positiveWork s6Step62EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step62EarlyControlClassPlan.positiveWork,s6Step62EarlyControlClassPlan.equalityWork,s6Step62EarlyControlClassPlan.equality) := by
  rw [s6Step62EarlyControl_class]
  rfl
theorem s6Step62EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step62EarlyControlClassPlan.equalityArena s6Step62EarlyControlClassPlan.equality.top 253 252 251 s6Step62EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step62EarlyControl_flags]
  rfl
theorem s6Step62EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step62EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step62EarlyControl_fit]
  rfl
theorem s6Step62EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step62EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step62EarlyControl_history]
  rfl
theorem s6Step62EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step62EarlyControlHistoryArena false 0 0 254 888 []).map (fun _ => true)=some true := by
  rw [s6Step62EarlyControl_sigma]
  rfl
theorem s6Step62EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step62EarlyControlSigmaArena 838).map (fun _ => true)=some true := by
  rw [s6Step62EarlyControl_branch]
  rfl
private theorem s6Step62EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step62EarlyControl_entryRecordOwned : ([838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] : List Wire).toFinset⊆s6Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62EarlyControl_logged : s6Step62EarlyControlPlan.Logged s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 888 254 253 252 251 838 26 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step62EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step62EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step62EarlyControl_zero
  · exact s6Step62EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step62EarlyControl_flags
  · exact s6Step62EarlyControl_fit
  · exact s6Step62EarlyControl_history
  · exact s6Step62EarlyControl_sigma
  · exact s6Step62EarlyControl_branch
theorem s6Step62EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 888 254 253 252 251 838 26 s6Step62EarlyControlLog=some s6Step62EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step62EarlyControlPlan s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 888 254 253 252 251 838 26 s6Step62EarlyControl_logged
theorem s6Step62EarlyControl_checked : (compileHmrEarlyControlLog s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 888 254 253 252 251 838 26 s6Step62EarlyControlLog).map (fun P => P.outputArena.live.card)=some 855 := by
  rw [s6Step62EarlyControl_plan_checked]
  decide +kernel

def s6Step63EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (913 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step63EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 825) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 847) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (913 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step63EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step63EarlyControlLog : HmrEarlyControlLog := ⟨[838, 833, 855, 780, 822],[875],[803],[922, 879, 784, 891, 846, 806],[824]⟩
def s6Step63EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,838⟩,⟨⟨772,false⟩,833⟩,⟨⟨771,false⟩,855⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,822⟩]⟩
def s6Step63EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step63EarlyControlPositiveArena,[875],s6Step63EarlyControlEqualityArena,[803],⟨⟨888,false⟩,[⟨⟨875,false⟩,803⟩]⟩⟩
def s6Step63EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step63EarlyControlZeroArena,s6Step63EarlyControlZeroPlan,s6Step63EarlyControlClassPlan,s6Step63EarlyControlFlagArena,s6Step63EarlyControlFittedArena,s6Step63EarlyControlHistoryArena,s6Step63EarlyControlSigmaArena,s6Step63EarlyControlOutputArena,s6Step63EarlyControlLog⟩
private theorem s6Step63EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_zeroBorrow : s6Step63EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step63EarlyControlLog.zeroWork=some s6Step63EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step63EarlyControlArena s6Step63EarlyControlZeroArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step63EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step63EarlyControl_zero : compileHmrEqualityLog s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step63EarlyControlLog.zeroWork=some (s6Step63EarlyControlZeroArena,s6Step63EarlyControlLog.zeroWork,s6Step63EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step63EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step63EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step63EarlyControl_positiveBorrow : s6Step63EarlyControlZeroArena.checkBorrow (1) s6Step63EarlyControlLog.positiveWork=some s6Step63EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step63EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step63EarlyControlZeroArena s6Step63EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step63EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step63EarlyControl_classEqualityOwned : ([888, 875] : List Wire).toFinset⊆s6Step63EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_classEqualityBorrow : s6Step63EarlyControlPositiveArena.checkBorrow (([888, 875] : List Wire).length-1) s6Step63EarlyControlLog.classWork=some s6Step63EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step63EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step63EarlyControlPositiveArena s6Step63EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step63EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step63EarlyControl_classEquality : compileHmrEqualityLog s6Step63EarlyControlPositiveArena [888, 875] 0 s6Step63EarlyControlLog.classWork=some (s6Step63EarlyControlEqualityArena,s6Step63EarlyControlLog.classWork,s6Step63EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step63EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step63EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step63EarlyControl_classOwned : ([769, 822, 888] : List Wire).toFinset⊆s6Step63EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63EarlyControl_class : compileHmrSourceClassLog s6Step63EarlyControlZeroArena false 769 s6Step63EarlyControlZeroPlan.top 0 888 s6Step63EarlyControlLog.positiveWork s6Step63EarlyControlLog.classWork=some s6Step63EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step63EarlyControlClassPlan s6Step63EarlyControlZeroArena false 769 s6Step63EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step63EarlyControl_classOwned
  · exact s6Step63EarlyControl_positiveBorrow
  · exact s6Step63EarlyControl_classEquality
private theorem s6Step63EarlyControl_flagsOwned : ([803, 253, 252, 251] : List Wire).toFinset⊆s6Step63EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_flagsBorrow : s6Step63EarlyControlEqualityArena.checkBorrow (6) s6Step63EarlyControlLog.flagWork=some s6Step63EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step63EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step63EarlyControlEqualityArena s6Step63EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step63EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step63EarlyControl_flags : compileHmrFlagsLog s6Step63EarlyControlClassPlan.equalityArena s6Step63EarlyControlClassPlan.equality.top 253 252 251 s6Step63EarlyControlLog.flagWork=some s6Step63EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step63EarlyControl_flagsOwned⟩
  · exact s6Step63EarlyControl_flagsBorrow
private theorem s6Step63EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] : List Wire).toFinset⊆s6Step63EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step63EarlyControl_fitBorrow : s6Step63EarlyControlFlagArena.checkBorrow ((27-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] : List Wire).length)) s6Step63EarlyControlLog.recordFresh=some s6Step63EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step63EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step63EarlyControlFittedArena,s6Step63EarlyControlFlagArena,s6Step63EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega
theorem s6Step63EarlyControl_fit : compileHmrRecordGrowLog s6Step63EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63EarlyControlLog.recordFresh=some s6Step63EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step63EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step63EarlyControl_fitBorrow
private theorem s6Step63EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] : List Wire).toFinset⊆s6Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_historyBorrow : s6Step63EarlyControlArena.checkBorrow ((27-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] : List Wire).length)) s6Step63EarlyControlLog.recordFresh=some s6Step63EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step63EarlyControlArena s6Step63EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step63EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step63EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step63EarlyControl_history : compileHmrRecordGrowLog s6Step63EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63EarlyControlLog.recordFresh=some s6Step63EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step63EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step63EarlyControl_historyBorrow
private theorem s6Step63EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step63EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step63EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlHistoryArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_sigmaRelease : s6Step63EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step63EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step63EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step63EarlyControlHistoryArena s6Step63EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [888] rfl rfl
    decide +kernel
private theorem s6Step63EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s6Step63EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlSigmaArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63EarlyControl_branch : compileHmrBranchRetirement s6Step63EarlyControlSigmaArena 778=some s6Step63EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step63EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step63EarlyControlSigmaArena s6Step63EarlyControlOutputArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,825),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [778] rfl rfl
    decide +kernel
theorem s6Step63EarlyControl_sigma : compileHmrSigmaDropLog s6Step63EarlyControlHistoryArena false 0 0 254 888 []=some s6Step63EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step63EarlyControl_sigmaOwned⟩
  · exact s6Step63EarlyControl_sigmaRelease
theorem s6Step63EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step63EarlyControlLog.zeroWork).map Prod.snd=some (s6Step63EarlyControlLog.zeroWork,s6Step63EarlyControlZeroPlan) := by
  rw [s6Step63EarlyControl_zero]
  rfl
theorem s6Step63EarlyControl_classProjection : (compileHmrSourceClassLog s6Step63EarlyControlZeroArena false 769 s6Step63EarlyControlZeroPlan.top 0 888 s6Step63EarlyControlLog.positiveWork s6Step63EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step63EarlyControlClassPlan.positiveWork,s6Step63EarlyControlClassPlan.equalityWork,s6Step63EarlyControlClassPlan.equality) := by
  rw [s6Step63EarlyControl_class]
  rfl
theorem s6Step63EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step63EarlyControlClassPlan.equalityArena s6Step63EarlyControlClassPlan.equality.top 253 252 251 s6Step63EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step63EarlyControl_flags]
  rfl
theorem s6Step63EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step63EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step63EarlyControl_fit]
  rfl
theorem s6Step63EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step63EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step63EarlyControl_history]
  rfl
theorem s6Step63EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step63EarlyControlHistoryArena false 0 0 254 888 []).map (fun _ => true)=some true := by
  rw [s6Step63EarlyControl_sigma]
  rfl
theorem s6Step63EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step63EarlyControlSigmaArena 778).map (fun _ => true)=some true := by
  rw [s6Step63EarlyControl_branch]
  rfl
private theorem s6Step63EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step63EarlyControl_entryRecordOwned : ([778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] : List Wire).toFinset⊆s6Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63EarlyControl_logged : s6Step63EarlyControlPlan.Logged s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 769 888 254 253 252 251 778 27 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step63EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step63EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step63EarlyControl_zero
  · exact s6Step63EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step63EarlyControl_flags
  · exact s6Step63EarlyControl_fit
  · exact s6Step63EarlyControl_history
  · exact s6Step63EarlyControl_sigma
  · exact s6Step63EarlyControl_branch
theorem s6Step63EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 769 888 254 253 252 251 778 27 s6Step63EarlyControlLog=some s6Step63EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step63EarlyControlPlan s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 769 888 254 253 252 251 778 27 s6Step63EarlyControl_logged
theorem s6Step63EarlyControl_checked : (compileHmrEarlyControlLog s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 769 888 254 253 252 251 778 27 s6Step63EarlyControlLog).map (fun P => P.outputArena.live.card)=some 857 := by
  rw [s6Step63EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
