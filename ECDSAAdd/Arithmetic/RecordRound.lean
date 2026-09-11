import ECDSAAdd.Arithmetic.KaliskiRound

namespace ECDSAAdd.Arithmetic

/-- 有符号差落在 [-q,q) 时，模 2q 表示的最高位恰好给借位。 -/
private theorem subtraction_high (X Y q : Nat) (hq : 0<q) (hlo : Y≤X+q) (hhi : X<Y+q) :
    q ≤ (X+2*q-Y)%(2*q) ↔ X<Y := by
  by_cases h : X<Y
  · rw [Nat.mod_eq_of_lt (show X+2*q-Y<2*q by omega)]
    omega
  · rw [show X+2*q-Y = (X-Y)+2*q by omega, Nat.add_mod_right,
      Nat.mod_eq_of_lt (show X-Y<2*q by omega)]
    omega

namespace KaliskiRoundLayout

theorem head_mem (L : KaliskiRoundLayout) (f : RoundField) :
    (L.data.reg f).head!∈L.data.reg f := by
  have hn : L.data.reg f≠[] := by
    intro he
    have h := L.data_reg_length f
    rw [he] at h
    simp at h
  cases hr : L.data.reg f with
  | nil => exact False.elim (hn hr)
  | cons a r => simp

theorem high_out_mem (L : KaliskiRoundLayout) : L.high.out∈L.data.reg .out := by
  simp [RoundDataLayout.reg,data,RoundBit.get]

theorem case_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) : L.caseLayout.wires.Nodup := by
  have hd := L.data_nodup hnd
  have hu : L.u.head!∈L.data.reg .u := L.head_mem .u
  have hv : L.v.head!∈L.data.reg .v := L.head_mem .v
  have hb := L.high_out_mem
  have huv : L.u.head!≠L.v.head! := fun h =>
    List.disjoint_left.mp (L.data.reg_disjoint hd .u .v (by decide)) hu (h ▸ hv)
  have hub : L.u.head!≠L.high.out := fun h =>
    List.disjoint_left.mp (L.data.reg_disjoint hd .u .out (by decide)) hu (h ▸ hb)
  have hvb : L.v.head!≠L.high.out := fun h =>
    List.disjoint_left.mp (L.data.reg_disjoint hd .v .out (by decide)) hv (h ▸ hb)
  have ht : [L.u.head!,L.v.head!,L.high.out].Nodup := by simp [huv,hub,hvb]
  have hs : [L.u.head!,L.v.head!,L.high.out]⊆L.data.wires := by
    intro w hw
    rcases List.mem_cons.mp hw with rfl | hw
    · exact L.data.reg_mem .u hu
    rcases List.mem_cons.mp hw with rfl | hw
    · exact L.data.reg_mem .v hv
    simpa using (List.mem_singleton.mp hw ▸ L.data.reg_mem .out hb)
  have hh := List.nodup_append'.mp (L.controls_data_nodup hnd)
  have hc : (L.controls++[L.u.head!,L.v.head!,L.high.out]).Nodup :=
    List.nodup_append'.mpr ⟨hh.1,ht,List.disjoint_left.mpr (fun w hw h => List.disjoint_left.mp hh.2.2 hw (hs h))⟩
  have hr := List.nodup_reverse.mpr hc
  simp only [controls,List.cons_append,List.nil_append,List.reverse_cons,List.reverse_nil,
    List.nodup_cons,List.mem_cons,List.not_mem_nil,not_or,not_false_eq_true,and_true] at hc hr
  simpa [caseLayout,CaseLayout.wires] using
    (show [L.active,L.u.head!,L.v.head!,L.high.out,L.swap,L.subtract,L.oddWork,L.bothWork].Nodup by
      simp_all)

end KaliskiRoundLayout

/-- 外部记录位更新后，数据布局与其余外部状态仍由同一 frame 精确描述。 -/
theorem RoundFrame.write_external (L : RoundDataLayout) (v : RoundField→Nat)
    (base st : BasisState) (c : Wire) (b : Bool) (hc : c∉L.wires)
    (h : RoundFrame L v base st) :
    RoundFrame L v (writeBit base c b) (writeBit st c b) := by
  refine ⟨⟨?_,?_⟩,?_⟩
  · intro f
    exact (regValue_congr _ _ _ (fun w hw => by
      have hn : w≠c := fun he => hc (he ▸ L.reg_mem f hw)
      simp [writeBit,hn])).trans (h.1.1 f)
  · have hn : L.cin≠c := fun he => hc (he ▸ List.mem_cons_self)
    simpa [writeBit,hn] using h.1.2
  · intro w hw
    by_cases he : w=c
    · subst w; simp [writeBit]
    · simp [writeBit,he,h.2 w hw]

/-- XOR 两位记录；同一个函数用于初次记录与恢复旧数据后的清理。 -/
def recordState (L : KaliskiRoundLayout) (z : KState) (base : BasisState) : BasisState :=
  writeBit (writeBit base L.swap (base L.swap ^^ (kaliskiCode z).1))
    L.subtract (base L.subtract ^^ (kaliskiCode z).2)

private def recordValues (L : KaliskiRoundLayout) (z : KState) : RoundField→Nat :=
  Function.update (Function.update (roundDataValues z) .y z.u) .out
    ((z.v+2^L.data.width-z.u)%2^L.data.width)

private theorem case_frame (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (base : BasisState) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (ha : base L.active=decide (z.v≠0))
    (ho : base L.oddWork=false) (hb : base L.bothWork=false) :
    Triple (RoundFrame L.data (recordValues L z) base) (recordCase L.caseLayout)
      (RoundFrame L.data (recordValues L z) (recordState L z base)) := by
  have hn (c : Wire) (hc : c∈L.controls) := L.control_not_data hnd c hc
  have hs := hn L.swap (by simp [KaliskiRoundLayout.controls])
  have hd := hn L.subtract (by simp [KaliskiRoundLayout.controls])
  intro s m h
  have he (c : Wire) (hc : c∈L.controls) := h.2 c (hn c hc)
  have heu : s.basis L.u.head!=decide (z.u%2≠0) := by
    rw [regValue_headBit L.u (by
      intro hh
      have hm := L.head_mem .u
      change L.u.head!∈L.u at hm
      simp [hh] at hm) s.basis]
    have hh := h.1.1 .u
    change regValue L.u s.basis=z.u at hh
    rw [hh]
  have hev : s.basis L.v.head!=decide (z.v%2≠0) := by
    rw [regValue_headBit L.v (by
      intro hh
      have hm := L.head_mem .v
      change L.v.head!∈L.v at hm
      simp [hh] at hm) s.basis]
    have hh := h.1.1 .v
    change regValue L.v s.basis=z.v at hh
    rw [hh]
  have heb : s.basis L.high.out=decide (z.v<z.u) := by
    apply Bool.eq_iff_iff.mpr
    rw [regValue_highBit (L.low.map RoundBit.out)]
    have hh := h.1.1 .out
    have hout : L.data.reg .out=L.low.map RoundBit.out++[L.high.out] := by
      simp [KaliskiRoundLayout.data,RoundDataLayout.reg,RoundBit.get]
    rw [← hout,hh]
    simp only [recordValues,Function.update_self,List.length_map]
    have hw : L.data.width=L.low.length+1 := by
      simp [KaliskiRoundLayout.data,RoundDataLayout.width]
    rw [hw,pow_succ,Nat.mul_comm (2^L.low.length) 2,subtraction_high z.v z.u _
      (by positivity) (by omega) (by omega)]
    simp
  have hsw := he L.swap (by simp [KaliskiRoundLayout.controls])
  have hsu := he L.subtract (by simp [KaliskiRoundLayout.controls])
  have hac := (he L.active (by simp [KaliskiRoundLayout.controls])).trans ha
  have hoc := (he L.oddWork (by simp [KaliskiRoundLayout.controls])).trans ho
  have hbc := (he L.bothWork (by simp [KaliskiRoundLayout.controls])).trans hb
  have hc := kaliski_code_bits z
  rw [recordCase_correct L.caseLayout (L.case_nodup hnd) s m hoc hbc]
  simp only [KaliskiRoundLayout.caseLayout,heu,hev,heb,hac,hsw,hsu]
  have hc1 := congrArg Prod.fst hc
  have hc2 := congrArg Prod.snd hc
  dsimp at hc1 hc2
  rw [← hc1,← hc2]
  exact ⟨trivial,RoundFrame.write_external L.data (recordValues L z) _ _ L.subtract _ hd
    (RoundFrame.write_external L.data (recordValues L z) base s.basis L.swap _ hs h)⟩

/-- 比较仅用于两位 XOR 记录；差寄存器和临时来源在返回前全部清零。 -/
theorem recordRound_frame (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (base : BasisState) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (ha : base L.active=decide (z.v≠0))
    (ho : base L.oddWork=false) (hb : base L.bothWork=false) :
    Triple (RoundFrame L.data (roundDataValues z) base) (recordRound L)
      (RoundFrame L.data (roundDataValues z) (recordState L z base)) := by
  let v1 := Function.update (roundDataValues z) .y z.u
  have h1 := RoundFrame.copy L.data (L.data_nodup hnd) (roundDataValues z) base .u .y (by decide)
  change Triple _ _ (RoundFrame L.data (Function.update (roundDataValues z) .y (0 ^^^ z.u)) base) at h1
  simp only [Nat.zero_xor] at h1
  have h2 := RoundFrame.subtract L.data (L.data_nodup hnd) v1 base .v (by simp [RoundDataLayout.DataField]) rfl
  change Triple _ _ (RoundFrame L.data (Function.update v1 .out
    (0 ^^^ ((z.v+2^L.data.width-z.u)%2^L.data.width))) base) at h2
  simp only [Nat.zero_xor] at h2
  have h3 := case_frame L hnd z base hu hv ha ho hb
  have h4 := RoundFrame.subtract L.data (L.data_nodup hnd) (recordValues L z)
    (recordState L z base) .v (by simp [RoundDataLayout.DataField]) rfl
  have e4 : Function.update (recordValues L z) .out
      (recordValues L z .out ^^^ ((recordValues L z .v+2^L.data.width-recordValues L z .y)%2^L.data.width)) = v1 := by
    funext f
    cases f <;> simp [recordValues,v1,roundDataValues]
  rw [e4] at h4
  have h5 := RoundFrame.copy L.data (L.data_nodup hnd) v1 (recordState L z base) .u .y (by decide)
  have e5 : Function.update v1 .y (v1 .y ^^^ v1 .u)=roundDataValues z := by
    funext f
    cases f <;> simp [v1,roundDataValues]
  rw [e5] at h5
  exact (((h1.seq h2).seq h3).seq h4).seq h5

end ECDSAAdd.Arithmetic
