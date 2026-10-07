import ECDSAAdd.Arithmetic.Division.DivideState
import ECDSAAdd.Framework.CertifiedTranslation

namespace ECDSAAdd.Arithmetic

theorem divideInverse_values (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z S : Nat) (B : Bool) (hS0 : 0<S) (hS : S<p) :
    let extra := fun st => st L.control=B ∧ regValue L.denominator st=D ∧
      regValue L.numerator st=E ∧ regValue L.acc st=Z ∧ regValue L.inner.out st=0
    let middle := InverseScaledMiddle L.inner p (kaliskiStep^[512] (kaliskiInit p S))
      (kaliskiCodes 512 (kaliskiInit p S)) (-((kaliskiStep^[512] (kaliskiInit p S)).r : Fp)).val
    Triple (fun st => InverseInitial L.inner p S st ∧ extra st) (inverseCompute L.inner p)
      (fun st => middle st ∧ extra st) ∧
    Triple (fun st => middle st ∧ extra st) (inverseUncompute L.inner p)
      (fun st => InverseInitial L.inner p S st ∧ extra st) := by
  dsimp only
  have hp : p<2^256 := by norm_num [p]
  have hd : L.inner.first.data.width=257 := by
    simp [KaliskiRoundLayout.data,RoundDataLayout.width,show L.inner.first.low.length=256 from hw.inverse.low]
  have ha : L.inner.arithmetic.width=256 := hw.inverse.arithmetic
  have hc := inverseCompute_values L.inner (L.inner_nodup hnd) hw.inverse.records hw.inverse.counter
    hw.inverse.low hw.inverse.arithmetic hw.inverse.a hw.inverse.temp p S hp (by norm_num [p]) hS
    (Secp256k1.p_prime.coprime_iff_not_dvd.mpr (fun h => (Nat.not_le_of_lt hS) (Nat.le_of_dvd hS0 h)))
  have hs := inverseCompute_wires L.inner hw.inverse.records hw.inverse.counter (by omega)
    (by omega) (by rw [show L.inner.a.length=257 from hw.inverse.a,ha])
    (by rw [show L.inner.temp.length=257 from hw.inverse.temp,ha]) hw.inverse.low hw.inverse.arithmetic p
  have frame (P : Program) (hP : wires P=L.inner.usedCoreWires.toFinset)
      (s t : BasisState) (he : ∀ q, q∉wires P → s q=t q)
      (h : s L.control=B ∧ regValue L.denominator s=D ∧ regValue L.numerator s=E ∧
        regValue L.acc s=Z ∧ regValue L.inner.out s=0) :
      t L.control=B ∧ regValue L.denominator t=D ∧ regValue L.numerator t=E ∧
        regValue L.acc t=Z ∧ regValue L.inner.out t=0 := by
    have keep (q : Wire) (hq : q∈L.control :: L.denominator++L.numerator++L.acc) : t q=s q := by
      apply (he q ?_).symm
      rw [hP]
      intro hh
      exact List.disjoint_left.mp (L.external_disjoint hnd) hq (L.inverse_used_subset (List.mem_toFinset.mp hh))
    refine ⟨(keep _ (by simp)).trans h.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2.2.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2.2.2.1,?_⟩
    apply Eq.trans (regValue_congr _ _ _ ?_) h.2.2.2.2
    intro q hq
    apply (he q ?_).symm
    rw [hP]
    intro hh
    have hdis : L.inner.coreWires.Disjoint L.inner.out :=
      (List.nodup_append'.mp (L.inner_nodup hnd)).2.2
    exact List.disjoint_left.mp hdis (L.inner.usedCoreWires_sublist.subset (List.mem_toFinset.mp hh)) hq
  exact ⟨hc.1.frame (frame _ hs.1),hc.2.frame (frame _ hs.2)⟩

theorem divideLoad_extra (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) :
    let values := fun U V S st =>
      (InverseValues L.inverseView (inverseValues D U V S 0) st ∧ st L.control=B) ∧
        (regValue L.numerator st=E ∧ regValue L.acc st=Z)
    Triple (values 0 0 0) (divideLoad L) (values p (if B then D else 1) 1) ∧
    Triple (values p (if B then D else 1) 1) (divideUnload L) (values 0 0 0) := by
  dsimp only
  have hs := divideLoad_wires_subset L hw
  have hd : (L.numerator++L.acc).Disjoint (L.control::L.inverseView.wires) := by
    apply List.disjoint_left.mpr; intro q hq hv
    have h := List.nodup_iff_count.mp hnd q
    have hp := List.count_pos_iff.mpr hq
    have hq' := List.count_pos_iff.mpr hv
    have hv' := L.inverseView.wires_perm.count_eq q
    change L.inverseView.wires.count q=(L.denominator++L.inner.wires).count q at hv'
    simp only [DivideLayout.wires,DivideLayout.work,List.count_cons,List.count_append] at h hp hq' hv'
    omega
  have frame (P : Program) (hP : wires P ⊆ (L.control::L.inverseView.wires).toFinset)
      (s t : BasisState) (he : ∀ q, q∉wires P → s q=t q)
      (h : regValue L.numerator s=E ∧ regValue L.acc s=Z) :
      regValue L.numerator t=E ∧ regValue L.acc t=Z := by
    have keep (q : Wire) (hq : q∈L.numerator++L.acc) : t q=s q := by
      apply (he q ?_).symm
      intro hh
      exact List.disjoint_left.mp hd hq (List.mem_toFinset.mp (hP hh))
    exact ⟨(regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.1,
      (regValue_congr _ _ _ (fun q hq => keep q (by simp [hq]))).trans h.2⟩
  have hv := divideLoad_values L hw hnd D B
  exact ⟨hv.1.frame (frame _ hs.1),hv.2.frame (frame _ hs.2)⟩

/-- The borrowed workspace is clear, while the inverse and its matching history remain live. -/
def DividePrepared (L : DivideLayout) (D E Z : Nat) (B : Bool) (st : BasisState) : Prop :=
  let S := if B then D else 1
  InverseScaledMiddle L.inner p (kaliskiStep^[512] (kaliskiInit p S))
    (kaliskiCodes 512 (kaliskiInit p S)) (-((kaliskiStep^[512] (kaliskiInit p S)).r : Fp)).val st ∧
    (st L.control=B ∧ regValue L.denominator st=D ∧ regValue L.numerator st=E ∧
      regValue L.acc st=Z ∧ regValue L.inner.out st=0)

theorem safeInverse_values (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hD0 : B=true → D≠0) :
    Triple (fun st => st L.control=B ∧ regValue L.denominator st=D ∧
      regValue L.numerator st=E ∧ regValue L.acc st=Z ∧ regValue L.work st=0)
      (divideLoad L ++ inverseCompute L.inner p) (DividePrepared L D E Z B) ∧
    Triple (DividePrepared L D E Z B) (inverseUncompute L.inner p ++ divideUnload L)
      (fun st => st L.control=B ∧ regValue L.denominator st=D ∧
        regValue L.numerator st=E ∧ regValue L.acc st=Z ∧ regValue L.work st=0) := by
  let S := if B then D else 1
  have hp : p<2^256 := by norm_num [p]
  have hS0 : 0<S := by
    dsimp [S]; split
    · exact Nat.pos_of_ne_zero (hD0 ‹B=true›)
    · decide
  have hS : S<p := by dsimp [S]; split; exact hD; norm_num [p]
  let ready := fun st =>
    (InverseValues L.inverseView (inverseValues D p S 1 0) st ∧ st L.control=B) ∧
      (regValue L.numerator st=E ∧ regValue L.acc st=Z)
  have hi := divideInverse_values L hw hnd D E Z S B hS0 hS
  have hinverse : Triple ready (inverseCompute L.inner p) (DividePrepared L D E Z B) ∧
      Triple (DividePrepared L D E Z B) (inverseUncompute L.inner p) ready := by
    constructor
    · apply hi.1.conseq
      · intro st h
        have hv := (divideReady_iff L hw D S hS0 (hS.trans hp) st).mp h.1.1
        exact ⟨hv.1.1,h.1.2,hv.2,h.2.1,h.2.2,hv.1.2⟩
      · intro st h; exact h
    · apply hi.2.conseq
      · intro st h; exact h
      · intro st h
        exact ⟨⟨(divideReady_iff L hw D S hS0 (hS.trans hp) st).mpr
          ⟨⟨h.1,h.2.2.2.2.2⟩,h.2.2.1⟩,h.2.1⟩,h.2.2.2.1,h.2.2.2.2.1⟩
  have hl := divideLoad_extra L hw hnd D E Z B
  constructor
  · apply (hl.1.seq hinverse.1).conseq
    · intro st h
      exact ⟨⟨(divideZero_iff L D st).mpr ⟨h.2.1,h.2.2.2.2⟩,h.1⟩,h.2.2.1,h.2.2.2.1⟩
    · intro st h; exact h
  · apply (hinverse.2.seq hl.2).conseq
    · intro st h; exact h
    · intro st h
      have hz := (divideZero_iff L D st).mp h.1.1
      exact ⟨h.1.2,hz.1,h.2.1,h.2.2,hz.2⟩

/-- The source-level value is conditional; the disabled branch uses the safe denominator one. -/
theorem safeInverse_prepare (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hD0 : B=true → D≠0) :
    Triple (fun st => st L.control=B ∧ regValue L.denominator st=D ∧
      regValue L.numerator st=E ∧ regValue L.acc st=Z ∧ regValue L.work st=0)
      (safeInverseValue L.inner L.control L.denominator).prepare
      (fun st => regValue L.inner.a st=(if B then ((D : Fp)⁻¹).val else 1) ∧
        DividePrepared L D E Z B st) := by
  apply ((safeInverse_values L hw hnd D E Z B hD hD0).1).conseq
  · intro st h; exact h
  · intro st h
    let S := if B then D else 1
    have hS0 : 0<S := by
      dsimp [S]; split
      · exact Nat.pos_of_ne_zero (hD0 ‹B=true›)
      · decide
    have hS : S<p := by dsimp [S]; split; exact hD; norm_num [p]
    have scale := kaliski_montgomery_scale p S (by norm_num [p]) (by norm_num [p]) hS0 hS
      (Secp256k1.p_prime.coprime_iff_not_dvd.mpr (fun hd => (Nat.not_le_of_lt hS) (Nat.le_of_dvd hS0 hd)))
    refine ⟨?_,h⟩
    have hv := h.1.2.1.1.trans scale
    cases B <;> simpa [S] using hv

theorem safeInverse_restore (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hD0 : B=true → D≠0) :
    Triple (DividePrepared L D E Z B)
      (safeInverseValue L.inner L.control L.denominator).restore
      (fun st => regValue L.inner.a st=0 ∧ st L.control=B ∧ regValue L.denominator st=D ∧
        regValue L.numerator st=E ∧ regValue L.acc st=Z ∧ regValue L.work st=0) := by
  apply ((safeInverse_values L hw hnd D E Z B hD hD0).2).conseq
  · intro st h; exact h
  · intro st h
    refine ⟨(regValue_zero _ _).mpr ?_,h⟩
    intro w hw
    exact (regValue_zero _ _).mp h.2.2.2.2 w
      (by simp [DivideLayout.work,InverseLoopLayout.wires,InverseLoopLayout.extra,hw])

theorem divideProductAdd_step (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (X Y Z : Nat) (B : Bool) (hX : X<p) (hY : Y<2^256) (hZ : Z<p) :
    {{ L.control=B,L.inner.a=X,L.numerator=Y,L.acc=Z,L.borrow=0 }}
      montMulControlledAdd L.control L.multiply p
    {{ L.acc=(if B then (Z+(X*Y)%p)%p else Z) }} := by
  intro s m h
  have hc := divideProduct_correct L hw hnd X Y Z B hX hY hZ s m
    h.1.1.1.1 h.1.1.1.2 h.1.1.2 h.1.2 h.2
  exact ⟨hc.1.1,hc.1.2.1⟩

theorem divideProductSub_step (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (X Y Z : Nat) (B : Bool) (hX : X<p) (hY : Y<2^256) (hZ : Z<p) :
    {{ L.control=B,L.inner.a=X,L.numerator=Y,L.acc=Z,L.borrow=0 }}
      montMulControlledSub L.control L.multiply p
    {{ L.acc=(if B then (Z+p-(X*Y)%p)%p else Z) }} := by
  intro s m h
  have hc := divideProduct_correct L hw hnd X Y Z B hX hY hZ s m
    h.1.1.1.1 h.1.1.1.2 h.1.1.2 h.1.2 h.2
  exact ⟨hc.2.1,hc.2.2.1⟩

end ECDSAAdd.Arithmetic
