import ECDSAAdd.Arithmetic.ModularAddition.ModInPlaceNegate

namespace ECDSAAdd.Arithmetic

/-- 原地模减：L.z ← (L.z−L.a) mod p，L.a 保持，L.work 初始为零并恢复。
沿用 modSubInPlace_spec 的布局/范围条件；临时将源变为 p−L.a，模加后还原源。

参数：

- `L`：原地模运算布局：a 是保留的源，z（low 加 high）是更新目标，constant/carry/cin 是工作区，mask/flag 用于受控运算。此处 a 是减数。
- `p`：构造电路时已知的经典模数，不是量子输入寄存器；取值须满足上述范围条件。
-/
def modSubInPlace (L : ModInPlaceLayout) (p : Nat) : Program := prog {
  negRaw(L, p);                        -- source a: A → p-A
  modAddInPlace(L, p);                 -- z += p-A (mod p)，即 z -= A (mod p)
  negRaw(L, p);                        -- source a: p-A → A；工作区恢复
}

/-- 受 c 控制的原地模减：L.z ← (L.z−c·L.a) mod p，c 取值 0/1，c/L.a 保持。
沿用 controlledModSub_spec 的布局/范围条件；L.work 初始为零并恢复。
两次源取负无条件执行，只有模加受控；c=0 时目标保持。

参数：

- `c`：控制 wire，值为 1 时启用运算，值为 0 时保持目标。
- `L`：原地模运算布局：a 是保留的源，z（low 加 high）是更新目标，constant/carry/cin 是工作区，mask/flag 用于受控运算。此处 a 是减数。
- `p`：构造电路时已知的经典模数，不是量子输入寄存器；取值须满足上述范围条件。
-/
def controlledModSub (c : Wire) (L : ModInPlaceLayout) (p : Nat) : Program := prog {
  negRaw(L, p);                        -- source a: A → p-A
  controlledModAdd(c, L, p);           -- c=1 时 z += p-A (mod p)
  negRaw(L, p);                        -- source a: p-A → A；工作区恢复
}

theorem modSubInPlace_spec (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) :
    {{ L.a=A,L.z=Z,L.work=0 }} modSubInPlace L p
    {{ L.a=A,L.z=((Z+p-A)%p),L.work=0 }} := by
  have h1 := negRaw_spec L n p A Z hw hnd hpn hA
  have h2 := modAddInPlace_spec L n p (p-A) Z hw hnd hp hpn (by omega) hZ
  have h3 := negRaw_spec L n p (p-A) ((Z+(p-A))%p) hw hnd hpn (by omega)
  have he := (negRaw_range_restore A p hA).2
  have hz := modSubCore_value A Z p hA
  simpa only [modSubInPlace,he,hz] using (h1.seq h2).seq h3

private theorem negRaw_control_spec (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hpn : p<2^n) (hA : A≤p) :
    {{ c=B,L.a=A,L.z=Z,L.work=0 }} negRaw L p
    {{ c=B,L.a=(p-A),L.z=Z,L.work=0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hf,hv⟩ := negRaw_spec L n p A Z hw (List.nodup_cons.mp hnd).2 hpn hA
    s m ⟨⟨h.1.1.2,h.1.2⟩,h.2⟩
  have he := (negRaw_correct L n p A hw (List.nodup_cons.mp hnd).2 hpn hA
    s m h.1.1.2 h.2).2.1 c (fun hh => (List.nodup_cons.mp hnd).1
      (by simp [ModInPlaceLayout.wires,hh]))
  exact ⟨hf,⟨⟨he.trans h.1.1.1,hv.1.1⟩,hv.1.2⟩,hv.2⟩

theorem controlledModSub_spec (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) :
    {{ c=B,L.a=A,L.z=Z,L.work=0 }} controlledModSub c L p
    {{ c=B,L.a=A,L.z=(if B then (Z+p-A)%p else Z),L.work=0 }} := by
  have h1 := negRaw_control_spec c L n p A Z B hw hnd hpn hA
  have h2 := controlledModAdd_spec c L n p (p-A) Z B hw hnd hp hpn (by omega) hZ
  have h3 := negRaw_control_spec c L n p (p-A) (if B then (Z+(p-A))%p else Z)
    B hw hnd hpn (by omega)
  have he := (negRaw_range_restore A p hA).2
  have hz := modSubCore_value A Z p hA
  simpa only [controlledModSub,he,hz] using (h1.seq h2).seq h3

theorem modSubInPlace_wires (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n) :
    wires (modSubInPlace L p)=L.toModAddCoreLayout.wires.toFinset := by
  simp only [modSubInPlace,modAddInPlace,wires_append,negRaw_wires L n p hw,
    modAddCore_wires L.toModAddCoreLayout n p hw.core hn]
  ext q
  simp only [Finset.mem_union,List.mem_toFinset,ModAddCoreLayout.wires,List.mem_append]
  tauto

theorem controlledModSub_wires (c : Wire) (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n) :
    wires (controlledModSub c L p)=(c::L.a++L.maskedCore.wires).toFinset := by
  simp only [controlledModSub,wires_append,negRaw_wires L n p hw,
    controlledModAdd_wires c L n p hw hn]
  ext q
  have ht : q∈L.a.take n → q∈L.a := fun hh => (List.take_sublist n L.a).subset hh
  simp only [Finset.mem_union,List.mem_toFinset,ModAddCoreLayout.wires,
    ModInPlaceLayout.maskedCore,ModAddCoreLayout.work,List.mem_append,List.mem_cons,
    List.not_mem_nil,or_false]
  tauto

theorem modSubInPlace_frame (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z) :
    (run (modSubInPlace L p) m s).basis q=s.basis q := by
  obtain ⟨_,h⟩ := modSubInPlace_spec L n p A Z hw hnd hp hpn hA hZ s m ⟨⟨ha,hz⟩,hc⟩
  simp only [Holds.holds] at h
  by_cases hqa : q∈L.a
  · exact (regValue_eq_iff _ _ _).mp (h.1.1.trans ha.symm) q hqa
  by_cases hqc : q∈L.work
  · exact (regValue_eq_iff _ _ _).mp (h.2.trans hc.symm) q hqc
  apply run_preserves_outside
  have hn : 0<n := by
    by_contra hh
    have hn0 : n=0 := by omega
    rw [hn0] at hpn
    simp at hpn
    omega
  rw [modSubInPlace_wires L n p hw hn]
  simp only [ModAddCoreLayout.wires,List.mem_toFinset,List.mem_append]
  have hk : q∉L.toModAddCoreLayout.work := fun hh => hqc (by simp [ModInPlaceLayout.work,hh])
  tauto

theorem controlledModSub_frame (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (hb : s.basis c=B) (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z) :
    (run (controlledModSub c L p) m s).basis q=s.basis q := by
  obtain ⟨_,h⟩ := controlledModSub_spec c L n p A Z B hw hnd hp hpn hA hZ
    s m ⟨⟨⟨hb,ha⟩,hz⟩,hc⟩
  simp only [Holds.holds] at h
  by_cases he : q=c
  · subst q; exact h.1.1.1.trans hb.symm
  by_cases hqa : q∈L.a
  · exact (regValue_eq_iff _ _ _).mp (h.1.1.2.trans ha.symm) q hqa
  by_cases hqc : q∈L.work
  · exact (regValue_eq_iff _ _ _).mp (h.2.trans hc.symm) q hqc
  apply run_preserves_outside
  have hn : 0<n := by
    by_contra hh
    have hn0 : n=0 := by omega
    rw [hn0] at hpn
    simp at hpn
    omega
  rw [controlledModSub_wires c L n p hw hn]
  simp only [List.mem_toFinset,List.mem_cons,List.mem_append,ModAddCoreLayout.wires,
    ModInPlaceLayout.maskedCore,ModAddCoreLayout.z,ModAddCoreLayout.work,
    List.not_mem_nil,or_false]
  simp only [ModInPlaceLayout.work,ModAddCoreLayout.work,List.mem_append,List.mem_cons,
    List.not_mem_nil,or_false] at hqc
  simp only [ModInPlaceLayout.z,ModAddCoreLayout.z,List.mem_append,List.mem_cons,
    List.not_mem_nil,or_false] at hq
  tauto

theorem modSubInPlace_resources (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hn : 0<n) :
    toffoliCount (modSubInPlace L p)=6*n-1 ∧
    measurementCount (modSubInPlace L p)=6*n-1 ∧
    qubitCount (modSubInPlace L p)=4*n+4 := by
  have ha := modAddInPlace_resources L n p hw hnd hn
  have hn' := negRaw_counts L n p hw
  refine ⟨?_,?_,?_⟩
  · simp only [modSubInPlace,toffoliCount_append,hn'.1,ha.1]; omega
  · simp only [modSubInPlace,measurementCount_append,hn'.2,ha.2.1]; omega
  · rw [qubitCount,modSubInPlace_wires L n p hw hn]
    have he := (modAddCore_resources L.toModAddCoreLayout n p hw.core
      (by
        apply List.nodup_iff_count.mpr; intro q
        have h := List.nodup_iff_count.mp hnd q
        simp only [ModInPlaceLayout.wires,ModInPlaceLayout.work,ModInPlaceLayout.z,
          ModAddCoreLayout.wires,List.count_append] at h ⊢
        omega) hn).2.2
    rwa [qubitCount,modAddCore_wires L.toModAddCoreLayout n p hw.core hn] at he

theorem controlledModSub_resources (c : Wire) (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hn : 0<n) :
    toffoliCount (controlledModSub c L p)=8*n-1 ∧
    measurementCount (controlledModSub c L p)=6*n-1 ∧
    qubitCount (controlledModSub c L p)=5*n+6 := by
  have ha := controlledModAdd_resources c L n p hw hnd hn
  have hn' := negRaw_counts L n p hw
  refine ⟨?_,?_,?_⟩
  · simp only [controlledModSub,toffoliCount_append,hn'.1,ha.1]; omega
  · simp only [controlledModSub,measurementCount_append,hn'.2,ha.2.1]; omega
  · have hsub : (c::L.a++L.maskedCore.wires).Nodup := by
      apply List.nodup_iff_count.mpr; intro q
      have hh := List.nodup_iff_count.mp hnd q
      simp only [ModInPlaceLayout.wires,ModInPlaceLayout.work,ModInPlaceLayout.z,
        ModInPlaceLayout.maskedCore,ModAddCoreLayout.wires,ModAddCoreLayout.work,
        ModAddCoreLayout.z,List.count_append,List.count_cons,List.count_nil] at hh ⊢
      omega
    rw [qubitCount,controlledModSub_wires c L n p hw hn,List.toFinset_card_of_nodup hsub]
    simp only [ModInPlaceLayout.maskedCore,ModAddCoreLayout.wires,ModAddCoreLayout.work,
      ModAddCoreLayout.z,List.length_cons,List.length_nil,List.length_append,
      hw.core.a,hw.core.low,hw.mask,hw.core.constant,hw.core.carry]
    omega

end ECDSAAdd.Arithmetic
