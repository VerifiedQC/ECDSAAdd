import ECDSAAdd.Arithmetic.MulAdapterLayout

namespace ECDSAAdd.Arithmetic

private theorem adapter_compute (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) :
    {{ F.x=X,F.y=Y,F.out=O,F.product=0,F.unary.work=0 }} mulInto F.core p
    {{ F.x=X,F.y=Y,F.out=O,F.product=(X*Y)%p,F.unary.work=0 }} := by
  intro s m h
  obtain ⟨hf,hv⟩ := mulInto_spec F.core F.width p X Y hw.1 (F.core_nodup hnd) hp hpn hX hY
    s m ⟨⟨h.1.1.1,h.1.2⟩,h.2⟩
  have ho : regValue F.out (run (mulInto F.core p) m s).basis=O := by
    apply Eq.trans (regValue_congr _ _ _ ?_) h.1.1.2
    intro q hq
    apply mulInto_frame F.core F.width p X Y hw.1 (F.core_nodup hnd) hp hpn hX hY
      s m h.1.1.1.1 h.1.1.1.2 h.1.2 h.2 q
    intro hh
    exact List.disjoint_left.mp (F.out_disjoint hnd) (by simp only [List.mem_append]; exact Or.inl (Or.inr hh)) hq
  exact ⟨hf,⟨⟨hv.1.1,ho⟩,hv.1.2⟩,hv.2⟩

private theorem adapter_clear (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) :
    {{ F.x=X,F.y=Y,F.out=O,F.product=(X*Y)%p,F.unary.work=0 }} mulClear F.core p
    {{ F.x=X,F.y=Y,F.out=O,F.product=0,F.unary.work=0 }} := by
  intro s m h
  obtain ⟨hf,hv⟩ := mulClear_spec F.core F.width p X Y hw.1 (F.core_nodup hnd) hp hpn hX hY
    s m ⟨⟨h.1.1.1,h.1.2⟩,h.2⟩
  have ho : regValue F.out (run (mulClear F.core p) m s).basis=O := by
    apply Eq.trans (regValue_congr _ _ _ ?_) h.1.1.2
    intro q hq
    apply mulClear_frame F.core F.width p X Y hw.1 (F.core_nodup hnd) hp hpn hX hY
      s m h.1.1.1.1 h.1.1.1.2 h.1.2 h.2 q
    intro hh
    exact List.disjoint_left.mp (F.out_disjoint hnd) (by simp only [List.mem_append]; exact Or.inl (Or.inr hh)) hq
  exact ⟨hf,⟨⟨hv.1.1,ho⟩,hv.1.2⟩,hv.2⟩

private theorem adapter_copy (F : MulAdapterLayout) (X Y O V : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) :
    {{ F.x=X,F.y=Y,F.out=O,F.product=V,F.unary.work=0 }} copyRegister none F.product F.out
    {{ F.x=X,F.y=Y,F.out=(O ^^^ V),F.product=V,F.unary.work=0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hf,he,hv⟩ := copyRegister_correct none F.product F.out
    (F.product_length.trans hw.2.symm) (F.product_out_nodup hnd) (by simp) s m
  have keep (r : List Wire) (hr : ∀ q∈r, q∈F.x++F.y++F.product++F.unary.work) :
      regValue r (run (copyRegister none F.product F.out) m s).basis=regValue r s.basis :=
    regValue_congr _ _ _ (fun q hq => he q (List.disjoint_left.mp (F.out_disjoint hnd) (hr q hq)))
  have hx := keep F.x (by intro q hq; simp [hq])
  have hy := keep F.y (by intro q hq; simp [hq])
  have hz := keep F.product (by intro q hq; simp [hq])
  have hc := keep F.unary.work (by intro q hq; simp [hq])
  exact ⟨hf,⟨⟨⟨hx.trans h.1.1.1.1,hy.trans h.1.1.1.2⟩,
    by simpa only [copyValue,h.1.1.2,h.1.2] using hv⟩,hz.trans h.1.2⟩,hc.trans h.2⟩

private theorem adapter_modular (F : MulAdapterLayout) (p X Y O V : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : 0<p) (hpn : p<2^F.width)
    (hV : V≤p) (hO : O<p) :
    ({{ F.x=X,F.y=Y,F.out=O,F.product=V,F.unary.work=0 }} modAddInPlace F.addView p
     {{ F.x=X,F.y=Y,F.out=(O+V)%p,F.product=V,F.unary.work=0 }}) ∧
    ({{ F.x=X,F.y=Y,F.out=O,F.product=V,F.unary.work=0 }} modSubInPlace F.addView p
     {{ F.x=X,F.y=Y,F.out=(O+p-V)%p,F.product=V,F.unary.work=0 }}) := by
  have hw' := F.add_widths hw
  have hn' := F.add_nodup hw hnd
  have he := F.add_ports hw
  have ha := modAddInPlace_spec F.addView F.width p V O hw' hn' hp hpn hV hO
  have hs := modSubInPlace_spec F.addView F.width p V O hw' hn' hp hpn hV hO
  simp only [he.1,he.2.1,he.2.2] at ha hs
  constructor
  · intro s m h
    obtain ⟨hf,hv⟩ := ha s m ⟨⟨h.1.2,h.1.1.2⟩,h.2⟩
    have keep (q : Wire) (hq : q∈F.x++F.y) : (run (modAddInPlace F.addView p) m s).basis q=s.basis q := by
      apply modAddInPlace_frame F.addView F.width p V O hw' hn' hp hpn hV hO s m
        (by simpa only [he.1] using h.1.2) (by simpa only [he.2.1] using h.1.1.2)
        (by simpa only [he.2.2] using h.2) q
      rw [he.2.1]
      exact List.disjoint_left.mp (F.out_disjoint hnd) (by simp only [List.mem_append] at hq ⊢; tauto)
    exact ⟨hf,⟨⟨⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1.2⟩,hv.1.2⟩,hv.1.1⟩,hv.2⟩
  · intro s m h
    obtain ⟨hf,hv⟩ := hs s m ⟨⟨h.1.2,h.1.1.2⟩,h.2⟩
    have keep (q : Wire) (hq : q∈F.x++F.y) : (run (modSubInPlace F.addView p) m s).basis q=s.basis q := by
      apply modSubInPlace_frame F.addView F.width p V O hw' hn' hp hpn hV hO s m
        (by simpa only [he.1] using h.1.2) (by simpa only [he.2.1] using h.1.1.2)
        (by simpa only [he.2.2] using h.2) q
      rw [he.2.1]
      exact List.disjoint_left.mp (F.out_disjoint hnd) (by simp only [List.mem_append] at hq ⊢; tauto)
    exact ⟨hf,⟨⟨⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1.2⟩,hv.1.2⟩,hv.1.1⟩,hv.2⟩

private theorem adapter_zero_work (F : MulAdapterLayout) (s : BasisState) :
    regValue F.work s=0 ↔ regValue F.product s=0 ∧ regValue F.unary.work s=0 := by
  simp only [MulAdapterLayout.work,regValue_zero,List.mem_append]
  aesop

/-- 任意初值输出的 XOR 适配器，临时积和 scratch 全部清零。 -/
theorem mulXor_spec (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) :
    {{ F.x=X,F.y=Y,F.out=O,F.work=0 }} mulXor F p
    {{ F.x=X,F.y=Y,F.out=(O ^^^ ((X*Y)%p)),F.work=0 }} := by
  have h := ((adapter_compute F p X Y O hw hnd hp hpn hX hY).seq
    (adapter_copy F X Y O ((X*Y)%p) hw hnd)).seq
    (adapter_clear F p X Y (O ^^^ ((X*Y)%p)) hw hnd hp hpn hX hY)
  apply h.conseq
  · intro s h
    have hz := (adapter_zero_work F s).mp h.2
    exact ⟨⟨h.1,hz.1⟩,hz.2⟩
  · intro s h
    exact ⟨h.1.1,(adapter_zero_work F s).mpr ⟨h.1.2,h.2⟩⟩

/-- 规范输出上的模乘加。 -/
theorem mulAdd_spec (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) (hO : O<p) :
    {{ F.x=X,F.y=Y,F.out=O,F.work=0 }} mulAdd F p
    {{ F.x=X,F.y=Y,F.out=(O+(X*Y)%p)%p,F.work=0 }} := by
  have hp0 : 0<p := by omega
  have h := ((adapter_compute F p X Y O hw hnd hp hpn hX hY).seq
    (adapter_modular F p X Y O ((X*Y)%p) hw hnd hp0 hpn (Nat.le_of_lt (Nat.mod_lt _ hp0)) hO).1).seq
    (adapter_clear F p X Y ((O+(X*Y)%p)%p) hw hnd hp hpn hX hY)
  apply h.conseq
  · intro s h
    have hz := (adapter_zero_work F s).mp h.2
    exact ⟨⟨h.1,hz.1⟩,hz.2⟩
  · intro s h
    exact ⟨h.1.1,(adapter_zero_work F s).mpr ⟨h.1.2,h.2⟩⟩

/-- 规范输出上的模乘减。 -/
theorem mulSub_spec (F : MulAdapterLayout) (p X Y O : Nat)
    (hw : F.Widths) (hnd : F.wires.Nodup) (hp : p%2=1) (hpn : p<2^F.width)
    (hX : X<p) (hY : Y<2^F.width) (hO : O<p) :
    {{ F.x=X,F.y=Y,F.out=O,F.work=0 }} mulSub F p
    {{ F.x=X,F.y=Y,F.out=(O+p-(X*Y)%p)%p,F.work=0 }} := by
  have hp0 : 0<p := by omega
  have h := ((adapter_compute F p X Y O hw hnd hp hpn hX hY).seq
    (adapter_modular F p X Y O ((X*Y)%p) hw hnd hp0 hpn (Nat.le_of_lt (Nat.mod_lt _ hp0)) hO).2).seq
    (adapter_clear F p X Y ((O+p-(X*Y)%p)%p) hw hnd hp hpn hX hY)
  apply h.conseq
  · intro s h
    have hz := (adapter_zero_work F s).mp h.2
    exact ⟨⟨h.1,hz.1⟩,hz.2⟩
  · intro s h
    exact ⟨h.1.1,(adapter_zero_work F s).mpr ⟨h.1.2,h.2⟩⟩

end ECDSAAdd.Arithmetic
