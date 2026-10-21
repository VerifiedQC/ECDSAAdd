import ECDSAAdd.Arithmetic.Paper935.HmrCarryIncrementValue

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source `inc`: use the low register bit as the ripple control, then
flip it. This saves one carry cell relative to controlled increment. -/
def hmrEarlyIncrement : List Wire → List Wire → Program
  | [],_ => []
  | q::qs,work => hmrCarryIncrement q qs work ++ [.X q]

/-- Source armed F5: negate the frozen bit around controlled increment. -/
def hmrArmedIncrement (frozen : Wire) (qs work : List Wire) : Program :=
  [.X frozen] ++ hmrCarryIncrement frozen qs work ++ [.X frozen]

theorem hmrEarlyIncrement_run (q : Wire) (qs work : List Wire)
    (nd : (q::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀x∈work,s.basis x=false) :
    run (hmrEarlyIncrement (q::qs) work) m s=
      ⟨s.phase,hmrCarryBasis (q::qs) true s.basis⟩ := by
  rw [hmrEarlyIncrement,run_append,run_take,hmrCarryIncrement_run q qs work nd length s m clean]
  have outside : q∉qs := fun h => (List.nodup_cons.mp nd).1 (List.mem_append_left _ h)
  simp only [run,hmrCarryBasis_outside qs _ _ q outside,hmrCarryBasis,Bool.true_and,Bool.xor_true]

theorem hmrArmedIncrement_run (frozen : Wire) (qs work : List Wire)
    (nd : (frozen::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀x∈work,s.basis x=false) :
    run (hmrArmedIncrement frozen qs work) m s=
      ⟨s.phase,hmrCarryBasis qs (!s.basis frozen) s.basis⟩ := by
  have hn := List.nodup_cons.mp nd
  have outside : frozen∉qs := fun h => hn.1 (List.mem_append_left _ h)
  let u : State := ⟨s.phase,writeBit s.basis frozen (!s.basis frozen)⟩
  have cleanU : ∀x∈work,u.basis x=false := by
    intro x hx
    have ne : x≠frozen := fun eq => hn.1 (List.mem_append_right _ (eq ▸ hx))
    simpa only [u,writeBit,Function.update_of_ne ne] using clean x hx
  have actual := hmrCarryIncrement_run frozen qs work nd length u m cleanU
  rw [show u.basis frozen = !s.basis frozen by simp [u,writeBit]] at actual
  change run (hmrCarryIncrement frozen qs work) m u=
    ⟨s.phase,hmrCarryBasis qs (!s.basis frozen) (writeBit s.basis frozen (!s.basis frozen))⟩ at actual
  rw [hmrArmedIncrement,List.append_assoc,run_append,run_take]
  change run (hmrCarryIncrement frozen qs work ++ [.X frozen]) m u=_
  rw [run_append,run_take,actual]
  rw [hmrCarryBasis_write qs _ _ frozen _ outside]
  simp only [run,writeBit,Function.update_self,Bool.not_not,Function.update_idem]
  have restore : Function.update (hmrCarryBasis qs (!s.basis frozen) s.basis) frozen (s.basis frozen)=
      hmrCarryBasis qs (!s.basis frozen) s.basis := by
    exact (Function.update_eq_self_iff).mpr (hmrCarryBasis_outside qs _ _ frozen outside).symm
  rw [restore]

theorem hmrEarlyIncrement_value (q : Wire) (qs work : List Wire)
    (nd : (q::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀x∈work,s.basis x=false) :
    regValue (q::qs) (run (hmrEarlyIncrement (q::qs) work) m s).basis=
      (regValue (q::qs) s.basis+1)%2^(q::qs).length := by
  rw [hmrEarlyIncrement_run q qs work nd length s m clean]
  have targetND : (q::qs).Nodup := nd.sublist (by simp)
  exact hmrCarryBasis_value (q::qs) targetND true s.basis

theorem hmrArmedIncrement_value (frozen : Wire) (qs work : List Wire)
    (nd : (frozen::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀x∈work,s.basis x=false) :
    regValue qs (run (hmrArmedIncrement frozen qs work) m s).basis=
      (regValue qs s.basis+(!s.basis frozen).toNat)%2^qs.length := by
  rw [hmrArmedIncrement_run frozen qs work nd length s m clean]
  exact hmrCarryBasis_value qs (List.nodup_append'.mp (List.nodup_cons.mp nd).2).1 _ _

end ECDSAAdd.Arithmetic.Paper935
