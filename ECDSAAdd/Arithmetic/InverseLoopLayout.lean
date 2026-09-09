import ECDSAAdd.Arithmetic.KaliskiLoopProof
import ECDSAAdd.Arithmetic.HalvingLoopProof
import ECDSAAdd.Arithmetic.HalvingLoopResources
import ECDSAAdd.Arithmetic.NegativeInitResources

namespace ECDSAAdd.Arithmetic

theorem loopEnd_shared_perm (L : KaliskiRoundLayout) (n : Nat) :
    (loopEndLayout L n).sharedWires.Perm L.sharedWires := by
  induction n generalizing L with
  | zero => exact List.Perm.refl _
  | succ n ih => exact (ih L.swapCounter).trans L.shared_swap_perm

theorem loopEnd_data (L : KaliskiRoundLayout) (n : Nat) : (loopEndLayout L n).data=L.data := by
  induction n generalizing L with
  | zero => rfl
  | succ n ih => exact (ih L.swapCounter).trans L.swapCounter_data

theorem loopEnd_counter_width (L : KaliskiRoundLayout) (n : Nat) :
    (loopEndLayout L n).counter.width=L.counter.width := by
  induction n generalizing L with
  | zero => rfl
  | succ n ih =>
    rw [loopEndLayout,ih,L.swapCounter_counter]
    exact L.counter.swapCounter_fields.2.2.2.2.2

theorem halvingEnd_even (L : HalvingLoopLayout) (n : Nat) : halvingEnd L (2*n)=L := by
  induction n generalizing L with
  | zero => rfl
  | succ n ih =>
    have hs : L.swap.swap=L := by cases L; rfl
    have hn : 2*(n+1)=(2*n+1)+1 := by omega
    rw [hn,halvingEnd,halvingEnd,hs,ih]

/-- I4 使用已初始化的第一阶段寄存器；第二阶段复用其计数比较线路。 -/
structure InverseLoopLayout where
  first : KaliskiRoundLayout
  records : List RoundRecord
  arithmetic : ModLayout
  a : List Wire
  b : List Wire
  temp : List Wire
  out : List Wire

namespace InverseLoopLayout

def middle (L : InverseLoopLayout) : KaliskiRoundLayout := loopEndLayout L.first L.records.length

def phase (L : InverseLoopLayout) : HalvingLoopLayout :=
  ⟨⟨L.arithmetic,L.a,L.b,L.temp,L.middle.active⟩,
    L.middle.counterLow,L.middle.counterHigh,L.middle.compareCin⟩

def extra (L : InverseLoopLayout) : List Wire := L.a++L.temp++L.b++L.arithmetic.wires

def wires (L : InverseLoopLayout) : List Wire := L.first.tapeWires L.records++L.extra++L.out

theorem phase_counter (L : InverseLoopLayout) :
    L.phase.counter = { L.middle.counter with cin := L.middle.compareCin } := rfl

theorem middle_perm (L : InverseLoopLayout) :
    (L.middle.tapeWires L.records).Perm (L.first.tapeWires L.records) :=
  List.Perm.append_left _ (loopEnd_shared_perm L.first L.records.length)

theorem middle_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    (L.middle.tapeWires L.records).Nodup :=
  L.middle_perm.nodup_iff.mpr (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).1

theorem phase_perm (L : InverseLoopLayout) :
    L.phase.wires.Perm (L.extra ++ [L.middle.compareCin] ++ L.middle.counter.wires) := by
  apply List.perm_iff_count.mpr
  intro w
  simp [phase,HalvingLoopLayout.wires,HalvingLoopLayout.counter,HalveLayout.wires,
    extra,KaliskiRoundLayout.counter,AdderLayout.wires,List.count_cons]
  omega

theorem phase_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) : L.phase.wires.Nodup := by
  apply L.phase_perm.nodup_iff.mpr
  apply List.nodup_iff_count.mpr
  intro w
  have hh := List.nodup_iff_count.mp hnd w
  have hm := L.middle_perm.count_eq w
  simp only [wires,KaliskiRoundLayout.tapeWires,KaliskiRoundLayout.sharedWires,List.count_append,
    List.count_cons,List.count_nil] at hh hm ⊢
  omega

theorem first_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    (L.first.tapeWires L.records).Nodup := (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).1

theorem phase_width (L : InverseLoopLayout) : L.phase.counter.width=L.first.counter.width := by
  change L.middle.counter.width=L.first.counter.width
  exact loopEnd_counter_width L.first L.records.length

def restWires (L : InverseLoopLayout) : List Wire :=
  L.records.flatMap RoundRecord.wires ++ [L.middle.done,L.middle.oddWork,L.middle.bothWork] ++ L.middle.data.wires

theorem rest_phase_perm (L : InverseLoopLayout) :
    (L.restWires ++ L.phase.wires ++ L.out).Perm L.wires := by
  apply List.perm_iff_count.mpr
  intro w
  have hp := L.phase_perm.count_eq w
  have hm := L.middle_perm.count_eq w
  simp only [wires,restWires,KaliskiRoundLayout.tapeWires,KaliskiRoundLayout.sharedWires,
    List.count_append,List.count_cons,List.count_nil] at hp hm ⊢
  omega

theorem rest_phase_disjoint (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    L.restWires.Disjoint L.phase.wires :=
  (List.nodup_append'.mp (List.nodup_append'.mp (L.rest_phase_perm.nodup_iff.mpr hnd)).1).2.2

end InverseLoopLayout

end ECDSAAdd.Arithmetic
