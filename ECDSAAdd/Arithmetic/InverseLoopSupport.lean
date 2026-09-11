import ECDSAAdd.Arithmetic.InverseCompute

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

theorem negative_subset (L : InverseLoopLayout) :
    L.middle.r++L.temp++L.a++L.arithmetic.wires ⊆ L.coreWires := by
  intro w hw
  simp only [List.mem_append] at hw
  rcases hw with ((hr|ht)|ha)|hm
  · exact L.rest_subset (List.mem_append_right _ (L.middle.data.reg_mem .r hr))
  · exact List.mem_append_right _ (by simp [extra,ht])
  · exact List.mem_append_right _ (by simp [extra,ha])
  · exact List.mem_append_right _ (by simp [extra,hm])

theorem first_negative_union (L : InverseLoopLayout) :
    (L.first.tapeWires L.records).toFinset ∪
      (L.middle.r++L.temp++L.a++L.arithmetic.wires).toFinset=L.coreWires.toFinset := by
  ext w
  have hs := fun h => L.negative_subset (a := w) h
  simp only [coreWires,extra,Finset.mem_union,List.mem_toFinset,List.mem_append] at hs ⊢
  tauto

end InverseLoopLayout

theorem inverseCompute_wires (L : InverseLoopLayout)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hd : 2≤L.first.data.width) (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (q : Nat) :
    wires (inverseCompute L q)=L.coreWires.toFinset ∧
    wires (inverseUncompute L q)=L.coreWires.toFinset := by
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
  have hhalf := halveInPlace_wires L.halving (L.halving_widths ha hw) q 0 512
  simp only [show ¬(512:Nat)=0 by omega,if_false] at hhalf
  have hs : L.halving.wires.toFinset ⊆ L.coreWires.toFinset := by
    intro w h
    exact List.mem_toFinset.mpr (L.phase_subset (L.halving_subset (List.mem_toFinset.mp h)))
  simp only [inverseCompute,inverseUncompute,wires_append,hh.1,hh.2,hneg,hhalf.1,hhalf.2]
  have he := L.first_negative_union
  constructor
  · rw [he,Finset.union_eq_left.mpr hs]
  · ext w
    have hm := fun h => hs (a := w) h
    have hu : w∈(L.first.tapeWires L.records).toFinset ∨
        w∈(L.middle.r++L.temp++L.a++L.arithmetic.wires).toFinset ↔ w∈L.coreWires.toFinset := by
      rw [← Finset.mem_union,he]
    simp only [Finset.mem_union]
    clear hn hw hd hwidth ha ht hh hne hrlen hneg hhalf hs he
    tauto

theorem inverseLoop_wires (L : InverseLoopLayout)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hd : 2≤L.first.data.width) (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (ho : L.out.length=L.arithmetic.width+1) (q : Nat) :
    wires (inverseLoop L q)=L.wires.toFinset := by
  have hc := inverseCompute_wires L hn hw hd hwidth ha ht q
  have hcopy := copyRegister_wires none L.a L.out (ha.trans ho.symm)
  have hne : L.a.isEmpty=false := by
    cases he : L.a with
    | nil => rw [he] at ha; simp at ha
    | cons a as => rfl
  simp only [hne,Bool.false_eq_true,if_false,Option.toList_none,List.nil_append] at hcopy
  rw [inverseLoop,wires_append,wires_append,hc.1,hc.2,hcopy]
  ext w
  have hm : w∈L.a → w∈L.coreWires := fun h => L.phase_subset (L.a_mem_phase h)
  change _ ↔ w∈(L.coreWires++L.out).toFinset
  simp only [Finset.mem_union,List.mem_toFinset,List.mem_append]
  clear hn hw hd hwidth ha ht ho hc hcopy hne
  tauto

end ECDSAAdd.Arithmetic
