import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step48Counter_bounded : s2Step48CounterWork.toFinset⊆arenaWires := by norm_num [s2Step48CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step48CounterDuring : Arena := ⟨s2Step48HeadFvAfter.live∪s2Step48CounterWork.toFinset,Finset.union_subset s2Step48HeadFvAfter.bounded s2Step48Counter_bounded⟩
theorem s2Step48Counter_apart : Disjoint s2Step48HeadFvAfter.live s2Step48CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step48HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step48HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step48HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Counter_borrowed : s2Step48HeadFvAfter.checkBorrow 4 s2Step48CounterWork=some s2Step48CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step48HeadFvAfter s2Step48CounterDuring s2Step48CounterWork.toFinset s2Step48Counter_bounded s2Step48Counter_apart rfl
theorem s2Step48Counter_checked : compileHmrCounterStepLog s2Step48HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step48CounterWork=some s2Step48CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step48HeadFvAfter.live := fun q hq => s2Step48Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step48Counter_borrowed
def s2Step49CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step49Counter_bounded : s2Step49CounterWork.toFinset⊆arenaWires := by norm_num [s2Step49CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step49CounterDuring : Arena := ⟨s2Step49HeadFvAfter.live∪s2Step49CounterWork.toFinset,Finset.union_subset s2Step49HeadFvAfter.bounded s2Step49Counter_bounded⟩
theorem s2Step49Counter_apart : Disjoint s2Step49HeadFvAfter.live s2Step49CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step49HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step49HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step49HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Counter_borrowed : s2Step49HeadFvAfter.checkBorrow 4 s2Step49CounterWork=some s2Step49CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step49HeadFvAfter s2Step49CounterDuring s2Step49CounterWork.toFinset s2Step49Counter_bounded s2Step49Counter_apart rfl
theorem s2Step49Counter_checked : compileHmrCounterStepLog s2Step49HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step49CounterWork=some s2Step49CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step49HeadFvAfter.live := fun q hq => s2Step49Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step49Counter_borrowed
def s2Step50CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step50Counter_bounded : s2Step50CounterWork.toFinset⊆arenaWires := by norm_num [s2Step50CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step50CounterDuring : Arena := ⟨s2Step50HeadFvAfter.live∪s2Step50CounterWork.toFinset,Finset.union_subset s2Step50HeadFvAfter.bounded s2Step50Counter_bounded⟩
theorem s2Step50Counter_apart : Disjoint s2Step50HeadFvAfter.live s2Step50CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step50HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step50HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step50HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Counter_borrowed : s2Step50HeadFvAfter.checkBorrow 4 s2Step50CounterWork=some s2Step50CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step50HeadFvAfter s2Step50CounterDuring s2Step50CounterWork.toFinset s2Step50Counter_bounded s2Step50Counter_apart rfl
theorem s2Step50Counter_checked : compileHmrCounterStepLog s2Step50HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step50CounterWork=some s2Step50CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step50HeadFvAfter.live := fun q hq => s2Step50Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step50Counter_borrowed
def s2Step51CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step51Counter_bounded : s2Step51CounterWork.toFinset⊆arenaWires := by norm_num [s2Step51CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step51CounterDuring : Arena := ⟨s2Step51HeadFvAfter.live∪s2Step51CounterWork.toFinset,Finset.union_subset s2Step51HeadFvAfter.bounded s2Step51Counter_bounded⟩
theorem s2Step51Counter_apart : Disjoint s2Step51HeadFvAfter.live s2Step51CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step51HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step51HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step51HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Counter_borrowed : s2Step51HeadFvAfter.checkBorrow 4 s2Step51CounterWork=some s2Step51CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step51HeadFvAfter s2Step51CounterDuring s2Step51CounterWork.toFinset s2Step51Counter_bounded s2Step51Counter_apart rfl
theorem s2Step51Counter_checked : compileHmrCounterStepLog s2Step51HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step51CounterWork=some s2Step51CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step51HeadFvAfter.live := fun q hq => s2Step51Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step51Counter_borrowed
def s2Step52CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step52Counter_bounded : s2Step52CounterWork.toFinset⊆arenaWires := by norm_num [s2Step52CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step52CounterDuring : Arena := ⟨s2Step52HeadFvAfter.live∪s2Step52CounterWork.toFinset,Finset.union_subset s2Step52HeadFvAfter.bounded s2Step52Counter_bounded⟩
theorem s2Step52Counter_apart : Disjoint s2Step52HeadFvAfter.live s2Step52CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step52HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step52HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step52HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Counter_borrowed : s2Step52HeadFvAfter.checkBorrow 4 s2Step52CounterWork=some s2Step52CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step52HeadFvAfter s2Step52CounterDuring s2Step52CounterWork.toFinset s2Step52Counter_bounded s2Step52Counter_apart rfl
theorem s2Step52Counter_checked : compileHmrCounterStepLog s2Step52HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step52CounterWork=some s2Step52CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step52HeadFvAfter.live := fun q hq => s2Step52Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step52Counter_borrowed
def s2Step53CounterWork : List Wire := [787, 790, 792, 800]
theorem s2Step53Counter_bounded : s2Step53CounterWork.toFinset⊆arenaWires := by norm_num [s2Step53CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step53CounterDuring : Arena := ⟨s2Step53HeadFvAfter.live∪s2Step53CounterWork.toFinset,Finset.union_subset s2Step53HeadFvAfter.bounded s2Step53Counter_bounded⟩
theorem s2Step53Counter_apart : Disjoint s2Step53HeadFvAfter.live s2Step53CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step53HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step53HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step53HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Counter_borrowed : s2Step53HeadFvAfter.checkBorrow 4 s2Step53CounterWork=some s2Step53CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step53HeadFvAfter s2Step53CounterDuring s2Step53CounterWork.toFinset s2Step53Counter_bounded s2Step53Counter_apart rfl
theorem s2Step53Counter_checked : compileHmrCounterStepLog s2Step53HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step53CounterWork=some s2Step53CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step53HeadFvAfter.live := fun q hq => s2Step53Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step53Counter_borrowed
def s2Step54CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step54Counter_bounded : s2Step54CounterWork.toFinset⊆arenaWires := by norm_num [s2Step54CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step54CounterDuring : Arena := ⟨s2Step54HeadFvAfter.live∪s2Step54CounterWork.toFinset,Finset.union_subset s2Step54HeadFvAfter.bounded s2Step54Counter_bounded⟩
theorem s2Step54Counter_apart : Disjoint s2Step54HeadFvAfter.live s2Step54CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step54HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step54HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step54HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Counter_borrowed : s2Step54HeadFvAfter.checkBorrow 4 s2Step54CounterWork=some s2Step54CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step54HeadFvAfter s2Step54CounterDuring s2Step54CounterWork.toFinset s2Step54Counter_bounded s2Step54Counter_apart rfl
theorem s2Step54Counter_checked : compileHmrCounterStepLog s2Step54HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step54CounterWork=some s2Step54CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step54HeadFvAfter.live := fun q hq => s2Step54Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step54Counter_borrowed
def s2Step55CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step55Counter_bounded : s2Step55CounterWork.toFinset⊆arenaWires := by norm_num [s2Step55CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step55CounterDuring : Arena := ⟨s2Step55HeadFvAfter.live∪s2Step55CounterWork.toFinset,Finset.union_subset s2Step55HeadFvAfter.bounded s2Step55Counter_bounded⟩
theorem s2Step55Counter_apart : Disjoint s2Step55HeadFvAfter.live s2Step55CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step55HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step55HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step55HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Counter_borrowed : s2Step55HeadFvAfter.checkBorrow 4 s2Step55CounterWork=some s2Step55CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step55HeadFvAfter s2Step55CounterDuring s2Step55CounterWork.toFinset s2Step55Counter_bounded s2Step55Counter_apart rfl
theorem s2Step55Counter_checked : compileHmrCounterStepLog s2Step55HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step55CounterWork=some s2Step55CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step55HeadFvAfter.live := fun q hq => s2Step55Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step55Counter_borrowed
def s2Step56CounterWork : List Wire := [807, 812, 844, 845]
theorem s2Step56Counter_bounded : s2Step56CounterWork.toFinset⊆arenaWires := by norm_num [s2Step56CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step56CounterDuring : Arena := ⟨s2Step56HeadFvAfter.live∪s2Step56CounterWork.toFinset,Finset.union_subset s2Step56HeadFvAfter.bounded s2Step56Counter_bounded⟩
theorem s2Step56Counter_apart : Disjoint s2Step56HeadFvAfter.live s2Step56CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step56HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step56HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step56HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Counter_borrowed : s2Step56HeadFvAfter.checkBorrow 4 s2Step56CounterWork=some s2Step56CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step56HeadFvAfter s2Step56CounterDuring s2Step56CounterWork.toFinset s2Step56Counter_bounded s2Step56Counter_apart rfl
theorem s2Step56Counter_checked : compileHmrCounterStepLog s2Step56HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step56CounterWork=some s2Step56CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step56HeadFvAfter.live := fun q hq => s2Step56Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step56Counter_borrowed
def s2Step57CounterWork : List Wire := [807, 812, 844, 845]
theorem s2Step57Counter_bounded : s2Step57CounterWork.toFinset⊆arenaWires := by norm_num [s2Step57CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step57CounterDuring : Arena := ⟨s2Step57HeadFvAfter.live∪s2Step57CounterWork.toFinset,Finset.union_subset s2Step57HeadFvAfter.bounded s2Step57Counter_bounded⟩
theorem s2Step57Counter_apart : Disjoint s2Step57HeadFvAfter.live s2Step57CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step57HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step57HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step57HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Counter_borrowed : s2Step57HeadFvAfter.checkBorrow 4 s2Step57CounterWork=some s2Step57CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step57HeadFvAfter s2Step57CounterDuring s2Step57CounterWork.toFinset s2Step57Counter_bounded s2Step57Counter_apart rfl
theorem s2Step57Counter_checked : compileHmrCounterStepLog s2Step57HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step57CounterWork=some s2Step57CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step57HeadFvAfter.live := fun q hq => s2Step57Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step57Counter_borrowed
def s2Step58CounterWork : List Wire := [814, 800, 807, 812]
theorem s2Step58Counter_bounded : s2Step58CounterWork.toFinset⊆arenaWires := by norm_num [s2Step58CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step58CounterDuring : Arena := ⟨s2Step58HeadFvAfter.live∪s2Step58CounterWork.toFinset,Finset.union_subset s2Step58HeadFvAfter.bounded s2Step58Counter_bounded⟩
theorem s2Step58Counter_apart : Disjoint s2Step58HeadFvAfter.live s2Step58CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step58HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step58HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step58HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Counter_borrowed : s2Step58HeadFvAfter.checkBorrow 4 s2Step58CounterWork=some s2Step58CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step58HeadFvAfter s2Step58CounterDuring s2Step58CounterWork.toFinset s2Step58Counter_bounded s2Step58Counter_apart rfl
theorem s2Step58Counter_checked : compileHmrCounterStepLog s2Step58HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step58CounterWork=some s2Step58CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step58HeadFvAfter.live := fun q hq => s2Step58Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step58Counter_borrowed
def s2Step59CounterWork : List Wire := [807, 812, 844, 845]
theorem s2Step59Counter_bounded : s2Step59CounterWork.toFinset⊆arenaWires := by norm_num [s2Step59CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step59CounterDuring : Arena := ⟨s2Step59HeadFvAfter.live∪s2Step59CounterWork.toFinset,Finset.union_subset s2Step59HeadFvAfter.bounded s2Step59Counter_bounded⟩
theorem s2Step59Counter_apart : Disjoint s2Step59HeadFvAfter.live s2Step59CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step59HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Counter_owned : (792::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step59HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step59HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Counter_borrowed : s2Step59HeadFvAfter.checkBorrow 4 s2Step59CounterWork=some s2Step59CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step59HeadFvAfter s2Step59CounterDuring s2Step59CounterWork.toFinset s2Step59Counter_bounded s2Step59Counter_apart rfl
theorem s2Step59Counter_checked : compileHmrCounterStepLog s2Step59HeadFvAfter true 792 [772, 773, 774, 775, 776, 777] s2Step59CounterWork=some s2Step59CounterDuring := by
  have owned : ∀q∈792::[772, 773, 774, 775, 776, 777],q∈s2Step59HeadFvAfter.live := fun q hq => s2Step59Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step59Counter_borrowed
def s2Step60CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step60Counter_bounded : s2Step60CounterWork.toFinset⊆arenaWires := by norm_num [s2Step60CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step60CounterDuring : Arena := ⟨s2Step60HeadFvAfter.live∪s2Step60CounterWork.toFinset,Finset.union_subset s2Step60HeadFvAfter.bounded s2Step60Counter_bounded⟩
theorem s2Step60Counter_apart : Disjoint s2Step60HeadFvAfter.live s2Step60CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step60HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step60HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step60HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Counter_borrowed : s2Step60HeadFvAfter.checkBorrow 4 s2Step60CounterWork=some s2Step60CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step60HeadFvAfter s2Step60CounterDuring s2Step60CounterWork.toFinset s2Step60Counter_bounded s2Step60Counter_apart rfl
theorem s2Step60Counter_checked : compileHmrCounterStepLog s2Step60HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step60CounterWork=some s2Step60CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step60HeadFvAfter.live := fun q hq => s2Step60Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step60Counter_borrowed
def s2Step61CounterWork : List Wire := [846, 847, 849, 851]
theorem s2Step61Counter_bounded : s2Step61CounterWork.toFinset⊆arenaWires := by norm_num [s2Step61CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step61CounterDuring : Arena := ⟨s2Step61HeadFvAfter.live∪s2Step61CounterWork.toFinset,Finset.union_subset s2Step61HeadFvAfter.bounded s2Step61Counter_bounded⟩
theorem s2Step61Counter_apart : Disjoint s2Step61HeadFvAfter.live s2Step61CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step61HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step61HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step61HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Counter_borrowed : s2Step61HeadFvAfter.checkBorrow 4 s2Step61CounterWork=some s2Step61CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step61HeadFvAfter s2Step61CounterDuring s2Step61CounterWork.toFinset s2Step61Counter_bounded s2Step61Counter_apart rfl
theorem s2Step61Counter_checked : compileHmrCounterStepLog s2Step61HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step61CounterWork=some s2Step61CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step61HeadFvAfter.live := fun q hq => s2Step61Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step61Counter_borrowed
def s2Step62CounterWork : List Wire := [814, 790, 846, 847]
theorem s2Step62Counter_bounded : s2Step62CounterWork.toFinset⊆arenaWires := by norm_num [s2Step62CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step62CounterDuring : Arena := ⟨s2Step62HeadFvAfter.live∪s2Step62CounterWork.toFinset,Finset.union_subset s2Step62HeadFvAfter.bounded s2Step62Counter_bounded⟩
theorem s2Step62Counter_apart : Disjoint s2Step62HeadFvAfter.live s2Step62CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step62HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step62HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step62HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Counter_borrowed : s2Step62HeadFvAfter.checkBorrow 4 s2Step62CounterWork=some s2Step62CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step62HeadFvAfter s2Step62CounterDuring s2Step62CounterWork.toFinset s2Step62Counter_bounded s2Step62Counter_apart rfl
theorem s2Step62Counter_checked : compileHmrCounterStepLog s2Step62HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step62CounterWork=some s2Step62CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step62HeadFvAfter.live := fun q hq => s2Step62Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step62Counter_borrowed
def s2Step63CounterWork : List Wire := [814, 790, 846, 847]
theorem s2Step63Counter_bounded : s2Step63CounterWork.toFinset⊆arenaWires := by norm_num [s2Step63CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step63CounterDuring : Arena := ⟨s2Step63HeadFvAfter.live∪s2Step63CounterWork.toFinset,Finset.union_subset s2Step63HeadFvAfter.bounded s2Step63Counter_bounded⟩
theorem s2Step63Counter_apart : Disjoint s2Step63HeadFvAfter.live s2Step63CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step63HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step63HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step63HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Counter_borrowed : s2Step63HeadFvAfter.checkBorrow 4 s2Step63CounterWork=some s2Step63CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step63HeadFvAfter s2Step63CounterDuring s2Step63CounterWork.toFinset s2Step63Counter_bounded s2Step63Counter_apart rfl
theorem s2Step63Counter_checked : compileHmrCounterStepLog s2Step63HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step63CounterWork=some s2Step63CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step63HeadFvAfter.live := fun q hq => s2Step63Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step63Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
