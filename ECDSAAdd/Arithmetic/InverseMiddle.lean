import ECDSAAdd.Arithmetic.InverseLoopState

namespace ECDSAAdd.Arithmetic
namespace InverseLoopLayout

theorem a_mem_phase (L : InverseLoopLayout) {w : Wire} (hw : w∈L.a) : w∈L.phaseWires := by
  simp [phaseWires,extra,hw]

theorem negative_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup) :
    (L.middle.r++L.temp++L.a++L.arithmetic.wires).Nodup := by
  have ht : (L.temp++L.a++L.arithmetic.wires).Nodup := by
    apply List.nodup_iff_count.mpr
    intro w
    have hh := List.nodup_iff_count.mp (L.phase_nodup hnd) w
    simp only [phaseWires,extra,List.count_append] at hh ⊢
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
      simp only [phaseWires,extra,List.mem_append]
      tauto
  simpa only [List.append_assoc] using List.nodup_append'.mpr ⟨hr,ht,hdis⟩

end InverseLoopLayout

theorem InverseMiddle.update_a (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (z : KState) (cs : List (Bool×Bool)) (A Z : Nat) (s t : BasisState)
    (h : InverseMiddle L z cs A s) (he : ∀ w, w∉L.a → t w=s w) (hz : regValue L.a t=Z) :
    InverseMiddle L z cs Z t := by
  have hn := List.nodup_iff_count.mp (L.phase_nodup hnd)
  have hout (w : Wire) (hw : w∈L.temp++L.arithmetic.wires++[L.middle.compareCin]++L.middle.counter.wires) : w∉L.a := by
    intro hm
    have h1 := hn w
    have h2 := List.count_pos_iff.mpr hw
    have h3 := List.count_pos_iff.mpr hm
    simp only [InverseLoopLayout.phaseWires,InverseLoopLayout.extra,List.count_append] at h1 h2
    omega
  refine ⟨InverseRest.congr L z cs s t h.1 ?_,⟨hz,?_,?_⟩,HalvingCounter.congr _ _ _ _ h.2.2 ?_⟩
  · intro w hw
    exact he w (fun hh => List.disjoint_left.mp (L.rest_phase_disjoint hnd) hw (L.a_mem_phase hh))
  · apply (he _ (hout _ ?_)).trans h.2.1.2.1
    simp [KaliskiRoundLayout.counter,AdderLayout.wires]
  · exact (regValue_congr _ _ _ (fun w hw => he w (hout w (by simp only [List.mem_append] at hw ⊢; tauto)))).trans h.2.1.2.2
  · intro w hw
    apply he w (hout w ?_)
    simp only [InverseLoopLayout.halving,HalvingLayout.counter,AdderLayout.wires,List.mem_cons] at hw
    simp only [List.mem_append,KaliskiRoundLayout.counter,AdderLayout.wires,List.mem_cons]
    tauto

theorem inverseNegative_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hw : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1) (ht : L.temp.length=L.arithmetic.width+1)
    (q : Nat) (z : KState) (cs : List (Bool×Bool)) (A : Nat)
    (hq0 : 0<q) (hq : q<2^L.arithmetic.width) (hr : z.r<2*q) :
    Triple (InverseMiddle L z cs A)
      (negativeInit L.arithmetic q L.middle.r L.temp L.a)
      (InverseMiddle L z cs (A ^^^ (-(z.r : ZMod q)).val)) := by
  intro s m h
  have hlen : L.middle.r.length=L.arithmetic.width+1 := by
    change (L.middle.data.reg .r).length = _
    rw [L.middle.data.reg_length,InverseLoopLayout.middle,loopEnd_data,hw]
  have hR : regValue L.middle.r s.basis=z.r := h.1.1.1 .r
  have he := (InverseMiddle.iff L z cs A s.basis).mp h
  obtain ⟨hp,hkeep,hval⟩ := negativeInit_correct L.arithmetic q L.middle.r L.temp L.a
    (L.negative_nodup hnd) hlen ht ha hq0 hq s m (by simpa [hR] using hr) he.2.2.2.1 he.2.2.2.2
  exact ⟨hp,InverseMiddle.update_a L hnd z cs A _ s.basis _ h hkeep
    (by simpa [hR,he.2.2.1,negativeInit_value q z.r hq0] using hval)⟩

/-- 借用的模算术工作线在减半入口均为零。 -/
theorem InversePhase.halving (L : InverseLoopLayout) (K A : Nat) (s : BasisState)
    (h : InversePhase L K A s) : HalvingValues L.halving K A false false s := by
  have hz (w : Wire) (hw : w ∈ L.arithmetic.wires) : s w=false :=
    (regValue_zero _ _).mp h.1.2.2 w (List.mem_append_right _ hw)
  have hr (f : ModField) {w : Wire} (hw : w ∈ L.arithmetic.reg f) : s w=false :=
    hz w (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (L.arithmetic.reg_mem f hw)))
  refine ⟨h.1.1,hz _ (by simp [InverseLoopLayout.halving,ModLayout.wires]),h.1.2.1,
    hz _ (by simp [InverseLoopLayout.halving,ModLayout.wires]),?_,?_,?_,h.2⟩
  · exact (regValue_zero _ _).mpr (fun _ hw => hr .modulus hw)
  · apply (regValue_zero _ _).mpr
    intro w hw
    apply hr .carrySum
    simpa [InverseLoopLayout.halving,ModLayout.reg,ModLayout.bits,ModLayout.lowReg,ModBit.get] using
      (List.mem_append_left [L.arithmetic.high.carrySum] hw)
  · apply hr .carrySum
    simp [InverseLoopLayout.halving,ModLayout.reg,ModLayout.bits,ModBit.get]

/-- 部分工作区的清零与程序外线路保持，恢复整个求逆阶段断言。 -/
theorem InversePhase.of_halving (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (K A Z : Nat) (s t : BasisState) (h : InversePhase L K A s)
    (hv : HalvingValues L.halving K Z false false t)
    (he : ∀ w, w∉L.halving.wires → t w=s w) : InversePhase L K Z t := by
  refine ⟨⟨hv.data,hv.active,?_⟩,hv.counter⟩
  apply (regValue_zero _ _).mpr
  intro w hw
  have hcounter : w∉L.halving.counter.wires := by
    intro hh
    have hn := List.nodup_iff_count.mp (L.phase_nodup hnd) w
    have h1 := List.count_pos_iff.mpr hw
    have h2 := List.count_pos_iff.mpr hh
    simp only [InverseLoopLayout.phaseWires,InverseLoopLayout.extra,InverseLoopLayout.halving,
      HalvingLayout.counter,KaliskiRoundLayout.counter,AdderLayout.wires,List.count_append,List.count_cons,List.count_nil] at hn h1 h2
    omega
  have hdata : w∉L.halving.data := by
    intro hh
    have hn := List.nodup_iff_count.mp (L.phase_nodup hnd) w
    have h1 := List.count_pos_iff.mpr hw
    have h2 := List.count_pos_iff.mpr hh
    simp only [InverseLoopLayout.phaseWires,InverseLoopLayout.extra,InverseLoopLayout.halving,List.count_append] at hn h1 h2
    omega
  by_cases hm : w∈L.halving.wires
  · have hc : regValue L.halving.carry t=0 := (L.halving.carry_zero t).mpr ⟨hv.chain,hv.top⟩
    simp only [HalvingLayout.wires,List.mem_cons,List.mem_append] at hm
    rcases hm with hact|hflag|hcin|((hdat|hconst)|hcarry)|hctr
    · exact hact ▸ hv.active
    · exact hflag ▸ hv.flag
    · exact hcin ▸ hv.cin
    · exact False.elim (hdata hdat)
    · exact (regValue_zero _ _).mp hv.constant w hconst
    · exact (regValue_zero _ _).mp hc w hcarry
    · exact False.elim (hcounter hctr)
  · exact (he w hm).trans ((regValue_zero _ _).mp h.1.2.2 w hw)

theorem inverseHalving_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length=L.arithmetic.width+1) (hw : L.first.counter.width=10)
    (q X : Nat) (z : KState) (cs : List (Bool×Bool))
    (hq : q<2^L.arithmetic.width) (ho : q%2=1) (hx : X<q) (hk : z.k≤512) :
    Triple (InverseMiddle L z cs X) (halveInPlace L.halving q 0 512)
      (InverseMiddle L z cs (halveFixed q z.k 512 X)) ∧
    Triple (InverseMiddle L z cs (halveFixed q z.k 512 X)) (restoreInPlace L.halving q 0 512)
      (InverseMiddle L z cs X) := by
  have hfit : 2*q ≤ 2^L.halving.data.length := by
    change 2*q ≤ 2^L.a.length
    rw [ha,pow_succ]; omega
  have hwidth := L.halving_widths ha hw
  have hh := halveInPlace_spec L.halving (L.halving_nodup hnd) hwidth q z.k 0 512 X ho hx hfit hk (by omega)
  have hval : halvingValue q z.k 0 512 X = halveFixed q z.k 512 X := by
    rw [halvingValue_eq,halveFixed_eq,Nat.sub_zero]
  rw [hval] at hh
  have hwire := halveInPlace_wires L.halving hwidth q 0 512
  simp only [show ¬(512:Nat)=0 by omega,if_false] at hwire
  have lift (circ : Program) (V W : Nat)
      (hc : wires circ=L.halving.wires.toFinset)
      (hv : Triple (HalvingValues L.halving z.k V false false) circ (HalvingValues L.halving z.k W false false)) :
      Triple (InverseMiddle L z cs V) circ (InverseMiddle L z cs W) := by
    intro s m h
    obtain ⟨hp,hv⟩ := hv s m (InversePhase.halving L z.k V s.basis h.2)
    have he (w : Wire) (hw : w∉L.halving.wires) : (run circ m s).basis w=s.basis w :=
      run_preserves_outside circ m s w (by simpa [hc] using hw)
    refine ⟨hp,InverseRest.congr L z cs s.basis _ h.1 ?_,
      InversePhase.of_halving L hnd z.k V W _ _ h.2 hv he⟩
    intro w hw
    exact he w (fun hm => List.disjoint_left.mp (L.rest_phase_disjoint hnd) hw (L.halving_subset hm))
  exact ⟨lift _ _ _ hwire.1 hh.1,lift _ _ _ hwire.2 hh.2⟩

end ECDSAAdd.Arithmetic
