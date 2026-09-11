import ECDSAAdd.Arithmetic.InPlaceAdder
import ECDSAAdd.Arithmetic.Compare
import ECDSAAdd.Math.ModInPlace

namespace ECDSAAdd.Arithmetic

/-- 模加核的固定线路：最高位借作约减标志；mask/flag 属于外层，不放入核工作区。 -/
structure ModAddCoreLayout where
  a : List Wire
  low : List Wire
  high : Wire
  constant : List Wire
  carry : List Wire
  cin : Wire

namespace ModAddCoreLayout

def z (L : ModAddCoreLayout) : List Wire := L.low ++ [L.high]
def work (L : ModAddCoreLayout) : List Wire := L.constant ++ L.carry ++ [L.cin]
def wires (L : ModAddCoreLayout) : List Wire := L.a ++ L.z ++ L.work

/-- 低位 n 根，扩宽数据与常数 n+1 根，完整进位链 n 根。 -/
structure Widths (L : ModAddCoreLayout) (n : Nat) : Prop where
  a : L.a.length = n+1
  low : L.low.length = n
  constant : L.constant.length = n+1
  carry : L.carry.length = n

end ModAddCoreLayout

/-- 四个可辨认阶段：计算扩宽和、试减 p、借位时低位加回 p、由结果与源比较清借位。
constant/carry/cin 初末零；核源可以是外层已装载的 mask，不能提前清该源。 -/
def modAddCore (L : ModAddCoreLayout) (p : Nat) : Program :=
  -- 1. 高位初始零；扩宽寄存器容纳完整 A+Z。
  addInPlace L.a L.z L.carry L.cin ++
  -- 2. 试减 p；结果最高位记录 A+Z<p。装卸常数不影响该标志。
  xorConstant L.constant p ++ subInPlace L.constant L.z L.carry L.cin ++
  xorConstant L.constant p ++
  -- 3. 借位为真时只向低位加回 p，最高位保持直到最后比较。
  maskedAddConst L.high (L.constant.take L.low.length) L.low
    (L.carry.take (L.low.length-1)) L.cin p ++
  -- 4. 规范结果小于源当且仅当曾约减；比较后 X 清原借位。
  compareLt none L.low (L.a.take L.low.length) L.carry L.cin L.high ++ [.X L.high]

/-- 同一核门列的计数，不把尚未证明的正确性或支持集作为假设。 -/
theorem modAddCore_counts (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0 < n) :
    toffoliCount (modAddCore L p) = 4*n-1 ∧
    measurementCount (modAddCore L p) = 4*n-1 := by
  have hz : L.z.length = n+1 := by simp [ModAddCoreLayout.z, hw.low]
  have ha := addInPlace_counts L.a L.z L.carry L.cin (hw.a.trans hz.symm)
    (by rw [hw.carry, hz])
  have hs := subInPlace_counts L.constant L.z L.carry L.cin
    (hw.constant.trans hz.symm) (by rw [hw.carry, hz])
  have ht : (L.constant.take L.low.length).length = n := by
    simp [hw.low, hw.constant]
  have hk : (L.carry.take (L.low.length-1)).length = n-1 := by
    simp [hw.low, hw.carry]
  have hm := addInPlace_counts (L.constant.take L.low.length) L.low
    (L.carry.take (L.low.length-1)) L.cin (ht.trans hw.low.symm)
    (by rw [hk, hw.low]; omega)
  have hx : (L.a.take L.low.length).length = n := by simp [hw.low, hw.a]
  have hc := compareLt_counts none L.low (L.a.take L.low.length) L.carry L.cin L.high
    (hw.low.trans hx.symm) (hw.carry.trans hx.symm)
  simp only [hw.low] at hm hc
  simp only [modAddCore, maskedAddConst, toffoliCount_append, measurementCount_append,
    ha.1, ha.2, hs.1, hs.2, hm.1, hm.2, hc.1, hc.2,
    (xorConstant_counts _ _).1, (xorConstant_counts _ _).2,
    (maskedConstant_counts _ _ _).1, (maskedConstant_counts _ _ _).2,
    hz, hw.low, toffoliCount, measurementCount]
  simp only [List.length_take, hw.a, Nat.min_eq_left (by omega : n ≤ n+1)]
  simp
  omega

/-- 第一阶段只改变扩宽目标；其余寄存器逐线保持。 -/
private theorem modAddCore_sum (L : ModAddCoreLayout) (n A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) :
    {{ L.a=A, L.z=Z, L.work=0 }} addInPlace L.a L.z L.carry L.cin
    {{ L.a=A, L.z=(A+Z)%2^(n+1), L.work=0 }} := by
  have hcnt := List.nodup_iff_count.mp hnd
  have hsub : (L.cin :: (L.a ++ L.z ++ L.carry)).Nodup := by
    apply List.nodup_iff_count.mpr
    intro q
    have h := hcnt q
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, List.count_append,
      List.count_cons, List.count_nil] at h ⊢
    omega
  have outside (q : Wire) (hq : q ∈ L.a ++ L.work) : q ∉ L.z := by
    intro hz
    have h := hcnt q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hz
    simp only [ModAddCoreLayout.wires, List.count_append] at h h1
    omega
  have hz : L.z.length = n+1 := by simp [ModAddCoreLayout.z, hw.low]
  intro s m h
  simp only [Holds.holds] at h ⊢
  have clean := (regValue_zero L.work s.basis).mp h.2
  obtain ⟨hp, he, hv⟩ := addInPlace_correct L.a L.z L.carry L.cin hsub
    (hw.a.trans hz.symm) (by rw [hw.carry, hz]) s m
    (fun q hq => clean q (by simp [ModAddCoreLayout.work, hq]))
  refine ⟨hp, ⟨?_, ?_⟩, ?_⟩
  · exact (regValue_congr _ _ _ (fun q hq => he q (outside q (by simp [hq])))).trans h.1.1
  · rw [hv, h.1.1, h.1.2, clean L.cin (by simp [ModAddCoreLayout.work]),
      Bool.toNat_false, Nat.add_zero, hz]
  · exact (regValue_congr _ _ _ (fun q hq => he q (outside q (by simp [hq])))).trans h.2

/-- 常数装卸只改变常数字；将源、目标和进位零条件显式带过。 -/
private theorem modAddCore_load (L : ModAddCoreLayout) (hnd : L.wires.Nodup)
    (A Z T p : Nat) (hp : p < 2^L.constant.length) :
    {{ L.a=A, L.z=Z, L.constant=T, L.carry=0, L.cin=false }} xorConstant L.constant p
    {{ L.a=A, L.z=Z, L.constant=(T ^^^ p), L.carry=0, L.cin=false }} := by
  have hcnt := List.nodup_iff_count.mp hnd
  have hc : L.constant.Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have h := hcnt q
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, List.count_append,
      List.count_cons, List.count_nil] at h
    omega
  have outside (q : Wire) (hq : q ∈ L.a ++ L.z ++ L.carry ++ [L.cin]) : q ∉ L.constant := by
    intro ht
    have h := hcnt q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr ht
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, List.count_append,
      List.count_cons, List.count_nil] at h h1
    omega
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hf, he, hv⟩ := xorConstant_correct L.constant hc p hp s m
  refine ⟨hf, ⟨⟨⟨?_, ?_⟩, ?_⟩, ?_⟩, ?_⟩
  · exact (regValue_congr _ _ _ (fun q hq => he q (outside q (by simp [hq])))).trans h.1.1.1.1
  · exact (regValue_congr _ _ _ (fun q hq => he q (outside q (by simp [hq])))).trans h.1.1.1.2
  · rw [hv, h.1.1.2]
  · exact (regValue_congr _ _ _ (fun q hq => he q (outside q (by simp [hq])))).trans h.1.2
  · exact (he L.cin (outside L.cin (by simp))).trans h.2

/-- 用常数字做扩宽减法，原源 a 不在门列支持中。 -/
private theorem modAddCore_subtract (L : ModAddCoreLayout) (n A Z p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) :
    {{ L.a=A, L.z=Z, L.constant=p, L.carry=0, L.cin=false }}
      subInPlace L.constant L.z L.carry L.cin
    {{ L.a=A, L.z=(Z+2^(n+1)-p)%2^(n+1), L.constant=p, L.carry=0, L.cin=false }} := by
  have hcnt := List.nodup_iff_count.mp hnd
  have hs : (L.cin :: (L.constant ++ L.z ++ L.carry)).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have h := hcnt q
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, List.count_append,
      List.count_cons, List.count_nil] at h ⊢
    omega
  have hz : L.z.length = n+1 := by simp [ModAddCoreLayout.z, hw.low]
  have ht := hw.constant.trans hz.symm
  have hk : L.carry.length+1=L.z.length := by rw [hw.carry, hz]
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hP : ((regValue L.constant s.basis = p ∧ regValue L.z s.basis = Z) ∧
      s.basis L.cin = false) ∧ regValue L.carry s.basis = 0 :=
    ⟨⟨⟨h.1.1.2, h.1.1.1.2⟩, h.2⟩, h.1.2⟩
  obtain ⟨hf, hv⟩ := subInPlace_spec L.constant L.z L.carry L.cin hs ht hk p Z s m hP
  simp only [Holds.holds] at hv
  have ha : regValue L.a (run (subInPlace L.constant L.z L.carry L.cin) m s).basis = A := by
    apply Eq.trans (regValue_congr _ _ _ ?_) h.1.1.1.1
    intro q hq
    apply run_preserves_outside
    rw [subInPlace_wires _ _ _ _ ht hk]
    intro hm
    have h1 := List.count_pos_iff.mpr (List.mem_toFinset.mp hm)
    have h2 := List.count_pos_iff.mpr hq
    have h3 := hcnt q
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, List.count_append,
      List.count_cons, List.count_nil] at h1 h3
    omega
  exact ⟨hf, ⟨⟨⟨ha, by simpa only [hz] using hv.1.1.2⟩, hv.1.1.1⟩, hv.2⟩, hv.1.2⟩

/-- 第二阶段：装 p、扩宽减 p、卸 p；整体恢复全部核工作位。 -/
private theorem modAddCore_reduce (L : ModAddCoreLayout) (n A Z p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : p < 2^(n+1)) :
    {{ L.a=A, L.z=Z, L.work=0 }}
      (xorConstant L.constant p ++ subInPlace L.constant L.z L.carry L.cin ++
        xorConstant L.constant p)
    {{ L.a=A, L.z=(Z+2^(n+1)-p)%2^(n+1), L.work=0 }} := by
  have h1 := modAddCore_load L hnd A Z 0 p (by simpa only [hw.constant] using hp)
  have h2 := modAddCore_subtract L n A Z p hw hnd
  have h3 := modAddCore_load L hnd A ((Z+2^(n+1)-p)%2^(n+1)) p p
    (by simpa only [hw.constant] using hp)
  simp only [Nat.zero_xor, Nat.xor_self] at h1 h3
  have hh := (h1.seq h2).seq h3
  intro s m h
  simp only [Holds.holds] at h ⊢
  have clean := (regValue_zero L.work s.basis).mp h.2
  have hc : regValue L.constant s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (by simp [ModAddCoreLayout.work, hq]))
  have hk : regValue L.carry s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (by simp [ModAddCoreLayout.work, hq]))
  obtain ⟨hf, hv⟩ := hh s m ⟨⟨⟨h.1, hc⟩, hk⟩, clean L.cin (by simp [ModAddCoreLayout.work])⟩
  simp only [Holds.holds] at hv
  refine ⟨hf, hv.1.1.1, (regValue_zero _ _).mpr ?_⟩
  intro q hq
  simp only [ModAddCoreLayout.work, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with (hq | hq) | hq
  · exact (regValue_zero _ _).mp hv.1.1.2 q hq
  · exact (regValue_zero _ _).mp hv.1.2 q hq
  · subst q; exact hv.2

end ECDSAAdd.Arithmetic
