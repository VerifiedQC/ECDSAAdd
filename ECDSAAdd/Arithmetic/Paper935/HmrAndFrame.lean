import ECDSAAdd.Arithmetic.Paper935.HmrAndChain

namespace ECDSAAdd.Arithmetic.Paper935

def HmrAndOutside (gs : List HmrAndStage) (q : Wire) : Prop :=
  ∀g∈gs,g.a≠q ∧ g.b≠q ∧ g.target≠q

theorem hmrAndAdvance_outside (gs : List HmrAndStage) (q : Wire)
    (outside : HmrAndOutside gs q) (s : BasisState) :
    hmrAndAdvance gs s q=s q := by
  induction gs generalizing s with
  | nil => rfl
  | cons g gs ih =>
    rw [hmrAndAdvance,ih (fun x hx => outside x (by simp [hx]))]
    have ne := (outside g (by simp)).2.2
    simp [HmrAndStage.advance,writeBit,Ne.symm ne]

theorem hmrAndAdvance_write (gs : List HmrAndStage) (q : Wire)
    (outside : HmrAndOutside gs q) (s : BasisState) (v : Bool) :
    hmrAndAdvance gs (writeBit s q v)=writeBit (hmrAndAdvance gs s) q v := by
  induction gs generalizing s with
  | nil => rfl
  | cons g gs ih =>
    have head := outside g (by simp)
    have comm : g.advance (writeBit s q v)=writeBit (g.advance s) q v := by
      simp only [HmrAndStage.advance,writeBit,Function.update_of_ne head.1,
        Function.update_of_ne head.2.1]
      exact (Function.update_comm head.2.2 _ _ _).symm
    rw [hmrAndAdvance,comm,ih (fun x hx => outside x (by simp [hx]))]
    rfl

theorem hmrAndReady_write (gs : List HmrAndStage) (q : Wire)
    (outside : HmrAndOutside gs q) (s : BasisState) (v : Bool) (ready : HmrAndReady gs s) :
    HmrAndReady gs (writeBit s q v) := by
  induction gs generalizing s with
  | nil => trivial
  | cons g gs ih =>
    have head := outside g (by simp)
    refine ⟨ready.1,?_,?_⟩
    · simpa [writeBit,head.2.2] using ready.2.1
    · have comm := hmrAndAdvance_write [g] q (by
        intro x hx
        have eq : x=g := List.mem_singleton.mp hx
        subst x
        exact head) s v
      change g.advance (writeBit s q v)=writeBit (g.advance s) q v at comm
      rw [comm]
      exact ih (fun x hx => outside x (by simp [hx])) (g.advance s) ready.2.2

end ECDSAAdd.Arithmetic.Paper935
