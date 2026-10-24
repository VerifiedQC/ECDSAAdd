import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl2
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable

namespace ECDSAAdd.Arithmetic.Paper935

local instance HmrSourceS6EarlyControl3Disjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s6Step24EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step24EarlyControlLog : HmrEarlyControlLog := ⟨[859, 876, 887, 881, 853],[860],[807],[862, 867, 786, 877, 855, 803],[]⟩
def s6Step24EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,887⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,853⟩]⟩
def s6Step24EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step24EarlyControlPositiveArena,[860],s6Step24EarlyControlEqualityArena,[807],⟨⟨794,false⟩,[⟨⟨860,false⟩,807⟩]⟩⟩
def s6Step24EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step24EarlyControlZeroArena,s6Step24EarlyControlZeroPlan,s6Step24EarlyControlClassPlan,s6Step24EarlyControlFlagArena,s6Step24EarlyControlFittedArena,s6Step24EarlyControlHistoryArena,s6Step24EarlyControlSigmaArena,s6Step24EarlyControlOutputArena,s6Step24EarlyControlLog⟩
private theorem s6Step24EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_zeroBorrow : s6Step24EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step24EarlyControlLog.zeroWork=some s6Step24EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step24EarlyControlArena s6Step24EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step24EarlyControl_zero : compileHmrEqualityLog s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step24EarlyControlLog.zeroWork=some (s6Step24EarlyControlZeroArena,s6Step24EarlyControlLog.zeroWork,s6Step24EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step24EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step24EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step24EarlyControl_positiveBorrow : s6Step24EarlyControlZeroArena.checkBorrow (1) s6Step24EarlyControlLog.positiveWork=some s6Step24EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step24EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step24EarlyControlZeroArena s6Step24EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step24EarlyControl_classEqualityOwned : ([794, 860] : List Wire).toFinset⊆s6Step24EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_classEqualityBorrow : s6Step24EarlyControlPositiveArena.checkBorrow (([794, 860] : List Wire).length-1) s6Step24EarlyControlLog.classWork=some s6Step24EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step24EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step24EarlyControlPositiveArena s6Step24EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step24EarlyControl_classEquality : compileHmrEqualityLog s6Step24EarlyControlPositiveArena [794, 860] 0 s6Step24EarlyControlLog.classWork=some (s6Step24EarlyControlEqualityArena,s6Step24EarlyControlLog.classWork,s6Step24EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step24EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step24EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step24EarlyControl_classOwned : ([769, 853, 794] : List Wire).toFinset⊆s6Step24EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EarlyControl_class : compileHmrSourceClassLog s6Step24EarlyControlZeroArena false 769 s6Step24EarlyControlZeroPlan.top 0 794 s6Step24EarlyControlLog.positiveWork s6Step24EarlyControlLog.classWork=some s6Step24EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step24EarlyControlClassPlan s6Step24EarlyControlZeroArena false 769 s6Step24EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s6Step24EarlyControl_classOwned
  · exact s6Step24EarlyControl_positiveBorrow
  · exact s6Step24EarlyControl_classEquality
private theorem s6Step24EarlyControl_flagsOwned : ([807, 793, 802, 779] : List Wire).toFinset⊆s6Step24EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_flagsBorrow : s6Step24EarlyControlEqualityArena.checkBorrow (6) s6Step24EarlyControlLog.flagWork=some s6Step24EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step24EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step24EarlyControlEqualityArena s6Step24EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step24EarlyControl_flags : compileHmrFlagsLog s6Step24EarlyControlClassPlan.equalityArena s6Step24EarlyControlClassPlan.equality.top 793 802 779 s6Step24EarlyControlLog.flagWork=some s6Step24EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step24EarlyControl_flagsOwned⟩
  · exact s6Step24EarlyControl_flagsBorrow
private theorem s6Step24EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).toFinset⊆s6Step24EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_fitBorrow : s6Step24EarlyControlFlagArena.checkBorrow ((9-([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).length)) s6Step24EarlyControlLog.recordFresh=some s6Step24EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step24EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step24EarlyControlFlagArena s6Step24EarlyControlFittedArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step24EarlyControl_fit : compileHmrRecordGrowLog s6Step24EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24EarlyControlLog.recordFresh=some s6Step24EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step24EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step24EarlyControl_fitBorrow
private theorem s6Step24EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).toFinset⊆s6Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_historyBorrow : s6Step24EarlyControlArena.checkBorrow ((9-([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).length)) s6Step24EarlyControlLog.recordFresh=some s6Step24EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step24EarlyControlArena s6Step24EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step24EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step24EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step24EarlyControl_history : compileHmrRecordGrowLog s6Step24EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24EarlyControlLog.recordFresh=some s6Step24EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step24EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step24EarlyControl_historyBorrow
private theorem s6Step24EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s6Step24EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s6Step24EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_sigmaRelease : s6Step24EarlyControlHistoryArena.release {794} (fun _ => false)=some s6Step24EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step24EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step24EarlyControlHistoryArena s6Step24EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel
private theorem s6Step24EarlyControl_branchOwned : ([813] : List Wire).toFinset⊆s6Step24EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EarlyControl_branch : compileHmrBranchRetirement s6Step24EarlyControlSigmaArena 813=some s6Step24EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step24EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step24EarlyControlSigmaArena s6Step24EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [813] rfl rfl
    decide +kernel
theorem s6Step24EarlyControl_sigma : compileHmrSigmaDropLog s6Step24EarlyControlHistoryArena false 0 0 254 794 []=some s6Step24EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step24EarlyControl_sigmaOwned⟩
  · exact s6Step24EarlyControl_sigmaRelease
theorem s6Step24EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step24EarlyControlLog.zeroWork).map Prod.snd=some (s6Step24EarlyControlLog.zeroWork,s6Step24EarlyControlZeroPlan) := by
  rw [s6Step24EarlyControl_zero]
  rfl
theorem s6Step24EarlyControl_classProjection : (compileHmrSourceClassLog s6Step24EarlyControlZeroArena false 769 s6Step24EarlyControlZeroPlan.top 0 794 s6Step24EarlyControlLog.positiveWork s6Step24EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step24EarlyControlClassPlan.positiveWork,s6Step24EarlyControlClassPlan.equalityWork,s6Step24EarlyControlClassPlan.equality) := by
  rw [s6Step24EarlyControl_class]
  rfl
theorem s6Step24EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step24EarlyControlClassPlan.equalityArena s6Step24EarlyControlClassPlan.equality.top 793 802 779 s6Step24EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step24EarlyControl_flags]
  rfl
theorem s6Step24EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step24EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step24EarlyControl_fit]
  rfl
theorem s6Step24EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step24EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step24EarlyControl_history]
  rfl
theorem s6Step24EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step24EarlyControlHistoryArena false 0 0 254 794 []).map (fun _ => true)=some true := by
  rw [s6Step24EarlyControl_sigma]
  rfl
theorem s6Step24EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step24EarlyControlSigmaArena 813).map (fun _ => true)=some true := by
  rw [s6Step24EarlyControl_branch]
  rfl
private theorem s6Step24EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s6Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step24EarlyControl_entryRecordOwned : ([813, 895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).toFinset⊆s6Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24EarlyControl_logged : s6Step24EarlyControlPlan.Logged s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 794 254 793 802 779 813 9 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step24EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step24EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step24EarlyControl_zero
  · exact s6Step24EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step24EarlyControl_flags
  · exact s6Step24EarlyControl_fit
  · exact s6Step24EarlyControl_history
  · exact s6Step24EarlyControl_sigma
  · exact s6Step24EarlyControl_branch
theorem s6Step24EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 794 254 793 802 779 813 9 s6Step24EarlyControlLog=some s6Step24EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step24EarlyControlPlan s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 794 254 793 802 779 813 9 s6Step24EarlyControl_logged
theorem s6Step24EarlyControl_checked : (compileHmrEarlyControlLog s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 794 254 793 802 779 813 9 s6Step24EarlyControlLog).map (fun P => P.outputArena.live.card)=some 833 := by
  rw [s6Step24EarlyControl_plan_checked]
  decide +kernel

def s6Step25EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step25EarlyControlLog : HmrEarlyControlLog := ⟨[853, 881, 813, 887, 807],[862],[867],[786, 877, 855, 803, 922, 879],[827]⟩
def s6Step25EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,853⟩,⟨⟨772,false⟩,881⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,887⟩,⟨⟨769,false⟩,807⟩]⟩
def s6Step25EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step25EarlyControlPositiveArena,[862],s6Step25EarlyControlEqualityArena,[867],⟨⟨859,false⟩,[⟨⟨862,false⟩,867⟩]⟩⟩
def s6Step25EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step25EarlyControlZeroArena,s6Step25EarlyControlZeroPlan,s6Step25EarlyControlClassPlan,s6Step25EarlyControlFlagArena,s6Step25EarlyControlFittedArena,s6Step25EarlyControlHistoryArena,s6Step25EarlyControlSigmaArena,s6Step25EarlyControlOutputArena,s6Step25EarlyControlLog⟩
private theorem s6Step25EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_zeroBorrow : s6Step25EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step25EarlyControlLog.zeroWork=some s6Step25EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step25EarlyControlArena s6Step25EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step25EarlyControl_zero : compileHmrEqualityLog s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step25EarlyControlLog.zeroWork=some (s6Step25EarlyControlZeroArena,s6Step25EarlyControlLog.zeroWork,s6Step25EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step25EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step25EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step25EarlyControl_positiveBorrow : s6Step25EarlyControlZeroArena.checkBorrow (1) s6Step25EarlyControlLog.positiveWork=some s6Step25EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step25EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step25EarlyControlZeroArena s6Step25EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step25EarlyControl_classEqualityOwned : ([859, 862] : List Wire).toFinset⊆s6Step25EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_classEqualityBorrow : s6Step25EarlyControlPositiveArena.checkBorrow (([859, 862] : List Wire).length-1) s6Step25EarlyControlLog.classWork=some s6Step25EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step25EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step25EarlyControlPositiveArena s6Step25EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step25EarlyControl_classEquality : compileHmrEqualityLog s6Step25EarlyControlPositiveArena [859, 862] 0 s6Step25EarlyControlLog.classWork=some (s6Step25EarlyControlEqualityArena,s6Step25EarlyControlLog.classWork,s6Step25EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step25EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step25EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step25EarlyControl_classOwned : ([769, 807, 859] : List Wire).toFinset⊆s6Step25EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EarlyControl_class : compileHmrSourceClassLog s6Step25EarlyControlZeroArena false 769 s6Step25EarlyControlZeroPlan.top 0 859 s6Step25EarlyControlLog.positiveWork s6Step25EarlyControlLog.classWork=some s6Step25EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step25EarlyControlClassPlan s6Step25EarlyControlZeroArena false 769 s6Step25EarlyControlZeroPlan.top 0 859
  constructor
  · decide +kernel
  · exact s6Step25EarlyControl_classOwned
  · exact s6Step25EarlyControl_positiveBorrow
  · exact s6Step25EarlyControl_classEquality
private theorem s6Step25EarlyControl_flagsOwned : ([867, 793, 802, 779] : List Wire).toFinset⊆s6Step25EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_flagsBorrow : s6Step25EarlyControlEqualityArena.checkBorrow (6) s6Step25EarlyControlLog.flagWork=some s6Step25EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step25EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step25EarlyControlEqualityArena s6Step25EarlyControlFlagArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step25EarlyControl_flags : compileHmrFlagsLog s6Step25EarlyControlClassPlan.equalityArena s6Step25EarlyControlClassPlan.equality.top 793 802 779 s6Step25EarlyControlLog.flagWork=some s6Step25EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step25EarlyControl_flagsOwned⟩
  · exact s6Step25EarlyControl_flagsBorrow
private theorem s6Step25EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).toFinset⊆s6Step25EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_fitBorrow : s6Step25EarlyControlFlagArena.checkBorrow ((10-([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).length)) s6Step25EarlyControlLog.recordFresh=some s6Step25EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step25EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step25EarlyControlFlagArena s6Step25EarlyControlFittedArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step25EarlyControl_fit : compileHmrRecordGrowLog s6Step25EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25EarlyControlLog.recordFresh=some s6Step25EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step25EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step25EarlyControl_fitBorrow
private theorem s6Step25EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).toFinset⊆s6Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_historyBorrow : s6Step25EarlyControlArena.checkBorrow ((10-([895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).length)) s6Step25EarlyControlLog.recordFresh=some s6Step25EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step25EarlyControlArena s6Step25EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step25EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step25EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step25EarlyControl_history : compileHmrRecordGrowLog s6Step25EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25EarlyControlLog.recordFresh=some s6Step25EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step25EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step25EarlyControl_historyBorrow
private theorem s6Step25EarlyControl_sigmaOwned : ([254, 859] : List Wire).toFinset⊆s6Step25EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_sigmaReleaseOwned : ([859] : List Wire).toFinset⊆s6Step25EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_sigmaRelease : s6Step25EarlyControlHistoryArena.release {859} (fun _ => false)=some s6Step25EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step25EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step25EarlyControlHistoryArena s6Step25EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [859] rfl rfl
    decide +kernel
private theorem s6Step25EarlyControl_branchOwned : ([876] : List Wire).toFinset⊆s6Step25EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EarlyControl_branch : compileHmrBranchRetirement s6Step25EarlyControlSigmaArena 876=some s6Step25EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step25EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step25EarlyControlSigmaArena s6Step25EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [876] rfl rfl
    decide +kernel
theorem s6Step25EarlyControl_sigma : compileHmrSigmaDropLog s6Step25EarlyControlHistoryArena false 0 0 254 859 []=some s6Step25EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step25EarlyControl_sigmaOwned⟩
  · exact s6Step25EarlyControl_sigmaRelease
theorem s6Step25EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step25EarlyControlLog.zeroWork).map Prod.snd=some (s6Step25EarlyControlLog.zeroWork,s6Step25EarlyControlZeroPlan) := by
  rw [s6Step25EarlyControl_zero]
  rfl
theorem s6Step25EarlyControl_classProjection : (compileHmrSourceClassLog s6Step25EarlyControlZeroArena false 769 s6Step25EarlyControlZeroPlan.top 0 859 s6Step25EarlyControlLog.positiveWork s6Step25EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step25EarlyControlClassPlan.positiveWork,s6Step25EarlyControlClassPlan.equalityWork,s6Step25EarlyControlClassPlan.equality) := by
  rw [s6Step25EarlyControl_class]
  rfl
theorem s6Step25EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step25EarlyControlClassPlan.equalityArena s6Step25EarlyControlClassPlan.equality.top 793 802 779 s6Step25EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step25EarlyControl_flags]
  rfl
theorem s6Step25EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step25EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step25EarlyControl_fit]
  rfl
theorem s6Step25EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step25EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step25EarlyControl_history]
  rfl
theorem s6Step25EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step25EarlyControlHistoryArena false 0 0 254 859 []).map (fun _ => true)=some true := by
  rw [s6Step25EarlyControl_sigma]
  rfl
theorem s6Step25EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step25EarlyControlSigmaArena 876).map (fun _ => true)=some true := by
  rw [s6Step25EarlyControl_branch]
  rfl
private theorem s6Step25EarlyControl_entrySigmaOwned : ([859, 254] : List Wire).toFinset⊆s6Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step25EarlyControl_entryRecordOwned : ([876, 895, 870, 872, 883, 831, 852, 911, 910, 799] : List Wire).toFinset⊆s6Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25EarlyControl_logged : s6Step25EarlyControlPlan.Logged s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 859 254 793 802 779 876 10 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step25EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step25EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step25EarlyControl_zero
  · exact s6Step25EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step25EarlyControl_flags
  · exact s6Step25EarlyControl_fit
  · exact s6Step25EarlyControl_history
  · exact s6Step25EarlyControl_sigma
  · exact s6Step25EarlyControl_branch
theorem s6Step25EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 859 254 793 802 779 876 10 s6Step25EarlyControlLog=some s6Step25EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step25EarlyControlPlan s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 859 254 793 802 779 876 10 s6Step25EarlyControl_logged
theorem s6Step25EarlyControl_checked : (compileHmrEarlyControlLog s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 859 254 793 802 779 876 10 s6Step25EarlyControlLog).map (fun P => P.outputArena.live.card)=some 836 := by
  rw [s6Step25EarlyControl_plan_checked]
  decide +kernel

def s6Step26EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step26EarlyControlLog : HmrEarlyControlLog := ⟨[859, 807, 887, 876, 813],[867],[786],[877, 855, 803, 922, 879, 784],[]⟩
def s6Step26EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,859⟩,⟨⟨772,false⟩,807⟩,⟨⟨771,false⟩,887⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step26EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step26EarlyControlPositiveArena,[867],s6Step26EarlyControlEqualityArena,[786],⟨⟨853,false⟩,[⟨⟨867,false⟩,786⟩]⟩⟩
def s6Step26EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step26EarlyControlZeroArena,s6Step26EarlyControlZeroPlan,s6Step26EarlyControlClassPlan,s6Step26EarlyControlFlagArena,s6Step26EarlyControlFittedArena,s6Step26EarlyControlHistoryArena,s6Step26EarlyControlSigmaArena,s6Step26EarlyControlOutputArena,s6Step26EarlyControlLog⟩
private theorem s6Step26EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_zeroBorrow : s6Step26EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step26EarlyControlLog.zeroWork=some s6Step26EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step26EarlyControlArena s6Step26EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step26EarlyControl_zero : compileHmrEqualityLog s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step26EarlyControlLog.zeroWork=some (s6Step26EarlyControlZeroArena,s6Step26EarlyControlLog.zeroWork,s6Step26EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step26EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step26EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step26EarlyControl_positiveBorrow : s6Step26EarlyControlZeroArena.checkBorrow (1) s6Step26EarlyControlLog.positiveWork=some s6Step26EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step26EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step26EarlyControlZeroArena s6Step26EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step26EarlyControl_classEqualityOwned : ([853, 867] : List Wire).toFinset⊆s6Step26EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_classEqualityBorrow : s6Step26EarlyControlPositiveArena.checkBorrow (([853, 867] : List Wire).length-1) s6Step26EarlyControlLog.classWork=some s6Step26EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step26EarlyControlPositiveArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step26EarlyControlPositiveArena s6Step26EarlyControlEqualityArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step26EarlyControl_classEquality : compileHmrEqualityLog s6Step26EarlyControlPositiveArena [853, 867] 0 s6Step26EarlyControlLog.classWork=some (s6Step26EarlyControlEqualityArena,s6Step26EarlyControlLog.classWork,s6Step26EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step26EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step26EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step26EarlyControl_classOwned : ([769, 813, 853] : List Wire).toFinset⊆s6Step26EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlZeroArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EarlyControl_class : compileHmrSourceClassLog s6Step26EarlyControlZeroArena false 769 s6Step26EarlyControlZeroPlan.top 0 853 s6Step26EarlyControlLog.positiveWork s6Step26EarlyControlLog.classWork=some s6Step26EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step26EarlyControlClassPlan s6Step26EarlyControlZeroArena false 769 s6Step26EarlyControlZeroPlan.top 0 853
  constructor
  · decide +kernel
  · exact s6Step26EarlyControl_classOwned
  · exact s6Step26EarlyControl_positiveBorrow
  · exact s6Step26EarlyControl_classEquality
private theorem s6Step26EarlyControl_flagsOwned : ([786, 793, 802, 779] : List Wire).toFinset⊆s6Step26EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_flagsBorrow : s6Step26EarlyControlEqualityArena.checkBorrow (6) s6Step26EarlyControlLog.flagWork=some s6Step26EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step26EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step26EarlyControlEqualityArena s6Step26EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step26EarlyControl_flags : compileHmrFlagsLog s6Step26EarlyControlClassPlan.equalityArena s6Step26EarlyControlClassPlan.equality.top 793 802 779 s6Step26EarlyControlLog.flagWork=some s6Step26EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step26EarlyControl_flagsOwned⟩
  · exact s6Step26EarlyControl_flagsBorrow
private theorem s6Step26EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).toFinset⊆s6Step26EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_fitBorrow : s6Step26EarlyControlFlagArena.checkBorrow ((10-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).length)) s6Step26EarlyControlLog.recordFresh=some s6Step26EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step26EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step26EarlyControlFlagArena s6Step26EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step26EarlyControl_fit : compileHmrRecordGrowLog s6Step26EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26EarlyControlLog.recordFresh=some s6Step26EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step26EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step26EarlyControl_fitBorrow
private theorem s6Step26EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).toFinset⊆s6Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_historyBorrow : s6Step26EarlyControlArena.checkBorrow ((10-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).length)) s6Step26EarlyControlLog.recordFresh=some s6Step26EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step26EarlyControlArena s6Step26EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step26EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step26EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step26EarlyControl_history : compileHmrRecordGrowLog s6Step26EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26EarlyControlLog.recordFresh=some s6Step26EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step26EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step26EarlyControl_historyBorrow
private theorem s6Step26EarlyControl_sigmaOwned : ([254, 853] : List Wire).toFinset⊆s6Step26EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_sigmaReleaseOwned : ([853] : List Wire).toFinset⊆s6Step26EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlHistoryArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_sigmaRelease : s6Step26EarlyControlHistoryArena.release {853} (fun _ => false)=some s6Step26EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step26EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step26EarlyControlHistoryArena s6Step26EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [853] rfl rfl
    decide +kernel
private theorem s6Step26EarlyControl_branchOwned : ([881] : List Wire).toFinset⊆s6Step26EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlSigmaArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EarlyControl_branch : compileHmrBranchRetirement s6Step26EarlyControlSigmaArena 881=some s6Step26EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step26EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step26EarlyControlSigmaArena s6Step26EarlyControlOutputArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [881] rfl rfl
    decide +kernel
theorem s6Step26EarlyControl_sigma : compileHmrSigmaDropLog s6Step26EarlyControlHistoryArena false 0 0 254 853 []=some s6Step26EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step26EarlyControl_sigmaOwned⟩
  · exact s6Step26EarlyControl_sigmaRelease
theorem s6Step26EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step26EarlyControlLog.zeroWork).map Prod.snd=some (s6Step26EarlyControlLog.zeroWork,s6Step26EarlyControlZeroPlan) := by
  rw [s6Step26EarlyControl_zero]
  rfl
theorem s6Step26EarlyControl_classProjection : (compileHmrSourceClassLog s6Step26EarlyControlZeroArena false 769 s6Step26EarlyControlZeroPlan.top 0 853 s6Step26EarlyControlLog.positiveWork s6Step26EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step26EarlyControlClassPlan.positiveWork,s6Step26EarlyControlClassPlan.equalityWork,s6Step26EarlyControlClassPlan.equality) := by
  rw [s6Step26EarlyControl_class]
  rfl
theorem s6Step26EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step26EarlyControlClassPlan.equalityArena s6Step26EarlyControlClassPlan.equality.top 793 802 779 s6Step26EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step26EarlyControl_flags]
  rfl
theorem s6Step26EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step26EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step26EarlyControl_fit]
  rfl
theorem s6Step26EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step26EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step26EarlyControl_history]
  rfl
theorem s6Step26EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step26EarlyControlHistoryArena false 0 0 254 853 []).map (fun _ => true)=some true := by
  rw [s6Step26EarlyControl_sigma]
  rfl
theorem s6Step26EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step26EarlyControlSigmaArena 881).map (fun _ => true)=some true := by
  rw [s6Step26EarlyControl_branch]
  rfl
private theorem s6Step26EarlyControl_entrySigmaOwned : ([853, 254] : List Wire).toFinset⊆s6Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step26EarlyControl_entryRecordOwned : ([881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).toFinset⊆s6Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26EarlyControl_logged : s6Step26EarlyControlPlan.Logged s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 853 254 793 802 779 881 10 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step26EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step26EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step26EarlyControl_zero
  · exact s6Step26EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step26EarlyControl_flags
  · exact s6Step26EarlyControl_fit
  · exact s6Step26EarlyControl_history
  · exact s6Step26EarlyControl_sigma
  · exact s6Step26EarlyControl_branch
theorem s6Step26EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 853 254 793 802 779 881 10 s6Step26EarlyControlLog=some s6Step26EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step26EarlyControlPlan s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 853 254 793 802 779 881 10 s6Step26EarlyControl_logged
theorem s6Step26EarlyControl_checked : (compileHmrEarlyControlLog s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 853 254 793 802 779 881 10 s6Step26EarlyControlLog).map (fun P => P.outputArena.live.card)=some 837 := by
  rw [s6Step26EarlyControl_plan_checked]
  decide +kernel

def s6Step27EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step27EarlyControlLog : HmrEarlyControlLog := ⟨[768, 793, 859, 867, 813],[881],[876],[877, 855, 803, 922, 879, 784],[901]⟩
def s6Step27EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,793⟩,⟨⟨771,false⟩,859⟩,⟨⟨770,false⟩,867⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step27EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step27EarlyControlPositiveArena,[881],s6Step27EarlyControlEqualityArena,[876],⟨⟨807,false⟩,[⟨⟨881,false⟩,876⟩]⟩⟩
def s6Step27EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step27EarlyControlZeroArena,s6Step27EarlyControlZeroPlan,s6Step27EarlyControlClassPlan,s6Step27EarlyControlFlagArena,s6Step27EarlyControlFittedArena,s6Step27EarlyControlHistoryArena,s6Step27EarlyControlSigmaArena,s6Step27EarlyControlOutputArena,s6Step27EarlyControlLog⟩
private theorem s6Step27EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_zeroBorrow : s6Step27EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step27EarlyControlLog.zeroWork=some s6Step27EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step27EarlyControlArena s6Step27EarlyControlZeroArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step27EarlyControl_zero : compileHmrEqualityLog s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step27EarlyControlLog.zeroWork=some (s6Step27EarlyControlZeroArena,s6Step27EarlyControlLog.zeroWork,s6Step27EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step27EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step27EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step27EarlyControl_positiveBorrow : s6Step27EarlyControlZeroArena.checkBorrow (1) s6Step27EarlyControlLog.positiveWork=some s6Step27EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step27EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step27EarlyControlZeroArena s6Step27EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step27EarlyControl_classEqualityOwned : ([807, 881] : List Wire).toFinset⊆s6Step27EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_classEqualityBorrow : s6Step27EarlyControlPositiveArena.checkBorrow (([807, 881] : List Wire).length-1) s6Step27EarlyControlLog.classWork=some s6Step27EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step27EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step27EarlyControlPositiveArena s6Step27EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step27EarlyControl_classEquality : compileHmrEqualityLog s6Step27EarlyControlPositiveArena [807, 881] 0 s6Step27EarlyControlLog.classWork=some (s6Step27EarlyControlEqualityArena,s6Step27EarlyControlLog.classWork,s6Step27EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step27EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step27EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step27EarlyControl_classOwned : ([769, 813, 807] : List Wire).toFinset⊆s6Step27EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EarlyControl_class : compileHmrSourceClassLog s6Step27EarlyControlZeroArena false 769 s6Step27EarlyControlZeroPlan.top 0 807 s6Step27EarlyControlLog.positiveWork s6Step27EarlyControlLog.classWork=some s6Step27EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step27EarlyControlClassPlan s6Step27EarlyControlZeroArena false 769 s6Step27EarlyControlZeroPlan.top 0 807
  constructor
  · decide +kernel
  · exact s6Step27EarlyControl_classOwned
  · exact s6Step27EarlyControl_positiveBorrow
  · exact s6Step27EarlyControl_classEquality
private theorem s6Step27EarlyControl_flagsOwned : ([876, 253, 802, 779] : List Wire).toFinset⊆s6Step27EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_flagsBorrow : s6Step27EarlyControlEqualityArena.checkBorrow (6) s6Step27EarlyControlLog.flagWork=some s6Step27EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step27EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step27EarlyControlEqualityArena s6Step27EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step27EarlyControl_flags : compileHmrFlagsLog s6Step27EarlyControlClassPlan.equalityArena s6Step27EarlyControlClassPlan.equality.top 253 802 779 s6Step27EarlyControlLog.flagWork=some s6Step27EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step27EarlyControl_flagsOwned⟩
  · exact s6Step27EarlyControl_flagsBorrow
private theorem s6Step27EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).toFinset⊆s6Step27EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_fitBorrow : s6Step27EarlyControlFlagArena.checkBorrow ((11-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).length)) s6Step27EarlyControlLog.recordFresh=some s6Step27EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step27EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step27EarlyControlFlagArena s6Step27EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step27EarlyControl_fit : compileHmrRecordGrowLog s6Step27EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27EarlyControlLog.recordFresh=some s6Step27EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step27EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step27EarlyControl_fitBorrow
private theorem s6Step27EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).toFinset⊆s6Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_historyBorrow : s6Step27EarlyControlArena.checkBorrow ((11-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).length)) s6Step27EarlyControlLog.recordFresh=some s6Step27EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step27EarlyControlArena s6Step27EarlyControlHistoryArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step27EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step27EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step27EarlyControl_history : compileHmrRecordGrowLog s6Step27EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27EarlyControlLog.recordFresh=some s6Step27EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step27EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step27EarlyControl_historyBorrow
private theorem s6Step27EarlyControl_sigmaOwned : ([254, 807] : List Wire).toFinset⊆s6Step27EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlHistoryArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_sigmaReleaseOwned : ([807] : List Wire).toFinset⊆s6Step27EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlHistoryArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_sigmaRelease : s6Step27EarlyControlHistoryArena.release {807} (fun _ => false)=some s6Step27EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step27EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step27EarlyControlHistoryArena s6Step27EarlyControlSigmaArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [807] rfl rfl
    decide +kernel
private theorem s6Step27EarlyControl_branchOwned : ([887] : List Wire).toFinset⊆s6Step27EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlSigmaArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EarlyControl_branch : compileHmrBranchRetirement s6Step27EarlyControlSigmaArena 887=some s6Step27EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step27EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step27EarlyControlSigmaArena s6Step27EarlyControlOutputArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [887] rfl rfl
    decide +kernel
theorem s6Step27EarlyControl_sigma : compileHmrSigmaDropLog s6Step27EarlyControlHistoryArena false 0 0 254 807 []=some s6Step27EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step27EarlyControl_sigmaOwned⟩
  · exact s6Step27EarlyControl_sigmaRelease
theorem s6Step27EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step27EarlyControlLog.zeroWork).map Prod.snd=some (s6Step27EarlyControlLog.zeroWork,s6Step27EarlyControlZeroPlan) := by
  rw [s6Step27EarlyControl_zero]
  rfl
theorem s6Step27EarlyControl_classProjection : (compileHmrSourceClassLog s6Step27EarlyControlZeroArena false 769 s6Step27EarlyControlZeroPlan.top 0 807 s6Step27EarlyControlLog.positiveWork s6Step27EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step27EarlyControlClassPlan.positiveWork,s6Step27EarlyControlClassPlan.equalityWork,s6Step27EarlyControlClassPlan.equality) := by
  rw [s6Step27EarlyControl_class]
  rfl
theorem s6Step27EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step27EarlyControlClassPlan.equalityArena s6Step27EarlyControlClassPlan.equality.top 253 802 779 s6Step27EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step27EarlyControl_flags]
  rfl
theorem s6Step27EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step27EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step27EarlyControl_fit]
  rfl
theorem s6Step27EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step27EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step27EarlyControl_history]
  rfl
theorem s6Step27EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step27EarlyControlHistoryArena false 0 0 254 807 []).map (fun _ => true)=some true := by
  rw [s6Step27EarlyControl_sigma]
  rfl
theorem s6Step27EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step27EarlyControlSigmaArena 887).map (fun _ => true)=some true := by
  rw [s6Step27EarlyControl_branch]
  rfl
private theorem s6Step27EarlyControl_entrySigmaOwned : ([807, 254] : List Wire).toFinset⊆s6Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step27EarlyControl_entryRecordOwned : ([887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827] : List Wire).toFinset⊆s6Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27EarlyControl_logged : s6Step27EarlyControlPlan.Logged s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 807 254 253 802 779 887 11 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step27EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step27EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step27EarlyControl_zero
  · exact s6Step27EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step27EarlyControl_flags
  · exact s6Step27EarlyControl_fit
  · exact s6Step27EarlyControl_history
  · exact s6Step27EarlyControl_sigma
  · exact s6Step27EarlyControl_branch
theorem s6Step27EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 807 254 253 802 779 887 11 s6Step27EarlyControlLog=some s6Step27EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step27EarlyControlPlan s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 807 254 253 802 779 887 11 s6Step27EarlyControl_logged
theorem s6Step27EarlyControl_checked : (compileHmrEarlyControlLog s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 807 254 253 802 779 887 11 s6Step27EarlyControlLog).map (fun P => P.outputArena.live.card)=some 838 := by
  rw [s6Step27EarlyControl_plan_checked]
  decide +kernel

def s6Step28EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step28EarlyControlLog : HmrEarlyControlLog := ⟨[768, 881, 876, 813, 887],[867],[877],[855, 803, 922, 879, 784, 917],[]⟩
def s6Step28EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,768⟩,⟨⟨772,false⟩,881⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,887⟩]⟩
def s6Step28EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step28EarlyControlPositiveArena,[867],s6Step28EarlyControlEqualityArena,[877],⟨⟨793,false⟩,[⟨⟨867,false⟩,877⟩]⟩⟩
def s6Step28EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step28EarlyControlZeroArena,s6Step28EarlyControlZeroPlan,s6Step28EarlyControlClassPlan,s6Step28EarlyControlFlagArena,s6Step28EarlyControlFittedArena,s6Step28EarlyControlHistoryArena,s6Step28EarlyControlSigmaArena,s6Step28EarlyControlOutputArena,s6Step28EarlyControlLog⟩
private theorem s6Step28EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_zeroBorrow : s6Step28EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step28EarlyControlLog.zeroWork=some s6Step28EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step28EarlyControlArena s6Step28EarlyControlZeroArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step28EarlyControl_zero : compileHmrEqualityLog s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step28EarlyControlLog.zeroWork=some (s6Step28EarlyControlZeroArena,s6Step28EarlyControlLog.zeroWork,s6Step28EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step28EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step28EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step28EarlyControl_positiveBorrow : s6Step28EarlyControlZeroArena.checkBorrow (1) s6Step28EarlyControlLog.positiveWork=some s6Step28EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step28EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step28EarlyControlZeroArena s6Step28EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step28EarlyControl_classEqualityOwned : ([793, 867] : List Wire).toFinset⊆s6Step28EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_classEqualityBorrow : s6Step28EarlyControlPositiveArena.checkBorrow (([793, 867] : List Wire).length-1) s6Step28EarlyControlLog.classWork=some s6Step28EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step28EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step28EarlyControlPositiveArena s6Step28EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step28EarlyControl_classEquality : compileHmrEqualityLog s6Step28EarlyControlPositiveArena [793, 867] 0 s6Step28EarlyControlLog.classWork=some (s6Step28EarlyControlEqualityArena,s6Step28EarlyControlLog.classWork,s6Step28EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step28EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step28EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step28EarlyControl_classOwned : ([769, 887, 793] : List Wire).toFinset⊆s6Step28EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EarlyControl_class : compileHmrSourceClassLog s6Step28EarlyControlZeroArena false 769 s6Step28EarlyControlZeroPlan.top 0 793 s6Step28EarlyControlLog.positiveWork s6Step28EarlyControlLog.classWork=some s6Step28EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step28EarlyControlClassPlan s6Step28EarlyControlZeroArena false 769 s6Step28EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step28EarlyControl_classOwned
  · exact s6Step28EarlyControl_positiveBorrow
  · exact s6Step28EarlyControl_classEquality
private theorem s6Step28EarlyControl_flagsOwned : ([877, 253, 802, 779] : List Wire).toFinset⊆s6Step28EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_flagsBorrow : s6Step28EarlyControlEqualityArena.checkBorrow (6) s6Step28EarlyControlLog.flagWork=some s6Step28EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step28EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step28EarlyControlEqualityArena s6Step28EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step28EarlyControl_flags : compileHmrFlagsLog s6Step28EarlyControlClassPlan.equalityArena s6Step28EarlyControlClassPlan.equality.top 253 802 779 s6Step28EarlyControlLog.flagWork=some s6Step28EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step28EarlyControl_flagsOwned⟩
  · exact s6Step28EarlyControl_flagsBorrow
private theorem s6Step28EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).toFinset⊆s6Step28EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_fitBorrow : s6Step28EarlyControlFlagArena.checkBorrow ((11-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).length)) s6Step28EarlyControlLog.recordFresh=some s6Step28EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step28EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step28EarlyControlFlagArena s6Step28EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step28EarlyControl_fit : compileHmrRecordGrowLog s6Step28EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28EarlyControlLog.recordFresh=some s6Step28EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step28EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step28EarlyControl_fitBorrow
private theorem s6Step28EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).toFinset⊆s6Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_historyBorrow : s6Step28EarlyControlArena.checkBorrow ((11-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).length)) s6Step28EarlyControlLog.recordFresh=some s6Step28EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step28EarlyControlArena s6Step28EarlyControlHistoryArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step28EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step28EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step28EarlyControl_history : compileHmrRecordGrowLog s6Step28EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28EarlyControlLog.recordFresh=some s6Step28EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step28EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step28EarlyControl_historyBorrow
private theorem s6Step28EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step28EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlHistoryArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step28EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlHistoryArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_sigmaRelease : s6Step28EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step28EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step28EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step28EarlyControlHistoryArena s6Step28EarlyControlSigmaArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
private theorem s6Step28EarlyControl_branchOwned : ([859] : List Wire).toFinset⊆s6Step28EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlSigmaArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EarlyControl_branch : compileHmrBranchRetirement s6Step28EarlyControlSigmaArena 859=some s6Step28EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step28EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step28EarlyControlSigmaArena s6Step28EarlyControlOutputArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [859] rfl rfl
    decide +kernel
theorem s6Step28EarlyControl_sigma : compileHmrSigmaDropLog s6Step28EarlyControlHistoryArena false 0 0 254 793 []=some s6Step28EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step28EarlyControl_sigmaOwned⟩
  · exact s6Step28EarlyControl_sigmaRelease
theorem s6Step28EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step28EarlyControlLog.zeroWork).map Prod.snd=some (s6Step28EarlyControlLog.zeroWork,s6Step28EarlyControlZeroPlan) := by
  rw [s6Step28EarlyControl_zero]
  rfl
theorem s6Step28EarlyControl_classProjection : (compileHmrSourceClassLog s6Step28EarlyControlZeroArena false 769 s6Step28EarlyControlZeroPlan.top 0 793 s6Step28EarlyControlLog.positiveWork s6Step28EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step28EarlyControlClassPlan.positiveWork,s6Step28EarlyControlClassPlan.equalityWork,s6Step28EarlyControlClassPlan.equality) := by
  rw [s6Step28EarlyControl_class]
  rfl
theorem s6Step28EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step28EarlyControlClassPlan.equalityArena s6Step28EarlyControlClassPlan.equality.top 253 802 779 s6Step28EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step28EarlyControl_flags]
  rfl
theorem s6Step28EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step28EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step28EarlyControl_fit]
  rfl
theorem s6Step28EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step28EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step28EarlyControl_history]
  rfl
theorem s6Step28EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step28EarlyControlHistoryArena false 0 0 254 793 []).map (fun _ => true)=some true := by
  rw [s6Step28EarlyControl_sigma]
  rfl
theorem s6Step28EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step28EarlyControlSigmaArena 859).map (fun _ => true)=some true := by
  rw [s6Step28EarlyControl_branch]
  rfl
private theorem s6Step28EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step28EarlyControl_entryRecordOwned : ([859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).toFinset⊆s6Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28EarlyControl_logged : s6Step28EarlyControlPlan.Logged s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 793 254 253 802 779 859 11 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step28EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step28EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step28EarlyControl_zero
  · exact s6Step28EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step28EarlyControl_flags
  · exact s6Step28EarlyControl_fit
  · exact s6Step28EarlyControl_history
  · exact s6Step28EarlyControl_sigma
  · exact s6Step28EarlyControl_branch
theorem s6Step28EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 793 254 253 802 779 859 11 s6Step28EarlyControlLog=some s6Step28EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step28EarlyControlPlan s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 793 254 253 802 779 859 11 s6Step28EarlyControl_logged
theorem s6Step28EarlyControl_checked : (compileHmrEarlyControlLog s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 793 254 253 802 779 859 11 s6Step28EarlyControlLog).map (fun P => P.outputArena.live.card)=some 839 := by
  rw [s6Step28EarlyControl_plan_checked]
  decide +kernel

def s6Step29EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step29EarlyControlLog : HmrEarlyControlLog := ⟨[874, 802, 793, 887, 813],[859],[876],[877, 855, 803, 922, 879, 784],[917]⟩
def s6Step29EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,793⟩,⟨⟨770,false⟩,887⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step29EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step29EarlyControlPositiveArena,[859],s6Step29EarlyControlEqualityArena,[876],⟨⟨768,false⟩,[⟨⟨859,false⟩,876⟩]⟩⟩
def s6Step29EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step29EarlyControlZeroArena,s6Step29EarlyControlZeroPlan,s6Step29EarlyControlClassPlan,s6Step29EarlyControlFlagArena,s6Step29EarlyControlFittedArena,s6Step29EarlyControlHistoryArena,s6Step29EarlyControlSigmaArena,s6Step29EarlyControlOutputArena,s6Step29EarlyControlLog⟩
private theorem s6Step29EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_zeroBorrow : s6Step29EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step29EarlyControlLog.zeroWork=some s6Step29EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step29EarlyControlArena s6Step29EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step29EarlyControl_zero : compileHmrEqualityLog s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step29EarlyControlLog.zeroWork=some (s6Step29EarlyControlZeroArena,s6Step29EarlyControlLog.zeroWork,s6Step29EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step29EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step29EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step29EarlyControl_positiveBorrow : s6Step29EarlyControlZeroArena.checkBorrow (1) s6Step29EarlyControlLog.positiveWork=some s6Step29EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step29EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step29EarlyControlZeroArena s6Step29EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step29EarlyControl_classEqualityOwned : ([768, 859] : List Wire).toFinset⊆s6Step29EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_classEqualityBorrow : s6Step29EarlyControlPositiveArena.checkBorrow (([768, 859] : List Wire).length-1) s6Step29EarlyControlLog.classWork=some s6Step29EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step29EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step29EarlyControlPositiveArena s6Step29EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step29EarlyControl_classEquality : compileHmrEqualityLog s6Step29EarlyControlPositiveArena [768, 859] 0 s6Step29EarlyControlLog.classWork=some (s6Step29EarlyControlEqualityArena,s6Step29EarlyControlLog.classWork,s6Step29EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step29EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step29EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step29EarlyControl_classOwned : ([769, 813, 768] : List Wire).toFinset⊆s6Step29EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EarlyControl_class : compileHmrSourceClassLog s6Step29EarlyControlZeroArena false 769 s6Step29EarlyControlZeroPlan.top 0 768 s6Step29EarlyControlLog.positiveWork s6Step29EarlyControlLog.classWork=some s6Step29EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step29EarlyControlClassPlan s6Step29EarlyControlZeroArena false 769 s6Step29EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step29EarlyControl_classOwned
  · exact s6Step29EarlyControl_positiveBorrow
  · exact s6Step29EarlyControl_classEquality
private theorem s6Step29EarlyControl_flagsOwned : ([876, 253, 252, 779] : List Wire).toFinset⊆s6Step29EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_flagsBorrow : s6Step29EarlyControlEqualityArena.checkBorrow (6) s6Step29EarlyControlLog.flagWork=some s6Step29EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step29EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step29EarlyControlEqualityArena s6Step29EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step29EarlyControl_flags : compileHmrFlagsLog s6Step29EarlyControlClassPlan.equalityArena s6Step29EarlyControlClassPlan.equality.top 253 252 779 s6Step29EarlyControlLog.flagWork=some s6Step29EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step29EarlyControl_flagsOwned⟩
  · exact s6Step29EarlyControl_flagsBorrow
private theorem s6Step29EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).toFinset⊆s6Step29EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_fitBorrow : s6Step29EarlyControlFlagArena.checkBorrow ((12-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).length)) s6Step29EarlyControlLog.recordFresh=some s6Step29EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step29EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step29EarlyControlFlagArena s6Step29EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step29EarlyControl_fit : compileHmrRecordGrowLog s6Step29EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29EarlyControlLog.recordFresh=some s6Step29EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step29EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step29EarlyControl_fitBorrow
private theorem s6Step29EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).toFinset⊆s6Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_historyBorrow : s6Step29EarlyControlArena.checkBorrow ((12-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).length)) s6Step29EarlyControlLog.recordFresh=some s6Step29EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step29EarlyControlArena s6Step29EarlyControlHistoryArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step29EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step29EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step29EarlyControl_history : compileHmrRecordGrowLog s6Step29EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29EarlyControlLog.recordFresh=some s6Step29EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step29EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step29EarlyControl_historyBorrow
private theorem s6Step29EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step29EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlHistoryArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step29EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlHistoryArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_sigmaRelease : s6Step29EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step29EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step29EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step29EarlyControlHistoryArena s6Step29EarlyControlSigmaArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel
private theorem s6Step29EarlyControl_branchOwned : ([881] : List Wire).toFinset⊆s6Step29EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlSigmaArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EarlyControl_branch : compileHmrBranchRetirement s6Step29EarlyControlSigmaArena 881=some s6Step29EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step29EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step29EarlyControlSigmaArena s6Step29EarlyControlOutputArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [881] rfl rfl
    decide +kernel
theorem s6Step29EarlyControl_sigma : compileHmrSigmaDropLog s6Step29EarlyControlHistoryArena false 0 0 254 768 []=some s6Step29EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step29EarlyControl_sigmaOwned⟩
  · exact s6Step29EarlyControl_sigmaRelease
theorem s6Step29EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step29EarlyControlLog.zeroWork).map Prod.snd=some (s6Step29EarlyControlLog.zeroWork,s6Step29EarlyControlZeroPlan) := by
  rw [s6Step29EarlyControl_zero]
  rfl
theorem s6Step29EarlyControl_classProjection : (compileHmrSourceClassLog s6Step29EarlyControlZeroArena false 769 s6Step29EarlyControlZeroPlan.top 0 768 s6Step29EarlyControlLog.positiveWork s6Step29EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step29EarlyControlClassPlan.positiveWork,s6Step29EarlyControlClassPlan.equalityWork,s6Step29EarlyControlClassPlan.equality) := by
  rw [s6Step29EarlyControl_class]
  rfl
theorem s6Step29EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step29EarlyControlClassPlan.equalityArena s6Step29EarlyControlClassPlan.equality.top 253 252 779 s6Step29EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step29EarlyControl_flags]
  rfl
theorem s6Step29EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step29EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step29EarlyControl_fit]
  rfl
theorem s6Step29EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step29EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step29EarlyControl_history]
  rfl
theorem s6Step29EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step29EarlyControlHistoryArena false 0 0 254 768 []).map (fun _ => true)=some true := by
  rw [s6Step29EarlyControl_sigma]
  rfl
theorem s6Step29EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step29EarlyControlSigmaArena 881).map (fun _ => true)=some true := by
  rw [s6Step29EarlyControl_branch]
  rfl
private theorem s6Step29EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step29EarlyControl_entryRecordOwned : ([881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] : List Wire).toFinset⊆s6Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29EarlyControl_logged : s6Step29EarlyControlPlan.Logged s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 768 254 253 252 779 881 12 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step29EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step29EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step29EarlyControl_zero
  · exact s6Step29EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step29EarlyControl_flags
  · exact s6Step29EarlyControl_fit
  · exact s6Step29EarlyControl_history
  · exact s6Step29EarlyControl_sigma
  · exact s6Step29EarlyControl_branch
theorem s6Step29EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 768 254 253 252 779 881 12 s6Step29EarlyControlLog=some s6Step29EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step29EarlyControlPlan s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 768 254 253 252 779 881 12 s6Step29EarlyControl_logged
theorem s6Step29EarlyControl_checked : (compileHmrEarlyControlLog s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 768 254 253 252 779 881 12 s6Step29EarlyControlLog).map (fun P => P.outputArena.live.card)=some 839 := by
  rw [s6Step29EarlyControl_plan_checked]
  decide +kernel

def s6Step30EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step30EarlyControlLog : HmrEarlyControlLog := ⟨[874, 859, 876, 813, 881],[887],[877],[855, 803, 922, 879, 784, 835],[]⟩
def s6Step30EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,859⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,813⟩,⟨⟨769,false⟩,881⟩]⟩
def s6Step30EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step30EarlyControlPositiveArena,[887],s6Step30EarlyControlEqualityArena,[877],⟨⟨802,false⟩,[⟨⟨887,false⟩,877⟩]⟩⟩
def s6Step30EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step30EarlyControlZeroArena,s6Step30EarlyControlZeroPlan,s6Step30EarlyControlClassPlan,s6Step30EarlyControlFlagArena,s6Step30EarlyControlFittedArena,s6Step30EarlyControlHistoryArena,s6Step30EarlyControlSigmaArena,s6Step30EarlyControlOutputArena,s6Step30EarlyControlLog⟩
private theorem s6Step30EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_zeroBorrow : s6Step30EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step30EarlyControlLog.zeroWork=some s6Step30EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step30EarlyControlArena s6Step30EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step30EarlyControl_zero : compileHmrEqualityLog s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step30EarlyControlLog.zeroWork=some (s6Step30EarlyControlZeroArena,s6Step30EarlyControlLog.zeroWork,s6Step30EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step30EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step30EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step30EarlyControl_positiveBorrow : s6Step30EarlyControlZeroArena.checkBorrow (1) s6Step30EarlyControlLog.positiveWork=some s6Step30EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step30EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step30EarlyControlZeroArena s6Step30EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step30EarlyControl_classEqualityOwned : ([802, 887] : List Wire).toFinset⊆s6Step30EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_classEqualityBorrow : s6Step30EarlyControlPositiveArena.checkBorrow (([802, 887] : List Wire).length-1) s6Step30EarlyControlLog.classWork=some s6Step30EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step30EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step30EarlyControlPositiveArena s6Step30EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step30EarlyControl_classEquality : compileHmrEqualityLog s6Step30EarlyControlPositiveArena [802, 887] 0 s6Step30EarlyControlLog.classWork=some (s6Step30EarlyControlEqualityArena,s6Step30EarlyControlLog.classWork,s6Step30EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step30EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step30EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step30EarlyControl_classOwned : ([769, 881, 802] : List Wire).toFinset⊆s6Step30EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EarlyControl_class : compileHmrSourceClassLog s6Step30EarlyControlZeroArena false 769 s6Step30EarlyControlZeroPlan.top 0 802 s6Step30EarlyControlLog.positiveWork s6Step30EarlyControlLog.classWork=some s6Step30EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step30EarlyControlClassPlan s6Step30EarlyControlZeroArena false 769 s6Step30EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s6Step30EarlyControl_classOwned
  · exact s6Step30EarlyControl_positiveBorrow
  · exact s6Step30EarlyControl_classEquality
private theorem s6Step30EarlyControl_flagsOwned : ([877, 253, 252, 779] : List Wire).toFinset⊆s6Step30EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_flagsBorrow : s6Step30EarlyControlEqualityArena.checkBorrow (6) s6Step30EarlyControlLog.flagWork=some s6Step30EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step30EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step30EarlyControlEqualityArena s6Step30EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step30EarlyControl_flags : compileHmrFlagsLog s6Step30EarlyControlClassPlan.equalityArena s6Step30EarlyControlClassPlan.equality.top 253 252 779 s6Step30EarlyControlLog.flagWork=some s6Step30EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step30EarlyControl_flagsOwned⟩
  · exact s6Step30EarlyControl_flagsBorrow
private theorem s6Step30EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).toFinset⊆s6Step30EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_fitBorrow : s6Step30EarlyControlFlagArena.checkBorrow ((12-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).length)) s6Step30EarlyControlLog.recordFresh=some s6Step30EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step30EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step30EarlyControlFlagArena s6Step30EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step30EarlyControl_fit : compileHmrRecordGrowLog s6Step30EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30EarlyControlLog.recordFresh=some s6Step30EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step30EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step30EarlyControl_fitBorrow
private theorem s6Step30EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).toFinset⊆s6Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_historyBorrow : s6Step30EarlyControlArena.checkBorrow ((12-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).length)) s6Step30EarlyControlLog.recordFresh=some s6Step30EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step30EarlyControlArena s6Step30EarlyControlHistoryArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step30EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step30EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step30EarlyControl_history : compileHmrRecordGrowLog s6Step30EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30EarlyControlLog.recordFresh=some s6Step30EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step30EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step30EarlyControl_historyBorrow
private theorem s6Step30EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s6Step30EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlHistoryArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s6Step30EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlHistoryArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_sigmaRelease : s6Step30EarlyControlHistoryArena.release {802} (fun _ => false)=some s6Step30EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step30EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step30EarlyControlHistoryArena s6Step30EarlyControlSigmaArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [802] rfl rfl
    decide +kernel
private theorem s6Step30EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step30EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlSigmaArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EarlyControl_branch : compileHmrBranchRetirement s6Step30EarlyControlSigmaArena 793=some s6Step30EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step30EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step30EarlyControlSigmaArena s6Step30EarlyControlOutputArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
theorem s6Step30EarlyControl_sigma : compileHmrSigmaDropLog s6Step30EarlyControlHistoryArena false 0 0 254 802 []=some s6Step30EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step30EarlyControl_sigmaOwned⟩
  · exact s6Step30EarlyControl_sigmaRelease
theorem s6Step30EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step30EarlyControlLog.zeroWork).map Prod.snd=some (s6Step30EarlyControlLog.zeroWork,s6Step30EarlyControlZeroPlan) := by
  rw [s6Step30EarlyControl_zero]
  rfl
theorem s6Step30EarlyControl_classProjection : (compileHmrSourceClassLog s6Step30EarlyControlZeroArena false 769 s6Step30EarlyControlZeroPlan.top 0 802 s6Step30EarlyControlLog.positiveWork s6Step30EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step30EarlyControlClassPlan.positiveWork,s6Step30EarlyControlClassPlan.equalityWork,s6Step30EarlyControlClassPlan.equality) := by
  rw [s6Step30EarlyControl_class]
  rfl
theorem s6Step30EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step30EarlyControlClassPlan.equalityArena s6Step30EarlyControlClassPlan.equality.top 253 252 779 s6Step30EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step30EarlyControl_flags]
  rfl
theorem s6Step30EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step30EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step30EarlyControl_fit]
  rfl
theorem s6Step30EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step30EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step30EarlyControl_history]
  rfl
theorem s6Step30EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step30EarlyControlHistoryArena false 0 0 254 802 []).map (fun _ => true)=some true := by
  rw [s6Step30EarlyControl_sigma]
  rfl
theorem s6Step30EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step30EarlyControlSigmaArena 793).map (fun _ => true)=some true := by
  rw [s6Step30EarlyControl_branch]
  rfl
private theorem s6Step30EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s6Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step30EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).toFinset⊆s6Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30EarlyControl_logged : s6Step30EarlyControlPlan.Logged s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 802 254 253 252 779 793 12 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step30EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step30EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step30EarlyControl_zero
  · exact s6Step30EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step30EarlyControl_flags
  · exact s6Step30EarlyControl_fit
  · exact s6Step30EarlyControl_history
  · exact s6Step30EarlyControl_sigma
  · exact s6Step30EarlyControl_branch
theorem s6Step30EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 802 254 253 252 779 793 12 s6Step30EarlyControlLog=some s6Step30EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step30EarlyControlPlan s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 802 254 253 252 779 793 12 s6Step30EarlyControl_logged
theorem s6Step30EarlyControl_checked : (compileHmrEarlyControlLog s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 802 254 253 252 779 793 12 s6Step30EarlyControlLog).map (fun P => P.outputArena.live.card)=some 840 := by
  rw [s6Step30EarlyControl_plan_checked]
  decide +kernel

def s6Step31EarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step31EarlyControlLog : HmrEarlyControlLog := ⟨[779, 802, 881, 887, 813],[793],[876],[877, 855, 803, 922, 879, 784],[835]⟩
def s6Step31EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,881⟩,⟨⟨770,false⟩,887⟩,⟨⟨769,false⟩,813⟩]⟩
def s6Step31EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step31EarlyControlPositiveArena,[793],s6Step31EarlyControlEqualityArena,[876],⟨⟨874,false⟩,[⟨⟨793,false⟩,876⟩]⟩⟩
def s6Step31EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step31EarlyControlZeroArena,s6Step31EarlyControlZeroPlan,s6Step31EarlyControlClassPlan,s6Step31EarlyControlFlagArena,s6Step31EarlyControlFittedArena,s6Step31EarlyControlHistoryArena,s6Step31EarlyControlSigmaArena,s6Step31EarlyControlOutputArena,s6Step31EarlyControlLog⟩
private theorem s6Step31EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_zeroBorrow : s6Step31EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step31EarlyControlLog.zeroWork=some s6Step31EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step31EarlyControlArena s6Step31EarlyControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step31EarlyControl_zero : compileHmrEqualityLog s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step31EarlyControlLog.zeroWork=some (s6Step31EarlyControlZeroArena,s6Step31EarlyControlLog.zeroWork,s6Step31EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step31EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step31EarlyControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step31EarlyControl_positiveBorrow : s6Step31EarlyControlZeroArena.checkBorrow (1) s6Step31EarlyControlLog.positiveWork=some s6Step31EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step31EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step31EarlyControlZeroArena s6Step31EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step31EarlyControl_classEqualityOwned : ([874, 793] : List Wire).toFinset⊆s6Step31EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_classEqualityBorrow : s6Step31EarlyControlPositiveArena.checkBorrow (([874, 793] : List Wire).length-1) s6Step31EarlyControlLog.classWork=some s6Step31EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step31EarlyControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step31EarlyControlPositiveArena s6Step31EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EarlyControlLog.classWork rfl rfl
      · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step31EarlyControl_classEquality : compileHmrEqualityLog s6Step31EarlyControlPositiveArena [874, 793] 0 s6Step31EarlyControlLog.classWork=some (s6Step31EarlyControlEqualityArena,s6Step31EarlyControlLog.classWork,s6Step31EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step31EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step31EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step31EarlyControl_classOwned : ([769, 813, 874] : List Wire).toFinset⊆s6Step31EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlZeroArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EarlyControl_class : compileHmrSourceClassLog s6Step31EarlyControlZeroArena false 769 s6Step31EarlyControlZeroPlan.top 0 874 s6Step31EarlyControlLog.positiveWork s6Step31EarlyControlLog.classWork=some s6Step31EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step31EarlyControlClassPlan s6Step31EarlyControlZeroArena false 769 s6Step31EarlyControlZeroPlan.top 0 874
  constructor
  · decide +kernel
  · exact s6Step31EarlyControl_classOwned
  · exact s6Step31EarlyControl_positiveBorrow
  · exact s6Step31EarlyControl_classEquality
private theorem s6Step31EarlyControl_flagsOwned : ([876, 253, 252, 251] : List Wire).toFinset⊆s6Step31EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_flagsBorrow : s6Step31EarlyControlEqualityArena.checkBorrow (6) s6Step31EarlyControlLog.flagWork=some s6Step31EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step31EarlyControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step31EarlyControlEqualityArena s6Step31EarlyControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EarlyControlLog.flagWork rfl rfl
      · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step31EarlyControl_flags : compileHmrFlagsLog s6Step31EarlyControlClassPlan.equalityArena s6Step31EarlyControlClassPlan.equality.top 253 252 251 s6Step31EarlyControlLog.flagWork=some s6Step31EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step31EarlyControl_flagsOwned⟩
  · exact s6Step31EarlyControl_flagsBorrow
private theorem s6Step31EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).toFinset⊆s6Step31EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_fitBorrow : s6Step31EarlyControlFlagArena.checkBorrow ((13-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).length)) s6Step31EarlyControlLog.recordFresh=some s6Step31EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step31EarlyControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step31EarlyControlFlagArena s6Step31EarlyControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(879,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step31EarlyControl_fit : compileHmrRecordGrowLog s6Step31EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31EarlyControlLog.recordFresh=some s6Step31EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step31EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step31EarlyControl_fitBorrow
private theorem s6Step31EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).toFinset⊆s6Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_historyBorrow : s6Step31EarlyControlArena.checkBorrow ((13-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).length)) s6Step31EarlyControlLog.recordFresh=some s6Step31EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step31EarlyControlArena s6Step31EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step31EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step31EarlyControl_history : compileHmrRecordGrowLog s6Step31EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31EarlyControlLog.recordFresh=some s6Step31EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step31EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step31EarlyControl_historyBorrow
private theorem s6Step31EarlyControl_sigmaOwned : ([254, 874] : List Wire).toFinset⊆s6Step31EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_sigmaReleaseOwned : ([874] : List Wire).toFinset⊆s6Step31EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_sigmaRelease : s6Step31EarlyControlHistoryArena.release {874} (fun _ => false)=some s6Step31EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step31EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step31EarlyControlHistoryArena s6Step31EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [874] rfl rfl
    decide +kernel
private theorem s6Step31EarlyControl_branchOwned : ([859] : List Wire).toFinset⊆s6Step31EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EarlyControl_branch : compileHmrBranchRetirement s6Step31EarlyControlSigmaArena 859=some s6Step31EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step31EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step31EarlyControlSigmaArena s6Step31EarlyControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [859] rfl rfl
    decide +kernel
theorem s6Step31EarlyControl_sigma : compileHmrSigmaDropLog s6Step31EarlyControlHistoryArena false 0 0 254 874 []=some s6Step31EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step31EarlyControl_sigmaOwned⟩
  · exact s6Step31EarlyControl_sigmaRelease
theorem s6Step31EarlyControl_zeroProjection : (compileHmrEqualityLog s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step31EarlyControlLog.zeroWork).map Prod.snd=some (s6Step31EarlyControlLog.zeroWork,s6Step31EarlyControlZeroPlan) := by
  rw [s6Step31EarlyControl_zero]
  rfl
theorem s6Step31EarlyControl_classProjection : (compileHmrSourceClassLog s6Step31EarlyControlZeroArena false 769 s6Step31EarlyControlZeroPlan.top 0 874 s6Step31EarlyControlLog.positiveWork s6Step31EarlyControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step31EarlyControlClassPlan.positiveWork,s6Step31EarlyControlClassPlan.equalityWork,s6Step31EarlyControlClassPlan.equality) := by
  rw [s6Step31EarlyControl_class]
  rfl
theorem s6Step31EarlyControl_flagsProjection : (compileHmrFlagsLog s6Step31EarlyControlClassPlan.equalityArena s6Step31EarlyControlClassPlan.equality.top 253 252 251 s6Step31EarlyControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step31EarlyControl_flags]
  rfl
theorem s6Step31EarlyControl_fitProjection : (compileHmrRecordGrowLog s6Step31EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step31EarlyControl_fit]
  rfl
theorem s6Step31EarlyControl_historyProjection : (compileHmrRecordGrowLog s6Step31EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31EarlyControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step31EarlyControl_history]
  rfl
theorem s6Step31EarlyControl_sigmaProjection : (compileHmrSigmaDropLog s6Step31EarlyControlHistoryArena false 0 0 254 874 []).map (fun _ => true)=some true := by
  rw [s6Step31EarlyControl_sigma]
  rfl
theorem s6Step31EarlyControl_branchProjection : (compileHmrBranchRetirement s6Step31EarlyControlSigmaArena 859).map (fun _ => true)=some true := by
  rw [s6Step31EarlyControl_branch]
  rfl
private theorem s6Step31EarlyControl_entrySigmaOwned : ([874, 254] : List Wire).toFinset⊆s6Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step31EarlyControl_entryRecordOwned : ([859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] : List Wire).toFinset⊆s6Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EarlyControl_logged : s6Step31EarlyControlPlan.Logged s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 874 254 253 252 251 859 13 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step31EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step31EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step31EarlyControl_zero
  · exact s6Step31EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step31EarlyControl_flags
  · exact s6Step31EarlyControl_fit
  · exact s6Step31EarlyControl_history
  · exact s6Step31EarlyControl_sigma
  · exact s6Step31EarlyControl_branch
theorem s6Step31EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 874 254 253 252 251 859 13 s6Step31EarlyControlLog=some s6Step31EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step31EarlyControlPlan s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 874 254 253 252 251 859 13 s6Step31EarlyControl_logged
theorem s6Step31EarlyControl_checked : (compileHmrEarlyControlLog s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 874 254 253 252 251 859 13 s6Step31EarlyControlLog).map (fun P => P.outputArena.live.card)=some 840 := by
  rw [s6Step31EarlyControl_plan_checked]
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
