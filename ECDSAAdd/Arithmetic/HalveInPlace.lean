import ECDSAAdd.Arithmetic.Compare
import ECDSAAdd.Arithmetic.Shift
import ECDSAAdd.Arithmetic.BorrowFrame
import ECDSAAdd.Arithmetic.KaliskiRound
import ECDSAAdd.Math.HalvingBijection

namespace ECDSAAdd.Arithmetic

/-- 求逆第二阶段的原地减半/加倍布局：data 上原地操作；常数字、进位链（chain 给加法器，
chain ++ [top] 给比较器）、cin 与标志借自模算术工作区；active 与计数银行沿用第一阶段。 -/
structure HalvingLayout where
  data : List Wire
  constant : List Wire
  chain : List Wire
  top : Wire
  cin : Wire
  flag : Wire
  active : Wire
  counterLow : List AddBit
  counterHigh : AddBit
  compareCin : Wire

namespace HalvingLayout

def counter (L : HalvingLayout) : AdderLayout := ⟨L.counterLow ++ [L.counterHigh], L.compareCin⟩
def carry (L : HalvingLayout) : List Wire := L.chain ++ [L.top]
def wires (L : HalvingLayout) : List Wire :=
  L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires)
/-- 轮与轮之间为零的全部工作线。 -/
def work (L : HalvingLayout) : List Wire :=
  L.active :: L.flag :: L.cin :: (L.constant ++ L.carry ++ L.counter.y ++ L.counter.out ++
    L.counter.carry ++ [L.compareCin])

theorem counter_out (L : HalvingLayout) :
    L.counter.out = L.counterLow.map AddBit.out ++ [L.counterHigh.out] := by
  simp [counter, AdderLayout.out]

theorem carry_length (L : HalvingLayout) : L.carry.length = L.chain.length + 1 := by
  simp [carry]

end HalvingLayout

/-- 计数输入和值域不变；比较工作区为空。 -/
def HalvingCounter (L : AdderLayout) (K : Nat) (s : BasisState) : Prop :=
  regValue L.x s = K ∧ regValue L.y s = 0 ∧ s L.cin = false ∧
    regValue L.out s = 0 ∧ regValue L.carry s = 0

theorem HalvingCounter.congr (L : AdderLayout) (K : Nat) (s t : BasisState)
    (h : HalvingCounter L K s) (he : ∀ w ∈ L.wires, t w = s w) : HalvingCounter L K t := by
  have keep (r : List Wire) (hr : r ⊆ L.wires) : regValue r t = regValue r s :=
    regValue_congr _ _ _ (fun w hw => he w (hr hw))
  exact ⟨(keep L.x L.reg_subset.1).trans h.1,
    (keep L.y L.reg_subset.2.1).trans h.2.1,
    (he L.cin (by simp [AdderLayout.wires])).trans h.2.2.1,
    (keep L.out L.reg_subset.2.2.1).trans h.2.2.2.1,
    (keep L.carry L.reg_subset.2.2.2).trans h.2.2.2.2⟩

/-- 一轮受控原地模减半：active ^= [i<k]；flag ← active ∧ data₀；data += flag·q；
受控右移；flag ^= active；flag ^= active ∧ [data < (q+1)/2]；active ^= [i<k]。 -/
def halveStep (L : HalvingLayout) (q i : Nat) : Program :=
  counterActiveXor L.counter L.counterHigh.out L.active i ++
  [.CCX L.active L.data.head! L.flag] ++
  maskedAddConst L.flag L.constant L.data L.chain L.cin q ++
  shiftRight L.active L.data ++
  [.CX L.active L.flag] ++
  compareLtConst (some L.active) L.data L.constant L.carry L.cin L.flag ((q+1)/2) ++
  counterActiveXor L.counter L.counterHigh.out L.active i

/-- 一轮受控原地模加倍（减半轮的逆）：active ^= [i<k]；flag ← active ∧ [data ≥ (q+1)/2]；
受控左移；data −= flag·q；flag ^= active ∧ data₀；active ^= [i<k]。 -/
def doubleStep (L : HalvingLayout) (q i : Nat) : Program :=
  counterActiveXor L.counter L.counterHigh.out L.active i ++
  compareLtConst (some L.active) L.data L.constant L.carry L.cin L.flag ((q+1)/2) ++
  [.CX L.active L.flag] ++
  shiftLeft L.active L.data ++
  maskedSubConst L.flag L.constant L.data L.chain L.cin q ++
  [.CCX L.active L.data.head! L.flag] ++
  counterActiveXor L.counter L.counterHigh.out L.active i

/-- 轮内各步之间的状态：data 值、flag、active、计数输入 k；其余工作线为零。 -/
structure HalvingValues (L : HalvingLayout) (K X : Nat) (F A : Bool) (st : BasisState) : Prop where
  data : regValue L.data st = X
  flag : st L.flag = F
  active : st L.active = A
  cin : st L.cin = false
  constant : regValue L.constant st = 0
  chain : regValue L.chain st = 0
  top : st L.top = false
  counter : HalvingCounter L.counter K st

namespace HalvingLayout

/-- 位宽条件：常数字与 data 同宽，加法进位链少一位，计数器十位。 -/
structure Widths (L : HalvingLayout) : Prop where
  constant : L.constant.length = L.data.length
  chain : L.chain.length + 1 = L.data.length
  counter : L.counter.width = 10

theorem data_ne_nil (L : HalvingLayout) (hw : L.Widths) : L.data ≠ [] := by
  intro h; have := hw.chain; rw [h] at this; simp at this

/-- 由全局互异条件推出各子程序需要的互异条件与不重叠事实。 -/
theorem counter_nodup (L : HalvingLayout) (hnd : L.wires.Nodup) : (L.active :: L.counter.wires).Nodup := by
  have hcnt := List.nodup_iff_count.mp hnd
  apply List.nodup_iff_count.mpr; intro w; have := hcnt w
  simp only [wires, carry, List.count_cons, List.count_append] at this ⊢; omega

theorem addConst_nodup (L : HalvingLayout) (hnd : L.wires.Nodup) :
    (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).Nodup := by
  have hcnt := List.nodup_iff_count.mp hnd
  apply List.nodup_iff_count.mpr; intro w; have := hcnt w
  simp only [wires, carry, List.count_cons, List.count_append] at this ⊢; omega

theorem compare_nodup (L : HalvingLayout) (hnd : L.wires.Nodup) :
    (L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry)).Nodup := by
  have hcnt := List.nodup_iff_count.mp hnd
  apply List.nodup_iff_count.mpr; intro w; have := hcnt w
  simp only [wires, carry, List.count_cons, List.count_append] at this ⊢; omega

theorem shift_nodup (L : HalvingLayout) (hnd : L.wires.Nodup) : (L.active :: L.data).Nodup := by
  have hcnt := List.nodup_iff_count.mp hnd
  apply List.nodup_iff_count.mpr; intro w; have := hcnt w
  simp only [wires, carry, List.count_cons, List.count_append] at this ⊢; omega

/-- 一根线最多出现一次：用于把"不在某些寄存器里"从计数推出。 -/
theorem count_le (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire) :
    List.count w L.wires ≤ 1 := List.nodup_iff_count.mp hnd w

end HalvingLayout


namespace HalvingLayout

/-- 不在某些寄存器里：把两处出现变成计数 ≥ 2 的矛盾。 -/
theorem not_active (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire)
    (hw : w ∈ L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires)) : w ≠ L.active := by
  intro heq
  have h1 := List.nodup_iff_count.mp hnd L.active
  have h2 := List.count_pos_iff.mpr (heq ▸ hw)
  simp only [wires, List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega

theorem not_flag (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire)
    (hw : w ∈ L.active :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires)) : w ≠ L.flag := by
  intro heq
  have h1 := List.nodup_iff_count.mp hnd L.flag
  have h2 := List.count_pos_iff.mpr (heq ▸ hw)
  simp only [wires, List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega

theorem not_data (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire)
    (hw : w ∈ L.active :: L.flag :: L.cin :: (L.constant ++ L.carry ++ L.counter.wires)) : w ∉ L.data := by
  intro hd
  have h1 := List.nodup_iff_count.mp hnd w
  have h2 := List.count_pos_iff.mpr hw
  have h3 := List.count_pos_iff.mpr hd
  simp only [wires, List.count_cons, List.count_append] at h1 h2; omega

/-- 计数器线路与轮内其他线路不重叠。 -/
theorem counter_outside (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire) (hw : w ∈ L.counter.wires) :
    w ∉ (L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry)).toFinset := by
  intro hm
  have h1 := List.nodup_iff_count.mp hnd w
  have h2 := List.count_pos_iff.mpr hw
  have h3 := List.count_pos_iff.mpr (List.mem_toFinset.mp hm)
  simp only [wires, List.count_cons, List.count_append] at h1 h3; omega

theorem carry_zero (L : HalvingLayout) (st : BasisState) :
    regValue L.carry st = 0 ↔ regValue L.chain st = 0 ∧ st L.top = false := by
  rw [carry, regValue_append]
  simp only [regValue, List.foldr_cons, List.foldr_nil, mul_zero, add_zero]
  have hp := Nat.two_pow_pos L.chain.length
  constructor
  · intro h
    cases hb : st L.top
    · simpa [hb] using h
    · simp [hb] at h
  · rintro ⟨h1, h2⟩; simp [h1, h2]

end HalvingLayout

/-- 第 1、7 步：比较 i<k，翻转 active；计数与比较工作区逐线恢复。 -/
theorem step_active (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (i K X : Nat) (F A : Bool) (hi : i < 512) (hk : K ≤ 512) :
    Triple (HalvingValues L K X F A) (counterActiveXor L.counter L.counterHigh.out L.active i)
      (HalvingValues L K X F (A ^^ decide (i < K))) := by
  intro s m h
  have hn := L.counter_nodup hnd
  obtain ⟨hp, hv⟩ := counterActiveXor_spec L.counter (L.counterLow.map AddBit.out) L.counterHigh.out
    L.active hn L.counter_out hw.counter K i A hk hi s m
    ⟨⟨⟨⟨⟨h.active, h.counter.1⟩, h.counter.2.1⟩, h.counter.2.2.1⟩, h.counter.2.2.2.1⟩, h.counter.2.2.2.2⟩
  have he := counterActiveXor_frame L.counter (L.counterLow.map AddBit.out) L.counterHigh.out L.active
    hn L.counter_out hw.counter i K hi hk A s m h.active h.counter.1 h.counter.2.1 h.counter.2.2.1
    h.counter.2.2.2.1 h.counter.2.2.2.2
  refine ⟨hp, ⟨?_, ?_, hv.1.1.1.1.1, ?_, ?_, ?_, ?_, ⟨hv.1.1.1.1.2, hv.1.1.1.2, hv.1.1.2, hv.1.2, hv.2⟩⟩⟩
  · exact (regValue_congr _ _ _ (fun w hw' => he w (L.not_active hnd w (by simp [hw'])))).trans h.data
  · exact (he _ (L.not_active hnd _ (by simp))).trans h.flag
  · exact (he _ (L.not_active hnd _ (by simp))).trans h.cin
  · exact (regValue_congr _ _ _ (fun w hw' => he w (L.not_active hnd w (by simp [hw'])))).trans h.constant
  · exact (regValue_congr _ _ _ (fun w hw' => he w (L.not_active hnd w
      (by simp [HalvingLayout.carry, hw'])))).trans h.chain
  · exact (he _ (L.not_active hnd _ (by simp [HalvingLayout.carry]))).trans h.top

/-- 第 2 步（减半）/ 第 6 步（加倍）：flag ^= active ∧ data 最低位。 -/
theorem step_parity (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (K X : Nat) (F A : Bool) :
    Triple (HalvingValues L K X F A) [.CCX L.active L.data.head! L.flag]
      (HalvingValues L K X (F ^^ (A && decide (X % 2 ≠ 0))) A) := by
  intro s m h
  have hne : L.data ≠ [] := L.data_ne_nil hw
  have hhead : s.basis L.data.head! = decide (X % 2 ≠ 0) := by rw [regValue_headBit _ hne s.basis, h.data]
  have hf (w : Wire) (hw' : w ∈ L.active :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires)) :
      w ≠ L.flag := L.not_flag hnd w hw'
  simp only [run]
  refine ⟨trivial, ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩⟩
  · exact (regValue_congr _ _ _ (fun w hw' => by simp [writeBit, hf w (by simp [hw'])])).trans h.data
  · simp [writeBit, h.flag, h.active, hhead]
  · simpa [writeBit, hf L.active (by simp)] using h.active
  · simpa [writeBit, hf L.cin (by simp)] using h.cin
  · exact (regValue_congr _ _ _ (fun w hw' => by simp [writeBit, hf w (by simp [hw'])])).trans h.constant
  · exact (regValue_congr _ _ _ (fun w hw' => by
      simp [writeBit, hf w (by simp [HalvingLayout.carry, hw'])])).trans h.chain
  · simpa [writeBit, hf L.top (by simp [HalvingLayout.carry])] using h.top
  · exact HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => by simp [writeBit, hf w (by simp [hw'])])

/-- 第 5 步（减半）/ 第 3 步（加倍）：flag ^= active。 -/
theorem step_flip (L : HalvingLayout) (hnd : L.wires.Nodup) (K X : Nat) (F A : Bool) :
    Triple (HalvingValues L K X F A) [.CX L.active L.flag] (HalvingValues L K X (F ^^ A) A) := by
  intro s m h
  have hf (w : Wire) (hw' : w ∈ L.active :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires)) :
      w ≠ L.flag := L.not_flag hnd w hw'
  simp only [run]
  refine ⟨trivial, ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩⟩
  · exact (regValue_congr _ _ _ (fun w hw' => by simp [writeBit, hf w (by simp [hw'])])).trans h.data
  · simp [writeBit, h.flag, h.active]
  · simpa [writeBit, hf L.active (by simp)] using h.active
  · simpa [writeBit, hf L.cin (by simp)] using h.cin
  · exact (regValue_congr _ _ _ (fun w hw' => by simp [writeBit, hf w (by simp [hw'])])).trans h.constant
  · exact (regValue_congr _ _ _ (fun w hw' => by
      simp [writeBit, hf w (by simp [HalvingLayout.carry, hw'])])).trans h.chain
  · simpa [writeBit, hf L.top (by simp [HalvingLayout.carry])] using h.top
  · exact HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => by simp [writeBit, hf w (by simp [hw'])])

/-- 受控右移：active 为真且 data 为偶数时精确减半。 -/
theorem step_shiftRight (L : HalvingLayout) (hnd : L.wires.Nodup) (K X : Nat) (F A : Bool)
    (heven : A = true → X % 2 = 0) :
    Triple (HalvingValues L K X F A) (shiftRight L.active L.data)
      (HalvingValues L K (if A then X / 2 else X) F A) := by
  intro s m h
  obtain ⟨hp, hv⟩ := shiftRight_spec L.active L.data (L.shift_nodup hnd) A X heven s m ⟨h.active, h.data⟩
  simp only [Holds.holds] at hv
  have he := (shift_frame L.active L.data s m).2.1
  have hd (w : Wire) (hw' : w ∈ L.active :: L.flag :: L.cin :: (L.constant ++ L.carry ++ L.counter.wires)) :
      w ∉ L.data := L.not_data hnd w hw'
  refine ⟨hp, ⟨hv.2, (he _ (hd _ (by simp))).trans h.flag, hv.1, (he _ (hd _ (by simp))).trans h.cin,
    (regValue_congr _ _ _ (fun w hw' => he w (hd w (by simp [hw'])))).trans h.constant,
    (regValue_congr _ _ _ (fun w hw' => he w (hd w (by simp [HalvingLayout.carry, hw'])))).trans h.chain,
    (he _ (hd _ (by simp [HalvingLayout.carry]))).trans h.top,
    HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => he w (hd w (by simp [hw'])))⟩⟩

/-- 受控左移：active 为真且两倍仍装得下时精确加倍。 -/
theorem step_shiftLeft (L : HalvingLayout) (hnd : L.wires.Nodup) (K X : Nat) (F A : Bool)
    (hfit : A = true → 2 * X < 2^L.data.length) :
    Triple (HalvingValues L K X F A) (shiftLeft L.active L.data)
      (HalvingValues L K (if A then 2 * X else X) F A) := by
  intro s m h
  obtain ⟨hp, hv⟩ := shiftLeft_spec L.active L.data (L.shift_nodup hnd) A X hfit s m ⟨h.active, h.data⟩
  simp only [Holds.holds] at hv
  have he := (shift_frame L.active L.data s m).2.2.2
  have hd (w : Wire) (hw' : w ∈ L.active :: L.flag :: L.cin :: (L.constant ++ L.carry ++ L.counter.wires)) :
      w ∉ L.data := L.not_data hnd w hw'
  refine ⟨hp, ⟨hv.2, (he _ (hd _ (by simp))).trans h.flag, hv.1, (he _ (hd _ (by simp))).trans h.cin,
    (regValue_congr _ _ _ (fun w hw' => he w (hd w (by simp [hw'])))).trans h.constant,
    (regValue_congr _ _ _ (fun w hw' => he w (hd w (by simp [HalvingLayout.carry, hw'])))).trans h.chain,
    (he _ (hd _ (by simp [HalvingLayout.carry]))).trans h.top,
    HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => he w (hd w (by simp [hw'])))⟩⟩

/-- 第 3 步（减半）：data += flag·q，常数字与进位链回零。 -/
theorem step_addConst (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K X : Nat) (F A : Bool) (hq : q < 2^L.constant.length) :
    Triple (HalvingValues L K X F A) (maskedAddConst L.flag L.constant L.data L.chain L.cin q)
      (HalvingValues L K ((X + (if F then q else 0)) % 2^L.data.length) F A) := by
  intro s m h
  obtain ⟨hp, hv⟩ := maskedAddConst_spec L.flag L.cin L.constant L.data L.chain (L.addConst_nodup hnd)
    hw.constant hw.chain q hq F X s m ⟨⟨⟨⟨h.flag, h.constant⟩, h.data⟩, h.cin⟩, h.chain⟩
  simp only [Holds.holds] at hv
  have hout (w : Wire) (hm : w ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset) :
      (run (maskedAddConst L.flag L.constant L.data L.chain L.cin q) m s).basis w = s.basis w :=
    run_preserves_outside _ m s w (fun hh =>
      hm ((maskedConst_wires_subset L.flag L.constant L.data L.chain L.cin q hw.constant hw.chain).1 hh))
  have hcnt := List.nodup_iff_count.mp hnd
  have hact : L.active ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset := by
    intro hm
    have h1 := hcnt L.active
    have h2 := List.count_pos_iff.mpr (List.mem_toFinset.mp hm)
    simp only [HalvingLayout.wires, HalvingLayout.carry, List.count_cons, List.count_append,
      beq_self_eq_true, if_true] at h1 h2; omega
  have htop : L.top ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset := by
    intro hm
    have h1 := hcnt L.top
    have h2 := List.count_pos_iff.mpr (List.mem_toFinset.mp hm)
    simp only [HalvingLayout.wires, HalvingLayout.carry, List.count_cons, List.count_append,
      beq_self_eq_true, if_true] at h1 h2; omega
  have hctr (w : Wire) (hw' : w ∈ L.counter.wires) :
      w ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset := by
    intro hm
    have := L.counter_outside hnd w hw'
    apply this
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append, HalvingLayout.carry] at hm ⊢
    tauto
  refine ⟨hp, ⟨hv.1.1.2, hv.1.1.1.1, (hout _ hact).trans h.active, hv.1.2, hv.1.1.1.2, hv.2,
    (hout _ htop).trans h.top, HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => hout w (hctr w hw'))⟩⟩

/-- 第 4 步（加倍）：data −= flag·q。 -/
theorem step_subConst (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K X : Nat) (F A : Bool) (hq : q < 2^L.constant.length) :
    Triple (HalvingValues L K X F A) (maskedSubConst L.flag L.constant L.data L.chain L.cin q)
      (HalvingValues L K ((X + 2^L.data.length - (if F then q else 0)) % 2^L.data.length) F A) := by
  intro s m h
  obtain ⟨hp, hv⟩ := maskedSubConst_spec L.flag L.cin L.constant L.data L.chain (L.addConst_nodup hnd)
    hw.constant hw.chain q hq F X s m ⟨⟨⟨⟨h.flag, h.constant⟩, h.data⟩, h.cin⟩, h.chain⟩
  simp only [Holds.holds] at hv
  have hout (w : Wire) (hm : w ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset) :
      (run (maskedSubConst L.flag L.constant L.data L.chain L.cin q) m s).basis w = s.basis w :=
    run_preserves_outside _ m s w (fun hh =>
      hm ((maskedConst_wires_subset L.flag L.constant L.data L.chain L.cin q hw.constant hw.chain).2 hh))
  have hcnt := List.nodup_iff_count.mp hnd
  have hact : L.active ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset := by
    intro hm
    have h1 := hcnt L.active
    have h2 := List.count_pos_iff.mpr (List.mem_toFinset.mp hm)
    simp only [HalvingLayout.wires, HalvingLayout.carry, List.count_cons, List.count_append,
      beq_self_eq_true, if_true] at h1 h2; omega
  have htop : L.top ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset := by
    intro hm
    have h1 := hcnt L.top
    have h2 := List.count_pos_iff.mpr (List.mem_toFinset.mp hm)
    simp only [HalvingLayout.wires, HalvingLayout.carry, List.count_cons, List.count_append,
      beq_self_eq_true, if_true] at h1 h2; omega
  have hctr (w : Wire) (hw' : w ∈ L.counter.wires) :
      w ∉ (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset := by
    intro hm
    have := L.counter_outside hnd w hw'
    apply this
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append, HalvingLayout.carry] at hm ⊢
    tauto
  refine ⟨hp, ⟨hv.1.1.2, hv.1.1.1.1, (hout _ hact).trans h.active, hv.1.2, hv.1.1.1.2, hv.2,
    (hout _ htop).trans h.top, HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => hout w (hctr w hw'))⟩⟩

/-- 第 6 步（减半）/ 第 2 步（加倍）：flag ^= active ∧ [data < Kc]，比较器工作区回零。 -/
theorem step_compare (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (Kc K X : Nat) (F A : Bool) (hKc : Kc < 2^L.constant.length) :
    Triple (HalvingValues L K X F A)
      (compareLtConst (some L.active) L.data L.constant L.carry L.cin L.flag Kc)
      (HalvingValues L K X (F ^^ (A && decide (X < Kc))) A) := by
  intro s m h
  have hcl : L.carry.length = L.constant.length := by
    rw [L.carry_length, hw.chain, hw.constant]
  have hcarry : regValue L.carry s.basis = 0 := (L.carry_zero s.basis).mpr ⟨h.chain, h.top⟩
  obtain ⟨hp, hv⟩ := maskedCompareLtConst_spec L.active L.data L.constant L.carry L.cin L.flag
    (L.compare_nodup hnd) hw.constant.symm hcl Kc hKc A X F s m
    ⟨⟨⟨⟨⟨h.active, h.data⟩, h.constant⟩, hcarry⟩, h.cin⟩, h.flag⟩
  simp only [Holds.holds] at hv
  have hout (w : Wire) (hm : w ∉ (L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry)).toFinset) :
      (run (compareLtConst (some L.active) L.data L.constant L.carry L.cin L.flag Kc) m s).basis w =
        s.basis w := by
    apply run_preserves_outside
    rw [(compareLt_wires (some L.active) L.data L.constant L.carry L.cin L.flag hw.constant.symm hcl).2 Kc]
    simpa only [Option.toList_some, List.singleton_append] using hm
  obtain ⟨hchain, htop⟩ := (L.carry_zero _).mp hv.1.1.2
  refine ⟨hp, ⟨hv.1.1.1.1.2, hv.2, hv.1.1.1.1.1, hv.1.2, hv.1.1.1.2, hchain, htop,
    HalvingCounter.congr _ _ _ _ h.counter (fun w hw' => hout w (L.counter_outside hnd w hw'))⟩⟩

/-- 完整减半轮：只改写 data，全部借用工作线清零，计数 K 保持。 -/
theorem halveStep_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q i K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hi : i < 512) (hK : K ≤ 512) :
    Triple (HalvingValues L K X false false) (halveStep L q i)
      (HalvingValues L K (if i < K then halveMod q X else X) false false) := by
  have hqfit : q < 2^L.constant.length := by rw [hw.constant]; omega
  have hcfit : (q+1)/2 < 2^L.constant.length := by omega
  let A := decide (i < K)
  let F := A && decide (X % 2 ≠ 0)
  let Y := X + (if F then q else 0)
  have hyfit : Y < 2^L.data.length := by dsimp [Y]; split_ifs <;> omega
  have heven : A = true → Y % 2 = 0 := by
    intro ha; simp only [Y, F, ha, Bool.true_and]; split_ifs <;> simp_all; omega
  have h1 := step_active L hnd hw i K X false false hi hK
  simp only [Bool.false_xor] at h1
  have h2 := step_parity L hnd hw K X false A
  simp only [Bool.false_xor] at h2
  have h3 := step_addConst L hnd hw q K X F A hqfit
  change Triple _ _ (HalvingValues L K (Y % 2^L.data.length) F A) at h3
  rw [Nat.mod_eq_of_lt hyfit] at h3
  have h4 := step_shiftRight L hnd K Y F A heven
  let Z := if A then Y/2 else Y
  have h5 := step_flip L hnd K Z F A
  have h6 := step_compare L hnd hw ((q+1)/2) K Z (F ^^ A) A hcfit
  have hflag : ((F ^^ A) ^^ (A && decide (Z < (q+1)/2))) = false := by
    by_cases ha : i < K
    · have hz : Z = halveMod q X := by
        simp only [Z, Y, F, A, ha, decide_true, Bool.true_and, if_true]
        unfold halveMod; split_ifs <;> simp_all
      have hp := halve_parity q X hq hX
      rw [hz]; dsimp [F, A]; simp only [ha, decide_true, Bool.true_and]
      by_cases hx : X % 2 ≠ 0 <;> by_cases hz : halveMod q X < (q+1)/2 <;> simp_all; omega
    · simp [F, A, ha]
  rw [hflag] at h6
  have h7 := step_active L hnd hw i K Z false A hi hK
  have haa : (A ^^ decide (i < K)) = false := by simp [A]
  rw [haa] at h7
  have hz : Z = if i < K then halveMod q X else X := by
    by_cases ha : i < K
    · simp only [Z, Y, F, A, ha, decide_true, Bool.true_and, if_true]
      unfold halveMod; split_ifs <;> simp_all
    · simp [Z, Y, F, A, ha]
  have hall := (((((h1.seq h2).seq h3).seq h4).seq h5).seq h6).seq h7
  rw [hz] at hall
  exact hall

/-- 完整加倍轮：显式前向门列撤销减半，不倒放测量。 -/
theorem doubleStep_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q i K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hi : i < 512) (hK : K ≤ 512) :
    Triple (HalvingValues L K X false false) (doubleStep L q i)
      (HalvingValues L K (if i < K then (2*X)%q else X) false false) := by
  have hqfit : q < 2^L.constant.length := by rw [hw.constant]; omega
  have hcfit : (q+1)/2 < 2^L.constant.length := by omega
  let A := decide (i < K)
  let C := A && decide (X < (q+1)/2)
  let F := C ^^ A
  let Y := if A then 2*X else X
  let Z := (Y + 2^L.data.length - (if F then q else 0)) % 2^L.data.length
  have hd := double_flag q X hq hX
  have hz : Z = if i < K then (2*X)%q else X := by
    by_cases ha : i < K
    · by_cases hx : X < (q+1)/2
      · have hlt : 2*X < q := by omega
        simp [Z, Y, F, C, A, ha, hx, Nat.mod_eq_of_lt hlt,
          Nat.mod_eq_of_lt (show 2*X < 2^L.data.length by omega)]
      · have hle : q ≤ 2*X := by omega
        have he : 2*X + 2^L.data.length - q = (2*X-q) + 2^L.data.length := by omega
        simp [Z, Y, F, C, A, ha, hx, he, hd.2.1,
          show (q+1)/2 ≤ X by omega, Nat.mod_eq_of_lt (show 2*X-q < 2^L.data.length by omega)]
    · simp [Z, Y, F, C, A, ha, Nat.mod_eq_of_lt (show X < 2^L.data.length by omega)]
  have hflag : (F ^^ (A && decide (Z % 2 ≠ 0))) = false := by
    rw [hz]
    by_cases ha : i < K
    · by_cases hx : X < (q+1)/2
      · have he : ((2*X)%q)%2 = 0 := by omega
        simp [F, C, A, ha, hx, he]
      · have he : ((2*X)%q)%2 ≠ 0 := by omega
        simp [F, C, A, ha, hx, he]
    · simp [F, C, A, ha]
  have h1 := step_active L hnd hw i K X false false hi hK
  simp only [Bool.false_xor] at h1
  have h2 := step_compare L hnd hw ((q+1)/2) K X false A hcfit
  simp only [Bool.false_xor] at h2
  have h3 := step_flip L hnd K X C A
  have h4 := step_shiftLeft L hnd K X F A (by intro _; omega)
  have h5 := step_subConst L hnd hw q K Y F A hqfit
  have h6 := step_parity L hnd hw K Z F A
  rw [hflag] at h6
  have h7 := step_active L hnd hw i K Z false A hi hK
  have haa : (A ^^ decide (i < K)) = false := by simp [A]
  rw [haa] at h7
  have hall := (((((h1.seq h2).seq h3).seq h4).seq h5).seq h6).seq h7
  rw [hz] at hall
  exact hall

/-- 固定轮数前向减半及逆序加倍恢复；每轮仍执行同一字面门列。 -/
def halveInPlace (L : HalvingLayout) (q i : Nat) : Nat → Program
  | 0 => []
  | n+1 => halveStep L q i ++ halveInPlace L q (i+1) n

def restoreInPlace (L : HalvingLayout) (q i : Nat) : Nat → Program
  | 0 => []
  | n+1 => restoreInPlace L q (i+1) n ++ doubleStep L q i

def halvingValue (q K i : Nat) : Nat → Nat → Nat
  | 0, X => X
  | n+1, X => halvingValue q K (i+1) n (if i<K then halveMod q X else X)

theorem halveInPlace_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K i n X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hK : K ≤ 512) (hn : i+n ≤ 512) :
    Triple (HalvingValues L K X false false) (halveInPlace L q i n)
      (HalvingValues L K (halvingValue q K i n X) false false) ∧
    Triple (HalvingValues L K (halvingValue q K i n X) false false) (restoreInPlace L q i n)
      (HalvingValues L K X false false) := by
  induction n generalizing i X with
  | zero => exact ⟨fun _ _ h => ⟨rfl,h⟩, fun _ _ h => ⟨rfl,h⟩⟩
  | succ n ih =>
    let Y := if i<K then halveMod q X else X
    have hy : Y < q := by dsimp [Y]; split_ifs; exact halve_mod_bound q X hq hX; exact hX
    obtain ⟨hf,hb⟩ := ih (i+1) Y hy (by omega)
    have hs := halveStep_spec L hnd hw q i K X hq hX hfit (by omega) hK
    have hr := doubleStep_spec L hnd hw q i K Y hq hy hfit (by omega) hK
    have hv : (if i<K then (2*Y)%q else Y) = X := by
      dsimp [Y]; split_ifs <;> simp_all [double_halve_mod q X hq hX]
    rw [hv] at hr
    exact ⟨hs.seq hf, hb.seq hr⟩

theorem halvingValue_eq (q K i n X : Nat) :
    halvingValue q K i n X = (halveMod q)^[min n (K-i)] X := by
  induction n generalizing i X with
  | zero => simp [halvingValue]
  | succ n ih =>
    rw [halvingValue, ih]
    by_cases hi : i<K
    · rw [if_pos hi, show min (n+1) (K-i) = min n (K-(i+1))+1 by omega,
        Function.iterate_succ_apply]
    · simp [hi, show K-i=0 by omega, show K-(i+1)=0 by omega]

/-- 两种轮的门数相同：3n+40 Toffoli、2n+39 次测量。 -/
theorem halveStep_counts (L : HalvingLayout) (hw : L.Widths) (q i : Nat) :
    toffoliCount (halveStep L q i) = 3*L.data.length+40 ∧
    measurementCount (halveStep L q i) = 2*L.data.length+39 ∧
    toffoliCount (doubleStep L q i) = 3*L.data.length+40 ∧
    measurementCount (doubleStep L q i) = 2*L.data.length+39 := by
  have hc := counterActiveXor_counts L.counter L.counterHigh.out L.active i
  have ha := addInPlace_counts L.constant L.data L.chain L.cin hw.constant hw.chain
  have hs := subInPlace_counts L.constant L.data L.chain L.cin hw.constant hw.chain
  have hm := maskedConstant_counts L.flag L.constant q
  have hh := shift_counts L.active L.data
  have hl : L.carry.length = L.constant.length := by rw [L.carry_length, hw.chain, hw.constant]
  have hp := (compareLt_counts (some L.active) L.data L.constant L.carry L.cin L.flag
    hw.constant.symm hl).2.2 ((q+1)/2)
  simp only [halveStep, doubleStep, maskedAddConst, maskedSubConst,
    toffoliCount_append, measurementCount_append, hc.1, hc.2, ha.1, ha.2, hs.1, hs.2,
    hm.1, hm.2, hh.1, hh.2.1, hh.2.2.1, hh.2.2.2, hp.1, hp.2, hw.counter,
    hw.constant, Option.isSome_some, if_true, toffoliCount, measurementCount]
  have := hw.chain
  omega

theorem halveInPlace_counts (L : HalvingLayout) (hw : L.Widths) (q i n : Nat) :
    toffoliCount (halveInPlace L q i n) = n*(3*L.data.length+40) ∧
    measurementCount (halveInPlace L q i n) = n*(2*L.data.length+39) ∧
    toffoliCount (restoreInPlace L q i n) = n*(3*L.data.length+40) ∧
    measurementCount (restoreInPlace L q i n) = n*(2*L.data.length+39) := by
  induction n generalizing i with
  | zero => simp [halveInPlace,restoreInPlace,toffoliCount,measurementCount]
  | succ n ih =>
    have hs := halveStep_counts L hw q i
    have hn := ih (i+1)
    simp only [halveInPlace,restoreInPlace,toffoliCount_append,measurementCount_append,
      hs.1,hs.2.1,hs.2.2.1,hs.2.2.2,hn.1,hn.2.1,hn.2.2.1,hn.2.2.2,Nat.succ_mul]
    simp only [Nat.add_comm, and_self]

theorem halveStep_wires (L : HalvingLayout) (hw : L.Widths) (q i : Nat) :
    wires (halveStep L q i) = L.wires.toFinset ∧
    wires (doubleStep L q i) = L.wires.toFinset := by
  have hc := counterActiveXor_wires L.counter L.counterHigh.out L.active i
    (by rw [L.counter_out]; simp)
  have hl : L.carry.length = L.constant.length := by rw [L.carry_length, hw.chain, hw.constant]
  have hp := (compareLt_wires (some L.active) L.data L.constant L.carry L.cin L.flag
    hw.constant.symm hl).2 ((q+1)/2)
  have ha := maskedConst_wires_subset L.flag L.constant L.data L.chain L.cin q hw.constant hw.chain
  have hh := shift_wires L.active L.data
  have hhead : L.data.head! ∈ L.data := List.head!_mem_self (L.data_ne_nil hw)
  have hsub : (L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain)).toFinset ⊆ L.wires.toFinset := by
    intro w; simp [HalvingLayout.wires,HalvingLayout.carry]; tauto
  have har := ha.1.trans hsub
  have has := ha.2.trans hsub
  have hshift : (L.active :: L.data).toFinset ⊆ L.wires.toFinset := by
    intro w; simp [HalvingLayout.wires]; tauto
  have hsr : wires (shiftRight L.active L.data) ⊆ L.wires.toFinset := by
    rw [hh.1]; split_ifs; exact Finset.empty_subset _; exact hshift
  have hsl : wires (shiftLeft L.active L.data) ⊆ L.wires.toFinset := by
    rw [hh.2]; split_ifs; exact Finset.empty_subset _; exact hshift
  have hcsub : (L.active :: L.counter.wires).toFinset ⊆ L.wires.toFinset := by
    intro w; simp [HalvingLayout.wires]; tauto
  have hpsub : (L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry)).toFinset ⊆
      L.wires.toFinset := by intro w; simp [HalvingLayout.wires]; tauto
  have hsingle : wires [Instr.CCX L.active L.data.head! L.flag] ⊆ L.wires.toFinset := by
    intro w
    simp only [wires,Instr.wires,Finset.mem_union,Finset.mem_insert,Finset.mem_singleton,
      Finset.notMem_empty,or_false]
    rintro (rfl|rfl|rfl) <;> simp [HalvingLayout.wires,hhead]
  have hflip : wires [Instr.CX L.active L.flag] ⊆ L.wires.toFinset := by
    intro w
    simp only [wires,Instr.wires,Finset.mem_union,Finset.mem_insert,Finset.mem_singleton,
      Finset.notMem_empty,or_false]
    rintro (rfl|rfl) <;> simp [HalvingLayout.wires]
  have hcover : L.wires.toFinset ⊆ (L.active :: L.counter.wires).toFinset ∪
      (L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry)).toFinset := by
    intro w; simp only [HalvingLayout.wires,List.mem_toFinset,List.mem_cons,List.mem_append,Finset.mem_union]
    tauto
  simp only [Option.toList_some,List.singleton_append] at hp
  constructor
  · apply Finset.Subset.antisymm
    · simp only [halveStep,wires_append,Finset.union_subset_iff,hc,hp]
      exact ⟨⟨⟨⟨⟨⟨hcsub,hsingle⟩,har⟩,hsr⟩,hflip⟩,hpsub⟩,hcsub⟩
    · intro w hw'
      have := hcover hw'
      simp only [halveStep,wires_append,hc,hp,Finset.mem_union] at this ⊢
      tauto
  · apply Finset.Subset.antisymm
    · simp only [doubleStep,wires_append,Finset.union_subset_iff,hc,hp]
      exact ⟨⟨⟨⟨⟨⟨hcsub,hpsub⟩,hflip⟩,hsl⟩,has⟩,hsingle⟩,hcsub⟩
    · intro w hw'
      have := hcover hw'
      simp only [doubleStep,wires_append,hc,hp,Finset.mem_union] at this ⊢
      tauto

theorem halveInPlace_wires (L : HalvingLayout) (hw : L.Widths) (q i n : Nat) :
    wires (halveInPlace L q i n) = (if n=0 then ∅ else L.wires.toFinset) ∧
    wires (restoreInPlace L q i n) = (if n=0 then ∅ else L.wires.toFinset) := by
  induction n generalizing i with
  | zero => simp [halveInPlace,restoreInPlace,wires]
  | succ n ih =>
    have hs := halveStep_wires L hw q i
    have hn := ih (i+1)
    simp only [halveInPlace,restoreInPlace,wires_append,hs.1,hs.2,hn.1,hn.2,
      Nat.add_eq_zero_iff, Nat.one_ne_zero, and_false, if_false]
    split_ifs <;> simp

end ECDSAAdd.Arithmetic
