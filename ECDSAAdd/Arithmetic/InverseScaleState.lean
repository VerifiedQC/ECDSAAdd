import ECDSAAdd.Arithmetic.InverseScaleBorrow
import ECDSAAdd.Arithmetic.InverseMiddle

namespace ECDSAAdd.Arithmetic
namespace InverseLoopLayout

theorem scaling_fields (I : InverseLoopLayout) (hl : I.first.low.length=256) :
    I.scaling.stage.acc=I.middle.data.reg .y++(I.middle.data.reg .zero).take 4 ∧
    I.scaling.stage.history++[I.scaling.stage.flag]=I.middle.data.reg .carry := by
  have hd (f : RoundField) : (I.middle.data.reg f).length=257 := by
    rw [middle,loopEnd_data,I.first.data_reg_length,hl]
  have hlen : (I.middle.data.reg .y++(I.middle.data.reg .zero).take 4).length=261 := by simp [hd]
  have ha : I.scaling.stage.acc=I.middle.data.reg .y++(I.middle.data.reg .zero).take 4 := by
    change (I.scaleLive.take 261)=_
    rw [scaleLive,←hlen,List.take_left]
  refine ⟨ha,?_⟩
  have he := I.scaling_live hl
  rw [InverseScaleLayout.live,ha,scaleLive] at he
  rw [List.append_assoc] at he
  exact List.append_cancel_left he

/-- 缩放期间y保存N，carry保存约减商与借位；其余轮字段保持原值。 -/
def scaledRoundValues (q : Nat) (z : KState) (N : Nat) : RoundField → Nat
  | .y => N
  | .carry => montgomeryQuotient q (inverseScaleFactor q z.k) N 64 +
      2^256 * (decide (montgomeryValue q (inverseScaleFactor q z.k) N 64<q)).toNat
  | f => roundDataValues z f

/-- 缩放历史只占y与carry，zero低4位因N<2^256仍为零。 -/
def ScaledRest (I : InverseLoopLayout) (q : Nat) (z : KState) (cs : List (Bool×Bool)) (N : Nat)
    (s : BasisState) : Prop :=
  RoundValues I.middle.data (scaledRoundValues q z N) s ∧
  s I.middle.done=decide (z.v=0) ∧ s I.middle.oddWork=false ∧
  s I.middle.bothWork=false ∧ TapeValues I.records cs s

private theorem live_data (I : InverseLoopLayout) (hl : I.first.low.length=256) :
    I.scaling.live⊆I.middle.data.wires := by
  rw [I.scaling_live hl]
  intro w h
  simp only [scaleLive,List.mem_append] at h
  rcases h with (h|h)|h
  · exact I.middle.data.reg_mem .y h
  · exact I.middle.data.reg_mem .zero (List.mem_of_mem_take h)
  · exact I.middle.data.reg_mem .carry h

private theorem data_not_a (I : InverseLoopLayout) (hn : I.wires.Nodup)
    {w : Wire} (h : w∈I.middle.data.wires) : w∉I.a := by
  intro ha
  exact List.disjoint_left.mp (I.rest_phase_disjoint hn)
    (List.mem_append_right _ h) (I.a_mem_phase ha)

private theorem data_phase (I : InverseLoopLayout) (hn : I.wires.Nodup) :
    I.middle.data.wires.Disjoint I.phaseWires := by
  apply List.disjoint_left.mpr
  intro w hd hp
  exact List.disjoint_left.mp (I.rest_phase_disjoint hn) (List.mem_append_right _ hd) hp

private theorem data_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup) : I.middle.data.wires.Nodup := by
  have h := I.middle_nodup hn
  exact (List.nodup_append'.mp (List.nodup_append'.mp (List.nodup_append'.mp h).2.1).1).2.1

private theorem keep_field (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (s t : BasisState)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
    (f : RoundField) (hy : f≠.y) (hc : f≠.carry) (hz : f≠.zero) :
    regValue (I.middle.data.reg f) t=regValue (I.middle.data.reg f) s := by
  apply regValue_congr
  intro w hw
  apply he w (I.data_not_a hn (I.middle.data.reg_mem f hw))
  rw [I.scaling_live hl]
  intro h
  simp only [scaleLive,List.mem_append] at h
  rcases h with (h|h)|h
  · exact List.disjoint_left.mp (I.middle.data.reg_disjoint (I.data_nodup hn) f .y hy) hw h
  · exact List.disjoint_left.mp (I.middle.data.reg_disjoint (I.data_nodup hn) f .zero hz) hw (List.mem_of_mem_take h)
  · exact List.disjoint_left.mp (I.middle.data.reg_disjoint (I.data_nodup hn) f .carry hc) hw h

private theorem keep_zero_tail (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (s t : BasisState)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w) :
    regValue ((I.middle.data.reg .zero).drop 4) t=regValue ((I.middle.data.reg .zero).drop 4) s := by
  apply regValue_congr
  intro w hw
  have hz := List.mem_of_mem_drop hw
  apply he w (I.data_not_a hn (I.middle.data.reg_mem .zero hz))
  rw [I.scaling_live hl]
  intro h
  simp only [scaleLive,List.mem_append] at h
  rcases h with (h|h)|h
  · exact List.disjoint_left.mp (I.middle.data.reg_disjoint (I.data_nodup hn) .zero .y (by decide)) hz h
  · have hd := I.middle.data.reg_nodup (I.data_nodup hn) .zero
    rw [←List.take_append_drop 4 (I.middle.data.reg .zero)] at hd
    exact List.disjoint_left.mp (List.nodup_append'.mp hd).2.2 h hw
  · exact List.disjoint_left.mp (I.middle.data.reg_disjoint (I.data_nodup hn) .zero .carry (by decide)) hz h

private theorem scaled_data (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (q : Nat) (z : KState) (N : Nat) (hN : N<2^256)
    (s t : BasisState) (h : RoundValues I.middle.data (roundDataValues z) s)
    (hp : I.scaling.Prepared q z.k N t)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w) :
    RoundValues I.middle.data (scaledRoundValues q z N) t := by
  have hd (f : RoundField) : (I.middle.data.reg f).length=257 := by
    rw [middle,loopEnd_data,I.first.data_reg_length,hl]
  have ha := hp.2.2.1
  rw [(I.scaling_fields hl).1,regValue_append,hd] at ha
  have hz : regValue ((I.middle.data.reg .zero).take 4) t=0 := by
    have hpow : (2:Nat)^256<2^257 := by
      rw [show 257=256+1 from rfl,pow_succ]
      have := Nat.two_pow_pos 256
      omega
    by_contra hbad
    have hone : 1≤regValue ((I.middle.data.reg .zero).take 4) t := by omega
    have hm := Nat.mul_le_mul_left (2^257) hone
    simp only [mul_one] at hm
    omega
  have hy : regValue (I.middle.data.reg .y) t=N := by simpa only [hz,mul_zero,add_zero] using ha
  have hc : regValue (I.middle.data.reg .carry) t=scaledRoundValues q z N .carry := by
    rw [←(I.scaling_fields hl).2,regValue_append]
    have hh : I.scaling.stage.history.length=256 := by
      simp [scaling,I.scaleLive_length hl]
    have hf : regValue [I.scaling.stage.flag] t=(decide (montgomeryValue q (inverseScaleFactor q z.k) N 64<q)).toNat := by
      simp [regValue,hp.2.2.2.2.1,Bool.toNat]
    rw [hh,hp.2.2.2.1,hf]
    rfl
  have hzero : regValue (I.middle.data.reg .zero) t=0 := by
    rw [←List.take_append_drop 4 (I.middle.data.reg .zero),regValue_append,hz,
      I.keep_zero_tail hn hl s t he]
    have hs : regValue ((I.middle.data.reg .zero).drop 4) s=0 := by
      apply (regValue_zero _ _).mpr
      intro w hw
      exact (regValue_zero _ _).mp (h.1 .zero) w (List.mem_of_mem_drop hw)
    simp [hs]
  refine ⟨?_,?_⟩
  · intro f
    cases f
    case y => exact hy
    case carry => exact hc
    case zero => exact hzero
    all_goals
      exact (I.keep_field hn hl s t he _ (by decide) (by decide) (by decide)).trans (h.1 _)
  · apply (he _ (I.data_not_a hn (by simp [RoundDataLayout.wires])) ?_).trans h.2
    rw [I.scaling_live hl]
    intro hm
    simp only [scaleLive,List.mem_append] at hm
    rcases hm with (hm|hm)|hm
    · exact I.middle.data.cin_not_mem (I.data_nodup hn) .y hm
    · exact I.middle.data.cin_not_mem (I.data_nodup hn) .zero (List.mem_of_mem_take hm)
    · exact I.middle.data.cin_not_mem (I.data_nodup hn) .carry hm

private theorem keep_flags (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (s t : BasisState)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
    {w : Wire} (hw : w∈I.records.flatMap RoundRecord.wires++[I.middle.done,I.middle.oddWork,I.middle.bothWork]) :
    t w=s w := by
  have hr : w∈I.restWires := List.mem_append_left _ hw
  apply he w (fun ha => List.disjoint_left.mp (I.rest_phase_disjoint hn) hr (I.a_mem_phase ha))
  have hd := (List.nodup_append'.mp (List.nodup_append'.mp (I.rest_phase_perm.nodup_iff.mpr hn)).1).1
  have hdis := (List.nodup_append'.mp hd).2.2
  exact fun hh => List.disjoint_left.mp hdis hw (I.live_data hl hh)

private theorem phase_update (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (K A Z : Nat) (s t : BasisState)
    (h : InversePhase I K A s) (hz : regValue I.a t=Z)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w) : InversePhase I K Z t := by
  have dis (r : List Wire) (hr : r⊆I.temp++I.arithmetic.wires++[I.middle.compareCin]++I.middle.counter.wires) : r.Disjoint I.a := by
    apply List.disjoint_left.mpr
    intro w hw ha
    have h1 := List.nodup_iff_count.mp (I.phase_nodup hn) w
    have h2 := List.count_pos_iff.mpr (hr hw)
    have h3 := List.count_pos_iff.mpr ha
    simp only [phaseWires,extra,List.count_append] at h1 h2
    omega
  have hkeep (w : Wire)
      (hw : w∈I.temp++I.arithmetic.wires++[I.middle.compareCin]++I.middle.counter.wires) : t w=s w := by
    have hs : [w]⊆I.temp++I.arithmetic.wires++[I.middle.compareCin]++I.middle.counter.wires := by
      intro v hv
      have hvw : v=w := by simpa using hv
      subst v
      exact hw
    apply he w (fun ha => List.disjoint_left.mp (dis [w] hs) (by simp) ha)
    intro hh
    apply List.disjoint_left.mp (I.data_phase hn) (I.live_data hl hh)
    simp only [phaseWires,extra,List.mem_append] at hw ⊢
    tauto
  refine ⟨⟨hz,?_,?_⟩,HalvingCounter.congr _ _ _ _ h.2 ?_⟩
  · apply (hkeep _ ?_).trans h.1.2.1
    simp [KaliskiRoundLayout.counter,AdderLayout.wires]
  · apply (regValue_congr _ _ _ ?_).trans h.1.2.2
    intro w hw
    apply hkeep w
    simp only [List.mem_append] at hw ⊢
    tauto
  · intro w hw
    apply hkeep w
    simp only [halving,HalvingLayout.counter,AdderLayout.wires,List.mem_cons] at hw
    simp only [List.mem_append,KaliskiRoundLayout.counter,AdderLayout.wires,List.mem_cons]
    tauto

private theorem restored_data (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (q : Nat) (z : KState) (N : Nat)
    (s t : BasisState) (h : RoundValues I.middle.data (scaledRoundValues q z N) s)
    (hz : regValue I.scaling.live t=0)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w) :
    RoundValues I.middle.data (roundDataValues z) t := by
  have hzero := (regValue_zero _ _).mp hz
  rw [I.scaling_live hl] at hzero
  have hy : regValue (I.middle.data.reg .y) t=0 :=
    (regValue_zero _ _).mpr (fun w hw => hzero w (by simp [scaleLive,hw]))
  have hc : regValue (I.middle.data.reg .carry) t=0 :=
    (regValue_zero _ _).mpr (fun w hw => hzero w (by simp [scaleLive,hw]))
  have hzt : regValue ((I.middle.data.reg .zero).take 4) t=0 :=
    (regValue_zero _ _).mpr (fun w hw => hzero w (by simp [scaleLive,hw]))
  have hzall : regValue (I.middle.data.reg .zero) t=0 := by
    rw [←List.take_append_drop 4 (I.middle.data.reg .zero),regValue_append,hzt,I.keep_zero_tail hn hl s t he]
    have hs : regValue ((I.middle.data.reg .zero).drop 4) s=0 :=
      (regValue_zero _ _).mpr (fun w hw => (regValue_zero _ _).mp (h.1 .zero) w (List.mem_of_mem_drop hw))
    simp [hs]
  refine ⟨?_,?_⟩
  · intro f
    cases f
    case y => exact hy
    case carry => exact hc
    case zero => exact hzall
    all_goals
      exact (I.keep_field hn hl s t he _ (by decide) (by decide) (by decide)).trans (h.1 _)
  · apply (he _ (I.data_not_a hn (by simp [RoundDataLayout.wires])) ?_).trans h.2
    rw [I.scaling_live hl]
    intro hm
    simp only [scaleLive,List.mem_append] at hm
    rcases hm with (hm|hm)|hm
    · exact I.middle.data.cin_not_mem (I.data_nodup hn) .y hm
    · exact I.middle.data.cin_not_mem (I.data_nodup hn) .zero (List.mem_of_mem_take hm)
    · exact I.middle.data.cin_not_mem (I.data_nodup hn) .carry hm

end InverseLoopLayout

/-- 使用逆元期间的完整边界：轮历史含N/约减商/借位，a保存规范缩放结果，B为空。 -/
def InverseScaledMiddle (L : InverseLoopLayout) (q : Nat) (z : KState)
    (cs : List (Bool×Bool)) (N : Nat) (s : BasisState) : Prop :=
  L.ScaledRest q z cs N s ∧
  InversePhase L z.k (montgomeryValue q (inverseScaleFactor q z.k) N 64%q) s

private theorem InverseScaledMiddle.prepared (L : InverseLoopLayout)
    (hl : L.first.low.length=256) (ht : L.temp.length=257) (hm : L.arithmetic.width=256)
    (q : Nat) (z : KState) (cs : List (Bool×Bool)) (N : Nat) (s : BasisState)
    (h : InverseScaledMiddle L q z cs N s) : L.scaling.Prepared q z.k N s := by
  have hf := L.scaling_fields hl
  have hzero : regValue ((L.middle.data.reg .zero).take 4) s=0 :=
    (regValue_zero _ _).mpr (fun w hw => (regValue_zero _ _).mp (h.1.1.1 .zero) w (List.mem_of_mem_take hw))
  have ha : regValue L.scaling.stage.acc s=N := by
    rw [hf.1,regValue_append,hzero,mul_zero,add_zero]
    exact h.1.1.1 .y
  have hh : L.scaling.stage.history.length=256 := by simp [InverseLoopLayout.scaling,L.scaleLive_length hl]
  have hc := h.1.1.1 .carry
  change regValue (L.middle.data.reg .carry) s = montgomeryQuotient q (inverseScaleFactor q z.k) N 64 +
    2^256*(decide (montgomeryValue q (inverseScaleFactor q z.k) N 64<q)).toNat at hc
  rw [←hf.2,regValue_append,hh] at hc
  have hs : regValue [L.scaling.stage.flag] s=(s L.scaling.stage.flag).toNat := by simp [regValue,Bool.toNat]
  rw [hs] at hc
  have hsmall := regValue_lt L.scaling.stage.history s
  rw [hh] at hsmall
  have hquot : montgomeryQuotient q (inverseScaleFactor q z.k) N 64<2^256 := by
    simpa only [show (16:Nat)=2^4 from rfl,←pow_mul,show 4*64=256 from rfl] using
      montgomeryQuotient_bound q (inverseScaleFactor q z.k) N 64
  have hp : regValue L.scaling.stage.history s=montgomeryQuotient q (inverseScaleFactor q z.k) N 64 ∧
      s L.scaling.stage.flag=decide (montgomeryValue q (inverseScaleFactor q z.k) N 64<q) := by
    cases he : s L.scaling.stage.flag <;>
      cases hb : decide (montgomeryValue q (inverseScaleFactor q z.k) N 64<q) <;>
      simp only [he,hb,Bool.toNat_false,Bool.toNat_true,mul_zero,mul_one,and_true] at hc ⊢ <;> omega
  refine ⟨h.2.2.1,h.2.1.1,ha,hp.1,hp.2,?_⟩
  rw [L.scaling_work ht hm]
  exact (regValue_zero _ _).mpr (fun w hw => (regValue_zero _ _).mp h.2.1.2.2 w (List.mem_of_mem_take hw))

/-- 将缩放模块接到Kaliski边界；完整历史以y=N和carry商/借位明确表示。 -/
theorem inverseScaling_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hl : L.first.low.length=256) (hw : L.first.counter.width=10)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hm : L.arithmetic.width=256)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (z : KState) (cs : List (Bool×Bool))
    (N : Nat) (hN : N<q) :
    Triple (InverseMiddle L z cs N) (L.scaling.prepare q) (InverseScaledMiddle L q z cs N) ∧
    Triple (InverseScaledMiddle L q z cs N) (L.scaling.restore q) (InverseMiddle L z cs N) := by
  have hwidth := L.scaling_widths ha ht hm hl hw
  have hn := L.scaling_nodup hnd ht hm hl
  constructor
  · intro s m h
    have hzero : regValue L.scaling.live s.basis=0 := by
      rw [L.scaling_live hl]
      apply (regValue_zero _ _).mpr
      intro w hw
      simp only [InverseLoopLayout.scaleLive,List.mem_append] at hw
      rcases hw with (hw|hw)|hw
      · exact (regValue_zero _ _).mp (h.1.1.1 .y) w hw
      · exact (regValue_zero _ _).mp (h.1.1.1 .zero) w (List.mem_of_mem_take hw)
      · exact (regValue_zero _ _).mp (h.1.1.1 .carry) w hw
    have hwork : regValue L.scaling.work s.basis=0 := by
      rw [L.scaling_work ht hm]
      exact (regValue_zero _ _).mpr (fun w hw => (regValue_zero _ _).mp h.2.1.2.2 w (List.mem_of_mem_take hw))
    have hpre := And.intro (And.intro (And.intro h.2.1.1 h.2.2.1) hzero) hwork
    obtain ⟨hp,hv⟩ := L.scaling.prepare_spec hwidth hn q hq hb N z.k hN s m hpre
    have he := L.scaling.prepare_frame hwidth hn q hq hb N z.k hN s m hpre
    have hk := fun {w} h => L.keep_flags hnd hl s.basis _ he (w:=w) h
    refine ⟨hp,⟨L.scaled_data hnd hl q z N (hN.trans hb) _ _ h.1.1 hv he,?_,?_,?_,?_⟩,
      L.phase_update hnd hl z.k N _ _ _ h.2 hv.2.1 he⟩
    · exact (hk (by simp)).trans h.1.2.1
    · exact (hk (by simp)).trans h.1.2.2.1
    · exact (hk (by simp)).trans h.1.2.2.2.1
    · exact TapeValues.congr _ _ _ _ h.1.2.2.2.2 (fun w hw => hk (List.mem_append_left _ hw))
  · intro s m h
    have hpre := InverseScaledMiddle.prepared L hl ht hm q z cs N s.basis h
    obtain ⟨hp,hv⟩ := L.scaling.restore_spec hwidth hn q hq hb N z.k hN s m hpre
    have he := L.scaling.restore_frame hwidth hn q hq hb N z.k hN s m hpre
    have hk := fun {w} h => L.keep_flags hnd hl s.basis _ he (w:=w) h
    refine ⟨hp,⟨L.restored_data hnd hl q z N _ _ h.1.1 hv.1.2 he,?_,?_,?_,?_⟩,
      L.phase_update hnd hl z.k _ N _ _ h.2 hv.1.1.1 he⟩
    · exact (hk (by simp)).trans h.1.2.1
    · exact (hk (by simp)).trans h.1.2.2.1
    · exact (hk (by simp)).trans h.1.2.2.2.1
    · exact TapeValues.congr _ _ _ _ h.1.2.2.2.2 (fun w hw => hk (List.mem_append_left _ hw))

end ECDSAAdd.Arithmetic
