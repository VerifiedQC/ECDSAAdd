import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepResources

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrComplementBasis_value (qs : List Wire) (s : BasisState) :
    regValue qs (hmrComplementBasis qs s)=2^qs.length-1-regValue qs s := by
  rw [regValue_congr qs _ (fun q => !s q) (by intro q hq; simp [hmrComplementBasis,hq]),regValue_complement]

theorem hmrDecrementBasis_value (qs : List Wire) (nd : qs.Nodup) (carry : Bool) (s : BasisState) :
    regValue qs (hmrDecrementBasis qs carry s)=
      (regValue qs s+2^qs.length-carry.toNat)%2^qs.length := by
  rw [hmrDecrementBasis,hmrComplementBasis_value,hmrCarryBasis_value qs nd,hmrComplementBasis_value]
  have bound := regValue_lt qs s
  have positive : 0<2^qs.length := Nat.two_pow_pos _
  cases carry
  · simp only [Bool.toNat_false,Nat.add_zero,Nat.sub_zero,Nat.add_mod_right]
    rw [Nat.mod_eq_of_lt (show 2^qs.length-1-regValue qs s<2^qs.length by omega),Nat.mod_eq_of_lt bound]
    omega
  · simp only [Bool.toNat_true]
    by_cases zero : regValue qs s=0
    · rw [zero]
      have eq : 2^qs.length-1-0+1=2^qs.length := by omega
      rw [eq,Nat.mod_self]
      simp only [Nat.sub_zero,Nat.zero_add]
      rw [Nat.mod_eq_of_lt (by omega)]
    · have eq : 2^qs.length-1-regValue qs s+1=2^qs.length-regValue qs s := by omega
      have eq2 : regValue qs s+2^qs.length-1=(regValue qs s-1)+2^qs.length := by omega
      rw [eq,Nat.mod_eq_of_lt (by omega),eq2,Nat.add_mod_right,Nat.mod_eq_of_lt (by omega)]
      omega

theorem compileHmrCounterStep_value (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let c := (if early then true else !s.basis frozen).toNat
    regValue qs (run (hmrCounterStep early dec frozen qs work) m s).basis=
      if dec then (regValue qs s.basis+2^qs.length-c)%2^qs.length
      else (regValue qs s.basis+c)%2^qs.length := by
  have nd := (List.nodup_cons.mp (compileHmrCounterStep_contract A B early frozen qs work h).2.1).2
  rw [compileHmrCounterStep_run A B early dec frozen qs work h s m ready]
  cases dec
  · exact hmrCarryBasis_value qs nd _ _
  · exact hmrDecrementBasis_value qs nd _ _

end ECDSAAdd.Arithmetic.Paper935
