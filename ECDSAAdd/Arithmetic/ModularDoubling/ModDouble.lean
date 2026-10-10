import ECDSAAdd.Arithmetic.ModularDoubling.ModUnary

namespace ECDSAAdd.Arithmetic
open scoped ECDSAAdd.ProofLanguage

private theorem double_rotate (U : ModUnaryLayout) (n Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hfit : 2*Z<2^(n+1)) :
    {{ U.mask=0,U.z=Z,U.core.work=0 }} rotateLeft U.z
    {{ U.mask=0,U.z=(2*Z),U.core.work=0 }} := by
  have hznd : U.z.Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have h := List.nodup_iff_count.mp hnd q
    simp only [ModUnaryLayout.core,ModAddCoreLayout.wires,ModAddCoreLayout.z,
      ModUnaryLayout.z,List.count_append] at h ⊢
    omega
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hf,hv⟩ := rotateLeft_spec U.z hznd Z
    (by simpa [ModUnaryLayout.z,hw.low] using hfit) s m h.1.2
  have away (q : Wire) (hq : q∈U.mask++U.core.work) : q∉U.z := by
    intro hh
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hh
    have h3 := List.nodup_iff_count.mp hnd q
    simp only [ModUnaryLayout.core,ModAddCoreLayout.wires,ModAddCoreLayout.z,
      ModUnaryLayout.z,List.count_append] at h1 h2 h3
    omega
  have keep (q : Wire) (hq : q∈U.mask++U.core.work) := (rotate_frame U.z s m).2.2.2 q (away q hq)
  exact ⟨hf,⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1,hv⟩,
    (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2⟩

private theorem double_finish (U : ModUnaryLayout) (n R : Nat) (B : Bool)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hn : 0<n)
    (hB : B= !decide (R%2=1)) :
    {{ U.mask=0,U.low=R,U.high=B,U.core.work=0 }} [.X U.high,.CX U.bit U.high]
    {{ U.mask=0,U.z=R,U.core.work=0 }} := by
  have away (q : Wire) (hq : q∈U.mask++U.low++U.core.work) : q≠U.high := by
    intro hh; subst q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.nodup_iff_count.mp hnd U.high
    simp only [ModUnaryLayout.core,ModAddCoreLayout.wires,ModAddCoreLayout.z,List.count_append,
      List.count_cons,List.count_nil,beq_self_eq_true,if_true] at h1 h2
    omega
  have hbne : U.bit≠U.high := away U.bit (by simp [U.bit_mem n hw hn])
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hb : (s.basis U.bit).toNat=R%2 := by
    have hl := h.1.1.2
    cases he : U.low with
    | nil => have hh := hw.low; simp [he] at hh; omega
    | cons a as =>
      simp only [ModUnaryLayout.bit,he,List.headD_cons]
      rw [← hl,he]
      simp [regValue,Bool.toNat]; cases s.basis a <;> simp
  have hbit : s.basis U.bit=decide (R%2=1) := by
    cases he : s.basis U.bit <;> simp [he] at hb ⊢ <;> omega
  have hh : (run [.X U.high,.CX U.bit U.high] m s).basis U.high=false := by
    simp [run,writeBit,hbne,h.1.2,hbit,hB]
  have keep (q : Wire) (hq : q∈U.mask++U.low++U.core.work) :
      (run [.X U.high,.CX U.bit U.high] m s).basis q=s.basis q := by
    simp [run,writeBit,away q hq]
  refine ⟨rfl,⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.1,?_⟩,
    (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2⟩
  rw [ModUnaryLayout.z,regValue_append]
  have hl := (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1.1.2
  rw [hl]
  simp [regValue,hh]

private theorem double_core (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p) :
    {{ U.mask=0,U.z=Z,U.core.work=0 }} dblInPlace U p
    {{ U.mask=0,U.z=(2*Z)%p,U.core.work=0 }} := Proof
  have hpos : 0<p := by omega
  have hn : 0<n := by
    by_contra hh
    have hn0 : n=0 := by omega
    rw [hn0] at hpn
    simp at hpn
    omega
  let D := (2*Z+2^(n+1)-p)%2^(n+1)
  let R := (2*Z)%p
  let B := decide (2*Z<p)
  have hk := U.core_widths n hw
  { {{ U.mask=0,U.z=Z,U.core.work=0 }} rotateLeft U.z
      {{ U.mask=0,U.z=2*Z,U.core.work=0 }} } as double by
    (double_rotate U n Z hw hnd (by rw [Nat.pow_succ]; omega));
  { {{ U.mask=0,U.z=2*Z,U.core.work=0 }}
      (xorConstant U.constant p ++ subInPlace U.constant U.z U.carry U.cin ++ xorConstant U.constant p)
      {{ U.mask=0,U.z=D,U.core.work=0 }} } as subtractModulus by
    (modAddCore_reduce U.core n 0 (2*Z) p hk hnd (by rw [Nat.pow_succ]; omega));
  { (D%2^n+(if B then p else 0))%2^n=R } as reducedValue by (by
    simpa only [D,B,R,decide_eq_true_eq] using modAddCore_low (2*Z) p n hpos hpn (by omega));
  { 2^n≤D ↔ 2*Z<p } as hborrow by (addReduction (2*Z) p n hpos hpn (by omega)).1;
  -- Since p is odd and 2*Z is even, result parity records whether p was subtracted.
  { B= !decide (R%2=1) } as hB by (by
    have hh := (double_flag p Z hp hZ).2.2
    dsimp [B,R]
    by_cases ht : 2*Z<p
    · have ho : ¬(2*Z)%p%2=1 := by omega
      simp [ht,ho]
    · have ho : (2*Z)%p%2=1 := hh.mpr (by omega)
      simp [ht,ho]);
  have hadd := modAddCore_addback U.core n 0 (D%2^n) p B hk hnd hn hpn
  { {{ U.mask=0,U.low=R,U.high=B,U.core.work=0 }} [.X U.high,.CX U.bit U.high]
      {{ U.mask=0,U.z=R,U.core.work=0 }} }
    as hfinish by (double_finish U n R B hw hnd hn hB);
  have hmiddle :
      {{ U.mask=0,U.low=D%2^n,U.high=B,U.core.work=0 }}
        maskedAddConst U.high (U.constant.take U.low.length) U.low
          (U.carry.take (U.low.length-1)) U.cin p
      {{ U.mask=0,U.low=R,U.high=B,U.core.work=0 }} :=
    hadd.conseq (fun _ h => h) (fun st h => by
      simp only [Holds.holds] at h ⊢
      exact ⟨⟨⟨h.1.1.1,reducedValue ▸ h.1.1.2⟩,h.1.2⟩,h.2⟩)
  have hrest := (hmiddle.seq hfinish).conseq (P' := fun st =>
      (regValue U.mask st=0 ∧ regValue U.z st=D) ∧ regValue U.core.work st=0) (by
    intro st h
    have hl : regValue U.low st=D%2^n := by
      rw [regValue_low U.low U.high,← ModUnaryLayout.z,h.1.2,hw.low]
    have hb : st U.high=B := by
      have hh := regValue_highBit U.low U.high st
      rw [← ModUnaryLayout.z,h.1.2,hw.low] at hh
      have he := hh.trans hborrow
      cases hv : st U.high
      · have hn : ¬2*Z<p := fun ht => by simpa only [hv,Bool.false_eq_true] using he.mpr ht
        simp only [B,decide_eq_false hn]
      · have hy : 2*Z<p := he.mp hv
        simp only [B,decide_eq_true hy]
    exact ⟨⟨⟨h.1.1,hl⟩,hb⟩,h.2⟩) (fun _ h => h)
  conclude { {{ U.mask=0,U.z=Z,U.core.work=0 }} dblInPlace U p
    {{ U.mask=0,U.z=R,U.core.work=0 }} } by (by
    simpa only [dblInPlace_program,ModUnaryLayout.core,ModAddCoreLayout.z,R,List.append_assoc] using
      (double.seq subtractModulus).seq hrest);

/-- 规范模加倍；借位从结果奇偶清除，外层 mask/flag 均归零。 -/
theorem dblInPlace_spec (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p) :
    {{ U.z=Z,U.work=0 }} dblInPlace U p {{ U.z=(2*Z)%p,U.work=0 }} := Proof
  have hn : 0<n := by
    by_contra hh
    have hn0 : n=0 := by omega
    rw [hn0] at hpn
    simp at hpn
    omega
  For every s, m assuming h
  simp only [Holds.holds] at h ⊢
  have clean := (regValue_zero _ _).mp h.2
  have hm : regValue U.mask s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (by simp [ModUnaryLayout.work,hq]))
  have hk : regValue U.core.work s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (by simp [ModUnaryLayout.work,hq]))
  obtain ⟨hf,hv⟩ := double_core U n p Z hw (U.core_nodup hnd) hp hpn hZ s m ⟨⟨hm,h.1⟩,hk⟩
  simp only [Holds.holds] at hv
  let final := run (dblInPlace U p) m s
  { regValue U.z final.basis=(2*Z)%p } as output by hv.1.2;
  -- The core restores its workspace and mask; the unused outer flag never changes.
  { regValue U.work final.basis=0 } as restored by (by
    apply (regValue_zero _ _).mpr
    intro q hq
    simp only [ModUnaryLayout.work,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with (hq | hq) | hq
    · exact (regValue_zero _ _).mp hv.2 q hq
    · exact (regValue_zero _ _).mp hv.1.1 q hq
    · subst q
      apply Eq.trans (run_preserves_outside _ _ _ _ ?_) (clean U.flag (by simp [ModUnaryLayout.work]))
      rw [(modUnary_wires U n p hw hn).1]
      intro hh
      have h1 := List.count_pos_iff.mpr (List.mem_toFinset.mp hh)
      have h2 := List.nodup_iff_count.mp hnd U.flag
      simp only [ModUnaryLayout.wires,ModUnaryLayout.work,List.count_append,List.count_cons,
        List.count_nil,beq_self_eq_true,if_true] at h1 h2
      omega);
  conclude { final.phase=s.phase ∧ regValue U.z final.basis=(2*Z)%p ∧
    regValue U.work final.basis=0 } by ⟨hf,output,restored⟩;

end ECDSAAdd.Arithmetic
