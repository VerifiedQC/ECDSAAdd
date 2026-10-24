import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step31Counter_bounded : s6Step31CounterWork.toFinset⊆arenaWires := by norm_num [s6Step31CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step31CounterDuring : Arena := ⟨s6Step31HeadFvAfter.live∪s6Step31CounterWork.toFinset,Finset.union_subset s6Step31HeadFvAfter.bounded s6Step31Counter_bounded⟩
theorem s6Step31Counter_apart : Disjoint s6Step31HeadFvAfter.live s6Step31CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step31HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step31HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step31HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Counter_borrowed : s6Step31HeadFvAfter.checkBorrow 4 s6Step31CounterWork=some s6Step31CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step31HeadFvAfter s6Step31CounterDuring s6Step31CounterWork.toFinset s6Step31Counter_bounded s6Step31Counter_apart rfl
theorem s6Step31Counter_checked : compileHmrCounterStepLog s6Step31HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step31CounterWork=some s6Step31CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step31HeadFvAfter.live := fun q hq => s6Step31Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step31Counter_borrowed
def s6Step32CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step32Counter_bounded : s6Step32CounterWork.toFinset⊆arenaWires := by norm_num [s6Step32CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step32CounterDuring : Arena := ⟨s6Step32HeadFvAfter.live∪s6Step32CounterWork.toFinset,Finset.union_subset s6Step32HeadFvAfter.bounded s6Step32Counter_bounded⟩
theorem s6Step32Counter_apart : Disjoint s6Step32HeadFvAfter.live s6Step32CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step32HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Counter_owned : (802::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step32HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step32HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Counter_borrowed : s6Step32HeadFvAfter.checkBorrow 4 s6Step32CounterWork=some s6Step32CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step32HeadFvAfter s6Step32CounterDuring s6Step32CounterWork.toFinset s6Step32Counter_bounded s6Step32Counter_apart rfl
theorem s6Step32Counter_checked : compileHmrCounterStepLog s6Step32HeadFvAfter true 802 [774, 773, 772, 771, 770, 769] s6Step32CounterWork=some s6Step32CounterDuring := by
  have owned : ∀q∈802::[774, 773, 772, 771, 770, 769],q∈s6Step32HeadFvAfter.live := fun q hq => s6Step32Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step32Counter_borrowed
def s6Step33CounterWork : List Wire := [874, 887, 877, 855]
theorem s6Step33Counter_bounded : s6Step33CounterWork.toFinset⊆arenaWires := by norm_num [s6Step33CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step33CounterDuring : Arena := ⟨s6Step33HeadFvAfter.live∪s6Step33CounterWork.toFinset,Finset.union_subset s6Step33HeadFvAfter.bounded s6Step33Counter_bounded⟩
theorem s6Step33Counter_apart : Disjoint s6Step33HeadFvAfter.live s6Step33CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step33HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Counter_owned : (802::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step33HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step33HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Counter_borrowed : s6Step33HeadFvAfter.checkBorrow 4 s6Step33CounterWork=some s6Step33CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step33HeadFvAfter s6Step33CounterDuring s6Step33CounterWork.toFinset s6Step33Counter_bounded s6Step33Counter_apart rfl
theorem s6Step33Counter_checked : compileHmrCounterStepLog s6Step33HeadFvAfter true 802 [774, 773, 772, 771, 770, 769] s6Step33CounterWork=some s6Step33CounterDuring := by
  have owned : ∀q∈802::[774, 773, 772, 771, 770, 769],q∈s6Step33HeadFvAfter.live := fun q hq => s6Step33Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step33Counter_borrowed
def s6Step34CounterWork : List Wire := [874, 887, 877, 855]
theorem s6Step34Counter_bounded : s6Step34CounterWork.toFinset⊆arenaWires := by norm_num [s6Step34CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step34CounterDuring : Arena := ⟨s6Step34HeadFvAfter.live∪s6Step34CounterWork.toFinset,Finset.union_subset s6Step34HeadFvAfter.bounded s6Step34Counter_bounded⟩
theorem s6Step34Counter_apart : Disjoint s6Step34HeadFvAfter.live s6Step34CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step34HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Counter_owned : (802::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step34HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step34HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Counter_borrowed : s6Step34HeadFvAfter.checkBorrow 4 s6Step34CounterWork=some s6Step34CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step34HeadFvAfter s6Step34CounterDuring s6Step34CounterWork.toFinset s6Step34Counter_bounded s6Step34Counter_apart rfl
theorem s6Step34Counter_checked : compileHmrCounterStepLog s6Step34HeadFvAfter true 802 [774, 773, 772, 771, 770, 769] s6Step34CounterWork=some s6Step34CounterDuring := by
  have owned : ∀q∈802::[774, 773, 772, 771, 770, 769],q∈s6Step34HeadFvAfter.live := fun q hq => s6Step34Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step34Counter_borrowed
def s6Step35CounterWork : List Wire := [874, 887, 877, 855]
theorem s6Step35Counter_bounded : s6Step35CounterWork.toFinset⊆arenaWires := by norm_num [s6Step35CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step35CounterDuring : Arena := ⟨s6Step35HeadFvAfter.live∪s6Step35CounterWork.toFinset,Finset.union_subset s6Step35HeadFvAfter.bounded s6Step35Counter_bounded⟩
theorem s6Step35Counter_apart : Disjoint s6Step35HeadFvAfter.live s6Step35CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step35HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Counter_owned : (802::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step35HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step35HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Counter_borrowed : s6Step35HeadFvAfter.checkBorrow 4 s6Step35CounterWork=some s6Step35CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step35HeadFvAfter s6Step35CounterDuring s6Step35CounterWork.toFinset s6Step35Counter_bounded s6Step35Counter_apart rfl
theorem s6Step35Counter_checked : compileHmrCounterStepLog s6Step35HeadFvAfter true 802 [774, 773, 772, 771, 770, 769] s6Step35CounterWork=some s6Step35CounterDuring := by
  have owned : ∀q∈802::[774, 773, 772, 771, 770, 769],q∈s6Step35HeadFvAfter.live := fun q hq => s6Step35Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step35Counter_borrowed
def s6Step36CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step36Counter_bounded : s6Step36CounterWork.toFinset⊆arenaWires := by norm_num [s6Step36CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step36CounterDuring : Arena := ⟨s6Step36HeadFvAfter.live∪s6Step36CounterWork.toFinset,Finset.union_subset s6Step36HeadFvAfter.bounded s6Step36Counter_bounded⟩
theorem s6Step36Counter_apart : Disjoint s6Step36HeadFvAfter.live s6Step36CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step36HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Counter_owned : (868::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step36HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step36HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Counter_borrowed : s6Step36HeadFvAfter.checkBorrow 4 s6Step36CounterWork=some s6Step36CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step36HeadFvAfter s6Step36CounterDuring s6Step36CounterWork.toFinset s6Step36Counter_bounded s6Step36Counter_apart rfl
theorem s6Step36Counter_checked : compileHmrCounterStepLog s6Step36HeadFvAfter true 868 [774, 773, 772, 771, 770, 769] s6Step36CounterWork=some s6Step36CounterDuring := by
  have owned : ∀q∈868::[774, 773, 772, 771, 770, 769],q∈s6Step36HeadFvAfter.live := fun q hq => s6Step36Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step36Counter_borrowed
def s6Step37CounterWork : List Wire := [875, 779, 877, 855]
theorem s6Step37Counter_bounded : s6Step37CounterWork.toFinset⊆arenaWires := by norm_num [s6Step37CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step37CounterDuring : Arena := ⟨s6Step37HeadFvAfter.live∪s6Step37CounterWork.toFinset,Finset.union_subset s6Step37HeadFvAfter.bounded s6Step37Counter_bounded⟩
theorem s6Step37Counter_apart : Disjoint s6Step37HeadFvAfter.live s6Step37CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step37HeadFvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step37HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step37HeadFvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Counter_borrowed : s6Step37HeadFvAfter.checkBorrow 4 s6Step37CounterWork=some s6Step37CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step37HeadFvAfter s6Step37CounterDuring s6Step37CounterWork.toFinset s6Step37Counter_bounded s6Step37Counter_apart rfl
theorem s6Step37Counter_checked : compileHmrCounterStepLog s6Step37HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step37CounterWork=some s6Step37CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step37HeadFvAfter.live := fun q hq => s6Step37Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step37Counter_borrowed
def s6Step38CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step38Counter_bounded : s6Step38CounterWork.toFinset⊆arenaWires := by norm_num [s6Step38CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step38CounterDuring : Arena := ⟨s6Step38HeadFvAfter.live∪s6Step38CounterWork.toFinset,Finset.union_subset s6Step38HeadFvAfter.bounded s6Step38Counter_bounded⟩
theorem s6Step38Counter_apart : Disjoint s6Step38HeadFvAfter.live s6Step38CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step38HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step38HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step38HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Counter_borrowed : s6Step38HeadFvAfter.checkBorrow 4 s6Step38CounterWork=some s6Step38CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step38HeadFvAfter s6Step38CounterDuring s6Step38CounterWork.toFinset s6Step38Counter_bounded s6Step38Counter_apart rfl
theorem s6Step38Counter_checked : compileHmrCounterStepLog s6Step38HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step38CounterWork=some s6Step38CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step38HeadFvAfter.live := fun q hq => s6Step38Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step38Counter_borrowed
def s6Step39CounterWork : List Wire := [868, 887, 877, 855]
theorem s6Step39Counter_bounded : s6Step39CounterWork.toFinset⊆arenaWires := by norm_num [s6Step39CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step39CounterDuring : Arena := ⟨s6Step39HeadFvAfter.live∪s6Step39CounterWork.toFinset,Finset.union_subset s6Step39HeadFvAfter.bounded s6Step39Counter_bounded⟩
theorem s6Step39Counter_apart : Disjoint s6Step39HeadFvAfter.live s6Step39CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step39HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Counter_owned : (858::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step39HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step39HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Counter_borrowed : s6Step39HeadFvAfter.checkBorrow 4 s6Step39CounterWork=some s6Step39CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step39HeadFvAfter s6Step39CounterDuring s6Step39CounterWork.toFinset s6Step39Counter_bounded s6Step39Counter_apart rfl
theorem s6Step39Counter_checked : compileHmrCounterStepLog s6Step39HeadFvAfter true 858 [774, 773, 772, 771, 770, 769] s6Step39CounterWork=some s6Step39CounterDuring := by
  have owned : ∀q∈858::[774, 773, 772, 771, 770, 769],q∈s6Step39HeadFvAfter.live := fun q hq => s6Step39Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step39Counter_borrowed
def s6Step40CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step40Counter_bounded : s6Step40CounterWork.toFinset⊆arenaWires := by norm_num [s6Step40CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step40CounterDuring : Arena := ⟨s6Step40HeadFvAfter.live∪s6Step40CounterWork.toFinset,Finset.union_subset s6Step40HeadFvAfter.bounded s6Step40Counter_bounded⟩
theorem s6Step40Counter_apart : Disjoint s6Step40HeadFvAfter.live s6Step40CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step40HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step40HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step40HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Counter_borrowed : s6Step40HeadFvAfter.checkBorrow 4 s6Step40CounterWork=some s6Step40CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step40HeadFvAfter s6Step40CounterDuring s6Step40CounterWork.toFinset s6Step40Counter_bounded s6Step40Counter_apart rfl
theorem s6Step40Counter_checked : compileHmrCounterStepLog s6Step40HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step40CounterWork=some s6Step40CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step40HeadFvAfter.live := fun q hq => s6Step40Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step40Counter_borrowed
def s6Step41CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step41Counter_bounded : s6Step41CounterWork.toFinset⊆arenaWires := by norm_num [s6Step41CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step41CounterDuring : Arena := ⟨s6Step41HeadFvAfter.live∪s6Step41CounterWork.toFinset,Finset.union_subset s6Step41HeadFvAfter.bounded s6Step41Counter_bounded⟩
theorem s6Step41Counter_apart : Disjoint s6Step41HeadFvAfter.live s6Step41CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step41HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step41HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step41HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Counter_borrowed : s6Step41HeadFvAfter.checkBorrow 4 s6Step41CounterWork=some s6Step41CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step41HeadFvAfter s6Step41CounterDuring s6Step41CounterWork.toFinset s6Step41Counter_bounded s6Step41Counter_apart rfl
theorem s6Step41Counter_checked : compileHmrCounterStepLog s6Step41HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step41CounterWork=some s6Step41CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step41HeadFvAfter.live := fun q hq => s6Step41Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step41Counter_borrowed
def s6Step42CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step42Counter_bounded : s6Step42CounterWork.toFinset⊆arenaWires := by norm_num [s6Step42CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step42CounterDuring : Arena := ⟨s6Step42HeadFvAfter.live∪s6Step42CounterWork.toFinset,Finset.union_subset s6Step42HeadFvAfter.bounded s6Step42Counter_bounded⟩
theorem s6Step42Counter_apart : Disjoint s6Step42HeadFvAfter.live s6Step42CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step42HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step42HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step42HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Counter_borrowed : s6Step42HeadFvAfter.checkBorrow 4 s6Step42CounterWork=some s6Step42CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step42HeadFvAfter s6Step42CounterDuring s6Step42CounterWork.toFinset s6Step42Counter_bounded s6Step42Counter_apart rfl
theorem s6Step42Counter_checked : compileHmrCounterStepLog s6Step42HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step42CounterWork=some s6Step42CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step42HeadFvAfter.live := fun q hq => s6Step42Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step42Counter_borrowed
def s6Step43CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step43Counter_bounded : s6Step43CounterWork.toFinset⊆arenaWires := by norm_num [s6Step43CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step43CounterDuring : Arena := ⟨s6Step43HeadFvAfter.live∪s6Step43CounterWork.toFinset,Finset.union_subset s6Step43HeadFvAfter.bounded s6Step43Counter_bounded⟩
theorem s6Step43Counter_apart : Disjoint s6Step43HeadFvAfter.live s6Step43CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step43HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step43HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step43HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Counter_borrowed : s6Step43HeadFvAfter.checkBorrow 4 s6Step43CounterWork=some s6Step43CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step43HeadFvAfter s6Step43CounterDuring s6Step43CounterWork.toFinset s6Step43Counter_bounded s6Step43Counter_apart rfl
theorem s6Step43Counter_checked : compileHmrCounterStepLog s6Step43HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step43CounterWork=some s6Step43CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step43HeadFvAfter.live := fun q hq => s6Step43Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step43Counter_borrowed
def s6Step44CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step44Counter_bounded : s6Step44CounterWork.toFinset⊆arenaWires := by norm_num [s6Step44CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step44CounterDuring : Arena := ⟨s6Step44HeadFvAfter.live∪s6Step44CounterWork.toFinset,Finset.union_subset s6Step44HeadFvAfter.bounded s6Step44Counter_bounded⟩
theorem s6Step44Counter_apart : Disjoint s6Step44HeadFvAfter.live s6Step44CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step44HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step44HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step44HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Counter_borrowed : s6Step44HeadFvAfter.checkBorrow 4 s6Step44CounterWork=some s6Step44CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step44HeadFvAfter s6Step44CounterDuring s6Step44CounterWork.toFinset s6Step44Counter_bounded s6Step44Counter_apart rfl
theorem s6Step44Counter_checked : compileHmrCounterStepLog s6Step44HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step44CounterWork=some s6Step44CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step44HeadFvAfter.live := fun q hq => s6Step44Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step44Counter_borrowed
def s6Step45CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step45Counter_bounded : s6Step45CounterWork.toFinset⊆arenaWires := by norm_num [s6Step45CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step45CounterDuring : Arena := ⟨s6Step45HeadFvAfter.live∪s6Step45CounterWork.toFinset,Finset.union_subset s6Step45HeadFvAfter.bounded s6Step45Counter_bounded⟩
theorem s6Step45Counter_apart : Disjoint s6Step45HeadFvAfter.live s6Step45CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step45HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step45HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step45HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Counter_borrowed : s6Step45HeadFvAfter.checkBorrow 4 s6Step45CounterWork=some s6Step45CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step45HeadFvAfter s6Step45CounterDuring s6Step45CounterWork.toFinset s6Step45Counter_bounded s6Step45Counter_apart rfl
theorem s6Step45Counter_checked : compileHmrCounterStepLog s6Step45HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step45CounterWork=some s6Step45CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step45HeadFvAfter.live := fun q hq => s6Step45Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step45Counter_borrowed
def s6Step46CounterWork : List Wire := [868, 805, 877, 855]
theorem s6Step46Counter_bounded : s6Step46CounterWork.toFinset⊆arenaWires := by norm_num [s6Step46CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step46CounterDuring : Arena := ⟨s6Step46HeadFvAfter.live∪s6Step46CounterWork.toFinset,Finset.union_subset s6Step46HeadFvAfter.bounded s6Step46Counter_bounded⟩
theorem s6Step46Counter_apart : Disjoint s6Step46HeadFvAfter.live s6Step46CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step46HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Counter_owned : (845::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step46HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step46HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Counter_borrowed : s6Step46HeadFvAfter.checkBorrow 4 s6Step46CounterWork=some s6Step46CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step46HeadFvAfter s6Step46CounterDuring s6Step46CounterWork.toFinset s6Step46Counter_bounded s6Step46Counter_apart rfl
theorem s6Step46Counter_checked : compileHmrCounterStepLog s6Step46HeadFvAfter true 845 [774, 773, 772, 771, 770, 769] s6Step46CounterWork=some s6Step46CounterDuring := by
  have owned : ∀q∈845::[774, 773, 772, 771, 770, 769],q∈s6Step46HeadFvAfter.live := fun q hq => s6Step46Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step46Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
