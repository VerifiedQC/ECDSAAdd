import ECDSAAdd.Arithmetic.InverseLoopSupport

namespace ECDSAAdd.Arithmetic

theorem PhaseValues.congr (L : HalvingLoopLayout) (K A B : Nat) (C : Bool)
    (s t : BasisState) (h : PhaseValues L K A B C s) (he : ∀ w∈L.wires,t w=s w) :
    PhaseValues L K A B C t := by
  have hd (w : Wire) (hw : w∈L.data.wires) := he w (List.mem_append_left _ hw)
  have keep (r : List Wire) (hr : r ⊆ L.data.wires) : regValue r t=regValue r s :=
    regValue_congr _ _ _ (fun w hw => hd w (hr hw))
  refine ⟨⟨(keep L.data.a (by intro w hw; simp [HalveLayout.wires,hw])).trans h.1.1,
    (keep L.data.b (by intro w hw; simp [HalveLayout.wires,hw])).trans h.1.2.1,
    (hd _ (by simp [HalveLayout.wires])).trans h.1.2.2.1,
    (keep L.data.work ?_).trans h.1.2.2.2⟩,
    PhaseCounter.congr L.counter K s t h.2 (fun w hw => he w (List.mem_append_right _ hw))⟩
  intro w hw
  simp only [HalveLayout.work,List.mem_append] at hw
  simp only [HalveLayout.wires,List.mem_cons,List.mem_append]
  tauto

theorem InverseMiddle.congr (L : InverseLoopLayout) (z : KState) (cs : List (Bool×Bool))
    (A B : Nat) (s t : BasisState) (h : InverseMiddle L z cs A B s)
    (he : ∀ w∈L.coreWires,t w=s w) : InverseMiddle L z cs A B t :=
  ⟨InverseRest.congr L z cs s t h.1 (fun w hw => he w (L.rest_subset hw)),
    PhaseValues.congr L.phase z.k A B false s t h.2 (fun w hw => he w (L.phase_subset hw))⟩

theorem inverseCopy_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hlen : L.a.length=L.out.length) (z : KState) (cs : List (Bool×Bool)) (A B O : Nat) :
    Triple (fun s => InverseMiddle L z cs A B s ∧ regValue L.out s=O)
      (copyRegister none L.a L.out)
      (fun s => InverseMiddle L z cs A B s ∧ regValue L.out s=(O ^^^ A)) := by
  intro s m h
  have hn : (L.a++L.out).Nodup := by
    apply List.nodup_iff_count.mpr
    intro w
    have hh := List.nodup_iff_count.mp hnd w
    simp only [InverseLoopLayout.wires,InverseLoopLayout.extra,List.count_append] at hh ⊢
    omega
  obtain ⟨hp,he,hz⟩ := copyRegister_correct none L.a L.out hlen hn (by simp) s m
  have hdis : L.coreWires.Disjoint L.out := (List.nodup_append'.mp hnd).2.2
  refine ⟨hp,InverseMiddle.congr L z cs A B s.basis _ h.1 ?_,?_⟩
  · intro w hw; exact he w (List.disjoint_left.mp hdis hw)
  · simpa only [copyValue,h.2,show regValue L.a s.basis=A from h.1.2.1.1] using hz

/-- I4 核：保留已初始化的第一阶段输入，XOR 写入逆算法结果，并清除全部历史与第二阶段工作。 -/
theorem inverseLoop_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1) (hb : L.b.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (hout : L.out.length=L.arithmetic.width+1)
    (q a O : Nat) (hq0 : 0<q) (hq : q<2^L.first.low.length)
    (hqa : q<2^L.arithmetic.width) (ho : q%2=1) (hx : a<q) (hcop : q.Coprime a) :
    let z := kaliskiStep^[512] (kaliskiInit q a)
    let R := halveFixed q z.k 512 (-(z.r : ZMod q)).val
    Triple (fun s => InverseInitial L q a s ∧ regValue L.out s=O) (inverseLoop L q)
      (fun s => InverseInitial L q a s ∧ regValue L.out s=(O ^^^ R)) := by
  dsimp only
  let z := kaliskiStep^[512] (kaliskiInit q a)
  let cs := kaliskiCodes 512 (kaliskiInit q a)
  let R := halveFixed q z.k 512 (-(z.r : ZMod q)).val
  have hcompute := inverseCompute_values L hnd hn hw hwidth ha hb ht q a hq0 hq hqa ho hx hcop
  have hd : 2≤L.first.data.width := by
    have hpos : 0<L.first.low.length := by
      by_contra hh
      have hz : L.first.low.length=0 := by omega
      simp only [hz,pow_zero] at hq
      omega
    simp only [KaliskiRoundLayout.data,RoundDataLayout.width,List.length_append,List.length_cons,List.length_nil]
    omega
  have hwires := inverseCompute_wires L hn hw hd hwidth ha hb ht q
  have hdis : L.coreWires.Disjoint L.out := (List.nodup_append'.mp hnd).2.2
  have frame (circ : Program) (hc : wires circ=L.coreWires.toFinset) (V : Nat)
      (s t : BasisState) (he : ∀ w,w∉wires circ → s w=t w) (hv : regValue L.out s=V) :
      regValue L.out t=V := by
    apply (regValue_congr _ _ _ ?_).trans hv
    intro w hw
    apply (he w ?_).symm
    rw [hc]
    exact fun hh => List.disjoint_left.mp hdis (List.mem_toFinset.mp hh) hw
  have hf := hcompute.1.frame (frame _ hwires.1 O)
  have hb' := hcompute.2.frame (frame _ hwires.2 (O ^^^ R))
  have hc := inverseCopy_values L hnd (ha.trans hout.symm) z cs R 0 O
  exact (hf.seq hc).seq hb'

end ECDSAAdd.Arithmetic
