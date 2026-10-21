import ECDSAAdd.Arithmetic.Paper935.HmrCarryIncrementRun

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrCarryBasis_false (qs : List Wire) (s : BasisState) : hmrCarryBasis qs false s=s := by
  induction qs with
  | nil => rfl
  | cons q qs ih => simp only [hmrCarryBasis,Bool.false_and,Bool.xor_false,ih,writeBit,Function.update_eq_self]

theorem hmrCarryBasis_value (qs : List Wire) (nd : qs.Nodup) (carry : Bool) (s : BasisState) :
    regValue qs (hmrCarryBasis qs carry s)=(regValue qs s+carry.toNat)%2^qs.length := by
  induction qs generalizing carry with
  | nil => simp [hmrCarryBasis, regValue, Nat.mod_one]
  | cons q qs ih =>
    have hn := List.nodup_cons.mp nd
    have unchanged (c : Bool) : regValue qs (writeBit (hmrCarryBasis qs c s) q (s q ^^ carry))=
        regValue qs (hmrCarryBasis qs c s) := by
      apply regValue_congr
      intro x hx
      have ne : x ≠ q := fun eq => hn.1 (eq ▸ hx)
      exact Function.update_of_ne ne _ _
    have tailBound := regValue_lt qs s
    have modulus : 0<2^qs.length := by positivity
    change (if (writeBit (hmrCarryBasis qs (carry && s q) s) q (s q ^^ carry)) q then 1 else 0)+
      2*regValue qs (writeBit (hmrCarryBasis qs (carry && s q) s) q (s q ^^ carry))=_
    rw [unchanged,ih hn.2]
    simp only [writeBit,Function.update_self]
    change (if s q ^^ carry then 1 else 0)+2*((regValue qs s+(carry && s q).toNat)%2^qs.length)=
      ((if s q then 1 else 0)+2*regValue qs s+carry.toNat)%2^(qs.length+1)
    cases carry <;> cases hb : s q
    all_goals simp only [Bool.false_and,Bool.true_and,Bool.xor_false,Bool.xor_true,
      Bool.not_false,Bool.not_true,Bool.false_eq_true,ite_false,ite_true,Bool.toNat_false,Bool.toNat_true,
      Nat.add_zero,Nat.zero_add,pow_succ]
    · rw [Nat.mod_eq_of_lt tailBound,Nat.mod_eq_of_lt (by omega)]
    · rw [Nat.mod_eq_of_lt tailBound,Nat.mod_eq_of_lt (by omega)]
    · rw [Nat.mod_eq_of_lt tailBound,Nat.mod_eq_of_lt (by omega)]
      omega
    · have eq : 1+2*regValue qs s+1=2*(regValue qs s+1) := by omega
      rw [eq,Nat.mul_comm (2^qs.length) 2,Nat.mul_mod_mul_left]

/-- Arithmetic value of the actual one-bit source ripple, with exact
modular overflow behavior and arbitrary measurement tape. -/
theorem hmrCarryIncrement_value (control : Wire) (qs work : List Wire)
    (nd : (control::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀q∈work,s.basis q=false) :
    regValue qs (run (hmrCarryIncrement control qs work) m s).basis=
      (regValue qs s.basis+(s.basis control).toNat)%2^qs.length := by
  rw [hmrCarryIncrement_run control qs work nd length s m clean]
  exact hmrCarryBasis_value qs (List.nodup_append'.mp (List.nodup_cons.mp nd).2).1 _ _

end ECDSAAdd.Arithmetic.Paper935
