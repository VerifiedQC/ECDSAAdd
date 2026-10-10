import ECDSAAdd.Arithmetic.ModularAddition.ModAddCoreSteps

namespace ECDSAAdd.Arithmetic
open Instr
open scoped CircuitDSL
open scoped ECDSAAdd.ProofLanguage

/-- L.z ← (L.z+L.a) mod p，要求 0<p<2^n、L.a≤p、L.z<p。
n 是目标低位寄存器 L.low 的长度，L.z=L.low++[L.high]。 -/
def modAddCore (L : ModAddCoreLayout) (p : Nat) : Program := prog {
  let source := L.a;
  let target := L.z;                    -- 用于保存完整的和。
  let borrow := L.high;                -- target 的最高位：试减后 0 表示没有借位，1 表示发生借位。
  let n := L.low.length;
  target = (source + target) mod (2^(n+1)) using (addInPlace source target L.carry L.cin) by (modAddCore_sum L n);
  target = (target - const(p)) mod (2^(n+1)) using ((modAddCoreContext L).operations.subConst target p) by (fun A Z => modAddCore_reduce L n A Z p);
  if borrow { L.low = (L.low + const(p)) mod (2^n); } using ((modAddCoreContext L).operations.maskedAddConst borrow L.low p) by (modAddCore_addback_step L p);
  target = L.low using (compareLt none L.low (source.take n) L.carry L.cin borrow ++ [.X borrow]) by (modAddCore_finish L n); -- 保留低 n 位，清零借位。
}

/-- 保留原逐步门列，供规格及资源证明使用。 -/
theorem modAddCore_program (L : ModAddCoreLayout) (p : Nat) : modAddCore L p =
    addInPlace L.a L.z L.carry L.cin ++ xorConstant L.constant p ++
    subInPlace L.constant L.z L.carry L.cin ++ xorConstant L.constant p ++
    maskedAddConst L.high (L.constant.take L.low.length) L.low
      (L.carry.take (L.low.length-1)) L.cin p ++
    compareLt none L.low (L.a.take L.low.length) L.carry L.cin L.high ++ [.X L.high] := by
  simp only [modAddCore, modAddCoreContext, List.append_assoc]

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
  simp only [modAddCore_program, maskedAddConst, toffoliCount_append, measurementCount_append,
    ha.1, ha.2, hs.1, hs.2, hm.1, hm.2, hc.1, hc.2,
    (xorConstant_counts _ _).1, (xorConstant_counts _ _).2,
    (maskedConstant_counts _ _ _).1, (maskedConstant_counts _ _ _).2,
    hz, hw.low, toffoliCount, measurementCount]
  simp only [List.length_take, hw.a, Nat.min_eq_left (by omega : n ≤ n+1)]
  simp
  omega

/-- 扩展源 A≤p 的完整模加：保留源、规范化目标、全部核工作位归零，并恢复相位。 -/
theorem modAddCore_spec (L : ModAddCoreLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) :
    {{ L.a=A, L.z=Z, L.work=0 }} modAddCore L p
    {{ L.a=A, L.z=(A+Z)%p, L.work=0 }} := Proof
  have hn : 0<n := by
    by_contra h
    have he : n=0 := by omega
    rw [he] at hpn
    simp at hpn
    omega
  { A+Z<2^(n+1) } as hsum by (by rw [Nat.pow_succ]; omega);
  have hwide : p<2^(n+1) := by rw [Nat.pow_succ]; omega
  let D := (A+Z+2^(n+1)-p)%2^(n+1)
  let R := (A+Z)%p
  let B := decide (A+Z<p)
  { {{ L.a=A, L.z=Z, L.work=0 }} addInPlace L.a L.z L.carry L.cin
      {{ L.a=A, L.z=A+Z, L.work=0 }} } as sum by (by
    simpa only [Nat.mod_eq_of_lt hsum] using modAddCore_sum L n A Z hw hnd);
  { {{ L.a=A, L.z=A+Z, L.work=0 }}
      (xorConstant L.constant p ++ subInPlace L.constant L.z L.carry L.cin ++
        xorConstant L.constant p)
      {{ L.a=A, L.z=D, L.work=0 }} }
    as subtractModulus by (modAddCore_reduce L n A (A+Z) p hw hnd hwide);
  { (D%2^n+(if B then p else 0))%2^n=R } as reducedValue by (by
    simpa only [D,B,R,decide_eq_true_eq] using modAddCore_low (A+Z) p n hp hpn (by omega));
  { 2^n≤D ↔ A+Z<p } as hborrow by (addReduction (A+Z) p n hp hpn (by omega)).1;
  -- The final result and unchanged source determine the old borrow, so it is erasable.
  { B = !decide (R<A) } as hlast by (by
    have hh := modAddCore_cleanup A Z p hA hZ
    dsimp [B, R]
    by_cases h : A+Z<p
    · have hh' := hh.mp h
      simp [h, Nat.not_lt.mpr hh']
    · have hh' : ¬ A≤(A+Z)%p := fun he => h (hh.mpr he)
      simp [h, Nat.lt_of_not_ge hh']);
  have hadd := modAddCore_addback L n A (D%2^n) p B hw hnd hn hpn
  { {{ L.a=A, L.low=R, L.high=B, L.work=0 }}
      (compareLt none L.low (L.a.take L.low.length) L.carry L.cin L.high ++ [.X L.high])
      {{ L.a=A, L.z=R, L.work=0 }} }
    as hfinish by (modAddCore_finish L n A R B hw hnd (by omega) hlast);
  have hrest :
      {{ L.a=A, L.z=D, L.work=0 }}
        (maskedAddConst L.high (L.constant.take L.low.length) L.low
          (L.carry.take (L.low.length-1)) L.cin p ++
          (compareLt none L.low (L.a.take L.low.length) L.carry L.cin L.high ++ [.X L.high]))
      {{ L.a=A, L.z=R, L.work=0 }} := by
    have hmiddle :
        {{ L.a=A, L.low=D%2^n, L.high=B, L.work=0 }}
          maskedAddConst L.high (L.constant.take L.low.length) L.low
            (L.carry.take (L.low.length-1)) L.cin p
        {{ L.a=A, L.low=R, L.high=B, L.work=0 }} := hadd.conseq (fun _ h => h) (fun st h => by
      simp only [Holds.holds] at h ⊢
      exact ⟨⟨⟨h.1.1.1, reducedValue ▸ h.1.1.2⟩, h.1.2⟩, h.2⟩)
    apply (hmiddle.seq hfinish).conseq ?_ (fun _ h => h)
    intro st h
    simp only [Holds.holds] at h ⊢
    have hl : regValue L.low st=D%2^n := by
      rw [regValue_low L.low L.high, ← ModAddCoreLayout.z, h.1.2, hw.low]
    have hb : st L.high=B := by
      have hh := regValue_highBit L.low L.high st
      rw [← ModAddCoreLayout.z, h.1.2, hw.low] at hh
      have he : st L.high=true ↔ A+Z<p := hh.trans hborrow
      cases hv : st L.high
      · have hn : ¬ A+Z<p := fun ht => by simpa only [hv, Bool.false_eq_true] using he.mpr ht
        simp only [B, decide_eq_false hn]
      · have hy : A+Z<p := he.mp hv
        simp only [B, decide_eq_true hy]
    exact ⟨⟨⟨h.1.1, hl⟩, hb⟩, h.2⟩
  conclude { {{ L.a=A, L.z=Z, L.work=0 }} modAddCore L p
    {{ L.a=A, L.z=R, L.work=0 }} } by (by
    simpa only [modAddCore_program, List.append_assoc, D, R] using
      (sum.seq subtractModulus).seq hrest);

/-- 核的实际支持恰为源、目标、常数字及进位工作线；没有隐含的 mask/flag。 -/
theorem modAddCore_wires (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n) : wires (modAddCore L p) = L.wires.toFinset := by
  have hz : L.z.length=n+1 := by simp [ModAddCoreLayout.z, hw.low]
  have ha := addInPlace_wires L.a L.z L.carry L.cin (hw.a.trans hz.symm)
    (by rw [hw.carry, hz])
  have hs := subInPlace_wires L.constant L.z L.carry L.cin (hw.constant.trans hz.symm)
    (by rw [hw.carry, hz])
  have ht : (L.constant.take L.low.length).length=L.low.length := by simp [hw.low, hw.constant]
  have hk : (L.carry.take (L.low.length-1)).length+1=L.low.length := by
    simp [hw.low, hw.carry]; omega
  have hm := (maskedConst_wires_subset L.high (L.constant.take L.low.length) L.low
    (L.carry.take (L.low.length-1)) L.cin p ht hk).1
  have hx : (L.a.take L.low.length).length=n := by simp [hw.low, hw.a]
  have hc := (compareLt_wires none L.low (L.a.take L.low.length) L.carry L.cin L.high
    (hw.low.trans hx.symm) (hw.carry.trans hx.symm)).1
  have htSub := (List.take_sublist L.low.length L.constant).subset
  have hcSub := (List.take_sublist (L.low.length-1) L.carry).subset
  have hxSub := (List.take_sublist L.low.length L.a).subset
  have hconst := xorConstant_wires_subset L.constant p
  apply Finset.Subset.antisymm
  · intro q hq
    simp only [modAddCore_program, wires_append, Finset.mem_union, ha, hs, hc] at hq
    have base : q ∈ L.a ∨ q ∈ L.z ∨ q ∈ L.constant ∨ q ∈ L.carry ∨ q=L.cin ∨ q=L.high := by
      rcases hq with (((((hq | hq) | hq) | hq) | hq) | hq) | hq
      · simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hq; tauto
      · have := List.mem_toFinset.mp (hconst hq); tauto
      · simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hq; tauto
      · have := List.mem_toFinset.mp (hconst hq); tauto
      · have hh := List.mem_toFinset.mp (hm hq)
        simp only [List.mem_cons, List.mem_append] at hh
        rcases hh with hh | hh | (hh | hh) | hh
        · tauto
        · tauto
        · have := htSub hh; tauto
        · have : q ∈ L.z := by simp [ModAddCoreLayout.z, hh]
          tauto
        · have := hcSub hh; tauto
      · simp only [List.mem_toFinset, Option.toList_none, List.nil_append,
          List.mem_cons, List.mem_append] at hq
        rcases hq with hq | hq | (hq | hq) | hq
        · tauto
        · tauto
        · have : q ∈ L.z := by simp [ModAddCoreLayout.z, hq]
          tauto
        · have := hxSub hq; tauto
        · tauto
      · have : q=L.high := by simpa [wires, Instr.wires] using hq
        tauto
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, ModAddCoreLayout.z,
      List.mem_toFinset, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at base ⊢
    tauto
  · intro q hq
    simp only [ModAddCoreLayout.wires, ModAddCoreLayout.work, List.mem_toFinset,
      List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hq
    have hbase : q ∈ wires (addInPlace L.a L.z L.carry L.cin) ∨
        q ∈ wires (subInPlace L.constant L.z L.carry L.cin) := by
      rw [ha, hs]
      simp only [List.mem_toFinset, List.mem_cons, List.mem_append]
      tauto
    simp only [modAddCore_program, wires_append, Finset.mem_union]
    rcases hbase with hb | hb
    · exact Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl hb)))))
    · exact Or.inl (Or.inl (Or.inl (Or.inl (Or.inr hb))))

/-- 完整核规格与支持集共同推出目标之外逐线保持，包括借用视图外的控制和掩码。 -/
theorem modAddCore_frame (L : ModAddCoreLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z) :
    (run (modAddCore L p) m s).basis q=s.basis q := by
  obtain ⟨_, h⟩ := modAddCore_spec L n p A Z hw hnd hp hpn hA hZ s m ⟨⟨ha,hz⟩,hc⟩
  simp only [Holds.holds] at h
  by_cases hqa : q∈L.a
  · exact (regValue_eq_iff _ _ _).mp (h.1.1.trans ha.symm) q hqa
  by_cases hqc : q∈L.work
  · exact (regValue_eq_iff _ _ _).mp (h.2.trans hc.symm) q hqc
  apply run_preserves_outside
  rw [modAddCore_wires L n p hw (by
    by_contra hn
    have he : n=0 := by omega
    rw [he] at hpn
    simp at hpn
    omega)]
  simpa [ModAddCoreLayout.wires] using And.intro hqa (And.intro hq hqc)

/-- 同一模加核程序的精确门数、测量数与实际静态线路数。 -/
theorem modAddCore_resources (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hn : 0<n) :
    toffoliCount (modAddCore L p)=4*n-1 ∧
    measurementCount (modAddCore L p)=4*n-1 ∧
    qubitCount (modAddCore L p)=4*n+4 := by
  refine ⟨(modAddCore_counts L n p hw hn).1, (modAddCore_counts L n p hw hn).2, ?_⟩
  rw [qubitCount, modAddCore_wires L n p hw hn, List.toFinset_card_of_nodup hnd]
  simp only [ModAddCoreLayout.wires, ModAddCoreLayout.z, ModAddCoreLayout.work,
    List.length_append, List.length_cons, List.length_nil, hw.a, hw.low, hw.constant, hw.carry]
  omega

end ECDSAAdd.Arithmetic
