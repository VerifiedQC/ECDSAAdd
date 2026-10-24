import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step32Counter_bounded : s2Step32CounterWork.toFinset⊆arenaWires := by norm_num [s2Step32CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step32CounterDuring : Arena := ⟨s2Step32HeadFvAfter.live∪s2Step32CounterWork.toFinset,Finset.union_subset s2Step32HeadFvAfter.bounded s2Step32Counter_bounded⟩
theorem s2Step32Counter_apart : Disjoint s2Step32HeadFvAfter.live s2Step32CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step32HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Counter_owned : (789::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step32HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step32HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Counter_borrowed : s2Step32HeadFvAfter.checkBorrow 4 s2Step32CounterWork=some s2Step32CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step32HeadFvAfter s2Step32CounterDuring s2Step32CounterWork.toFinset s2Step32Counter_bounded s2Step32Counter_apart rfl
theorem s2Step32Counter_checked : compileHmrCounterStepLog s2Step32HeadFvAfter true 789 [772, 773, 774, 775, 776, 777] s2Step32CounterWork=some s2Step32CounterDuring := by
  have owned : ∀q∈789::[772, 773, 774, 775, 776, 777],q∈s2Step32HeadFvAfter.live := fun q hq => s2Step32Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step32Counter_borrowed
def s2Step33CounterWork : List Wire := [786, 780, 844, 845]
theorem s2Step33Counter_bounded : s2Step33CounterWork.toFinset⊆arenaWires := by norm_num [s2Step33CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step33CounterDuring : Arena := ⟨s2Step33HeadFvAfter.live∪s2Step33CounterWork.toFinset,Finset.union_subset s2Step33HeadFvAfter.bounded s2Step33Counter_bounded⟩
theorem s2Step33Counter_apart : Disjoint s2Step33HeadFvAfter.live s2Step33CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step33HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Counter_owned : (789::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step33HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step33HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Counter_borrowed : s2Step33HeadFvAfter.checkBorrow 4 s2Step33CounterWork=some s2Step33CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step33HeadFvAfter s2Step33CounterDuring s2Step33CounterWork.toFinset s2Step33Counter_bounded s2Step33Counter_apart rfl
theorem s2Step33Counter_checked : compileHmrCounterStepLog s2Step33HeadFvAfter true 789 [772, 773, 774, 775, 776, 777] s2Step33CounterWork=some s2Step33CounterDuring := by
  have owned : ∀q∈789::[772, 773, 774, 775, 776, 777],q∈s2Step33HeadFvAfter.live := fun q hq => s2Step33Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step33Counter_borrowed
def s2Step34CounterWork : List Wire := [786, 780, 844, 845]
theorem s2Step34Counter_bounded : s2Step34CounterWork.toFinset⊆arenaWires := by norm_num [s2Step34CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step34CounterDuring : Arena := ⟨s2Step34HeadFvAfter.live∪s2Step34CounterWork.toFinset,Finset.union_subset s2Step34HeadFvAfter.bounded s2Step34Counter_bounded⟩
theorem s2Step34Counter_apart : Disjoint s2Step34HeadFvAfter.live s2Step34CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step34HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Counter_owned : (789::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step34HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step34HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Counter_borrowed : s2Step34HeadFvAfter.checkBorrow 4 s2Step34CounterWork=some s2Step34CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step34HeadFvAfter s2Step34CounterDuring s2Step34CounterWork.toFinset s2Step34Counter_bounded s2Step34Counter_apart rfl
theorem s2Step34Counter_checked : compileHmrCounterStepLog s2Step34HeadFvAfter true 789 [772, 773, 774, 775, 776, 777] s2Step34CounterWork=some s2Step34CounterDuring := by
  have owned : ∀q∈789::[772, 773, 774, 775, 776, 777],q∈s2Step34HeadFvAfter.live := fun q hq => s2Step34Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step34Counter_borrowed
def s2Step35CounterWork : List Wire := [786, 780, 844, 845]
theorem s2Step35Counter_bounded : s2Step35CounterWork.toFinset⊆arenaWires := by norm_num [s2Step35CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step35CounterDuring : Arena := ⟨s2Step35HeadFvAfter.live∪s2Step35CounterWork.toFinset,Finset.union_subset s2Step35HeadFvAfter.bounded s2Step35Counter_bounded⟩
theorem s2Step35Counter_apart : Disjoint s2Step35HeadFvAfter.live s2Step35CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step35HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Counter_owned : (789::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step35HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step35HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Counter_borrowed : s2Step35HeadFvAfter.checkBorrow 4 s2Step35CounterWork=some s2Step35CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step35HeadFvAfter s2Step35CounterDuring s2Step35CounterWork.toFinset s2Step35Counter_bounded s2Step35Counter_apart rfl
theorem s2Step35Counter_checked : compileHmrCounterStepLog s2Step35HeadFvAfter true 789 [772, 773, 774, 775, 776, 777] s2Step35CounterWork=some s2Step35CounterDuring := by
  have owned : ∀q∈789::[772, 773, 774, 775, 776, 777],q∈s2Step35HeadFvAfter.live := fun q hq => s2Step35Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step35Counter_borrowed
def s2Step36CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step36Counter_bounded : s2Step36CounterWork.toFinset⊆arenaWires := by norm_num [s2Step36CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step36CounterDuring : Arena := ⟨s2Step36HeadFvAfter.live∪s2Step36CounterWork.toFinset,Finset.union_subset s2Step36HeadFvAfter.bounded s2Step36Counter_bounded⟩
theorem s2Step36Counter_apart : Disjoint s2Step36HeadFvAfter.live s2Step36CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step36HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Counter_owned : (792::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step36HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step36HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Counter_borrowed : s2Step36HeadFvAfter.checkBorrow 4 s2Step36CounterWork=some s2Step36CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step36HeadFvAfter s2Step36CounterDuring s2Step36CounterWork.toFinset s2Step36Counter_bounded s2Step36Counter_apart rfl
theorem s2Step36Counter_checked : compileHmrCounterStepLog s2Step36HeadFvAfter true 792 [772, 773, 774, 775, 776, 777] s2Step36CounterWork=some s2Step36CounterDuring := by
  have owned : ∀q∈792::[772, 773, 774, 775, 776, 777],q∈s2Step36HeadFvAfter.live := fun q hq => s2Step36Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step36Counter_borrowed
def s2Step37CounterWork : List Wire := [790, 791, 844, 845]
theorem s2Step37Counter_bounded : s2Step37CounterWork.toFinset⊆arenaWires := by norm_num [s2Step37CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step37CounterDuring : Arena := ⟨s2Step37HeadFvAfter.live∪s2Step37CounterWork.toFinset,Finset.union_subset s2Step37HeadFvAfter.bounded s2Step37Counter_bounded⟩
theorem s2Step37Counter_apart : Disjoint s2Step37HeadFvAfter.live s2Step37CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step37HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step37HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step37HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Counter_borrowed : s2Step37HeadFvAfter.checkBorrow 4 s2Step37CounterWork=some s2Step37CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step37HeadFvAfter s2Step37CounterDuring s2Step37CounterWork.toFinset s2Step37Counter_bounded s2Step37Counter_apart rfl
theorem s2Step37Counter_checked : compileHmrCounterStepLog s2Step37HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step37CounterWork=some s2Step37CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step37HeadFvAfter.live := fun q hq => s2Step37Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step37Counter_borrowed
def s2Step38CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step38Counter_bounded : s2Step38CounterWork.toFinset⊆arenaWires := by norm_num [s2Step38CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step38CounterDuring : Arena := ⟨s2Step38HeadFvAfter.live∪s2Step38CounterWork.toFinset,Finset.union_subset s2Step38HeadFvAfter.bounded s2Step38Counter_bounded⟩
theorem s2Step38Counter_apart : Disjoint s2Step38HeadFvAfter.live s2Step38CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step38HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Counter_owned : (787::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step38HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step38HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Counter_borrowed : s2Step38HeadFvAfter.checkBorrow 4 s2Step38CounterWork=some s2Step38CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step38HeadFvAfter s2Step38CounterDuring s2Step38CounterWork.toFinset s2Step38Counter_bounded s2Step38Counter_apart rfl
theorem s2Step38Counter_checked : compileHmrCounterStepLog s2Step38HeadFvAfter true 787 [772, 773, 774, 775, 776, 777] s2Step38CounterWork=some s2Step38CounterDuring := by
  have owned : ∀q∈787::[772, 773, 774, 775, 776, 777],q∈s2Step38HeadFvAfter.live := fun q hq => s2Step38Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step38Counter_borrowed
def s2Step39CounterWork : List Wire := [792, 780, 844, 845]
theorem s2Step39Counter_bounded : s2Step39CounterWork.toFinset⊆arenaWires := by norm_num [s2Step39CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step39CounterDuring : Arena := ⟨s2Step39HeadFvAfter.live∪s2Step39CounterWork.toFinset,Finset.union_subset s2Step39HeadFvAfter.bounded s2Step39Counter_bounded⟩
theorem s2Step39Counter_apart : Disjoint s2Step39HeadFvAfter.live s2Step39CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step39HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step39HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step39HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Counter_borrowed : s2Step39HeadFvAfter.checkBorrow 4 s2Step39CounterWork=some s2Step39CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step39HeadFvAfter s2Step39CounterDuring s2Step39CounterWork.toFinset s2Step39Counter_bounded s2Step39Counter_apart rfl
theorem s2Step39Counter_checked : compileHmrCounterStepLog s2Step39HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step39CounterWork=some s2Step39CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step39HeadFvAfter.live := fun q hq => s2Step39Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step39Counter_borrowed
def s2Step40CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step40Counter_bounded : s2Step40CounterWork.toFinset⊆arenaWires := by norm_num [s2Step40CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step40CounterDuring : Arena := ⟨s2Step40HeadFvAfter.live∪s2Step40CounterWork.toFinset,Finset.union_subset s2Step40HeadFvAfter.bounded s2Step40Counter_bounded⟩
theorem s2Step40Counter_apart : Disjoint s2Step40HeadFvAfter.live s2Step40CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step40HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step40HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step40HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Counter_borrowed : s2Step40HeadFvAfter.checkBorrow 4 s2Step40CounterWork=some s2Step40CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step40HeadFvAfter s2Step40CounterDuring s2Step40CounterWork.toFinset s2Step40Counter_bounded s2Step40Counter_apart rfl
theorem s2Step40Counter_checked : compileHmrCounterStepLog s2Step40HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step40CounterWork=some s2Step40CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step40HeadFvAfter.live := fun q hq => s2Step40Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step40Counter_borrowed
def s2Step41CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step41Counter_bounded : s2Step41CounterWork.toFinset⊆arenaWires := by norm_num [s2Step41CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step41CounterDuring : Arena := ⟨s2Step41HeadFvAfter.live∪s2Step41CounterWork.toFinset,Finset.union_subset s2Step41HeadFvAfter.bounded s2Step41Counter_bounded⟩
theorem s2Step41Counter_apart : Disjoint s2Step41HeadFvAfter.live s2Step41CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step41HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step41HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step41HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Counter_borrowed : s2Step41HeadFvAfter.checkBorrow 4 s2Step41CounterWork=some s2Step41CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step41HeadFvAfter s2Step41CounterDuring s2Step41CounterWork.toFinset s2Step41Counter_bounded s2Step41Counter_apart rfl
theorem s2Step41Counter_checked : compileHmrCounterStepLog s2Step41HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step41CounterWork=some s2Step41CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step41HeadFvAfter.live := fun q hq => s2Step41Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step41Counter_borrowed
def s2Step42CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step42Counter_bounded : s2Step42CounterWork.toFinset⊆arenaWires := by norm_num [s2Step42CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step42CounterDuring : Arena := ⟨s2Step42HeadFvAfter.live∪s2Step42CounterWork.toFinset,Finset.union_subset s2Step42HeadFvAfter.bounded s2Step42Counter_bounded⟩
theorem s2Step42Counter_apart : Disjoint s2Step42HeadFvAfter.live s2Step42CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step42HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step42HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step42HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Counter_borrowed : s2Step42HeadFvAfter.checkBorrow 4 s2Step42CounterWork=some s2Step42CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step42HeadFvAfter s2Step42CounterDuring s2Step42CounterWork.toFinset s2Step42Counter_bounded s2Step42Counter_apart rfl
theorem s2Step42Counter_checked : compileHmrCounterStepLog s2Step42HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step42CounterWork=some s2Step42CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step42HeadFvAfter.live := fun q hq => s2Step42Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step42Counter_borrowed
def s2Step43CounterWork : List Wire := [844, 845, 846, 847]
theorem s2Step43Counter_bounded : s2Step43CounterWork.toFinset⊆arenaWires := by norm_num [s2Step43CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step43CounterDuring : Arena := ⟨s2Step43HeadFvAfter.live∪s2Step43CounterWork.toFinset,Finset.union_subset s2Step43HeadFvAfter.bounded s2Step43Counter_bounded⟩
theorem s2Step43Counter_apart : Disjoint s2Step43HeadFvAfter.live s2Step43CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step43HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step43HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step43HeadFvAfter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Counter_borrowed : s2Step43HeadFvAfter.checkBorrow 4 s2Step43CounterWork=some s2Step43CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step43HeadFvAfter s2Step43CounterDuring s2Step43CounterWork.toFinset s2Step43Counter_bounded s2Step43Counter_apart rfl
theorem s2Step43Counter_checked : compileHmrCounterStepLog s2Step43HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step43CounterWork=some s2Step43CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step43HeadFvAfter.live := fun q hq => s2Step43Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step43Counter_borrowed
def s2Step44CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step44Counter_bounded : s2Step44CounterWork.toFinset⊆arenaWires := by norm_num [s2Step44CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step44CounterDuring : Arena := ⟨s2Step44HeadFvAfter.live∪s2Step44CounterWork.toFinset,Finset.union_subset s2Step44HeadFvAfter.bounded s2Step44Counter_bounded⟩
theorem s2Step44Counter_apart : Disjoint s2Step44HeadFvAfter.live s2Step44CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step44HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step44HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step44HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Counter_borrowed : s2Step44HeadFvAfter.checkBorrow 4 s2Step44CounterWork=some s2Step44CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step44HeadFvAfter s2Step44CounterDuring s2Step44CounterWork.toFinset s2Step44Counter_bounded s2Step44Counter_apart rfl
theorem s2Step44Counter_checked : compileHmrCounterStepLog s2Step44HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step44CounterWork=some s2Step44CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step44HeadFvAfter.live := fun q hq => s2Step44Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step44Counter_borrowed
def s2Step45CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step45Counter_bounded : s2Step45CounterWork.toFinset⊆arenaWires := by norm_num [s2Step45CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step45CounterDuring : Arena := ⟨s2Step45HeadFvAfter.live∪s2Step45CounterWork.toFinset,Finset.union_subset s2Step45HeadFvAfter.bounded s2Step45Counter_bounded⟩
theorem s2Step45Counter_apart : Disjoint s2Step45HeadFvAfter.live s2Step45CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step45HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step45HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step45HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Counter_borrowed : s2Step45HeadFvAfter.checkBorrow 4 s2Step45CounterWork=some s2Step45CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step45HeadFvAfter s2Step45CounterDuring s2Step45CounterWork.toFinset s2Step45Counter_bounded s2Step45Counter_apart rfl
theorem s2Step45Counter_checked : compileHmrCounterStepLog s2Step45HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step45CounterWork=some s2Step45CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step45HeadFvAfter.live := fun q hq => s2Step45Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step45Counter_borrowed
def s2Step46CounterWork : List Wire := [792, 800, 844, 845]
theorem s2Step46Counter_bounded : s2Step46CounterWork.toFinset⊆arenaWires := by norm_num [s2Step46CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step46CounterDuring : Arena := ⟨s2Step46HeadFvAfter.live∪s2Step46CounterWork.toFinset,Finset.union_subset s2Step46HeadFvAfter.bounded s2Step46Counter_bounded⟩
theorem s2Step46Counter_apart : Disjoint s2Step46HeadFvAfter.live s2Step46CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step46HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Counter_owned : (798::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step46HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step46HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Counter_borrowed : s2Step46HeadFvAfter.checkBorrow 4 s2Step46CounterWork=some s2Step46CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step46HeadFvAfter s2Step46CounterDuring s2Step46CounterWork.toFinset s2Step46Counter_bounded s2Step46Counter_apart rfl
theorem s2Step46Counter_checked : compileHmrCounterStepLog s2Step46HeadFvAfter true 798 [772, 773, 774, 775, 776, 777] s2Step46CounterWork=some s2Step46CounterDuring := by
  have owned : ∀q∈798::[772, 773, 774, 775, 776, 777],q∈s2Step46HeadFvAfter.live := fun q hq => s2Step46Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step46Counter_borrowed
def s2Step47CounterWork : List Wire := [787, 790, 792, 800]
theorem s2Step47Counter_bounded : s2Step47CounterWork.toFinset⊆arenaWires := by norm_num [s2Step47CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step47CounterDuring : Arena := ⟨s2Step47HeadFvAfter.live∪s2Step47CounterWork.toFinset,Finset.union_subset s2Step47HeadFvAfter.bounded s2Step47Counter_bounded⟩
theorem s2Step47Counter_apart : Disjoint s2Step47HeadFvAfter.live s2Step47CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step47HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Counter_owned : (803::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step47HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step47HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Counter_borrowed : s2Step47HeadFvAfter.checkBorrow 4 s2Step47CounterWork=some s2Step47CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step47HeadFvAfter s2Step47CounterDuring s2Step47CounterWork.toFinset s2Step47Counter_bounded s2Step47Counter_apart rfl
theorem s2Step47Counter_checked : compileHmrCounterStepLog s2Step47HeadFvAfter true 803 [772, 773, 774, 775, 776, 777] s2Step47CounterWork=some s2Step47CounterDuring := by
  have owned : ∀q∈803::[772, 773, 774, 775, 776, 777],q∈s2Step47HeadFvAfter.live := fun q hq => s2Step47Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step47Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
