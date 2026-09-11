import ECDSAAdd.Arithmetic.KaliskiLoopProof
import ECDSAAdd.Arithmetic.HalvingLoop
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

/-- I4 使用已初始化的第一阶段寄存器；第二阶段复用其计数比较线路。 -/
structure InverseLoopLayout where
  first : KaliskiRoundLayout
  records : List RoundRecord
  arithmetic : ModLayout
  a : List Wire
  temp : List Wire
  out : List Wire

namespace InverseLoopLayout

def middle (L : InverseLoopLayout) : KaliskiRoundLayout := loopEndLayout L.first L.records.length

def halving (L : InverseLoopLayout) : HalvingLayout :=
  ⟨L.a, L.arithmetic.reg .modulus, L.arithmetic.lowReg .carrySum,
    L.arithmetic.high.carrySum, L.arithmetic.cinSum, L.arithmetic.cinDiff,
    L.middle.active, L.middle.counterLow, L.middle.counterHigh, L.middle.compareCin⟩

def extra (L : InverseLoopLayout) : List Wire := L.a++L.temp++L.arithmetic.wires

def wires (L : InverseLoopLayout) : List Wire := L.first.tapeWires L.records++L.extra++L.out

def phaseWires (L : InverseLoopLayout) : List Wire :=
  L.extra ++ [L.middle.compareCin] ++ L.middle.counter.wires

theorem halving_counter (L : InverseLoopLayout) :
    L.halving.counter = { L.middle.counter with cin := L.middle.compareCin } := rfl

theorem halving_carry (L : InverseLoopLayout) : L.halving.carry = L.arithmetic.reg .carrySum := by
  simp [halving,HalvingLayout.carry,ModLayout.lowReg,ModLayout.reg,ModLayout.bits,ModBit.get]

theorem middle_perm (L : InverseLoopLayout) :
    (L.middle.tapeWires L.records).Perm (L.first.tapeWires L.records) :=
  List.Perm.append_left _ (loopEnd_shared_perm L.first L.records.length)

theorem middle_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    (L.middle.tapeWires L.records).Nodup :=
  L.middle_perm.nodup_iff.mpr (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).1

theorem phase_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) : L.phaseWires.Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have hh := List.nodup_iff_count.mp hnd w
  have hm := L.middle_perm.count_eq w
  simp only [wires,phaseWires,KaliskiRoundLayout.tapeWires,KaliskiRoundLayout.sharedWires,List.count_append,
    List.count_cons,List.count_nil] at hh hm ⊢
  omega

theorem first_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    (L.first.tapeWires L.records).Nodup := (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).1

theorem phase_width (L : InverseLoopLayout) : L.halving.counter.width=L.first.counter.width := by
  change L.middle.counter.width=L.first.counter.width
  exact loopEnd_counter_width L.first L.records.length

def restWires (L : InverseLoopLayout) : List Wire :=
  L.records.flatMap RoundRecord.wires ++ [L.middle.done,L.middle.oddWork,L.middle.bothWork] ++ L.middle.data.wires

theorem rest_phase_perm (L : InverseLoopLayout) :
    (L.restWires ++ L.phaseWires ++ L.out).Perm L.wires := by
  apply List.perm_iff_count.mpr
  intro w
  have hm := L.middle_perm.count_eq w
  simp only [wires,restWires,phaseWires,KaliskiRoundLayout.tapeWires,KaliskiRoundLayout.sharedWires,
    List.count_append,List.count_cons,List.count_nil] at hm ⊢
  omega

theorem rest_phase_disjoint (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    L.restWires.Disjoint L.phaseWires :=
  (List.nodup_append'.mp (List.nodup_append'.mp (L.rest_phase_perm.nodup_iff.mpr hnd)).1).2.2

private theorem borrowed_count (bs : List ModBit) (w : Wire) :
    (bs.map ModBit.modulus).count w + (bs.map ModBit.carrySum).count w ≤
      (bs.flatMap ModBit.all).count w := by
  induction bs with
  | nil => simp
  | cons b bs ih =>
    simp only [List.map_cons,List.flatMap_cons,List.count_append,ModBit.all,List.count_cons,List.count_nil]
    omega

theorem halving_subset (L : InverseLoopLayout) : L.halving.wires ⊆ L.phaseWires := by
  intro w hw
  have hc : L.halving.counter.wires = L.middle.compareCin :: addWires L.middle.counter.bits := rfl
  have hr (f : ModField) {w : Wire} (hw : w ∈ L.arithmetic.reg f) : w ∈ L.arithmetic.wires := by
    exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (L.arithmetic.reg_mem f hw))
  simp only [HalvingLayout.wires] at hw
  rw [L.halving_carry] at hw
  rw [hc] at hw
  simp only [halving,List.mem_cons,List.mem_append] at hw
  have hm := fun h => hr ModField.modulus (w := w) h
  have hs := fun h => hr ModField.carrySum (w := w) h
  have hcin : w=L.arithmetic.cinSum → w∈L.arithmetic.wires := by rintro rfl; simp [ModLayout.wires]
  have hflag : w=L.arithmetic.cinDiff → w∈L.arithmetic.wires := by rintro rfl; simp [ModLayout.wires]
  simp only [phaseWires,extra,List.mem_append,List.mem_cons,List.not_mem_nil,or_false,
    KaliskiRoundLayout.counter,AdderLayout.wires] at hw ⊢
  tauto

theorem halving_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) : L.halving.wires.Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have hh := List.nodup_iff_count.mp (L.phase_nodup hnd) w
  have hb := borrowed_count L.arithmetic.bits w
  simp only [HalvingLayout.wires]
  rw [L.halving_carry]
  simp only [halving,HalvingLayout.counter,
    phaseWires,extra,KaliskiRoundLayout.counter,AdderLayout.wires,ModLayout.wires,
    ModLayout.reg,ModBit.get,List.count_append,List.count_cons,List.count_nil] at hh ⊢
  change (L.arithmetic.bits.map (fun b => b.modulus)).count w +
    (L.arithmetic.bits.map (fun b => b.carrySum)).count w ≤ _ at hb
  omega

theorem halving_widths (L : InverseLoopLayout) (ha : L.a.length=L.arithmetic.width+1)
    (hw : L.first.counter.width=10) : L.halving.Widths := by
  refine ⟨?_,?_,L.phase_width.trans hw⟩
  · exact (L.arithmetic.reg_length .modulus).trans ha.symm
  · simpa [halving,ModLayout.lowReg,ModLayout.width] using ha.symm

end InverseLoopLayout

end ECDSAAdd.Arithmetic
