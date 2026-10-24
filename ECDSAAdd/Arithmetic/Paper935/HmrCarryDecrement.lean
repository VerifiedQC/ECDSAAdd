import ECDSAAdd.Arithmetic.Paper935.HmrCounterIncrement
import ECDSAAdd.Arithmetic.BalancedFieldInverseArithmetic

namespace ECDSAAdd.Arithmetic.Paper935

/-- The source GID subtraction conjugates the same forward adder by
bitwise target complements; measured instructions are never reversed. -/
def hmrCarryDecrement (control : Wire) (qs work : List Wire) : Program :=
  notRegister qs ++ hmrCarryIncrement control qs work ++ notRegister qs

def hmrComplementBasis (qs : List Wire) (s : BasisState) : BasisState :=
  fun q => if q∈qs then !s q else s q

def hmrDecrementBasis (qs : List Wire) (carry : Bool) (s : BasisState) : BasisState :=
  hmrComplementBasis qs (hmrCarryBasis qs carry (hmrComplementBasis qs s))

theorem hmrDecrementBasis_outside (qs : List Wire) (carry : Bool) (s : BasisState) (q : Wire)
    (outside : q∉qs) : hmrDecrementBasis qs carry s q=s q := by
  simp only [hmrDecrementBasis,hmrComplementBasis,if_neg outside,
    hmrCarryBasis_outside qs _ _ q outside]

theorem hmrCarryDecrement_run (control : Wire) (qs work : List Wire)
    (nd : (control::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀q∈work,s.basis q=false) :
    run (hmrCarryDecrement control qs work) m s=
      ⟨s.phase,hmrDecrementBasis qs (s.basis control) s.basis⟩ := by
  have hn := List.nodup_cons.mp nd
  have pair := List.nodup_append'.mp hn.2
  have outside : control∉qs := fun h => hn.1 (List.mem_append_left _ h)
  let u : State := ⟨s.phase,hmrComplementBasis qs s.basis⟩
  have cleanU : ∀q∈work,u.basis q=false := by
    intro q hq
    have away : q∉qs := fun h => List.disjoint_left.mp pair.2.2 h hq
    simpa [u,hmrComplementBasis,away] using clean q hq
  have actual := hmrCarryIncrement_run control qs work nd length u m cleanU
  rw [show u.basis control=s.basis control by simp [u,hmrComplementBasis,outside]] at actual
  simp only [hmrCarryDecrement,List.append_assoc,run_append,run_take,
    (notRegister_counts qs).2,List.drop_zero,notRegister_correct qs pair.1]
  change (⟨(run (hmrCarryIncrement control qs work) m u).phase,
    hmrComplementBasis qs (run (hmrCarryIncrement control qs work) m u).basis⟩ : State)=_
  rw [actual]
  rfl

theorem hmrCarryDecrement_value (control : Wire) (qs work : List Wire)
    (nd : (control::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀q∈work,s.basis q=false) :
    regValue qs (run (hmrCarryDecrement control qs work) m s).basis=
      (regValue qs s.basis+2^qs.length-(s.basis control).toNat)%2^qs.length := by
  have hn := List.nodup_cons.mp nd
  have pair := List.nodup_append'.mp hn.2
  have outside : control∉qs := fun h => hn.1 (List.mem_append_left _ h)
  let u : State := ⟨s.phase,hmrComplementBasis qs s.basis⟩
  have cleanU : ∀q∈work,u.basis q=false := by
    intro q hq
    have away : q∉qs := fun h => List.disjoint_left.mp pair.2.2 h hq
    simpa [u,hmrComplementBasis,away] using clean q hq
  have actual := hmrCarryIncrement_run control qs work nd length u m cleanU
  have input : regValue qs u.basis=2^qs.length-1-regValue qs s.basis := by
    rw [regValue_congr qs _ (fun q => !s.basis q) (by intro q hq; simp [u,hmrComplementBasis,hq]),regValue_complement]
  have result := BalancedInverse.complement_sandwich qs pair.1 (hmrCarryIncrement control qs work)
    0 (s.basis control).toNat s m (Nat.two_pow_pos _) (by cases s.basis control <;> decide) (by
      change (run (hmrCarryIncrement control qs work) m u).phase=s.phase ∧ _
      refine ⟨?_,?_,?_⟩
      · rw [actual]
      · intro q hq
        change (run (hmrCarryIncrement control qs work) m u).basis q=u.basis q
        rw [actual]; exact hmrCarryBasis_outside qs _ _ q hq
      · change regValue qs (run (hmrCarryIncrement control qs work) m u).basis=_
        rw [hmrCarryIncrement_value control qs work nd length u m cleanU,input]
        simp [u,hmrComplementBasis,outside])
  simpa only [hmrCarryDecrement,Nat.sub_zero] using result.2.2

end ECDSAAdd.Arithmetic.Paper935
