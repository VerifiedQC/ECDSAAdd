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
def s6Step2CounterWork : List Wire := [875, 779, 868, 857]
theorem s6Step2Counter_bounded : s6Step2CounterWork.toFinset⊆arenaWires := by norm_num [s6Step2CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step2CounterDuring : Arena := ⟨s6Step2HeadFvAfter.live∪s6Step2CounterWork.toFinset,Finset.union_subset s6Step2HeadFvAfter.bounded s6Step2Counter_bounded⟩
theorem s6Step2Counter_apart : Disjoint s6Step2HeadFvAfter.live s6Step2CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step2HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step2Counter_owned : (874::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step2HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step2HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step2Counter_borrowed : s6Step2HeadFvAfter.checkBorrow 4 s6Step2CounterWork=some s6Step2CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step2HeadFvAfter s6Step2CounterDuring s6Step2CounterWork.toFinset s6Step2Counter_bounded s6Step2Counter_apart rfl
theorem s6Step2Counter_checked : compileHmrCounterStepLog s6Step2HeadFvAfter true 874 [774, 773, 772, 771, 770, 769] s6Step2CounterWork=some s6Step2CounterDuring := by
  have owned : ∀q∈874::[774, 773, 772, 771, 770, 769],q∈s6Step2HeadFvAfter.live := fun q hq => s6Step2Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step2Counter_borrowed
def s6Step3CounterWork : List Wire := [868, 857, 907, 858]
theorem s6Step3Counter_bounded : s6Step3CounterWork.toFinset⊆arenaWires := by norm_num [s6Step3CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step3CounterDuring : Arena := ⟨s6Step3HeadFvAfter.live∪s6Step3CounterWork.toFinset,Finset.union_subset s6Step3HeadFvAfter.bounded s6Step3Counter_bounded⟩
theorem s6Step3Counter_apart : Disjoint s6Step3HeadFvAfter.live s6Step3CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step3HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step3Counter_owned : (927::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step3HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step3HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step3Counter_borrowed : s6Step3HeadFvAfter.checkBorrow 4 s6Step3CounterWork=some s6Step3CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step3HeadFvAfter s6Step3CounterDuring s6Step3CounterWork.toFinset s6Step3Counter_bounded s6Step3Counter_apart rfl
theorem s6Step3Counter_checked : compileHmrCounterStepLog s6Step3HeadFvAfter true 927 [774, 773, 772, 771, 770, 769] s6Step3CounterWork=some s6Step3CounterDuring := by
  have owned : ∀q∈927::[774, 773, 772, 771, 770, 769],q∈s6Step3HeadFvAfter.live := fun q hq => s6Step3Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step3Counter_borrowed
def s6Step4CounterWork : List Wire := [907, 858, 908, 845]
theorem s6Step4Counter_bounded : s6Step4CounterWork.toFinset⊆arenaWires := by norm_num [s6Step4CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step4CounterDuring : Arena := ⟨s6Step4HeadFvAfter.live∪s6Step4CounterWork.toFinset,Finset.union_subset s6Step4HeadFvAfter.bounded s6Step4Counter_bounded⟩
theorem s6Step4Counter_apart : Disjoint s6Step4HeadFvAfter.live s6Step4CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step4HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4Counter_owned : (875::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step4HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step4HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4Counter_borrowed : s6Step4HeadFvAfter.checkBorrow 4 s6Step4CounterWork=some s6Step4CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step4HeadFvAfter s6Step4CounterDuring s6Step4CounterWork.toFinset s6Step4Counter_bounded s6Step4Counter_apart rfl
theorem s6Step4Counter_checked : compileHmrCounterStepLog s6Step4HeadFvAfter true 875 [774, 773, 772, 771, 770, 769] s6Step4CounterWork=some s6Step4CounterDuring := by
  have owned : ∀q∈875::[774, 773, 772, 771, 770, 769],q∈s6Step4HeadFvAfter.live := fun q hq => s6Step4Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step4Counter_borrowed
def s6Step5CounterWork : List Wire := [908, 845, 890, 805]
theorem s6Step5Counter_bounded : s6Step5CounterWork.toFinset⊆arenaWires := by norm_num [s6Step5CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step5CounterDuring : Arena := ⟨s6Step5HeadFvAfter.live∪s6Step5CounterWork.toFinset,Finset.union_subset s6Step5HeadFvAfter.bounded s6Step5Counter_bounded⟩
theorem s6Step5Counter_apart : Disjoint s6Step5HeadFvAfter.live s6Step5CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step5HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5Counter_owned : (868::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step5HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step5HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5Counter_borrowed : s6Step5HeadFvAfter.checkBorrow 4 s6Step5CounterWork=some s6Step5CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step5HeadFvAfter s6Step5CounterDuring s6Step5CounterWork.toFinset s6Step5Counter_bounded s6Step5Counter_apart rfl
theorem s6Step5Counter_checked : compileHmrCounterStepLog s6Step5HeadFvAfter true 868 [774, 773, 772, 771, 770, 769] s6Step5CounterWork=some s6Step5CounterDuring := by
  have owned : ∀q∈868::[774, 773, 772, 771, 770, 769],q∈s6Step5HeadFvAfter.live := fun q hq => s6Step5Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step5Counter_borrowed
def s6Step6CounterWork : List Wire := [890, 805, 873, 796]
theorem s6Step6Counter_bounded : s6Step6CounterWork.toFinset⊆arenaWires := by norm_num [s6Step6CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step6CounterDuring : Arena := ⟨s6Step6HeadFvAfter.live∪s6Step6CounterWork.toFinset,Finset.union_subset s6Step6HeadFvAfter.bounded s6Step6Counter_bounded⟩
theorem s6Step6Counter_apart : Disjoint s6Step6HeadFvAfter.live s6Step6CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step6HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6Counter_owned : (907::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step6HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step6HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6Counter_borrowed : s6Step6HeadFvAfter.checkBorrow 4 s6Step6CounterWork=some s6Step6CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step6HeadFvAfter s6Step6CounterDuring s6Step6CounterWork.toFinset s6Step6Counter_bounded s6Step6Counter_apart rfl
theorem s6Step6Counter_checked : compileHmrCounterStepLog s6Step6HeadFvAfter true 907 [774, 773, 772, 771, 770, 769] s6Step6CounterWork=some s6Step6CounterDuring := by
  have owned : ∀q∈907::[774, 773, 772, 771, 770, 769],q∈s6Step6HeadFvAfter.live := fun q hq => s6Step6Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step6Counter_borrowed
def s6Step7CounterWork : List Wire := [873, 796, 863, 856]
theorem s6Step7Counter_bounded : s6Step7CounterWork.toFinset⊆arenaWires := by norm_num [s6Step7CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step7CounterDuring : Arena := ⟨s6Step7HeadFvAfter.live∪s6Step7CounterWork.toFinset,Finset.union_subset s6Step7HeadFvAfter.bounded s6Step7Counter_bounded⟩
theorem s6Step7Counter_apart : Disjoint s6Step7HeadFvAfter.live s6Step7CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step7HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7Counter_owned : (908::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step7HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step7HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7Counter_borrowed : s6Step7HeadFvAfter.checkBorrow 4 s6Step7CounterWork=some s6Step7CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step7HeadFvAfter s6Step7CounterDuring s6Step7CounterWork.toFinset s6Step7Counter_bounded s6Step7Counter_apart rfl
theorem s6Step7Counter_checked : compileHmrCounterStepLog s6Step7HeadFvAfter true 908 [774, 773, 772, 771, 770, 769] s6Step7CounterWork=some s6Step7CounterDuring := by
  have owned : ∀q∈908::[774, 773, 772, 771, 770, 769],q∈s6Step7HeadFvAfter.live := fun q hq => s6Step7Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step7Counter_borrowed
def s6Step8CounterWork : List Wire := [863, 856, 823, 865]
theorem s6Step8Counter_bounded : s6Step8CounterWork.toFinset⊆arenaWires := by norm_num [s6Step8CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step8CounterDuring : Arena := ⟨s6Step8HeadFvAfter.live∪s6Step8CounterWork.toFinset,Finset.union_subset s6Step8HeadFvAfter.bounded s6Step8Counter_bounded⟩
theorem s6Step8Counter_apart : Disjoint s6Step8HeadFvAfter.live s6Step8CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step8HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8Counter_owned : (890::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step8HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step8HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8Counter_borrowed : s6Step8HeadFvAfter.checkBorrow 4 s6Step8CounterWork=some s6Step8CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step8HeadFvAfter s6Step8CounterDuring s6Step8CounterWork.toFinset s6Step8Counter_bounded s6Step8Counter_apart rfl
theorem s6Step8Counter_checked : compileHmrCounterStepLog s6Step8HeadFvAfter true 890 [774, 773, 772, 771, 770, 769] s6Step8CounterWork=some s6Step8CounterDuring := by
  have owned : ∀q∈890::[774, 773, 772, 771, 770, 769],q∈s6Step8HeadFvAfter.live := fun q hq => s6Step8Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step8Counter_borrowed
def s6Step9CounterWork : List Wire := [823, 865, 880, 789]
theorem s6Step9Counter_bounded : s6Step9CounterWork.toFinset⊆arenaWires := by norm_num [s6Step9CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step9CounterDuring : Arena := ⟨s6Step9HeadFvAfter.live∪s6Step9CounterWork.toFinset,Finset.union_subset s6Step9HeadFvAfter.bounded s6Step9Counter_bounded⟩
theorem s6Step9Counter_apart : Disjoint s6Step9HeadFvAfter.live s6Step9CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step9HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9Counter_owned : (873::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step9HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step9HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9Counter_borrowed : s6Step9HeadFvAfter.checkBorrow 4 s6Step9CounterWork=some s6Step9CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step9HeadFvAfter s6Step9CounterDuring s6Step9CounterWork.toFinset s6Step9Counter_bounded s6Step9Counter_apart rfl
theorem s6Step9Counter_checked : compileHmrCounterStepLog s6Step9HeadFvAfter true 873 [774, 773, 772, 771, 770, 769] s6Step9CounterWork=some s6Step9CounterDuring := by
  have owned : ∀q∈873::[774, 773, 772, 771, 770, 769],q∈s6Step9HeadFvAfter.live := fun q hq => s6Step9Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step9Counter_borrowed
def s6Step10CounterWork : List Wire := [880, 789, 864, 818]
theorem s6Step10Counter_bounded : s6Step10CounterWork.toFinset⊆arenaWires := by norm_num [s6Step10CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step10CounterDuring : Arena := ⟨s6Step10HeadFvAfter.live∪s6Step10CounterWork.toFinset,Finset.union_subset s6Step10HeadFvAfter.bounded s6Step10Counter_bounded⟩
theorem s6Step10Counter_apart : Disjoint s6Step10HeadFvAfter.live s6Step10CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step10HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10Counter_owned : (863::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step10HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step10HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10Counter_borrowed : s6Step10HeadFvAfter.checkBorrow 4 s6Step10CounterWork=some s6Step10CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step10HeadFvAfter s6Step10CounterDuring s6Step10CounterWork.toFinset s6Step10Counter_bounded s6Step10Counter_apart rfl
theorem s6Step10Counter_checked : compileHmrCounterStepLog s6Step10HeadFvAfter true 863 [774, 773, 772, 771, 770, 769] s6Step10CounterWork=some s6Step10CounterDuring := by
  have owned : ∀q∈863::[774, 773, 772, 771, 770, 769],q∈s6Step10HeadFvAfter.live := fun q hq => s6Step10Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step10Counter_borrowed
def s6Step11CounterWork : List Wire := [864, 818, 828, 892]
theorem s6Step11Counter_bounded : s6Step11CounterWork.toFinset⊆arenaWires := by norm_num [s6Step11CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step11CounterDuring : Arena := ⟨s6Step11HeadFvAfter.live∪s6Step11CounterWork.toFinset,Finset.union_subset s6Step11HeadFvAfter.bounded s6Step11Counter_bounded⟩
theorem s6Step11Counter_apart : Disjoint s6Step11HeadFvAfter.live s6Step11CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step11HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11Counter_owned : (823::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step11HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step11HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11Counter_borrowed : s6Step11HeadFvAfter.checkBorrow 4 s6Step11CounterWork=some s6Step11CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step11HeadFvAfter s6Step11CounterDuring s6Step11CounterWork.toFinset s6Step11Counter_bounded s6Step11Counter_apart rfl
theorem s6Step11Counter_checked : compileHmrCounterStepLog s6Step11HeadFvAfter true 823 [774, 773, 772, 771, 770, 769] s6Step11CounterWork=some s6Step11CounterDuring := by
  have owned : ∀q∈823::[774, 773, 772, 771, 770, 769],q∈s6Step11HeadFvAfter.live := fun q hq => s6Step11Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step11Counter_borrowed
def s6Step12CounterWork : List Wire := [828, 892, 822, 882]
theorem s6Step12Counter_bounded : s6Step12CounterWork.toFinset⊆arenaWires := by norm_num [s6Step12CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step12CounterDuring : Arena := ⟨s6Step12HeadFvAfter.live∪s6Step12CounterWork.toFinset,Finset.union_subset s6Step12HeadFvAfter.bounded s6Step12Counter_bounded⟩
theorem s6Step12Counter_apart : Disjoint s6Step12HeadFvAfter.live s6Step12CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step12HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12Counter_owned : (880::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step12HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step12HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12Counter_borrowed : s6Step12HeadFvAfter.checkBorrow 4 s6Step12CounterWork=some s6Step12CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step12HeadFvAfter s6Step12CounterDuring s6Step12CounterWork.toFinset s6Step12Counter_bounded s6Step12Counter_apart rfl
theorem s6Step12Counter_checked : compileHmrCounterStepLog s6Step12HeadFvAfter true 880 [774, 773, 772, 771, 770, 769] s6Step12CounterWork=some s6Step12CounterDuring := by
  have owned : ∀q∈880::[774, 773, 772, 771, 770, 769],q∈s6Step12HeadFvAfter.live := fun q hq => s6Step12Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step12Counter_borrowed
def s6Step13CounterWork : List Wire := [822, 882, 780, 833]
theorem s6Step13Counter_bounded : s6Step13CounterWork.toFinset⊆arenaWires := by norm_num [s6Step13CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step13CounterDuring : Arena := ⟨s6Step13HeadFvAfter.live∪s6Step13CounterWork.toFinset,Finset.union_subset s6Step13HeadFvAfter.bounded s6Step13Counter_bounded⟩
theorem s6Step13Counter_apart : Disjoint s6Step13HeadFvAfter.live s6Step13CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step13HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13Counter_owned : (864::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step13HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step13HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13Counter_borrowed : s6Step13HeadFvAfter.checkBorrow 4 s6Step13CounterWork=some s6Step13CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step13HeadFvAfter s6Step13CounterDuring s6Step13CounterWork.toFinset s6Step13Counter_bounded s6Step13Counter_apart rfl
theorem s6Step13Counter_checked : compileHmrCounterStepLog s6Step13HeadFvAfter true 864 [774, 773, 772, 771, 770, 769] s6Step13CounterWork=some s6Step13CounterDuring := by
  have owned : ∀q∈864::[774, 773, 772, 771, 770, 769],q∈s6Step13HeadFvAfter.live := fun q hq => s6Step13Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step13Counter_borrowed
def s6Step14CounterWork : List Wire := [780, 833, 888, 886]
theorem s6Step14Counter_bounded : s6Step14CounterWork.toFinset⊆arenaWires := by norm_num [s6Step14CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step14CounterDuring : Arena := ⟨s6Step14HeadFvAfter.live∪s6Step14CounterWork.toFinset,Finset.union_subset s6Step14HeadFvAfter.bounded s6Step14Counter_bounded⟩
theorem s6Step14Counter_apart : Disjoint s6Step14HeadFvAfter.live s6Step14CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step14HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14Counter_owned : (828::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step14HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step14HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14Counter_borrowed : s6Step14HeadFvAfter.checkBorrow 4 s6Step14CounterWork=some s6Step14CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step14HeadFvAfter s6Step14CounterDuring s6Step14CounterWork.toFinset s6Step14Counter_bounded s6Step14Counter_apart rfl
theorem s6Step14Counter_checked : compileHmrCounterStepLog s6Step14HeadFvAfter true 828 [774, 773, 772, 771, 770, 769] s6Step14CounterWork=some s6Step14CounterDuring := by
  have owned : ∀q∈828::[774, 773, 772, 771, 770, 769],q∈s6Step14HeadFvAfter.live := fun q hq => s6Step14Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step14Counter_borrowed
def s6Step15CounterWork : List Wire := [888, 886, 778, 838]
theorem s6Step15Counter_bounded : s6Step15CounterWork.toFinset⊆arenaWires := by norm_num [s6Step15CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step15CounterDuring : Arena := ⟨s6Step15HeadFvAfter.live∪s6Step15CounterWork.toFinset,Finset.union_subset s6Step15HeadFvAfter.bounded s6Step15Counter_bounded⟩
theorem s6Step15Counter_apart : Disjoint s6Step15HeadFvAfter.live s6Step15CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step15HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Counter_owned : (822::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step15HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step15HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Counter_borrowed : s6Step15HeadFvAfter.checkBorrow 4 s6Step15CounterWork=some s6Step15CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step15HeadFvAfter s6Step15CounterDuring s6Step15CounterWork.toFinset s6Step15Counter_bounded s6Step15Counter_apart rfl
theorem s6Step15Counter_checked : compileHmrCounterStepLog s6Step15HeadFvAfter true 822 [774, 773, 772, 771, 770, 769] s6Step15CounterWork=some s6Step15CounterDuring := by
  have owned : ∀q∈822::[774, 773, 772, 771, 770, 769],q∈s6Step15HeadFvAfter.live := fun q hq => s6Step15Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step15Counter_borrowed
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
