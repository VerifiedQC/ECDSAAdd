import ECDSAAdd.Arithmetic.Paper935.HmrPlainRotate

namespace ECDSAAdd.Arithmetic.Paper935

private theorem controlled_swap (c a b : Wire) (nd : [c,a,b].Nodup)
    (s : State) (m : List Bool) :
    run (cswap c a b) m s=if s.basis c then run (hmrSwap a b) m s else s := by
  have h : c≠a ∧ c≠b ∧ a≠b := by simpa [and_assoc] using nd
  have cr := cswap_correct c a b nd s m
  have fr := hmrSwap_run a b h.2.2 s m
  cases hc : s.basis c
  · simp only [Bool.false_eq_true,if_false]
    apply congrArg₂ State.mk
    · exact cr.1
    · funext q
      change (run (cswap c a b) m s).basis q = _
      by_cases qa : q=a
      · subst q; simpa only [hc,Bool.false_eq_true,if_false] using cr.2.2.1
      by_cases qb : q=b
      · subst q; simpa only [hc,Bool.false_eq_true,if_false] using cr.2.2.2
      exact cr.2.1 q qa qb
  · simp only [if_true]
    apply congrArg₂ State.mk
    · exact cr.1.trans fr.1.symm
    · funext q
      change (run (cswap c a b) m s).basis q = (run (hmrSwap a b) m s).basis q
      by_cases qa : q=a
      · subst q; rw [fr.2.2.1]; simpa only [hc,if_true] using cr.2.2.1
      by_cases qb : q=b
      · subst q; rw [fr.2.2.2]; simpa only [hc,if_true] using cr.2.2.2
      exact (cr.2.1 q qa qb).trans (fr.2.1 q qa qb).symm

/-- Controlled and free rotations use the same adjacent-payload order.
The false branch cancels its CX gates as a full state equality. -/
theorem hmrControlledRotate_left (c : Wire) (payload : List Wire)
    (nd : (c::payload).Nodup) (s : State) (m : List Bool) :
    run (shiftLeft c payload) m s=
      if s.basis c then run (hmrRotateLeft payload) m s else s := by
  induction payload generalizing s with
  | nil => cases s.basis c <;> rfl
  | cons a qs ih => cases qs with
    | nil => cases s.basis c <;> rfl
    | cons b bs =>
      have h := nd
      simp only [List.nodup_cons,List.mem_cons,not_or] at h
      have tailND : (c::b::bs).Nodup := by
        simp only [List.nodup_cons,List.mem_cons,not_or]
        exact ⟨h.1.2,h.2.2⟩
      have localND : [c,a,b].Nodup := by simp [h.1.1,h.1.2.1,h.2.1.1]
      have away : c∉b::bs := (List.nodup_cons.mp tailND).1
      rw [shiftLeft,hmrRotateLeft,run_append,run_take,run_append,run_take,
        (shift_counts c (b::bs)).2.2.2,(hmrRotate_counts (b::bs)).2.2.2,List.drop_zero]
      rw [controlled_swap c a b localND]
      rw [(shift_frame c (b::bs) s m).2.2.2 c away,ih tailND]
      cases s.basis c <;> simp

end ECDSAAdd.Arithmetic.Paper935
