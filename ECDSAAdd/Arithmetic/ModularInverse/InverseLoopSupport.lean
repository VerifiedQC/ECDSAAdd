import ECDSAAdd.Arithmetic.ModularInverse.InverseCompute

namespace ECDSAAdd.Arithmetic
namespace InverseLoopLayout

def coreWires (L : InverseLoopLayout) : List Wire := L.first.tapeWires L.records++L.extra

theorem core_perm (L : InverseLoopLayout) : (L.restWires++L.phaseWires).Perm L.coreWires := by
  apply List.perm_iff_count.mpr
  intro w
  have hp := L.rest_phase_perm.count_eq w
  simp only [wires,coreWires,List.count_append] at hp ⊢
  omega

theorem phase_subset (L : InverseLoopLayout) : L.phaseWires ⊆ L.coreWires :=
  fun _ h => L.core_perm.mem_iff.mp (List.mem_append_right _ h)

theorem rest_subset (L : InverseLoopLayout) : L.restWires ⊆ L.coreWires :=
  fun _ h => L.core_perm.mem_iff.mp (List.mem_append_left _ h)

def usedCoreWires (L : InverseLoopLayout) : List Wire := L.first.usedTapeWires L.records++L.extra

def usedWires (L : InverseLoopLayout) : List Wire := L.usedCoreWires++L.out

theorem usedCoreWires_sublist (L : InverseLoopLayout) : L.usedCoreWires.Sublist L.coreWires :=
  (L.first.usedTapeWires_sublist L.records).append_right _

theorem usedWires_sublist (L : InverseLoopLayout) : L.usedWires.Sublist L.wires :=
  L.usedCoreWires_sublist.append_right _

private theorem middle_used_perm (L : InverseLoopLayout) :
    L.middle.usedSharedWires.Perm L.first.usedSharedWires := by
  apply List.perm_iff_count.mpr
  intro w
  have hp := L.middle_perm.count_eq w
  have hd : L.middle.data=L.first.data := loopEnd_data _ _
  simp only [KaliskiRoundLayout.tapeWires,KaliskiRoundLayout.sharedWires,KaliskiRoundLayout.usedSharedWires,
    List.count_append,List.count_cons,List.count_nil,hd] at hp ⊢
  omega

theorem phase_used_subset (L : InverseLoopLayout) : L.phaseWires ⊆ L.usedCoreWires := by
  intro w hw
  simp only [phaseWires,List.mem_append,List.mem_cons,List.mem_nil_iff,or_false] at hw
  rcases hw with (he | hm) | hc
  · exact List.mem_append_right _ he
  · have hh : w∈L.middle.usedSharedWires := by
      simp [KaliskiRoundLayout.usedSharedWires,hm]
    exact List.mem_append_left _ (List.mem_append_right _ (L.middle_used_perm.mem_iff.mp hh))
  · have hh : w∈L.middle.usedSharedWires := List.mem_append_right _ hc
    exact List.mem_append_left _ (List.mem_append_right _ (L.middle_used_perm.mem_iff.mp hh))

theorem negative_subset (L : InverseLoopLayout) :
    L.middle.r++L.temp++L.a++L.arithmetic.wires ⊆ L.usedCoreWires := by
  intro w hw
  simp only [List.mem_append] at hw
  rcases hw with ((hr|ht)|ha)|hm
  · have hm : w∈L.middle.data.usedWires := L.middle.data.reg_used_mem .r (by decide) hr
    have hh : w∈L.middle.usedSharedWires := List.mem_append_left _ (List.mem_append_right _ hm)
    exact List.mem_append_left _ (List.mem_append_right _ (L.middle_used_perm.mem_iff.mp hh))
  · exact List.mem_append_right _ (by simp [extra,ht])
  · exact List.mem_append_right _ (by simp [extra,ha])
  · exact List.mem_append_right _ (by simp [extra,hm])

theorem first_negative_union (L : InverseLoopLayout) :
    (L.first.usedTapeWires L.records).toFinset ∪
      (L.middle.r++L.temp++L.a++L.arithmetic.wires).toFinset=L.usedCoreWires.toFinset := by
  ext w
  have hs := fun h => L.negative_subset (a := w) h
  simp only [usedCoreWires,extra,Finset.mem_union,List.mem_toFinset,List.mem_append] at hs ⊢
  tauto


/-- 新缩放只触及原求逆实际支持中的数据、计数和借用区。 -/
theorem scaling_used_subset (L : InverseLoopLayout) (ht : L.temp.length=257)
    (hm : L.arithmetic.width=256) (hl : L.first.low.length=256) :
    L.scaling.wires⊆L.usedCoreWires := by
  intro w h
  simp only [InverseScaleLayout.wires,L.scaling_live hl,L.scaling_work ht hm,List.mem_append] at h
  rcases h with ((ha|hk)|hlive)|hb
  · exact L.phase_used_subset (L.a_mem_phase ha)
  · apply L.phase_used_subset
    have hc : w∈L.middle.counter.wires := by
      obtain ⟨b,hb,rfl⟩ := List.mem_map.mp hk
      exact List.mem_cons_of_mem _ (mem_addWires hb).1
    simp [phaseWires,hc]
  · have hd : w∈L.middle.data.usedWires := by
      simp only [scaleLive,List.mem_append] at hlive
      rcases hlive with (hy|hz)|hc
      · exact L.middle.data.reg_used_mem .y (by decide) hy
      · exact L.middle.data.reg_used_mem .zero (by decide) (List.mem_of_mem_take hz)
      · exact L.middle.data.reg_used_mem .carry (by decide) hc
    have hh : w∈L.middle.usedSharedWires := List.mem_append_left _ (List.mem_append_right _ hd)
    exact List.mem_append_left _ (List.mem_append_right _ (L.middle_used_perm.mem_iff.mp hh))
  · have hb := List.mem_of_mem_take hb
    exact List.mem_append_right _ (by simp only [extra,scaleBorrow,List.mem_append] at hb ⊢; tauto)

end InverseLoopLayout

theorem inverseCompute_wires (L : InverseLoopLayout)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hd : 2≤L.first.data.width) (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256) (q : Nat) :
    wires (inverseCompute L q)=L.usedCoreWires.toFinset ∧
    wires (inverseUncompute L q)=L.usedCoreWires.toFinset := by
  have hh := kaliskiLoop_wires L.first L.records 0 hw hd
  have hne : L.records.isEmpty=false := by
    cases he : L.records with
    | nil => rw [he] at hn; simp at hn
    | cons r rs => rfl
  simp only [hne,Bool.false_eq_true,if_false] at hh
  have hrlen : L.middle.r.length=L.arithmetic.width+1 := by
    change (L.middle.data.reg .r).length=_
    rw [L.middle.data.reg_length,InverseLoopLayout.middle,loopEnd_data,hwidth]
  have hneg := negativeInit_wires L.arithmetic q L.middle.r L.temp L.a hrlen ht ha
  have hscale := L.scaling.wires_subset (L.scaling_widths (by omega) (by omega) hm hl hw) q
  have hs : L.scaling.wires.toFinset⊆L.usedCoreWires.toFinset := by
    intro w h
    exact List.mem_toFinset.mpr (L.scaling_used_subset (by omega) hm hl (List.mem_toFinset.mp h))
  have hf := hscale.1.trans hs
  have hb := hscale.2.trans hs
  simp only [inverseCompute,inverseUncompute,wires_append,hh.1,hh.2,hneg]
  have he := L.first_negative_union
  constructor
  · rw [he,Finset.union_eq_left.mpr hf]
  · rw [Finset.union_assoc,Finset.union_comm (wires (L.scaling.restore q)),
      Finset.union_comm (L.middle.r++L.temp++L.a++L.arithmetic.wires).toFinset,
      he,Finset.union_eq_left.mpr hb]

theorem inverseLoop_wires (L : InverseLoopLayout)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hd : 2≤L.first.data.width) (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (ho : L.out.length=L.arithmetic.width+1)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256) (q : Nat) :
    wires (inverseLoop L q)=L.usedWires.toFinset := by
  have hc := inverseCompute_wires L hn hw hd hwidth ha ht hl hm q
  have hcopy := copyRegister_wires none L.a L.out (ha.trans ho.symm)
  have hne : L.a.isEmpty=false := by
    cases he : L.a with
    | nil => rw [he] at ha; simp at ha
    | cons a as => rfl
  simp only [hne,Bool.false_eq_true,if_false,Option.toList_none,List.nil_append] at hcopy
  rw [inverseLoop,wires_append,wires_append,hc.1,hc.2,hcopy]
  ext w
  have hm : w∈L.a → w∈L.usedCoreWires := fun h => L.phase_used_subset (L.a_mem_phase h)
  change _ ↔ w∈(L.usedCoreWires++L.out).toFinset
  simp only [Finset.mem_union,List.mem_toFinset,List.mem_append]
  clear hn hw hd hwidth ha ht ho hc hcopy hne
  tauto

end ECDSAAdd.Arithmetic
