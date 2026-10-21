import ECDSAAdd.Arithmetic.Paper935.HmrCarryIncrement

namespace ECDSAAdd.Arithmetic.Paper935

/-- Exact arbitrary-tape semantics of the source one-bit GID ripple. All
carry scratch and every site outside the target register are restored. -/
theorem hmrCarryIncrement_run (control : Wire) (qs work : List Wire)
    (nd : (control::(qs++work)).Nodup) (length : work.length+1=qs.length)
    (s : State) (m : List Bool) (clean : ∀q∈work,s.basis q=false) :
    run (hmrCarryIncrement control qs work) m s=⟨s.phase,hmrCarryBasis qs (s.basis control) s.basis⟩ := by
  induction qs generalizing control work s m with
  | nil => simp at length
  | cons q qs ih =>
    cases qs with
    | nil => simp [hmrCarryIncrement,hmrCarryBasis,run,writeBit]
    | cons r rest =>
      cases work with
      | nil => simp at length
      | cons w ws =>
        have hn := List.nodup_cons.mp nd
        have hq := List.nodup_cons.mp hn.2
        have pair := List.nodup_append'.mp hq.2
        have wn := List.nodup_cons.mp pair.2.1
        have cw : control≠w := fun eq => hn.1 (by simp [eq])
        have cq : control≠q := fun eq => hn.1 (by simp [eq])
        have qw : q≠w := fun eq => hq.1 (by simp [eq])
        have co : control∉r::rest := fun h => hn.1 (List.mem_cons_of_mem q (List.mem_append_left _ h))
        have qo : q∉r::rest := fun h => hq.1 (List.mem_append_left _ h)
        have wo : w∉r::rest := fun h => List.disjoint_left.mp pair.2.2 h (by simp)
        have recursiveND : (w::((r::rest)++ws)).Nodup := by
          apply List.nodup_cons.mpr
          constructor
          · simp only [List.mem_append,not_or]
            exact ⟨wo,wn.1⟩
          · apply List.nodup_append'.mpr
            exact ⟨pair.1,wn.2,List.disjoint_left.mpr (fun x hx hw => List.disjoint_left.mp pair.2.2 hx (List.mem_cons_of_mem w hw))⟩
        let carry := s.basis control && s.basis q
        let next : State := ⟨s.phase,writeBit s.basis w carry⟩
        have cleanNext : ∀x∈ws,next.basis x=false := by
          intro x hx
          have ne : x≠w := fun eq => wn.1 (eq ▸ hx)
          simpa only [next,writeBit,Function.update_of_ne ne] using clean x (List.mem_cons_of_mem w hx)
        have recurse := ih w ws recursiveND (by simp only [List.length_cons] at length ⊢;omega)
          next (m.drop (measurementCount (hmrPolarAnd control q w true true))) cleanNext
        have nextW : next.basis w=carry := by simp [next,writeBit]
        rw [nextW,show next.basis=writeBit s.basis w carry from rfl,hmrCarryBasis_write _ _ _ _ _ wo] at recurse
        let base := hmrCarryBasis (r::rest) carry s.basis
        have bc : base control=s.basis control := hmrCarryBasis_outside _ _ _ _ co
        have bq : base q=s.basis q := hmrCarryBasis_outside _ _ _ _ qo
        have bw : base w=false := (hmrCarryBasis_outside _ _ _ _ wo).trans (clean w (by simp))
        have distinct : [control,q,w].Nodup := by simp [cq,cw,qw]
        have mint := hmrPolarAnd_run control q w true true distinct s m (clean w (by simp))
        rw [hmrCarryIncrement,List.append_assoc,List.append_assoc,run_append,run_take,mint]
        change run (hmrCarryIncrement w (r::rest) ws ++ (hmrPolarRelease control q w true true ++ [.CX control q]))
          (m.drop (measurementCount (hmrPolarAnd control q w true true))) next=_
        rw [run_append,run_take,recurse,run_append,run_take]
        rw [hmrPolarRelease_run control q w true true distinct _ _ (by
          change (writeBit base w carry) w=((writeBit base w carry) control && (writeBit base w carry) q)
          simp only [writeBit,Function.update_self,Function.update_of_ne cw,Function.update_of_ne qw,bc,bq]
          rfl)]
        change run [.CX control q] _ ⟨s.phase,writeBit (writeBit base w carry) w false⟩=_
        rw [show writeBit (writeBit base w carry) w false=base by
          simp only [writeBit,Function.update_idem,←bw,Function.update_eq_self]]
        simp only [run,hmrCarryBasis,bc,bq]
        rfl

end ECDSAAdd.Arithmetic.Paper935
