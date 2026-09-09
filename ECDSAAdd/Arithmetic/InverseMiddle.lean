import ECDSAAdd.Arithmetic.InverseLoopState

namespace ECDSAAdd.Arithmetic
namespace InverseLoopLayout

theorem a_mem_phase (L : InverseLoopLayout) {w : Wire} (hw : w∈L.a) : w∈L.phase.wires := by
  simp [phase,HalvingLoopLayout.wires,HalveLayout.wires,hw]

theorem negative_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    (L.middle.r++L.temp++L.a++L.arithmetic.wires).Nodup := by
  have ht : (L.temp++L.a++L.arithmetic.wires).Nodup := by
    apply List.nodup_iff_count.mpr
    intro w
    have hh := List.nodup_iff_count.mp (L.phase_nodup hnd) w
    simp only [phase,HalvingLoopLayout.wires,HalveLayout.wires,List.count_append,List.count_cons] at hh ⊢
    omega
  have hs := (List.nodup_append'.mp (L.middle_nodup hnd)).2.1
  have hd := (List.nodup_append'.mp (List.nodup_append'.mp hs).1).2.1
  have hr : L.middle.r.Nodup := L.middle.data.reg_nodup hd .r
  have hdis : L.middle.r.Disjoint (L.temp++L.a++L.arithmetic.wires) := by
    apply List.disjoint_left.mpr
    intro w hR hT
    apply List.disjoint_left.mp (L.rest_phase_disjoint hnd)
    · exact List.mem_append_right _ (L.middle.data.reg_mem .r hR)
    · simp only [List.mem_append] at hT
      simp only [phase,HalvingLoopLayout.wires,HalveLayout.wires,List.mem_append,List.mem_cons]
      tauto
  simpa only [List.append_assoc] using List.nodup_append'.mpr ⟨hr,ht,hdis⟩

end InverseLoopLayout

theorem InverseMiddle.update_a (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (z : KState) (cs : List (Bool×Bool)) (A B Z : Nat) (s t : BasisState)
    (h : InverseMiddle L z cs A B s) (he : ∀ w, w∉L.a → t w=s w) (hz : regValue L.a t=Z) :
    InverseMiddle L z cs Z B t := by
  have hp := List.nodup_append'.mp (L.phase_nodup hnd)
  have ha (w : Wire) (hw : w∈L.phase.counter.wires) : w∉L.a := fun hh =>
    List.disjoint_left.mp hp.2.2 (by simp [InverseLoopLayout.phase,HalveLayout.wires,hh]) hw
  refine ⟨InverseRest.congr L z cs s t h.1 ?_, ?_, PhaseCounter.congr L.phase.counter z.k s t h.2.2
    (fun w hw => he w (ha w hw))⟩
  · intro w hw
    exact he w (fun hh => List.disjoint_left.mp (L.rest_phase_disjoint hnd) hw (L.a_mem_phase hh))
  · have hs := (HalveValues.swap L.phase.data B A false s).mpr h.2.1
    have hn := L.phase.data.swap_perm.nodup_iff.mpr hp.1
    exact (HalveValues.swap L.phase.data B Z false t).mp
      (HalveValues.update L.phase.data.swap hn B A Z false s t hs he hz)

theorem inverseNegative_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hw : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1) (ht : L.temp.length=L.arithmetic.width+1)
    (q : Nat) (z : KState) (cs : List (Bool×Bool)) (A B : Nat)
    (hq0 : 0<q) (hq : q<2^L.arithmetic.width) (hr : z.r<2*q) :
    Triple (InverseMiddle L z cs A B)
      (negativeInit L.arithmetic q L.middle.r L.temp L.a)
      (InverseMiddle L z cs (A ^^^ (-(z.r : ZMod q)).val) B) := by
  intro s m h
  have hlen : L.middle.r.length=L.arithmetic.width+1 := by
    change (L.middle.data.reg .r).length = _
    rw [L.middle.data.reg_length,InverseLoopLayout.middle,loopEnd_data,hw]
  have hR : regValue L.middle.r s.basis=z.r := h.1.1.1 .r
  have he := (InverseMiddle.iff L z cs A B s.basis).mp h
  obtain ⟨hp,hkeep,hval⟩ := negativeInit_correct L.arithmetic q L.middle.r L.temp L.a
    (L.negative_nodup hnd) hlen ht ha hq0 hq s m (by simpa [hR] using hr) he.2.2.2.2.1 he.2.2.2.2.2
  exact ⟨hp,InverseMiddle.update_a L hnd z cs A B _ s.basis _ h hkeep
    (by simpa [hR,he.2.2.1,negativeInit_value q z.r hq0] using hval)⟩

theorem inverseHalving_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length=L.arithmetic.width+1) (hb : L.b.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (hw : L.first.counter.width=10)
    (q X : Nat) (z : KState) (cs : List (Bool×Bool))
    (hq : q<2^L.arithmetic.width) (ho : q%2=1) (hx : X<q) (hk : z.k≤512) :
    Triple (InverseMiddle L z cs X 0) (halvingLoop L.phase q 0 512)
      (InverseMiddle L z cs (halveFixed q z.k 512 X) 0) ∧
    Triple (InverseMiddle L z cs (halveFixed q z.k 512 X) 0) (halvingUnloop L.phase q 0 512)
      (InverseMiddle L z cs X 0) := by
  have hh := halvingLoop_correct L.phase (L.phase_nodup hnd) ha hb ht (L.phase_width.trans hw)
    q X z.k 0 512 hq ho hx hk (by omega)
  have hend : halvingEnd L.phase 512=L.phase := halvingEnd_even L.phase 256
  rw [hend,halvingRun_fixed] at hh
  have hwire := halvingLoop_wires L.phase ha hb ht q 0 512
  simp only [show ¬(512:Nat)=0 by omega,if_false] at hwire
  have frame (circ : Program) (hc : wires circ=L.phase.wires.toFinset)
      (s t : BasisState) (he : ∀ w,w∉wires circ → s w=t w) (h : InverseRest L z cs s) :
      InverseRest L z cs t := by
    apply InverseRest.congr L z cs s t h
    intro w hw
    apply (he w ?_).symm
    rw [hc]
    exact fun hh => List.disjoint_left.mp (L.rest_phase_disjoint hnd) hw (List.mem_toFinset.mp hh)
  have hf := hh.1.frame (frame _ hwire.1)
  have hb' := hh.2.frame (frame _ hwire.2)
  exact ⟨Triple.conseq (fun _ h => ⟨h.2,h.1⟩) hf (fun _ h => ⟨h.2,h.1⟩),
    Triple.conseq (fun _ h => ⟨h.2,h.1⟩) hb' (fun _ h => ⟨h.2,h.1⟩)⟩

end ECDSAAdd.Arithmetic
