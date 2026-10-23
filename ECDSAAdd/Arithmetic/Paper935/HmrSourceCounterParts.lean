import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0CounterWork : List Wire := [786, 787, 788, 789]
theorem s2Step0Counter_bounded : s2Step0CounterWork.toFinset⊆arenaWires := by norm_num [s2Step0CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step0CounterDuring : Arena := ⟨s2Step0HeadFvAfter.live∪s2Step0CounterWork.toFinset,Finset.union_subset s2Step0HeadFvAfter.bounded s2Step0Counter_bounded⟩
theorem s2Step0Counter_apart : Disjoint s2Step0HeadFvAfter.live s2Step0CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step0HeadFvAfter (fun q => (0≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0Counter_owned : (780::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step0HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step0HeadFvAfter (fun q => (0≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0Counter_borrowed : s2Step0HeadFvAfter.checkBorrow 4 s2Step0CounterWork=some s2Step0CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step0HeadFvAfter s2Step0CounterDuring s2Step0CounterWork.toFinset s2Step0Counter_bounded s2Step0Counter_apart rfl
theorem s2Step0Counter_checked : compileHmrCounterStepLog s2Step0HeadFvAfter true 780 [772, 773, 774, 775, 776, 777] s2Step0CounterWork=some s2Step0CounterDuring := by
  have owned : ∀q∈780::[772, 773, 774, 775, 776, 777],q∈s2Step0HeadFvAfter.live := fun q hq => s2Step0Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step0Counter_borrowed
def s2Step1CounterWork : List Wire := [788, 789, 790, 791]
theorem s2Step1Counter_bounded : s2Step1CounterWork.toFinset⊆arenaWires := by norm_num [s2Step1CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step1CounterDuring : Arena := ⟨s2Step1HeadFvAfter.live∪s2Step1CounterWork.toFinset,Finset.union_subset s2Step1HeadFvAfter.bounded s2Step1Counter_bounded⟩
theorem s2Step1Counter_apart : Disjoint s2Step1HeadFvAfter.live s2Step1CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step1HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step1HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step1HeadFvAfter (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Counter_borrowed : s2Step1HeadFvAfter.checkBorrow 4 s2Step1CounterWork=some s2Step1CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step1HeadFvAfter s2Step1CounterDuring s2Step1CounterWork.toFinset s2Step1Counter_bounded s2Step1Counter_apart rfl
theorem s2Step1Counter_checked : compileHmrCounterStepLog s2Step1HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step1CounterWork=some s2Step1CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step1HeadFvAfter.live := fun q hq => s2Step1Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step1Counter_borrowed
def s2Step498CounterWork : List Wire := [921, 922, 923, 924, 925]
theorem s2Step498Counter_bounded : s2Step498CounterWork.toFinset⊆arenaWires := by norm_num [s2Step498CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step498CounterDuring : Arena := ⟨s2Step498HeadFvAfter.live∪s2Step498CounterWork.toFinset,Finset.union_subset s2Step498HeadFvAfter.bounded s2Step498Counter_bounded⟩
theorem s2Step498Counter_apart : Disjoint s2Step498HeadFvAfter.live s2Step498CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step498HeadFvAfter (fun q => (0≤q ∧ q<921)) rfl
  decide +kernel
theorem s2Step498Counter_owned : (914::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step498HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step498HeadFvAfter (fun q => (0≤q ∧ q<921)) rfl
  decide +kernel
theorem s2Step498Counter_borrowed : s2Step498HeadFvAfter.checkBorrow 5 s2Step498CounterWork=some s2Step498CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step498HeadFvAfter s2Step498CounterDuring s2Step498CounterWork.toFinset s2Step498Counter_bounded s2Step498Counter_apart rfl
theorem s2Step498Counter_checked : compileHmrCounterStepLog s2Step498HeadFvAfter false 914 [772, 773, 774, 775, 776, 777] s2Step498CounterWork=some s2Step498CounterDuring := by
  have owned : ∀q∈914::[772, 773, 774, 775, 776, 777],q∈s2Step498HeadFvAfter.live := fun q hq => s2Step498Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step498Counter_borrowed
def s6Step0CounterWork : List Wire := [874, 793, 927, 802]
theorem s6Step0Counter_bounded : s6Step0CounterWork.toFinset⊆arenaWires := by norm_num [s6Step0CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step0CounterDuring : Arena := ⟨s6Step0HeadFvAfter.live∪s6Step0CounterWork.toFinset,Finset.union_subset s6Step0HeadFvAfter.bounded s6Step0Counter_bounded⟩
theorem s6Step0Counter_apart : Disjoint s6Step0HeadFvAfter.live s6Step0CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step0HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Counter_owned : (887::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step0HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step0HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Counter_borrowed : s6Step0HeadFvAfter.checkBorrow 4 s6Step0CounterWork=some s6Step0CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step0HeadFvAfter s6Step0CounterDuring s6Step0CounterWork.toFinset s6Step0Counter_bounded s6Step0Counter_apart rfl
theorem s6Step0Counter_checked : compileHmrCounterStepLog s6Step0HeadFvAfter true 887 [774, 773, 772, 771, 770, 769] s6Step0CounterWork=some s6Step0CounterDuring := by
  have owned : ∀q∈887::[774, 773, 772, 771, 770, 769],q∈s6Step0HeadFvAfter.live := fun q hq => s6Step0Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step0Counter_borrowed
def s6Step1CounterWork : List Wire := [927, 802, 875, 779]
theorem s6Step1Counter_bounded : s6Step1CounterWork.toFinset⊆arenaWires := by norm_num [s6Step1CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step1CounterDuring : Arena := ⟨s6Step1HeadFvAfter.live∪s6Step1CounterWork.toFinset,Finset.union_subset s6Step1HeadFvAfter.bounded s6Step1Counter_bounded⟩
theorem s6Step1Counter_apart : Disjoint s6Step1HeadFvAfter.live s6Step1CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step1HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step1HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step1HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1Counter_borrowed : s6Step1HeadFvAfter.checkBorrow 4 s6Step1CounterWork=some s6Step1CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step1HeadFvAfter s6Step1CounterDuring s6Step1CounterWork.toFinset s6Step1Counter_bounded s6Step1Counter_apart rfl
theorem s6Step1Counter_checked : compileHmrCounterStepLog s6Step1HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step1CounterWork=some s6Step1CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step1HeadFvAfter.live := fun q hq => s6Step1Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step1Counter_borrowed
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
