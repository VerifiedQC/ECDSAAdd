import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl5
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl6Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s6Step48EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step48EarlyControlLog : HmrEarlyControlLog := ⟨[789, 793, 875, 823, 865],[868],[805],[877, 855, 803, 922, 879, 784],[]⟩
def s6Step48EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,789⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,823⟩,⟨⟨769,false⟩,865⟩]⟩
def s6Step48EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step48EarlyControlPositiveArena,[868],s6Step48EarlyControlEqualityArena,[805],⟨⟨845,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step48EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step48EarlyControlZeroArena,s6Step48EarlyControlZeroPlan,s6Step48EarlyControlClassPlan,s6Step48EarlyControlFlagArena,s6Step48EarlyControlFittedArena,s6Step48EarlyControlHistoryArena,s6Step48EarlyControlSigmaArena,s6Step48EarlyControlOutputArena,s6Step48EarlyControlLog⟩
private theorem s6Step48EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_zeroBorrow : s6Step48EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step48EarlyControlLog.zeroWork=some s6Step48EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step48EarlyControlArena s6Step48EarlyControlZeroArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step48EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step48EarlyControl_zero : compileHmrEqualityLog s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step48EarlyControlLog.zeroWork=some (s6Step48EarlyControlZeroArena,s6Step48EarlyControlLog.zeroWork,s6Step48EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step48EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step48EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step48EarlyControl_positiveBorrow : s6Step48EarlyControlZeroArena.checkBorrow (1) s6Step48EarlyControlLog.positiveWork=some s6Step48EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step48EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step48EarlyControlZeroArena s6Step48EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step48EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step48EarlyControl_classEqualityOwned : ([845, 868] : List Wire).toFinset⊆s6Step48EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_classEqualityBorrow : s6Step48EarlyControlPositiveArena.checkBorrow (([845, 868] : List Wire).length-1) s6Step48EarlyControlLog.classWork=some s6Step48EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step48EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step48EarlyControlPositiveArena s6Step48EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step48EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step48EarlyControl_classEquality : compileHmrEqualityLog s6Step48EarlyControlPositiveArena [845, 868] 0 s6Step48EarlyControlLog.classWork=some (s6Step48EarlyControlEqualityArena,s6Step48EarlyControlLog.classWork,s6Step48EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step48EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step48EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step48EarlyControl_classOwned : ([769, 865, 845] : List Wire).toFinset⊆s6Step48EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48EarlyControl_class : compileHmrSourceClassLog s6Step48EarlyControlZeroArena false 769 s6Step48EarlyControlZeroPlan.top 0 845 s6Step48EarlyControlLog.positiveWork s6Step48EarlyControlLog.classWork=some s6Step48EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step48EarlyControlClassPlan s6Step48EarlyControlZeroArena false 769 s6Step48EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step48EarlyControl_classOwned
  · exact s6Step48EarlyControl_positiveBorrow
  · exact s6Step48EarlyControl_classEquality
private theorem s6Step48EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step48EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_flagsBorrow : s6Step48EarlyControlEqualityArena.checkBorrow (6) s6Step48EarlyControlLog.flagWork=some s6Step48EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step48EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step48EarlyControlEqualityArena s6Step48EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step48EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step48EarlyControl_flags : compileHmrFlagsLog s6Step48EarlyControlClassPlan.equalityArena s6Step48EarlyControlClassPlan.equality.top 253 252 251 s6Step48EarlyControlLog.flagWork=some s6Step48EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step48EarlyControl_flagsOwned⟩
  · exact s6Step48EarlyControl_flagsBorrow
private theorem s6Step48EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).toFinset⊆s6Step48EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_fitBorrow : s6Step48EarlyControlFlagArena.checkBorrow ((21-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).length)) s6Step48EarlyControlLog.recordFresh=some s6Step48EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step48EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step48EarlyControlFlagArena s6Step48EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step48EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step48EarlyControl_fit : compileHmrRecordGrowLog s6Step48EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48EarlyControlLog.recordFresh=some s6Step48EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step48EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step48EarlyControl_fitBorrow
private theorem s6Step48EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).toFinset⊆s6Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_historyBorrow : s6Step48EarlyControlArena.checkBorrow ((21-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).length)) s6Step48EarlyControlLog.recordFresh=some s6Step48EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step48EarlyControlArena s6Step48EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step48EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step48EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step48EarlyControl_history : compileHmrRecordGrowLog s6Step48EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48EarlyControlLog.recordFresh=some s6Step48EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step48EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step48EarlyControl_historyBorrow
private theorem s6Step48EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step48EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step48EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_sigmaRelease : s6Step48EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step48EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step48EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step48EarlyControlHistoryArena s6Step48EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step48EarlyControl_branchOwned : ([863] : List Wire).toFinset⊆s6Step48EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48EarlyControl_branch : compileHmrBranchRetirement s6Step48EarlyControlSigmaArena 863=some s6Step48EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step48EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step48EarlyControlSigmaArena s6Step48EarlyControlOutputArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel
theorem s6Step48EarlyControl_sigma : compileHmrSigmaDropLog s6Step48EarlyControlHistoryArena false 0 0 254 845 []=some s6Step48EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step48EarlyControl_sigmaOwned⟩
  · exact s6Step48EarlyControl_sigmaRelease
theorem s6Step48EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step48EarlyControlLog.zeroWork).map Prod.snd=some (s6Step48EarlyControlLog.zeroWork,s6Step48EarlyControlZeroPlan) := by
  rw [s6Step48EarlyControl_zero]
  rfl
theorem s6Step48EarlyControl_classProjection : (compileHmrSourceClassLog s6Step48EarlyControlZeroArena false 769 s6Step48EarlyControlZeroPlan.top 0 845 s6Step48EarlyControlLog.positiveWork s6Step48EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step48EarlyControlClassPlan.positiveWork,s6Step48EarlyControlClassPlan.equalityWork,s6Step48EarlyControlClassPlan.equality) := by
  rw [s6Step48EarlyControl_class]
  rfl
theorem s6Step48EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step48EarlyControlClassPlan.equalityArena s6Step48EarlyControlClassPlan.equality.top 253 252 251 s6Step48EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step48EarlyControl_flags]
  rfl
theorem s6Step48EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step48EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step48EarlyControl_fit]
  rfl
theorem s6Step48EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step48EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step48EarlyControl_history]
  rfl
theorem s6Step48EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step48EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step48EarlyControl_sigma]
  rfl
theorem s6Step48EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step48EarlyControlSigmaArena 863).map (fun _ => true)=some true := by
  rw [s6Step48EarlyControl_branch]
  rfl
private theorem s6Step48EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step48EarlyControl_entryRecordOwned : ([863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).toFinset⊆s6Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48EarlyControl_logged : s6Step48EarlyControlPlan.Logged s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 863 21 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step48EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step48EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step48EarlyControl_zero
  · exact s6Step48EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step48EarlyControl_flags
  · exact s6Step48EarlyControl_fit
  · exact s6Step48EarlyControl_history
  · exact s6Step48EarlyControl_sigma
  · exact s6Step48EarlyControl_branch
theorem s6Step48EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 863 21 s6Step48EarlyControlLog=some s6Step48EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step48EarlyControlPlan s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 863 21 s6Step48EarlyControl_logged
theorem s6Step48EarlyControl_checked : (compileHmrEarlyControlLog s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 863 21 s6Step48EarlyControlLog).map (fun P => P.outputArena.live.card)=some 848 := by
  rw [s6Step48EarlyControl_plan_checked]
  decide +kernel

def s6Step49EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step49EarlyControlLog : HmrEarlyControlLog := ⟨[880, 823, 875, 863, 793],[868],[805],[877, 855, 803, 922, 879, 784],[837]⟩
def s6Step49EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,823⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,863⟩,⟨⟨769,false⟩,793⟩]⟩
def s6Step49EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step49EarlyControlPositiveArena,[868],s6Step49EarlyControlEqualityArena,[805],⟨⟨845,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step49EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step49EarlyControlZeroArena,s6Step49EarlyControlZeroPlan,s6Step49EarlyControlClassPlan,s6Step49EarlyControlFlagArena,s6Step49EarlyControlFittedArena,s6Step49EarlyControlHistoryArena,s6Step49EarlyControlSigmaArena,s6Step49EarlyControlOutputArena,s6Step49EarlyControlLog⟩
private theorem s6Step49EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_zeroBorrow : s6Step49EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step49EarlyControlLog.zeroWork=some s6Step49EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step49EarlyControlArena s6Step49EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step49EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step49EarlyControl_zero : compileHmrEqualityLog s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step49EarlyControlLog.zeroWork=some (s6Step49EarlyControlZeroArena,s6Step49EarlyControlLog.zeroWork,s6Step49EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step49EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step49EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step49EarlyControl_positiveBorrow : s6Step49EarlyControlZeroArena.checkBorrow (1) s6Step49EarlyControlLog.positiveWork=some s6Step49EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step49EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step49EarlyControlZeroArena s6Step49EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step49EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step49EarlyControl_classEqualityOwned : ([845, 868] : List Wire).toFinset⊆s6Step49EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_classEqualityBorrow : s6Step49EarlyControlPositiveArena.checkBorrow (([845, 868] : List Wire).length-1) s6Step49EarlyControlLog.classWork=some s6Step49EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step49EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step49EarlyControlPositiveArena s6Step49EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step49EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step49EarlyControl_classEquality : compileHmrEqualityLog s6Step49EarlyControlPositiveArena [845, 868] 0 s6Step49EarlyControlLog.classWork=some (s6Step49EarlyControlEqualityArena,s6Step49EarlyControlLog.classWork,s6Step49EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step49EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step49EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step49EarlyControl_classOwned : ([769, 793, 845] : List Wire).toFinset⊆s6Step49EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49EarlyControl_class : compileHmrSourceClassLog s6Step49EarlyControlZeroArena false 769 s6Step49EarlyControlZeroPlan.top 0 845 s6Step49EarlyControlLog.positiveWork s6Step49EarlyControlLog.classWork=some s6Step49EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step49EarlyControlClassPlan s6Step49EarlyControlZeroArena false 769 s6Step49EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step49EarlyControl_classOwned
  · exact s6Step49EarlyControl_positiveBorrow
  · exact s6Step49EarlyControl_classEquality
private theorem s6Step49EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step49EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_flagsBorrow : s6Step49EarlyControlEqualityArena.checkBorrow (6) s6Step49EarlyControlLog.flagWork=some s6Step49EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step49EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step49EarlyControlEqualityArena s6Step49EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step49EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step49EarlyControl_flags : compileHmrFlagsLog s6Step49EarlyControlClassPlan.equalityArena s6Step49EarlyControlClassPlan.equality.top 253 252 251 s6Step49EarlyControlLog.flagWork=some s6Step49EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step49EarlyControl_flagsOwned⟩
  · exact s6Step49EarlyControl_flagsBorrow
private theorem s6Step49EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).toFinset⊆s6Step49EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_fitBorrow : s6Step49EarlyControlFlagArena.checkBorrow ((22-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).length)) s6Step49EarlyControlLog.recordFresh=some s6Step49EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step49EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step49EarlyControlFlagArena s6Step49EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step49EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step49EarlyControl_fit : compileHmrRecordGrowLog s6Step49EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49EarlyControlLog.recordFresh=some s6Step49EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step49EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step49EarlyControl_fitBorrow
private theorem s6Step49EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).toFinset⊆s6Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_historyBorrow : s6Step49EarlyControlArena.checkBorrow ((22-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).length)) s6Step49EarlyControlLog.recordFresh=some s6Step49EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step49EarlyControlArena s6Step49EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step49EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step49EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step49EarlyControl_history : compileHmrRecordGrowLog s6Step49EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49EarlyControlLog.recordFresh=some s6Step49EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step49EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step49EarlyControl_historyBorrow
private theorem s6Step49EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step49EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step49EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_sigmaRelease : s6Step49EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step49EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step49EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step49EarlyControlHistoryArena s6Step49EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step49EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s6Step49EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49EarlyControl_branch : compileHmrBranchRetirement s6Step49EarlyControlSigmaArena 789=some s6Step49EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step49EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step49EarlyControlSigmaArena s6Step49EarlyControlOutputArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [789] rfl rfl
    decide +kernel
theorem s6Step49EarlyControl_sigma : compileHmrSigmaDropLog s6Step49EarlyControlHistoryArena false 0 0 254 845 []=some s6Step49EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step49EarlyControl_sigmaOwned⟩
  · exact s6Step49EarlyControl_sigmaRelease
theorem s6Step49EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step49EarlyControlLog.zeroWork).map Prod.snd=some (s6Step49EarlyControlLog.zeroWork,s6Step49EarlyControlZeroPlan) := by
  rw [s6Step49EarlyControl_zero]
  rfl
theorem s6Step49EarlyControl_classProjection : (compileHmrSourceClassLog s6Step49EarlyControlZeroArena false 769 s6Step49EarlyControlZeroPlan.top 0 845 s6Step49EarlyControlLog.positiveWork s6Step49EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step49EarlyControlClassPlan.positiveWork,s6Step49EarlyControlClassPlan.equalityWork,s6Step49EarlyControlClassPlan.equality) := by
  rw [s6Step49EarlyControl_class]
  rfl
theorem s6Step49EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step49EarlyControlClassPlan.equalityArena s6Step49EarlyControlClassPlan.equality.top 253 252 251 s6Step49EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step49EarlyControl_flags]
  rfl
theorem s6Step49EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step49EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step49EarlyControl_fit]
  rfl
theorem s6Step49EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step49EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step49EarlyControl_history]
  rfl
theorem s6Step49EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step49EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step49EarlyControl_sigma]
  rfl
theorem s6Step49EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step49EarlyControlSigmaArena 789).map (fun _ => true)=some true := by
  rw [s6Step49EarlyControl_branch]
  rfl
private theorem s6Step49EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step49EarlyControl_entryRecordOwned : ([789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] : List Wire).toFinset⊆s6Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49EarlyControl_logged : s6Step49EarlyControlPlan.Logged s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 789 22 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step49EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step49EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step49EarlyControl_zero
  · exact s6Step49EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step49EarlyControl_flags
  · exact s6Step49EarlyControl_fit
  · exact s6Step49EarlyControl_history
  · exact s6Step49EarlyControl_sigma
  · exact s6Step49EarlyControl_branch
theorem s6Step49EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 789 22 s6Step49EarlyControlLog=some s6Step49EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step49EarlyControlPlan s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 789 22 s6Step49EarlyControl_logged
theorem s6Step49EarlyControl_checked : (compileHmrEarlyControlLog s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 254 253 252 251 789 22 s6Step49EarlyControlLog).map (fun P => P.outputArena.live.card)=some 849 := by
  rw [s6Step49EarlyControl_plan_checked]
  decide +kernel

def s6Step50EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step50EarlyControlLog : HmrEarlyControlLog := ⟨[818, 789, 863, 793, 875],[823],[868],[805, 877, 855, 803, 922, 879],[]⟩
def s6Step50EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,818⟩,⟨⟨772,false⟩,789⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,875⟩]⟩
def s6Step50EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step50EarlyControlPositiveArena,[823],s6Step50EarlyControlEqualityArena,[868],⟨⟨845,false⟩,[⟨⟨823,false⟩,868⟩]⟩⟩
def s6Step50EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step50EarlyControlZeroArena,s6Step50EarlyControlZeroPlan,s6Step50EarlyControlClassPlan,s6Step50EarlyControlFlagArena,s6Step50EarlyControlFittedArena,s6Step50EarlyControlHistoryArena,s6Step50EarlyControlSigmaArena,s6Step50EarlyControlOutputArena,s6Step50EarlyControlLog⟩
private theorem s6Step50EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_zeroBorrow : s6Step50EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step50EarlyControlLog.zeroWork=some s6Step50EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step50EarlyControlArena s6Step50EarlyControlZeroArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step50EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step50EarlyControl_zero : compileHmrEqualityLog s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step50EarlyControlLog.zeroWork=some (s6Step50EarlyControlZeroArena,s6Step50EarlyControlLog.zeroWork,s6Step50EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step50EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step50EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step50EarlyControl_positiveBorrow : s6Step50EarlyControlZeroArena.checkBorrow (1) s6Step50EarlyControlLog.positiveWork=some s6Step50EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step50EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step50EarlyControlZeroArena s6Step50EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step50EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step50EarlyControl_classEqualityOwned : ([845, 823] : List Wire).toFinset⊆s6Step50EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_classEqualityBorrow : s6Step50EarlyControlPositiveArena.checkBorrow (([845, 823] : List Wire).length-1) s6Step50EarlyControlLog.classWork=some s6Step50EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step50EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step50EarlyControlPositiveArena s6Step50EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step50EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step50EarlyControl_classEquality : compileHmrEqualityLog s6Step50EarlyControlPositiveArena [845, 823] 0 s6Step50EarlyControlLog.classWork=some (s6Step50EarlyControlEqualityArena,s6Step50EarlyControlLog.classWork,s6Step50EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step50EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step50EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step50EarlyControl_classOwned : ([769, 875, 845] : List Wire).toFinset⊆s6Step50EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50EarlyControl_class : compileHmrSourceClassLog s6Step50EarlyControlZeroArena false 769 s6Step50EarlyControlZeroPlan.top 0 845 s6Step50EarlyControlLog.positiveWork s6Step50EarlyControlLog.classWork=some s6Step50EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step50EarlyControlClassPlan s6Step50EarlyControlZeroArena false 769 s6Step50EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step50EarlyControl_classOwned
  · exact s6Step50EarlyControl_positiveBorrow
  · exact s6Step50EarlyControl_classEquality
private theorem s6Step50EarlyControl_flagsOwned : ([868, 253, 252, 251] : List Wire).toFinset⊆s6Step50EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_flagsBorrow : s6Step50EarlyControlEqualityArena.checkBorrow (6) s6Step50EarlyControlLog.flagWork=some s6Step50EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step50EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step50EarlyControlEqualityArena s6Step50EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step50EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step50EarlyControl_flags : compileHmrFlagsLog s6Step50EarlyControlClassPlan.equalityArena s6Step50EarlyControlClassPlan.equality.top 253 252 251 s6Step50EarlyControlLog.flagWork=some s6Step50EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step50EarlyControl_flagsOwned⟩
  · exact s6Step50EarlyControl_flagsBorrow
private theorem s6Step50EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).toFinset⊆s6Step50EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_fitBorrow : s6Step50EarlyControlFlagArena.checkBorrow ((22-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).length)) s6Step50EarlyControlLog.recordFresh=some s6Step50EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step50EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step50EarlyControlFlagArena s6Step50EarlyControlFittedArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step50EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step50EarlyControl_fit : compileHmrRecordGrowLog s6Step50EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50EarlyControlLog.recordFresh=some s6Step50EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step50EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step50EarlyControl_fitBorrow
private theorem s6Step50EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).toFinset⊆s6Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_historyBorrow : s6Step50EarlyControlArena.checkBorrow ((22-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).length)) s6Step50EarlyControlLog.recordFresh=some s6Step50EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step50EarlyControlArena s6Step50EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step50EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step50EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step50EarlyControl_history : compileHmrRecordGrowLog s6Step50EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50EarlyControlLog.recordFresh=some s6Step50EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step50EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step50EarlyControl_historyBorrow
private theorem s6Step50EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step50EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step50EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_sigmaRelease : s6Step50EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step50EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step50EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step50EarlyControlHistoryArena s6Step50EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step50EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step50EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50EarlyControl_branch : compileHmrBranchRetirement s6Step50EarlyControlSigmaArena 880=some s6Step50EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step50EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step50EarlyControlSigmaArena s6Step50EarlyControlOutputArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel
theorem s6Step50EarlyControl_sigma : compileHmrSigmaDropLog s6Step50EarlyControlHistoryArena false 0 0 254 845 []=some s6Step50EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step50EarlyControl_sigmaOwned⟩
  · exact s6Step50EarlyControl_sigmaRelease
theorem s6Step50EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step50EarlyControlLog.zeroWork).map Prod.snd=some (s6Step50EarlyControlLog.zeroWork,s6Step50EarlyControlZeroPlan) := by
  rw [s6Step50EarlyControl_zero]
  rfl
theorem s6Step50EarlyControl_classProjection : (compileHmrSourceClassLog s6Step50EarlyControlZeroArena false 769 s6Step50EarlyControlZeroPlan.top 0 845 s6Step50EarlyControlLog.positiveWork s6Step50EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step50EarlyControlClassPlan.positiveWork,s6Step50EarlyControlClassPlan.equalityWork,s6Step50EarlyControlClassPlan.equality) := by
  rw [s6Step50EarlyControl_class]
  rfl
theorem s6Step50EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step50EarlyControlClassPlan.equalityArena s6Step50EarlyControlClassPlan.equality.top 253 252 251 s6Step50EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step50EarlyControl_flags]
  rfl
theorem s6Step50EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step50EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step50EarlyControl_fit]
  rfl
theorem s6Step50EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step50EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step50EarlyControl_history]
  rfl
theorem s6Step50EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step50EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step50EarlyControl_sigma]
  rfl
theorem s6Step50EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step50EarlyControlSigmaArena 880).map (fun _ => true)=some true := by
  rw [s6Step50EarlyControl_branch]
  rfl
private theorem s6Step50EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step50EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).toFinset⊆s6Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50EarlyControl_logged : s6Step50EarlyControlPlan.Logged s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 845 254 253 252 251 880 22 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step50EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step50EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step50EarlyControl_zero
  · exact s6Step50EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step50EarlyControl_flags
  · exact s6Step50EarlyControl_fit
  · exact s6Step50EarlyControl_history
  · exact s6Step50EarlyControl_sigma
  · exact s6Step50EarlyControl_branch
theorem s6Step50EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 845 254 253 252 251 880 22 s6Step50EarlyControlLog=some s6Step50EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step50EarlyControlPlan s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 845 254 253 252 251 880 22 s6Step50EarlyControl_logged
theorem s6Step50EarlyControl_checked : (compileHmrEarlyControlLog s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 845 254 253 252 251 880 22 s6Step50EarlyControlLog).map (fun P => P.outputArena.live.card)=some 848 := by
  rw [s6Step50EarlyControl_plan_checked]
  decide +kernel

def s6Step51EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step51EarlyControlLog : HmrEarlyControlLog := ⟨[864, 875, 793, 880, 863],[868],[805],[877, 855, 803, 922, 879, 784],[788]⟩
def s6Step51EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,880⟩,⟨⟨769,false⟩,863⟩]⟩
def s6Step51EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step51EarlyControlPositiveArena,[868],s6Step51EarlyControlEqualityArena,[805],⟨⟨818,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step51EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step51EarlyControlZeroArena,s6Step51EarlyControlZeroPlan,s6Step51EarlyControlClassPlan,s6Step51EarlyControlFlagArena,s6Step51EarlyControlFittedArena,s6Step51EarlyControlHistoryArena,s6Step51EarlyControlSigmaArena,s6Step51EarlyControlOutputArena,s6Step51EarlyControlLog⟩
private theorem s6Step51EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_zeroBorrow : s6Step51EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step51EarlyControlLog.zeroWork=some s6Step51EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step51EarlyControlArena s6Step51EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step51EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step51EarlyControl_zero : compileHmrEqualityLog s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step51EarlyControlLog.zeroWork=some (s6Step51EarlyControlZeroArena,s6Step51EarlyControlLog.zeroWork,s6Step51EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step51EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step51EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step51EarlyControl_positiveBorrow : s6Step51EarlyControlZeroArena.checkBorrow (1) s6Step51EarlyControlLog.positiveWork=some s6Step51EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step51EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step51EarlyControlZeroArena s6Step51EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step51EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step51EarlyControl_classEqualityOwned : ([818, 868] : List Wire).toFinset⊆s6Step51EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_classEqualityBorrow : s6Step51EarlyControlPositiveArena.checkBorrow (([818, 868] : List Wire).length-1) s6Step51EarlyControlLog.classWork=some s6Step51EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step51EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step51EarlyControlPositiveArena s6Step51EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step51EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step51EarlyControl_classEquality : compileHmrEqualityLog s6Step51EarlyControlPositiveArena [818, 868] 0 s6Step51EarlyControlLog.classWork=some (s6Step51EarlyControlEqualityArena,s6Step51EarlyControlLog.classWork,s6Step51EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step51EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step51EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step51EarlyControl_classOwned : ([769, 863, 818] : List Wire).toFinset⊆s6Step51EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51EarlyControl_class : compileHmrSourceClassLog s6Step51EarlyControlZeroArena false 769 s6Step51EarlyControlZeroPlan.top 0 818 s6Step51EarlyControlLog.positiveWork s6Step51EarlyControlLog.classWork=some s6Step51EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step51EarlyControlClassPlan s6Step51EarlyControlZeroArena false 769 s6Step51EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step51EarlyControl_classOwned
  · exact s6Step51EarlyControl_positiveBorrow
  · exact s6Step51EarlyControl_classEquality
private theorem s6Step51EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step51EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_flagsBorrow : s6Step51EarlyControlEqualityArena.checkBorrow (6) s6Step51EarlyControlLog.flagWork=some s6Step51EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step51EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step51EarlyControlEqualityArena s6Step51EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step51EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step51EarlyControl_flags : compileHmrFlagsLog s6Step51EarlyControlClassPlan.equalityArena s6Step51EarlyControlClassPlan.equality.top 253 252 251 s6Step51EarlyControlLog.flagWork=some s6Step51EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step51EarlyControl_flagsOwned⟩
  · exact s6Step51EarlyControl_flagsBorrow
private theorem s6Step51EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).toFinset⊆s6Step51EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_fitBorrow : s6Step51EarlyControlFlagArena.checkBorrow ((23-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).length)) s6Step51EarlyControlLog.recordFresh=some s6Step51EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step51EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step51EarlyControlFlagArena s6Step51EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step51EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step51EarlyControl_fit : compileHmrRecordGrowLog s6Step51EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51EarlyControlLog.recordFresh=some s6Step51EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step51EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step51EarlyControl_fitBorrow
private theorem s6Step51EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).toFinset⊆s6Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_historyBorrow : s6Step51EarlyControlArena.checkBorrow ((23-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).length)) s6Step51EarlyControlLog.recordFresh=some s6Step51EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step51EarlyControlArena s6Step51EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step51EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step51EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step51EarlyControl_history : compileHmrRecordGrowLog s6Step51EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51EarlyControlLog.recordFresh=some s6Step51EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step51EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step51EarlyControl_historyBorrow
private theorem s6Step51EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step51EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step51EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_sigmaRelease : s6Step51EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step51EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step51EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step51EarlyControlHistoryArena s6Step51EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [818] rfl rfl
    decide +kernel
private theorem s6Step51EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s6Step51EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51EarlyControl_branch : compileHmrBranchRetirement s6Step51EarlyControlSigmaArena 789=some s6Step51EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step51EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step51EarlyControlSigmaArena s6Step51EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [789] rfl rfl
    decide +kernel
theorem s6Step51EarlyControl_sigma : compileHmrSigmaDropLog s6Step51EarlyControlHistoryArena false 0 0 254 818 []=some s6Step51EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step51EarlyControl_sigmaOwned⟩
  · exact s6Step51EarlyControl_sigmaRelease
theorem s6Step51EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step51EarlyControlLog.zeroWork).map Prod.snd=some (s6Step51EarlyControlLog.zeroWork,s6Step51EarlyControlZeroPlan) := by
  rw [s6Step51EarlyControl_zero]
  rfl
theorem s6Step51EarlyControl_classProjection : (compileHmrSourceClassLog s6Step51EarlyControlZeroArena false 769 s6Step51EarlyControlZeroPlan.top 0 818 s6Step51EarlyControlLog.positiveWork s6Step51EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step51EarlyControlClassPlan.positiveWork,s6Step51EarlyControlClassPlan.equalityWork,s6Step51EarlyControlClassPlan.equality) := by
  rw [s6Step51EarlyControl_class]
  rfl
theorem s6Step51EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step51EarlyControlClassPlan.equalityArena s6Step51EarlyControlClassPlan.equality.top 253 252 251 s6Step51EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step51EarlyControl_flags]
  rfl
theorem s6Step51EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step51EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step51EarlyControl_fit]
  rfl
theorem s6Step51EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step51EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step51EarlyControl_history]
  rfl
theorem s6Step51EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step51EarlyControlHistoryArena false 0 0 254 818 []).map (fun _ => true)=some true := by
  rw [s6Step51EarlyControl_sigma]
  rfl
theorem s6Step51EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step51EarlyControlSigmaArena 789).map (fun _ => true)=some true := by
  rw [s6Step51EarlyControl_branch]
  rfl
private theorem s6Step51EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step51EarlyControl_entryRecordOwned : ([789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] : List Wire).toFinset⊆s6Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51EarlyControl_logged : s6Step51EarlyControlPlan.Logged s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 818 254 253 252 251 789 23 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step51EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step51EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step51EarlyControl_zero
  · exact s6Step51EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step51EarlyControl_flags
  · exact s6Step51EarlyControl_fit
  · exact s6Step51EarlyControl_history
  · exact s6Step51EarlyControl_sigma
  · exact s6Step51EarlyControl_branch
theorem s6Step51EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 818 254 253 252 251 789 23 s6Step51EarlyControlLog=some s6Step51EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step51EarlyControlPlan s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 818 254 253 252 251 789 23 s6Step51EarlyControl_logged
theorem s6Step51EarlyControl_checked : (compileHmrEarlyControlLog s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 818 254 253 252 251 789 23 s6Step51EarlyControlLog).map (fun P => P.outputArena.live.card)=some 850 := by
  rw [s6Step51EarlyControl_plan_checked]
  decide +kernel

def s6Step52EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step52EarlyControlLog : HmrEarlyControlLog := ⟨[828, 892, 789, 880, 863],[793],[875],[868, 805, 877, 855, 803, 922],[]⟩
def s6Step52EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,828⟩,⟨⟨772,false⟩,892⟩,⟨⟨771,false⟩,789⟩,⟨⟨770,false⟩,880⟩,⟨⟨769,false⟩,863⟩]⟩
def s6Step52EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step52EarlyControlPositiveArena,[793],s6Step52EarlyControlEqualityArena,[875],⟨⟨818,false⟩,[⟨⟨793,false⟩,875⟩]⟩⟩
def s6Step52EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step52EarlyControlZeroArena,s6Step52EarlyControlZeroPlan,s6Step52EarlyControlClassPlan,s6Step52EarlyControlFlagArena,s6Step52EarlyControlFittedArena,s6Step52EarlyControlHistoryArena,s6Step52EarlyControlSigmaArena,s6Step52EarlyControlOutputArena,s6Step52EarlyControlLog⟩
private theorem s6Step52EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_zeroBorrow : s6Step52EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step52EarlyControlLog.zeroWork=some s6Step52EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step52EarlyControlArena s6Step52EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step52EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step52EarlyControl_zero : compileHmrEqualityLog s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step52EarlyControlLog.zeroWork=some (s6Step52EarlyControlZeroArena,s6Step52EarlyControlLog.zeroWork,s6Step52EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step52EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step52EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step52EarlyControl_positiveBorrow : s6Step52EarlyControlZeroArena.checkBorrow (1) s6Step52EarlyControlLog.positiveWork=some s6Step52EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step52EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step52EarlyControlZeroArena s6Step52EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step52EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step52EarlyControl_classEqualityOwned : ([818, 793] : List Wire).toFinset⊆s6Step52EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_classEqualityBorrow : s6Step52EarlyControlPositiveArena.checkBorrow (([818, 793] : List Wire).length-1) s6Step52EarlyControlLog.classWork=some s6Step52EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step52EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step52EarlyControlPositiveArena s6Step52EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step52EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step52EarlyControl_classEquality : compileHmrEqualityLog s6Step52EarlyControlPositiveArena [818, 793] 0 s6Step52EarlyControlLog.classWork=some (s6Step52EarlyControlEqualityArena,s6Step52EarlyControlLog.classWork,s6Step52EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step52EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step52EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step52EarlyControl_classOwned : ([769, 863, 818] : List Wire).toFinset⊆s6Step52EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52EarlyControl_class : compileHmrSourceClassLog s6Step52EarlyControlZeroArena false 769 s6Step52EarlyControlZeroPlan.top 0 818 s6Step52EarlyControlLog.positiveWork s6Step52EarlyControlLog.classWork=some s6Step52EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step52EarlyControlClassPlan s6Step52EarlyControlZeroArena false 769 s6Step52EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step52EarlyControl_classOwned
  · exact s6Step52EarlyControl_positiveBorrow
  · exact s6Step52EarlyControl_classEquality
private theorem s6Step52EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step52EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_flagsBorrow : s6Step52EarlyControlEqualityArena.checkBorrow (6) s6Step52EarlyControlLog.flagWork=some s6Step52EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step52EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step52EarlyControlEqualityArena s6Step52EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step52EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step52EarlyControl_flags : compileHmrFlagsLog s6Step52EarlyControlClassPlan.equalityArena s6Step52EarlyControlClassPlan.equality.top 253 252 251 s6Step52EarlyControlLog.flagWork=some s6Step52EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step52EarlyControl_flagsOwned⟩
  · exact s6Step52EarlyControl_flagsBorrow
private theorem s6Step52EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).toFinset⊆s6Step52EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_fitBorrow : s6Step52EarlyControlFlagArena.checkBorrow ((23-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).length)) s6Step52EarlyControlLog.recordFresh=some s6Step52EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step52EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step52EarlyControlFlagArena s6Step52EarlyControlFittedArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step52EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step52EarlyControl_fit : compileHmrRecordGrowLog s6Step52EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52EarlyControlLog.recordFresh=some s6Step52EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step52EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step52EarlyControl_fitBorrow
private theorem s6Step52EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).toFinset⊆s6Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_historyBorrow : s6Step52EarlyControlArena.checkBorrow ((23-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).length)) s6Step52EarlyControlLog.recordFresh=some s6Step52EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step52EarlyControlArena s6Step52EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step52EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step52EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step52EarlyControl_history : compileHmrRecordGrowLog s6Step52EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52EarlyControlLog.recordFresh=some s6Step52EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step52EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step52EarlyControl_historyBorrow
private theorem s6Step52EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step52EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step52EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_sigmaRelease : s6Step52EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step52EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step52EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step52EarlyControlHistoryArena s6Step52EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [818] rfl rfl
    decide +kernel
private theorem s6Step52EarlyControl_branchOwned : ([864] : List Wire).toFinset⊆s6Step52EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52EarlyControl_branch : compileHmrBranchRetirement s6Step52EarlyControlSigmaArena 864=some s6Step52EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step52EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step52EarlyControlSigmaArena s6Step52EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [864] rfl rfl
    decide +kernel
theorem s6Step52EarlyControl_sigma : compileHmrSigmaDropLog s6Step52EarlyControlHistoryArena false 0 0 254 818 []=some s6Step52EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step52EarlyControl_sigmaOwned⟩
  · exact s6Step52EarlyControl_sigmaRelease
theorem s6Step52EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step52EarlyControlLog.zeroWork).map Prod.snd=some (s6Step52EarlyControlLog.zeroWork,s6Step52EarlyControlZeroPlan) := by
  rw [s6Step52EarlyControl_zero]
  rfl
theorem s6Step52EarlyControl_classProjection : (compileHmrSourceClassLog s6Step52EarlyControlZeroArena false 769 s6Step52EarlyControlZeroPlan.top 0 818 s6Step52EarlyControlLog.positiveWork s6Step52EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step52EarlyControlClassPlan.positiveWork,s6Step52EarlyControlClassPlan.equalityWork,s6Step52EarlyControlClassPlan.equality) := by
  rw [s6Step52EarlyControl_class]
  rfl
theorem s6Step52EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step52EarlyControlClassPlan.equalityArena s6Step52EarlyControlClassPlan.equality.top 253 252 251 s6Step52EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step52EarlyControl_flags]
  rfl
theorem s6Step52EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step52EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step52EarlyControl_fit]
  rfl
theorem s6Step52EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step52EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step52EarlyControl_history]
  rfl
theorem s6Step52EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step52EarlyControlHistoryArena false 0 0 254 818 []).map (fun _ => true)=some true := by
  rw [s6Step52EarlyControl_sigma]
  rfl
theorem s6Step52EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step52EarlyControlSigmaArena 864).map (fun _ => true)=some true := by
  rw [s6Step52EarlyControl_branch]
  rfl
private theorem s6Step52EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step52EarlyControl_entryRecordOwned : ([864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).toFinset⊆s6Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52EarlyControl_logged : s6Step52EarlyControlPlan.Logged s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 864 23 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step52EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step52EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step52EarlyControl_zero
  · exact s6Step52EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step52EarlyControl_flags
  · exact s6Step52EarlyControl_fit
  · exact s6Step52EarlyControl_history
  · exact s6Step52EarlyControl_sigma
  · exact s6Step52EarlyControl_branch
theorem s6Step52EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 864 23 s6Step52EarlyControlLog=some s6Step52EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step52EarlyControlPlan s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 864 23 s6Step52EarlyControl_logged
theorem s6Step52EarlyControl_checked : (compileHmrEarlyControlLog s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 864 23 s6Step52EarlyControlLog).map (fun P => P.outputArena.live.card)=some 848 := by
  rw [s6Step52EarlyControl_plan_checked]
  decide +kernel

def s6Step53EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step53EarlyControlLog : HmrEarlyControlLog := ⟨[880, 789, 892, 793, 875],[868],[805],[877, 855, 803, 922, 879, 784],[889]⟩
def s6Step53EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,789⟩,⟨⟨771,false⟩,892⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,875⟩]⟩
def s6Step53EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step53EarlyControlPositiveArena,[868],s6Step53EarlyControlEqualityArena,[805],⟨⟨818,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step53EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step53EarlyControlZeroArena,s6Step53EarlyControlZeroPlan,s6Step53EarlyControlClassPlan,s6Step53EarlyControlFlagArena,s6Step53EarlyControlFittedArena,s6Step53EarlyControlHistoryArena,s6Step53EarlyControlSigmaArena,s6Step53EarlyControlOutputArena,s6Step53EarlyControlLog⟩
private theorem s6Step53EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_zeroBorrow : s6Step53EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step53EarlyControlLog.zeroWork=some s6Step53EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step53EarlyControlArena s6Step53EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step53EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step53EarlyControl_zero : compileHmrEqualityLog s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step53EarlyControlLog.zeroWork=some (s6Step53EarlyControlZeroArena,s6Step53EarlyControlLog.zeroWork,s6Step53EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step53EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step53EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step53EarlyControl_positiveBorrow : s6Step53EarlyControlZeroArena.checkBorrow (1) s6Step53EarlyControlLog.positiveWork=some s6Step53EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step53EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step53EarlyControlZeroArena s6Step53EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step53EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step53EarlyControl_classEqualityOwned : ([818, 868] : List Wire).toFinset⊆s6Step53EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_classEqualityBorrow : s6Step53EarlyControlPositiveArena.checkBorrow (([818, 868] : List Wire).length-1) s6Step53EarlyControlLog.classWork=some s6Step53EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step53EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step53EarlyControlPositiveArena s6Step53EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step53EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step53EarlyControl_classEquality : compileHmrEqualityLog s6Step53EarlyControlPositiveArena [818, 868] 0 s6Step53EarlyControlLog.classWork=some (s6Step53EarlyControlEqualityArena,s6Step53EarlyControlLog.classWork,s6Step53EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step53EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step53EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step53EarlyControl_classOwned : ([769, 875, 818] : List Wire).toFinset⊆s6Step53EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53EarlyControl_class : compileHmrSourceClassLog s6Step53EarlyControlZeroArena false 769 s6Step53EarlyControlZeroPlan.top 0 818 s6Step53EarlyControlLog.positiveWork s6Step53EarlyControlLog.classWork=some s6Step53EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step53EarlyControlClassPlan s6Step53EarlyControlZeroArena false 769 s6Step53EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step53EarlyControl_classOwned
  · exact s6Step53EarlyControl_positiveBorrow
  · exact s6Step53EarlyControl_classEquality
private theorem s6Step53EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step53EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_flagsBorrow : s6Step53EarlyControlEqualityArena.checkBorrow (6) s6Step53EarlyControlLog.flagWork=some s6Step53EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step53EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step53EarlyControlEqualityArena s6Step53EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step53EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step53EarlyControl_flags : compileHmrFlagsLog s6Step53EarlyControlClassPlan.equalityArena s6Step53EarlyControlClassPlan.equality.top 253 252 251 s6Step53EarlyControlLog.flagWork=some s6Step53EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step53EarlyControl_flagsOwned⟩
  · exact s6Step53EarlyControl_flagsBorrow
private theorem s6Step53EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).toFinset⊆s6Step53EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlFlagArena (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_fitBorrow : s6Step53EarlyControlFlagArena.checkBorrow ((24-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).length)) s6Step53EarlyControlLog.recordFresh=some s6Step53EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step53EarlyControlFlagArena (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step53EarlyControlFlagArena s6Step53EarlyControlFittedArena (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step53EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step53EarlyControl_fit : compileHmrRecordGrowLog s6Step53EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53EarlyControlLog.recordFresh=some s6Step53EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step53EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step53EarlyControl_fitBorrow
private theorem s6Step53EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).toFinset⊆s6Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_historyBorrow : s6Step53EarlyControlArena.checkBorrow ((24-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).length)) s6Step53EarlyControlLog.recordFresh=some s6Step53EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step53EarlyControlArena s6Step53EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step53EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step53EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step53EarlyControl_history : compileHmrRecordGrowLog s6Step53EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53EarlyControlLog.recordFresh=some s6Step53EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step53EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step53EarlyControl_historyBorrow
private theorem s6Step53EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step53EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step53EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_sigmaRelease : s6Step53EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step53EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step53EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step53EarlyControlHistoryArena s6Step53EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [818] rfl rfl
    decide +kernel
private theorem s6Step53EarlyControl_branchOwned : ([828] : List Wire).toFinset⊆s6Step53EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53EarlyControl_branch : compileHmrBranchRetirement s6Step53EarlyControlSigmaArena 828=some s6Step53EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step53EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step53EarlyControlSigmaArena s6Step53EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [828] rfl rfl
    decide +kernel
theorem s6Step53EarlyControl_sigma : compileHmrSigmaDropLog s6Step53EarlyControlHistoryArena false 0 0 254 818 []=some s6Step53EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step53EarlyControl_sigmaOwned⟩
  · exact s6Step53EarlyControl_sigmaRelease
theorem s6Step53EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step53EarlyControlLog.zeroWork).map Prod.snd=some (s6Step53EarlyControlLog.zeroWork,s6Step53EarlyControlZeroPlan) := by
  rw [s6Step53EarlyControl_zero]
  rfl
theorem s6Step53EarlyControl_classProjection : (compileHmrSourceClassLog s6Step53EarlyControlZeroArena false 769 s6Step53EarlyControlZeroPlan.top 0 818 s6Step53EarlyControlLog.positiveWork s6Step53EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step53EarlyControlClassPlan.positiveWork,s6Step53EarlyControlClassPlan.equalityWork,s6Step53EarlyControlClassPlan.equality) := by
  rw [s6Step53EarlyControl_class]
  rfl
theorem s6Step53EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step53EarlyControlClassPlan.equalityArena s6Step53EarlyControlClassPlan.equality.top 253 252 251 s6Step53EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step53EarlyControl_flags]
  rfl
theorem s6Step53EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step53EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step53EarlyControl_fit]
  rfl
theorem s6Step53EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step53EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step53EarlyControl_history]
  rfl
theorem s6Step53EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step53EarlyControlHistoryArena false 0 0 254 818 []).map (fun _ => true)=some true := by
  rw [s6Step53EarlyControl_sigma]
  rfl
theorem s6Step53EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step53EarlyControlSigmaArena 828).map (fun _ => true)=some true := by
  rw [s6Step53EarlyControl_branch]
  rfl
private theorem s6Step53EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step53EarlyControl_entryRecordOwned : ([828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] : List Wire).toFinset⊆s6Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53EarlyControl_logged : s6Step53EarlyControlPlan.Logged s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 828 24 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step53EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step53EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step53EarlyControl_zero
  · exact s6Step53EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step53EarlyControl_flags
  · exact s6Step53EarlyControl_fit
  · exact s6Step53EarlyControl_history
  · exact s6Step53EarlyControl_sigma
  · exact s6Step53EarlyControl_branch
theorem s6Step53EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 828 24 s6Step53EarlyControlLog=some s6Step53EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step53EarlyControlPlan s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 828 24 s6Step53EarlyControl_logged
theorem s6Step53EarlyControl_checked : (compileHmrEarlyControlLog s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 254 253 252 251 828 24 s6Step53EarlyControlLog).map (fun P => P.outputArena.live.card)=some 851 := by
  rw [s6Step53EarlyControl_plan_checked]
  decide +kernel

def s6Step54EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step54EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step54EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step54EarlyControlLog : HmrEarlyControlLog := ⟨[882, 793, 892, 789, 868],[805],[877],[855, 803, 922, 879, 784, 871],[]⟩
def s6Step54EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,882⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,892⟩,⟨⟨770,false⟩,789⟩,⟨⟨769,false⟩,868⟩]⟩
def s6Step54EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step54EarlyControlPositiveArena,[805],s6Step54EarlyControlEqualityArena,[877],⟨⟨818,false⟩,[⟨⟨805,false⟩,877⟩]⟩⟩
def s6Step54EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step54EarlyControlZeroArena,s6Step54EarlyControlZeroPlan,s6Step54EarlyControlClassPlan,s6Step54EarlyControlFlagArena,s6Step54EarlyControlFittedArena,s6Step54EarlyControlHistoryArena,s6Step54EarlyControlSigmaArena,s6Step54EarlyControlOutputArena,s6Step54EarlyControlLog⟩
private theorem s6Step54EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_zeroBorrow : s6Step54EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step54EarlyControlLog.zeroWork=some s6Step54EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step54EarlyControlArena s6Step54EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step54EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step54EarlyControl_zero : compileHmrEqualityLog s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step54EarlyControlLog.zeroWork=some (s6Step54EarlyControlZeroArena,s6Step54EarlyControlLog.zeroWork,s6Step54EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step54EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step54EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step54EarlyControl_positiveBorrow : s6Step54EarlyControlZeroArena.checkBorrow (1) s6Step54EarlyControlLog.positiveWork=some s6Step54EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step54EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step54EarlyControlZeroArena s6Step54EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step54EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step54EarlyControl_classEqualityOwned : ([818, 805] : List Wire).toFinset⊆s6Step54EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_classEqualityBorrow : s6Step54EarlyControlPositiveArena.checkBorrow (([818, 805] : List Wire).length-1) s6Step54EarlyControlLog.classWork=some s6Step54EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step54EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step54EarlyControlPositiveArena s6Step54EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step54EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step54EarlyControl_classEquality : compileHmrEqualityLog s6Step54EarlyControlPositiveArena [818, 805] 0 s6Step54EarlyControlLog.classWork=some (s6Step54EarlyControlEqualityArena,s6Step54EarlyControlLog.classWork,s6Step54EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step54EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step54EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step54EarlyControl_classOwned : ([769, 868, 818] : List Wire).toFinset⊆s6Step54EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54EarlyControl_class : compileHmrSourceClassLog s6Step54EarlyControlZeroArena false 769 s6Step54EarlyControlZeroPlan.top 0 818 s6Step54EarlyControlLog.positiveWork s6Step54EarlyControlLog.classWork=some s6Step54EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step54EarlyControlClassPlan s6Step54EarlyControlZeroArena false 769 s6Step54EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step54EarlyControl_classOwned
  · exact s6Step54EarlyControl_positiveBorrow
  · exact s6Step54EarlyControl_classEquality
private theorem s6Step54EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step54EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_flagsBorrow : s6Step54EarlyControlEqualityArena.checkBorrow (6) s6Step54EarlyControlLog.flagWork=some s6Step54EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step54EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step54EarlyControlEqualityArena s6Step54EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step54EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step54EarlyControl_flags : compileHmrFlagsLog s6Step54EarlyControlClassPlan.equalityArena s6Step54EarlyControlClassPlan.equality.top 253 252 251 s6Step54EarlyControlLog.flagWork=some s6Step54EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step54EarlyControl_flagsOwned⟩
  · exact s6Step54EarlyControl_flagsBorrow
private theorem s6Step54EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).toFinset⊆s6Step54EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
private theorem s6Step54EarlyControl_fitBorrow : s6Step54EarlyControlFlagArena.checkBorrow ((24-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).length)) s6Step54EarlyControlLog.recordFresh=some s6Step54EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step54EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step54EarlyControlFittedArena,s6Step54EarlyControlFlagArena,s6Step54EarlyControlLog,arenaWires]
theorem s6Step54EarlyControl_fit : compileHmrRecordGrowLog s6Step54EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54EarlyControlLog.recordFresh=some s6Step54EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step54EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step54EarlyControl_fitBorrow
private theorem s6Step54EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).toFinset⊆s6Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_historyBorrow : s6Step54EarlyControlArena.checkBorrow ((24-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).length)) s6Step54EarlyControlLog.recordFresh=some s6Step54EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step54EarlyControlArena s6Step54EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step54EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step54EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step54EarlyControl_history : compileHmrRecordGrowLog s6Step54EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54EarlyControlLog.recordFresh=some s6Step54EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step54EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step54EarlyControl_historyBorrow
private theorem s6Step54EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step54EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step54EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_sigmaRelease : s6Step54EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step54EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step54EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step54EarlyControlHistoryArena s6Step54EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [818] rfl rfl
    decide +kernel
private theorem s6Step54EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step54EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54EarlyControl_branch : compileHmrBranchRetirement s6Step54EarlyControlSigmaArena 880=some s6Step54EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step54EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step54EarlyControlSigmaArena s6Step54EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel
theorem s6Step54EarlyControl_sigma : compileHmrSigmaDropLog s6Step54EarlyControlHistoryArena false 0 0 254 818 []=some s6Step54EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step54EarlyControl_sigmaOwned⟩
  · exact s6Step54EarlyControl_sigmaRelease
theorem s6Step54EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step54EarlyControlLog.zeroWork).map Prod.snd=some (s6Step54EarlyControlLog.zeroWork,s6Step54EarlyControlZeroPlan) := by
  rw [s6Step54EarlyControl_zero]
  rfl
theorem s6Step54EarlyControl_classProjection : (compileHmrSourceClassLog s6Step54EarlyControlZeroArena false 769 s6Step54EarlyControlZeroPlan.top 0 818 s6Step54EarlyControlLog.positiveWork s6Step54EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step54EarlyControlClassPlan.positiveWork,s6Step54EarlyControlClassPlan.equalityWork,s6Step54EarlyControlClassPlan.equality) := by
  rw [s6Step54EarlyControl_class]
  rfl
theorem s6Step54EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step54EarlyControlClassPlan.equalityArena s6Step54EarlyControlClassPlan.equality.top 253 252 251 s6Step54EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step54EarlyControl_flags]
  rfl
theorem s6Step54EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step54EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step54EarlyControl_fit]
  rfl
theorem s6Step54EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step54EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step54EarlyControl_history]
  rfl
theorem s6Step54EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step54EarlyControlHistoryArena false 0 0 254 818 []).map (fun _ => true)=some true := by
  rw [s6Step54EarlyControl_sigma]
  rfl
theorem s6Step54EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step54EarlyControlSigmaArena 880).map (fun _ => true)=some true := by
  rw [s6Step54EarlyControl_branch]
  rfl
private theorem s6Step54EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step54EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).toFinset⊆s6Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54EarlyControl_logged : s6Step54EarlyControlPlan.Logged s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 818 254 253 252 251 880 24 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step54EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step54EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step54EarlyControl_zero
  · exact s6Step54EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step54EarlyControl_flags
  · exact s6Step54EarlyControl_fit
  · exact s6Step54EarlyControl_history
  · exact s6Step54EarlyControl_sigma
  · exact s6Step54EarlyControl_branch
theorem s6Step54EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 818 254 253 252 251 880 24 s6Step54EarlyControlLog=some s6Step54EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step54EarlyControlPlan s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 818 254 253 252 251 880 24 s6Step54EarlyControl_logged
theorem s6Step54EarlyControl_checked : (compileHmrEarlyControlLog s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 818 254 253 252 251 880 24 s6Step54EarlyControlLog).map (fun P => P.outputArena.live.card)=some 852 := by
  rw [s6Step54EarlyControl_plan_checked]
  decide +kernel

def s6Step55EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (784 ≤ q ∧ q < 787) ∨ (788 ≤ q ∧ q < 790) ∨ (793 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (802 ≤ q ∧ q < 804) ∨ (805 ≤ q ∧ q < 806) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 815) ∨ (818 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 824) ∨ (827 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 834) ∨ (835 ≤ q ∧ q < 836) ∨ (837 ≤ q ∧ q < 840) ∨ (841 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 844) ∨ (845 ≤ q ∧ q < 846) ∨ (848 ≤ q ∧ q < 849) ∨ (850 ≤ q ∧ q < 884) ∨ (886 ≤ q ∧ q < 891) ∨ (892 ≤ q ∧ q < 893) ∨ (895 ≤ q ∧ q < 896) ∨ (898 ≤ q ∧ q < 899) ∨ (901 ≤ q ∧ q < 902) ∨ (907 ≤ q ∧ q < 909) ∨ (910 ≤ q ∧ q < 912) ∨ (917 ≤ q ∧ q < 918) ∨ (921 ≤ q ∧ q < 923) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6Step55EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step55EarlyControlLog : HmrEarlyControlLog := ⟨[822, 868, 875, 805, 789],[880],[892],[877, 855, 803, 922, 879, 784],[871]⟩
def s6Step55EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨772,false⟩,868⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,805⟩,⟨⟨769,false⟩,789⟩]⟩
def s6Step55EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step55EarlyControlPositiveArena,[880],s6Step55EarlyControlEqualityArena,[892],⟨⟨882,false⟩,[⟨⟨880,false⟩,892⟩]⟩⟩
def s6Step55EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step55EarlyControlZeroArena,s6Step55EarlyControlZeroPlan,s6Step55EarlyControlClassPlan,s6Step55EarlyControlFlagArena,s6Step55EarlyControlFittedArena,s6Step55EarlyControlHistoryArena,s6Step55EarlyControlSigmaArena,s6Step55EarlyControlOutputArena,s6Step55EarlyControlLog⟩
private theorem s6Step55EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_zeroBorrow : s6Step55EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step55EarlyControlLog.zeroWork=some s6Step55EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step55EarlyControlArena s6Step55EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step55EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step55EarlyControl_zero : compileHmrEqualityLog s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step55EarlyControlLog.zeroWork=some (s6Step55EarlyControlZeroArena,s6Step55EarlyControlLog.zeroWork,s6Step55EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step55EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step55EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step55EarlyControl_positiveBorrow : s6Step55EarlyControlZeroArena.checkBorrow (1) s6Step55EarlyControlLog.positiveWork=some s6Step55EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step55EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step55EarlyControlZeroArena s6Step55EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step55EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step55EarlyControl_classEqualityOwned : ([882, 880] : List Wire).toFinset⊆s6Step55EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_classEqualityBorrow : s6Step55EarlyControlPositiveArena.checkBorrow (([882, 880] : List Wire).length-1) s6Step55EarlyControlLog.classWork=some s6Step55EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step55EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step55EarlyControlPositiveArena s6Step55EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step55EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step55EarlyControl_classEquality : compileHmrEqualityLog s6Step55EarlyControlPositiveArena [882, 880] 0 s6Step55EarlyControlLog.classWork=some (s6Step55EarlyControlEqualityArena,s6Step55EarlyControlLog.classWork,s6Step55EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step55EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step55EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step55EarlyControl_classOwned : ([769, 789, 882] : List Wire).toFinset⊆s6Step55EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlZeroArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55EarlyControl_class : compileHmrSourceClassLog s6Step55EarlyControlZeroArena false 769 s6Step55EarlyControlZeroPlan.top 0 882 s6Step55EarlyControlLog.positiveWork s6Step55EarlyControlLog.classWork=some s6Step55EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step55EarlyControlClassPlan s6Step55EarlyControlZeroArena false 769 s6Step55EarlyControlZeroPlan.top 0 882
  constructor
  · decide +kernel
  · exact s6Step55EarlyControl_classOwned
  · exact s6Step55EarlyControl_positiveBorrow
  · exact s6Step55EarlyControl_classEquality
private theorem s6Step55EarlyControl_flagsOwned : ([892, 253, 252, 251] : List Wire).toFinset⊆s6Step55EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_flagsBorrow : s6Step55EarlyControlEqualityArena.checkBorrow (6) s6Step55EarlyControlLog.flagWork=some s6Step55EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step55EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step55EarlyControlEqualityArena s6Step55EarlyControlFlagArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step55EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step55EarlyControl_flags : compileHmrFlagsLog s6Step55EarlyControlClassPlan.equalityArena s6Step55EarlyControlClassPlan.equality.top 253 252 251 s6Step55EarlyControlLog.flagWork=some s6Step55EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step55EarlyControl_flagsOwned⟩
  · exact s6Step55EarlyControl_flagsBorrow
private theorem s6Step55EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).toFinset⊆s6Step55EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlFlagArena (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_fitBorrow : s6Step55EarlyControlFlagArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).length)) s6Step55EarlyControlLog.recordFresh=some s6Step55EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step55EarlyControlFlagArena (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step55EarlyControlFlagArena s6Step55EarlyControlFittedArena (fun q => ([(0,782),(784,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<840) ∨ (841≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<884) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<902) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (917≤q ∧ q<918) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step55EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step55EarlyControl_fit : compileHmrRecordGrowLog s6Step55EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55EarlyControlLog.recordFresh=some s6Step55EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step55EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step55EarlyControl_fitBorrow
private theorem s6Step55EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).toFinset⊆s6Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_historyBorrow : s6Step55EarlyControlArena.checkBorrow ((25-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).length)) s6Step55EarlyControlLog.recordFresh=some s6Step55EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step55EarlyControlArena s6Step55EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step55EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step55EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step55EarlyControl_history : compileHmrRecordGrowLog s6Step55EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55EarlyControlLog.recordFresh=some s6Step55EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step55EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step55EarlyControl_historyBorrow
private theorem s6Step55EarlyControl_sigmaOwned : ([254, 882] : List Wire).toFinset⊆s6Step55EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_sigmaReleaseOwned : ([882] : List Wire).toFinset⊆s6Step55EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_sigmaRelease : s6Step55EarlyControlHistoryArena.release {882} (fun _ => false)=some s6Step55EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step55EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step55EarlyControlHistoryArena s6Step55EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [882] rfl rfl
    decide +kernel
private theorem s6Step55EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step55EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55EarlyControl_branch : compileHmrBranchRetirement s6Step55EarlyControlSigmaArena 793=some s6Step55EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step55EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step55EarlyControlSigmaArena s6Step55EarlyControlOutputArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
theorem s6Step55EarlyControl_sigma : compileHmrSigmaDropLog s6Step55EarlyControlHistoryArena false 0 0 254 882 []=some s6Step55EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step55EarlyControl_sigmaOwned⟩
  · exact s6Step55EarlyControl_sigmaRelease
theorem s6Step55EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step55EarlyControlLog.zeroWork).map Prod.snd=some (s6Step55EarlyControlLog.zeroWork,s6Step55EarlyControlZeroPlan) := by
  rw [s6Step55EarlyControl_zero]
  rfl
theorem s6Step55EarlyControl_classProjection : (compileHmrSourceClassLog s6Step55EarlyControlZeroArena false 769 s6Step55EarlyControlZeroPlan.top 0 882 s6Step55EarlyControlLog.positiveWork s6Step55EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step55EarlyControlClassPlan.positiveWork,s6Step55EarlyControlClassPlan.equalityWork,s6Step55EarlyControlClassPlan.equality) := by
  rw [s6Step55EarlyControl_class]
  rfl
theorem s6Step55EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step55EarlyControlClassPlan.equalityArena s6Step55EarlyControlClassPlan.equality.top 253 252 251 s6Step55EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step55EarlyControl_flags]
  rfl
theorem s6Step55EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step55EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step55EarlyControl_fit]
  rfl
theorem s6Step55EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step55EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step55EarlyControl_history]
  rfl
theorem s6Step55EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step55EarlyControlHistoryArena false 0 0 254 882 []).map (fun _ => true)=some true := by
  rw [s6Step55EarlyControl_sigma]
  rfl
theorem s6Step55EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step55EarlyControlSigmaArena 793).map (fun _ => true)=some true := by
  rw [s6Step55EarlyControl_branch]
  rfl
private theorem s6Step55EarlyControl_entrySigmaOwned : ([882, 254] : List Wire).toFinset⊆s6Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step55EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] : List Wire).toFinset⊆s6Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55EarlyControl_logged : s6Step55EarlyControlPlan.Logged s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 882 254 253 252 251 793 25 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step55EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step55EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step55EarlyControl_zero
  · exact s6Step55EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step55EarlyControl_flags
  · exact s6Step55EarlyControl_fit
  · exact s6Step55EarlyControl_history
  · exact s6Step55EarlyControl_sigma
  · exact s6Step55EarlyControl_branch
theorem s6Step55EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 882 254 253 252 251 793 25 s6Step55EarlyControlLog=some s6Step55EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step55EarlyControlPlan s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 882 254 253 252 251 793 25 s6Step55EarlyControl_logged
theorem s6Step55EarlyControl_checked : (compileHmrEarlyControlLog s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 882 254 253 252 251 793 25 s6Step55EarlyControlLog).map (fun P => P.outputArena.live.card)=some 852 := by
  rw [s6Step55EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
