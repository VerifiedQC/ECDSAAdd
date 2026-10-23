import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
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
