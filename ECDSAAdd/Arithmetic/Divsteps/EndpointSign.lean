import ECDSAAdd.Arithmetic.Divsteps.SignedEndpoint
import ECDSAAdd.Arithmetic.NarrowSignedRecord

namespace ECDSAAdd.Arithmetic.Divsteps

/-- Complementing every bit sends the represented signed integer to `-x-1`. -/
theorem endpoint_complement_value (c : Wire) (lo : List Wire) (sign : Wire)
    (hd : (lo++[sign]).Nodup) (hc : c∉lo++[sign]) (s : State) (m : List Bool) :
    signedRegValue (lo++[sign]) (run (signComplement c (lo++[sign])) m s).basis=
      if s.basis c then -signedRegValue (lo++[sign]) s.basis-1
      else signedRegValue (lo++[sign]) s.basis := by
  have hv := (signComplement_correct c (lo++[sign]) hd hc s m).2.2
  have hb := narrow_fanout_correct c (lo++[sign]) hd hc s m
  have bound := regValue_lt (lo++[sign]) s.basis
  rw [signedRegValue_msb, hv]
  have hs : (run (signComplement c (lo++[sign])) m s).basis sign =
      (s.basis sign ^^ s.basis c) := by rw [hb]; simp
  rw [hs]
  rw [signedRegValue_msb]
  simp only [List.length_append,List.length_singleton] at bound ⊢
  have powpos : 0 < (2:Nat)^(lo.length+1) := by positivity
  have castdiff : ((2^(lo.length+1)-1-regValue (lo++[sign]) s.basis : Nat) : Int)=
      ((2^(lo.length+1):Nat):Int)-1-(regValue (lo++[sign]) s.basis : Int) := by
    rw [Nat.cast_sub (by omega),Nat.cast_sub (by omega)]
    rfl
  cases h : s.basis c <;> cases hsign : s.basis sign <;>
    simp only [Bool.false_eq_true, if_false, if_true, Bool.xor_false, Bool.xor_true,
      Bool.not_false, Bool.not_true, castdiff] <;> ring

/-- Sign adjustment uses temporary Clifford fanout on the source, followed by
its reversal and a controlled increment. It allocates no additional wires. -/
def endpointSign (c : Wire) (U : ModUnaryLayout) (p : Nat) (lo : List Wire) (sign : Wire) : Program :=
  signComplement c (lo++[sign]) ++ endpointSigned U p lo sign ++
  signComplement c (lo++[sign]) ++ endpointConstant c U p 1

/-- Canonical sign-adjusted reduction with complete source restoration. -/
theorem endpointSign_run (c : Wire) (U : ModUnaryLayout) (n p : Nat) (lo : List Wire) (sign : Wire)
    (hw : U.Widths n) (hU : (c::U.wires).Nodup) (hd : (lo++[sign]).Nodup)
    (hc : c∉lo++[sign]) (hsep : List.Disjoint (lo++[sign]) U.wires)
    (hp : 1<p) (hpn : p<2^n) (s : State) (m : List Bool)
    (hz : regValue U.z s.basis=0) (hwork : regValue U.work s.basis=0) :
    let out := run (endpointSign c U p lo sign) m s
    out.phase=s.phase ∧ regValue U.z out.basis<p ∧
    (regValue U.z out.basis : ZMod p)=
      (if s.basis c then -(signedRegValue (lo++[sign]) s.basis : ZMod p)
       else (signedRegValue (lo++[sign]) s.basis : ZMod p)) ∧
    regValue U.work out.basis=0 ∧ ∀ q, q∉U.z → out.basis q=s.basis q := by
  let row := lo++[sign]
  let comp := signComplement c row
  let t := run comp m s
  let v := run (endpointSigned U p lo sign) m t
  let rest := m.drop (measurementCount (endpointSigned U p lo sign))
  let w := run comp rest v
  let out := run (endpointConstant c U p 1) rest w
  have cz : c∉U.z := fun h => (List.nodup_cons.mp hU).1 (List.mem_append_left _ h)
  have away (q : Wire) (hq : q∈U.wires) : q∉row :=
    fun h => List.disjoint_left.mp hsep h hq
  have ht := signComplement_correct c row hd hc s m
  have tz : regValue U.z t.basis=0 :=
    (regValue_congr _ _ _ (fun q h => ht.2.1 q (away q (List.mem_append_left _ h)))).trans hz
  have tw : regValue U.work t.basis=0 :=
    (regValue_congr _ _ _ (fun q h => ht.2.1 q (away q (List.mem_append_right _ h)))).trans hwork
  have hv := endpointSigned_run U n p lo sign hw (List.nodup_cons.mp hU).2 hsep
    (by omega) hpn t m tz tw
  have hwc := signComplement_correct c row hd hc v rest
  have wz : regValue U.z w.basis=regValue U.z v.basis :=
    regValue_congr _ _ _ (fun q h => hwc.2.1 q (away q (List.mem_append_left _ h)))
  have ww : regValue U.work w.basis=0 :=
    (regValue_congr _ _ _ (fun q h => hwc.2.1 q (away q (List.mem_append_right _ h)))).trans hv.2.2.2.1
  have vc : v.basis c=s.basis c := (hv.2.2.2.2 c cz).trans (ht.2.1 c hc)
  have wf (q : Wire) (hq : q∉U.z) : w.basis q=s.basis q := by
    by_cases hqr : q∈row
    · have qr : q∉U.z := fun h => List.disjoint_left.mp hsep hqr (List.mem_append_left _ h)
      have tv := narrow_fanout_correct c row hd hc s m
      have vw := narrow_fanout_correct c row hd hc v rest
      change (run comp rest v).basis q=_
      rw [vw]
      simp only [hqr,if_true,vc]
      rw [hv.2.2.2.2 q qr]
      change ((run comp m s).basis q ^^ s.basis c) = _
      rw [tv]
      simp only [hqr,if_true]
      cases s.basis q <;> cases s.basis c <;> rfl
    · exact (hwc.2.1 q hqr).trans ((hv.2.2.2.2 q hq).trans (ht.2.1 q hqr))
  have ho := endpointConstant_run c U n p 1 (regValue U.z v.basis) hw hU
    (by omega) hpn hp hv.2.1 w rest wz ww
  have eqrun : run (endpointSign c U p lo sign) m s=out := by
    simp only [endpointSign,run_append,run_take,measurementCount_append,
      (signComplement_counts c (lo++[sign])).2,Nat.zero_add,Nat.add_zero,List.drop_zero]
    simp only [out,w,v,t,comp,row,rest,narrow_fanout_correct c (lo++[sign]) hd hc]
  rw [eqrun]
  refine ⟨ho.1.trans (hwc.1.trans (hv.1.trans ht.1)),?_,?_,ho.2.2.1,?_⟩
  · rw [ho.2.1]; exact Nat.mod_lt _ (by omega)
  · rw [ho.2.1,ZMod.natCast_mod,Nat.cast_add,hv.2.2.1,wf c cz]
    have sv := endpoint_complement_value c lo sign hd hc s m
    change signedRegValue row t.basis=_ at sv
    rw [sv]
    cases s.basis c <;> simp
  · intro q hq
    exact (ho.2.2.2 q hq).trans (wf q hq)

/-- Integer form, including zero and the most-negative source representation. -/
theorem endpointSign_remainder (c : Wire) (U : ModUnaryLayout) (n p : Nat) (lo : List Wire) (sign : Wire)
    (hw : U.Widths n) (hU : (c::U.wires).Nodup) (hd : (lo++[sign]).Nodup)
    (hc : c∉lo++[sign]) (hsep : List.Disjoint (lo++[sign]) U.wires)
    (hp : 1<p) (hpn : p<2^n) (s : State) (m : List Bool)
    (hz : regValue U.z s.basis=0) (hwork : regValue U.work s.basis=0) :
    let out := run (endpointSign c U p lo sign) m s
    out.phase=s.phase ∧ (regValue U.z out.basis : Int)=
      (if s.basis c then -signedRegValue (lo++[sign]) s.basis
       else signedRegValue (lo++[sign]) s.basis)%p ∧
    regValue U.work out.basis=0 ∧ ∀ q, q∉U.z → out.basis q=s.basis q := by
  have hh := endpointSign_run c U n p lo sign hw hU hd hc hsep hp hpn s m hz hwork
  letI : NeZero p := ⟨by omega⟩
  refine ⟨hh.1,?_,hh.2.2.2⟩
  have he := congrArg (fun z : ZMod p => (z.val : Int)) hh.2.2.1
  cases h : s.basis c <;>
    simpa only [h,Bool.false_eq_true,if_false,if_true,ZMod.val_natCast_of_lt hh.2.1,
      ←Int.cast_neg,ZMod.val_intCast] using he

theorem endpointSign_counts (c : Wire) (U : ModUnaryLayout) (n p : Nat)
    (lo : List Wire) (sign : Wire) (hw : U.Widths n) (hn : 0<n) :
    toffoliCount (endpointSign c U p lo sign)=(lo.length+2)*(4*n-1) ∧
    measurementCount (endpointSign c U p lo sign)=(lo.length+2)*(4*n-1) := by
  have hs := endpointSigned_counts U n p lo sign hw hn
  have hc := endpointConstant_counts c U n p 1 hw hn
  have hf := signComplement_counts c (lo++[sign])
  simp only [endpointSign,toffoliCount_append,measurementCount_append,hs.1,hs.2,
    hc.1,hc.2,hf.1,hf.2,Nat.zero_add,Nat.add_zero]
  constructor <;> nlinarith [hs.1,hs.2]

theorem endpointSign_support (c : Wire) (U : ModUnaryLayout) (n p : Nat)
    (lo : List Wire) (sign : Wire) (hw : U.Widths n) (hn : 0<n) :
    wires (endpointSign c U p lo sign)⊆(c::(lo++[sign]++U.wires)).toFinset := by
  have hf := signComplement_wires_subset c (lo++[sign])
  have hs := endpointSigned_support U n p lo sign hw hn
  have hc := endpointConstant_support c U n p 1 hw hn
  intro q hq
  simp only [endpointSign,wires_append,Finset.mem_union] at hq
  rcases hq with ((hq|hq)|hq)|hq
  · have hh := hf hq
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at hh ⊢
    tauto
  · have hh := hs hq; simpa only [List.mem_toFinset] using List.mem_cons_of_mem c (List.mem_toFinset.mp hh)
  · have hh := hf hq
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at hh ⊢
    tauto
  · have hh := hc hq
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at hh ⊢
    tauto

theorem endpointSign_qubits (c : Wire) (U : ModUnaryLayout) (n p : Nat)
    (lo : List Wire) (sign : Wire) (hw : U.Widths n) (hn : 0<n) :
    qubitCount (endpointSign c U p lo sign)≤lo.length+2+U.wires.length := by
  have hh := (Finset.card_le_card (endpointSign_support c U n p lo sign hw hn)).trans
    (List.toFinset_card_le (c::(lo++[sign]++U.wires)))
  simp only [List.length_cons,List.length_append,List.length_nil] at hh
  exact hh.trans (by omega)

theorem endpointSign592_counts (c : Wire) (U : ModUnaryLayout) (p : Nat)
    (lo : List Wire) (sign : Wire) (hw : U.Widths 256) (hl : lo.length=591) :
    toffoliCount (endpointSign c U p lo sign)=606639 ∧
    measurementCount (endpointSign c U p lo sign)=606639 := by
  simpa only [hl] using endpointSign_counts c U 256 p lo sign hw (by omega)

end ECDSAAdd.Arithmetic.Divsteps
