import ECDSAAdd.Arithmetic.MultiplyResources

namespace ECDSAAdd.Arithmetic

/-- 模乘布局：输入、输出、倍数链，以及各一份加倍与交替累加工作区。 -/
structure MulLayout where
  x : List Wire
  out : List Wire
  steps : List MulStep
  doubling : ModLayout
  accumulator : ModLayout

def MulLayout.width (L : MulLayout) : Nat := L.accumulator.width
def MulLayout.y (L : MulLayout) : List Wire := L.steps.map MulStep.bit
def MulLayout.work (L : MulLayout) : List Wire :=
  L.doubling.wires ++ L.accumulator.wires ++ L.steps.flatMap MulStep.next
def MulLayout.wires (L : MulLayout) : List Wire :=
  L.x ++ L.out ++ L.doubling.wires ++ L.accumulator.wires ++ L.steps.flatMap MulStep.wires

/-- n 位乘数和 n+1 位模算术寄存器；所有倍数使用相同位宽。 -/
def MulLayout.Widths (L : MulLayout) : Prop :=
  L.doubling.width = L.width ∧ L.x.length = L.width+1 ∧ L.out.length = L.width+1 ∧
    L.steps.length = L.width ∧ ∀ b ∈ L.steps, b.next.length = L.width+1

theorem MulLayout.interface_perm (L : MulLayout) :
    (L.x ++ L.y ++ L.out ++ L.work).Perm L.wires := by
  have h (bs : List MulStep) (w : Wire) :
      (bs.map MulStep.bit).count w + (bs.flatMap MulStep.next).count w =
        (bs.flatMap MulStep.wires).count w := by
    induction bs with
    | nil => rfl
    | cons b bs ih =>
      simp only [List.map_cons, List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
      omega
  apply List.perm_iff_count.mpr
  intro w
  have hh := h L.steps w
  simp only [MulLayout.y, MulLayout.work, MulLayout.wires, List.count_append]
  omega

/-- 保留两个输入，向任意输出寄存器 XOR 写入模乘结果。 -/
def modMul (L : MulLayout) (q : Nat) : Program :=
  multiplyLoop L.doubling L.accumulator q L.x L.out L.steps

theorem modMul_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q X Y O : Nat) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modMul L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X*Y)%q)), L.work = 0 }} := by
  intro s m h
  change (((regValue L.x s.basis = X ∧ regValue L.y s.basis = Y) ∧
    regValue L.out s.basis = O) ∧ regValue L.work s.basis = 0) at h
  have hz := (regValue_zero _ _).mp h.2
  have ha : ModValues L.accumulator (ModValues.clean 0 0 0) s.basis := by
    have he (w : Wire) (hm : w ∈ L.accumulator.wires) : s.basis w = false :=
      hz w (by simp [MulLayout.work, hm])
    refine ⟨?_, ?_, ?_⟩
    · intro f
      have hf : ModValues.clean 0 0 0 f = 0 := by cases f <;> rfl
      rw [hf]
      apply (regValue_zero _ _).mpr
      intro w hm
      exact he w (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (L.accumulator.reg_mem f hm)))
    · exact he _ (by simp [ModLayout.wires])
    · exact he _ (by simp [ModLayout.wires])
  obtain ⟨hp, he, hv⟩ := multiplyLoop_correct L.steps L.doubling L.accumulator L.x L.out hnd
    hw.1 hw.2.1 hw.2.2.1 hw.2.2.2.2 q X 0 hq0 hq hX hq0 s m h.1.1.1
    ((regValue_zero _ _).mpr (fun w hm => hz w (by simp [MulLayout.work, hm]))) ha
    (by
      intro b hb
      apply (regValue_zero _ _).mpr
      intro w hm
      exact hz w (List.mem_append_right _ (List.mem_flatMap.mpr ⟨b, hb, hm⟩)))
  have hi := List.nodup_append'.mp (L.interface_perm.nodup_iff.mpr hnd)
  have hxy := (List.nodup_append'.mp hi.1).2.2
  have hwo : L.work.Disjoint L.out := List.disjoint_left.mpr (fun _ hw ho =>
    List.disjoint_left.mp hi.2.2 (List.mem_append_right _ ho) hw)
  have preserve (r : List Wire) (hr : r.Disjoint L.out) :
      regValue r (run (modMul L q) m s).basis = regValue r s.basis :=
    regValue_congr _ _ _ (fun w hm => he w (List.disjoint_left.mp hr hm))
  refine ⟨hp, ⟨⟨?_, ?_⟩, ?_⟩, ?_⟩
  · exact (preserve L.x (List.disjoint_left.mpr (fun _ hx ho =>
      List.disjoint_left.mp hxy (List.mem_append_left _ hx) ho))).trans h.1.1.1
  · exact (preserve L.y (List.disjoint_left.mpr (fun _ hy ho =>
      List.disjoint_left.mp hxy (List.mem_append_right _ hy) ho))).trans h.1.1.2
  · simpa only [show regValue (L.steps.map MulStep.bit) s.basis = Y from h.1.1.2,
      h.1.2, Nat.zero_add] using hv
  · exact (preserve L.work hwo).trans h.2

/-- 常用的空输出形式；输入保持，所有工作位归零。 -/
theorem modMul_zero_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q X Y : Nat) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) :
    {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} modMul L q
    {{ L.x = X, L.y = Y, L.out = ((X*Y)%q), L.work = 0 }} := by
  simpa only [Nat.zero_xor] using modMul_spec L hnd hw q X Y 0 hq0 hq hX

theorem modMul_resources (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : 0 < L.width) (q : Nat) :
    toffoliCount (modMul L q) = L.width*(44*L.width+36) ∧
    measurementCount (modMul L q) = 32*L.width*(L.width+1) ∧
    qubitCount (modMul L q) = (L.width+18)*(L.width+1)+L.width+4 := by
  have hc := multiplyLoop_counts L.steps L.doubling L.accumulator L.x L.out hnd
    hw.1 hw.2.1 hw.2.2.1 hw.2.2.2.2 q
  have hwire := multiplyLoop_wires L.steps L.doubling L.accumulator L.x L.out
    hw.1 hw.2.1 hw.2.2.1 hw.2.2.2.2 q
  have hne : L.steps.isEmpty = false := by
    have h := hw.2.2.2.1
    cases he : L.steps <;> simp_all
  simp only [hne, Bool.false_eq_true, if_false] at hwire
  refine ⟨by simpa only [hw.2.2.2.1] using hc.1,
    by simpa only [hw.2.2.2.1] using hc.2, ?_⟩
  rw [qubitCount, modMul, hwire]
  change L.wires.toFinset.card = _
  rw [List.toFinset_card_of_nodup hnd]
  change (L.x ++ L.out ++ L.doubling.wires ++ L.accumulator.wires ++
    L.steps.flatMap MulStep.wires).length = _
  have ml (A : ModLayout) : A.wires.length = 8*(A.width+1)+2 := by
    have hh (bs : List ModBit) : (bs.flatMap ModBit.all).length = 8*bs.length := by
      induction bs with
      | nil => rfl
      | cons b bs ih => simp [ModBit.all, ih]; omega
    simp [ModLayout.wires, hh, ModLayout.bits, ModLayout.width, ModBit.all]
    omega
  have chain (bs : List MulStep) (h : ∀ b ∈ bs, b.next.length = L.width+1) :
      (bs.flatMap MulStep.wires).length = bs.length*(L.width+2) := by
    induction bs with
    | nil => simp
    | cons b bs ih =>
      have hb := h b (List.mem_cons_self ..)
      have ht := ih (fun t ht => h t (List.mem_cons_of_mem _ ht))
      simp only [List.flatMap_cons, List.length_append, MulStep.wires, List.length_cons, hb, ht]
      ring
  simp only [List.length_append, hw.2.1, hw.2.2.1, ml, hw.1,
    chain L.steps hw.2.2.2.2, hw.2.2.2.1, MulLayout.width]
  ring

end ECDSAAdd.Arithmetic
