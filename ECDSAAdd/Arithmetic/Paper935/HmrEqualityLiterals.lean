import ECDSAAdd.Arithmetic.Paper935.HmrLadderValues

namespace ECDSAAdd.Arithmetic.Paper935

/-- Little-endian equality literals, taking successive bits of the constant. -/
def hmrEqualityLiterals : List Wire → Nat → List HmrLiteral
  | [],_ => []
  | q::qs,k => ⟨q,decide (k%2=1)⟩::hmrEqualityLiterals qs (k/2)

/-- The recursive literals are precisely the source enumerate/testBit list. -/
theorem hmrEqualityLiterals_source (bits : List Wire) (k : Nat) :
    hmrEqualityLiterals bits k=bits.mapIdx (fun i q => ⟨q,k.testBit i⟩) := by
  induction bits generalizing k with
  | nil => rfl
  | cons q qs ih =>
    simp only [hmrEqualityLiterals,List.mapIdx_cons,ih,Nat.testBit_zero,Nat.testBit_succ]

theorem hmrEqualityLiterals_wires (bits : List Wire) (k : Nat) :
    (hmrEqualityLiterals bits k).map HmrLiteral.wire=bits := by
  induction bits generalizing k with
  | nil => rfl
  | cons q qs ih => simp only [hmrEqualityLiterals,List.map_cons,ih]

theorem hmrEqualityLiterals_value (bits : List Wire) (k : Nat) (s : BasisState)
    (fits : k<2^bits.length) :
    (hmrEqualityLiterals bits k).all (fun l => l.value s)=decide (regValue bits s=k) := by
  induction bits generalizing k with
  | nil =>
    have hk : k=0 := by simpa using fits
    simp [hmrEqualityLiterals,regValue,hk]
  | cons q qs ih =>
    have bound : k/2<2^qs.length := by
      simp only [List.length_cons,pow_succ] at fits
      omega
    rw [hmrEqualityLiterals,List.all_cons,ih (k/2) bound]
    simp only [HmrLiteral.value]
    apply Bool.eq_iff_iff.mpr
    change ((if decide (k%2=1) then s q else !s q) && decide (regValue qs s=k/2))=true ↔
      decide ((if s q then 1 else 0)+2*regValue qs s=k)=true
    have rem := Nat.mod_lt k (by decide : 0<2)
    have div := Nat.mod_add_div k 2
    cases hq : s q <;> by_cases hk : k%2=1 <;> simp [hk] <;> omega

end ECDSAAdd.Arithmetic.Paper935
