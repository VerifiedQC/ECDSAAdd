import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk7

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step63CounterWork : List Wire := [822, 875, 803, 922]
theorem s6Step63Counter_bounded : s6Step63CounterWork.toFinset⊆arenaWires := by norm_num [s6Step63CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step63CounterDuring : Arena := ⟨s6Step63HeadFvAfter.live∪s6Step63CounterWork.toFinset,Finset.union_subset s6Step63HeadFvAfter.bounded s6Step63Counter_bounded⟩
theorem s6Step63Counter_apart : Disjoint s6Step63HeadFvAfter.live s6Step63CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step63HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step63HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step63HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63Counter_borrowed : s6Step63HeadFvAfter.checkBorrow 4 s6Step63CounterWork=some s6Step63CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step63HeadFvAfter s6Step63CounterDuring s6Step63CounterWork.toFinset s6Step63Counter_bounded s6Step63Counter_apart rfl
theorem s6Step63Counter_checked : compileHmrCounterStepLog s6Step63HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step63CounterWork=some s6Step63CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step63HeadFvAfter.live := fun q hq => s6Step63Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step63Counter_borrowed
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
