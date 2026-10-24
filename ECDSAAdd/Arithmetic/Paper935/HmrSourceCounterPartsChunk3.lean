import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk2

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
def s6Step16CounterWork : List Wire := [778, 838, 814, 821]
theorem s6Step16Counter_bounded : s6Step16CounterWork.toFinset⊆arenaWires := by norm_num [s6Step16CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step16CounterDuring : Arena := ⟨s6Step16HeadFvAfter.live∪s6Step16CounterWork.toFinset,Finset.union_subset s6Step16HeadFvAfter.bounded s6Step16Counter_bounded⟩
theorem s6Step16Counter_apart : Disjoint s6Step16HeadFvAfter.live s6Step16CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step16HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Counter_owned : (780::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step16HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step16HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Counter_borrowed : s6Step16HeadFvAfter.checkBorrow 4 s6Step16CounterWork=some s6Step16CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step16HeadFvAfter s6Step16CounterDuring s6Step16CounterWork.toFinset s6Step16Counter_bounded s6Step16Counter_apart rfl
theorem s6Step16Counter_checked : compileHmrCounterStepLog s6Step16HeadFvAfter true 780 [774, 773, 772, 771, 770, 769] s6Step16CounterWork=some s6Step16CounterDuring := by
  have owned : ∀q∈780::[774, 773, 772, 771, 770, 769],q∈s6Step16HeadFvAfter.live := fun q hq => s6Step16Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step16Counter_borrowed
def s6Step17CounterWork : List Wire := [814, 821, 869, 843]
theorem s6Step17Counter_bounded : s6Step17CounterWork.toFinset⊆arenaWires := by norm_num [s6Step17CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step17CounterDuring : Arena := ⟨s6Step17HeadFvAfter.live∪s6Step17CounterWork.toFinset,Finset.union_subset s6Step17HeadFvAfter.bounded s6Step17Counter_bounded⟩
theorem s6Step17Counter_apart : Disjoint s6Step17HeadFvAfter.live s6Step17CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step17HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step17HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step17HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Counter_borrowed : s6Step17HeadFvAfter.checkBorrow 4 s6Step17CounterWork=some s6Step17CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step17HeadFvAfter s6Step17CounterDuring s6Step17CounterWork.toFinset s6Step17Counter_bounded s6Step17Counter_apart rfl
theorem s6Step17Counter_checked : compileHmrCounterStepLog s6Step17HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step17CounterWork=some s6Step17CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step17HeadFvAfter.live := fun q hq => s6Step17Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step17Counter_borrowed
def s6Step18CounterWork : List Wire := [869, 843, 854, 830]
theorem s6Step18Counter_bounded : s6Step18CounterWork.toFinset⊆arenaWires := by norm_num [s6Step18CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step18CounterDuring : Arena := ⟨s6Step18HeadFvAfter.live∪s6Step18CounterWork.toFinset,Finset.union_subset s6Step18HeadFvAfter.bounded s6Step18Counter_bounded⟩
theorem s6Step18Counter_apart : Disjoint s6Step18HeadFvAfter.live s6Step18CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step18HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Counter_owned : (778::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step18HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step18HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Counter_borrowed : s6Step18HeadFvAfter.checkBorrow 4 s6Step18CounterWork=some s6Step18CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step18HeadFvAfter s6Step18CounterDuring s6Step18CounterWork.toFinset s6Step18Counter_bounded s6Step18Counter_apart rfl
theorem s6Step18Counter_checked : compileHmrCounterStepLog s6Step18HeadFvAfter true 778 [774, 773, 772, 771, 770, 769] s6Step18CounterWork=some s6Step18CounterDuring := by
  have owned : ∀q∈778::[774, 773, 772, 771, 770, 769],q∈s6Step18HeadFvAfter.live := fun q hq => s6Step18Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step18Counter_borrowed
def s6Step19CounterWork : List Wire := [854, 830, 898, 848]
theorem s6Step19Counter_bounded : s6Step19CounterWork.toFinset⊆arenaWires := by norm_num [s6Step19CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step19CounterDuring : Arena := ⟨s6Step19HeadFvAfter.live∪s6Step19CounterWork.toFinset,Finset.union_subset s6Step19HeadFvAfter.bounded s6Step19Counter_bounded⟩
theorem s6Step19Counter_apart : Disjoint s6Step19HeadFvAfter.live s6Step19CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step19HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19Counter_owned : (814::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step19HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step19HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19Counter_borrowed : s6Step19HeadFvAfter.checkBorrow 4 s6Step19CounterWork=some s6Step19CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step19HeadFvAfter s6Step19CounterDuring s6Step19CounterWork.toFinset s6Step19Counter_bounded s6Step19Counter_apart rfl
theorem s6Step19Counter_checked : compileHmrCounterStepLog s6Step19HeadFvAfter true 814 [774, 773, 772, 771, 770, 769] s6Step19CounterWork=some s6Step19CounterDuring := by
  have owned : ∀q∈814::[774, 773, 772, 771, 770, 769],q∈s6Step19HeadFvAfter.live := fun q hq => s6Step19Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step19Counter_borrowed
def s6Step20CounterWork : List Wire := [898, 848, 841, 839]
theorem s6Step20Counter_bounded : s6Step20CounterWork.toFinset⊆arenaWires := by norm_num [s6Step20CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step20CounterDuring : Arena := ⟨s6Step20HeadFvAfter.live∪s6Step20CounterWork.toFinset,Finset.union_subset s6Step20HeadFvAfter.bounded s6Step20Counter_bounded⟩
theorem s6Step20Counter_apart : Disjoint s6Step20HeadFvAfter.live s6Step20CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step20HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20Counter_owned : (869::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step20HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step20HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20Counter_borrowed : s6Step20HeadFvAfter.checkBorrow 4 s6Step20CounterWork=some s6Step20CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step20HeadFvAfter s6Step20CounterDuring s6Step20CounterWork.toFinset s6Step20Counter_bounded s6Step20Counter_apart rfl
theorem s6Step20Counter_checked : compileHmrCounterStepLog s6Step20HeadFvAfter true 869 [774, 773, 772, 771, 770, 769] s6Step20CounterWork=some s6Step20CounterDuring := by
  have owned : ∀q∈869::[774, 773, 772, 771, 770, 769],q∈s6Step20HeadFvAfter.live := fun q hq => s6Step20Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step20Counter_borrowed
def s6Step21CounterWork : List Wire := [841, 839, 794, 850]
theorem s6Step21Counter_bounded : s6Step21CounterWork.toFinset⊆arenaWires := by norm_num [s6Step21CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step21CounterDuring : Arena := ⟨s6Step21HeadFvAfter.live∪s6Step21CounterWork.toFinset,Finset.union_subset s6Step21HeadFvAfter.bounded s6Step21Counter_bounded⟩
theorem s6Step21Counter_apart : Disjoint s6Step21HeadFvAfter.live s6Step21CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step21HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Counter_owned : (854::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step21HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step21HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Counter_borrowed : s6Step21HeadFvAfter.checkBorrow 4 s6Step21CounterWork=some s6Step21CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step21HeadFvAfter s6Step21CounterDuring s6Step21CounterWork.toFinset s6Step21Counter_bounded s6Step21Counter_apart rfl
theorem s6Step21Counter_checked : compileHmrCounterStepLog s6Step21HeadFvAfter true 854 [774, 773, 772, 771, 770, 769] s6Step21CounterWork=some s6Step21CounterDuring := by
  have owned : ∀q∈854::[774, 773, 772, 771, 770, 769],q∈s6Step21HeadFvAfter.live := fun q hq => s6Step21Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step21Counter_borrowed
def s6Step22CounterWork : List Wire := [794, 850, 881, 853]
theorem s6Step22Counter_bounded : s6Step22CounterWork.toFinset⊆arenaWires := by norm_num [s6Step22CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step22CounterDuring : Arena := ⟨s6Step22HeadFvAfter.live∪s6Step22CounterWork.toFinset,Finset.union_subset s6Step22HeadFvAfter.bounded s6Step22Counter_bounded⟩
theorem s6Step22Counter_apart : Disjoint s6Step22HeadFvAfter.live s6Step22CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step22HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Counter_owned : (898::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step22HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step22HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Counter_borrowed : s6Step22HeadFvAfter.checkBorrow 4 s6Step22CounterWork=some s6Step22CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step22HeadFvAfter s6Step22CounterDuring s6Step22CounterWork.toFinset s6Step22Counter_bounded s6Step22Counter_apart rfl
theorem s6Step22Counter_checked : compileHmrCounterStepLog s6Step22HeadFvAfter true 898 [774, 773, 772, 771, 770, 769] s6Step22CounterWork=some s6Step22CounterDuring := by
  have owned : ∀q∈898::[774, 773, 772, 771, 770, 769],q∈s6Step22HeadFvAfter.live := fun q hq => s6Step22Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step22Counter_borrowed
def s6Step23CounterWork : List Wire := [881, 853, 867, 786]
theorem s6Step23Counter_bounded : s6Step23CounterWork.toFinset⊆arenaWires := by norm_num [s6Step23CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step23CounterDuring : Arena := ⟨s6Step23HeadFvAfter.live∪s6Step23CounterWork.toFinset,Finset.union_subset s6Step23HeadFvAfter.bounded s6Step23Counter_bounded⟩
theorem s6Step23Counter_apart : Disjoint s6Step23HeadFvAfter.live s6Step23CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step23HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Counter_owned : (841::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step23HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step23HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Counter_borrowed : s6Step23HeadFvAfter.checkBorrow 4 s6Step23CounterWork=some s6Step23CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step23HeadFvAfter s6Step23CounterDuring s6Step23CounterWork.toFinset s6Step23Counter_bounded s6Step23Counter_apart rfl
theorem s6Step23Counter_checked : compileHmrCounterStepLog s6Step23HeadFvAfter true 841 [774, 773, 772, 771, 770, 769] s6Step23CounterWork=some s6Step23CounterDuring := by
  have owned : ∀q∈841::[774, 773, 772, 771, 770, 769],q∈s6Step23HeadFvAfter.live := fun q hq => s6Step23Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step23Counter_borrowed
def s6Step24CounterWork : List Wire := [867, 786, 877, 855]
theorem s6Step24Counter_bounded : s6Step24CounterWork.toFinset⊆arenaWires := by norm_num [s6Step24CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step24CounterDuring : Arena := ⟨s6Step24HeadFvAfter.live∪s6Step24CounterWork.toFinset,Finset.union_subset s6Step24HeadFvAfter.bounded s6Step24Counter_bounded⟩
theorem s6Step24Counter_apart : Disjoint s6Step24HeadFvAfter.live s6Step24CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step24HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Counter_owned : (794::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step24HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step24HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Counter_borrowed : s6Step24HeadFvAfter.checkBorrow 4 s6Step24CounterWork=some s6Step24CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step24HeadFvAfter s6Step24CounterDuring s6Step24CounterWork.toFinset s6Step24Counter_bounded s6Step24Counter_apart rfl
theorem s6Step24Counter_checked : compileHmrCounterStepLog s6Step24HeadFvAfter true 794 [774, 773, 772, 771, 770, 769] s6Step24CounterWork=some s6Step24CounterDuring := by
  have owned : ∀q∈794::[774, 773, 772, 771, 770, 769],q∈s6Step24HeadFvAfter.live := fun q hq => s6Step24Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step24Counter_borrowed
def s6Step25CounterWork : List Wire := [807, 862, 867, 786]
theorem s6Step25Counter_bounded : s6Step25CounterWork.toFinset⊆arenaWires := by norm_num [s6Step25CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step25CounterDuring : Arena := ⟨s6Step25HeadFvAfter.live∪s6Step25CounterWork.toFinset,Finset.union_subset s6Step25HeadFvAfter.bounded s6Step25Counter_bounded⟩
theorem s6Step25Counter_apart : Disjoint s6Step25HeadFvAfter.live s6Step25CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step25HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Counter_owned : (859::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step25HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step25HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Counter_borrowed : s6Step25HeadFvAfter.checkBorrow 4 s6Step25CounterWork=some s6Step25CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step25HeadFvAfter s6Step25CounterDuring s6Step25CounterWork.toFinset s6Step25Counter_bounded s6Step25Counter_apart rfl
theorem s6Step25Counter_checked : compileHmrCounterStepLog s6Step25HeadFvAfter true 859 [774, 773, 772, 771, 770, 769] s6Step25CounterWork=some s6Step25CounterDuring := by
  have owned : ∀q∈859::[774, 773, 772, 771, 770, 769],q∈s6Step25HeadFvAfter.live := fun q hq => s6Step25Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step25Counter_borrowed
def s6Step26CounterWork : List Wire := [867, 786, 877, 855]
theorem s6Step26Counter_bounded : s6Step26CounterWork.toFinset⊆arenaWires := by norm_num [s6Step26CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step26CounterDuring : Arena := ⟨s6Step26HeadFvAfter.live∪s6Step26CounterWork.toFinset,Finset.union_subset s6Step26HeadFvAfter.bounded s6Step26Counter_bounded⟩
theorem s6Step26Counter_apart : Disjoint s6Step26HeadFvAfter.live s6Step26CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step26HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Counter_owned : (853::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step26HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step26HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Counter_borrowed : s6Step26HeadFvAfter.checkBorrow 4 s6Step26CounterWork=some s6Step26CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step26HeadFvAfter s6Step26CounterDuring s6Step26CounterWork.toFinset s6Step26Counter_bounded s6Step26Counter_apart rfl
theorem s6Step26Counter_checked : compileHmrCounterStepLog s6Step26HeadFvAfter true 853 [774, 773, 772, 771, 770, 769] s6Step26CounterWork=some s6Step26CounterDuring := by
  have owned : ∀q∈853::[774, 773, 772, 771, 770, 769],q∈s6Step26HeadFvAfter.live := fun q hq => s6Step26Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step26Counter_borrowed
def s6Step27CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step27Counter_bounded : s6Step27CounterWork.toFinset⊆arenaWires := by norm_num [s6Step27CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step27CounterDuring : Arena := ⟨s6Step27HeadFvAfter.live∪s6Step27CounterWork.toFinset,Finset.union_subset s6Step27HeadFvAfter.bounded s6Step27Counter_bounded⟩
theorem s6Step27Counter_apart : Disjoint s6Step27HeadFvAfter.live s6Step27CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step27HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Counter_owned : (807::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step27HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step27HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Counter_borrowed : s6Step27HeadFvAfter.checkBorrow 4 s6Step27CounterWork=some s6Step27CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step27HeadFvAfter s6Step27CounterDuring s6Step27CounterWork.toFinset s6Step27Counter_bounded s6Step27Counter_apart rfl
theorem s6Step27Counter_checked : compileHmrCounterStepLog s6Step27HeadFvAfter true 807 [774, 773, 772, 771, 770, 769] s6Step27CounterWork=some s6Step27CounterDuring := by
  have owned : ∀q∈807::[774, 773, 772, 771, 770, 769],q∈s6Step27HeadFvAfter.live := fun q hq => s6Step27Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step27Counter_borrowed
def s6Step28CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step28Counter_bounded : s6Step28CounterWork.toFinset⊆arenaWires := by norm_num [s6Step28CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step28CounterDuring : Arena := ⟨s6Step28HeadFvAfter.live∪s6Step28CounterWork.toFinset,Finset.union_subset s6Step28HeadFvAfter.bounded s6Step28Counter_bounded⟩
theorem s6Step28Counter_apart : Disjoint s6Step28HeadFvAfter.live s6Step28CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step28HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step28HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step28HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Counter_borrowed : s6Step28HeadFvAfter.checkBorrow 4 s6Step28CounterWork=some s6Step28CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step28HeadFvAfter s6Step28CounterDuring s6Step28CounterWork.toFinset s6Step28Counter_bounded s6Step28Counter_apart rfl
theorem s6Step28Counter_checked : compileHmrCounterStepLog s6Step28HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step28CounterWork=some s6Step28CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step28HeadFvAfter.live := fun q hq => s6Step28Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step28Counter_borrowed
def s6Step29CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step29Counter_bounded : s6Step29CounterWork.toFinset⊆arenaWires := by norm_num [s6Step29CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step29CounterDuring : Arena := ⟨s6Step29HeadFvAfter.live∪s6Step29CounterWork.toFinset,Finset.union_subset s6Step29HeadFvAfter.bounded s6Step29Counter_bounded⟩
theorem s6Step29Counter_apart : Disjoint s6Step29HeadFvAfter.live s6Step29CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step29HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step29HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step29HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Counter_borrowed : s6Step29HeadFvAfter.checkBorrow 4 s6Step29CounterWork=some s6Step29CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step29HeadFvAfter s6Step29CounterDuring s6Step29CounterWork.toFinset s6Step29Counter_bounded s6Step29Counter_apart rfl
theorem s6Step29Counter_checked : compileHmrCounterStepLog s6Step29HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step29CounterWork=some s6Step29CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step29HeadFvAfter.live := fun q hq => s6Step29Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step29Counter_borrowed
def s6Step30CounterWork : List Wire := [877, 855, 803, 922]
theorem s6Step30Counter_bounded : s6Step30CounterWork.toFinset⊆arenaWires := by norm_num [s6Step30CounterWork,arenaWires,Finset.insert_subset_iff]
def s6Step30CounterDuring : Arena := ⟨s6Step30HeadFvAfter.live∪s6Step30CounterWork.toFinset,Finset.union_subset s6Step30HeadFvAfter.bounded s6Step30Counter_bounded⟩
theorem s6Step30Counter_apart : Disjoint s6Step30HeadFvAfter.live s6Step30CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step30HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Counter_owned : (802::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step30HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step30HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Counter_borrowed : s6Step30HeadFvAfter.checkBorrow 4 s6Step30CounterWork=some s6Step30CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step30HeadFvAfter s6Step30CounterDuring s6Step30CounterWork.toFinset s6Step30Counter_bounded s6Step30Counter_apart rfl
theorem s6Step30Counter_checked : compileHmrCounterStepLog s6Step30HeadFvAfter true 802 [774, 773, 772, 771, 770, 769] s6Step30CounterWork=some s6Step30CounterDuring := by
  have owned : ∀q∈802::[774, 773, 772, 771, 770, 769],q∈s6Step30HeadFvAfter.live := fun q hq => s6Step30Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step30Counter_borrowed

end ECDSAAdd.Arithmetic.Paper935
