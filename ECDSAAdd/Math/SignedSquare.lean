import Mathlib.Tactic

namespace ECDSAAdd.Arithmetic

/-- Arithmetic effect of a false-controlled complement/add/complement row.
`M` is the low-half radix and the row word has modulus `2*M`. -/
theorem signed_false_row_value (A S M : Nat) (hM : 0<M)
    (hA : A<2*M) (hS : S<M) :
    2*M-1-((((M-1-A%M)+M*(A/M))+S)%(2*M))=
      (A+M-S)%(2*M) := by
  have hsplit : A%M+M*(A/M)=A := by
    simpa [Nat.mul_comm] using (Nat.mod_add_div A M)
  have hr : A%M<M := Nat.mod_lt A hM
  have hhi : A/M<2 := (Nat.div_lt_iff_lt_mul hM).2 (by simpa [Nat.mul_comm] using hA)
  have hq : A/M=0 ∨ A/M=1 := by
    cases he : A/M with
    | zero => exact Or.inl rfl
    | succ q => exact Or.inr (by omega)
  rcases hq with hq|hq
  · have hP : (M-1-A%M)+M*(A/M)+S<2*M := by rw [hq]; simp; omega
    have hQ : A+M-S<2*M := by rw [← hsplit,hq]; simp; omega
    rw [Nat.mod_eq_of_lt hP,Nat.mod_eq_of_lt hQ]
    have ha : A=A%M := by rw [hq] at hsplit; simpa using hsplit.symm
    simp only [hq]
    simp only [Nat.mul_zero,Nat.add_zero]
    omega
  · rw [hq] at hsplit
    simp at hsplit
    have ha : A=A%M+M := by omega
    by_cases hs : S≤A%M
    · have hP : (M-1-A%M)+M*(A/M)+S<2*M := by rw [hq]; simp; omega
      have hQ : 2*M≤A+M-S := by omega
      have hQ2 : A+M-S-2*M<2*M := by omega
      rw [Nat.mod_eq_of_lt hP,Nat.mod_eq_sub_mod hQ,Nat.mod_eq_of_lt hQ2]
      simp only [hq]
      simp only [Nat.mul_one]
      omega
    · have hP : 2*M≤(M-1-A%M)+M*(A/M)+S := by rw [hq]; simp; omega
      have hP2 : (M-1-A%M)+M*(A/M)+S-2*M<2*M := by rw [hq]; simp; omega
      have hQ : A+M-S<2*M := by omega
      rw [Nat.mod_eq_sub_mod hP,Nat.mod_eq_of_lt hP2,Nat.mod_eq_of_lt hQ]
      simp only [hq]
      simp only [Nat.mul_one]
      omega

theorem signed_true_row_value (A S M : Nat) :
    (A+S+1)%(2*M)=(A+S+1)%(2*M) := rfl

end ECDSAAdd.Arithmetic
