import ECDSAAdd.Arithmetic.InverseLoopSupport

namespace ECDSAAdd.Arithmetic

theorem InversePhase.congr (L : InverseLoopLayout) (K A : Nat)
    (s t : BasisState) (h : InversePhase L K A s) (he : ∀ w∈L.phaseWires,t w=s w) :
    InversePhase L K A t := by
  have keep (r : List Wire) (hr : r ⊆ L.phaseWires) : regValue r t=regValue r s :=
    regValue_congr _ _ _ (fun w hw => he w (hr hw))
  refine ⟨⟨(keep L.a (fun _ hw => L.a_mem_phase hw)).trans h.1.1,?_,?_⟩,
    HalvingCounter.congr _ _ _ _ h.2 ?_⟩
  · apply (he _ ?_).trans h.1.2.1
    simp [InverseLoopLayout.phaseWires,KaliskiRoundLayout.counter,AdderLayout.wires]
  · apply (keep (L.temp++L.arithmetic.wires) ?_).trans h.1.2.2
    intro w hw
    simp only [InverseLoopLayout.phaseWires,InverseLoopLayout.extra,List.mem_append] at hw ⊢
    tauto
  · intro w hw
    apply he w
    simp only [InverseLoopLayout.halving,HalvingLayout.counter,AdderLayout.wires,List.mem_cons] at hw
    simp only [InverseLoopLayout.phaseWires,List.mem_append,List.mem_cons,
      KaliskiRoundLayout.counter,AdderLayout.wires]
    tauto

theorem InverseScaledMiddle.congr (L : InverseLoopLayout) (q : Nat) (z : KState)
    (cs : List (Bool×Bool)) (N : Nat) (s t : BasisState) (h : InverseScaledMiddle L q z cs N s)
    (he : ∀ w∈L.coreWires,t w=s w) : InverseScaledMiddle L q z cs N t := by
  have hd (w : Wire) (hw : w∈L.middle.data.wires) : t w=s w :=
    he w (L.rest_subset (List.mem_append_right _ hw))
  have hr (f : RoundField) := regValue_congr (L.middle.data.reg f) t s
    (fun w hw => hd w (L.middle.data.reg_mem f hw))
  have hs (w : Wire) (hw : w∈L.restWires) := he w (L.rest_subset hw)
  refine ⟨⟨⟨fun f => (hr f).trans (h.1.1.1 f),?_⟩,?_,?_,?_,?_⟩,
    InversePhase.congr L _ _ s t h.2 (fun w hw => he w (L.phase_subset hw))⟩
  · exact (hd _ (by simp [RoundDataLayout.wires])).trans h.1.1.2
  · exact (hs _ (by simp [InverseLoopLayout.restWires])).trans h.1.2.1
  · exact (hs _ (by simp [InverseLoopLayout.restWires])).trans h.1.2.2.1
  · exact (hs _ (by simp [InverseLoopLayout.restWires])).trans h.1.2.2.2.1
  · exact TapeValues.congr L.records cs s t h.1.2.2.2.2
      (fun w hw => hs w (by simp [InverseLoopLayout.restWires,hw]))

theorem inverseCopy_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hlen : L.a.length=L.out.length) (q : Nat) (z : KState) (cs : List (Bool×Bool)) (N O : Nat) :
    Triple (fun s => InverseScaledMiddle L q z cs N s ∧ regValue L.out s=O)
      (copyRegister none L.a L.out)
      (fun s => InverseScaledMiddle L q z cs N s ∧
        regValue L.out s=(O ^^^ (montgomeryValue q (inverseScaleFactor q z.k) N 64%q))) := by
  intro s m h
  have hn : (L.a++L.out).Nodup := by
    apply List.nodup_iff_count.mpr
    intro w
    have hh := List.nodup_iff_count.mp hnd w
    simp only [InverseLoopLayout.wires,InverseLoopLayout.extra,List.count_append] at hh ⊢
    omega
  obtain ⟨hp,he,hz⟩ := copyRegister_correct none L.a L.out hlen hn (by simp) s m
  have hdis : L.coreWires.Disjoint L.out := (List.nodup_append'.mp hnd).2.2
  refine ⟨hp,InverseScaledMiddle.congr L q z cs N s.basis _ h.1 ?_,?_⟩
  · intro w hw; exact he w (List.disjoint_left.mp hdis hw)
  · simpa only [copyValue,h.2,show regValue L.a s.basis=montgomeryValue q (inverseScaleFactor q z.k) N 64%q from h.1.2.1.1] using hz

/-- 保留初始化数据，XOR写入规范逆元，再清除全部第一阶段与缩放历史。 -/
theorem inverseLoop_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a O : Nat) (hq : q<2^256) (ho : q%16=15) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a) :
    Triple (fun s => InverseInitial L q a s ∧ regValue L.out s=O) (inverseLoop L q)
      (fun s => InverseInitial L q a s ∧ regValue L.out s=(O ^^^ kaliskiInverse q a 256)) := by
  let z := kaliskiStep^[512] (kaliskiInit q a)
  let cs := kaliskiCodes 512 (kaliskiInit q a)
  let N := (-(z.r : ZMod q)).val
  let R := montgomeryValue q (inverseScaleFactor q z.k) N 64%q
  have heq : R=kaliskiInverse q a 256 :=
    (kaliski_montgomery_scale q a ho hq hx0 hx hcop).trans
      (kaliski_correct q a 256 (by omega) hq hx0 (hx.trans hq) hcop).symm
  have hcompute := inverseCompute_values L hnd hn hw hl hm ha ht q a hq ho hx hcop
  have hd : L.first.data.width=257 := by simp [KaliskiRoundLayout.data,RoundDataLayout.width,hl]
  have hwires := inverseCompute_wires L hn hw (by omega) (by omega) (by omega) (by omega) hl hm q
  have hdis : L.coreWires.Disjoint L.out := (List.nodup_append'.mp hnd).2.2
  have frame (circ : Program) (hc : wires circ=L.usedCoreWires.toFinset) (V : Nat)
      (s t : BasisState) (he : ∀ w,w∉wires circ → s w=t w) (hv : regValue L.out s=V) :
      regValue L.out t=V := by
    apply (regValue_congr _ _ _ ?_).trans hv
    intro w hw
    apply (he w ?_).symm
    rw [hc]
    exact fun hh => List.disjoint_left.mp hdis (L.usedCoreWires_sublist.subset (List.mem_toFinset.mp hh)) hw
  have hf := hcompute.1.frame (frame _ hwires.1 O)
  have hb := hcompute.2.frame (frame _ hwires.2 (O ^^^ R))
  have hc := inverseCopy_values L hnd (ha.trans hout.symm) q z cs N O
  have hall := (hf.seq hc).seq hb
  simpa only [heq] using hall

end ECDSAAdd.Arithmetic
