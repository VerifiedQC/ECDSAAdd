import ECDSAAdd.Arithmetic.Division.DivideSteps
import ECDSAAdd.Arithmetic.Division.DivideSupport
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open scoped ECDSAAdd.ProofLanguage
open GateProof


-- Clean V: control=B, denominator=D, numerator=E, acc=V; all work bits are zero.
private def divideClean (L : DivideLayout) (D E : Nat) (B : Bool) (V : Nat) (st : BasisState) : Prop :=
  (InverseValues L.inverseView (inverseValues D 0 0 0 0) st ∧ st L.control=B) ∧
  (regValue L.numerator st=E ∧ regValue L.acc st=V)

-- Ready V: the same inputs/output, with u=p, v=S and s=1 loaded for inversion.
private def divideReady (L : DivideLayout) (D E S : Nat) (B : Bool) (V : Nat) (st : BasisState) : Prop :=
  (InverseValues L.inverseView (inverseValues D p S 1 0) st ∧ st L.control=B) ∧
  (regValue L.numerator st=E ∧ regValue L.acc st=V)

-- Prepared V: the inverse of S and its complete history are retained; acc=V.
private def dividePrepared (L : DivideLayout) (D E S : Nat) (B : Bool) (V : Nat) (st : BasisState) : Prop :=
  InverseScaledMiddle L.inner p (kaliskiStep^[512] (kaliskiInit p S)) (kaliskiCodes 512 (kaliskiInit p S))
  (-((kaliskiStep^[512] (kaliskiInit p S)).r : Fp)).val st ∧
  (st L.control=B ∧ regValue L.denominator st=D ∧ regValue L.numerator st=E ∧
  regValue L.acc st=V ∧ regValue L.inner.out st=0)

private theorem divide_inverse_steps (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E S : Nat) (B : Bool) (hS0 : 0<S) (hS : S<p) (V : Nat) :
    Triple (divideReady L D E S B V) (inverseCompute L.inner p) (dividePrepared L D E S B V) ∧
    Triple (dividePrepared L D E S B V) (inverseUncompute L.inner p) (divideReady L D E S B V) := by
  have hp : p<2^256 := by norm_num [p]
  have hi := divideInverse_values L hw hnd D E V S B hS0 hS
  constructor
  · apply hi.1.conseq
    · intro st h
      have hv := (divideReady_iff L hw D S hS0 (hS.trans hp) st).mp h.1.1
      exact ⟨hv.1.1,h.1.2,hv.2,h.2.1,h.2.2,hv.1.2⟩
    · intro st h; exact h
  · apply hi.2.conseq
    · intro st h; exact h
    · intro st h
      exact ⟨⟨(divideReady_iff L hw D S hS0 (hS.trans hp) st).mpr ⟨⟨h.1,h.2.2.2.2.2⟩,h.2.2.1⟩,
        h.2.1⟩,h.2.2.2.1,h.2.2.2.2.1⟩

private theorem divide_product_steps (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z S : Nat) (B : Bool) (hE : E<p) (hZ : Z<p) (hS0 : 0<S) (hS : S<p) :
    let A := ((S : Fp)⁻¹).val
    Triple (dividePrepared L D E S B Z)
      (montMulControlledAdd L.control L.multiply p)
      (dividePrepared L D E S B (if B then (Z+(A*E)%p)%p else Z)) ∧
    Triple (dividePrepared L D E S B Z)
      (montMulControlledSub L.control L.multiply p)
      (dividePrepared L D E S B (if B then (Z+p-(A*E)%p)%p else Z)) := by
  letI : NeZero p := ⟨by norm_num [p]⟩
  let A := ((S : Fp)⁻¹).val
  have hp : p<2^256 := by norm_num [p]
  have inverseBound : A<p := ZMod.val_lt _
  have hscale := kaliski_montgomery_scale p S (by norm_num [p]) hp hS0 hS
    (Secp256k1.p_prime.coprime_iff_not_dvd.mpr (fun h => (Nat.not_le_of_lt hS) (Nat.le_of_dvd hS0 h)))
  have finish (P : Program) (V : Nat) (s : State) (m : List Bool) (h : dividePrepared L D E S B Z s.basis)
      (hc : (run P m s).phase=s.phase ∧ regValue L.acc (run P m s).basis=V ∧
        ∀ q∉L.acc, (run P m s).basis q=s.basis q) :
      (run P m s).phase=s.phase ∧ dividePrepared L D E S B V (run P m s).basis := by
    have keep (q : Wire) (hq : q∈L.control::L.denominator++L.numerator++L.inner.wires) :
        (run P m s).basis q=s.basis q :=
      hc.2.2 q (List.disjoint_left.mp (L.acc_disjoint_other hnd) hq)
    refine ⟨hc.1,divideMiddle_congr L S _ _ _ h.1 (fun q hq => keep q (by simp [hq])),
      (keep _ (by simp)).trans h.2.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2.2.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2.2.2.1,hc.2.1,?_⟩
    apply Eq.trans (regValue_congr _ _ _ ?_) h.2.2.2.2.2
    intro q hq
    apply keep q
    have hi : q∈L.inner.wires := List.mem_append_right _ hq
    simp [hi]
  constructor
  · intro s m h
    have hc := divideProduct_correct L hw hnd A E Z B inverseBound (hE.trans hp) hZ s m h.2.1
      (h.1.2.1.1.trans hscale) h.2.2.2.1 h.2.2.2.2.1 h.1.2.1.2.2
    exact finish _ _ s m h hc.1
  · intro s m h
    have hc := divideProduct_correct L hw hnd A E Z B inverseBound (hE.trans hp) hZ s m h.2.1
      (h.1.2.1.1.trans hscale) h.2.2.2.1 h.2.2.2.2.1 h.1.2.1.2.2
    exact finish _ _ s m h hc.2


private theorem divide_externalSpec (L : DivideLayout) (D E Z : Nat) (B : Bool)
    (P : Program) (V : Nat) (hc : Triple (divideClean L D E B Z) P (divideClean L D E B V)) :
    {{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }} P
    {{ L.control=B,L.denominator=D,L.numerator=E,L.acc=V,L.work=0 }} := by
  apply hc.conseq
  · intro st h
    exact ⟨⟨(divideZero_iff L D st).mpr ⟨h.1.1.1.2,h.2⟩,h.1.1.1.1⟩,h.1.1.2,h.1.2⟩
  · intro st h
    have hz := (divideZero_iff L D st).mp h.1.1
    exact ⟨⟨⟨⟨h.1.2,hz.1⟩,h.2.1⟩,h.2.2⟩,hz.2⟩

private theorem divide_safeDenominator (D : Nat) (B : Bool) (hD : D<p)
    (hD0 : B=true → D≠0) :
    0<(if B then D else 1) ∧ (if B then D else 1)<p := by
  cases B
  · norm_num [p]
  · exact ⟨Nat.pos_of_ne_zero (hD0 rfl),hD⟩

/-- 加减除法保留控制、分母、分子，清零全部工作位；只要求启用时分母非零。 -/
private theorem divide_spec (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0) :
    ({{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }} divideAdd L
     {{ L.control=B,L.denominator=D,L.numerator=E,
       L.acc=(if B then (Z+(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0 }}) ∧
    ({{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }} divideSub L
     {{ L.control=B,L.denominator=D,L.numerator=E,
       L.acc=(if B then (Z+p-(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0 }}) := by
  let S := if B then D else 1 -- The safe denominator used when control is disabled.
  let A := ((S : Fp)⁻¹).val
  let plus := if B then (Z+(A*E)%p)%p else Z
  let minus := if B then (Z+p-(A*E)%p)%p else Z
  obtain ⟨hS0,hS⟩ := divide_safeDenominator D B hD hD0
  have inverseStages := divide_inverse_steps L hw hnd D E S B hS0 hS
  have productStages := divide_product_steps L hw hnd D E Z S B hE hZ hS0 hS

  -- Ready: u=p, v=S, s=1. Prepared: a=S⁻¹ with the complete inverse history.
  have addition : Triple (divideClean L D E B Z) (divideAdd L) (divideClean L D E B plus) := by
    simpa only [divideAdd_program,List.append_assoc] using (hoare_steps {
      Precondition { satisfies (divideClean L D E B Z) };

      after command { call (divideLoad L); }
      get { satisfies (divideReady L D E S B Z) } by exact (divideLoad_extra L hw hnd D E Z B).1;

      after command { call (inverseCompute L.inner p); }
      get { satisfies (dividePrepared L D E S B Z) } by exact (inverseStages Z).1;

      after command { call (montMulControlledAdd L.control L.multiply p); }
      get { satisfies (dividePrepared L D E S B plus) } by exact productStages.1;

      after command { call (inverseUncompute L.inner p); }
      get { satisfies (divideReady L D E S B plus) } by exact (inverseStages plus).2;

      after command { call (divideUnload L); }
      get { satisfies (divideClean L D E B plus) } by exact (divideLoad_extra L hw hnd D E plus B).2;

      Conclusion { satisfies (divideClean L D E B plus) };
    })

  have subtraction : Triple (divideClean L D E B Z) (divideSub L) (divideClean L D E B minus) := by
    simpa only [divideSub_program,List.append_assoc] using (hoare_steps {
      Precondition { satisfies (divideClean L D E B Z) };

      after command { call (divideLoad L); }
      get { satisfies (divideReady L D E S B Z) } by exact (divideLoad_extra L hw hnd D E Z B).1;

      after command { call (inverseCompute L.inner p); }
      get { satisfies (dividePrepared L D E S B Z) } by exact (inverseStages Z).1;

      after command { call (montMulControlledSub L.control L.multiply p); }
      get { satisfies (dividePrepared L D E S B minus) } by exact productStages.2;

      after command { call (inverseUncompute L.inner p); }
      get { satisfies (divideReady L D E S B minus) } by exact (inverseStages minus).2;

      after command { call (divideUnload L); }
      get { satisfies (divideClean L D E B minus) } by exact (divideLoad_extra L hw hnd D E minus B).2;

      Conclusion { satisfies (divideClean L D E B minus) };
    })

  have additionValue : plus=(if B then (Z+(((D : Fp)⁻¹).val*E)%p)%p else Z) := by
    cases B <;> simp [plus,A,S]
  have subtractionValue : minus=(if B then (Z+p-(((D : Fp)⁻¹).val*E)%p)%p else Z) := by
    cases B <;> simp [minus,A,S]
  exact ⟨by simpa only [additionValue] using divide_externalSpec L D E Z B _ _ addition,
    by simpa only [subtractionValue] using divide_externalSpec L D E Z B _ _ subtraction⟩

/-- 受控除法模加，输入保持且全部工作区清零。 -/
theorem divideAdd_spec (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0) :
    {{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }} divideAdd L
    {{ L.control=B,L.denominator=D,L.numerator=E,
      L.acc=(if B then (Z+(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0 }} :=
  (divide_spec L hw hnd D E Z B hD hE hZ hD0).1

/-- 受控除法模减，输入保持且全部工作区清零。 -/
theorem divideSub_spec (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0) :
    {{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }} divideSub L
    {{ L.control=B,L.denominator=D,L.numerator=E,
      L.acc=(if B then (Z+p-(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0 }} :=
  (divide_spec L hw hnd D E Z B hD hE hZ hD0).2

/-- 除法只改变acc；所有输入、控制和工作位逐线恢复。 -/
theorem divide_frame (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0)
    (s : State) (m : List Bool) (hb : s.basis L.control=B)
    (hd : regValue L.denominator s.basis=D) (he : regValue L.numerator s.basis=E)
    (hz : regValue L.acc s.basis=Z) (hc : regValue L.work s.basis=0)
    (q : Wire) (hq : q∉L.acc) :
    (run (divideAdd L) m s).basis q=s.basis q ∧ (run (divideSub L) m s).basis q=s.basis q := by
  have ht := divide_spec L hw hnd D E Z B hD hE hZ hD0
  have keep (P : Program) (hp : wires P=L.usedWires.toFinset)
      (hb' : (run P m s).basis L.control=B)
      (hd' : regValue L.denominator (run P m s).basis=D)
      (he' : regValue L.numerator (run P m s).basis=E)
      (hc' : regValue L.work (run P m s).basis=0) : (run P m s).basis q=s.basis q := by
    by_cases hqc : q=L.control
    · subst q; exact hb'.trans hb.symm
    by_cases hqd : q∈L.denominator
    · exact (regValue_eq_iff _ _ _).mp (hd'.trans hd.symm) q hqd
    by_cases hqe : q∈L.numerator
    · exact (regValue_eq_iff _ _ _).mp (he'.trans he.symm) q hqe
    by_cases hqw : q∈L.work
    · exact (regValue_eq_iff _ _ _).mp (hc'.trans hc.symm) q hqw
    apply run_preserves_outside
    rw [hp]
    have hi : q∉L.inner.usedCoreWires := fun h => hqw (L.inverse_used_subset h)
    simp [DivideLayout.usedWires,hqc,hqd,hqe,hq,hi]
  obtain ⟨_,ha⟩ := ht.1 s m ⟨⟨⟨⟨hb,hd⟩,he⟩,hz⟩,hc⟩
  obtain ⟨_,hs⟩ := ht.2 s m ⟨⟨⟨⟨hb,hd⟩,he⟩,hz⟩,hc⟩
  exact ⟨keep _ (divide_wires L hw).1 ha.1.1.1.1 ha.1.1.1.2 ha.1.1.2 ha.2,
    keep _ (divide_wires L hw).2 hs.1.1.1.1 hs.1.1.1.2 hs.1.1.2 hs.2⟩

end ECDSAAdd.Arithmetic
