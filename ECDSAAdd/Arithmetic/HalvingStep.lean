import ECDSAAdd.Arithmetic.HalvingLoop

namespace ECDSAAdd.Arithmetic

theorem PhaseCounter.congr (L : AdderLayout) (K : Nat) (s t : BasisState)
    (h : PhaseCounter L K s) (he : ∀ w ∈ L.wires, t w = s w) : PhaseCounter L K t := by
  have keep (r : List Wire) (hr : r ⊆ L.wires) : regValue r t = regValue r s :=
    regValue_congr _ _ _ (fun w hw => he w (hr hw))
  exact ⟨(keep L.x L.reg_subset.1).trans h.1,
    (keep L.y L.reg_subset.2.1).trans h.2.1,
    (he L.cin (by simp [AdderLayout.wires])).trans h.2.2.1,
    (keep L.out L.reg_subset.2.2.1).trans h.2.2.2.1,
    (keep L.carry L.reg_subset.2.2.2).trans h.2.2.2.2⟩

theorem phaseActive_values (L : HalvingLoopLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i K A B : Nat) (C : Bool) (hi : i<512) (hk : K≤512) :
    Triple (PhaseValues L K A B C) (phaseActive L i)
      (PhaseValues L K A B (C ^^ decide (i<K))) := by
  intro s m h
  have hn := L.active_nodup hnd
  have hs : s.basis L.data.active=C := h.1.2.2.1
  have hx := h.2.1
  have hy := h.2.2.1
  have hc := h.2.2.2.1
  have ho := h.2.2.2.2.1
  have hcarry := h.2.2.2.2.2
  obtain ⟨hp,hv⟩ := counterActiveXor_spec L.counter (L.counterLow.map AddBit.out)
    L.counterHigh.out L.data.active hn L.counter_out hw K i C hk hi s m
    ⟨⟨⟨⟨⟨hs,hx⟩,hy⟩,hc⟩,ho⟩,hcarry⟩
  have he := counterActiveXor_frame L.counter (L.counterLow.map AddBit.out)
    L.counterHigh.out L.data.active hn L.counter_out hw i K hi hk C s m hs hx hy hc ho hcarry
  have hdn := (List.nodup_cons.mp (List.nodup_append'.mp hnd).1).1
  have keep (r : List Wire) (hr : r ⊆ L.data.a ++ L.data.temp ++ L.data.b ++ L.data.arithmetic.wires) :
      regValue r (run (phaseActive L i) m s).basis = regValue r s.basis := by
    apply regValue_congr
    intro w hh
    exact he w (fun heq => hdn (heq ▸ hr hh))
  refine ⟨hp, ⟨(keep L.data.a (by intro w hh; simp [hh])).trans h.1.1,
    (keep L.data.b (by intro w hh; simp [hh])).trans h.1.2.1,
    hv.1.1.1.1.1, (keep L.data.work ?_).trans h.1.2.2.2⟩,
    hv.1.1.1.1.2, hv.1.1.1.2, hv.1.1.2, hv.1.2, hv.2⟩
  intro w hh
  simp only [HalveLayout.work,List.mem_append] at hh ⊢
  tauto

theorem phaseRound_values (L : HalvingLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1)
    (q X K : Nat) (C : Bool) (hq : q<2^L.data.arithmetic.width) (ho : q%2=1) (hx : X<q) :
    Triple (PhaseValues L K X 0 C) (halveRound L.data q)
      (PhaseValues L K 0 (if C then halveMod q X else X) C) ∧
    Triple (PhaseValues L K 0 (if C then halveMod q X else X) C) (halveUnround L.data q)
      (PhaseValues L K X 0 C) := by
  have hn := List.nodup_append'.mp hnd
  have hh := halveRound_values L.data hn.1 ha hb ht q X C hq ho hx
  have hw := halveRound_wires L.data ha hb ht q
  have keep (circ : Program) (hwire : wires circ = L.data.wires.toFinset) :
      ∀ (s t : BasisState), (∀ w, w ∉ wires circ → s w = t w) →
        PhaseCounter L.counter K s → PhaseCounter L.counter K t := by
    intro s t he h
    apply PhaseCounter.congr L.counter K s t h
    intro w hm
    apply (he w ?_).symm
    rw [hwire]
    exact fun h => List.disjoint_left.mp hn.2.2 (List.mem_toFinset.mp h) hm
  exact ⟨hh.1.frame (keep _ hw.1),hh.2.frame (keep _ hw.2)⟩

theorem halvingStep_values (L : HalvingLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1) (hw : L.counter.width=10)
    (q X K i : Nat) (hq : q<2^L.data.arithmetic.width) (ho : q%2=1)
    (hx : X<q) (hk : K≤512) (hi : i<512) :
    Triple (PhaseValues L K X 0 false) (halvingStep L q i)
      (PhaseValues L K 0 (if i<K then halveMod q X else X) false) ∧
    Triple (PhaseValues L K 0 (if i<K then halveMod q X else X) false) (halvingUnstep L q i)
      (PhaseValues L K X 0 false) := by
  let C := decide (i<K)
  let Y := if i<K then halveMod q X else X
  have h0 : Triple (PhaseValues L K X 0 false) (phaseActive L i) (PhaseValues L K X 0 C) := by
    simpa [C] using phaseActive_values L hnd hw i K X 0 false hi hk
  have h1 := phaseRound_values L hnd ha hb ht q X K C hq ho hx
  have h2 : Triple (PhaseValues L K 0 Y C) (phaseActive L i) (PhaseValues L K 0 Y false) := by
    simpa [C] using phaseActive_values L hnd hw i K 0 Y C hi hk
  have h3 : Triple (PhaseValues L K 0 Y false) (phaseActive L i) (PhaseValues L K 0 Y C) := by
    simpa [C] using phaseActive_values L hnd hw i K 0 Y false hi hk
  have h4 : Triple (PhaseValues L K X 0 C) (phaseActive L i) (PhaseValues L K X 0 false) := by
    simpa [C] using phaseActive_values L hnd hw i K X 0 C hi hk
  simp [C] at h1
  exact ⟨(h0.seq h1.1).seq h2,(h3.seq h1.2).seq h4⟩

end ECDSAAdd.Arithmetic
