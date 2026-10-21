import ECDSAAdd.Arithmetic.Paper935.HmrPlainRotate

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrRotateRight_value (a : Wire) (bs : List Wire) (nd : (a::bs).Nodup)
    (s : State) (m : List Bool) :
    regValue (a::bs) (run (hmrRotateRight (a::bs)) m s).basis=
      regValue bs s.basis+2^bs.length*(s.basis a).toNat := by
  induction bs generalizing a s with
  | nil => simp [hmrRotateRight,run,regValue,Bool.toNat]
  | cons b bs ih =>
    have ha := (List.nodup_cons.mp nd).1
    have tailND := (List.nodup_cons.mp nd).2
    have ab : a≠b := fun eq => ha (by simp [eq])
    let u := run (hmrSwap a b) m s
    have swapped := hmrSwap_run a b ab s m
    have value := ih b tailND u
    have tailValue : regValue bs u.basis=regValue bs s.basis := regValue_congr _ _ _ (by
      intro q hq
      apply swapped.2.1 q
      · intro eq; exact ha (List.mem_cons_of_mem b (eq ▸ hq))
      · intro eq; exact (List.nodup_cons.mp tailND).1 (eq ▸ hq))
    have keep := (hmrRotate_frame (b::bs) u m).2.1 a ha
    rw [hmrRotateRight,run_append,run_take]
    change (if (run (hmrRotateRight (b::bs)) m u).basis a then 1 else 0)+
      2*regValue (b::bs) (run (hmrRotateRight (b::bs)) m u).basis=_
    rw [keep,value,tailValue,swapped.2.2.1,swapped.2.2.2]
    simp only [regValue,List.foldr_cons,List.length_cons,pow_succ,Bool.toNat,Bool.cond_eq_ite]
    ring

theorem hmrRotateRight_left_cancel (qs : List Wire) (nd : qs.Nodup) (s : State) (m : List Bool) :
    run (hmrRotateRight qs) m (run (hmrRotateLeft qs) m s)=s := by
  induction qs generalizing s with
  | nil => rfl
  | cons a qs ih => cases qs with
    | nil => rfl
    | cons b bs =>
      have tailND := (List.nodup_cons.mp nd).2
      have ab : a≠b := fun eq => (List.nodup_cons.mp nd).1 (by simp [eq])
      rw [hmrRotateRight,hmrRotateLeft,run_append,run_take,run_append,run_take,
        (hmrRotate_counts (b::bs)).2.2.2,show measurementCount (hmrSwap a b)=0 from rfl,List.drop_zero]
      rw [hmrSwap_twice a b ab]
      exact ih tailND s

theorem hmrRotateLeft_value (low : Wire) (tail : List Wire) (nd : (low::tail).Nodup)
    (s : State) (m : List Bool) :
    regValue (low::tail) (run (hmrRotateLeft (low::tail)) m s).basis=
      if regValue (low::tail) s.basis<2^tail.length then 2*regValue (low::tail) s.basis
      else 2*regValue (low::tail) s.basis-2^(tail.length+1)+1 := by
  let t := run (hmrRotateLeft (low::tail)) m s
  have value := hmrRotateRight_value low tail nd t m
  rw [hmrRotateRight_left_cancel (low::tail) nd s m] at value
  have bound := regValue_lt tail t.basis
  change (if t.basis low then 1 else 0)+2*regValue tail t.basis=_
  cases bit : t.basis low <;> simp [bit,Bool.toNat,pow_succ] at value ⊢ <;> split <;> omega

end ECDSAAdd.Arithmetic.Paper935
