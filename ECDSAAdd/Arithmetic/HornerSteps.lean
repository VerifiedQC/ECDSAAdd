import ECDSAAdd.Arithmetic.HornerLayout

namespace ECDSAAdd.Arithmetic

private theorem inputs_outside (M : MulInPlaceLayout) (hnd : M.wires.Nodup)
    (q : Wire) (hq : q∈M.x++M.y) : q∉M.acc := by
  intro hh
  have h1 := List.count_pos_iff.mpr hq
  have h2 := List.count_pos_iff.mpr hh
  have h3 := List.nodup_iff_count.mp hnd q
  simp only [MulInPlaceLayout.wires,List.count_append] at h1 h3
  omega

private theorem horner_double (M : MulInPlaceLayout) (n p X Y Z : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p) :
    {{ M.x=X,M.y=Y,M.acc=Z,M.work=0 }} dblInPlace M.unary p
    {{ M.x=X,M.y=Y,M.acc=(2*Z)%p,M.work=0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hf,hv⟩ := dblInPlace_spec M.unary n p Z hw.unary (M.unary_nodup hnd) hp hpn hZ
    s m ⟨h.1.2,h.2⟩
  have keep (q : Wire) (hq : q∈M.x++M.y) :=
    (modUnary_frame M.unary n p Z hw.unary (M.unary_nodup hnd) hp hpn hZ
      s m h.1.2 h.2 q (inputs_outside M hnd q hq)).1
  exact ⟨hf,⟨⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1,
    (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.2⟩,hv.1⟩,hv.2⟩

private theorem horner_half (M : MulInPlaceLayout) (n p X Y Z : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p) :
    {{ M.x=X,M.y=Y,M.acc=Z,M.work=0 }} halfInPlace M.unary p
    {{ M.x=X,M.y=Y,M.acc=halveMod p Z,M.work=0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hf,hv⟩ := halfInPlace_spec M.unary n p Z hw.unary (M.unary_nodup hnd) hp hpn hZ
    s m ⟨h.1.2,h.2⟩
  have keep (q : Wire) (hq : q∈M.x++M.y) :=
    (modUnary_frame M.unary n p Z hw.unary (M.unary_nodup hnd) hp hpn hZ
      s m h.1.2 h.2 q (inputs_outside M hnd q hq)).2
  exact ⟨hf,⟨⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1,
    (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.2⟩,hv.1⟩,hv.2⟩

private theorem horner_add (M : MulInPlaceLayout) (n p X Y Z i : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hX : X<p) (hZ : Z<p) (hi : i<n) :
    {{ M.x=X,M.y=Y,M.acc=Z,M.work=0 }} controlledModAdd (M.bit i) M.addView p
    {{ M.x=X,M.y=Y,M.acc=(Z+X*((Y/2^i)%2))%p,M.work=0 }} := by
  have hi' : i<M.y.length := by simpa only [hw.y] using hi
  have hn := M.add_nodup i hnd hi'
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hb := regValue_bit M.y i M.unary.flag s.basis hi'
  rw [h.1.1.2] at hb
  obtain ⟨hf,hv⟩ := controlledModAdd_spec (M.bit i) M.addView n p X Z (s.basis (M.bit i))
    (M.add_widths n hw) hn hp hpn (by omega) hZ s m ⟨⟨⟨rfl,h.1.1.1⟩,h.1.2⟩,h.2⟩
  simp only [Holds.holds] at hv
  have keep (q : Wire) (hq : q∈M.y) := controlledModAdd_frame (M.bit i) M.addView n p X Z
    (s.basis (M.bit i)) (M.add_widths n hw) hn hp hpn (by omega) hZ s m rfl h.1.1.1 h.1.2 h.2
    q (inputs_outside M hnd q (by simp [hq]))
  refine ⟨hf,⟨⟨hv.1.1.2,(regValue_congr _ _ _ keep).trans h.1.1.2⟩,?_⟩,hv.2⟩
  change (s.basis (M.bit i)).toNat=(Y/2^i)%2 at hb
  rw [← hb]
  cases he : s.basis (M.bit i) <;> simpa [he,Nat.mod_eq_of_lt hZ] using hv.1.2

private theorem horner_sub (M : MulInPlaceLayout) (n p X Y Z i : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hX : X<p) (hZ : Z<p) (hi : i<n) :
    {{ M.x=X,M.y=Y,M.acc=Z,M.work=0 }} controlledModSub (M.bit i) M.addView p
    {{ M.x=X,M.y=Y,M.acc=(Z+p-X*((Y/2^i)%2))%p,M.work=0 }} := by
  have hi' : i<M.y.length := by simpa only [hw.y] using hi
  have hn := M.add_nodup i hnd hi'
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hb := regValue_bit M.y i M.unary.flag s.basis hi'
  rw [h.1.1.2] at hb
  obtain ⟨hf,hv⟩ := controlledModSub_spec (M.bit i) M.addView n p X Z (s.basis (M.bit i))
    (M.add_widths n hw) hn hp hpn (by omega) hZ s m ⟨⟨⟨rfl,h.1.1.1⟩,h.1.2⟩,h.2⟩
  simp only [Holds.holds] at hv
  have keep (q : Wire) (hq : q∈M.y) := controlledModSub_frame (M.bit i) M.addView n p X Z
    (s.basis (M.bit i)) (M.add_widths n hw) hn hp hpn (by omega) hZ s m rfl h.1.1.1 h.1.2 h.2
    q (inputs_outside M hnd q (by simp [hq]))
  refine ⟨hf,⟨⟨hv.1.1.2,(regValue_congr _ _ _ keep).trans h.1.1.2⟩,?_⟩,hv.2⟩
  change (s.basis (M.bit i)).toNat=(Y/2^i)%2 at hb
  rw [← hb]
  cases he : s.basis (M.bit i) <;> simpa [he,Nat.mod_eq_of_lt hZ] using hv.1.2

/-- 一轮完成一个数学前缀更新，同时保留输入并清空 scratch。 -/
theorem hornerIntoStep_spec (M : MulInPlaceLayout) (n p X Y i : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hi : i<n) :
    {{ M.x=X,M.y=Y,M.acc=hornerValue p X Y (i+1),M.work=0 }} hornerIntoStep M p i
    {{ M.x=X,M.y=Y,M.acc=hornerValue p X Y i,M.work=0 }} := by
  have hpos : 0<p := by omega
  have h1 := horner_double M n p X Y (hornerValue p X Y (i+1)) hw hnd hp hpn
    (hornerValue_bound p X Y (i+1) hpos)
  have h2 := horner_add M n p X Y ((2*hornerValue p X Y (i+1))%p) i hw hnd hpos hpn hX
    (Nat.mod_lt _ hpos) hi
  have hv : ((2*hornerValue p X Y (i+1))%p+X*((Y/2^i)%2))%p=hornerValue p X Y i := by
    rw [Nat.mod_add_mod]; exact hornerValue_step p X Y i
  simpa only [hornerIntoStep,hv] using h1.seq h2

theorem hornerClearStep_spec (M : MulInPlaceLayout) (n p X Y i : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hi : i<n) :
    {{ M.x=X,M.y=Y,M.acc=hornerValue p X Y i,M.work=0 }} hornerClearStep M p i
    {{ M.x=X,M.y=Y,M.acc=hornerValue p X Y (i+1),M.work=0 }} := by
  have hpos : 0<p := by omega
  have h1 := horner_sub M n p X Y (hornerValue p X Y i) i hw hnd hpos hpn hX
    (hornerValue_bound p X Y i hpos) hi
  have h2 := horner_half M n p X Y ((hornerValue p X Y i+p-X*((Y/2^i)%2))%p)
    hw hnd hp hpn (Nat.mod_lt _ hpos)
  simpa only [hornerClearStep,hornerValue_unstep p X Y i hp hX] using h1.seq h2

end ECDSAAdd.Arithmetic
