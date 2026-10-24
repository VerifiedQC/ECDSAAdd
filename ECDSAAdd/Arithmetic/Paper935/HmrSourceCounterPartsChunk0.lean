import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk0

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
def s2Step2CounterWork : List Wire := [790, 791, 792, 793]
theorem s2Step2Counter_bounded : s2Step2CounterWork.toFinset⊆arenaWires := by norm_num [s2Step2CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step2CounterDuring : Arena := ⟨s2Step2HeadFvAfter.live∪s2Step2CounterWork.toFinset,Finset.union_subset s2Step2HeadFvAfter.bounded s2Step2Counter_bounded⟩
theorem s2Step2Counter_apart : Disjoint s2Step2HeadFvAfter.live s2Step2CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step2HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step2HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step2HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Counter_borrowed : s2Step2HeadFvAfter.checkBorrow 4 s2Step2CounterWork=some s2Step2CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step2HeadFvAfter s2Step2CounterDuring s2Step2CounterWork.toFinset s2Step2Counter_bounded s2Step2Counter_apart rfl
theorem s2Step2Counter_checked : compileHmrCounterStepLog s2Step2HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step2CounterWork=some s2Step2CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step2HeadFvAfter.live := fun q hq => s2Step2Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step2Counter_borrowed
def s2Step3CounterWork : List Wire := [792, 793, 794, 796]
theorem s2Step3Counter_bounded : s2Step3CounterWork.toFinset⊆arenaWires := by norm_num [s2Step3CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step3CounterDuring : Arena := ⟨s2Step3HeadFvAfter.live∪s2Step3CounterWork.toFinset,Finset.union_subset s2Step3HeadFvAfter.bounded s2Step3Counter_bounded⟩
theorem s2Step3Counter_apart : Disjoint s2Step3HeadFvAfter.live s2Step3CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step3HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Counter_owned : (788::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step3HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step3HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Counter_borrowed : s2Step3HeadFvAfter.checkBorrow 4 s2Step3CounterWork=some s2Step3CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step3HeadFvAfter s2Step3CounterDuring s2Step3CounterWork.toFinset s2Step3Counter_bounded s2Step3Counter_apart rfl
theorem s2Step3Counter_checked : compileHmrCounterStepLog s2Step3HeadFvAfter true 788 [772, 773, 774, 775, 776, 777] s2Step3CounterWork=some s2Step3CounterDuring := by
  have owned : ∀q∈788::[772, 773, 774, 775, 776, 777],q∈s2Step3HeadFvAfter.live := fun q hq => s2Step3Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step3Counter_borrowed
def s2Step4CounterWork : List Wire := [794, 796, 797, 798]
theorem s2Step4Counter_bounded : s2Step4CounterWork.toFinset⊆arenaWires := by norm_num [s2Step4CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step4CounterDuring : Arena := ⟨s2Step4HeadFvAfter.live∪s2Step4CounterWork.toFinset,Finset.union_subset s2Step4HeadFvAfter.bounded s2Step4Counter_bounded⟩
theorem s2Step4Counter_apart : Disjoint s2Step4HeadFvAfter.live s2Step4CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step4HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4Counter_owned : (790::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step4HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step4HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4Counter_borrowed : s2Step4HeadFvAfter.checkBorrow 4 s2Step4CounterWork=some s2Step4CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step4HeadFvAfter s2Step4CounterDuring s2Step4CounterWork.toFinset s2Step4Counter_bounded s2Step4Counter_apart rfl
theorem s2Step4Counter_checked : compileHmrCounterStepLog s2Step4HeadFvAfter true 790 [772, 773, 774, 775, 776, 777] s2Step4CounterWork=some s2Step4CounterDuring := by
  have owned : ∀q∈790::[772, 773, 774, 775, 776, 777],q∈s2Step4HeadFvAfter.live := fun q hq => s2Step4Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step4Counter_borrowed
def s2Step5CounterWork : List Wire := [797, 798, 799, 800]
theorem s2Step5Counter_bounded : s2Step5CounterWork.toFinset⊆arenaWires := by norm_num [s2Step5CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step5CounterDuring : Arena := ⟨s2Step5HeadFvAfter.live∪s2Step5CounterWork.toFinset,Finset.union_subset s2Step5HeadFvAfter.bounded s2Step5Counter_bounded⟩
theorem s2Step5Counter_apart : Disjoint s2Step5HeadFvAfter.live s2Step5CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step5HeadFvAfter (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5Counter_owned : (792::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step5HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step5HeadFvAfter (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5Counter_borrowed : s2Step5HeadFvAfter.checkBorrow 4 s2Step5CounterWork=some s2Step5CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step5HeadFvAfter s2Step5CounterDuring s2Step5CounterWork.toFinset s2Step5Counter_bounded s2Step5Counter_apart rfl
theorem s2Step5Counter_checked : compileHmrCounterStepLog s2Step5HeadFvAfter true 792 [772, 773, 774, 775, 776, 777] s2Step5CounterWork=some s2Step5CounterDuring := by
  have owned : ∀q∈792::[772, 773, 774, 775, 776, 777],q∈s2Step5HeadFvAfter.live := fun q hq => s2Step5Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step5Counter_borrowed
def s2Step6CounterWork : List Wire := [799, 800, 801, 802]
theorem s2Step6Counter_bounded : s2Step6CounterWork.toFinset⊆arenaWires := by norm_num [s2Step6CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step6CounterDuring : Arena := ⟨s2Step6HeadFvAfter.live∪s2Step6CounterWork.toFinset,Finset.union_subset s2Step6HeadFvAfter.bounded s2Step6Counter_bounded⟩
theorem s2Step6Counter_apart : Disjoint s2Step6HeadFvAfter.live s2Step6CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step6HeadFvAfter (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step6HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step6HeadFvAfter (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6Counter_borrowed : s2Step6HeadFvAfter.checkBorrow 4 s2Step6CounterWork=some s2Step6CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step6HeadFvAfter s2Step6CounterDuring s2Step6CounterWork.toFinset s2Step6Counter_bounded s2Step6Counter_apart rfl
theorem s2Step6Counter_checked : compileHmrCounterStepLog s2Step6HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step6CounterWork=some s2Step6CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step6HeadFvAfter.live := fun q hq => s2Step6Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step6Counter_borrowed
def s2Step7CounterWork : List Wire := [801, 802, 803, 804]
theorem s2Step7Counter_bounded : s2Step7CounterWork.toFinset⊆arenaWires := by norm_num [s2Step7CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step7CounterDuring : Arena := ⟨s2Step7HeadFvAfter.live∪s2Step7CounterWork.toFinset,Finset.union_subset s2Step7HeadFvAfter.bounded s2Step7Counter_bounded⟩
theorem s2Step7Counter_apart : Disjoint s2Step7HeadFvAfter.live s2Step7CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step7HeadFvAfter (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step7HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step7HeadFvAfter (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7Counter_borrowed : s2Step7HeadFvAfter.checkBorrow 4 s2Step7CounterWork=some s2Step7CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step7HeadFvAfter s2Step7CounterDuring s2Step7CounterWork.toFinset s2Step7Counter_bounded s2Step7Counter_apart rfl
theorem s2Step7Counter_checked : compileHmrCounterStepLog s2Step7HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step7CounterWork=some s2Step7CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step7HeadFvAfter.live := fun q hq => s2Step7Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step7Counter_borrowed
def s2Step8CounterWork : List Wire := [803, 804, 805, 806]
theorem s2Step8Counter_bounded : s2Step8CounterWork.toFinset⊆arenaWires := by norm_num [s2Step8CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step8CounterDuring : Arena := ⟨s2Step8HeadFvAfter.live∪s2Step8CounterWork.toFinset,Finset.union_subset s2Step8HeadFvAfter.bounded s2Step8Counter_bounded⟩
theorem s2Step8Counter_apart : Disjoint s2Step8HeadFvAfter.live s2Step8CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step8HeadFvAfter (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step8HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step8HeadFvAfter (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8Counter_borrowed : s2Step8HeadFvAfter.checkBorrow 4 s2Step8CounterWork=some s2Step8CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step8HeadFvAfter s2Step8CounterDuring s2Step8CounterWork.toFinset s2Step8Counter_bounded s2Step8Counter_apart rfl
theorem s2Step8Counter_checked : compileHmrCounterStepLog s2Step8HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step8CounterWork=some s2Step8CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step8HeadFvAfter.live := fun q hq => s2Step8Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step8Counter_borrowed
def s2Step9CounterWork : List Wire := [805, 806, 807, 808]
theorem s2Step9Counter_bounded : s2Step9CounterWork.toFinset⊆arenaWires := by norm_num [s2Step9CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step9CounterDuring : Arena := ⟨s2Step9HeadFvAfter.live∪s2Step9CounterWork.toFinset,Finset.union_subset s2Step9HeadFvAfter.bounded s2Step9Counter_bounded⟩
theorem s2Step9Counter_apart : Disjoint s2Step9HeadFvAfter.live s2Step9CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step9HeadFvAfter (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9Counter_owned : (801::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step9HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step9HeadFvAfter (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9Counter_borrowed : s2Step9HeadFvAfter.checkBorrow 4 s2Step9CounterWork=some s2Step9CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step9HeadFvAfter s2Step9CounterDuring s2Step9CounterWork.toFinset s2Step9Counter_bounded s2Step9Counter_apart rfl
theorem s2Step9Counter_checked : compileHmrCounterStepLog s2Step9HeadFvAfter true 801 [772, 773, 774, 775, 776, 777] s2Step9CounterWork=some s2Step9CounterDuring := by
  have owned : ∀q∈801::[772, 773, 774, 775, 776, 777],q∈s2Step9HeadFvAfter.live := fun q hq => s2Step9Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step9Counter_borrowed
def s2Step10CounterWork : List Wire := [807, 808, 809, 810]
theorem s2Step10Counter_bounded : s2Step10CounterWork.toFinset⊆arenaWires := by norm_num [s2Step10CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step10CounterDuring : Arena := ⟨s2Step10HeadFvAfter.live∪s2Step10CounterWork.toFinset,Finset.union_subset s2Step10HeadFvAfter.bounded s2Step10Counter_bounded⟩
theorem s2Step10Counter_apart : Disjoint s2Step10HeadFvAfter.live s2Step10CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step10HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Counter_owned : (803::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step10HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step10HeadFvAfter (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Counter_borrowed : s2Step10HeadFvAfter.checkBorrow 4 s2Step10CounterWork=some s2Step10CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step10HeadFvAfter s2Step10CounterDuring s2Step10CounterWork.toFinset s2Step10Counter_bounded s2Step10Counter_apart rfl
theorem s2Step10Counter_checked : compileHmrCounterStepLog s2Step10HeadFvAfter true 803 [772, 773, 774, 775, 776, 777] s2Step10CounterWork=some s2Step10CounterDuring := by
  have owned : ∀q∈803::[772, 773, 774, 775, 776, 777],q∈s2Step10HeadFvAfter.live := fun q hq => s2Step10Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step10Counter_borrowed
def s2Step11CounterWork : List Wire := [809, 810, 811, 812]
theorem s2Step11Counter_bounded : s2Step11CounterWork.toFinset⊆arenaWires := by norm_num [s2Step11CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step11CounterDuring : Arena := ⟨s2Step11HeadFvAfter.live∪s2Step11CounterWork.toFinset,Finset.union_subset s2Step11HeadFvAfter.bounded s2Step11Counter_bounded⟩
theorem s2Step11Counter_apart : Disjoint s2Step11HeadFvAfter.live s2Step11CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step11HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step11HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step11HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Counter_borrowed : s2Step11HeadFvAfter.checkBorrow 4 s2Step11CounterWork=some s2Step11CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step11HeadFvAfter s2Step11CounterDuring s2Step11CounterWork.toFinset s2Step11Counter_bounded s2Step11Counter_apart rfl
theorem s2Step11Counter_checked : compileHmrCounterStepLog s2Step11HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step11CounterWork=some s2Step11CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step11HeadFvAfter.live := fun q hq => s2Step11Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step11Counter_borrowed
def s2Step12CounterWork : List Wire := [811, 812, 814, 815]
theorem s2Step12Counter_bounded : s2Step12CounterWork.toFinset⊆arenaWires := by norm_num [s2Step12CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step12CounterDuring : Arena := ⟨s2Step12HeadFvAfter.live∪s2Step12CounterWork.toFinset,Finset.union_subset s2Step12HeadFvAfter.bounded s2Step12Counter_bounded⟩
theorem s2Step12Counter_apart : Disjoint s2Step12HeadFvAfter.live s2Step12CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step12HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Counter_owned : (807::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step12HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step12HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Counter_borrowed : s2Step12HeadFvAfter.checkBorrow 4 s2Step12CounterWork=some s2Step12CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step12HeadFvAfter s2Step12CounterDuring s2Step12CounterWork.toFinset s2Step12Counter_bounded s2Step12Counter_apart rfl
theorem s2Step12Counter_checked : compileHmrCounterStepLog s2Step12HeadFvAfter true 807 [772, 773, 774, 775, 776, 777] s2Step12CounterWork=some s2Step12CounterDuring := by
  have owned : ∀q∈807::[772, 773, 774, 775, 776, 777],q∈s2Step12HeadFvAfter.live := fun q hq => s2Step12Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step12Counter_borrowed
def s2Step13CounterWork : List Wire := [814, 815, 816, 817]
theorem s2Step13Counter_bounded : s2Step13CounterWork.toFinset⊆arenaWires := by norm_num [s2Step13CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step13CounterDuring : Arena := ⟨s2Step13HeadFvAfter.live∪s2Step13CounterWork.toFinset,Finset.union_subset s2Step13HeadFvAfter.bounded s2Step13Counter_bounded⟩
theorem s2Step13Counter_apart : Disjoint s2Step13HeadFvAfter.live s2Step13CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step13HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step13HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step13HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Counter_borrowed : s2Step13HeadFvAfter.checkBorrow 4 s2Step13CounterWork=some s2Step13CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step13HeadFvAfter s2Step13CounterDuring s2Step13CounterWork.toFinset s2Step13Counter_bounded s2Step13Counter_apart rfl
theorem s2Step13Counter_checked : compileHmrCounterStepLog s2Step13HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step13CounterWork=some s2Step13CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step13HeadFvAfter.live := fun q hq => s2Step13Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step13Counter_borrowed
def s2Step14CounterWork : List Wire := [816, 817, 819, 820]
theorem s2Step14Counter_bounded : s2Step14CounterWork.toFinset⊆arenaWires := by norm_num [s2Step14CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step14CounterDuring : Arena := ⟨s2Step14HeadFvAfter.live∪s2Step14CounterWork.toFinset,Finset.union_subset s2Step14HeadFvAfter.bounded s2Step14Counter_bounded⟩
theorem s2Step14Counter_apart : Disjoint s2Step14HeadFvAfter.live s2Step14CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step14HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step14HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step14HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Counter_borrowed : s2Step14HeadFvAfter.checkBorrow 4 s2Step14CounterWork=some s2Step14CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step14HeadFvAfter s2Step14CounterDuring s2Step14CounterWork.toFinset s2Step14Counter_bounded s2Step14Counter_apart rfl
theorem s2Step14Counter_checked : compileHmrCounterStepLog s2Step14HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step14CounterWork=some s2Step14CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step14HeadFvAfter.live := fun q hq => s2Step14Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step14Counter_borrowed
def s2Step15CounterWork : List Wire := [819, 820, 821, 822]
theorem s2Step15Counter_bounded : s2Step15CounterWork.toFinset⊆arenaWires := by norm_num [s2Step15CounterWork,arenaWires,Finset.insert_subset_iff]
def s2Step15CounterDuring : Arena := ⟨s2Step15HeadFvAfter.live∪s2Step15CounterWork.toFinset,Finset.union_subset s2Step15HeadFvAfter.bounded s2Step15Counter_bounded⟩
theorem s2Step15Counter_apart : Disjoint s2Step15HeadFvAfter.live s2Step15CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step15HeadFvAfter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step15HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step15HeadFvAfter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Counter_borrowed : s2Step15HeadFvAfter.checkBorrow 4 s2Step15CounterWork=some s2Step15CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step15HeadFvAfter s2Step15CounterDuring s2Step15CounterWork.toFinset s2Step15Counter_bounded s2Step15Counter_apart rfl
theorem s2Step15Counter_checked : compileHmrCounterStepLog s2Step15HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step15CounterWork=some s2Step15CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step15HeadFvAfter.live := fun q hq => s2Step15Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step15Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
