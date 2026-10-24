import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl3
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl4Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s6Step32EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step32EarlyControlLog : HmrEarlyControlLog := ⟨[927, 779, 793, 876, 813],[874],[887],[877, 855, 803, 922, 879, 784],[]⟩
def s6Step32EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,927⟩,⟨⟨772,false⟩,779⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step32EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step32EarlyControlPositiveArena,[874],s6Step32EarlyControlEqualityArena,[887],⟨⟨802,false⟩,[⟨⟨874,false⟩,887⟩]⟩⟩
def s6Step32EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step32EarlyControlZeroArena,s6Step32EarlyControlZeroPlan,s6Step32EarlyControlClassPlan,s6Step32EarlyControlFlagArena,s6Step32EarlyControlFittedArena,s6Step32EarlyControlHistoryArena,s6Step32EarlyControlSigmaArena,s6Step32EarlyControlOutputArena,s6Step32EarlyControlLog⟩
private theorem s6Step32EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_zeroBorrow : s6Step32EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step32EarlyControlLog.zeroWork=some s6Step32EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step32EarlyControlArena s6Step32EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step32EarlyControl_zero : compileHmrEqualityLog s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step32EarlyControlLog.zeroWork=some (s6Step32EarlyControlZeroArena,s6Step32EarlyControlLog.zeroWork,s6Step32EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step32EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step32EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step32EarlyControl_positiveBorrow : s6Step32EarlyControlZeroArena.checkBorrow (1) s6Step32EarlyControlLog.positiveWork=some s6Step32EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step32EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step32EarlyControlZeroArena s6Step32EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step32EarlyControl_classEqualityOwned : ([802, 874] : List Wire).toFinset⊆s6Step32EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_classEqualityBorrow : s6Step32EarlyControlPositiveArena.checkBorrow (([802, 874] : List Wire).length-1) s6Step32EarlyControlLog.classWork=some s6Step32EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step32EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step32EarlyControlPositiveArena s6Step32EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step32EarlyControl_classEquality : compileHmrEqualityLog s6Step32EarlyControlPositiveArena [802, 874] 0 s6Step32EarlyControlLog.classWork=some (s6Step32EarlyControlEqualityArena,s6Step32EarlyControlLog.classWork,s6Step32EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step32EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step32EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step32EarlyControl_classOwned : ([769, 813, 802] : List Wire).toFinset⊆s6Step32EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EarlyControl_class : compileHmrSourceClassLog s6Step32EarlyControlZeroArena false 769 s6Step32EarlyControlZeroPlan.top 0 802 s6Step32EarlyControlLog.positiveWork s6Step32EarlyControlLog.classWork=some s6Step32EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step32EarlyControlClassPlan s6Step32EarlyControlZeroArena false 769 s6Step32EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s6Step32EarlyControl_classOwned
  · exact s6Step32EarlyControl_positiveBorrow
  · exact s6Step32EarlyControl_classEquality
private theorem s6Step32EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step32EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_flagsBorrow : s6Step32EarlyControlEqualityArena.checkBorrow (6) s6Step32EarlyControlLog.flagWork=some s6Step32EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step32EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step32EarlyControlEqualityArena s6Step32EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step32EarlyControl_flags : compileHmrFlagsLog s6Step32EarlyControlClassPlan.equalityArena s6Step32EarlyControlClassPlan.equality.top 253 252 251 s6Step32EarlyControlLog.flagWork=some s6Step32EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step32EarlyControl_flagsOwned⟩
  · exact s6Step32EarlyControl_flagsBorrow
private theorem s6Step32EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).toFinset⊆s6Step32EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_fitBorrow : s6Step32EarlyControlFlagArena.checkBorrow ((13-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).length)) s6Step32EarlyControlLog.recordFresh=some s6Step32EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step32EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step32EarlyControlFlagArena s6Step32EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step32EarlyControl_fit : compileHmrRecordGrowLog s6Step32EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32EarlyControlLog.recordFresh=some s6Step32EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step32EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step32EarlyControl_fitBorrow
private theorem s6Step32EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).toFinset⊆s6Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_historyBorrow : s6Step32EarlyControlArena.checkBorrow ((13-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).length)) s6Step32EarlyControlLog.recordFresh=some s6Step32EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step32EarlyControlArena s6Step32EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step32EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step32EarlyControl_history : compileHmrRecordGrowLog s6Step32EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32EarlyControlLog.recordFresh=some s6Step32EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step32EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step32EarlyControl_historyBorrow
private theorem s6Step32EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s6Step32EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s6Step32EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_sigmaRelease : s6Step32EarlyControlHistoryArena.release {802} (fun _ => false)=some s6Step32EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step32EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step32EarlyControlHistoryArena s6Step32EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [802] rfl rfl
    decide +kernel
private theorem s6Step32EarlyControl_branchOwned : ([881] : List Wire).toFinset⊆s6Step32EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EarlyControl_branch : compileHmrBranchRetirement s6Step32EarlyControlSigmaArena 881=some s6Step32EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step32EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step32EarlyControlSigmaArena s6Step32EarlyControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [881] rfl rfl
    decide +kernel
theorem s6Step32EarlyControl_sigma : compileHmrSigmaDropLog s6Step32EarlyControlHistoryArena false 0 0 254 802 []=some s6Step32EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step32EarlyControl_sigmaOwned⟩
  · exact s6Step32EarlyControl_sigmaRelease
theorem s6Step32EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step32EarlyControlLog.zeroWork).map Prod.snd=some (s6Step32EarlyControlLog.zeroWork,s6Step32EarlyControlZeroPlan) := by
  rw [s6Step32EarlyControl_zero]
  rfl
theorem s6Step32EarlyControl_classProjection : (compileHmrSourceClassLog s6Step32EarlyControlZeroArena false 769 s6Step32EarlyControlZeroPlan.top 0 802 s6Step32EarlyControlLog.positiveWork s6Step32EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step32EarlyControlClassPlan.positiveWork,s6Step32EarlyControlClassPlan.equalityWork,s6Step32EarlyControlClassPlan.equality) := by
  rw [s6Step32EarlyControl_class]
  rfl
theorem s6Step32EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step32EarlyControlClassPlan.equalityArena s6Step32EarlyControlClassPlan.equality.top 253 252 251 s6Step32EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step32EarlyControl_flags]
  rfl
theorem s6Step32EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step32EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step32EarlyControl_fit]
  rfl
theorem s6Step32EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step32EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step32EarlyControl_history]
  rfl
theorem s6Step32EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step32EarlyControlHistoryArena false 0 0 254 802 []).map (fun _ => true)=some true := by
  rw [s6Step32EarlyControl_sigma]
  rfl
theorem s6Step32EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step32EarlyControlSigmaArena 881).map (fun _ => true)=some true := by
  rw [s6Step32EarlyControl_branch]
  rfl
private theorem s6Step32EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s6Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step32EarlyControl_entryRecordOwned : ([881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).toFinset⊆s6Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EarlyControl_logged : s6Step32EarlyControlPlan.Logged s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 881 13 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step32EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step32EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step32EarlyControl_zero
  · exact s6Step32EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step32EarlyControl_flags
  · exact s6Step32EarlyControl_fit
  · exact s6Step32EarlyControl_history
  · exact s6Step32EarlyControl_sigma
  · exact s6Step32EarlyControl_branch
theorem s6Step32EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 881 13 s6Step32EarlyControlLog=some s6Step32EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step32EarlyControlPlan s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 881 13 s6Step32EarlyControl_logged
theorem s6Step32EarlyControl_checked : (compileHmrEarlyControlLog s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 881 13 s6Step32EarlyControlLog).map (fun P => P.outputArena.live.card)=some 840 := by
  rw [s6Step32EarlyControl_plan_checked]
  decide +kernel

def s6Step33EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step33EarlyControlLog : HmrEarlyControlLog := ⟨[875, 876, 793, 859, 779],[874],[887],[877, 855, 803, 922, 879, 784],[851]⟩
def s6Step33EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,875⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,779⟩]⟩
def s6Step33EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step33EarlyControlPositiveArena,[874],s6Step33EarlyControlEqualityArena,[887],⟨⟨802,false⟩,[⟨⟨874,false⟩,887⟩]⟩⟩
def s6Step33EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step33EarlyControlZeroArena,s6Step33EarlyControlZeroPlan,s6Step33EarlyControlClassPlan,s6Step33EarlyControlFlagArena,s6Step33EarlyControlFittedArena,s6Step33EarlyControlHistoryArena,s6Step33EarlyControlSigmaArena,s6Step33EarlyControlOutputArena,s6Step33EarlyControlLog⟩
private theorem s6Step33EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_zeroBorrow : s6Step33EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step33EarlyControlLog.zeroWork=some s6Step33EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step33EarlyControlArena s6Step33EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step33EarlyControl_zero : compileHmrEqualityLog s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step33EarlyControlLog.zeroWork=some (s6Step33EarlyControlZeroArena,s6Step33EarlyControlLog.zeroWork,s6Step33EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step33EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step33EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step33EarlyControl_positiveBorrow : s6Step33EarlyControlZeroArena.checkBorrow (1) s6Step33EarlyControlLog.positiveWork=some s6Step33EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step33EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step33EarlyControlZeroArena s6Step33EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step33EarlyControl_classEqualityOwned : ([802, 874] : List Wire).toFinset⊆s6Step33EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_classEqualityBorrow : s6Step33EarlyControlPositiveArena.checkBorrow (([802, 874] : List Wire).length-1) s6Step33EarlyControlLog.classWork=some s6Step33EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step33EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step33EarlyControlPositiveArena s6Step33EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step33EarlyControl_classEquality : compileHmrEqualityLog s6Step33EarlyControlPositiveArena [802, 874] 0 s6Step33EarlyControlLog.classWork=some (s6Step33EarlyControlEqualityArena,s6Step33EarlyControlLog.classWork,s6Step33EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step33EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step33EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step33EarlyControl_classOwned : ([769, 779, 802] : List Wire).toFinset⊆s6Step33EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EarlyControl_class : compileHmrSourceClassLog s6Step33EarlyControlZeroArena false 769 s6Step33EarlyControlZeroPlan.top 0 802 s6Step33EarlyControlLog.positiveWork s6Step33EarlyControlLog.classWork=some s6Step33EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step33EarlyControlClassPlan s6Step33EarlyControlZeroArena false 769 s6Step33EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s6Step33EarlyControl_classOwned
  · exact s6Step33EarlyControl_positiveBorrow
  · exact s6Step33EarlyControl_classEquality
private theorem s6Step33EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step33EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_flagsBorrow : s6Step33EarlyControlEqualityArena.checkBorrow (6) s6Step33EarlyControlLog.flagWork=some s6Step33EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step33EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step33EarlyControlEqualityArena s6Step33EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step33EarlyControl_flags : compileHmrFlagsLog s6Step33EarlyControlClassPlan.equalityArena s6Step33EarlyControlClassPlan.equality.top 253 252 251 s6Step33EarlyControlLog.flagWork=some s6Step33EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step33EarlyControl_flagsOwned⟩
  · exact s6Step33EarlyControl_flagsBorrow
private theorem s6Step33EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).toFinset⊆s6Step33EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_fitBorrow : s6Step33EarlyControlFlagArena.checkBorrow ((14-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).length)) s6Step33EarlyControlLog.recordFresh=some s6Step33EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step33EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step33EarlyControlFlagArena s6Step33EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step33EarlyControl_fit : compileHmrRecordGrowLog s6Step33EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33EarlyControlLog.recordFresh=some s6Step33EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step33EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step33EarlyControl_fitBorrow
private theorem s6Step33EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).toFinset⊆s6Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_historyBorrow : s6Step33EarlyControlArena.checkBorrow ((14-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).length)) s6Step33EarlyControlLog.recordFresh=some s6Step33EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step33EarlyControlArena s6Step33EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step33EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step33EarlyControl_history : compileHmrRecordGrowLog s6Step33EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33EarlyControlLog.recordFresh=some s6Step33EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step33EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step33EarlyControl_historyBorrow
private theorem s6Step33EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s6Step33EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s6Step33EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_sigmaRelease : s6Step33EarlyControlHistoryArena.release {802} (fun _ => false)=some s6Step33EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step33EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step33EarlyControlHistoryArena s6Step33EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [802] rfl rfl
    decide +kernel
private theorem s6Step33EarlyControl_branchOwned : ([927] : List Wire).toFinset⊆s6Step33EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EarlyControl_branch : compileHmrBranchRetirement s6Step33EarlyControlSigmaArena 927=some s6Step33EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step33EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step33EarlyControlSigmaArena s6Step33EarlyControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [927] rfl rfl
    decide +kernel
theorem s6Step33EarlyControl_sigma : compileHmrSigmaDropLog s6Step33EarlyControlHistoryArena false 0 0 254 802 []=some s6Step33EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step33EarlyControl_sigmaOwned⟩
  · exact s6Step33EarlyControl_sigmaRelease
theorem s6Step33EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step33EarlyControlLog.zeroWork).map Prod.snd=some (s6Step33EarlyControlLog.zeroWork,s6Step33EarlyControlZeroPlan) := by
  rw [s6Step33EarlyControl_zero]
  rfl
theorem s6Step33EarlyControl_classProjection : (compileHmrSourceClassLog s6Step33EarlyControlZeroArena false 769 s6Step33EarlyControlZeroPlan.top 0 802 s6Step33EarlyControlLog.positiveWork s6Step33EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step33EarlyControlClassPlan.positiveWork,s6Step33EarlyControlClassPlan.equalityWork,s6Step33EarlyControlClassPlan.equality) := by
  rw [s6Step33EarlyControl_class]
  rfl
theorem s6Step33EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step33EarlyControlClassPlan.equalityArena s6Step33EarlyControlClassPlan.equality.top 253 252 251 s6Step33EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step33EarlyControl_flags]
  rfl
theorem s6Step33EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step33EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step33EarlyControl_fit]
  rfl
theorem s6Step33EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step33EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step33EarlyControl_history]
  rfl
theorem s6Step33EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step33EarlyControlHistoryArena false 0 0 254 802 []).map (fun _ => true)=some true := by
  rw [s6Step33EarlyControl_sigma]
  rfl
theorem s6Step33EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step33EarlyControlSigmaArena 927).map (fun _ => true)=some true := by
  rw [s6Step33EarlyControl_branch]
  rfl
private theorem s6Step33EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s6Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step33EarlyControl_entryRecordOwned : ([927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] : List Wire).toFinset⊆s6Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EarlyControl_logged : s6Step33EarlyControlPlan.Logged s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 927 14 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step33EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step33EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step33EarlyControl_zero
  · exact s6Step33EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step33EarlyControl_flags
  · exact s6Step33EarlyControl_fit
  · exact s6Step33EarlyControl_history
  · exact s6Step33EarlyControl_sigma
  · exact s6Step33EarlyControl_branch
theorem s6Step33EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 927 14 s6Step33EarlyControlLog=some s6Step33EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step33EarlyControlPlan s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 927 14 s6Step33EarlyControl_logged
theorem s6Step33EarlyControl_checked : (compileHmrEarlyControlLog s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 254 253 252 251 927 14 s6Step33EarlyControlLog).map (fun P => P.outputArena.live.card)=some 841 := by
  rw [s6Step33EarlyControl_plan_checked]
  decide +kernel

def s6Step34EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step34EarlyControlLog : HmrEarlyControlLog := ⟨[857, 859, 779, 793, 876],[874],[887],[877, 855, 803, 922, 879, 784],[]⟩
def s6Step34EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,857⟩,⟨⟨772,false⟩,859⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,793⟩,⟨⟨769,false⟩,876⟩]⟩
def s6Step34EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step34EarlyControlPositiveArena,[874],s6Step34EarlyControlEqualityArena,[887],⟨⟨802,false⟩,[⟨⟨874,false⟩,887⟩]⟩⟩
def s6Step34EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step34EarlyControlZeroArena,s6Step34EarlyControlZeroPlan,s6Step34EarlyControlClassPlan,s6Step34EarlyControlFlagArena,s6Step34EarlyControlFittedArena,s6Step34EarlyControlHistoryArena,s6Step34EarlyControlSigmaArena,s6Step34EarlyControlOutputArena,s6Step34EarlyControlLog⟩
private theorem s6Step34EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_zeroBorrow : s6Step34EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step34EarlyControlLog.zeroWork=some s6Step34EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step34EarlyControlArena s6Step34EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step34EarlyControl_zero : compileHmrEqualityLog s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step34EarlyControlLog.zeroWork=some (s6Step34EarlyControlZeroArena,s6Step34EarlyControlLog.zeroWork,s6Step34EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step34EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step34EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step34EarlyControl_positiveBorrow : s6Step34EarlyControlZeroArena.checkBorrow (1) s6Step34EarlyControlLog.positiveWork=some s6Step34EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step34EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step34EarlyControlZeroArena s6Step34EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step34EarlyControl_classEqualityOwned : ([802, 874] : List Wire).toFinset⊆s6Step34EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_classEqualityBorrow : s6Step34EarlyControlPositiveArena.checkBorrow (([802, 874] : List Wire).length-1) s6Step34EarlyControlLog.classWork=some s6Step34EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step34EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step34EarlyControlPositiveArena s6Step34EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step34EarlyControl_classEquality : compileHmrEqualityLog s6Step34EarlyControlPositiveArena [802, 874] 0 s6Step34EarlyControlLog.classWork=some (s6Step34EarlyControlEqualityArena,s6Step34EarlyControlLog.classWork,s6Step34EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step34EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step34EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step34EarlyControl_classOwned : ([769, 876, 802] : List Wire).toFinset⊆s6Step34EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EarlyControl_class : compileHmrSourceClassLog s6Step34EarlyControlZeroArena false 769 s6Step34EarlyControlZeroPlan.top 0 802 s6Step34EarlyControlLog.positiveWork s6Step34EarlyControlLog.classWork=some s6Step34EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step34EarlyControlClassPlan s6Step34EarlyControlZeroArena false 769 s6Step34EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s6Step34EarlyControl_classOwned
  · exact s6Step34EarlyControl_positiveBorrow
  · exact s6Step34EarlyControl_classEquality
private theorem s6Step34EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step34EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_flagsBorrow : s6Step34EarlyControlEqualityArena.checkBorrow (6) s6Step34EarlyControlLog.flagWork=some s6Step34EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step34EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step34EarlyControlEqualityArena s6Step34EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step34EarlyControl_flags : compileHmrFlagsLog s6Step34EarlyControlClassPlan.equalityArena s6Step34EarlyControlClassPlan.equality.top 253 252 251 s6Step34EarlyControlLog.flagWork=some s6Step34EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step34EarlyControl_flagsOwned⟩
  · exact s6Step34EarlyControl_flagsBorrow
private theorem s6Step34EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).toFinset⊆s6Step34EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_fitBorrow : s6Step34EarlyControlFlagArena.checkBorrow ((14-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).length)) s6Step34EarlyControlLog.recordFresh=some s6Step34EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step34EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step34EarlyControlFlagArena s6Step34EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step34EarlyControl_fit : compileHmrRecordGrowLog s6Step34EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34EarlyControlLog.recordFresh=some s6Step34EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step34EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step34EarlyControl_fitBorrow
private theorem s6Step34EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).toFinset⊆s6Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_historyBorrow : s6Step34EarlyControlArena.checkBorrow ((14-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).length)) s6Step34EarlyControlLog.recordFresh=some s6Step34EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step34EarlyControlArena s6Step34EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step34EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step34EarlyControl_history : compileHmrRecordGrowLog s6Step34EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34EarlyControlLog.recordFresh=some s6Step34EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step34EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step34EarlyControl_historyBorrow
private theorem s6Step34EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s6Step34EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s6Step34EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_sigmaRelease : s6Step34EarlyControlHistoryArena.release {802} (fun _ => false)=some s6Step34EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step34EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step34EarlyControlHistoryArena s6Step34EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [802] rfl rfl
    decide +kernel
private theorem s6Step34EarlyControl_branchOwned : ([875] : List Wire).toFinset⊆s6Step34EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EarlyControl_branch : compileHmrBranchRetirement s6Step34EarlyControlSigmaArena 875=some s6Step34EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step34EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step34EarlyControlSigmaArena s6Step34EarlyControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [875] rfl rfl
    decide +kernel
theorem s6Step34EarlyControl_sigma : compileHmrSigmaDropLog s6Step34EarlyControlHistoryArena false 0 0 254 802 []=some s6Step34EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step34EarlyControl_sigmaOwned⟩
  · exact s6Step34EarlyControl_sigmaRelease
theorem s6Step34EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step34EarlyControlLog.zeroWork).map Prod.snd=some (s6Step34EarlyControlLog.zeroWork,s6Step34EarlyControlZeroPlan) := by
  rw [s6Step34EarlyControl_zero]
  rfl
theorem s6Step34EarlyControl_classProjection : (compileHmrSourceClassLog s6Step34EarlyControlZeroArena false 769 s6Step34EarlyControlZeroPlan.top 0 802 s6Step34EarlyControlLog.positiveWork s6Step34EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step34EarlyControlClassPlan.positiveWork,s6Step34EarlyControlClassPlan.equalityWork,s6Step34EarlyControlClassPlan.equality) := by
  rw [s6Step34EarlyControl_class]
  rfl
theorem s6Step34EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step34EarlyControlClassPlan.equalityArena s6Step34EarlyControlClassPlan.equality.top 253 252 251 s6Step34EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step34EarlyControl_flags]
  rfl
theorem s6Step34EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step34EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step34EarlyControl_fit]
  rfl
theorem s6Step34EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step34EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step34EarlyControl_history]
  rfl
theorem s6Step34EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step34EarlyControlHistoryArena false 0 0 254 802 []).map (fun _ => true)=some true := by
  rw [s6Step34EarlyControl_sigma]
  rfl
theorem s6Step34EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step34EarlyControlSigmaArena 875).map (fun _ => true)=some true := by
  rw [s6Step34EarlyControl_branch]
  rfl
private theorem s6Step34EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s6Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step34EarlyControl_entryRecordOwned : ([875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).toFinset⊆s6Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EarlyControl_logged : s6Step34EarlyControlPlan.Logged s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 875 14 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step34EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step34EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step34EarlyControl_zero
  · exact s6Step34EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step34EarlyControl_flags
  · exact s6Step34EarlyControl_fit
  · exact s6Step34EarlyControl_history
  · exact s6Step34EarlyControl_sigma
  · exact s6Step34EarlyControl_branch
theorem s6Step34EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 875 14 s6Step34EarlyControlLog=some s6Step34EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step34EarlyControlPlan s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 875 14 s6Step34EarlyControl_logged
theorem s6Step34EarlyControl_checked : (compileHmrEarlyControlLog s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 875 14 s6Step34EarlyControlLog).map (fun P => P.outputArena.live.card)=some 841 := by
  rw [s6Step34EarlyControl_plan_checked]
  decide +kernel

def s6Step35EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step35EarlyControlLog : HmrEarlyControlLog := ⟨[868, 793, 779, 859, 874],[887],[877],[855, 803, 922, 879, 784, 861],[878]⟩
def s6Step35EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,868⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,874⟩]⟩
def s6Step35EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step35EarlyControlPositiveArena,[887],s6Step35EarlyControlEqualityArena,[877],⟨⟨802,false⟩,[⟨⟨887,false⟩,877⟩]⟩⟩
def s6Step35EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step35EarlyControlZeroArena,s6Step35EarlyControlZeroPlan,s6Step35EarlyControlClassPlan,s6Step35EarlyControlFlagArena,s6Step35EarlyControlFittedArena,s6Step35EarlyControlHistoryArena,s6Step35EarlyControlSigmaArena,s6Step35EarlyControlOutputArena,s6Step35EarlyControlLog⟩
private theorem s6Step35EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_zeroBorrow : s6Step35EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step35EarlyControlLog.zeroWork=some s6Step35EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step35EarlyControlArena s6Step35EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step35EarlyControl_zero : compileHmrEqualityLog s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step35EarlyControlLog.zeroWork=some (s6Step35EarlyControlZeroArena,s6Step35EarlyControlLog.zeroWork,s6Step35EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step35EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step35EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step35EarlyControl_positiveBorrow : s6Step35EarlyControlZeroArena.checkBorrow (1) s6Step35EarlyControlLog.positiveWork=some s6Step35EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step35EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step35EarlyControlZeroArena s6Step35EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step35EarlyControl_classEqualityOwned : ([802, 887] : List Wire).toFinset⊆s6Step35EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_classEqualityBorrow : s6Step35EarlyControlPositiveArena.checkBorrow (([802, 887] : List Wire).length-1) s6Step35EarlyControlLog.classWork=some s6Step35EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step35EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step35EarlyControlPositiveArena s6Step35EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step35EarlyControl_classEquality : compileHmrEqualityLog s6Step35EarlyControlPositiveArena [802, 887] 0 s6Step35EarlyControlLog.classWork=some (s6Step35EarlyControlEqualityArena,s6Step35EarlyControlLog.classWork,s6Step35EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step35EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step35EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step35EarlyControl_classOwned : ([769, 874, 802] : List Wire).toFinset⊆s6Step35EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EarlyControl_class : compileHmrSourceClassLog s6Step35EarlyControlZeroArena false 769 s6Step35EarlyControlZeroPlan.top 0 802 s6Step35EarlyControlLog.positiveWork s6Step35EarlyControlLog.classWork=some s6Step35EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step35EarlyControlClassPlan s6Step35EarlyControlZeroArena false 769 s6Step35EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s6Step35EarlyControl_classOwned
  · exact s6Step35EarlyControl_positiveBorrow
  · exact s6Step35EarlyControl_classEquality
private theorem s6Step35EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step35EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_flagsBorrow : s6Step35EarlyControlEqualityArena.checkBorrow (6) s6Step35EarlyControlLog.flagWork=some s6Step35EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step35EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step35EarlyControlEqualityArena s6Step35EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step35EarlyControl_flags : compileHmrFlagsLog s6Step35EarlyControlClassPlan.equalityArena s6Step35EarlyControlClassPlan.equality.top 253 252 251 s6Step35EarlyControlLog.flagWork=some s6Step35EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step35EarlyControl_flagsOwned⟩
  · exact s6Step35EarlyControl_flagsBorrow
private theorem s6Step35EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).toFinset⊆s6Step35EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_fitBorrow : s6Step35EarlyControlFlagArena.checkBorrow ((15-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).length)) s6Step35EarlyControlLog.recordFresh=some s6Step35EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step35EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step35EarlyControlFlagArena s6Step35EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step35EarlyControl_fit : compileHmrRecordGrowLog s6Step35EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35EarlyControlLog.recordFresh=some s6Step35EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step35EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step35EarlyControl_fitBorrow
private theorem s6Step35EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).toFinset⊆s6Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_historyBorrow : s6Step35EarlyControlArena.checkBorrow ((15-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).length)) s6Step35EarlyControlLog.recordFresh=some s6Step35EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step35EarlyControlArena s6Step35EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step35EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step35EarlyControl_history : compileHmrRecordGrowLog s6Step35EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35EarlyControlLog.recordFresh=some s6Step35EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step35EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step35EarlyControl_historyBorrow
private theorem s6Step35EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s6Step35EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s6Step35EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_sigmaRelease : s6Step35EarlyControlHistoryArena.release {802} (fun _ => false)=some s6Step35EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step35EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step35EarlyControlHistoryArena s6Step35EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [802] rfl rfl
    decide +kernel
private theorem s6Step35EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step35EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EarlyControl_branch : compileHmrBranchRetirement s6Step35EarlyControlSigmaArena 857=some s6Step35EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step35EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step35EarlyControlSigmaArena s6Step35EarlyControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel
theorem s6Step35EarlyControl_sigma : compileHmrSigmaDropLog s6Step35EarlyControlHistoryArena false 0 0 254 802 []=some s6Step35EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step35EarlyControl_sigmaOwned⟩
  · exact s6Step35EarlyControl_sigmaRelease
theorem s6Step35EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step35EarlyControlLog.zeroWork).map Prod.snd=some (s6Step35EarlyControlLog.zeroWork,s6Step35EarlyControlZeroPlan) := by
  rw [s6Step35EarlyControl_zero]
  rfl
theorem s6Step35EarlyControl_classProjection : (compileHmrSourceClassLog s6Step35EarlyControlZeroArena false 769 s6Step35EarlyControlZeroPlan.top 0 802 s6Step35EarlyControlLog.positiveWork s6Step35EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step35EarlyControlClassPlan.positiveWork,s6Step35EarlyControlClassPlan.equalityWork,s6Step35EarlyControlClassPlan.equality) := by
  rw [s6Step35EarlyControl_class]
  rfl
theorem s6Step35EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step35EarlyControlClassPlan.equalityArena s6Step35EarlyControlClassPlan.equality.top 253 252 251 s6Step35EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step35EarlyControl_flags]
  rfl
theorem s6Step35EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step35EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step35EarlyControl_fit]
  rfl
theorem s6Step35EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step35EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step35EarlyControl_history]
  rfl
theorem s6Step35EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step35EarlyControlHistoryArena false 0 0 254 802 []).map (fun _ => true)=some true := by
  rw [s6Step35EarlyControl_sigma]
  rfl
theorem s6Step35EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step35EarlyControlSigmaArena 857).map (fun _ => true)=some true := by
  rw [s6Step35EarlyControl_branch]
  rfl
private theorem s6Step35EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s6Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step35EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] : List Wire).toFinset⊆s6Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EarlyControl_logged : s6Step35EarlyControlPlan.Logged s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 857 15 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step35EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step35EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step35EarlyControl_zero
  · exact s6Step35EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step35EarlyControl_flags
  · exact s6Step35EarlyControl_fit
  · exact s6Step35EarlyControl_history
  · exact s6Step35EarlyControl_sigma
  · exact s6Step35EarlyControl_branch
theorem s6Step35EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 857 15 s6Step35EarlyControlLog=some s6Step35EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step35EarlyControlPlan s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 857 15 s6Step35EarlyControl_logged
theorem s6Step35EarlyControl_checked : (compileHmrEarlyControlLog s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 254 253 252 251 857 15 s6Step35EarlyControlLog).map (fun P => P.outputArena.live.card)=some 843 := by
  rw [s6Step35EarlyControl_plan_checked]
  decide +kernel

def s6Step36EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36EarlyControlLog : HmrEarlyControlLog := ⟨[874, 887, 857, 859, 875],[779],[877],[855, 803, 922, 879, 784, 861],[]⟩
def s6Step36EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,887⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,875⟩]⟩
def s6Step36EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step36EarlyControlPositiveArena,[779],s6Step36EarlyControlEqualityArena,[877],⟨⟨868,false⟩,[⟨⟨779,false⟩,877⟩]⟩⟩
def s6Step36EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step36EarlyControlZeroArena,s6Step36EarlyControlZeroPlan,s6Step36EarlyControlClassPlan,s6Step36EarlyControlFlagArena,s6Step36EarlyControlFittedArena,s6Step36EarlyControlHistoryArena,s6Step36EarlyControlSigmaArena,s6Step36EarlyControlOutputArena,s6Step36EarlyControlLog⟩
private theorem s6Step36EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_zeroBorrow : s6Step36EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step36EarlyControlLog.zeroWork=some s6Step36EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36EarlyControlArena s6Step36EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36EarlyControl_zero : compileHmrEqualityLog s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step36EarlyControlLog.zeroWork=some (s6Step36EarlyControlZeroArena,s6Step36EarlyControlLog.zeroWork,s6Step36EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step36EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step36EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step36EarlyControl_positiveBorrow : s6Step36EarlyControlZeroArena.checkBorrow (1) s6Step36EarlyControlLog.positiveWork=some s6Step36EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36EarlyControlZeroArena s6Step36EarlyControlPositiveArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step36EarlyControl_classEqualityOwned : ([868, 779] : List Wire).toFinset⊆s6Step36EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_classEqualityBorrow : s6Step36EarlyControlPositiveArena.checkBorrow (([868, 779] : List Wire).length-1) s6Step36EarlyControlLog.classWork=some s6Step36EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36EarlyControlPositiveArena s6Step36EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step36EarlyControl_classEquality : compileHmrEqualityLog s6Step36EarlyControlPositiveArena [868, 779] 0 s6Step36EarlyControlLog.classWork=some (s6Step36EarlyControlEqualityArena,s6Step36EarlyControlLog.classWork,s6Step36EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step36EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step36EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step36EarlyControl_classOwned : ([769, 875, 868] : List Wire).toFinset⊆s6Step36EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EarlyControl_class : compileHmrSourceClassLog s6Step36EarlyControlZeroArena false 769 s6Step36EarlyControlZeroPlan.top 0 868 s6Step36EarlyControlLog.positiveWork s6Step36EarlyControlLog.classWork=some s6Step36EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step36EarlyControlClassPlan s6Step36EarlyControlZeroArena false 769 s6Step36EarlyControlZeroPlan.top 0 868
  constructor
  · decide +kernel
  · exact s6Step36EarlyControl_classOwned
  · exact s6Step36EarlyControl_positiveBorrow
  · exact s6Step36EarlyControl_classEquality
private theorem s6Step36EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step36EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_flagsBorrow : s6Step36EarlyControlEqualityArena.checkBorrow (6) s6Step36EarlyControlLog.flagWork=some s6Step36EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36EarlyControlEqualityArena s6Step36EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36EarlyControl_flags : compileHmrFlagsLog s6Step36EarlyControlClassPlan.equalityArena s6Step36EarlyControlClassPlan.equality.top 253 252 251 s6Step36EarlyControlLog.flagWork=some s6Step36EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step36EarlyControl_flagsOwned⟩
  · exact s6Step36EarlyControl_flagsBorrow
private theorem s6Step36EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step36EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_fitBorrow : s6Step36EarlyControlFlagArena.checkBorrow ((15-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).length)) s6Step36EarlyControlLog.recordFresh=some s6Step36EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36EarlyControlFlagArena s6Step36EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36EarlyControl_fit : compileHmrRecordGrowLog s6Step36EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36EarlyControlLog.recordFresh=some s6Step36EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step36EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step36EarlyControl_fitBorrow
private theorem s6Step36EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_historyBorrow : s6Step36EarlyControlArena.checkBorrow ((15-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).length)) s6Step36EarlyControlLog.recordFresh=some s6Step36EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36EarlyControlArena s6Step36EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step36EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36EarlyControl_history : compileHmrRecordGrowLog s6Step36EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36EarlyControlLog.recordFresh=some s6Step36EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step36EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step36EarlyControl_historyBorrow
private theorem s6Step36EarlyControl_sigmaOwned : ([254, 868] : List Wire).toFinset⊆s6Step36EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_sigmaReleaseOwned : ([868] : List Wire).toFinset⊆s6Step36EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_sigmaRelease : s6Step36EarlyControlHistoryArena.release {868} (fun _ => false)=some s6Step36EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step36EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step36EarlyControlHistoryArena s6Step36EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [868] rfl rfl
    decide +kernel
private theorem s6Step36EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step36EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EarlyControl_branch : compileHmrBranchRetirement s6Step36EarlyControlSigmaArena 793=some s6Step36EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step36EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step36EarlyControlSigmaArena s6Step36EarlyControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
theorem s6Step36EarlyControl_sigma : compileHmrSigmaDropLog s6Step36EarlyControlHistoryArena false 0 0 254 868 []=some s6Step36EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step36EarlyControl_sigmaOwned⟩
  · exact s6Step36EarlyControl_sigmaRelease
theorem s6Step36EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step36EarlyControlLog.zeroWork).map Prod.snd=some (s6Step36EarlyControlLog.zeroWork,s6Step36EarlyControlZeroPlan) := by
  rw [s6Step36EarlyControl_zero]
  rfl
theorem s6Step36EarlyControl_classProjection : (compileHmrSourceClassLog s6Step36EarlyControlZeroArena false 769 s6Step36EarlyControlZeroPlan.top 0 868 s6Step36EarlyControlLog.positiveWork s6Step36EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step36EarlyControlClassPlan.positiveWork,s6Step36EarlyControlClassPlan.equalityWork,s6Step36EarlyControlClassPlan.equality) := by
  rw [s6Step36EarlyControl_class]
  rfl
theorem s6Step36EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step36EarlyControlClassPlan.equalityArena s6Step36EarlyControlClassPlan.equality.top 253 252 251 s6Step36EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step36EarlyControl_flags]
  rfl
theorem s6Step36EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step36EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step36EarlyControl_fit]
  rfl
theorem s6Step36EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step36EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step36EarlyControl_history]
  rfl
theorem s6Step36EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step36EarlyControlHistoryArena false 0 0 254 868 []).map (fun _ => true)=some true := by
  rw [s6Step36EarlyControl_sigma]
  rfl
theorem s6Step36EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step36EarlyControlSigmaArena 793).map (fun _ => true)=some true := by
  rw [s6Step36EarlyControl_branch]
  rfl
private theorem s6Step36EarlyControl_entrySigmaOwned : ([868, 254] : List Wire).toFinset⊆s6Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EarlyControl_logged : s6Step36EarlyControlPlan.Logged s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step36EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step36EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step36EarlyControl_zero
  · exact s6Step36EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step36EarlyControl_flags
  · exact s6Step36EarlyControl_fit
  · exact s6Step36EarlyControl_history
  · exact s6Step36EarlyControl_sigma
  · exact s6Step36EarlyControl_branch
theorem s6Step36EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 s6Step36EarlyControlLog=some s6Step36EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step36EarlyControlPlan s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 s6Step36EarlyControl_logged
theorem s6Step36EarlyControl_checked : (compileHmrEarlyControlLog s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 s6Step36EarlyControlLog).map (fun P => P.outputArena.live.card)=some 843 := by
  rw [s6Step36EarlyControl_plan_checked]
  decide +kernel

def s6Step37EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step37EarlyControlLog : HmrEarlyControlLog := ⟨[858, 887, 874, 875, 779],[877],[855],[803, 922, 879, 784, 861, 785],[781]⟩
def s6Step37EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,858⟩,⟨⟨772,false⟩,887⟩,⟨⟨771,false⟩,874⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,779⟩]⟩
def s6Step37EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step37EarlyControlPositiveArena,[877],s6Step37EarlyControlEqualityArena,[855],⟨⟨793,false⟩,[⟨⟨877,false⟩,855⟩]⟩⟩
def s6Step37EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step37EarlyControlZeroArena,s6Step37EarlyControlZeroPlan,s6Step37EarlyControlClassPlan,s6Step37EarlyControlFlagArena,s6Step37EarlyControlFittedArena,s6Step37EarlyControlHistoryArena,s6Step37EarlyControlSigmaArena,s6Step37EarlyControlOutputArena,s6Step37EarlyControlLog⟩
private theorem s6Step37EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_zeroBorrow : s6Step37EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step37EarlyControlLog.zeroWork=some s6Step37EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step37EarlyControlArena s6Step37EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step37EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step37EarlyControl_zero : compileHmrEqualityLog s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step37EarlyControlLog.zeroWork=some (s6Step37EarlyControlZeroArena,s6Step37EarlyControlLog.zeroWork,s6Step37EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step37EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step37EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step37EarlyControl_positiveBorrow : s6Step37EarlyControlZeroArena.checkBorrow (1) s6Step37EarlyControlLog.positiveWork=some s6Step37EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step37EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step37EarlyControlZeroArena s6Step37EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step37EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step37EarlyControl_classEqualityOwned : ([793, 877] : List Wire).toFinset⊆s6Step37EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_classEqualityBorrow : s6Step37EarlyControlPositiveArena.checkBorrow (([793, 877] : List Wire).length-1) s6Step37EarlyControlLog.classWork=some s6Step37EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step37EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step37EarlyControlPositiveArena s6Step37EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step37EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step37EarlyControl_classEquality : compileHmrEqualityLog s6Step37EarlyControlPositiveArena [793, 877] 0 s6Step37EarlyControlLog.classWork=some (s6Step37EarlyControlEqualityArena,s6Step37EarlyControlLog.classWork,s6Step37EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step37EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step37EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step37EarlyControl_classOwned : ([769, 779, 793] : List Wire).toFinset⊆s6Step37EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EarlyControl_class : compileHmrSourceClassLog s6Step37EarlyControlZeroArena false 769 s6Step37EarlyControlZeroPlan.top 0 793 s6Step37EarlyControlLog.positiveWork s6Step37EarlyControlLog.classWork=some s6Step37EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step37EarlyControlClassPlan s6Step37EarlyControlZeroArena false 769 s6Step37EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step37EarlyControl_classOwned
  · exact s6Step37EarlyControl_positiveBorrow
  · exact s6Step37EarlyControl_classEquality
private theorem s6Step37EarlyControl_flagsOwned : ([855, 253, 252, 251] : List Wire).toFinset⊆s6Step37EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_flagsBorrow : s6Step37EarlyControlEqualityArena.checkBorrow (6) s6Step37EarlyControlLog.flagWork=some s6Step37EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step37EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step37EarlyControlEqualityArena s6Step37EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step37EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step37EarlyControl_flags : compileHmrFlagsLog s6Step37EarlyControlClassPlan.equalityArena s6Step37EarlyControlClassPlan.equality.top 253 252 251 s6Step37EarlyControlLog.flagWork=some s6Step37EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step37EarlyControl_flagsOwned⟩
  · exact s6Step37EarlyControl_flagsBorrow
private theorem s6Step37EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step37EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlFlagArena (fun q => ([(0,781),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_fitBorrow : s6Step37EarlyControlFlagArena.checkBorrow ((16-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).length)) s6Step37EarlyControlLog.recordFresh=some s6Step37EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step37EarlyControlFlagArena (fun q => ([(0,781),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step37EarlyControlFlagArena s6Step37EarlyControlFittedArena (fun q => ([(0,781),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step37EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step37EarlyControl_fit : compileHmrRecordGrowLog s6Step37EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37EarlyControlLog.recordFresh=some s6Step37EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step37EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step37EarlyControl_fitBorrow
private theorem s6Step37EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_historyBorrow : s6Step37EarlyControlArena.checkBorrow ((16-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).length)) s6Step37EarlyControlLog.recordFresh=some s6Step37EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step37EarlyControlArena s6Step37EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step37EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step37EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step37EarlyControl_history : compileHmrRecordGrowLog s6Step37EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37EarlyControlLog.recordFresh=some s6Step37EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step37EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step37EarlyControl_historyBorrow
private theorem s6Step37EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step37EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step37EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_sigmaRelease : s6Step37EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step37EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step37EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step37EarlyControlHistoryArena s6Step37EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
private theorem s6Step37EarlyControl_branchOwned : ([868] : List Wire).toFinset⊆s6Step37EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EarlyControl_branch : compileHmrBranchRetirement s6Step37EarlyControlSigmaArena 868=some s6Step37EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step37EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step37EarlyControlSigmaArena s6Step37EarlyControlOutputArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [868] rfl rfl
    decide +kernel
theorem s6Step37EarlyControl_sigma : compileHmrSigmaDropLog s6Step37EarlyControlHistoryArena false 0 0 254 793 []=some s6Step37EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step37EarlyControl_sigmaOwned⟩
  · exact s6Step37EarlyControl_sigmaRelease
theorem s6Step37EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step37EarlyControlLog.zeroWork).map Prod.snd=some (s6Step37EarlyControlLog.zeroWork,s6Step37EarlyControlZeroPlan) := by
  rw [s6Step37EarlyControl_zero]
  rfl
theorem s6Step37EarlyControl_classProjection : (compileHmrSourceClassLog s6Step37EarlyControlZeroArena false 769 s6Step37EarlyControlZeroPlan.top 0 793 s6Step37EarlyControlLog.positiveWork s6Step37EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step37EarlyControlClassPlan.positiveWork,s6Step37EarlyControlClassPlan.equalityWork,s6Step37EarlyControlClassPlan.equality) := by
  rw [s6Step37EarlyControl_class]
  rfl
theorem s6Step37EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step37EarlyControlClassPlan.equalityArena s6Step37EarlyControlClassPlan.equality.top 253 252 251 s6Step37EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step37EarlyControl_flags]
  rfl
theorem s6Step37EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step37EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step37EarlyControl_fit]
  rfl
theorem s6Step37EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step37EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step37EarlyControl_history]
  rfl
theorem s6Step37EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step37EarlyControlHistoryArena false 0 0 254 793 []).map (fun _ => true)=some true := by
  rw [s6Step37EarlyControl_sigma]
  rfl
theorem s6Step37EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step37EarlyControlSigmaArena 868).map (fun _ => true)=some true := by
  rw [s6Step37EarlyControl_branch]
  rfl
private theorem s6Step37EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step37EarlyControl_entryRecordOwned : ([868, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EarlyControl_logged : s6Step37EarlyControlPlan.Logged s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 793 254 253 252 251 868 16 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step37EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step37EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step37EarlyControl_zero
  · exact s6Step37EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step37EarlyControl_flags
  · exact s6Step37EarlyControl_fit
  · exact s6Step37EarlyControl_history
  · exact s6Step37EarlyControl_sigma
  · exact s6Step37EarlyControl_branch
theorem s6Step37EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 793 254 253 252 251 868 16 s6Step37EarlyControlLog=some s6Step37EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step37EarlyControlPlan s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 793 254 253 252 251 868 16 s6Step37EarlyControl_logged
theorem s6Step37EarlyControl_checked : (compileHmrEarlyControlLog s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 793 254 253 252 251 868 16 s6Step37EarlyControlLog).map (fun P => P.outputArena.live.card)=some 845 := by
  rw [s6Step37EarlyControl_plan_checked]
  decide +kernel

def s6Step38EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step38EarlyControlLog : HmrEarlyControlLog := ⟨[907, 875, 779, 874, 868],[887],[877],[855, 803, 922, 879, 784, 861],[]⟩
def s6Step38EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,907⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,779⟩,⟨⟨770,false⟩,874⟩,⟨⟨769,false⟩,868⟩]⟩
def s6Step38EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step38EarlyControlPositiveArena,[887],s6Step38EarlyControlEqualityArena,[877],⟨⟨793,false⟩,[⟨⟨887,false⟩,877⟩]⟩⟩
def s6Step38EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step38EarlyControlZeroArena,s6Step38EarlyControlZeroPlan,s6Step38EarlyControlClassPlan,s6Step38EarlyControlFlagArena,s6Step38EarlyControlFittedArena,s6Step38EarlyControlHistoryArena,s6Step38EarlyControlSigmaArena,s6Step38EarlyControlOutputArena,s6Step38EarlyControlLog⟩
private theorem s6Step38EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_zeroBorrow : s6Step38EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step38EarlyControlLog.zeroWork=some s6Step38EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step38EarlyControlArena s6Step38EarlyControlZeroArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step38EarlyControl_zero : compileHmrEqualityLog s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step38EarlyControlLog.zeroWork=some (s6Step38EarlyControlZeroArena,s6Step38EarlyControlLog.zeroWork,s6Step38EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step38EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step38EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step38EarlyControl_positiveBorrow : s6Step38EarlyControlZeroArena.checkBorrow (1) s6Step38EarlyControlLog.positiveWork=some s6Step38EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step38EarlyControlZeroArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step38EarlyControlZeroArena s6Step38EarlyControlPositiveArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step38EarlyControl_classEqualityOwned : ([793, 887] : List Wire).toFinset⊆s6Step38EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlPositiveArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_classEqualityBorrow : s6Step38EarlyControlPositiveArena.checkBorrow (([793, 887] : List Wire).length-1) s6Step38EarlyControlLog.classWork=some s6Step38EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step38EarlyControlPositiveArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step38EarlyControlPositiveArena s6Step38EarlyControlEqualityArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step38EarlyControl_classEquality : compileHmrEqualityLog s6Step38EarlyControlPositiveArena [793, 887] 0 s6Step38EarlyControlLog.classWork=some (s6Step38EarlyControlEqualityArena,s6Step38EarlyControlLog.classWork,s6Step38EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step38EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step38EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step38EarlyControl_classOwned : ([769, 868, 793] : List Wire).toFinset⊆s6Step38EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlZeroArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EarlyControl_class : compileHmrSourceClassLog s6Step38EarlyControlZeroArena false 769 s6Step38EarlyControlZeroPlan.top 0 793 s6Step38EarlyControlLog.positiveWork s6Step38EarlyControlLog.classWork=some s6Step38EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step38EarlyControlClassPlan s6Step38EarlyControlZeroArena false 769 s6Step38EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step38EarlyControl_classOwned
  · exact s6Step38EarlyControl_positiveBorrow
  · exact s6Step38EarlyControl_classEquality
private theorem s6Step38EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step38EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlEqualityArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_flagsBorrow : s6Step38EarlyControlEqualityArena.checkBorrow (6) s6Step38EarlyControlLog.flagWork=some s6Step38EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step38EarlyControlEqualityArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step38EarlyControlEqualityArena s6Step38EarlyControlFlagArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step38EarlyControl_flags : compileHmrFlagsLog s6Step38EarlyControlClassPlan.equalityArena s6Step38EarlyControlClassPlan.equality.top 253 252 251 s6Step38EarlyControlLog.flagWork=some s6Step38EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step38EarlyControl_flagsOwned⟩
  · exact s6Step38EarlyControl_flagsBorrow
private theorem s6Step38EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).toFinset⊆s6Step38EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlFlagArena (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_fitBorrow : s6Step38EarlyControlFlagArena.checkBorrow ((16-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).length)) s6Step38EarlyControlLog.recordFresh=some s6Step38EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step38EarlyControlFlagArena (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step38EarlyControlFlagArena s6Step38EarlyControlFittedArena (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step38EarlyControl_fit : compileHmrRecordGrowLog s6Step38EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38EarlyControlLog.recordFresh=some s6Step38EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step38EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step38EarlyControl_fitBorrow
private theorem s6Step38EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).toFinset⊆s6Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_historyBorrow : s6Step38EarlyControlArena.checkBorrow ((16-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).length)) s6Step38EarlyControlLog.recordFresh=some s6Step38EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step38EarlyControlArena s6Step38EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step38EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step38EarlyControl_history : compileHmrRecordGrowLog s6Step38EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38EarlyControlLog.recordFresh=some s6Step38EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step38EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step38EarlyControl_historyBorrow
private theorem s6Step38EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step38EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step38EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_sigmaRelease : s6Step38EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step38EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step38EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step38EarlyControlHistoryArena s6Step38EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
private theorem s6Step38EarlyControl_branchOwned : ([858] : List Wire).toFinset⊆s6Step38EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EarlyControl_branch : compileHmrBranchRetirement s6Step38EarlyControlSigmaArena 858=some s6Step38EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step38EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step38EarlyControlSigmaArena s6Step38EarlyControlOutputArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [858] rfl rfl
    decide +kernel
theorem s6Step38EarlyControl_sigma : compileHmrSigmaDropLog s6Step38EarlyControlHistoryArena false 0 0 254 793 []=some s6Step38EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step38EarlyControl_sigmaOwned⟩
  · exact s6Step38EarlyControl_sigmaRelease
theorem s6Step38EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step38EarlyControlLog.zeroWork).map Prod.snd=some (s6Step38EarlyControlLog.zeroWork,s6Step38EarlyControlZeroPlan) := by
  rw [s6Step38EarlyControl_zero]
  rfl
theorem s6Step38EarlyControl_classProjection : (compileHmrSourceClassLog s6Step38EarlyControlZeroArena false 769 s6Step38EarlyControlZeroPlan.top 0 793 s6Step38EarlyControlLog.positiveWork s6Step38EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step38EarlyControlClassPlan.positiveWork,s6Step38EarlyControlClassPlan.equalityWork,s6Step38EarlyControlClassPlan.equality) := by
  rw [s6Step38EarlyControl_class]
  rfl
theorem s6Step38EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step38EarlyControlClassPlan.equalityArena s6Step38EarlyControlClassPlan.equality.top 253 252 251 s6Step38EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step38EarlyControl_flags]
  rfl
theorem s6Step38EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step38EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step38EarlyControl_fit]
  rfl
theorem s6Step38EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step38EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step38EarlyControl_history]
  rfl
theorem s6Step38EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step38EarlyControlHistoryArena false 0 0 254 793 []).map (fun _ => true)=some true := by
  rw [s6Step38EarlyControl_sigma]
  rfl
theorem s6Step38EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step38EarlyControlSigmaArena 858).map (fun _ => true)=some true := by
  rw [s6Step38EarlyControl_branch]
  rfl
private theorem s6Step38EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step38EarlyControl_entryRecordOwned : ([858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).toFinset⊆s6Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EarlyControl_logged : s6Step38EarlyControlPlan.Logged s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 793 254 253 252 251 858 16 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step38EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step38EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step38EarlyControl_zero
  · exact s6Step38EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step38EarlyControl_flags
  · exact s6Step38EarlyControl_fit
  · exact s6Step38EarlyControl_history
  · exact s6Step38EarlyControl_sigma
  · exact s6Step38EarlyControl_branch
theorem s6Step38EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 793 254 253 252 251 858 16 s6Step38EarlyControlLog=some s6Step38EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step38EarlyControlPlan s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 793 254 253 252 251 858 16 s6Step38EarlyControl_logged
theorem s6Step38EarlyControl_checked : (compileHmrEarlyControlLog s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 793 254 253 252 251 858 16 s6Step38EarlyControlLog).map (fun P => P.outputArena.live.card)=some 844 := by
  rw [s6Step38EarlyControl_plan_checked]
  decide +kernel

def s6Step39EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step39EarlyControlLog : HmrEarlyControlLog := ⟨[845, 779, 875, 907, 868],[887],[877],[855, 803, 922, 879, 784, 861],[785]⟩
def s6Step39EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨772,false⟩,779⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,868⟩]⟩
def s6Step39EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step39EarlyControlPositiveArena,[887],s6Step39EarlyControlEqualityArena,[877],⟨⟨858,false⟩,[⟨⟨887,false⟩,877⟩]⟩⟩
def s6Step39EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step39EarlyControlZeroArena,s6Step39EarlyControlZeroPlan,s6Step39EarlyControlClassPlan,s6Step39EarlyControlFlagArena,s6Step39EarlyControlFittedArena,s6Step39EarlyControlHistoryArena,s6Step39EarlyControlSigmaArena,s6Step39EarlyControlOutputArena,s6Step39EarlyControlLog⟩
private theorem s6Step39EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_zeroBorrow : s6Step39EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step39EarlyControlLog.zeroWork=some s6Step39EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step39EarlyControlArena s6Step39EarlyControlZeroArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step39EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step39EarlyControl_zero : compileHmrEqualityLog s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step39EarlyControlLog.zeroWork=some (s6Step39EarlyControlZeroArena,s6Step39EarlyControlLog.zeroWork,s6Step39EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step39EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step39EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step39EarlyControl_positiveBorrow : s6Step39EarlyControlZeroArena.checkBorrow (1) s6Step39EarlyControlLog.positiveWork=some s6Step39EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step39EarlyControlZeroArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step39EarlyControlZeroArena s6Step39EarlyControlPositiveArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step39EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step39EarlyControl_classEqualityOwned : ([858, 887] : List Wire).toFinset⊆s6Step39EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlPositiveArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_classEqualityBorrow : s6Step39EarlyControlPositiveArena.checkBorrow (([858, 887] : List Wire).length-1) s6Step39EarlyControlLog.classWork=some s6Step39EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step39EarlyControlPositiveArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step39EarlyControlPositiveArena s6Step39EarlyControlEqualityArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step39EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step39EarlyControl_classEquality : compileHmrEqualityLog s6Step39EarlyControlPositiveArena [858, 887] 0 s6Step39EarlyControlLog.classWork=some (s6Step39EarlyControlEqualityArena,s6Step39EarlyControlLog.classWork,s6Step39EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step39EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step39EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step39EarlyControl_classOwned : ([769, 868, 858] : List Wire).toFinset⊆s6Step39EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlZeroArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EarlyControl_class : compileHmrSourceClassLog s6Step39EarlyControlZeroArena false 769 s6Step39EarlyControlZeroPlan.top 0 858 s6Step39EarlyControlLog.positiveWork s6Step39EarlyControlLog.classWork=some s6Step39EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step39EarlyControlClassPlan s6Step39EarlyControlZeroArena false 769 s6Step39EarlyControlZeroPlan.top 0 858
  constructor
  · decide +kernel
  · exact s6Step39EarlyControl_classOwned
  · exact s6Step39EarlyControl_positiveBorrow
  · exact s6Step39EarlyControl_classEquality
private theorem s6Step39EarlyControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step39EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlEqualityArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_flagsBorrow : s6Step39EarlyControlEqualityArena.checkBorrow (6) s6Step39EarlyControlLog.flagWork=some s6Step39EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step39EarlyControlEqualityArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step39EarlyControlEqualityArena s6Step39EarlyControlFlagArena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step39EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step39EarlyControl_flags : compileHmrFlagsLog s6Step39EarlyControlClassPlan.equalityArena s6Step39EarlyControlClassPlan.equality.top 253 252 251 s6Step39EarlyControlLog.flagWork=some s6Step39EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step39EarlyControl_flagsOwned⟩
  · exact s6Step39EarlyControl_flagsBorrow
private theorem s6Step39EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).toFinset⊆s6Step39EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlFlagArena (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_fitBorrow : s6Step39EarlyControlFlagArena.checkBorrow ((17-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).length)) s6Step39EarlyControlLog.recordFresh=some s6Step39EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step39EarlyControlFlagArena (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step39EarlyControlFlagArena s6Step39EarlyControlFittedArena (fun q => ([(0,782),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(784,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step39EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step39EarlyControl_fit : compileHmrRecordGrowLog s6Step39EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39EarlyControlLog.recordFresh=some s6Step39EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step39EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step39EarlyControl_fitBorrow
private theorem s6Step39EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).toFinset⊆s6Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_historyBorrow : s6Step39EarlyControlArena.checkBorrow ((17-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).length)) s6Step39EarlyControlLog.recordFresh=some s6Step39EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step39EarlyControlArena s6Step39EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step39EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step39EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step39EarlyControl_history : compileHmrRecordGrowLog s6Step39EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39EarlyControlLog.recordFresh=some s6Step39EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step39EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step39EarlyControl_historyBorrow
private theorem s6Step39EarlyControl_sigmaOwned : ([254, 858] : List Wire).toFinset⊆s6Step39EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_sigmaReleaseOwned : ([858] : List Wire).toFinset⊆s6Step39EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_sigmaRelease : s6Step39EarlyControlHistoryArena.release {858} (fun _ => false)=some s6Step39EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step39EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step39EarlyControlHistoryArena s6Step39EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [858] rfl rfl
    decide +kernel
private theorem s6Step39EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step39EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EarlyControl_branch : compileHmrBranchRetirement s6Step39EarlyControlSigmaArena 793=some s6Step39EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step39EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step39EarlyControlSigmaArena s6Step39EarlyControlOutputArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
theorem s6Step39EarlyControl_sigma : compileHmrSigmaDropLog s6Step39EarlyControlHistoryArena false 0 0 254 858 []=some s6Step39EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step39EarlyControl_sigmaOwned⟩
  · exact s6Step39EarlyControl_sigmaRelease
theorem s6Step39EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step39EarlyControlLog.zeroWork).map Prod.snd=some (s6Step39EarlyControlLog.zeroWork,s6Step39EarlyControlZeroPlan) := by
  rw [s6Step39EarlyControl_zero]
  rfl
theorem s6Step39EarlyControl_classProjection : (compileHmrSourceClassLog s6Step39EarlyControlZeroArena false 769 s6Step39EarlyControlZeroPlan.top 0 858 s6Step39EarlyControlLog.positiveWork s6Step39EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step39EarlyControlClassPlan.positiveWork,s6Step39EarlyControlClassPlan.equalityWork,s6Step39EarlyControlClassPlan.equality) := by
  rw [s6Step39EarlyControl_class]
  rfl
theorem s6Step39EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step39EarlyControlClassPlan.equalityArena s6Step39EarlyControlClassPlan.equality.top 253 252 251 s6Step39EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step39EarlyControl_flags]
  rfl
theorem s6Step39EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step39EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step39EarlyControl_fit]
  rfl
theorem s6Step39EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step39EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step39EarlyControl_history]
  rfl
theorem s6Step39EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step39EarlyControlHistoryArena false 0 0 254 858 []).map (fun _ => true)=some true := by
  rw [s6Step39EarlyControl_sigma]
  rfl
theorem s6Step39EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step39EarlyControlSigmaArena 793).map (fun _ => true)=some true := by
  rw [s6Step39EarlyControl_branch]
  rfl
private theorem s6Step39EarlyControl_entrySigmaOwned : ([858, 254] : List Wire).toFinset⊆s6Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step39EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] : List Wire).toFinset⊆s6Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EarlyControl_logged : s6Step39EarlyControlPlan.Logged s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 858 254 253 252 251 793 17 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step39EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step39EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step39EarlyControl_zero
  · exact s6Step39EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step39EarlyControl_flags
  · exact s6Step39EarlyControl_fit
  · exact s6Step39EarlyControl_history
  · exact s6Step39EarlyControl_sigma
  · exact s6Step39EarlyControl_branch
theorem s6Step39EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 858 254 253 252 251 793 17 s6Step39EarlyControlLog=some s6Step39EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step39EarlyControlPlan s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 858 254 253 252 251 793 17 s6Step39EarlyControl_logged
theorem s6Step39EarlyControl_checked : (compileHmrEarlyControlLog s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 858 254 253 252 251 793 17 s6Step39EarlyControlLog).map (fun P => P.outputArena.live.card)=some 845 := by
  rw [s6Step39EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
