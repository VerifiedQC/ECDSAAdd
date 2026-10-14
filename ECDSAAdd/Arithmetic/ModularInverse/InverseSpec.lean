import ECDSAAdd.Arithmetic.ModularInverse.InverseLoad

namespace ECDSAAdd.Arithmetic
open scoped ECDSAAdd.ProofLanguage
open GateProof

/-- 规范值放在低段时，额外高段恰好为零。 -/
theorem regValue_low_iff (lo hi : List Wire) (st : BasisState) (V : Nat) (hV : V<2^lo.length) :
    regValue (lo++hi) st=V ↔ regValue lo st=V ∧ regValue hi st=0 := by
  rw [regValue_append]
  constructor
  · intro h
    have hz : regValue hi st=0 := by
      have hp := Nat.two_pow_pos lo.length
      by_contra hh
      have hh' : 1≤regValue hi st := by omega
      nlinarith
    exact ⟨by simpa only [hz,mul_zero,add_zero] using h,hz⟩
  · rintro ⟨h,hz⟩; simp [h,hz]

theorem inverseValues_iff (L : InverseLayout) (X U V S O : Nat) (st : BasisState) :
    InverseValues L (inverseValues X U V S O) st ↔
    regValue L.x st=X ∧ regValue L.inner.first.u st=U ∧ regValue L.vLow st=V ∧
      regValue L.inner.first.s st=S ∧ regValue L.out st=O ∧ regValue L.rest st=0 := by
  constructor
  · intro h; exact ⟨h .x,h .u,h .v,h .s,h .out,h .rest⟩
  · rintro ⟨hx,hu,hv,hs,ho,hr⟩ f; cases f <;> assumption

theorem inverseReady_iff (L : InverseLayout) (hw : L.Widths) (X O : Nat)
    (hX0 : 0<X) (hX : X<2^256) (hO : O<2^256) (st : BasisState) :
    InverseValues L (inverseValues X p X 1 O) st ↔
      (InverseInitial L.inner p X st ∧ regValue L.inner.out st=O) ∧ regValue L.x st=X := by
  have hv := regValue_low_iff L.vLow [L.inner.first.high.v] st X
    (by simpa only [InverseLayout.vLow,List.length_map,hw.low] using hX)
  have ho := regValue_low_iff L.out (L.inner.out.drop 256) st O
    (by simpa only [InverseLayout.out,List.length_take,hw.output] using hO)
  have hout : L.out++L.inner.out.drop 256=L.inner.out := List.take_append_drop _ _
  rw [hout] at ho
  rw [← L.v_split] at hv
  rw [inverseValues_iff,InverseInitial.iff L.inner p X hX0,ho,hv]
  have hr : regValue L.rest st=0 ↔
      regValue L.inner.first.r st=0 ∧ regValue L.inner.first.k st=0 ∧
      st L.inner.first.done=false ∧ regValue L.inner.work st=0 ∧
      regValue [L.inner.first.high.v] st=0 ∧ regValue (L.inner.out.drop 256) st=0 := by
    simp only [InverseLayout.rest,regValue_zero,List.mem_append,List.mem_cons,List.not_mem_nil,
      or_false,or_imp,forall_and,forall_eq]
    tauto
  rw [hr]
  clear hv ho hout hw hX0 hX hO
  tauto

theorem inverseZero_iff (L : InverseLayout) (X O : Nat) (st : BasisState) :
    InverseValues L (inverseValues X 0 0 0 O) st ↔
      (regValue L.x st=X ∧ regValue L.out st=O) ∧ regValue L.work st=0 := by
  rw [inverseValues_iff]
  simp only [InverseLayout.work,regValue_zero,List.mem_append,or_imp,forall_and]
  tauto

-- Layout conversions are separate from the three-step inverse algorithm.
private theorem fieldInverse_load (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X O : Nat) :
    {{ L.x=X,L.out=O,L.work=0 }} inverseLoad L
    {{ L.x=X,L.inner.first.u=p,L.vLow=X,L.inner.first.s=1,L.out=O,L.rest=0 }} := by
  apply (inverseLoad_values L hnd hw X O).1.conseq
    (fun st h => (inverseZero_iff L X O st).mpr h) ?_
  intro st h
  obtain ⟨hx,hu,hv,hs,ho,hr⟩ := (inverseValues_iff L X p X 1 O st).mp h
  exact ⟨⟨⟨⟨⟨hx,hu⟩,hv⟩,hs⟩,ho⟩,hr⟩

private theorem fieldInverse_unload (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X O : Nat) :
    {{ L.x=X,L.inner.first.u=p,L.vLow=X,L.inner.first.s=1,L.out=O,L.rest=0 }} inverseUnload L
    {{ L.x=X,L.out=O,L.work=0 }} := by
  apply (inverseLoad_values L hnd hw X O).2.conseq ?_
    (fun st h => (inverseZero_iff L X O st).mp h)
  intro st h
  exact (inverseValues_iff L X p X 1 O st).mpr
    ⟨h.1.1.1.1.1,h.1.1.1.1.2,h.1.1.1.2,h.1.1.2,h.1.2,h.2⟩

private theorem fieldInverse_loop (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X O : Nat) (hX0 : 0<X) (hX : X<p) :
    {{ L.x=X,L.inner.first.u=p,L.vLow=X,L.inner.first.s=1,L.out=O,L.rest=0 }} inverseLoop L.inner p
    {{ L.x=X,L.inner.first.u=p,L.vLow=X,L.inner.first.s=1,L.out=(O ^^^ ((X : Fp)⁻¹).val),L.rest=0 }} := Proof
  letI : NeZero p := ⟨by norm_num [p]⟩
  have hp : p<2^256 := by norm_num [p]
  { p.Coprime X } as inputCoprime by (Secp256k1.p_prime.coprime_iff_not_dvd.mpr
    (fun h => (Nat.not_le_of_lt hX) (Nat.le_of_dvd hX0 h)));
  { kaliskiInverse p X 256 = ((X : Fp)⁻¹).val } as inverseValue by
    (kaliski_inverse_p X hX0 hX);
  have hc := inverseLoop_xor_spec L.inner (L.inner_nodup hnd) hw.records hw.counter hw.low
    hw.arithmetic hw.a hw.temp hw.output p X O hp (by norm_num [p]) hX0 hX inputCoprime
  have hwire := inverseLoop_wires L.inner hw.records hw.counter
    (by simp [KaliskiRoundLayout.data,RoundDataLayout.width,hw.low])
    (by simp [KaliskiRoundLayout.data,RoundDataLayout.width,hw.low,hw.arithmetic])
    (by rw [hw.a,hw.arithmetic])
    (by rw [hw.temp,hw.arithmetic]) (by rw [hw.output,hw.arithmetic]) hw.low hw.arithmetic p
  have hdis := (List.nodup_append'.mp (L.wires_perm.nodup_iff.mp hnd)).2.2
  have hc' := hc.frame (R:=fun st => regValue L.x st=X) (by
    intro s t he hx
    exact (regValue_congr _ _ _ (fun w hw' => (he w (by
      rw [hwire]; exact fun hh => List.disjoint_left.mp hdis hw' (L.inner.usedWires_sublist.subset (List.mem_toFinset.mp hh)))).symm)).trans hx)

  have internal : Triple (InverseValues L (inverseValues X p X 1 O)) (inverseLoop L.inner p)
      (InverseValues L (inverseValues X p X 1 (O ^^^ ((X : Fp)⁻¹).val))) := by
    intro st m initial
    have hO : O<2^256 := by
      have h := regValue_lt L.out st.basis
      rw [show regValue L.out st.basis=O from initial .out] at h
      simpa only [InverseLayout.out,List.length_take,hw.output,show min 256 257=256 from rfl] using h
    have outputFits : (O ^^^ ((X : Fp)⁻¹).val)<2^256 :=
      Nat.xor_lt_two_pow hO ((ZMod.val_lt _).trans hp)
    have stage : Triple (InverseValues L (inverseValues X p X 1 O)) (inverseLoop L.inner p)
        (InverseValues L (inverseValues X p X 1 (O ^^^ ((X : Fp)⁻¹).val))) := by
      apply Triple.conseq ?_ hc' ?_
      · intro s h
        obtain ⟨⟨hi,ho⟩,hx⟩ := (inverseReady_iff L hw X O hX0 (hX.trans hp) hO s).mp h
        exact ⟨⟨(InverseInitial.iff L.inner p X hX0 s).mp hi,ho⟩,hx⟩
      · intro s h
        apply (inverseReady_iff L hw X _ hX0 (hX.trans hp) outputFits s).mpr
        exact ⟨⟨(InverseInitial.iff L.inner p X hX0 s).mpr h.1.1,
          by simpa only [inverseValue] using h.1.2⟩,h.2⟩
    exact stage st m initial
  apply internal.conseq
  · intro st h
    exact (inverseValues_iff L X p X 1 O st).mpr
      ⟨h.1.1.1.1.1,h.1.1.1.1.2,h.1.1.1.2,h.1.1.2,h.1.2,h.2⟩
  · intro st h
    obtain ⟨hx,hu,hv,hs,ho,hr⟩ := (inverseValues_iff L X p X 1 _ st).mp h
    exact ⟨⟨⟨⟨⟨hx,hu⟩,hv⟩,hs⟩,ho⟩,hr⟩

/-- 非零 secp256k1 输入的通用 XOR 输出形式，外部输入保留，全部内部线路清零。 -/
theorem fieldInverse_xor_spec (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X O : Nat) (hX0 : 0<X) (hX : X<p) :
    {{ L.x=X,L.out=O,L.work=0 }} fieldInverse L
    {{ L.x=X,L.out=(O ^^^ ((X : Fp)⁻¹).val),L.work=0 }} := by
  let R := O ^^^ ((X : Fp)⁻¹).val
  simpa only [fieldInverse,List.append_assoc] using (hoare_steps {
    Precondition { L.x=X, L.out=O, L.work=0 };

    after command { call (inverseLoad L); }
    get { L.x=X, L.inner.first.u=p, L.vLow=X, L.inner.first.s=1, L.out=O, L.rest=0 } by exact fieldInverse_load L hnd hw X O;

    after command { call (inverseLoop L.inner p); }
    get { L.x=X, L.inner.first.u=p, L.vLow=X, L.inner.first.s=1, L.out=R, L.rest=0 } by exact fieldInverse_loop L hnd hw X O hX0 hX;

    after command { call (inverseUnload L); }
    get { L.x=X, L.out=R, L.work=0 } by exact fieldInverse_unload L hnd hw X R;

    Conclusion { L.x=X, L.out=R, L.work=0 };
  })

/-- 常用零输出求逆规格。 -/
theorem fieldInverse_spec (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X : Nat) (hX0 : 0<X) (hX : X<p) :
    {{ L.x=X,L.out=0,L.work=0 }} fieldInverse L
    {{ L.x=X,L.out=((X : Fp)⁻¹).val,L.work=0 }} := Proof
  -- Starting out at zero turns the XOR update into an ordinary inverse output.
  { (0 ^^^ ((X : Fp)⁻¹).val) = ((X : Fp)⁻¹).val } as zeroOutput by (Nat.zero_xor _);
  conclude {
    {{ L.x=X,L.out=0,L.work=0 }} fieldInverse L
    {{ L.x=X,L.out=((X : Fp)⁻¹).val,L.work=0 }}
  } by (by simpa only [zeroOutput] using fieldInverse_xor_spec L hnd hw X 0 hX0 hX);

end ECDSAAdd.Arithmetic
