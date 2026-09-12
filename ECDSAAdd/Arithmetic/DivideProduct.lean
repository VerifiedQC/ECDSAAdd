import ECDSAAdd.Arithmetic.DivideSupport

namespace ECDSAAdd.Arithmetic

private theorem divideProduct_compute (F : MulAdapterLayout) (c : Wire) (X Y Z : Nat) (B : Bool)
    (hw : F.Widths) (hnd : (c::F.wires).Nodup) (hX : X<p) (hY : Y<2^F.width)
    (hpn : p<2^F.width) :
    {{ c=B,F.x=X,F.y=Y,F.out=Z,F.product=0,F.unary.work=0 }} mulInto F.core p
    {{ c=B,F.x=X,F.y=Y,F.out=Z,F.product=(X*Y)%p,F.unary.work=0 }} := by
  have hn := (List.nodup_cons.mp hnd).2
  have hcnot : c∉F.product := by
    intro h; exact (List.nodup_cons.mp hnd).1 (by simp [MulAdapterLayout.wires,MulAdapterLayout.work,h])
  intro s m h
  rcases h with ⟨⟨⟨⟨⟨hb,hx⟩,hy⟩,hz⟩,hp⟩,hs⟩
  obtain ⟨hf,hv⟩ := mulInto_spec F.core F.width p X Y hw.1 (F.core_nodup hn)
    (by norm_num [p]) hpn hX hY s m ⟨⟨⟨hx,hy⟩,hp⟩,hs⟩
  have keep := mulInto_frame F.core F.width p X Y hw.1 (F.core_nodup hn)
    (by norm_num [p]) hpn hX hY s m hx hy hp hs
  have ho : regValue F.out (run (mulInto F.core p) m s).basis=Z := by
    apply Eq.trans (regValue_congr _ _ _ ?_) hz
    intro q hq
    apply keep q
    intro hh
    change q∈F.product at hh
    exact List.disjoint_left.mp (F.out_disjoint hn) (by simp [hh]) hq
  exact ⟨hf,⟨⟨⟨⟨⟨(keep c hcnot).trans hb,hv.1.1.1⟩,hv.1.1.2⟩,ho⟩,hv.1.2⟩,hv.2⟩⟩

private theorem divideProduct_clear (F : MulAdapterLayout) (c : Wire) (X Y Z : Nat) (B : Bool)
    (hw : F.Widths) (hnd : (c::F.wires).Nodup) (hX : X<p) (hY : Y<2^F.width)
    (hpn : p<2^F.width) :
    {{ c=B,F.x=X,F.y=Y,F.out=Z,F.product=(X*Y)%p,F.unary.work=0 }} mulClear F.core p
    {{ c=B,F.x=X,F.y=Y,F.out=Z,F.product=0,F.unary.work=0 }} := by
  have hn := (List.nodup_cons.mp hnd).2
  have hcnot : c∉F.product := by
    intro h; exact (List.nodup_cons.mp hnd).1 (by simp [MulAdapterLayout.wires,MulAdapterLayout.work,h])
  intro s m h
  rcases h with ⟨⟨⟨⟨⟨hb,hx⟩,hy⟩,hz⟩,hp⟩,hs⟩
  obtain ⟨hf,hv⟩ := mulClear_spec F.core F.width p X Y hw.1 (F.core_nodup hn)
    (by norm_num [p]) hpn hX hY s m ⟨⟨⟨hx,hy⟩,hp⟩,hs⟩
  have keep := mulClear_frame F.core F.width p X Y hw.1 (F.core_nodup hn)
    (by norm_num [p]) hpn hX hY s m hx hy hp hs
  have ho : regValue F.out (run (mulClear F.core p) m s).basis=Z := by
    apply Eq.trans (regValue_congr _ _ _ ?_) hz
    intro q hq
    apply keep q
    intro hh
    change q∈F.product at hh
    exact List.disjoint_left.mp (F.out_disjoint hn) (by simp [hh]) hq
  exact ⟨hf,⟨⟨⟨⟨⟨(keep c hcnot).trans hb,hv.1.1.1⟩,hv.1.1.2⟩,ho⟩,hv.1.2⟩,hv.2⟩⟩

private theorem divideProduct_modular (F : MulAdapterLayout) (c : Wire) (X Y Z V : Nat) (B : Bool)
    (hw : F.Widths) (hnd : (c::F.wires).Nodup) (hpn : p<2^F.width) (hV : V≤p) (hZ : Z<p) :
    ({{ c=B,F.x=X,F.y=Y,F.out=Z,F.product=V,F.unary.work=0 }} controlledModAdd c F.addView p
     {{ c=B,F.x=X,F.y=Y,F.out=(if B then (Z+V)%p else Z),F.product=V,F.unary.work=0 }}) ∧
    ({{ c=B,F.x=X,F.y=Y,F.out=Z,F.product=V,F.unary.work=0 }} controlledModSub c F.addView p
     {{ c=B,F.x=X,F.y=Y,F.out=(if B then (Z+p-V)%p else Z),F.product=V,F.unary.work=0 }}) := by
  have hn := (List.nodup_cons.mp hnd).2
  have hna : (c::F.addView.wires).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have h := List.nodup_iff_count.mp hnd q
    have he := F.add_ports hw
    change (c::F.addView.a++F.addView.z++F.addView.work).count q≤1
    rw [he.1,he.2.1,he.2.2]
    simp only [MulAdapterLayout.wires,MulAdapterLayout.work,List.count_cons,List.count_append] at h ⊢
    omega
  have he := F.add_ports hw
  have hp : 0<p := by norm_num [p]
  constructor
  · intro s m h
    rcases h with ⟨⟨⟨⟨⟨hb,hx⟩,hy⟩,hz⟩,hv⟩,hs⟩
    have ha := controlledModAdd_spec c F.addView F.width p V Z B (F.add_widths hw) hna hp hpn hV hZ
    simp only [he.1,he.2.1,he.2.2] at ha
    obtain ⟨hf,hpost⟩ := ha s m ⟨⟨⟨hb,hv⟩,hz⟩,hs⟩
    have keep (q : Wire) (hq : q∈F.x++F.y) :
        (run (controlledModAdd c F.addView p) m s).basis q=s.basis q := by
      apply controlledModAdd_frame c F.addView F.width p V Z B (F.add_widths hw) hna hp hpn hV hZ s m hb
        (by simpa only [he.1] using hv) (by simpa only [he.2.1] using hz)
        (by simpa only [he.2.2] using hs) q
      rw [he.2.1]
      exact List.disjoint_left.mp (F.out_disjoint hn) (by simp only [List.mem_append] at hq ⊢; tauto)
    exact ⟨hf,⟨⟨⟨⟨⟨hpost.1.1.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans hx⟩,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans hy⟩,
      hpost.1.2⟩,hpost.1.1.2⟩,hpost.2⟩⟩
  · intro s m h
    rcases h with ⟨⟨⟨⟨⟨hb,hx⟩,hy⟩,hz⟩,hv⟩,hs⟩
    have ha := controlledModSub_spec c F.addView F.width p V Z B (F.add_widths hw) hna hp hpn hV hZ
    simp only [he.1,he.2.1,he.2.2] at ha
    obtain ⟨hf,hpost⟩ := ha s m ⟨⟨⟨hb,hv⟩,hz⟩,hs⟩
    have keep (q : Wire) (hq : q∈F.x++F.y) :
        (run (controlledModSub c F.addView p) m s).basis q=s.basis q := by
      apply controlledModSub_frame c F.addView F.width p V Z B (F.add_widths hw) hna hp hpn hV hZ s m hb
        (by simpa only [he.1] using hv) (by simpa only [he.2.1] using hz)
        (by simpa only [he.2.2] using hs) q
      rw [he.2.1]
      exact List.disjoint_left.mp (F.out_disjoint hn) (by simp only [List.mem_append] at hq ⊢; tauto)
    exact ⟨hf,⟨⟨⟨⟨⟨hpost.1.1.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans hx⟩,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans hy⟩,
      hpost.1.2⟩,hpost.1.1.2⟩,hpost.2⟩⟩

/-- 除法的三段乘积组合：积暂存后受控累加，再以前向mulClear清理。 -/
theorem divideProduct_spec (F : MulAdapterLayout) (c : Wire) (X Y Z : Nat) (B : Bool)
    (hw : F.Widths) (hnd : (c::F.wires).Nodup) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) (hZ : Z<p) :
    ({{ c=B,F.x=X,F.y=Y,F.out=Z,F.work=0 }}
      (mulInto F.core p ++ controlledModAdd c F.addView p ++ mulClear F.core p)
     {{ c=B,F.x=X,F.y=Y,F.out=(if B then (Z+(X*Y)%p)%p else Z),F.work=0 }}) ∧
    ({{ c=B,F.x=X,F.y=Y,F.out=Z,F.work=0 }}
      (mulInto F.core p ++ controlledModSub c F.addView p ++ mulClear F.core p)
     {{ c=B,F.x=X,F.y=Y,F.out=(if B then (Z+p-(X*Y)%p)%p else Z),F.work=0 }}) := by
  have hp : 0<p := by norm_num [p]
  have hcompute := divideProduct_compute F c X Y Z B hw hnd hX hY hpn
  have hmid := divideProduct_modular F c X Y Z ((X*Y)%p) B hw hnd hpn (Nat.le_of_lt (Nat.mod_lt _ hp)) hZ
  have hz (s : BasisState) : regValue F.work s=0 ↔ regValue F.product s=0 ∧ regValue F.unary.work s=0 := by
    simp only [MulAdapterLayout.work,regValue_zero,List.mem_append,or_imp,forall_and]
  constructor
  · have h := (hcompute.seq hmid.1).seq (divideProduct_clear F c X Y (if B then (Z+(X*Y)%p)%p else Z) B hw hnd hX hY hpn)
    apply h.conseq
    · intro s h
      have hc := (hz s).mp h.2
      exact ⟨⟨h.1,hc.1⟩,hc.2⟩
    · intro s h
      exact ⟨h.1.1,(hz s).mpr ⟨h.1.2,h.2⟩⟩
  · have h := (hcompute.seq hmid.2).seq (divideProduct_clear F c X Y (if B then (Z+p-(X*Y)%p)%p else Z) B hw hnd hX hY hpn)
    apply h.conseq
    · intro s h
      have hc := (hz s).mp h.2
      exact ⟨⟨h.1,hc.1⟩,hc.2⟩
    · intro s h
      exact ⟨h.1.1,(hz s).mpr ⟨h.1.2,h.2⟩⟩

/-- 三段乘积只改变累加输出，所有输入、历史候选线和工作位逐线保持。 -/
theorem divideProduct_frame (F : MulAdapterLayout) (c : Wire) (X Y Z : Nat) (B : Bool)
    (hw : F.Widths) (hnd : (c::F.wires).Nodup) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) (hZ : Z<p) (s : State) (m : List Bool)
    (hb : s.basis c=B) (hx : regValue F.x s.basis=X) (hy : regValue F.y s.basis=Y)
    (hz : regValue F.out s.basis=Z) (hc : regValue F.work s.basis=0)
    (q : Wire) (hq : q∉F.out) :
    (run (mulInto F.core p ++ controlledModAdd c F.addView p ++ mulClear F.core p) m s).basis q=s.basis q ∧
    (run (mulInto F.core p ++ controlledModSub c F.addView p ++ mulClear F.core p) m s).basis q=s.basis q := by
  have ht := divideProduct_spec F c X Y Z B hw hnd hpn hX hY hZ
  have hn : 0<F.width := by
    by_contra hh
    have hh' : F.width=0 := by omega
    simp [hh'] at hpn
    norm_num [p] at hpn
  have hs := divideProduct_wires F c hw hn
  have keep (P : Program) (hp : wires P=(c::F.wires).toFinset)
      (hb' : (run P m s).basis c=B)
      (hx' : regValue F.x (run P m s).basis=X)
      (hy' : regValue F.y (run P m s).basis=Y)
      (hc' : regValue F.work (run P m s).basis=0) : (run P m s).basis q=s.basis q := by
    by_cases hqc : q=c
    · subst q; exact hb'.trans hb.symm
    by_cases hqx : q∈F.x
    · exact (regValue_eq_iff _ _ _).mp (hx'.trans hx.symm) q hqx
    by_cases hqy : q∈F.y
    · exact (regValue_eq_iff _ _ _).mp (hy'.trans hy.symm) q hqy
    by_cases hqw : q∈F.work
    · exact (regValue_eq_iff _ _ _).mp (hc'.trans hc.symm) q hqw
    apply run_preserves_outside
    rw [hp]
    simp [MulAdapterLayout.wires,hqc,hqx,hqy,hqw,hq]
  obtain ⟨_,ha⟩ := ht.1 s m ⟨⟨⟨⟨hb,hx⟩,hy⟩,hz⟩,hc⟩
  obtain ⟨_,hb'⟩ := ht.2 s m ⟨⟨⟨⟨hb,hx⟩,hy⟩,hz⟩,hc⟩
  exact ⟨keep _ hs.1 ha.1.1.1.1 ha.1.1.1.2 ha.1.1.2 ha.2,
    keep _ hs.2 hb'.1.1.1.1 hb'.1.1.1.2 hb'.1.1.2 hb'.2⟩

/-- 归还借用的输出高位后，乘积组合只修改256位acc；整个求逆历史逐线保持。 -/
theorem divideProduct_correct (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (X Y Z : Nat) (B : Bool) (hX : X<p) (hY : Y<2^256) (hZ : Z<p)
    (s : State) (m : List Bool) (hb : s.basis L.control=B)
    (hx : regValue L.inner.a s.basis=X) (hy : regValue L.numerator s.basis=Y)
    (hz : regValue L.acc s.basis=Z) (hc : regValue L.borrow s.basis=0) :
    ((run (mulInto L.multiply.core p ++ controlledModAdd L.control L.multiply.addView p ++ mulClear L.multiply.core p) m s).phase=s.phase ∧
      regValue L.acc (run (mulInto L.multiply.core p ++ controlledModAdd L.control L.multiply.addView p ++ mulClear L.multiply.core p) m s).basis=
        (if B then (Z+(X*Y)%p)%p else Z) ∧
      ∀ q∉L.acc, (run (mulInto L.multiply.core p ++ controlledModAdd L.control L.multiply.addView p ++ mulClear L.multiply.core p) m s).basis q=s.basis q) ∧
    ((run (mulInto L.multiply.core p ++ controlledModSub L.control L.multiply.addView p ++ mulClear L.multiply.core p) m s).phase=s.phase ∧
      regValue L.acc (run (mulInto L.multiply.core p ++ controlledModSub L.control L.multiply.addView p ++ mulClear L.multiply.core p) m s).basis=
        (if B then (Z+p-(X*Y)%p)%p else Z) ∧
      ∀ q∉L.acc, (run (mulInto L.multiply.core p ++ controlledModSub L.control L.multiply.addView p ++ mulClear L.multiply.core p) m s).basis q=s.basis q) := by
  have hp : p<2^256 := by norm_num [p]
  have hp0 : 0<p := by norm_num [p]
  have hs : [L.borrowedBit 0]++L.multiply.work ⊆ L.borrow := by
    rw [L.multiply_borrow hw]
    exact (List.take_sublist _ _).subset
  have clean := (regValue_zero _ _).mp hc
  have h0 : s.basis (L.borrowedBit 0)=false := clean _ (hs (by simp))
  have hwork : regValue L.multiply.work s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (hs (List.mem_append_right _ hq)))
  have hout : regValue L.multiply.out s.basis=Z := by
    change regValue (L.acc++[L.borrowedBit 0]) s.basis=Z
    rw [regValue_append,hz]
    simp [regValue,h0]
  have hpn : p<2^L.multiply.width := by rw [L.multiply_width hw]; exact hp
  have hY' : Y<2^L.multiply.width := by rw [L.multiply_width hw]; exact hY
  have ht := divideProduct_spec L.multiply L.control X Y Z B (L.multiply_widths hw)
    (L.multiply_nodup hw hnd) hpn hX hY' hZ
  have hf := divideProduct_frame L.multiply L.control X Y Z B (L.multiply_widths hw)
    (L.multiply_nodup hw hnd) hpn hX hY' hZ s m hb hx hy hout hwork
  have finish (P : Program) (V : Nat) (hV : V<p)
      (hphase : (run P m s).phase=s.phase)
      (hval : regValue L.multiply.out (run P m s).basis=V)
      (hframe : ∀ q∉L.multiply.out, (run P m s).basis q=s.basis q) :
      (run P m s).phase=s.phase ∧ regValue L.acc (run P m s).basis=V ∧
        ∀ q∉L.acc, (run P m s).basis q=s.basis q := by
    have hlow := (regValue_low_iff L.acc [L.borrowedBit 0] (run P m s).basis V
      (by rw [hw.acc]; exact hV.trans hp)).mp hval
    refine ⟨hphase,hlow.1,?_⟩
    intro q hq
    by_cases he : q=L.borrowedBit 0
    · subst q
      exact ((regValue_zero _ _).mp hlow.2 _ (by simp)).trans h0.symm
    · apply hframe q
      change q∉L.acc++[L.borrowedBit 0]
      simp [hq,he]
  obtain ⟨hpa,ha⟩ := ht.1 s m ⟨⟨⟨⟨hb,hx⟩,hy⟩,hout⟩,hwork⟩
  obtain ⟨hps,hsub⟩ := ht.2 s m ⟨⟨⟨⟨hb,hx⟩,hy⟩,hout⟩,hwork⟩
  exact ⟨finish _ _ (by split <;> first | exact Nat.mod_lt _ hp0 | exact hZ) hpa ha.1.2 (fun q hq => (hf q hq).1),
    finish _ _ (by split <;> first | exact Nat.mod_lt _ hp0 | exact hZ) hps hsub.1.2 (fun q hq => (hf q hq).2)⟩

end ECDSAAdd.Arithmetic
