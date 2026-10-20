import ECDSAAdd.Arithmetic.Paper935.HornerCarryHigh

namespace ECDSAAdd.Arithmetic.Paper935

/-- Author control-XOR dressing in increasing register order. -/
def hornerDress (ctrl : Wire) (r : List Wire) : Program := r.map (.CX ctrl)

theorem hornerDress_run (ctrl : Wire) (r : List Wire) (s : State) (m : List Bool)
    (distinct : (ctrl::r).Nodup) :
    run (hornerDress ctrl r) m s=
      ⟨s.phase,fun q => if q∈r then s.basis q ^^ s.basis ctrl else s.basis q⟩ := by
  induction r generalizing s with
  | nil => rfl
  | cons a r ih =>
    have hc : ctrl≠a := fun h => (List.nodup_cons.mp distinct).1 (by simp [h])
    have ha : a∉r := (List.nodup_cons.mp (List.nodup_cons.mp distinct).2).1
    have tail : (ctrl::r).Nodup := distinct.sublist (by simp)
    change run (.CX ctrl a :: hornerDress ctrl r) m s=_
    simp only [run]
    rw [ih _ tail]
    apply congrArg (State.mk s.phase)
    funext q
    by_cases hq : q=a
    · subst q; simp [writeBit,ha]
    · simp [writeBit,hq,hc]

/-- The author emits the same increasing-order fan to undo dressing. -/
theorem hornerDress_roundtrip (ctrl : Wire) (r : List Wire) (s : State) (m n : List Bool)
    (distinct : (ctrl::r).Nodup) :
    run (hornerDress ctrl r) n (run (hornerDress ctrl r) m s)=s := by
  rw [hornerDress_run _ _ _ _ distinct,hornerDress_run _ _ _ _ distinct]
  have hc := (List.nodup_cons.mp distinct).1
  cases s with
  | mk phase basis =>
    apply congrArg (State.mk phase)
    funext q
    by_cases hq : q∈r <;> simp [hq,hc]

end ECDSAAdd.Arithmetic.Paper935
