import ECDSAAdd.Arithmetic.CuccaroStreamedSquare

set_option maxHeartbeats 8000000

namespace ECDSAAdd.Arithmetic
namespace CuccaroStreamedSquareWideLayout

structure SourceView (L : CuccaroStreamedSquareWideLayout) (src : List Wire) : Prop where
  length : src.length=256
  count_le : ∀q,src.count q≤L.core.product.count q+L.foldPad.count q

theorem source_nodup (L : CuccaroStreamedSquareWideLayout) (hnd : L.wires.Nodup)
    (src : List Wire) (hv : L.SourceView src) : (L.source src).wires.Nodup := by
  apply List.nodup_iff_count.mpr
  intro q
  have h := List.nodup_iff_count.mp hnd q
  have hs := hv.count_le q
  simp only [wires,CuccaroStreamedSquareLayout.wires,foldPad,source,
    CuccaroNormalizedModLayout.wires,List.count_append,List.count_cons,
    List.count_nil] at h hs ⊢
  omega

private theorem source_away_out (L : CuccaroStreamedSquareWideLayout)
    (hnd : L.wires.Nodup) (src : List Wire) (hv : L.SourceView src)
    (q : Wire) (hq : q∈(L.source src).normalize.a) : q∉L.core.out := by
  intro ho
  have h := List.nodup_iff_count.mp hnd q
  have hs := hv.count_le q
  have hm := List.count_pos_iff.mpr hq
  have hout := List.count_pos_iff.mpr ho
  simp only [wires,CuccaroStreamedSquareLayout.wires,foldPad,source,
    CuccaroNormalizedModLayout.normalize,CuccaroNormalizeLayout.a,
    List.count_append,List.count_cons,List.count_nil] at h hs hm
  omega

private theorem work_away_out (L : CuccaroStreamedSquareWideLayout)
    (hnd : L.wires.Nodup) (q : Wire)
    (hq : q∈L.core.work++[L.core.productHigh,L.core.outHigh,L.core.workHigh,
      L.core.cin,L.core.normFlag,L.core.modFlag]) :
    q∉L.core.out := by
  intro ho
  have h := List.nodup_iff_count.mp hnd q
  have h1 := List.count_pos_iff.mpr hq
  have h2 := List.count_pos_iff.mpr ho
  simp only [wires,CuccaroStreamedSquareLayout.wires,List.count_append,
    List.count_cons,List.count_nil] at h h1
  omega

private theorem source_values_at_frame (L : CuccaroStreamedSquareWideLayout)
    (hnd : L.wires.Nodup) (src : List Wire) (hv : L.SourceView src)
    (base : BasisState) (S O : Nat)
    (hS : regValue src base=S) (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false)
    (s : State) (h : SquareFrame L.core.out base O s.basis) :
    CuccaroNormalizedModValues (L.source src) S O 0 false false false s.basis := by
  have keep (q : Wire) (hq : q∉L.core.out) : s.basis q=base q := h.2 q hq
  have srcv : regValue src s.basis=S := by
    rw [←hS]
    apply regValue_congr
    intro q hq
    exact keep q (L.source_away_out hnd src hv q (by
      simp [CuccaroNormalizedModLayout.normalize,CuccaroNormalizeLayout.a,
        CuccaroStreamedSquareWideLayout.source,hq]))
  have phv : s.basis L.core.productHigh=false :=
    (keep _ (L.source_away_out hnd src hv _ (by
      simp [CuccaroNormalizedModLayout.normalize,CuccaroNormalizeLayout.a,
        CuccaroStreamedSquareWideLayout.source]))).trans hph
  have workv : regValue L.core.work s.basis=0 := by
    rw [←hw0]
    apply regValue_congr
    intro q hq
    exact keep q (L.work_away_out hnd q (by simp [hq]))
  have whv : s.basis L.core.workHigh=false :=
    (keep _ (L.work_away_out hnd _ (by simp))).trans hwh
  have civ : s.basis L.core.cin=false :=
    (keep _ (L.work_away_out hnd _ (by simp))).trans hci
  have nfv : s.basis L.core.normFlag=false :=
    (keep _ (L.work_away_out hnd _ (by simp))).trans hnf
  have mfv : s.basis L.core.modFlag=false :=
    (keep _ (L.work_away_out hnd _ (by simp))).trans hmf
  have ohv : s.basis L.core.outHigh=false := by
    exact (keep _ (L.work_away_out hnd _ (by simp))).trans hoh
  have phreg : regValue [L.core.productHigh] s.basis=0 := by
    simp [regValue,phv]
  have ohreg : regValue [L.core.outHigh] s.basis=0 := by
    simp [regValue,ohv]
  have whreg : regValue [L.core.workHigh] s.basis=0 := by
    simp [regValue,whv]
  constructor
  · simp only [CuccaroStreamedSquareWideLayout.source,CuccaroNormalizedModLayout.normalize,
      CuccaroNormalizeLayout.a,regValue_append,srcv,phreg,Nat.mul_zero,Nat.add_zero]
  · simpa only [CuccaroStreamedSquareWideLayout.source,CuccaroNormalizedModLayout.modular,
      CuccaroModLayout.z,regValue_append,ohreg,Nat.mul_zero,Nat.add_zero] using h.1
  · simp only [CuccaroStreamedSquareWideLayout.source,CuccaroNormalizedModLayout.normalize,
      CuccaroNormalizeLayout.scratch,regValue_append,workv,whreg,Nat.mul_zero,Nat.add_zero]
  · exact civ
  · exact nfv
  · exact mfv

private theorem fold_frame_finish (L : CuccaroStreamedSquareWideLayout)
    (hw : L.Widths) (hnd : L.wires.Nodup) (src : List Wire) (hv : L.SourceView src)
    (base : BasisState) (S O R : Nat)
    (hR : R<SquareReduction.p)
    (hS : regValue src base=S) (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false)
    (s out : State) (hpre : SquareFrame L.core.out base O s.basis)
    (hout : CuccaroNormalizedModValues (L.source src) S R 0 false false false out.basis)
    (houtside : ∀q,q∉(L.source src).wires → out.basis q=s.basis q) :
    SquareFrame L.core.out base R out.basis := by
  have before := L.source_values_at_frame hnd src hv base S O hS hw0 hph hoh hwh hci hnf hmf s hpre
  have postZ : regValue (L.core.out++[L.core.outHigh]) out.basis=R := by
    simpa only [CuccaroStreamedSquareWideLayout.source,
      CuccaroNormalizedModLayout.modular,CuccaroModLayout.z] using hout.out
  have high0 : out.basis L.core.outHigh=false := by
    have hz := regValue_highBit L.core.out L.core.outHigh out.basis
    rw [hw.core.out,postZ] at hz
    have hp : R<2^256 := hR.trans (by
      norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c])
    cases hb : out.basis L.core.outHigh <;> simp_all <;> omega
  constructor
  · have split := regValue_append L.core.out [L.core.outHigh] out.basis
    rw [postZ] at split
    simp [regValue,high0] at split
    exact split.symm
  · intro q hq
    by_cases hm : q∈(L.source src).wires
    · by_cases ha : q∈(L.source src).normalize.a
      · exact (regValue_eq_iff _ _ _).mp (hout.source.trans before.source.symm) q ha
          |>.trans (hpre.2 q hq)
      by_cases hz : q∈(L.source src).modular.z
      · have hor : q∈L.core.out∨q=L.core.outHigh := by
          simpa [CuccaroStreamedSquareWideLayout.source,
            CuccaroNormalizedModLayout.modular,CuccaroModLayout.z] using hz
        rcases hor with hor|rfl
        · exact False.elim (hq hor)
        · exact high0.trans hoh.symm
      by_cases hwork : q∈(L.source src).normalize.scratch
      · exact (regValue_eq_iff _ _ _).mp (hout.work.trans before.work.symm) q hwork
          |>.trans (hpre.2 q hq)
      by_cases hc : q=L.core.cin
      · subst q; exact hout.cin.trans hci.symm
      by_cases hn : q=L.core.normFlag
      · subst q; exact hout.normFlag.trans hnf.symm
      by_cases hf : q=L.core.modFlag
      · subst q; exact hout.modFlag.trans hmf.symm
      exfalso
      have hnot : q∉(L.source src).wires := by
        intro hmem
        simp only [CuccaroStreamedSquareWideLayout.source,
          CuccaroNormalizedModLayout.wires,CuccaroNormalizedModLayout.normalize,
          CuccaroNormalizedModLayout.modular,CuccaroNormalizeLayout.a,
          CuccaroNormalizeLayout.scratch,CuccaroModLayout.z,List.mem_append,
          List.mem_cons,List.not_mem_nil,or_false] at ha hz hwork hmem
        tauto
      exact hnot hm
    · exact (houtside q hm).trans (hpre.2 q hq)

theorem addSource_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (src : List Wire) (hv : L.SourceView src)
    (base : BasisState) (S O : Nat) (hS : regValue src base=S)
    (hSb : S<2^256) (hO : O<SquareReduction.p)
    (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false) :
    Triple (SquareFrame L.core.out base O) (L.addSource src)
      (SquareFrame L.core.out base ((S%SquareReduction.p+O)%SquareReduction.p)) := by
  have nd := L.source_nodup hnd src hv
  have spec := cuccaroNormalizedModAdd_spec (L.source src) 256 SquareReduction.c
    SquareReduction.p S O (L.source_widths hw src hv.length) nd
    (by norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c])
    (by norm_num [SquareReduction.c]) (by norm_num [SquareReduction.c])
    (by norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c]) hSb hO
  intro s records h
  have pre := L.source_values_at_frame hnd src hv base S O hS hw0 hph hoh hwh hci hnf hmf s h
  obtain ⟨phase,post⟩ := spec s records pre
  have outside := cuccaroNormalizedModAdd_preserves_outside (L.source src) 256
    SquareReduction.c SquareReduction.p (L.source_widths hw src hv.length) s records
  refine ⟨phase,L.fold_frame_finish hw hnd src hv base S O _
    (Nat.mod_lt _ (by norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c]))
    hS hw0 hph hoh hwh hci hnf hmf
    s (run (L.addSource src) records s) h post ?_⟩
  intro q hq
  exact outside q hq

theorem subSource_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (src : List Wire) (hv : L.SourceView src)
    (base : BasisState) (S O : Nat) (hS : regValue src base=S)
    (hSb : S<2^256) (hO : O<SquareReduction.p)
    (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false) :
    Triple (SquareFrame L.core.out base O) (L.subSource src)
      (SquareFrame L.core.out base
        ((O+SquareReduction.p-(S%SquareReduction.p))%SquareReduction.p)) := by
  have nd := L.source_nodup hnd src hv
  have spec := cuccaroNormalizedModSub_spec (L.source src) 256 SquareReduction.c
    SquareReduction.p S O (L.source_widths hw src hv.length) nd
    (by norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c])
    (by norm_num [SquareReduction.c]) (by norm_num [SquareReduction.c])
    (by norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c]) hSb hO
  intro s records h
  have pre := L.source_values_at_frame hnd src hv base S O hS hw0 hph hoh hwh hci hnf hmf s h
  obtain ⟨phase,post⟩ := spec s records pre
  have outside := cuccaroNormalizedModSub_preserves_outside (L.source src) 256
    SquareReduction.c SquareReduction.p (L.source_widths hw src hv.length) s records
  refine ⟨phase,L.fold_frame_finish hw hnd src hv base S O _
    (Nat.mod_lt _ (by norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c]))
    hS hw0 hph hoh hwh hci hnf hmf
    s (run (L.subSource src) records s) h post ?_⟩
  intro q hq
  exact outside q hq

theorem productTake256_view (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths) :
    L.SourceView (L.core.product.take 256) := by
  constructor
  · simp [hw.core.product]
  · intro q
    have ht := (List.take_sublist 256 L.core.product).count_le q
    simp only [foldPad,List.count_append]
    omega

theorem rotated128_view (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths) :
    L.SourceView L.rotated128 := by
  constructor
  · simp [rotated128,hw.core.product]
  · intro q
    have he := congrArg (List.count q) (List.take_append_drop 128 L.core.product)
    have ht := (List.take_sublist 128 (L.core.product.drop 128)).count_le q
    simp only [rotated128,foldPad,List.count_append] at he ⊢
    omega

private theorem shifted_count_bound (src pad : List Wire) (j width : Nat) (q : Wire) :
    (shiftedSource src pad j width).count q≤src.count q+pad.count q := by
  have h := (List.take_sublist (width-j-src.length) (pad.drop j)).count_le q
  have he := congrArg (List.count q) (List.take_append_drop j pad)
  simp only [shiftedSource,List.count_append] at he ⊢
  omega

theorem shifted_view (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (src : List Wire) (hsrc : ∀q,src.count q≤L.core.product.count q)
    (j : Nat) (hlo : 2≤src.length) (hlen : src.length+j≤256) :
    L.SourceView (L.shifted src j) := by
  constructor
  · exact L.shifted_length hw src j hlo hlen
  · intro q
    have hs := shifted_count_bound src L.foldPad j 256 q
    have hp := hsrc q
    change (shiftedSource src L.foldPad j 256).count q≤_
    omega

theorem productDrop_count (L : CuccaroStreamedSquareWideLayout) (k : Nat) (q : Wire) :
    (L.core.product.drop k).count q≤L.core.product.count q :=
  (List.drop_sublist k L.core.product).count_le q

theorem shiftedProductDrop_view (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (k j : Nat) (hlo : 2≤(L.core.product.drop k).length)
    (hlen : (L.core.product.drop k).length+j≤256) :
    L.SourceView (L.shifted (L.core.product.drop k) j) :=
  L.shifted_view hw _ (L.productDrop_count k) j hlo hlen

theorem rotateFull_view (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (j : Nat) (hj : j≤256) :
    L.SourceView (rotateFull (L.core.product.take 256) j) := by
  constructor
  · exact rotateFull_length _ _ (by simp [hw.core.product]) hj
  · intro q
    have he := congrArg (List.count q)
      (List.take_append_drop (256-j) (L.core.product.take 256))
    have ht := (List.take_sublist 256 L.core.product).count_le q
    simp only [rotateFull,foldPad,List.count_append] at he ⊢
    omega

theorem addShifted_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (src : List Wire)
    (hsrc : ∀q,src.count q≤L.core.product.count q)
    (j : Nat) (hlo : 2≤src.length) (hlen : src.length+j≤256)
    (base : BasisState) (O : Nat) (hO : O<SquareReduction.p)
    (hpad : regValue L.foldPad base=0) (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false) :
    Triple (SquareFrame L.core.out base O) (L.addSource (L.shifted src j))
      (SquareFrame L.core.out base
        (((regValue src base*2^j)%SquareReduction.p+O)%SquareReduction.p)) := by
  have view := L.shifted_view hw src hsrc j hlo hlen
  have value := shiftedSource_value src L.foldPad j 256 (by omega)
    (by rw [L.foldPad_length hw]; omega) base hpad
  have bound : regValue src base*2^j<2^256 := by
    have hs := regValue_lt src base
    have hp : 0<2^j := by positivity
    have hm := Nat.mul_lt_mul_of_pos_right hs hp
    rw [←Nat.pow_add] at hm
    exact lt_of_lt_of_le hm (Nat.pow_le_pow_right (by decide) hlen)
  exact L.addSource_frame hw hnd _ view base _ O value bound hO hw0
    hph hoh hwh hci hnf hmf

theorem subShifted_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (src : List Wire)
    (hsrc : ∀q,src.count q≤L.core.product.count q)
    (j : Nat) (hlo : 2≤src.length) (hlen : src.length+j≤256)
    (base : BasisState) (O : Nat) (hO : O<SquareReduction.p)
    (hpad : regValue L.foldPad base=0) (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false) :
    Triple (SquareFrame L.core.out base O) (L.subSource (L.shifted src j))
      (SquareFrame L.core.out base
        ((O+SquareReduction.p-(regValue src base*2^j)%SquareReduction.p)%
          SquareReduction.p)) := by
  have view := L.shifted_view hw src hsrc j hlo hlen
  have value := shiftedSource_value src L.foldPad j 256 (by omega)
    (by rw [L.foldPad_length hw]; omega) base hpad
  have bound : regValue src base*2^j<2^256 := by
    have hs := regValue_lt src base
    have hp : 0<2^j := by positivity
    have hm := Nat.mul_lt_mul_of_pos_right hs hp
    rw [←Nat.pow_add] at hm
    exact lt_of_lt_of_le hm (Nat.pow_le_pow_right (by decide) hlen)
  exact L.subSource_frame hw hnd _ view base _ O value bound hO hw0
    hph hoh hwh hci hnf hmf

def addModValue (S O : Nat) : Nat :=
  (S%SquareReduction.p+O)%SquareReduction.p

def subModValue (S O : Nat) : Nat :=
  (O+SquareReduction.p-S%SquareReduction.p)%SquareReduction.p

def addCMinusOneValue (H O : Nat) : Nat :=
  addModValue (H*2^32)
    (addModValue (H*2^10)
      (subModValue (H*2^6) (addModValue (H*2^4) O)))

def subCMinusOneValue (H O : Nat) : Nat :=
  subModValue (H*2^32)
    (subModValue (H*2^10)
      (addModValue (H*2^6) (subModValue (H*2^4) O)))

theorem addCMinusOne_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (high : List Wire)
    (hsrc : ∀q,high.count q≤L.core.product.count q)
    (hlo : 2≤high.length) (hhi : high.length+32≤256)
    (base : BasisState) (O : Nat) (hO : O<SquareReduction.p)
    (hpad : regValue L.foldPad base=0) (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false) :
    Triple (SquareFrame L.core.out base O) (L.addCMinusOne high)
      (SquareFrame L.core.out base (addCMinusOneValue (regValue high base) O)) := by
  let H := regValue high base
  let O4 := addModValue (H*2^4) O
  let O6 := subModValue (H*2^6) O4
  let O10 := addModValue (H*2^10) O6
  let O32 := addModValue (H*2^32) O10
  have hp : 0<SquareReduction.p := by
    norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c]
  have h4 := L.addShifted_frame hw hnd high hsrc 4 hlo (by omega) base O hO
    hpad hw0 hph hoh hwh hci hnf hmf
  have h6 := L.subShifted_frame hw hnd high hsrc 6 hlo (by omega) base O4
    (Nat.mod_lt _ hp) hpad hw0 hph hoh hwh hci hnf hmf
  have h10 := L.addShifted_frame hw hnd high hsrc 10 hlo (by omega) base O6
    (Nat.mod_lt _ hp) hpad hw0 hph hoh hwh hci hnf hmf
  have h32 := L.addShifted_frame hw hnd high hsrc 32 hlo hhi base O10
    (Nat.mod_lt _ hp) hpad hw0 hph hoh hwh hci hnf hmf
  simpa [addCMinusOne,addCMinusOneValue,addModValue,subModValue,H,O4,O6,O10,O32,
    List.append_assoc] using h4.seq (h6.seq (h10.seq h32))

theorem subCMinusOne_frame (L : CuccaroStreamedSquareWideLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (high : List Wire)
    (hsrc : ∀q,high.count q≤L.core.product.count q)
    (hlo : 2≤high.length) (hhi : high.length+32≤256)
    (base : BasisState) (O : Nat) (hO : O<SquareReduction.p)
    (hpad : regValue L.foldPad base=0) (hw0 : regValue L.core.work base=0)
    (hph : base L.core.productHigh=false) (hoh : base L.core.outHigh=false)
    (hwh : base L.core.workHigh=false) (hci : base L.core.cin=false)
    (hnf : base L.core.normFlag=false) (hmf : base L.core.modFlag=false) :
    Triple (SquareFrame L.core.out base O) (L.subCMinusOne high)
      (SquareFrame L.core.out base (subCMinusOneValue (regValue high base) O)) := by
  let H := regValue high base
  let O4 := subModValue (H*2^4) O
  let O6 := addModValue (H*2^6) O4
  let O10 := subModValue (H*2^10) O6
  let O32 := subModValue (H*2^32) O10
  have hp : 0<SquareReduction.p := by
    norm_num [SquareReduction.p,SquareReduction.B,SquareReduction.c]
  have h4 := L.subShifted_frame hw hnd high hsrc 4 hlo (by omega) base O hO
    hpad hw0 hph hoh hwh hci hnf hmf
  have h6 := L.addShifted_frame hw hnd high hsrc 6 hlo (by omega) base O4
    (Nat.mod_lt _ hp) hpad hw0 hph hoh hwh hci hnf hmf
  have h10 := L.subShifted_frame hw hnd high hsrc 10 hlo (by omega) base O6
    (Nat.mod_lt _ hp) hpad hw0 hph hoh hwh hci hnf hmf
  have h32 := L.subShifted_frame hw hnd high hsrc 32 hlo hhi base O10
    (Nat.mod_lt _ hp) hpad hw0 hph hoh hwh hci hnf hmf
  simpa [subCMinusOne,subCMinusOneValue,addModValue,subModValue,H,O4,O6,O10,O32,
    List.append_assoc] using h4.seq (h6.seq (h10.seq h32))

end CuccaroStreamedSquareWideLayout
end ECDSAAdd.Arithmetic
