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

end ECDSAAdd.Arithmetic
