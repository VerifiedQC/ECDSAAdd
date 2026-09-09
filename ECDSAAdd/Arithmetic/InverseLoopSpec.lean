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
    InverseExtra L 0 0 s ↔ regValue L.extra s=0 := by
  simp [InverseExtra,InverseLoopLayout.extra,regValue_zero,or_imp,forall_and,and_left_comm]

theorem InverseInitial.iff (L : InverseLoopLayout) (q a : Nat) (ha : 0<a) (s : BasisState) :
    InverseInitial L q a s ↔
      ((((((regValue L.first.u s=q ∧ regValue L.first.v s=a) ∧ regValue L.first.r s=0) ∧
        regValue L.first.s s=1) ∧ regValue L.first.k s=0) ∧ s L.first.done=false) ∧ regValue L.work s=0) := by
  simp only [InverseInitial,LoopState.iff,TapeValues.zero_iff,InverseExtra.zero_iff,kaliskiInit,
    show decide (a=0)=false by simp [Nat.ne_of_gt ha]]
  simp only [InverseLoopLayout.work,regValue_zero,List.mem_append,or_imp,forall_and]
  tauto

/-- 任意输出的 XOR 形式；第一阶段已经载入 q、a、0、1，完整工作区初末均为零。 -/
theorem inverseLoop_xor_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (hb : L.b.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a O : Nat) (hq : q<2^256) (ho : q%2=1) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a) :
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=O }}
      inverseLoop L q
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0,
      L.out=(O ^^^ kaliskiInverse q a 256) }} := by
  have hwidth : L.first.data.width=L.arithmetic.width+1 := by
    simp [KaliskiRoundLayout.data,RoundDataLayout.width,hlow,harith]
  have h := inverseLoop_values L hnd hn hw hwidth (by omega) (by omega) (by omega) (by omega)
    q a O (by omega) (by simpa only [hlow] using hq) (by simpa only [harith] using hq) ho hx hcop
  apply Triple.conseq ?_ h ?_
  · intro s h; exact ⟨(InverseInitial.iff L q a hx0 s).mpr h.1,h.2⟩
  · intro s h
    exact ⟨(InverseInitial.iff L q a hx0 s).mp h.1,by simpa only [kaliskiInverse] using h.2⟩

/-- 常用零输出形式。I5 将另行把外部输入装入这里要求的已初始化寄存器。 -/
theorem inverseLoop_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (hb : L.b.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a : Nat) (hq : q<2^256) (ho : q%2=1) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a) :
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=0 }}
      inverseLoop L q
    {{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0,
      L.out=kaliskiInverse q a 256 }} := by
  simpa only [Nat.zero_xor] using inverseLoop_xor_spec L hnd hn hw hlow harith ha hb ht hout q a 0 hq ho hx0 hx hcop

end ECDSAAdd.Arithmetic
