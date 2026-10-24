import ECDSAAdd.Arithmetic.Paper935.HmrCarryDecrement

namespace ECDSAAdd.Arithmetic.Paper935

def hmrEarlyDecrement (qs work : List Wire) : Program :=
  notRegister qs ++ hmrEarlyIncrement qs work ++ notRegister qs

def hmrArmedDecrement (frozen : Wire) (qs work : List Wire) : Program :=
  [.X frozen] ++ hmrCarryDecrement frozen qs work ++ [.X frozen]

theorem hmrComplementBasis_write (qs : List Wire) (s : BasisState) (q : Wire) (v : Bool)
    (outside : q∉qs) : hmrComplementBasis qs (writeBit s q v)=writeBit (hmrComplementBasis qs s) q v := by
  funext x
  by_cases eq : x=q
  · subst x; simp [hmrComplementBasis,writeBit,outside]
  · simp [hmrComplementBasis,writeBit,Function.update_of_ne eq]

theorem hmrDecrementBasis_write (qs : List Wire) (carry : Bool) (s : BasisState) (q : Wire) (v : Bool)
    (outside : q∉qs) : hmrDecrementBasis qs carry (writeBit s q v)=writeBit (hmrDecrementBasis qs carry s) q v := by
  simp only [hmrDecrementBasis,hmrComplementBasis_write qs _ q v outside,
    hmrCarryBasis_write qs _ _ q v outside]

theorem hmrEarlyDecrement_run (q : Wire) (qs work : List Wire)
    (nd : (q::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀x∈work,s.basis x=false) :
    run (hmrEarlyDecrement (q::qs) work) m s=
      ⟨s.phase,hmrDecrementBasis (q::qs) true s.basis⟩ := by
  have targetND : (q::qs).Nodup := nd.sublist (by simp)
  have disjoint : (q::qs).Disjoint work := (List.nodup_append'.mp (show ((q::qs)++work).Nodup from nd)).2.2
  let u : State := ⟨s.phase,hmrComplementBasis (q::qs) s.basis⟩
  have cleanU : ∀x∈work,u.basis x=false := by
    intro x hx
    have away : x∉q::qs := fun h => List.disjoint_left.mp disjoint h hx
    simpa [u,hmrComplementBasis,away] using clean x hx
  have actual := hmrEarlyIncrement_run q qs work nd length u m cleanU
  simp only [hmrEarlyDecrement,List.append_assoc,run_append,run_take,
    (notRegister_counts (q::qs)).2,List.drop_zero,notRegister_correct (q::qs) targetND]
  change (⟨(run (hmrEarlyIncrement (q::qs) work) m u).phase,
    hmrComplementBasis (q::qs) (run (hmrEarlyIncrement (q::qs) work) m u).basis⟩ : State)=_
  rw [actual]
  rfl

theorem hmrArmedDecrement_run (frozen : Wire) (qs work : List Wire)
    (nd : (frozen::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀x∈work,s.basis x=false) :
    run (hmrArmedDecrement frozen qs work) m s=
      ⟨s.phase,hmrDecrementBasis qs (!s.basis frozen) s.basis⟩ := by
  have hn := List.nodup_cons.mp nd
  have outside : frozen∉qs := fun h => hn.1 (List.mem_append_left _ h)
  let u : State := ⟨s.phase,writeBit s.basis frozen (!s.basis frozen)⟩
  have cleanU : ∀x∈work,u.basis x=false := by
    intro x hx
    have ne : x≠frozen := fun eq => hn.1 (List.mem_append_right _ (eq ▸ hx))
    simpa only [u,writeBit,Function.update_of_ne ne] using clean x hx
  have actual := hmrCarryDecrement_run frozen qs work nd length u m cleanU
  rw [show u.basis frozen = !s.basis frozen by simp [u,writeBit]] at actual
  change run (hmrCarryDecrement frozen qs work) m u=
    ⟨s.phase,hmrDecrementBasis qs (!s.basis frozen) (writeBit s.basis frozen (!s.basis frozen))⟩ at actual
  rw [hmrArmedDecrement,List.append_assoc,run_append,run_take]
  change run (hmrCarryDecrement frozen qs work ++ [.X frozen]) m u=_
  rw [run_append,run_take,actual,hmrDecrementBasis_write qs _ _ frozen _ outside]
  simp only [run,writeBit,Function.update_self,Bool.not_not,Function.update_idem]
  have restore : Function.update (hmrDecrementBasis qs (!s.basis frozen) s.basis) frozen (s.basis frozen)=
      hmrDecrementBasis qs (!s.basis frozen) s.basis := by
    exact Function.update_eq_self_iff.mpr (hmrDecrementBasis_outside qs _ _ frozen outside).symm
  rw [restore]

end ECDSAAdd.Arithmetic.Paper935
