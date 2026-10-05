import ECDSAAdd.Arithmetic.ModularInverse.InverseScaleState

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL

/-- 从 Kaliski 初态 u=q、v=A、r=0、s=1、k=0 计算 L.a=A⁻¹ mod q，保留恢复历史。
要求 0<A<q、A 与 q 互素，以及 inverseCompute_values 的模数/位宽/512 轮条件。 -/
def inverseCompute (L : InverseLoopLayout) (q : Nat) : Program := prog {
  let records := L.records;       -- 每轮保存 swap/subtract 两位，共 512 轮。
  let r := L.middle.r;            -- Kaliski 循环结束时的系数 r。
  let inverse := L.a;             -- 用于保存逆元。
  let scaling := L.scaling;       -- 按活动轮数 k 修正逆元的缩放。
  kaliskiLoop(L.first, 0, records);              -- 更新 u/v/r/s/k，保存分支记录。
  negativeInit(L.arithmetic, q, r, L.temp, inverse); -- inverse = (-r) mod q
  scaling.prepare(q);                           -- inverse = A⁻¹ mod q
}

/-- 用 inverseCompute 的匹配输入与历史清零 L.a，恢复 u=q、v=A、r=0、s=1、k=0。 -/
def inverseUncompute (L : InverseLoopLayout) (q : Nat) : Program := prog {
  let r := L.middle.r; -- Kaliski 循环结束时的系数 r。
  let inverse := L.a; -- 保存待清零的逆元。
  let scaling := L.scaling; -- 逆元缩放的接线与历史。
  scaling.restore(q);                              -- inverse = (-r) mod q，清零缩放历史。
  negativeInit(L.arithmetic, q, r, L.temp, inverse); -- 清零 inverse。
  kaliskiUnloop(L.first, 0, L.records);              -- 恢复 Kaliski 初态，清零分支记录。
}

/-- 求逆作用域保留全部分支/缩放历史；结束后恢复 Kaliski 初态，而非把初态寄存器清零。 -/
abbrev inverseValue (L : InverseLoopLayout) (q : Nat) : CircuitDSL.Computed (List Wire) :=
  ⟨L.a, inverseCompute L q, inverseUncompute L q⟩

/-- L.out ^= A⁻¹ mod q，A 是初态 L.first.v 的值。
初态及数值条件同 inverseCompute；内部恢复到该初态。 -/
def inverseLoop (L : InverseLoopLayout) (q : Nat) : Program := prog {
  with inverse := (inverseValue L q) {
    L.out ^= inverse;
  };
}

def InverseInitial (L : InverseLoopLayout) (q a : Nat) (s : BasisState) : Prop :=
  (LoopState L.first (kaliskiInit q a) s ∧ TapeValues L.records (List.replicate L.records.length (false,false)) s) ∧
    InverseExtra L 0 s

theorem InverseExtra.congr (L : InverseLoopLayout) (A : Nat) (s t : BasisState)
    (h : InverseExtra L A s) (he : ∀ w∈L.extra,t w=s w) : InverseExtra L A t := by
  have keep (r : List Wire) (hr : r ⊆ L.extra) : regValue r t=regValue r s :=
    regValue_congr _ _ _ (fun w hw => he w (hr hw))
  exact ⟨(keep L.a (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.1,
    (keep L.temp (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.2.1,
    (keep L.arithmetic.wires (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.2.2⟩

theorem inverseFirst_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (q a : Nat) (hq0 : 0<q) (hq : q<2^L.first.low.length) (ha : a<q) (hcop : q.Coprime a) :
    Triple (InverseInitial L q a) (kaliskiLoop L.first 0 L.records)
      (InverseMiddle L (kaliskiStep^[512] (kaliskiInit q a)) (kaliskiCodes 512 (kaliskiInit q a)) 0) ∧
    Triple (InverseMiddle L (kaliskiStep^[512] (kaliskiInit q a)) (kaliskiCodes 512 (kaliskiInit q a)) 0)
      (kaliskiUnloop L.first 0 L.records) (InverseInitial L q a) := by
  have hd : 2≤L.first.data.width := by
    have hpos : 0<L.first.low.length := by
      by_contra hh
      have hz : L.first.low.length=0 := by omega
      simp [hz] at hq
      omega
    simp only [KaliskiRoundLayout.data,RoundDataLayout.width,List.length_append,List.length_cons,List.length_nil]
    omega
  have hh := kaliskiLoop_correct L.first L.records 0 q a (kaliskiInit q a) (L.first_nodup hnd) hw hd
    (by omega) (kaliski_round_count_init q a) (kaliski_init_invariant q a hq0 hcop) hq hq (lt_trans ha hq)
  have hwire := kaliskiLoop_wires L.first L.records 0 hw hd
  have hne : L.records.isEmpty=false := by
    cases he : L.records with
    | nil => rw [he] at hn; simp at hn
    | cons r rs => rfl
  simp only [hne] at hwire
  have hdis := (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).2.2
  have frame (circ : Program) (hc : wires circ=(L.first.usedTapeWires L.records).toFinset)
      (s t : BasisState) (he : ∀ w,w∉wires circ → s w=t w) (h : InverseExtra L 0 s) :
      InverseExtra L 0 t := by
    apply InverseExtra.congr L 0 s t h
    intro w hw
    apply (he w ?_).symm
    rw [hc]
    exact fun hh => List.disjoint_left.mp hdis ((L.first.usedTapeWires_sublist L.records).subset (List.mem_toFinset.mp hh)) hw
  have hf := hh.1.frame (frame _ hwire.1)
  have hb := hh.2.frame (frame _ hwire.2)
  have hm : loopEndLayout L.first 512=L.middle := by rw [InverseLoopLayout.middle,hn]
  rw [hn,hm] at hf hb
  refine ⟨Triple.conseq (fun _ h => by simpa only [InverseInitial,hn] using h) hf ?_,
    Triple.conseq ?_ hb (fun _ h => by simpa only [InverseInitial,hn] using h)⟩
  · intro s h; exact (InverseMiddle.iff L _ _ 0 s).mpr ⟨h.1.1,h.1.2,h.2⟩
  · intro s h; have hh := (InverseMiddle.iff L _ _ 0 s).mp h; exact ⟨⟨hh.1,hh.2.1⟩,hh.2.2⟩

theorem inverseCompute_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257)
    (q a : Nat) (hq : q<2^256) (ho : q%16=15) (hx : a<q) (hcop : q.Coprime a) :
    let z := kaliskiStep^[512] (kaliskiInit q a)
    let cs := kaliskiCodes 512 (kaliskiInit q a)
    let N := (-(z.r : ZMod q)).val
    Triple (InverseInitial L q a) (inverseCompute L q) (InverseScaledMiddle L q z cs N) ∧
    Triple (InverseScaledMiddle L q z cs N) (inverseUncompute L q) (InverseInitial L q a) := by
  dsimp only
  letI : NeZero q := ⟨by omega⟩
  let z := kaliskiStep^[512] (kaliskiInit q a)
  let cs := kaliskiCodes 512 (kaliskiInit q a)
  let N := (-(z.r : ZMod q)).val
  have hwidth : L.first.data.width=L.arithmetic.width+1 := by
    simp [KaliskiRoundLayout.data,RoundDataLayout.width,hl,hm]
  have hbnd := kaliski_register_bounds q a 512 (by omega) hcop
  have hr : z.r<2*q := hbnd.2.2.1
  have hN : N<q := ZMod.val_lt _
  have hfirst := inverseFirst_values L hnd hn hw q a (by omega) (by simpa only [hl] using hq) hx hcop
  have hneg : Triple (InverseMiddle L z cs 0) (negativeInit L.arithmetic q L.middle.r L.temp L.a)
      (InverseMiddle L z cs N) := by
    simpa only [Nat.zero_xor] using inverseNegative_values L hnd hwidth
      (by omega) (by omega) q z cs 0 (by omega) (by simpa only [hm] using hq) hr
  have hnegback : Triple (InverseMiddle L z cs N) (negativeInit L.arithmetic q L.middle.r L.temp L.a)
      (InverseMiddle L z cs 0) := by
    simpa only [N,Nat.xor_self] using inverseNegative_values L hnd hwidth
      (by omega) (by omega) q z cs N (by omega) (by simpa only [hm] using hq) hr
  have hscale := inverseScaling_values L hnd hl hw ha ht hm q ho hq z cs N hN
  exact ⟨(hfirst.1.seq hneg).seq hscale.1,(hscale.2.seq hnegback).seq hfirst.2⟩

end ECDSAAdd.Arithmetic
