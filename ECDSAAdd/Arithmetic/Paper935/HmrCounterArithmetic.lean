import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepValue
import ECDSAAdd.Arithmetic.Divsteps.CounterUpdate

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Arithmetic.Divsteps

/-- Counter portion of source F2/F3/F4/F5. The intervening row program is
executed on the same tape; it must preserve the counter and frozen value.
No assumption is made that its other data or its phase remain unchanged. -/
theorem hmrCounterArithmetic_value (A B : Arena) (early : Bool) (sigma frozen : Wire)
    (qs work : List Wire) (body : Program)
    (h : compileHmrCounterStep A early frozen qs=some (B,work))
    (sigmaApart : sigma∉qs) (s : State) (m : List Bool)
    (readyBody : A.Ready (run body m (run (signComplement sigma qs) m s)).basis)
    (bodyFrame : ∀q∈qs++[frozen],
      (run body m (run (signComplement sigma qs) m s)).basis q=
        (run (signComplement sigma qs) m s).basis q) :
    let out := run (signComplement sigma qs ++ body ++ hmrCounterStep early false frozen qs work) m s
    regValue qs out.basis=counterWord qs.length (if early then true else !s.basis frozen)
      (s.basis sigma) (regValue qs s.basis) ∧
    out.phase=(run body m (run (signComplement sigma qs) m s)).phase ∧
    A.Ready out.basis := by
  have hc := compileHmrCounterStep_contract A B early frozen qs work h
  have hn := List.nodup_cons.mp hc.2.1
  have complement := signComplement_correct sigma qs hn.2 sigmaApart s m
  let u := run (signComplement sigma qs) m s
  let v := run body m u
  have counter : regValue qs v.basis=regValue qs u.basis :=
    regValue_congr qs _ _ (fun q hq => bodyFrame q (List.mem_append_left _ hq))
  have frozenValue : v.basis frozen=s.basis frozen :=
    (bodyFrame frozen (by simp)).trans (complement.2.1 frozen hn.1)
  have value := compileHmrCounterStep_value A B early false frozen qs work h v
    (m.drop (measurementCount body)) readyBody
  have state := compileHmrCounterStep_return A B early false frozen qs work h v
    (m.drop (measurementCount body)) readyBody
  dsimp only at value state ⊢
  simp only [List.append_assoc,run_append,run_take,(signComplement_counts sigma qs).2,List.drop_zero]
  rw [show run (signComplement sigma qs) (m.take 0) s=run (signComplement sigma qs) m s by
    rw [←(signComplement_counts sigma qs).2,run_take]]
  change regValue qs (run (hmrCounterStep early false frozen qs work) (m.drop (measurementCount body)) v).basis=_ ∧ _
  refine ⟨?_,state.1,state.2.1⟩
  rw [value,counter,frozenValue]
  change ((regValue qs u.basis)+(if early then true else !s.basis frozen).toNat)%2^qs.length=_
  rw [show regValue qs u.basis=if s.basis sigma then 2^qs.length-1-regValue qs s.basis else regValue qs s.basis from complement.2.2]
  rfl

/-- The signed interpretation needs explicit no-overflow bounds. The
physical source counter update is obtained from the actual measured run. -/
theorem hmrCounterArithmetic_signed (A B : Arena) (early : Bool) (sigma frozen : Wire)
    (qs work : List Wire) (body : Program)
    (h : compileHmrCounterStep A early frozen qs=some (B,work))
    (sigmaApart : sigma∉qs) (s : State) (m : List Bool)
    (readyBody : A.Ready (run body m (run (signComplement sigma qs) m s)).basis)
    (bodyFrame : ∀q∈qs++[frozen],
      (run body m (run (signComplement sigma qs) m s)).basis q=
        (run (signComplement sigma qs) m s).basis q)
    (swapActive : s.basis sigma=true → (if early then true else !s.basis frozen)=true)
    (lo : -((2^(qs.length-1):Nat):Int)≤counterNext (if early then true else !s.basis frozen)
      (s.basis sigma) (signedRegValue qs s.basis))
    (hi : counterNext (if early then true else !s.basis frozen) (s.basis sigma)
      (signedRegValue qs s.basis)<((2^(qs.length-1):Nat):Int)) :
    signedRegValue qs (run (signComplement sigma qs ++ body ++ hmrCounterStep early false frozen qs work) m s).basis=
      counterNext (if early then true else !s.basis frozen) (s.basis sigma) (signedRegValue qs s.basis) := by
  have actual := hmrCounterArithmetic_value A B early sigma frozen qs work body h sigmaApart s m readyBody bodyFrame
  have width := (compileHmrCounterStep_contract A B early frozen qs work h).1
  change signedDecode qs.length (regValue qs _)=_
  rw [actual.1]
  exact counterWord_signed qs.length _ _ _ (by omega) (regValue_lt qs s.basis) swapActive lo hi

end ECDSAAdd.Arithmetic.Paper935
