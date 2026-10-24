import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47CounterWork : List Wire := [793, 875, 868, 805]
theorem s6Step47Counter_bounded : s6Step47CounterWork.toFinset⊆arenaWires := by norm_num [s6Step47CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step47CounterDuring : Arena := ⟨s6Step47HeadFvAfter.live∪s6Step47CounterWork.toFinset,Finset.union_subset s6Step47HeadFvAfter.bounded s6Step47Counter_bounded⟩
theorem s6Step47Counter_apart : Disjoint s6Step47HeadFvAfter.live s6Step47CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step47HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Counter_owned : (863::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step47HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step47HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Counter_borrowed : s6Step47HeadFvAfter.checkBorrow 4 s6Step47CounterWork=some s6Step47CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step47HeadFvAfter s6Step47CounterDuring s6Step47CounterWork.toFinset s6Step47Counter_bounded s6Step47Counter_apart rfl
theorem s6Step47Counter_checked : compileHmrCounterStepLog s6Step47HeadFvAfter true 863 [774, 773, 772, 771, 770, 769] s6Step47CounterWork=some s6Step47CounterDuring := by
  have owned : ∀q∈863::[774, 773, 772, 771, 770, 769],q∈s6Step47HeadFvAfter.live := fun q hq => s6Step47Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step47Counter_borrowed
def s6Step48CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step48Counter_bounded : s6Step48CounterWork.toFinset⊆arenaWires := by norm_num [s6Step48CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step48CounterDuring : Arena := ⟨s6Step48HeadFvAfter.live∪s6Step48CounterWork.toFinset,Finset.union_subset s6Step48HeadFvAfter.bounded s6Step48Counter_bounded⟩
theorem s6Step48Counter_apart : Disjoint s6Step48HeadFvAfter.live s6Step48CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step48HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step48HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step48HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Counter_borrowed : s6Step48HeadFvAfter.checkBorrow 4 s6Step48CounterWork=some s6Step48CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step48HeadFvAfter s6Step48CounterDuring s6Step48CounterWork.toFinset s6Step48Counter_bounded s6Step48Counter_apart rfl
theorem s6Step48Counter_checked : compileHmrCounterStepLog s6Step48HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step48CounterWork=some s6Step48CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step48HeadFvAfter.live := fun q hq => s6Step48Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step48Counter_borrowed
def s6Step49CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step49Counter_bounded : s6Step49CounterWork.toFinset⊆arenaWires := by norm_num [s6Step49CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step49CounterDuring : Arena := ⟨s6Step49HeadFvAfter.live∪s6Step49CounterWork.toFinset,Finset.union_subset s6Step49HeadFvAfter.bounded s6Step49Counter_bounded⟩
theorem s6Step49Counter_apart : Disjoint s6Step49HeadFvAfter.live s6Step49CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step49HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step49HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step49HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Counter_borrowed : s6Step49HeadFvAfter.checkBorrow 4 s6Step49CounterWork=some s6Step49CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step49HeadFvAfter s6Step49CounterDuring s6Step49CounterWork.toFinset s6Step49Counter_bounded s6Step49Counter_apart rfl
theorem s6Step49Counter_checked : compileHmrCounterStepLog s6Step49HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step49CounterWork=some s6Step49CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step49HeadFvAfter.live := fun q hq => s6Step49Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step49Counter_borrowed
def s6Step50CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step50Counter_bounded : s6Step50CounterWork.toFinset⊆arenaWires := by norm_num [s6Step50CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step50CounterDuring : Arena := ⟨s6Step50HeadFvAfter.live∪s6Step50CounterWork.toFinset,Finset.union_subset s6Step50HeadFvAfter.bounded s6Step50Counter_bounded⟩
theorem s6Step50Counter_apart : Disjoint s6Step50HeadFvAfter.live s6Step50CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step50HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step50HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step50HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Counter_borrowed : s6Step50HeadFvAfter.checkBorrow 4 s6Step50CounterWork=some s6Step50CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step50HeadFvAfter s6Step50CounterDuring s6Step50CounterWork.toFinset s6Step50Counter_bounded s6Step50Counter_apart rfl
theorem s6Step50Counter_checked : compileHmrCounterStepLog s6Step50HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step50CounterWork=some s6Step50CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step50HeadFvAfter.live := fun q hq => s6Step50Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step50Counter_borrowed
def s6Step51CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step51Counter_bounded : s6Step51CounterWork.toFinset⊆arenaWires := by norm_num [s6Step51CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step51CounterDuring : Arena := ⟨s6Step51HeadFvAfter.live∪s6Step51CounterWork.toFinset,Finset.union_subset s6Step51HeadFvAfter.bounded s6Step51Counter_bounded⟩
theorem s6Step51Counter_apart : Disjoint s6Step51HeadFvAfter.live s6Step51CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step51HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step51HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step51HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Counter_borrowed : s6Step51HeadFvAfter.checkBorrow 4 s6Step51CounterWork=some s6Step51CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step51HeadFvAfter s6Step51CounterDuring s6Step51CounterWork.toFinset s6Step51Counter_bounded s6Step51Counter_apart rfl
theorem s6Step51Counter_checked : compileHmrCounterStepLog s6Step51HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step51CounterWork=some s6Step51CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step51HeadFvAfter.live := fun q hq => s6Step51Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step51Counter_borrowed
def s6Step52CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step52Counter_bounded : s6Step52CounterWork.toFinset⊆arenaWires := by norm_num [s6Step52CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step52CounterDuring : Arena := ⟨s6Step52HeadFvAfter.live∪s6Step52CounterWork.toFinset,Finset.union_subset s6Step52HeadFvAfter.bounded s6Step52Counter_bounded⟩
theorem s6Step52Counter_apart : Disjoint s6Step52HeadFvAfter.live s6Step52CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step52HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step52HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step52HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Counter_borrowed : s6Step52HeadFvAfter.checkBorrow 4 s6Step52CounterWork=some s6Step52CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step52HeadFvAfter s6Step52CounterDuring s6Step52CounterWork.toFinset s6Step52Counter_bounded s6Step52Counter_apart rfl
theorem s6Step52Counter_checked : compileHmrCounterStepLog s6Step52HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step52CounterWork=some s6Step52CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step52HeadFvAfter.live := fun q hq => s6Step52Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step52Counter_borrowed
def s6Step53CounterWork : List Wire := [793, 875, 868, 805]
theorem s6Step53Counter_bounded : s6Step53CounterWork.toFinset⊆arenaWires := by norm_num [s6Step53CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step53CounterDuring : Arena := ⟨s6Step53HeadFvAfter.live∪s6Step53CounterWork.toFinset,Finset.union_subset s6Step53HeadFvAfter.bounded s6Step53Counter_bounded⟩
theorem s6Step53Counter_apart : Disjoint s6Step53HeadFvAfter.live s6Step53CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step53HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step53HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step53HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Counter_borrowed : s6Step53HeadFvAfter.checkBorrow 4 s6Step53CounterWork=some s6Step53CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step53HeadFvAfter s6Step53CounterDuring s6Step53CounterWork.toFinset s6Step53Counter_bounded s6Step53Counter_apart rfl
theorem s6Step53Counter_checked : compileHmrCounterStepLog s6Step53HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step53CounterWork=some s6Step53CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step53HeadFvAfter.live := fun q hq => s6Step53Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step53Counter_borrowed
def s6Step54CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step54Counter_bounded : s6Step54CounterWork.toFinset⊆arenaWires := by norm_num [s6Step54CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step54CounterDuring : Arena := ⟨s6Step54HeadFvAfter.live∪s6Step54CounterWork.toFinset,Finset.union_subset s6Step54HeadFvAfter.bounded s6Step54Counter_bounded⟩
theorem s6Step54Counter_apart : Disjoint s6Step54HeadFvAfter.live s6Step54CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step54HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step54HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step54HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Counter_borrowed : s6Step54HeadFvAfter.checkBorrow 4 s6Step54CounterWork=some s6Step54CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step54HeadFvAfter s6Step54CounterDuring s6Step54CounterWork.toFinset s6Step54Counter_bounded s6Step54Counter_apart rfl
theorem s6Step54Counter_checked : compileHmrCounterStepLog s6Step54HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step54CounterWork=some s6Step54CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step54HeadFvAfter.live := fun q hq => s6Step54Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step54Counter_borrowed
def s6Step55CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step55Counter_bounded : s6Step55CounterWork.toFinset⊆arenaWires := by norm_num [s6Step55CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step55CounterDuring : Arena := ⟨s6Step55HeadFvAfter.live∪s6Step55CounterWork.toFinset,Finset.union_subset s6Step55HeadFvAfter.bounded s6Step55Counter_bounded⟩
theorem s6Step55Counter_apart : Disjoint s6Step55HeadFvAfter.live s6Step55CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step55HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Counter_owned : (882::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step55HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step55HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Counter_borrowed : s6Step55HeadFvAfter.checkBorrow 4 s6Step55CounterWork=some s6Step55CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step55HeadFvAfter s6Step55CounterDuring s6Step55CounterWork.toFinset s6Step55Counter_bounded s6Step55Counter_apart rfl
theorem s6Step55Counter_checked : compileHmrCounterStepLog s6Step55HeadFvAfter true 882 [774, 773, 772, 771, 770, 769] s6Step55CounterWork=some s6Step55CounterDuring := by
  have owned : ∀q∈882::[774, 773, 772, 771, 770, 769],q∈s6Step55HeadFvAfter.live := fun q hq => s6Step55Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step55Counter_borrowed
def s6Step56CounterWork : List Wire := [880, 892, 877, 855]
theorem s6Step56Counter_bounded : s6Step56CounterWork.toFinset⊆arenaWires := by norm_num [s6Step56CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step56CounterDuring : Arena := ⟨s6Step56HeadFvAfter.live∪s6Step56CounterWork.toFinset,Finset.union_subset s6Step56HeadFvAfter.bounded s6Step56Counter_bounded⟩
theorem s6Step56Counter_apart : Disjoint s6Step56HeadFvAfter.live s6Step56CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step56HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Counter_owned : (882::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step56HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step56HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Counter_borrowed : s6Step56HeadFvAfter.checkBorrow 4 s6Step56CounterWork=some s6Step56CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step56HeadFvAfter s6Step56CounterDuring s6Step56CounterWork.toFinset s6Step56Counter_bounded s6Step56Counter_apart rfl
theorem s6Step56Counter_checked : compileHmrCounterStepLog s6Step56HeadFvAfter true 882 [774, 773, 772, 771, 770, 769] s6Step56CounterWork=some s6Step56CounterDuring := by
  have owned : ∀q∈882::[774, 773, 772, 771, 770, 769],q∈s6Step56HeadFvAfter.live := fun q hq => s6Step56Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step56Counter_borrowed
def s6Step57CounterWork : List Wire := [880, 892, 877, 855]
theorem s6Step57Counter_bounded : s6Step57CounterWork.toFinset⊆arenaWires := by norm_num [s6Step57CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step57CounterDuring : Arena := ⟨s6Step57HeadFvAfter.live∪s6Step57CounterWork.toFinset,Finset.union_subset s6Step57HeadFvAfter.bounded s6Step57Counter_bounded⟩
theorem s6Step57Counter_apart : Disjoint s6Step57HeadFvAfter.live s6Step57CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step57HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Counter_owned : (882::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step57HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step57HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Counter_borrowed : s6Step57HeadFvAfter.checkBorrow 4 s6Step57CounterWork=some s6Step57CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step57HeadFvAfter s6Step57CounterDuring s6Step57CounterWork.toFinset s6Step57Counter_bounded s6Step57Counter_apart rfl
theorem s6Step57Counter_checked : compileHmrCounterStepLog s6Step57HeadFvAfter true 882 [774, 773, 772, 771, 770, 769] s6Step57CounterWork=some s6Step57CounterDuring := by
  have owned : ∀q∈882::[774, 773, 772, 771, 770, 769],q∈s6Step57HeadFvAfter.live := fun q hq => s6Step57Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step57Counter_borrowed
def s6Step58CounterWork : List Wire := [822, 805, 880, 892]
theorem s6Step58Counter_bounded : s6Step58CounterWork.toFinset⊆arenaWires := by norm_num [s6Step58CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step58CounterDuring : Arena := ⟨s6Step58HeadFvAfter.live∪s6Step58CounterWork.toFinset,Finset.union_subset s6Step58HeadFvAfter.bounded s6Step58Counter_bounded⟩
theorem s6Step58Counter_apart : Disjoint s6Step58HeadFvAfter.live s6Step58CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step58HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Counter_owned : (882::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step58HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step58HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Counter_borrowed : s6Step58HeadFvAfter.checkBorrow 4 s6Step58CounterWork=some s6Step58CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step58HeadFvAfter s6Step58CounterDuring s6Step58CounterWork.toFinset s6Step58Counter_bounded s6Step58Counter_apart rfl
theorem s6Step58Counter_checked : compileHmrCounterStepLog s6Step58HeadFvAfter true 882 [774, 773, 772, 771, 770, 769] s6Step58CounterWork=some s6Step58CounterDuring := by
  have owned : ∀q∈882::[774, 773, 772, 771, 770, 769],q∈s6Step58HeadFvAfter.live := fun q hq => s6Step58Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step58Counter_borrowed
def s6Step59CounterWork : List Wire := [880, 892, 877, 855]
theorem s6Step59Counter_bounded : s6Step59CounterWork.toFinset⊆arenaWires := by norm_num [s6Step59CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step59CounterDuring : Arena := ⟨s6Step59HeadFvAfter.live∪s6Step59CounterWork.toFinset,Finset.union_subset s6Step59HeadFvAfter.bounded s6Step59Counter_bounded⟩
theorem s6Step59Counter_apart : Disjoint s6Step59HeadFvAfter.live s6Step59CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step59HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Counter_owned : (868::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step59HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step59HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Counter_borrowed : s6Step59HeadFvAfter.checkBorrow 4 s6Step59CounterWork=some s6Step59CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step59HeadFvAfter s6Step59CounterDuring s6Step59CounterWork.toFinset s6Step59Counter_bounded s6Step59Counter_apart rfl
theorem s6Step59Counter_checked : compileHmrCounterStepLog s6Step59HeadFvAfter true 868 [774, 773, 772, 771, 770, 769] s6Step59CounterWork=some s6Step59CounterDuring := by
  have owned : ∀q∈868::[774, 773, 772, 771, 770, 769],q∈s6Step59HeadFvAfter.live := fun q hq => s6Step59Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step59Counter_borrowed
def s6Step60CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step60Counter_bounded : s6Step60CounterWork.toFinset⊆arenaWires := by norm_num [s6Step60CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step60CounterDuring : Arena := ⟨s6Step60HeadFvAfter.live∪s6Step60CounterWork.toFinset,Finset.union_subset s6Step60HeadFvAfter.bounded s6Step60Counter_bounded⟩
theorem s6Step60Counter_apart : Disjoint s6Step60HeadFvAfter.live s6Step60CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step60HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step60HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step60HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Counter_borrowed : s6Step60HeadFvAfter.checkBorrow 4 s6Step60CounterWork=some s6Step60CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step60HeadFvAfter s6Step60CounterDuring s6Step60CounterWork.toFinset s6Step60Counter_bounded s6Step60Counter_apart rfl
theorem s6Step60Counter_checked : compileHmrCounterStepLog s6Step60HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step60CounterWork=some s6Step60CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step60HeadFvAfter.live := fun q hq => s6Step60Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step60Counter_borrowed
def s6Step61CounterWork : List Wire := [803, 922, 879, 784]
theorem s6Step61Counter_bounded : s6Step61CounterWork.toFinset⊆arenaWires := by norm_num [s6Step61CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step61CounterDuring : Arena := ⟨s6Step61HeadFvAfter.live∪s6Step61CounterWork.toFinset,Finset.union_subset s6Step61HeadFvAfter.bounded s6Step61Counter_bounded⟩
theorem s6Step61Counter_apart : Disjoint s6Step61HeadFvAfter.live s6Step61CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step61HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Counter_owned : (880::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step61HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step61HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Counter_borrowed : s6Step61HeadFvAfter.checkBorrow 4 s6Step61CounterWork=some s6Step61CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step61HeadFvAfter s6Step61CounterDuring s6Step61CounterWork.toFinset s6Step61Counter_bounded s6Step61Counter_apart rfl
theorem s6Step61Counter_checked : compileHmrCounterStepLog s6Step61HeadFvAfter true 880 [774, 773, 772, 771, 770, 769] s6Step61CounterWork=some s6Step61CounterDuring := by
  have owned : ∀q∈880::[774, 773, 772, 771, 770, 769],q∈s6Step61HeadFvAfter.live := fun q hq => s6Step61Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step61Counter_borrowed
def s6Step62CounterWork : List Wire := [822, 875, 803, 922]
theorem s6Step62Counter_bounded : s6Step62CounterWork.toFinset⊆arenaWires := by norm_num [s6Step62CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step62CounterDuring : Arena := ⟨s6Step62HeadFvAfter.live∪s6Step62CounterWork.toFinset,Finset.union_subset s6Step62HeadFvAfter.bounded s6Step62Counter_bounded⟩
theorem s6Step62Counter_apart : Disjoint s6Step62HeadFvAfter.live s6Step62CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step62HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step62HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step62HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Counter_borrowed : s6Step62HeadFvAfter.checkBorrow 4 s6Step62CounterWork=some s6Step62CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step62HeadFvAfter s6Step62CounterDuring s6Step62CounterWork.toFinset s6Step62Counter_bounded s6Step62Counter_apart rfl
theorem s6Step62Counter_checked : compileHmrCounterStepLog s6Step62HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step62CounterWork=some s6Step62CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step62HeadFvAfter.live := fun q hq => s6Step62Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step62Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
