import ECDSAAdd.Arithmetic.ModularDoubling.ModUnary

namespace ECDSAAdd.Arithmetic
open scoped ECDSAAdd.ProofLanguage
open GateProof

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

private theorem double_shift (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hpn : p<2^n) (hZ : Z<p) :
    {{ U.mask=0,U.z=Z,U.core.work=0 }} rotateLeft U.z
    {{ U.mask=0,U.z=2*Z,U.core.work=0 }} :=
  double_rotate U n Z hw hnd (by rw [Nat.pow_succ]; omega)

private theorem double_clearBorrow (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p) :
    {{ U.mask=0,U.low=(2*Z)%p,U.high=decide (2*Z<p),U.core.work=0 }}
      [.X U.high,.CX U.bit U.high]
    {{ U.mask=0,U.z=(2*Z)%p,U.core.work=0 }} := by
  have hn : 0<n := by
    by_contra hh
    have hn0 : n=0 := by omega
    rw [hn0] at hpn
    simp at hpn
    omega
  have parity : decide (2*Z<p)= !decide ((2*Z)%p%2=1) := by
    have hh := (double_flag p Z hp hZ).2.2
    by_cases ht : 2*Z<p
    · have ho : ¬(2*Z)%p%2=1 := by omega
      simp [ht,ho]
    · have ho : (2*Z)%p%2=1 := hh.mpr (by omega)
      simp [ht,ho]
  exact double_finish U n ((2*Z)%p) (decide (2*Z<p)) hw hnd hn parity

private theorem double_core (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p) :
    {{ U.mask=0,U.z=Z,U.core.work=0 }} dblInPlace U p
    {{ U.mask=0,U.z=(2*Z)%p,U.core.work=0 }} := by
  let D := (2*Z+2^(n+1)-p)%2^(n+1)
  let B := decide (2*Z<p)
  let R := (2*Z)%p
  have hpos : 0<p := by omega
  have doubledBound : 2*Z<2*p := by omega
  simpa only [dblInPlace_program, List.append_assoc] using (hoare_steps {
    Precondition { U.mask=0, U.z=Z, U.core.work=0 };

    after command { call (rotateLeft U.z); }
    get { U.mask=0, U.z=2*Z, U.core.work=0 } by exact double_shift U n p Z hw hnd hpn hZ;

    after command { call (xorConstant U.constant p ++ subInPlace U.constant U.z U.carry U.cin ++ xorConstant U.constant p); }
    get { U.mask=0, U.low=D%2^n, U.high=B, U.core.work=0 } by exact modAddCore_reduce_split U.core n 0 (2*Z) p (U.core_widths n hw) hnd hpos hpn doubledBound;

    after command { call (maskedAddConst U.high (U.constant.take U.low.length) U.low (U.carry.take (U.low.length-1)) U.cin p); }
    get { U.mask=0, U.low=R, U.high=B, U.core.work=0 } by exact modAddCore_addback_mod U.core n 0 (2*Z) p (U.core_widths n hw) hnd hpos hpn doubledBound;

    after command { call ([.X U.high,.CX U.bit U.high]); }
    get { U.mask=0, U.z=R, U.core.work=0 } by exact double_clearBorrow U n p Z hw hnd hp hpn hZ;

    Conclusion { U.mask=0, U.z=R, U.core.work=0 };
  })

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
