import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
namespace ECDSAAdd.Arithmetic.Paper935
/- Isolated early control certificate; does not extend the continuous walk prefix. -/
local instance fragmentedDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm
def s6Step36ObservedRanges : List (Nat × Nat) := [(0, 779), (780, 781), (786, 787), (789, 790), (794, 797), (799, 800), (802, 803), (805, 806), (807, 808), (813, 815), (818, 819), (821, 824), (827, 829), (830, 832), (833, 834), (835, 836), (838, 840), (841, 842), (843, 844), (845, 846), (848, 849), (850, 855), (856, 857), (858, 859), (860, 861), (862, 866), (867, 868), (869, 871), (872, 874), (876, 877), (878, 879), (880, 884), (886, 887), (888, 889), (890, 891), (892, 893), (895, 896), (898, 899), (901, 902), (907, 909), (910, 912), (917, 918), (927, 928)]
theorem s6Step36ObservedRanges_length : s6Step36ObservedRanges.length = 43 := by decide +kernel
theorem s6Step36ObservedRanges_separated : s6Step36ObservedRanges.Pairwise (fun a b => a.2 < b.1) := by decide +kernel
theorem s6Step36ObservedRanges_nonempty : ∀ r ∈ s6Step36ObservedRanges, r.1 < r.2 := by decide +kernel
def s6Step36FragmentedControlArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlFittedArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlHistoryArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

def s6Step36FragmentedControlLog : HmrEarlyControlLog := ⟨[874, 887, 857, 859, 875],[779],[877],[855, 803, 922, 879, 784, 861],[]⟩
def s6Step36FragmentedControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,874⟩,⟨⟨772,false⟩,887⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,859⟩,⟨⟨769,false⟩,875⟩]⟩
def s6Step36FragmentedControlClassPlan : HmrSourceClassPlan := ⟨s6Step36FragmentedControlPositiveArena,[779],s6Step36FragmentedControlEqualityArena,[877],⟨⟨868,false⟩,[⟨⟨779,false⟩,877⟩]⟩⟩
def s6Step36FragmentedControlPlan : HmrEarlyControlPlan := ⟨s6Step36FragmentedControlZeroArena,s6Step36FragmentedControlZeroPlan,s6Step36FragmentedControlClassPlan,s6Step36FragmentedControlFlagArena,s6Step36FragmentedControlFittedArena,s6Step36FragmentedControlHistoryArena,s6Step36FragmentedControlSigmaArena,s6Step36FragmentedControlOutputArena,s6Step36FragmentedControlLog⟩
private theorem s6Step36FragmentedControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step36FragmentedControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_zeroBorrow : s6Step36FragmentedControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step36FragmentedControlLog.zeroWork=some s6Step36FragmentedControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36FragmentedControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36FragmentedControlArena s6Step36FragmentedControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36FragmentedControlLog.zeroWork rfl rfl
      · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36FragmentedControl_zero : compileHmrEqualityLog s6Step36FragmentedControlArena [774, 773, 772, 771, 770, 769] 0 s6Step36FragmentedControlLog.zeroWork=some (s6Step36FragmentedControlZeroArena,s6Step36FragmentedControlLog.zeroWork,s6Step36FragmentedControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step36FragmentedControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step36FragmentedControl_zeroBorrow
  · rfl
  · decide +kernel
private theorem s6Step36FragmentedControl_positiveBorrow : s6Step36FragmentedControlZeroArena.checkBorrow (1) s6Step36FragmentedControlLog.positiveWork=some s6Step36FragmentedControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36FragmentedControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36FragmentedControlZeroArena s6Step36FragmentedControlPositiveArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36FragmentedControlLog.positiveWork rfl rfl
      · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step36FragmentedControl_classEqualityOwned : ([868, 779] : List Wire).toFinset⊆s6Step36FragmentedControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_classEqualityBorrow : s6Step36FragmentedControlPositiveArena.checkBorrow (([868, 779] : List Wire).length-1) s6Step36FragmentedControlLog.classWork=some s6Step36FragmentedControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36FragmentedControlPositiveArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36FragmentedControlPositiveArena s6Step36FragmentedControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36FragmentedControlLog.classWork rfl rfl
      · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
private theorem s6Step36FragmentedControl_classEquality : compileHmrEqualityLog s6Step36FragmentedControlPositiveArena [868, 779] 0 s6Step36FragmentedControlLog.classWork=some (s6Step36FragmentedControlEqualityArena,s6Step36FragmentedControlLog.classWork,s6Step36FragmentedControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step36FragmentedControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step36FragmentedControl_classEqualityBorrow
  · rfl
  · decide +kernel
private theorem s6Step36FragmentedControl_classOwned : ([769, 875, 868] : List Wire).toFinset⊆s6Step36FragmentedControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlZeroArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36FragmentedControl_class : compileHmrSourceClassLog s6Step36FragmentedControlZeroArena false 769 s6Step36FragmentedControlZeroPlan.top 0 868 s6Step36FragmentedControlLog.positiveWork s6Step36FragmentedControlLog.classWork=some s6Step36FragmentedControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step36FragmentedControlClassPlan s6Step36FragmentedControlZeroArena false 769 s6Step36FragmentedControlZeroPlan.top 0 868
  constructor
  · decide +kernel
  · exact s6Step36FragmentedControl_classOwned
  · exact s6Step36FragmentedControl_positiveBorrow
  · exact s6Step36FragmentedControl_classEquality
private theorem s6Step36FragmentedControl_flagsOwned : ([877, 253, 252, 251] : List Wire).toFinset⊆s6Step36FragmentedControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_flagsBorrow : s6Step36FragmentedControlEqualityArena.checkBorrow (6) s6Step36FragmentedControlLog.flagWork=some s6Step36FragmentedControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36FragmentedControlEqualityArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36FragmentedControlEqualityArena s6Step36FragmentedControlFlagArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36FragmentedControlLog.flagWork rfl rfl
      · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36FragmentedControl_flags : compileHmrFlagsLog s6Step36FragmentedControlClassPlan.equalityArena s6Step36FragmentedControlClassPlan.equality.top 253 252 251 s6Step36FragmentedControlLog.flagWork=some s6Step36FragmentedControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step36FragmentedControl_flagsOwned⟩
  · exact s6Step36FragmentedControl_flagsBorrow
private theorem s6Step36FragmentedControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step36FragmentedControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_fitBorrow : s6Step36FragmentedControlFlagArena.checkBorrow ((15-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).length)) s6Step36FragmentedControlLog.recordFresh=some s6Step36FragmentedControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36FragmentedControlFlagArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36FragmentedControlFlagArena s6Step36FragmentedControlFittedArena (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(784,785),(786,787),(789,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,866),(867,871),(872,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(922,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36FragmentedControlLog.recordFresh rfl rfl
      · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36FragmentedControl_fit : compileHmrRecordGrowLog s6Step36FragmentedControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36FragmentedControlLog.recordFresh=some s6Step36FragmentedControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step36FragmentedControl_fitOwned,by decide +kernel⟩
  · exact s6Step36FragmentedControl_fitBorrow
private theorem s6Step36FragmentedControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step36FragmentedControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_historyBorrow : s6Step36FragmentedControlArena.checkBorrow ((15-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).length)) s6Step36FragmentedControlLog.recordFresh=some s6Step36FragmentedControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step36FragmentedControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step36FragmentedControlArena s6Step36FragmentedControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36FragmentedControlLog.recordFresh rfl rfl
      · norm_num [s6Step36FragmentedControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel
theorem s6Step36FragmentedControl_history : compileHmrRecordGrowLog s6Step36FragmentedControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36FragmentedControlLog.recordFresh=some s6Step36FragmentedControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step36FragmentedControl_historyOwned,by decide +kernel⟩
  · exact s6Step36FragmentedControl_historyBorrow
private theorem s6Step36FragmentedControl_sigmaOwned : ([254, 868] : List Wire).toFinset⊆s6Step36FragmentedControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_sigmaReleaseOwned : ([868] : List Wire).toFinset⊆s6Step36FragmentedControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlHistoryArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_sigmaRelease : s6Step36FragmentedControlHistoryArena.release {868} (fun _ => false)=some s6Step36FragmentedControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step36FragmentedControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step36FragmentedControlHistoryArena s6Step36FragmentedControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [868] rfl rfl
    decide +kernel
private theorem s6Step36FragmentedControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step36FragmentedControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlSigmaArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36FragmentedControl_branch : compileHmrBranchRetirement s6Step36FragmentedControlSigmaArena 793=some s6Step36FragmentedControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step36FragmentedControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step36FragmentedControlSigmaArena s6Step36FragmentedControlOutputArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel
theorem s6Step36FragmentedControl_sigma : compileHmrSigmaDropLog s6Step36FragmentedControlHistoryArena false 0 0 254 868 []=some s6Step36FragmentedControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step36FragmentedControl_sigmaOwned⟩
  · exact s6Step36FragmentedControl_sigmaRelease
theorem s6Step36FragmentedControl_zeroProjection : (compileHmrEqualityLog s6Step36FragmentedControlArena [774, 773, 772, 771, 770, 769] 0 s6Step36FragmentedControlLog.zeroWork).map Prod.snd=some (s6Step36FragmentedControlLog.zeroWork,s6Step36FragmentedControlZeroPlan) := by
  rw [s6Step36FragmentedControl_zero]
  rfl
theorem s6Step36FragmentedControl_classProjection : (compileHmrSourceClassLog s6Step36FragmentedControlZeroArena false 769 s6Step36FragmentedControlZeroPlan.top 0 868 s6Step36FragmentedControlLog.positiveWork s6Step36FragmentedControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6Step36FragmentedControlClassPlan.positiveWork,s6Step36FragmentedControlClassPlan.equalityWork,s6Step36FragmentedControlClassPlan.equality) := by
  rw [s6Step36FragmentedControl_class]
  rfl
theorem s6Step36FragmentedControl_flagsProjection : (compileHmrFlagsLog s6Step36FragmentedControlClassPlan.equalityArena s6Step36FragmentedControlClassPlan.equality.top 253 252 251 s6Step36FragmentedControlLog.flagWork).map (fun _ => true)=some true := by
  rw [s6Step36FragmentedControl_flags]
  rfl
theorem s6Step36FragmentedControl_fitProjection : (compileHmrRecordGrowLog s6Step36FragmentedControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36FragmentedControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step36FragmentedControl_fit]
  rfl
theorem s6Step36FragmentedControl_historyProjection : (compileHmrRecordGrowLog s6Step36FragmentedControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36FragmentedControlLog.recordFresh).map (fun _ => true)=some true := by
  rw [s6Step36FragmentedControl_history]
  rfl
theorem s6Step36FragmentedControl_sigmaProjection : (compileHmrSigmaDropLog s6Step36FragmentedControlHistoryArena false 0 0 254 868 []).map (fun _ => true)=some true := by
  rw [s6Step36FragmentedControl_sigma]
  rfl
theorem s6Step36FragmentedControl_branchProjection : (compileHmrBranchRetirement s6Step36FragmentedControlSigmaArena 793).map (fun _ => true)=some true := by
  rw [s6Step36FragmentedControl_branch]
  rfl
private theorem s6Step36FragmentedControl_entrySigmaOwned : ([868, 254] : List Wire).toFinset⊆s6Step36FragmentedControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
private theorem s6Step36FragmentedControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] : List Wire).toFinset⊆s6Step36FragmentedControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36FragmentedControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36FragmentedControl_logged : s6Step36FragmentedControlPlan.Logged s6Step36FragmentedControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step36FragmentedControl_entryRecordOwned
  · decide +kernel
  · exact s6Step36FragmentedControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step36FragmentedControl_zero
  · exact s6Step36FragmentedControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step36FragmentedControl_flags
  · exact s6Step36FragmentedControl_fit
  · exact s6Step36FragmentedControl_history
  · exact s6Step36FragmentedControl_sigma
  · exact s6Step36FragmentedControl_branch
theorem s6Step36FragmentedControl_plan_checked : compileHmrEarlyControlLog s6Step36FragmentedControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 s6Step36FragmentedControlLog=some s6Step36FragmentedControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step36FragmentedControlPlan s6Step36FragmentedControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 s6Step36FragmentedControl_logged
theorem s6Step36FragmentedControl_checked : (compileHmrEarlyControlLog s6Step36FragmentedControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 254 253 252 251 793 15 s6Step36FragmentedControlLog).map (fun P => P.outputArena.live.card)=some 843 := by
  rw [s6Step36FragmentedControl_plan_checked]
  decide +kernel

theorem s6Step36FragmentedControl_output_ranges :
    s6Step36FragmentedControlPlan.outputArena.live = arenaWires.filter (fun q =>
      s6Step36ObservedRanges.any (fun r => decide (r.1≤q ∧ q<r.2)) = true) := rfl
end ECDSAAdd.Arithmetic.Paper935
