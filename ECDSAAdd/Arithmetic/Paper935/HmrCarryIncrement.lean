import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source all-GID addition with a one-bit operand. Each carry is measured
away before its input target is changed on the return sweep. -/
def hmrCarryIncrement (control : Wire) : List Wire → List Wire → Program
  | [],_ => []
  | [q],_ => [.CX control q]
  | q::r::qs,work::ws => hmrPolarAnd control q work true true ++
      hmrCarryIncrement work (r::qs) ws ++ hmrPolarRelease control q work true true ++ [.CX control q]
  | _::_,[] => []

def hmrCarryBasis : List Wire → Bool → BasisState → BasisState
  | [],_,s => s
  | q::qs,carry,s => writeBit (hmrCarryBasis qs (carry && s q) s) q (s q ^^ carry)

theorem hmrCarryBasis_outside (qs : List Wire) (carry : Bool) (s : BasisState) (q : Wire)
    (outside : q∉qs) : hmrCarryBasis qs carry s q=s q := by
  induction qs generalizing carry with
  | nil => rfl
  | cons a qs ih =>
    have h : q≠a ∧ q∉qs := by simpa only [List.mem_cons,not_or] using outside
    simp only [hmrCarryBasis,writeBit,Function.update_of_ne h.1]
    exact ih _ h.2

theorem hmrCarryBasis_write (qs : List Wire) (carry : Bool) (s : BasisState) (q : Wire) (v : Bool)
    (outside : q∉qs) : hmrCarryBasis qs carry (writeBit s q v)=writeBit (hmrCarryBasis qs carry s) q v := by
  induction qs generalizing carry with
  | nil => rfl
  | cons a qs ih =>
    have h : q≠a ∧ q∉qs := by simpa only [List.mem_cons,not_or] using outside
    simp only [hmrCarryBasis,writeBit,Function.update_of_ne (Ne.symm h.1)]
    change writeBit (hmrCarryBasis qs (carry && s a) (writeBit s q v)) a (s a ^^ carry)=_
    rw [ih _ h.2]
    exact (Function.update_comm (Ne.symm h.1) _ _ _).symm

end ECDSAAdd.Arithmetic.Paper935
