import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl4
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl5Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s6Step40EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step40EarlyControlLog : HmrEarlyControlLog := ⟨[908, 868, 907, 793, 875],[877],[855],[803, 922, 879, 784, 861, 921],[]⟩
def s6Step40EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,908⟩,⟨⟨772,false⟩,868⟩,⟨⟨771,false⟩,907⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,875⟩]⟩
def s6Step40EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step40EarlyControlPositiveArena,[877],s6Step40EarlyControlEqualityArena,[855],⟨⟨845,false⟩,[⟨⟨877,false⟩,855⟩]⟩⟩
def s6Step40EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step40EarlyControlZeroArena,s6Step40EarlyControlZeroPlan,s6Step40EarlyControlClassPlan,s6Step40EarlyControlFlagArena,s6Step40EarlyControlFittedArena,s6Step40EarlyControlHistoryArena,s6Step40EarlyControlSigmaArena,s6Step40EarlyControlOutputArena,s6Step40EarlyControlLog⟩
private theorem s6Step40EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_zeroBorrow : s6Step40EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step40EarlyControlLog.zeroWork=some s6Step40EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step40EarlyControlArena s6Step40EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step40EarlyControl_zero : compileHmrEqualityLog s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step40EarlyControlLog.zeroWork=some (s6Step40EarlyControlZeroArena,s6Step40EarlyControlLog.zeroWork,s6Step40EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step40EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step40EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step40EarlyControl_positiveBorrow : s6Step40EarlyControlZeroArena.checkBorrow (1) s6Step40EarlyControlLog.positiveWork=some s6Step40EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step40EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step40EarlyControlZeroArena s6Step40EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step40EarlyControl_classEqualityOwned : ([845, 877] : List Wire).toFinset⊆s6Step40EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_classEqualityBorrow : s6Step40EarlyControlPositiveArena.checkBorrow (([845, 877] : List Wire).length-1) s6Step40EarlyControlLog.classWork=some s6Step40EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step40EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step40EarlyControlPositiveArena s6Step40EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step40EarlyControl_classEquality : compileHmrEqualityLog s6Step40EarlyControlPositiveArena [845, 877] 0 s6Step40EarlyControlLog.classWork=some (s6Step40EarlyControlEqualityArena,s6Step40EarlyControlLog.classWork,s6Step40EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step40EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step40EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step40EarlyControl_classOwned : ([769, 875, 845] : List Wire).toFinset⊆s6Step40EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EarlyControl_class : compileHmrSourceClassLog s6Step40EarlyControlZeroArena false 769 s6Step40EarlyControlZeroPlan.top 0 845 s6Step40EarlyControlLog.positiveWork s6Step40EarlyControlLog.classWork=some s6Step40EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step40EarlyControlClassPlan s6Step40EarlyControlZeroArena false 769 s6Step40EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step40EarlyControl_classOwned
  · exact s6Step40EarlyControl_positiveBorrow
  · exact s6Step40EarlyControl_classEquality
private theorem s6Step40EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step40EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_flagsBorrow : s6Step40EarlyControlEqualityArena.checkBorrow (6) s6Step40EarlyControlLog.flagWork=some s6Step40EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step40EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step40EarlyControlEqualityArena s6Step40EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step40EarlyControl_flags : compileHmrFlagsLog s6Step40EarlyControlClassPlan.equalityArena s6Step40EarlyControlClassPlan.equality.top 253 252 251 s6Step40EarlyControlLog.flagWork=some s6Step40EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step40EarlyControl_flagsOwned⟩
  · exact s6Step40EarlyControl_flagsBorrow
private theorem s6Step40EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).toFinset⊆s6Step40EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_fitBorrow : s6Step40EarlyControlFlagArena.checkBorrow ((17-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).length)) s6Step40EarlyControlLog.recordFresh=some s6Step40EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step40EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step40EarlyControlFlagArena s6Step40EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step40EarlyControl_fit : compileHmrRecordGrowLog s6Step40EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40EarlyControlLog.recordFresh=some s6Step40EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step40EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step40EarlyControl_fitBorrow
private theorem s6Step40EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).toFinset⊆s6Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_historyBorrow : s6Step40EarlyControlArena.checkBorrow ((17-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).length)) s6Step40EarlyControlLog.recordFresh=some s6Step40EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step40EarlyControlArena s6Step40EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step40EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step40EarlyControl_history : compileHmrRecordGrowLog s6Step40EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40EarlyControlLog.recordFresh=some s6Step40EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step40EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step40EarlyControl_historyBorrow
private theorem s6Step40EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step40EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step40EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_sigmaRelease : s6Step40EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step40EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step40EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step40EarlyControlHistoryArena s6Step40EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step40EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s6Step40EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EarlyControl_branch : compileHmrBranchRetirement s6Step40EarlyControlSigmaArena 779=some s6Step40EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step40EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step40EarlyControlSigmaArena s6Step40EarlyControlOutputArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [779] rfl rfl
    decide +kernel
theorem s6Step40EarlyControl_sigma : compileHmrSigmaDropLog s6Step40EarlyControlHistoryArena false 0 0 254 845 []=some s6Step40EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step40EarlyControl_sigmaOwned⟩
  · exact s6Step40EarlyControl_sigmaRelease
theorem s6Step40EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step40EarlyControlLog.zeroWork).map Prod.snd=some (s6Step40EarlyControlLog.zeroWork,s6Step40EarlyControlZeroPlan) := by
  rw [s6Step40EarlyControl_zero]
  rfl
theorem s6Step40EarlyControl_classProjection : (compileHmrSourceClassLog s6Step40EarlyControlZeroArena false 769 s6Step40EarlyControlZeroPlan.top 0 845 s6Step40EarlyControlLog.positiveWork s6Step40EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step40EarlyControlClassPlan.positiveWork,s6Step40EarlyControlClassPlan.equalityWork,s6Step40EarlyControlClassPlan.equality) := by
  rw [s6Step40EarlyControl_class]
  rfl
theorem s6Step40EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step40EarlyControlClassPlan.equalityArena s6Step40EarlyControlClassPlan.equality.top 253 252 251 s6Step40EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step40EarlyControl_flags]
  rfl
theorem s6Step40EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step40EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step40EarlyControl_fit]
  rfl
theorem s6Step40EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step40EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step40EarlyControl_history]
  rfl
theorem s6Step40EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step40EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step40EarlyControl_sigma]
  rfl
theorem s6Step40EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step40EarlyControlSigmaArena 779).map (fun _ => true)=some true := by
  rw [s6Step40EarlyControl_branch]
  rfl
private theorem s6Step40EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step40EarlyControl_entryRecordOwned : ([779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).toFinset⊆s6Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EarlyControl_logged : s6Step40EarlyControlPlan.Logged s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 779 17 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step40EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step40EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step40EarlyControl_zero
  · exact s6Step40EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step40EarlyControl_flags
  · exact s6Step40EarlyControl_fit
  · exact s6Step40EarlyControl_history
  · exact s6Step40EarlyControl_sigma
  · exact s6Step40EarlyControl_branch
theorem s6Step40EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 779 17 s6Step40EarlyControlLog=some s6Step40EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step40EarlyControlPlan s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 779 17 s6Step40EarlyControl_logged
theorem s6Step40EarlyControl_checked : (compileHmrEarlyControlLog s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 779 17 s6Step40EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s6Step40EarlyControl_plan_checked]
  decide +kernel

def s6Step41EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step41EarlyControlLog : HmrEarlyControlLog := ⟨[779, 793, 875, 907, 868],[877],[855],[803, 922, 879, 784, 861, 921],[866]⟩
def s6Step41EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,868⟩]⟩
def s6Step41EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step41EarlyControlPositiveArena,[877],s6Step41EarlyControlEqualityArena,[855],⟨⟨845,false⟩,[⟨⟨877,false⟩,855⟩]⟩⟩
def s6Step41EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step41EarlyControlZeroArena,s6Step41EarlyControlZeroPlan,s6Step41EarlyControlClassPlan,s6Step41EarlyControlFlagArena,s6Step41EarlyControlFittedArena,s6Step41EarlyControlHistoryArena,s6Step41EarlyControlSigmaArena,s6Step41EarlyControlOutputArena,s6Step41EarlyControlLog⟩
private theorem s6Step41EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_zeroBorrow : s6Step41EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step41EarlyControlLog.zeroWork=some s6Step41EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step41EarlyControlArena s6Step41EarlyControlZeroArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step41EarlyControl_zero : compileHmrEqualityLog s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step41EarlyControlLog.zeroWork=some (s6Step41EarlyControlZeroArena,s6Step41EarlyControlLog.zeroWork,s6Step41EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step41EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step41EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step41EarlyControl_positiveBorrow : s6Step41EarlyControlZeroArena.checkBorrow (1) s6Step41EarlyControlLog.positiveWork=some s6Step41EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step41EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step41EarlyControlZeroArena s6Step41EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step41EarlyControl_classEqualityOwned : ([845, 877] : List Wire).toFinset⊆s6Step41EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_classEqualityBorrow : s6Step41EarlyControlPositiveArena.checkBorrow (([845, 877] : List Wire).length-1) s6Step41EarlyControlLog.classWork=some s6Step41EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step41EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step41EarlyControlPositiveArena s6Step41EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step41EarlyControl_classEquality : compileHmrEqualityLog s6Step41EarlyControlPositiveArena [845, 877] 0 s6Step41EarlyControlLog.classWork=some (s6Step41EarlyControlEqualityArena,s6Step41EarlyControlLog.classWork,s6Step41EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step41EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step41EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step41EarlyControl_classOwned : ([769, 868, 845] : List Wire).toFinset⊆s6Step41EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EarlyControl_class : compileHmrSourceClassLog s6Step41EarlyControlZeroArena false 769 s6Step41EarlyControlZeroPlan.top 0 845 s6Step41EarlyControlLog.positiveWork s6Step41EarlyControlLog.classWork=some s6Step41EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step41EarlyControlClassPlan s6Step41EarlyControlZeroArena false 769 s6Step41EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step41EarlyControl_classOwned
  · exact s6Step41EarlyControl_positiveBorrow
  · exact s6Step41EarlyControl_classEquality
private theorem s6Step41EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step41EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_flagsBorrow : s6Step41EarlyControlEqualityArena.checkBorrow (6) s6Step41EarlyControlLog.flagWork=some s6Step41EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step41EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step41EarlyControlEqualityArena s6Step41EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step41EarlyControl_flags : compileHmrFlagsLog s6Step41EarlyControlClassPlan.equalityArena s6Step41EarlyControlClassPlan.equality.top 253 252 251 s6Step41EarlyControlLog.flagWork=some s6Step41EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step41EarlyControl_flagsOwned⟩
  · exact s6Step41EarlyControl_flagsBorrow
private theorem s6Step41EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).toFinset⊆s6Step41EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_fitBorrow : s6Step41EarlyControlFlagArena.checkBorrow ((18-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).length)) s6Step41EarlyControlLog.recordFresh=some s6Step41EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step41EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step41EarlyControlFlagArena s6Step41EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step41EarlyControl_fit : compileHmrRecordGrowLog s6Step41EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41EarlyControlLog.recordFresh=some s6Step41EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step41EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step41EarlyControl_fitBorrow
private theorem s6Step41EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).toFinset⊆s6Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_historyBorrow : s6Step41EarlyControlArena.checkBorrow ((18-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).length)) s6Step41EarlyControlLog.recordFresh=some s6Step41EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step41EarlyControlArena s6Step41EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step41EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step41EarlyControl_history : compileHmrRecordGrowLog s6Step41EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41EarlyControlLog.recordFresh=some s6Step41EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step41EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step41EarlyControl_historyBorrow
private theorem s6Step41EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step41EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step41EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_sigmaRelease : s6Step41EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step41EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step41EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step41EarlyControlHistoryArena s6Step41EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step41EarlyControl_branchOwned : ([908] : List Wire).toFinset⊆s6Step41EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EarlyControl_branch : compileHmrBranchRetirement s6Step41EarlyControlSigmaArena 908=some s6Step41EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step41EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step41EarlyControlSigmaArena s6Step41EarlyControlOutputArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [908] rfl rfl
    decide +kernel
theorem s6Step41EarlyControl_sigma : compileHmrSigmaDropLog s6Step41EarlyControlHistoryArena false 0 0 254 845 []=some s6Step41EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step41EarlyControl_sigmaOwned⟩
  · exact s6Step41EarlyControl_sigmaRelease
theorem s6Step41EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step41EarlyControlLog.zeroWork).map Prod.snd=some (s6Step41EarlyControlLog.zeroWork,s6Step41EarlyControlZeroPlan) := by
  rw [s6Step41EarlyControl_zero]
  rfl
theorem s6Step41EarlyControl_classProjection : (compileHmrSourceClassLog s6Step41EarlyControlZeroArena false 769 s6Step41EarlyControlZeroPlan.top 0 845 s6Step41EarlyControlLog.positiveWork s6Step41EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step41EarlyControlClassPlan.positiveWork,s6Step41EarlyControlClassPlan.equalityWork,s6Step41EarlyControlClassPlan.equality) := by
  rw [s6Step41EarlyControl_class]
  rfl
theorem s6Step41EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step41EarlyControlClassPlan.equalityArena s6Step41EarlyControlClassPlan.equality.top 253 252 251 s6Step41EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step41EarlyControl_flags]
  rfl
theorem s6Step41EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step41EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step41EarlyControl_fit]
  rfl
theorem s6Step41EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step41EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step41EarlyControl_history]
  rfl
theorem s6Step41EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step41EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step41EarlyControl_sigma]
  rfl
theorem s6Step41EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step41EarlyControlSigmaArena 908).map (fun _ => true)=some true := by
  rw [s6Step41EarlyControl_branch]
  rfl
private theorem s6Step41EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step41EarlyControl_entryRecordOwned : ([908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] : List Wire).toFinset⊆s6Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EarlyControl_logged : s6Step41EarlyControlPlan.Logged s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 908 18 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step41EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step41EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step41EarlyControl_zero
  · exact s6Step41EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step41EarlyControl_flags
  · exact s6Step41EarlyControl_fit
  · exact s6Step41EarlyControl_history
  · exact s6Step41EarlyControl_sigma
  · exact s6Step41EarlyControl_branch
theorem s6Step41EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 908 18 s6Step41EarlyControlLog=some s6Step41EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step41EarlyControlPlan s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 908 18 s6Step41EarlyControl_logged
theorem s6Step41EarlyControl_checked : (compileHmrEarlyControlLog s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 254 253 252 251 908 18 s6Step41EarlyControlLog).map (fun P => P.outputArena.live.card)=some 847 := by
  rw [s6Step41EarlyControl_plan_checked]
  decide +kernel

def s6Step42EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step42EarlyControlLog : HmrEarlyControlLog := ⟨[890, 805, 868, 875, 793],[877],[855],[803, 922, 879, 784, 861, 921],[]⟩
def s6Step42EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,890⟩,⟨⟨772,false⟩,805⟩,⟨⟨771,false⟩,868⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,793⟩]⟩
def s6Step42EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step42EarlyControlPositiveArena,[877],s6Step42EarlyControlEqualityArena,[855],⟨⟨845,false⟩,[⟨⟨877,false⟩,855⟩]⟩⟩
def s6Step42EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step42EarlyControlZeroArena,s6Step42EarlyControlZeroPlan,s6Step42EarlyControlClassPlan,s6Step42EarlyControlFlagArena,s6Step42EarlyControlFittedArena,s6Step42EarlyControlHistoryArena,s6Step42EarlyControlSigmaArena,s6Step42EarlyControlOutputArena,s6Step42EarlyControlLog⟩
private theorem s6Step42EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_zeroBorrow : s6Step42EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step42EarlyControlLog.zeroWork=some s6Step42EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step42EarlyControlArena s6Step42EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step42EarlyControl_zero : compileHmrEqualityLog s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step42EarlyControlLog.zeroWork=some (s6Step42EarlyControlZeroArena,s6Step42EarlyControlLog.zeroWork,s6Step42EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step42EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step42EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step42EarlyControl_positiveBorrow : s6Step42EarlyControlZeroArena.checkBorrow (1) s6Step42EarlyControlLog.positiveWork=some s6Step42EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step42EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step42EarlyControlZeroArena s6Step42EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step42EarlyControl_classEqualityOwned : ([845, 877] : List Wire).toFinset⊆s6Step42EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_classEqualityBorrow : s6Step42EarlyControlPositiveArena.checkBorrow (([845, 877] : List Wire).length-1) s6Step42EarlyControlLog.classWork=some s6Step42EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step42EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step42EarlyControlPositiveArena s6Step42EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step42EarlyControl_classEquality : compileHmrEqualityLog s6Step42EarlyControlPositiveArena [845, 877] 0 s6Step42EarlyControlLog.classWork=some (s6Step42EarlyControlEqualityArena,s6Step42EarlyControlLog.classWork,s6Step42EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step42EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step42EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step42EarlyControl_classOwned : ([769, 793, 845] : List Wire).toFinset⊆s6Step42EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EarlyControl_class : compileHmrSourceClassLog s6Step42EarlyControlZeroArena false 769 s6Step42EarlyControlZeroPlan.top 0 845 s6Step42EarlyControlLog.positiveWork s6Step42EarlyControlLog.classWork=some s6Step42EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step42EarlyControlClassPlan s6Step42EarlyControlZeroArena false 769 s6Step42EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step42EarlyControl_classOwned
  · exact s6Step42EarlyControl_positiveBorrow
  · exact s6Step42EarlyControl_classEquality
private theorem s6Step42EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step42EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_flagsBorrow : s6Step42EarlyControlEqualityArena.checkBorrow (6) s6Step42EarlyControlLog.flagWork=some s6Step42EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step42EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step42EarlyControlEqualityArena s6Step42EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step42EarlyControl_flags : compileHmrFlagsLog s6Step42EarlyControlClassPlan.equalityArena s6Step42EarlyControlClassPlan.equality.top 253 252 251 s6Step42EarlyControlLog.flagWork=some s6Step42EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step42EarlyControl_flagsOwned⟩
  · exact s6Step42EarlyControl_flagsBorrow
private theorem s6Step42EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).toFinset⊆s6Step42EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_fitBorrow : s6Step42EarlyControlFlagArena.checkBorrow ((18-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).length)) s6Step42EarlyControlLog.recordFresh=some s6Step42EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step42EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step42EarlyControlFlagArena s6Step42EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step42EarlyControl_fit : compileHmrRecordGrowLog s6Step42EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42EarlyControlLog.recordFresh=some s6Step42EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step42EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step42EarlyControl_fitBorrow
private theorem s6Step42EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).toFinset⊆s6Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_historyBorrow : s6Step42EarlyControlArena.checkBorrow ((18-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).length)) s6Step42EarlyControlLog.recordFresh=some s6Step42EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step42EarlyControlArena s6Step42EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step42EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step42EarlyControl_history : compileHmrRecordGrowLog s6Step42EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42EarlyControlLog.recordFresh=some s6Step42EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step42EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step42EarlyControl_historyBorrow
private theorem s6Step42EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step42EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step42EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_sigmaRelease : s6Step42EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step42EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step42EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step42EarlyControlHistoryArena s6Step42EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step42EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s6Step42EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EarlyControl_branch : compileHmrBranchRetirement s6Step42EarlyControlSigmaArena 779=some s6Step42EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step42EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step42EarlyControlSigmaArena s6Step42EarlyControlOutputArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [779] rfl rfl
    decide +kernel
theorem s6Step42EarlyControl_sigma : compileHmrSigmaDropLog s6Step42EarlyControlHistoryArena false 0 0 254 845 []=some s6Step42EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step42EarlyControl_sigmaOwned⟩
  · exact s6Step42EarlyControl_sigmaRelease
theorem s6Step42EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step42EarlyControlLog.zeroWork).map Prod.snd=some (s6Step42EarlyControlLog.zeroWork,s6Step42EarlyControlZeroPlan) := by
  rw [s6Step42EarlyControl_zero]
  rfl
theorem s6Step42EarlyControl_classProjection : (compileHmrSourceClassLog s6Step42EarlyControlZeroArena false 769 s6Step42EarlyControlZeroPlan.top 0 845 s6Step42EarlyControlLog.positiveWork s6Step42EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step42EarlyControlClassPlan.positiveWork,s6Step42EarlyControlClassPlan.equalityWork,s6Step42EarlyControlClassPlan.equality) := by
  rw [s6Step42EarlyControl_class]
  rfl
theorem s6Step42EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step42EarlyControlClassPlan.equalityArena s6Step42EarlyControlClassPlan.equality.top 253 252 251 s6Step42EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step42EarlyControl_flags]
  rfl
theorem s6Step42EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step42EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step42EarlyControl_fit]
  rfl
theorem s6Step42EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step42EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step42EarlyControl_history]
  rfl
theorem s6Step42EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step42EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step42EarlyControl_sigma]
  rfl
theorem s6Step42EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step42EarlyControlSigmaArena 779).map (fun _ => true)=some true := by
  rw [s6Step42EarlyControl_branch]
  rfl
private theorem s6Step42EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step42EarlyControl_entryRecordOwned : ([779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).toFinset⊆s6Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EarlyControl_logged : s6Step42EarlyControlPlan.Logged s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 779 18 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step42EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step42EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step42EarlyControl_zero
  · exact s6Step42EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step42EarlyControl_flags
  · exact s6Step42EarlyControl_fit
  · exact s6Step42EarlyControl_history
  · exact s6Step42EarlyControl_sigma
  · exact s6Step42EarlyControl_branch
theorem s6Step42EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 779 18 s6Step42EarlyControlLog=some s6Step42EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step42EarlyControlPlan s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 779 18 s6Step42EarlyControl_logged
theorem s6Step42EarlyControl_checked : (compileHmrEarlyControlLog s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 779 18 s6Step42EarlyControlLog).map (fun P => P.outputArena.live.card)=some 847 := by
  rw [s6Step42EarlyControl_plan_checked]
  decide +kernel

def s6Step43EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step43EarlyControlLog : HmrEarlyControlLog := ⟨[873, 796, 875, 779, 793],[868],[805],[877, 855, 803, 922, 879, 784],[861]⟩
def s6Step43EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,873⟩,⟨⟨772,false⟩,796⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,779⟩,⟨⟨769,false⟩,793⟩]⟩
def s6Step43EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step43EarlyControlPositiveArena,[868],s6Step43EarlyControlEqualityArena,[805],⟨⟨845,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step43EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step43EarlyControlZeroArena,s6Step43EarlyControlZeroPlan,s6Step43EarlyControlClassPlan,s6Step43EarlyControlFlagArena,s6Step43EarlyControlFittedArena,s6Step43EarlyControlHistoryArena,s6Step43EarlyControlSigmaArena,s6Step43EarlyControlOutputArena,s6Step43EarlyControlLog⟩
private theorem s6Step43EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_zeroBorrow : s6Step43EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step43EarlyControlLog.zeroWork=some s6Step43EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step43EarlyControlArena s6Step43EarlyControlZeroArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step43EarlyControl_zero : compileHmrEqualityLog s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step43EarlyControlLog.zeroWork=some (s6Step43EarlyControlZeroArena,s6Step43EarlyControlLog.zeroWork,s6Step43EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step43EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step43EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step43EarlyControl_positiveBorrow : s6Step43EarlyControlZeroArena.checkBorrow (1) s6Step43EarlyControlLog.positiveWork=some s6Step43EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step43EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step43EarlyControlZeroArena s6Step43EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step43EarlyControl_classEqualityOwned : ([845, 868] : List Wire).toFinset⊆s6Step43EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_classEqualityBorrow : s6Step43EarlyControlPositiveArena.checkBorrow (([845, 868] : List Wire).length-1) s6Step43EarlyControlLog.classWork=some s6Step43EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step43EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step43EarlyControlPositiveArena s6Step43EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step43EarlyControl_classEquality : compileHmrEqualityLog s6Step43EarlyControlPositiveArena [845, 868] 0 s6Step43EarlyControlLog.classWork=some (s6Step43EarlyControlEqualityArena,s6Step43EarlyControlLog.classWork,s6Step43EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step43EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step43EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step43EarlyControl_classOwned : ([769, 793, 845] : List Wire).toFinset⊆s6Step43EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EarlyControl_class : compileHmrSourceClassLog s6Step43EarlyControlZeroArena false 769 s6Step43EarlyControlZeroPlan.top 0 845 s6Step43EarlyControlLog.positiveWork s6Step43EarlyControlLog.classWork=some s6Step43EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step43EarlyControlClassPlan s6Step43EarlyControlZeroArena false 769 s6Step43EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step43EarlyControl_classOwned
  · exact s6Step43EarlyControl_positiveBorrow
  · exact s6Step43EarlyControl_classEquality
private theorem s6Step43EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step43EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_flagsBorrow : s6Step43EarlyControlEqualityArena.checkBorrow (6) s6Step43EarlyControlLog.flagWork=some s6Step43EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step43EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step43EarlyControlEqualityArena s6Step43EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step43EarlyControl_flags : compileHmrFlagsLog s6Step43EarlyControlClassPlan.equalityArena s6Step43EarlyControlClassPlan.equality.top 253 252 251 s6Step43EarlyControlLog.flagWork=some s6Step43EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step43EarlyControl_flagsOwned⟩
  · exact s6Step43EarlyControl_flagsBorrow
private theorem s6Step43EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).toFinset⊆s6Step43EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_fitBorrow : s6Step43EarlyControlFlagArena.checkBorrow ((19-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).length)) s6Step43EarlyControlLog.recordFresh=some s6Step43EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step43EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step43EarlyControlFlagArena s6Step43EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step43EarlyControl_fit : compileHmrRecordGrowLog s6Step43EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43EarlyControlLog.recordFresh=some s6Step43EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step43EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step43EarlyControl_fitBorrow
private theorem s6Step43EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).toFinset⊆s6Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_historyBorrow : s6Step43EarlyControlArena.checkBorrow ((19-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).length)) s6Step43EarlyControlLog.recordFresh=some s6Step43EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step43EarlyControlArena s6Step43EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step43EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step43EarlyControl_history : compileHmrRecordGrowLog s6Step43EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43EarlyControlLog.recordFresh=some s6Step43EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step43EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step43EarlyControl_historyBorrow
private theorem s6Step43EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step43EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step43EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_sigmaRelease : s6Step43EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step43EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step43EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step43EarlyControlHistoryArena s6Step43EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step43EarlyControl_branchOwned : ([890] : List Wire).toFinset⊆s6Step43EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EarlyControl_branch : compileHmrBranchRetirement s6Step43EarlyControlSigmaArena 890=some s6Step43EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step43EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step43EarlyControlSigmaArena s6Step43EarlyControlOutputArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [890] rfl rfl
    decide +kernel
theorem s6Step43EarlyControl_sigma : compileHmrSigmaDropLog s6Step43EarlyControlHistoryArena false 0 0 254 845 []=some s6Step43EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step43EarlyControl_sigmaOwned⟩
  · exact s6Step43EarlyControl_sigmaRelease
theorem s6Step43EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step43EarlyControlLog.zeroWork).map Prod.snd=some (s6Step43EarlyControlLog.zeroWork,s6Step43EarlyControlZeroPlan) := by
  rw [s6Step43EarlyControl_zero]
  rfl
theorem s6Step43EarlyControl_classProjection : (compileHmrSourceClassLog s6Step43EarlyControlZeroArena false 769 s6Step43EarlyControlZeroPlan.top 0 845 s6Step43EarlyControlLog.positiveWork s6Step43EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step43EarlyControlClassPlan.positiveWork,s6Step43EarlyControlClassPlan.equalityWork,s6Step43EarlyControlClassPlan.equality) := by
  rw [s6Step43EarlyControl_class]
  rfl
theorem s6Step43EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step43EarlyControlClassPlan.equalityArena s6Step43EarlyControlClassPlan.equality.top 253 252 251 s6Step43EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step43EarlyControl_flags]
  rfl
theorem s6Step43EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step43EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step43EarlyControl_fit]
  rfl
theorem s6Step43EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step43EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step43EarlyControl_history]
  rfl
theorem s6Step43EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step43EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step43EarlyControl_sigma]
  rfl
theorem s6Step43EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step43EarlyControlSigmaArena 890).map (fun _ => true)=some true := by
  rw [s6Step43EarlyControl_branch]
  rfl
private theorem s6Step43EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step43EarlyControl_entryRecordOwned : ([890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] : List Wire).toFinset⊆s6Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EarlyControl_logged : s6Step43EarlyControlPlan.Logged s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 890 19 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step43EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step43EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step43EarlyControl_zero
  · exact s6Step43EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step43EarlyControl_flags
  · exact s6Step43EarlyControl_fit
  · exact s6Step43EarlyControl_history
  · exact s6Step43EarlyControl_sigma
  · exact s6Step43EarlyControl_branch
theorem s6Step43EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 890 19 s6Step43EarlyControlLog=some s6Step43EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step43EarlyControlPlan s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 890 19 s6Step43EarlyControl_logged
theorem s6Step43EarlyControl_checked : (compileHmrEarlyControlLog s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 254 253 252 251 890 19 s6Step43EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s6Step43EarlyControl_plan_checked]
  decide +kernel

def s6Step44EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step44EarlyControlLog : HmrEarlyControlLog := ⟨[856, 779, 793, 875, 796],[868],[805],[877, 855, 803, 922, 879, 784],[]⟩
def s6Step44EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,856⟩,⟨⟨772,false⟩,779⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,796⟩]⟩
def s6Step44EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step44EarlyControlPositiveArena,[868],s6Step44EarlyControlEqualityArena,[805],⟨⟨845,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step44EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step44EarlyControlZeroArena,s6Step44EarlyControlZeroPlan,s6Step44EarlyControlClassPlan,s6Step44EarlyControlFlagArena,s6Step44EarlyControlFittedArena,s6Step44EarlyControlHistoryArena,s6Step44EarlyControlSigmaArena,s6Step44EarlyControlOutputArena,s6Step44EarlyControlLog⟩
private theorem s6Step44EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_zeroBorrow : s6Step44EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step44EarlyControlLog.zeroWork=some s6Step44EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step44EarlyControlArena s6Step44EarlyControlZeroArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step44EarlyControl_zero : compileHmrEqualityLog s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step44EarlyControlLog.zeroWork=some (s6Step44EarlyControlZeroArena,s6Step44EarlyControlLog.zeroWork,s6Step44EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step44EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step44EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step44EarlyControl_positiveBorrow : s6Step44EarlyControlZeroArena.checkBorrow (1) s6Step44EarlyControlLog.positiveWork=some s6Step44EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step44EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step44EarlyControlZeroArena s6Step44EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step44EarlyControl_classEqualityOwned : ([845, 868] : List Wire).toFinset⊆s6Step44EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_classEqualityBorrow : s6Step44EarlyControlPositiveArena.checkBorrow (([845, 868] : List Wire).length-1) s6Step44EarlyControlLog.classWork=some s6Step44EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step44EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step44EarlyControlPositiveArena s6Step44EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step44EarlyControl_classEquality : compileHmrEqualityLog s6Step44EarlyControlPositiveArena [845, 868] 0 s6Step44EarlyControlLog.classWork=some (s6Step44EarlyControlEqualityArena,s6Step44EarlyControlLog.classWork,s6Step44EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step44EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step44EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step44EarlyControl_classOwned : ([769, 796, 845] : List Wire).toFinset⊆s6Step44EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EarlyControl_class : compileHmrSourceClassLog s6Step44EarlyControlZeroArena false 769 s6Step44EarlyControlZeroPlan.top 0 845 s6Step44EarlyControlLog.positiveWork s6Step44EarlyControlLog.classWork=some s6Step44EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step44EarlyControlClassPlan s6Step44EarlyControlZeroArena false 769 s6Step44EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step44EarlyControl_classOwned
  · exact s6Step44EarlyControl_positiveBorrow
  · exact s6Step44EarlyControl_classEquality
private theorem s6Step44EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step44EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_flagsBorrow : s6Step44EarlyControlEqualityArena.checkBorrow (6) s6Step44EarlyControlLog.flagWork=some s6Step44EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step44EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step44EarlyControlEqualityArena s6Step44EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step44EarlyControl_flags : compileHmrFlagsLog s6Step44EarlyControlClassPlan.equalityArena s6Step44EarlyControlClassPlan.equality.top 253 252 251 s6Step44EarlyControlLog.flagWork=some s6Step44EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step44EarlyControl_flagsOwned⟩
  · exact s6Step44EarlyControl_flagsBorrow
private theorem s6Step44EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).toFinset⊆s6Step44EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_fitBorrow : s6Step44EarlyControlFlagArena.checkBorrow ((19-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).length)) s6Step44EarlyControlLog.recordFresh=some s6Step44EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step44EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step44EarlyControlFlagArena s6Step44EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step44EarlyControl_fit : compileHmrRecordGrowLog s6Step44EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44EarlyControlLog.recordFresh=some s6Step44EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step44EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step44EarlyControl_fitBorrow
private theorem s6Step44EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).toFinset⊆s6Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_historyBorrow : s6Step44EarlyControlArena.checkBorrow ((19-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).length)) s6Step44EarlyControlLog.recordFresh=some s6Step44EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step44EarlyControlArena s6Step44EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step44EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step44EarlyControl_history : compileHmrRecordGrowLog s6Step44EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44EarlyControlLog.recordFresh=some s6Step44EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step44EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step44EarlyControl_historyBorrow
private theorem s6Step44EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step44EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step44EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_sigmaRelease : s6Step44EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step44EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step44EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step44EarlyControlHistoryArena s6Step44EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step44EarlyControl_branchOwned : ([873] : List Wire).toFinset⊆s6Step44EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EarlyControl_branch : compileHmrBranchRetirement s6Step44EarlyControlSigmaArena 873=some s6Step44EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step44EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step44EarlyControlSigmaArena s6Step44EarlyControlOutputArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [873] rfl rfl
    decide +kernel
theorem s6Step44EarlyControl_sigma : compileHmrSigmaDropLog s6Step44EarlyControlHistoryArena false 0 0 254 845 []=some s6Step44EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step44EarlyControl_sigmaOwned⟩
  · exact s6Step44EarlyControl_sigmaRelease
theorem s6Step44EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step44EarlyControlLog.zeroWork).map Prod.snd=some (s6Step44EarlyControlLog.zeroWork,s6Step44EarlyControlZeroPlan) := by
  rw [s6Step44EarlyControl_zero]
  rfl
theorem s6Step44EarlyControl_classProjection : (compileHmrSourceClassLog s6Step44EarlyControlZeroArena false 769 s6Step44EarlyControlZeroPlan.top 0 845 s6Step44EarlyControlLog.positiveWork s6Step44EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step44EarlyControlClassPlan.positiveWork,s6Step44EarlyControlClassPlan.equalityWork,s6Step44EarlyControlClassPlan.equality) := by
  rw [s6Step44EarlyControl_class]
  rfl
theorem s6Step44EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step44EarlyControlClassPlan.equalityArena s6Step44EarlyControlClassPlan.equality.top 253 252 251 s6Step44EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step44EarlyControl_flags]
  rfl
theorem s6Step44EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step44EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step44EarlyControl_fit]
  rfl
theorem s6Step44EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step44EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step44EarlyControl_history]
  rfl
theorem s6Step44EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step44EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step44EarlyControl_sigma]
  rfl
theorem s6Step44EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step44EarlyControlSigmaArena 873).map (fun _ => true)=some true := by
  rw [s6Step44EarlyControl_branch]
  rfl
private theorem s6Step44EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step44EarlyControl_entryRecordOwned : ([873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).toFinset⊆s6Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EarlyControl_logged : s6Step44EarlyControlPlan.Logged s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 873 19 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step44EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step44EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step44EarlyControl_zero
  · exact s6Step44EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step44EarlyControl_flags
  · exact s6Step44EarlyControl_fit
  · exact s6Step44EarlyControl_history
  · exact s6Step44EarlyControl_sigma
  · exact s6Step44EarlyControl_branch
theorem s6Step44EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 873 19 s6Step44EarlyControlLog=some s6Step44EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step44EarlyControlPlan s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 873 19 s6Step44EarlyControl_logged
theorem s6Step44EarlyControl_checked : (compileHmrEarlyControlLog s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 873 19 s6Step44EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s6Step44EarlyControl_plan_checked]
  decide +kernel

def s6Step45EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step45EarlyControlLog : HmrEarlyControlLog := ⟨[863, 875, 793, 873, 779],[868],[805],[877, 855, 803, 922, 879, 784],[921]⟩
def s6Step45EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,863⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,873⟩,⟨⟨769,false⟩,779⟩]⟩
def s6Step45EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step45EarlyControlPositiveArena,[868],s6Step45EarlyControlEqualityArena,[805],⟨⟨845,false⟩,[⟨⟨868,false⟩,805⟩]⟩⟩
def s6Step45EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step45EarlyControlZeroArena,s6Step45EarlyControlZeroPlan,s6Step45EarlyControlClassPlan,s6Step45EarlyControlFlagArena,s6Step45EarlyControlFittedArena,s6Step45EarlyControlHistoryArena,s6Step45EarlyControlSigmaArena,s6Step45EarlyControlOutputArena,s6Step45EarlyControlLog⟩
private theorem s6Step45EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_zeroBorrow : s6Step45EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step45EarlyControlLog.zeroWork=some s6Step45EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step45EarlyControlArena s6Step45EarlyControlZeroArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step45EarlyControl_zero : compileHmrEqualityLog s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step45EarlyControlLog.zeroWork=some (s6Step45EarlyControlZeroArena,s6Step45EarlyControlLog.zeroWork,s6Step45EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step45EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step45EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step45EarlyControl_positiveBorrow : s6Step45EarlyControlZeroArena.checkBorrow (1) s6Step45EarlyControlLog.positiveWork=some s6Step45EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step45EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step45EarlyControlZeroArena s6Step45EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step45EarlyControl_classEqualityOwned : ([845, 868] : List Wire).toFinset⊆s6Step45EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_classEqualityBorrow : s6Step45EarlyControlPositiveArena.checkBorrow (([845, 868] : List Wire).length-1) s6Step45EarlyControlLog.classWork=some s6Step45EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step45EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step45EarlyControlPositiveArena s6Step45EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step45EarlyControl_classEquality : compileHmrEqualityLog s6Step45EarlyControlPositiveArena [845, 868] 0 s6Step45EarlyControlLog.classWork=some (s6Step45EarlyControlEqualityArena,s6Step45EarlyControlLog.classWork,s6Step45EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step45EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step45EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step45EarlyControl_classOwned : ([769, 779, 845] : List Wire).toFinset⊆s6Step45EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EarlyControl_class : compileHmrSourceClassLog s6Step45EarlyControlZeroArena false 769 s6Step45EarlyControlZeroPlan.top 0 845 s6Step45EarlyControlLog.positiveWork s6Step45EarlyControlLog.classWork=some s6Step45EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step45EarlyControlClassPlan s6Step45EarlyControlZeroArena false 769 s6Step45EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step45EarlyControl_classOwned
  · exact s6Step45EarlyControl_positiveBorrow
  · exact s6Step45EarlyControl_classEquality
private theorem s6Step45EarlyControl_flagsOwned : ([805, 253, 252, 251] : List Wire).toFinset⊆s6Step45EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_flagsBorrow : s6Step45EarlyControlEqualityArena.checkBorrow (6) s6Step45EarlyControlLog.flagWork=some s6Step45EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step45EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step45EarlyControlEqualityArena s6Step45EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step45EarlyControl_flags : compileHmrFlagsLog s6Step45EarlyControlClassPlan.equalityArena s6Step45EarlyControlClassPlan.equality.top 253 252 251 s6Step45EarlyControlLog.flagWork=some s6Step45EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step45EarlyControl_flagsOwned⟩
  · exact s6Step45EarlyControl_flagsBorrow
private theorem s6Step45EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).toFinset⊆s6Step45EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_fitBorrow : s6Step45EarlyControlFlagArena.checkBorrow ((20-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).length)) s6Step45EarlyControlLog.recordFresh=some s6Step45EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step45EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step45EarlyControlFlagArena s6Step45EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step45EarlyControl_fit : compileHmrRecordGrowLog s6Step45EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45EarlyControlLog.recordFresh=some s6Step45EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step45EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step45EarlyControl_fitBorrow
private theorem s6Step45EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).toFinset⊆s6Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_historyBorrow : s6Step45EarlyControlArena.checkBorrow ((20-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).length)) s6Step45EarlyControlLog.recordFresh=some s6Step45EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step45EarlyControlArena s6Step45EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step45EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step45EarlyControl_history : compileHmrRecordGrowLog s6Step45EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45EarlyControlLog.recordFresh=some s6Step45EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step45EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step45EarlyControl_historyBorrow
private theorem s6Step45EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step45EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step45EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_sigmaRelease : s6Step45EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step45EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step45EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step45EarlyControlHistoryArena s6Step45EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step45EarlyControl_branchOwned : ([856] : List Wire).toFinset⊆s6Step45EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EarlyControl_branch : compileHmrBranchRetirement s6Step45EarlyControlSigmaArena 856=some s6Step45EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step45EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step45EarlyControlSigmaArena s6Step45EarlyControlOutputArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [856] rfl rfl
    decide +kernel
theorem s6Step45EarlyControl_sigma : compileHmrSigmaDropLog s6Step45EarlyControlHistoryArena false 0 0 254 845 []=some s6Step45EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step45EarlyControl_sigmaOwned⟩
  · exact s6Step45EarlyControl_sigmaRelease
theorem s6Step45EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step45EarlyControlLog.zeroWork).map Prod.snd=some (s6Step45EarlyControlLog.zeroWork,s6Step45EarlyControlZeroPlan) := by
  rw [s6Step45EarlyControl_zero]
  rfl
theorem s6Step45EarlyControl_classProjection : (compileHmrSourceClassLog s6Step45EarlyControlZeroArena false 769 s6Step45EarlyControlZeroPlan.top 0 845 s6Step45EarlyControlLog.positiveWork s6Step45EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step45EarlyControlClassPlan.positiveWork,s6Step45EarlyControlClassPlan.equalityWork,s6Step45EarlyControlClassPlan.equality) := by
  rw [s6Step45EarlyControl_class]
  rfl
theorem s6Step45EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step45EarlyControlClassPlan.equalityArena s6Step45EarlyControlClassPlan.equality.top 253 252 251 s6Step45EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step45EarlyControl_flags]
  rfl
theorem s6Step45EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step45EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step45EarlyControl_fit]
  rfl
theorem s6Step45EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step45EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step45EarlyControl_history]
  rfl
theorem s6Step45EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step45EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step45EarlyControl_sigma]
  rfl
theorem s6Step45EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step45EarlyControlSigmaArena 856).map (fun _ => true)=some true := by
  rw [s6Step45EarlyControl_branch]
  rfl
private theorem s6Step45EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step45EarlyControl_entryRecordOwned : ([856, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] : List Wire).toFinset⊆s6Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EarlyControl_logged : s6Step45EarlyControlPlan.Logged s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 856 20 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step45EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step45EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step45EarlyControl_zero
  · exact s6Step45EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step45EarlyControl_flags
  · exact s6Step45EarlyControl_fit
  · exact s6Step45EarlyControl_history
  · exact s6Step45EarlyControl_sigma
  · exact s6Step45EarlyControl_branch
theorem s6Step45EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 856 20 s6Step45EarlyControlLog=some s6Step45EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step45EarlyControlPlan s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 856 20 s6Step45EarlyControl_logged
theorem s6Step45EarlyControl_checked : (compileHmrEarlyControlLog s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 254 253 252 251 856 20 s6Step45EarlyControlLog).map (fun P => P.outputArena.live.card)=some 847 := by
  rw [s6Step45EarlyControl_plan_checked]
  decide +kernel

def s6Step46EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step46EarlyControlLog : HmrEarlyControlLog := ⟨[823, 865, 873, 779, 793],[875],[868],[805, 877, 855, 803, 922, 879],[]⟩
def s6Step46EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,823⟩,⟨⟨772,false⟩,865⟩,⟨⟨771,false⟩,873⟩,⟨⟨770,false⟩,779⟩,⟨⟨769,false⟩,793⟩]⟩
def s6Step46EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step46EarlyControlPositiveArena,[875],s6Step46EarlyControlEqualityArena,[868],⟨⟨845,false⟩,[⟨⟨875,false⟩,868⟩]⟩⟩
def s6Step46EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step46EarlyControlZeroArena,s6Step46EarlyControlZeroPlan,s6Step46EarlyControlClassPlan,s6Step46EarlyControlFlagArena,s6Step46EarlyControlFittedArena,s6Step46EarlyControlHistoryArena,s6Step46EarlyControlSigmaArena,s6Step46EarlyControlOutputArena,s6Step46EarlyControlLog⟩
private theorem s6Step46EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_zeroBorrow : s6Step46EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step46EarlyControlLog.zeroWork=some s6Step46EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step46EarlyControlArena s6Step46EarlyControlZeroArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step46EarlyControl_zero : compileHmrEqualityLog s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step46EarlyControlLog.zeroWork=some (s6Step46EarlyControlZeroArena,s6Step46EarlyControlLog.zeroWork,s6Step46EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step46EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step46EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step46EarlyControl_positiveBorrow : s6Step46EarlyControlZeroArena.checkBorrow (1) s6Step46EarlyControlLog.positiveWork=some s6Step46EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step46EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step46EarlyControlZeroArena s6Step46EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step46EarlyControl_classEqualityOwned : ([845, 875] : List Wire).toFinset⊆s6Step46EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_classEqualityBorrow : s6Step46EarlyControlPositiveArena.checkBorrow (([845, 875] : List Wire).length-1) s6Step46EarlyControlLog.classWork=some s6Step46EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step46EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step46EarlyControlPositiveArena s6Step46EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step46EarlyControl_classEquality : compileHmrEqualityLog s6Step46EarlyControlPositiveArena [845, 875] 0 s6Step46EarlyControlLog.classWork=some (s6Step46EarlyControlEqualityArena,s6Step46EarlyControlLog.classWork,s6Step46EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step46EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step46EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step46EarlyControl_classOwned : ([769, 793, 845] : List Wire).toFinset⊆s6Step46EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EarlyControl_class : compileHmrSourceClassLog s6Step46EarlyControlZeroArena false 769 s6Step46EarlyControlZeroPlan.top 0 845 s6Step46EarlyControlLog.positiveWork s6Step46EarlyControlLog.classWork=some s6Step46EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step46EarlyControlClassPlan s6Step46EarlyControlZeroArena false 769 s6Step46EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s6Step46EarlyControl_classOwned
  · exact s6Step46EarlyControl_positiveBorrow
  · exact s6Step46EarlyControl_classEquality
private theorem s6Step46EarlyControl_flagsOwned : ([868, 253, 252, 251] : List Wire).toFinset⊆s6Step46EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_flagsBorrow : s6Step46EarlyControlEqualityArena.checkBorrow (6) s6Step46EarlyControlLog.flagWork=some s6Step46EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step46EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step46EarlyControlEqualityArena s6Step46EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step46EarlyControl_flags : compileHmrFlagsLog s6Step46EarlyControlClassPlan.equalityArena s6Step46EarlyControlClassPlan.equality.top 253 252 251 s6Step46EarlyControlLog.flagWork=some s6Step46EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step46EarlyControl_flagsOwned⟩
  · exact s6Step46EarlyControl_flagsBorrow
private theorem s6Step46EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).toFinset⊆s6Step46EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_fitBorrow : s6Step46EarlyControlFlagArena.checkBorrow ((20-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).length)) s6Step46EarlyControlLog.recordFresh=some s6Step46EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step46EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step46EarlyControlFlagArena s6Step46EarlyControlFittedArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step46EarlyControl_fit : compileHmrRecordGrowLog s6Step46EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46EarlyControlLog.recordFresh=some s6Step46EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step46EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step46EarlyControl_fitBorrow
private theorem s6Step46EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).toFinset⊆s6Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_historyBorrow : s6Step46EarlyControlArena.checkBorrow ((20-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).length)) s6Step46EarlyControlLog.recordFresh=some s6Step46EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step46EarlyControlArena s6Step46EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step46EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step46EarlyControl_history : compileHmrRecordGrowLog s6Step46EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46EarlyControlLog.recordFresh=some s6Step46EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step46EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step46EarlyControl_historyBorrow
private theorem s6Step46EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s6Step46EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s6Step46EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_sigmaRelease : s6Step46EarlyControlHistoryArena.release {845} (fun _ => false)=some s6Step46EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step46EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step46EarlyControlHistoryArena s6Step46EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
private theorem s6Step46EarlyControl_branchOwned : ([863] : List Wire).toFinset⊆s6Step46EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EarlyControl_branch : compileHmrBranchRetirement s6Step46EarlyControlSigmaArena 863=some s6Step46EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step46EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step46EarlyControlSigmaArena s6Step46EarlyControlOutputArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel
theorem s6Step46EarlyControl_sigma : compileHmrSigmaDropLog s6Step46EarlyControlHistoryArena false 0 0 254 845 []=some s6Step46EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step46EarlyControl_sigmaOwned⟩
  · exact s6Step46EarlyControl_sigmaRelease
theorem s6Step46EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step46EarlyControlLog.zeroWork).map Prod.snd=some (s6Step46EarlyControlLog.zeroWork,s6Step46EarlyControlZeroPlan) := by
  rw [s6Step46EarlyControl_zero]
  rfl
theorem s6Step46EarlyControl_classProjection : (compileHmrSourceClassLog s6Step46EarlyControlZeroArena false 769 s6Step46EarlyControlZeroPlan.top 0 845 s6Step46EarlyControlLog.positiveWork s6Step46EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step46EarlyControlClassPlan.positiveWork,s6Step46EarlyControlClassPlan.equalityWork,s6Step46EarlyControlClassPlan.equality) := by
  rw [s6Step46EarlyControl_class]
  rfl
theorem s6Step46EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step46EarlyControlClassPlan.equalityArena s6Step46EarlyControlClassPlan.equality.top 253 252 251 s6Step46EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step46EarlyControl_flags]
  rfl
theorem s6Step46EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step46EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step46EarlyControl_fit]
  rfl
theorem s6Step46EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step46EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step46EarlyControl_history]
  rfl
theorem s6Step46EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step46EarlyControlHistoryArena false 0 0 254 845 []).map (fun _ => true)=some true := by
  rw [s6Step46EarlyControl_sigma]
  rfl
theorem s6Step46EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step46EarlyControlSigmaArena 863).map (fun _ => true)=some true := by
  rw [s6Step46EarlyControl_branch]
  rfl
private theorem s6Step46EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s6Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step46EarlyControl_entryRecordOwned : ([863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).toFinset⊆s6Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EarlyControl_logged : s6Step46EarlyControlPlan.Logged s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 845 254 253 252 251 863 20 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step46EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step46EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step46EarlyControl_zero
  · exact s6Step46EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step46EarlyControl_flags
  · exact s6Step46EarlyControl_fit
  · exact s6Step46EarlyControl_history
  · exact s6Step46EarlyControl_sigma
  · exact s6Step46EarlyControl_branch
theorem s6Step46EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 845 254 253 252 251 863 20 s6Step46EarlyControlLog=some s6Step46EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step46EarlyControlPlan s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 845 254 253 252 251 863 20 s6Step46EarlyControl_logged
theorem s6Step46EarlyControl_checked : (compileHmrEarlyControlLog s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 845 254 253 252 251 863 20 s6Step46EarlyControlLog).map (fun P => P.outputArena.live.card)=some 846 := by
  rw [s6Step46EarlyControl_plan_checked]
  decide +kernel

def s6Step47EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step47EarlyControlLog : HmrEarlyControlLog := ⟨[865, 823, 793, 875, 868],[805],[877],[855, 803, 922, 879, 784, 837],[829]⟩
def s6Step47EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,865⟩,⟨⟨772,false⟩,823⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,868⟩]⟩
def s6Step47EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step47EarlyControlPositiveArena,[805],s6Step47EarlyControlEqualityArena,[877],⟨⟨863,false⟩,[⟨⟨805,false⟩,877⟩]⟩⟩
def s6Step47EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step47EarlyControlZeroArena,s6Step47EarlyControlZeroPlan,s6Step47EarlyControlClassPlan,s6Step47EarlyControlFlagArena,s6Step47EarlyControlFittedArena,s6Step47EarlyControlHistoryArena,s6Step47EarlyControlSigmaArena,s6Step47EarlyControlOutputArena,s6Step47EarlyControlLog⟩
private theorem s6Step47EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_zeroBorrow : s6Step47EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step47EarlyControlLog.zeroWork=some s6Step47EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step47EarlyControlArena s6Step47EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step47EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step47EarlyControl_zero : compileHmrEqualityLog s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step47EarlyControlLog.zeroWork=some (s6Step47EarlyControlZeroArena,s6Step47EarlyControlLog.zeroWork,s6Step47EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step47EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step47EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step47EarlyControl_positiveBorrow : s6Step47EarlyControlZeroArena.checkBorrow (1) s6Step47EarlyControlLog.positiveWork=some s6Step47EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step47EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step47EarlyControlZeroArena s6Step47EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step47EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step47EarlyControl_classEqualityOwned : ([863, 805] : List Wire).toFinset⊆s6Step47EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_classEqualityBorrow : s6Step47EarlyControlPositiveArena.checkBorrow (([863, 805] : List Wire).length-1) s6Step47EarlyControlLog.classWork=some s6Step47EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step47EarlyControlPositiveArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step47EarlyControlPositiveArena s6Step47EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step47EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step47EarlyControl_classEquality : compileHmrEqualityLog s6Step47EarlyControlPositiveArena [863, 805] 0 s6Step47EarlyControlLog.classWork=some (s6Step47EarlyControlEqualityArena,s6Step47EarlyControlLog.classWork,s6Step47EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step47EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step47EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step47EarlyControl_classOwned : ([769, 868, 863] : List Wire).toFinset⊆s6Step47EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlZeroArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47EarlyControl_class : compileHmrSourceClassLog s6Step47EarlyControlZeroArena false 769 s6Step47EarlyControlZeroPlan.top 0 863 s6Step47EarlyControlLog.positiveWork s6Step47EarlyControlLog.classWork=some s6Step47EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step47EarlyControlClassPlan s6Step47EarlyControlZeroArena false 769 s6Step47EarlyControlZeroPlan.top 0 863
  constructor
  · decide +kernel
  · exact s6Step47EarlyControl_classOwned
  · exact s6Step47EarlyControl_positiveBorrow
  · exact s6Step47EarlyControl_classEquality
private theorem s6Step47EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step47EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_flagsBorrow : s6Step47EarlyControlEqualityArena.checkBorrow (6) s6Step47EarlyControlLog.flagWork=some s6Step47EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step47EarlyControlEqualityArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step47EarlyControlEqualityArena s6Step47EarlyControlFlagArena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step47EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step47EarlyControl_flags : compileHmrFlagsLog s6Step47EarlyControlClassPlan.equalityArena s6Step47EarlyControlClassPlan.equality.top 253 252 251 s6Step47EarlyControlLog.flagWork=some s6Step47EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step47EarlyControl_flagsOwned⟩
  · exact s6Step47EarlyControl_flagsBorrow
private theorem s6Step47EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).toFinset⊆s6Step47EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_fitBorrow : s6Step47EarlyControlFlagArena.checkBorrow ((21-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).length)) s6Step47EarlyControlLog.recordFresh=some s6Step47EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step47EarlyControlFlagArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step47EarlyControlFlagArena s6Step47EarlyControlFittedArena (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step47EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step47EarlyControl_fit : compileHmrRecordGrowLog s6Step47EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47EarlyControlLog.recordFresh=some s6Step47EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step47EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step47EarlyControl_fitBorrow
private theorem s6Step47EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).toFinset⊆s6Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_historyBorrow : s6Step47EarlyControlArena.checkBorrow ((21-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).length)) s6Step47EarlyControlLog.recordFresh=some s6Step47EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step47EarlyControlArena s6Step47EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step47EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step47EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step47EarlyControl_history : compileHmrRecordGrowLog s6Step47EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47EarlyControlLog.recordFresh=some s6Step47EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step47EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step47EarlyControl_historyBorrow
private theorem s6Step47EarlyControl_sigmaOwned : ([254, 863] : List Wire).toFinset⊆s6Step47EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_sigmaReleaseOwned : ([863] : List Wire).toFinset⊆s6Step47EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlHistoryArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_sigmaRelease : s6Step47EarlyControlHistoryArena.release {863} (fun _ => false)=some s6Step47EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step47EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step47EarlyControlHistoryArena s6Step47EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel
private theorem s6Step47EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s6Step47EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlSigmaArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47EarlyControl_branch : compileHmrBranchRetirement s6Step47EarlyControlSigmaArena 845=some s6Step47EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step47EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step47EarlyControlSigmaArena s6Step47EarlyControlOutputArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [845] rfl rfl
    decide +kernel
theorem s6Step47EarlyControl_sigma : compileHmrSigmaDropLog s6Step47EarlyControlHistoryArena false 0 0 254 863 []=some s6Step47EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step47EarlyControl_sigmaOwned⟩
  · exact s6Step47EarlyControl_sigmaRelease
theorem s6Step47EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step47EarlyControlLog.zeroWork).map Prod.snd=some (s6Step47EarlyControlLog.zeroWork,s6Step47EarlyControlZeroPlan) := by
  rw [s6Step47EarlyControl_zero]
  rfl
theorem s6Step47EarlyControl_classProjection : (compileHmrSourceClassLog s6Step47EarlyControlZeroArena false 769 s6Step47EarlyControlZeroPlan.top 0 863 s6Step47EarlyControlLog.positiveWork s6Step47EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step47EarlyControlClassPlan.positiveWork,s6Step47EarlyControlClassPlan.equalityWork,s6Step47EarlyControlClassPlan.equality) := by
  rw [s6Step47EarlyControl_class]
  rfl
theorem s6Step47EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step47EarlyControlClassPlan.equalityArena s6Step47EarlyControlClassPlan.equality.top 253 252 251 s6Step47EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step47EarlyControl_flags]
  rfl
theorem s6Step47EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step47EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step47EarlyControl_fit]
  rfl
theorem s6Step47EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step47EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step47EarlyControl_history]
  rfl
theorem s6Step47EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step47EarlyControlHistoryArena false 0 0 254 863 []).map (fun _ => true)=some true := by
  rw [s6Step47EarlyControl_sigma]
  rfl
theorem s6Step47EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step47EarlyControlSigmaArena 845).map (fun _ => true)=some true := by
  rw [s6Step47EarlyControl_branch]
  rfl
private theorem s6Step47EarlyControl_entrySigmaOwned : ([863, 254] : List Wire).toFinset⊆s6Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step47EarlyControl_entryRecordOwned : ([845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] : List Wire).toFinset⊆s6Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47EarlyControl_logged : s6Step47EarlyControlPlan.Logged s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 863 254 253 252 251 845 21 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step47EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step47EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step47EarlyControl_zero
  · exact s6Step47EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step47EarlyControl_flags
  · exact s6Step47EarlyControl_fit
  · exact s6Step47EarlyControl_history
  · exact s6Step47EarlyControl_sigma
  · exact s6Step47EarlyControl_branch
theorem s6Step47EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 863 254 253 252 251 845 21 s6Step47EarlyControlLog=some s6Step47EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step47EarlyControlPlan s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 863 254 253 252 251 845 21 s6Step47EarlyControl_logged
theorem s6Step47EarlyControl_checked : (compileHmrEarlyControlLog s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 863 254 253 252 251 845 21 s6Step47EarlyControlLog).map (fun P => P.outputArena.live.card)=some 849 := by
  rw [s6Step47EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
