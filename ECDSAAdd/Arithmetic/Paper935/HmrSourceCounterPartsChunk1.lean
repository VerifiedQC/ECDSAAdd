import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16CounterWork : List Wire := [821, 822, 824, 825]
theorem s2Step16Counter_bounded : s2Step16CounterWork.toFinset⊆arenaWires := by norm_num [s2Step16CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step16CounterDuring : Arena := ⟨s2Step16HeadFvAfter.live∪s2Step16CounterWork.toFinset,Finset.union_subset s2Step16HeadFvAfter.bounded s2Step16Counter_bounded⟩
theorem s2Step16Counter_apart : Disjoint s2Step16HeadFvAfter.live s2Step16CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step16HeadFvAfter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Counter_owned : (816::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step16HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step16HeadFvAfter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Counter_borrowed : s2Step16HeadFvAfter.checkBorrow 4 s2Step16CounterWork=some s2Step16CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step16HeadFvAfter s2Step16CounterDuring s2Step16CounterWork.toFinset s2Step16Counter_bounded s2Step16Counter_apart rfl
theorem s2Step16Counter_checked : compileHmrCounterStepLog s2Step16HeadFvAfter true 816 [772, 773, 774, 775, 776, 777] s2Step16CounterWork=some s2Step16CounterDuring := by
  have owned : ∀q∈816::[772, 773, 774, 775, 776, 777],q∈s2Step16HeadFvAfter.live := fun q hq => s2Step16Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step16Counter_borrowed
def s2Step17CounterWork : List Wire := [824, 825, 826, 827]
theorem s2Step17Counter_bounded : s2Step17CounterWork.toFinset⊆arenaWires := by norm_num [s2Step17CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step17CounterDuring : Arena := ⟨s2Step17HeadFvAfter.live∪s2Step17CounterWork.toFinset,Finset.union_subset s2Step17HeadFvAfter.bounded s2Step17Counter_bounded⟩
theorem s2Step17Counter_apart : Disjoint s2Step17HeadFvAfter.live s2Step17CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step17HeadFvAfter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step17HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step17HeadFvAfter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Counter_borrowed : s2Step17HeadFvAfter.checkBorrow 4 s2Step17CounterWork=some s2Step17CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step17HeadFvAfter s2Step17CounterDuring s2Step17CounterWork.toFinset s2Step17Counter_bounded s2Step17Counter_apart rfl
theorem s2Step17Counter_checked : compileHmrCounterStepLog s2Step17HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step17CounterWork=some s2Step17CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step17HeadFvAfter.live := fun q hq => s2Step17Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step17Counter_borrowed
def s2Step18CounterWork : List Wire := [826, 827, 829, 830]
theorem s2Step18Counter_bounded : s2Step18CounterWork.toFinset⊆arenaWires := by norm_num [s2Step18CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step18CounterDuring : Arena := ⟨s2Step18HeadFvAfter.live∪s2Step18CounterWork.toFinset,Finset.union_subset s2Step18HeadFvAfter.bounded s2Step18Counter_bounded⟩
theorem s2Step18Counter_apart : Disjoint s2Step18HeadFvAfter.live s2Step18CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step18HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Counter_owned : (821::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step18HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step18HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Counter_borrowed : s2Step18HeadFvAfter.checkBorrow 4 s2Step18CounterWork=some s2Step18CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step18HeadFvAfter s2Step18CounterDuring s2Step18CounterWork.toFinset s2Step18Counter_bounded s2Step18Counter_apart rfl
theorem s2Step18Counter_checked : compileHmrCounterStepLog s2Step18HeadFvAfter true 821 [772, 773, 774, 775, 776, 777] s2Step18CounterWork=some s2Step18CounterDuring := by
  have owned : ∀q∈821::[772, 773, 774, 775, 776, 777],q∈s2Step18HeadFvAfter.live := fun q hq => s2Step18Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step18Counter_borrowed
def s2Step19CounterWork : List Wire := [829, 830, 831, 832]
theorem s2Step19Counter_bounded : s2Step19CounterWork.toFinset⊆arenaWires := by norm_num [s2Step19CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step19CounterDuring : Arena := ⟨s2Step19HeadFvAfter.live∪s2Step19CounterWork.toFinset,Finset.union_subset s2Step19HeadFvAfter.bounded s2Step19Counter_bounded⟩
theorem s2Step19Counter_apart : Disjoint s2Step19HeadFvAfter.live s2Step19CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step19HeadFvAfter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Counter_owned : (824::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step19HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step19HeadFvAfter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Counter_borrowed : s2Step19HeadFvAfter.checkBorrow 4 s2Step19CounterWork=some s2Step19CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step19HeadFvAfter s2Step19CounterDuring s2Step19CounterWork.toFinset s2Step19Counter_bounded s2Step19Counter_apart rfl
theorem s2Step19Counter_checked : compileHmrCounterStepLog s2Step19HeadFvAfter true 824 [772, 773, 774, 775, 776, 777] s2Step19CounterWork=some s2Step19CounterDuring := by
  have owned : ∀q∈824::[772, 773, 774, 775, 776, 777],q∈s2Step19HeadFvAfter.live := fun q hq => s2Step19Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step19Counter_borrowed
def s2Step20CounterWork : List Wire := [831, 832, 834, 835]
theorem s2Step20Counter_bounded : s2Step20CounterWork.toFinset⊆arenaWires := by norm_num [s2Step20CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step20CounterDuring : Arena := ⟨s2Step20HeadFvAfter.live∪s2Step20CounterWork.toFinset,Finset.union_subset s2Step20HeadFvAfter.bounded s2Step20Counter_bounded⟩
theorem s2Step20Counter_apart : Disjoint s2Step20HeadFvAfter.live s2Step20CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step20HeadFvAfter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Counter_owned : (826::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step20HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step20HeadFvAfter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Counter_borrowed : s2Step20HeadFvAfter.checkBorrow 4 s2Step20CounterWork=some s2Step20CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step20HeadFvAfter s2Step20CounterDuring s2Step20CounterWork.toFinset s2Step20Counter_bounded s2Step20Counter_apart rfl
theorem s2Step20Counter_checked : compileHmrCounterStepLog s2Step20HeadFvAfter true 826 [772, 773, 774, 775, 776, 777] s2Step20CounterWork=some s2Step20CounterDuring := by
  have owned : ∀q∈826::[772, 773, 774, 775, 776, 777],q∈s2Step20HeadFvAfter.live := fun q hq => s2Step20Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step20Counter_borrowed
def s2Step21CounterWork : List Wire := [834, 835, 836, 837]
theorem s2Step21Counter_bounded : s2Step21CounterWork.toFinset⊆arenaWires := by norm_num [s2Step21CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step21CounterDuring : Arena := ⟨s2Step21HeadFvAfter.live∪s2Step21CounterWork.toFinset,Finset.union_subset s2Step21HeadFvAfter.bounded s2Step21Counter_bounded⟩
theorem s2Step21Counter_apart : Disjoint s2Step21HeadFvAfter.live s2Step21CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step21HeadFvAfter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step21HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step21HeadFvAfter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Counter_borrowed : s2Step21HeadFvAfter.checkBorrow 4 s2Step21CounterWork=some s2Step21CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step21HeadFvAfter s2Step21CounterDuring s2Step21CounterWork.toFinset s2Step21Counter_bounded s2Step21Counter_apart rfl
theorem s2Step21Counter_checked : compileHmrCounterStepLog s2Step21HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step21CounterWork=some s2Step21CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step21HeadFvAfter.live := fun q hq => s2Step21Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step21Counter_borrowed
def s2Step22CounterWork : List Wire := [836, 837, 839, 840]
theorem s2Step22Counter_bounded : s2Step22CounterWork.toFinset⊆arenaWires := by norm_num [s2Step22CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step22CounterDuring : Arena := ⟨s2Step22HeadFvAfter.live∪s2Step22CounterWork.toFinset,Finset.union_subset s2Step22HeadFvAfter.bounded s2Step22Counter_bounded⟩
theorem s2Step22Counter_apart : Disjoint s2Step22HeadFvAfter.live s2Step22CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step22HeadFvAfter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Counter_owned : (831::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step22HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step22HeadFvAfter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Counter_borrowed : s2Step22HeadFvAfter.checkBorrow 4 s2Step22CounterWork=some s2Step22CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step22HeadFvAfter s2Step22CounterDuring s2Step22CounterWork.toFinset s2Step22Counter_bounded s2Step22Counter_apart rfl
theorem s2Step22Counter_checked : compileHmrCounterStepLog s2Step22HeadFvAfter true 831 [772, 773, 774, 775, 776, 777] s2Step22CounterWork=some s2Step22CounterDuring := by
  have owned : ∀q∈831::[772, 773, 774, 775, 776, 777],q∈s2Step22HeadFvAfter.live := fun q hq => s2Step22Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step22Counter_borrowed
def s2Step23CounterWork : List Wire := [839, 840, 841, 842]
theorem s2Step23Counter_bounded : s2Step23CounterWork.toFinset⊆arenaWires := by norm_num [s2Step23CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step23CounterDuring : Arena := ⟨s2Step23HeadFvAfter.live∪s2Step23CounterWork.toFinset,Finset.union_subset s2Step23HeadFvAfter.bounded s2Step23Counter_bounded⟩
theorem s2Step23Counter_apart : Disjoint s2Step23HeadFvAfter.live s2Step23CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step23HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Counter_owned : (834::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step23HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step23HeadFvAfter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Counter_borrowed : s2Step23HeadFvAfter.checkBorrow 4 s2Step23CounterWork=some s2Step23CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step23HeadFvAfter s2Step23CounterDuring s2Step23CounterWork.toFinset s2Step23Counter_bounded s2Step23Counter_apart rfl
theorem s2Step23Counter_checked : compileHmrCounterStepLog s2Step23HeadFvAfter true 834 [772, 773, 774, 775, 776, 777] s2Step23CounterWork=some s2Step23CounterDuring := by
  have owned : ∀q∈834::[772, 773, 774, 775, 776, 777],q∈s2Step23HeadFvAfter.live := fun q hq => s2Step23Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step23Counter_borrowed
def s2Step24CounterWork : List Wire := [841, 842, 844, 845]
theorem s2Step24Counter_bounded : s2Step24CounterWork.toFinset⊆arenaWires := by norm_num [s2Step24CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step24CounterDuring : Arena := ⟨s2Step24HeadFvAfter.live∪s2Step24CounterWork.toFinset,Finset.union_subset s2Step24HeadFvAfter.bounded s2Step24Counter_bounded⟩
theorem s2Step24Counter_apart : Disjoint s2Step24HeadFvAfter.live s2Step24CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step24HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Counter_owned : (836::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step24HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step24HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Counter_borrowed : s2Step24HeadFvAfter.checkBorrow 4 s2Step24CounterWork=some s2Step24CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step24HeadFvAfter s2Step24CounterDuring s2Step24CounterWork.toFinset s2Step24Counter_bounded s2Step24Counter_apart rfl
theorem s2Step24Counter_checked : compileHmrCounterStepLog s2Step24HeadFvAfter true 836 [772, 773, 774, 775, 776, 777] s2Step24CounterWork=some s2Step24CounterDuring := by
  have owned : ∀q∈836::[772, 773, 774, 775, 776, 777],q∈s2Step24HeadFvAfter.live := fun q hq => s2Step24Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step24Counter_borrowed
def s2Step25CounterWork : List Wire := [783, 782, 841, 842]
theorem s2Step25Counter_bounded : s2Step25CounterWork.toFinset⊆arenaWires := by norm_num [s2Step25CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step25CounterDuring : Arena := ⟨s2Step25HeadFvAfter.live∪s2Step25CounterWork.toFinset,Finset.union_subset s2Step25HeadFvAfter.bounded s2Step25Counter_bounded⟩
theorem s2Step25Counter_apart : Disjoint s2Step25HeadFvAfter.live s2Step25CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step25HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Counter_owned : (779::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step25HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step25HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Counter_borrowed : s2Step25HeadFvAfter.checkBorrow 4 s2Step25CounterWork=some s2Step25CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step25HeadFvAfter s2Step25CounterDuring s2Step25CounterWork.toFinset s2Step25Counter_bounded s2Step25Counter_apart rfl
theorem s2Step25Counter_checked : compileHmrCounterStepLog s2Step25HeadFvAfter true 779 [772, 773, 774, 775, 776, 777] s2Step25CounterWork=some s2Step25CounterDuring := by
  have owned : ∀q∈779::[772, 773, 774, 775, 776, 777],q∈s2Step25HeadFvAfter.live := fun q hq => s2Step25Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step25Counter_borrowed
def s2Step26CounterWork : List Wire := [841, 842, 844, 845]
theorem s2Step26Counter_bounded : s2Step26CounterWork.toFinset⊆arenaWires := by norm_num [s2Step26CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step26CounterDuring : Arena := ⟨s2Step26HeadFvAfter.live∪s2Step26CounterWork.toFinset,Finset.union_subset s2Step26HeadFvAfter.bounded s2Step26Counter_bounded⟩
theorem s2Step26Counter_apart : Disjoint s2Step26HeadFvAfter.live s2Step26CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step26HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Counter_owned : (840::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step26HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step26HeadFvAfter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Counter_borrowed : s2Step26HeadFvAfter.checkBorrow 4 s2Step26CounterWork=some s2Step26CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step26HeadFvAfter s2Step26CounterDuring s2Step26CounterWork.toFinset s2Step26Counter_bounded s2Step26Counter_apart rfl
theorem s2Step26Counter_checked : compileHmrCounterStepLog s2Step26HeadFvAfter true 840 [772, 773, 774, 775, 776, 777] s2Step26CounterWork=some s2Step26CounterDuring := by
  have owned : ∀q∈840::[772, 773, 774, 775, 776, 777],q∈s2Step26HeadFvAfter.live := fun q hq => s2Step26Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step26Counter_borrowed
def s2Step27CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step27Counter_bounded : s2Step27CounterWork.toFinset⊆arenaWires := by norm_num [s2Step27CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step27CounterDuring : Arena := ⟨s2Step27HeadFvAfter.live∪s2Step27CounterWork.toFinset,Finset.union_subset s2Step27HeadFvAfter.bounded s2Step27Counter_bounded⟩
theorem s2Step27Counter_apart : Disjoint s2Step27HeadFvAfter.live s2Step27CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step27HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Counter_owned : (783::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step27HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step27HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Counter_borrowed : s2Step27HeadFvAfter.checkBorrow 4 s2Step27CounterWork=some s2Step27CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step27HeadFvAfter s2Step27CounterDuring s2Step27CounterWork.toFinset s2Step27Counter_bounded s2Step27Counter_apart rfl
theorem s2Step27Counter_checked : compileHmrCounterStepLog s2Step27HeadFvAfter true 783 [772, 773, 774, 775, 776, 777] s2Step27CounterWork=some s2Step27CounterDuring := by
  have owned : ∀q∈783::[772, 773, 774, 775, 776, 777],q∈s2Step27HeadFvAfter.live := fun q hq => s2Step27Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step27Counter_borrowed
def s2Step28CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step28Counter_bounded : s2Step28CounterWork.toFinset⊆arenaWires := by norm_num [s2Step28CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step28CounterDuring : Arena := ⟨s2Step28HeadFvAfter.live∪s2Step28CounterWork.toFinset,Finset.union_subset s2Step28HeadFvAfter.bounded s2Step28Counter_bounded⟩
theorem s2Step28Counter_apart : Disjoint s2Step28HeadFvAfter.live s2Step28CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step28HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step28HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step28HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Counter_borrowed : s2Step28HeadFvAfter.checkBorrow 4 s2Step28CounterWork=some s2Step28CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step28HeadFvAfter s2Step28CounterDuring s2Step28CounterWork.toFinset s2Step28Counter_bounded s2Step28Counter_apart rfl
theorem s2Step28Counter_checked : compileHmrCounterStepLog s2Step28HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step28CounterWork=some s2Step28CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step28HeadFvAfter.live := fun q hq => s2Step28Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step28Counter_borrowed
def s2Step29CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step29Counter_bounded : s2Step29CounterWork.toFinset⊆arenaWires := by norm_num [s2Step29CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step29CounterDuring : Arena := ⟨s2Step29HeadFvAfter.live∪s2Step29CounterWork.toFinset,Finset.union_subset s2Step29HeadFvAfter.bounded s2Step29Counter_bounded⟩
theorem s2Step29Counter_apart : Disjoint s2Step29HeadFvAfter.live s2Step29CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step29HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step29HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step29HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Counter_borrowed : s2Step29HeadFvAfter.checkBorrow 4 s2Step29CounterWork=some s2Step29CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step29HeadFvAfter s2Step29CounterDuring s2Step29CounterWork.toFinset s2Step29Counter_bounded s2Step29Counter_apart rfl
theorem s2Step29Counter_checked : compileHmrCounterStepLog s2Step29HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step29CounterWork=some s2Step29CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step29HeadFvAfter.live := fun q hq => s2Step29Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step29Counter_borrowed
def s2Step30CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step30Counter_bounded : s2Step30CounterWork.toFinset⊆arenaWires := by norm_num [s2Step30CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step30CounterDuring : Arena := ⟨s2Step30HeadFvAfter.live∪s2Step30CounterWork.toFinset,Finset.union_subset s2Step30HeadFvAfter.bounded s2Step30Counter_bounded⟩
theorem s2Step30Counter_apart : Disjoint s2Step30HeadFvAfter.live s2Step30CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step30HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Counter_owned : (789::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step30HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step30HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Counter_borrowed : s2Step30HeadFvAfter.checkBorrow 4 s2Step30CounterWork=some s2Step30CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step30HeadFvAfter s2Step30CounterDuring s2Step30CounterWork.toFinset s2Step30Counter_bounded s2Step30Counter_apart rfl
theorem s2Step30Counter_checked : compileHmrCounterStepLog s2Step30HeadFvAfter true 789 [772, 773, 774, 775, 776, 777] s2Step30CounterWork=some s2Step30CounterDuring := by
  have owned : ∀q∈789::[772, 773, 774, 775, 776, 777],q∈s2Step30HeadFvAfter.live := fun q hq => s2Step30Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step30Counter_borrowed
def s2Step31CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step31Counter_bounded : s2Step31CounterWork.toFinset⊆arenaWires := by norm_num [s2Step31CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step31CounterDuring : Arena := ⟨s2Step31HeadFvAfter.live∪s2Step31CounterWork.toFinset,Finset.union_subset s2Step31HeadFvAfter.bounded s2Step31Counter_bounded⟩
theorem s2Step31Counter_apart : Disjoint s2Step31HeadFvAfter.live s2Step31CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step31HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step31HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step31HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Counter_borrowed : s2Step31HeadFvAfter.checkBorrow 4 s2Step31CounterWork=some s2Step31CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step31HeadFvAfter s2Step31CounterDuring s2Step31CounterWork.toFinset s2Step31Counter_bounded s2Step31Counter_apart rfl
theorem s2Step31Counter_checked : compileHmrCounterStepLog s2Step31HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step31CounterWork=some s2Step31CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step31HeadFvAfter.live := fun q hq => s2Step31Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step31Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
