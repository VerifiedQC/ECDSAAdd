import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk3

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
def s6Step498CounterWork : List Wire := [790, 914, 916, 800, 918]
theorem s6Step498Counter_bounded : s6Step498CounterWork.toFinset⊆arenaWires := by norm_num [s6Step498CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step498CounterDuring : Arena := ⟨s6Step498HeadFvAfter.live∪s6Step498CounterWork.toFinset,Finset.union_subset s6Step498HeadFvAfter.bounded s6Step498Counter_bounded⟩
theorem s6Step498Counter_apart : Disjoint s6Step498HeadFvAfter.live s6Step498CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step498HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Counter_owned : (819::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step498HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step498HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Counter_borrowed : s6Step498HeadFvAfter.checkBorrow 5 s6Step498CounterWork=some s6Step498CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step498HeadFvAfter s6Step498CounterDuring s6Step498CounterWork.toFinset s6Step498Counter_bounded s6Step498Counter_apart rfl
theorem s6Step498Counter_checked : compileHmrCounterStepLog s6Step498HeadFvAfter false 819 [774, 773, 772, 771, 770, 769] s6Step498CounterWork=some s6Step498CounterDuring := by
  have owned : ∀q∈819::[774, 773, 772, 771, 770, 769],q∈s6Step498HeadFvAfter.live := fun q hq => s6Step498Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step498Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
