import ECDSAAdd.Arithmetic.InverseLoopProof
import ECDSAAdd.Math.KaliskiInverse

namespace ECDSAAdd.Arithmetic

theorem LoopState.iff (L : KaliskiRoundLayout) (z : KState) (s : BasisState) :
    LoopState L z s ↔
      (((((((regValue L.u s=z.u ∧ regValue L.v s=z.v) ∧ regValue L.r s=z.r) ∧ regValue L.s s=z.s) ∧
        regValue L.k s=z.k) ∧ regValue L.kNext s=0) ∧ s L.done=decide (z.v=0)) ∧ regValue L.scratch s=0) := by
  constructor
  · intro h
    have hr : RoundState L z z.k 0 false (decide (z.v=0)) (s L.swap) (s L.subtract) s :=
      ⟨h.data,h.k,h.next,h.y,h.carry,h.active,h.done,rfl,rfl,h.odd,h.both,h.cin⟩
    have hh := (roundState_iff L z z.k 0 _ _ _ s).mp hr
    exact ⟨hh.1.1.1,hh.2⟩
  · rintro ⟨h,hw⟩
    have hr := (roundState_iff L z z.k 0 _ (s L.swap) (s L.subtract) s).mpr ⟨⟨⟨h,rfl⟩,rfl⟩,hw⟩
    exact ⟨hr.1,hr.2.k,hr.2.next,hr.2.y,hr.2.carry,hr.2.active,hr.2.done,hr.2.odd,hr.2.both,hr.2.cin⟩

theorem TapeValues.zero_iff (rs : List RoundRecord) (s : BasisState) :
    TapeValues rs (List.replicate rs.length (false,false)) s ↔ regValue (rs.flatMap RoundRecord.wires) s=0 := by
  induction rs with
  | nil => simp [TapeValues,regValue]
  | cons r rs ih =>
    simp only [List.length_cons,List.replicate_succ,TapeValues,List.flatMap_cons,RoundRecord.wires]
    rw [ih]
    simp [regValue_zero,or_imp,forall_and]

def InverseLoopLayout.work (L : InverseLoopLayout) : List Wire :=
  L.first.kNext++L.first.scratch++L.records.flatMap RoundRecord.wires++L.extra

theorem InverseExtra.zero_iff (L : InverseLoopLayout) (s : BasisState) :
    InverseExtra L 0 s ↔ regValue L.extra s=0 := by
  simp [InverseExtra,InverseLoopLayout.extra,regValue_zero,or_imp,forall_and]

theorem InverseInitial.iff (L : InverseLoopLayout) (q a : Nat) (ha : 0<a) (s : BasisState) :
    InverseInitial L q a s ↔
      ((((((regValue L.first.u s=q ∧ regValue L.first.v s=a) ∧ regValue L.first.r s=0) ∧
        regValue L.first.s s=1) ∧ regValue L.first.k s=0) ∧ s L.first.done=false) ∧ regValue L.work s=0) := by
  simp only [InverseInitial,LoopState.iff,TapeValues.zero_iff,InverseExtra.zero_iff,kaliskiInit,
    show decide (a=0)=false by simp [Nat.ne_of_gt ha]]
  simp only [InverseLoopLayout.work,regValue_zero,List.mem_append,or_imp,forall_and]
  tauto

/-- 为输入 X 保存的第一阶段历史：u/v/r/s、记录带、计数 k 及计数工作区。
不包含逆元寄存器 a、temp 或模算术区；这些值在准备/恢复规格中单独写明。
恢复段要求保留这一历史，以清除第一阶段的记录并恢复初始数据。 -/
def InverseHistory (L : InverseLoopLayout) (q X : Nat) (s : BasisState) : Prop :=
  InverseRest L (kaliskiStep^[512] (kaliskiInit q X)) (kaliskiCodes 512 (kaliskiInit q X)) s ∧
    HalvingCounter L.halving.counter (kaliskiStep^[512] (kaliskiInit q X)).k s ∧
    s L.middle.active=false

private theorem inverseMiddle_history_iff (L : InverseLoopLayout) (q X A : Nat) (s : BasisState) :
    InverseMiddle L (kaliskiStep^[512] (kaliskiInit q X)) (kaliskiCodes 512 (kaliskiInit q X)) A s ↔
      (((regValue L.a s=A ∧ regValue L.temp s=0) ∧ regValue L.arithmetic.wires s=0) ∧
        InverseHistory L q X s) := by
  simp only [InverseMiddle,InversePhase,InverseHistory,regValue_zero,List.mem_append,or_imp,forall_and]
  tauto

/-- 准备段在 a 中得到输入的模逆元；第一阶段历史保留供恢复，临时与模算术区清零。 -/
theorem inversePrepare_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257)
    (q X : Nat) (hq : q<2^256) (ho : q%2=1) (hX0 : 0<X) (hX : X<q) (hcop : q.Coprime X) :
    {{ L.first.u=q, L.first.v=X, L.first.r=0, L.first.s=1,
       L.first.k=0, L.first.done=false, L.work=0 }} inverseCompute L q
    {{ L.a=((X : ZMod q)⁻¹).val, L.temp=0, L.arithmetic.wires=0, InverseHistory L q X st }} := by
  have hwidth : L.first.data.width=L.arithmetic.width+1 := by
    simp [KaliskiRoundLayout.data,RoundDataLayout.width,hlow,harith]
  have hc := (inverseCompute_values L hnd hn hw hwidth (by omega) (by omega)
    q X (by omega) (by simpa only [hlow] using hq) (by simpa only [harith] using hq) ho hX hcop).1
  change Triple _ _ (InverseMiddle L _ _ (kaliskiInverse q X 256)) at hc
  rw [kaliski_correct q X 256 ho hq hX0 (hX.trans hq) hcop] at hc
  exact Triple.conseq (fun s h => (InverseInitial.iff L q X hX0 s).mpr h) hc
    (fun s h => (inverseMiddle_history_iff L q X _ s).mp h)

/-- 保持准备段的历史与逆元后，恢复段清除全部历史/工作区并恢复原输入数据。 -/
theorem inverseRestore_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257)
    (q X : Nat) (hq : q<2^256) (ho : q%2=1) (hX0 : 0<X) (hX : X<q) (hcop : q.Coprime X) :
    {{ L.a=((X : ZMod q)⁻¹).val, L.temp=0, L.arithmetic.wires=0, InverseHistory L q X st }}
      inverseUncompute L q
    {{ L.first.u=q, L.first.v=X, L.first.r=0, L.first.s=1,
       L.first.k=0, L.first.done=false, L.work=0 }} := by
  have hwidth : L.first.data.width=L.arithmetic.width+1 := by
    simp [KaliskiRoundLayout.data,RoundDataLayout.width,hlow,harith]
  have hc := (inverseCompute_values L hnd hn hw hwidth (by omega) (by omega)
    q X (by omega) (by simpa only [hlow] using hq) (by simpa only [harith] using hq) ho hX hcop).2
  change Triple (InverseMiddle L _ _ (kaliskiInverse q X 256)) _ _ at hc
  rw [kaliski_correct q X 256 ho hq hX0 (hX.trans hq) hcop] at hc
  exact Triple.conseq (fun s h => (inverseMiddle_history_iff L q X _ s).mpr h) hc
    (fun s h => (InverseInitial.iff L q X hX0 s).mp h)

/-- 任意输出的 XOR 形式；第一阶段已经载入 q、a、0、1，完整工作区初末均为零。 -/
theorem inverseLoop_xor_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a O : Nat) (hq : q<2^256) (ho : q%2=1) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a) :
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=O }}
      inverseLoop L q
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0,
      L.out=(O ^^^ kaliskiInverse q a 256) }} := by
  have hwidth : L.first.data.width=L.arithmetic.width+1 := by
    simp [KaliskiRoundLayout.data,RoundDataLayout.width,hlow,harith]
  have h := inverseLoop_values L hnd hn hw hwidth (by omega) (by omega) (by omega)
    q a O (by omega) (by simpa only [hlow] using hq) (by simpa only [harith] using hq) ho hx hcop
  apply Triple.conseq ?_ h ?_
  · intro s h; exact ⟨(InverseInitial.iff L q a hx0 s).mpr h.1,h.2⟩
  · intro s h
    exact ⟨(InverseInitial.iff L q a hx0 s).mp h.1,by simpa only [kaliskiInverse] using h.2⟩

/-- 常用零输出形式。fieldInverse 负责把外部输入装入这里要求的已初始化寄存器。 -/
theorem inverseLoop_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a : Nat) (hq : q<2^256) (ho : q%2=1) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a) :
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=0 }}
      inverseLoop L q
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0,
      L.out=kaliskiInverse q a 256 }} := by
  simpa only [Nat.zero_xor] using inverseLoop_xor_spec L hnd hn hw hlow harith ha ht hout q a 0 hq ho hx0 hx hcop

end ECDSAAdd.Arithmetic
