import ECDSAAdd.Arithmetic.Paper935.HmrZero6

namespace ECDSAAdd.Arithmetic.Paper935

def hmrZero6Keep (w : Fin 12 → Wire) : Program :=
  hmrAndSweep (hmrZero6Chain w) ++
    ([.CX (w 10) (w 11)] ++ hmrAndUnsweep (hmrZero6Chain w))

theorem hmrZero6Advanced_keeper (w : Fin 12 → Wire) (hw : Function.Injective w)
    (s : BasisState) (v : Bool) :
    hmrZero6Advanced w (writeBit s (w 11) v)=writeBit (hmrZero6Advanced w s) (w 11) v := by
  simp only [hmrZero6Advanced,hmrZero6Value,writeBit]
  simp only [Function.update_of_ne (show w 0≠w 11 from by simp [hw.eq_iff]),
    Function.update_of_ne (show w 1≠w 11 from by simp [hw.eq_iff]),
    Function.update_of_ne (show w 2≠w 11 from by simp [hw.eq_iff]),
    Function.update_of_ne (show w 3≠w 11 from by simp [hw.eq_iff]),
    Function.update_of_ne (show w 4≠w 11 from by simp [hw.eq_iff]),
    Function.update_of_ne (show w 5≠w 11 from by simp [hw.eq_iff])]
  funext q
  by_cases hq : q=w 11
  · subst q; simp [Function.update,hw.eq_iff]
  · simp [Function.update,hq]

/-- Source ztest_blocked for one six-bit block: retain only the copied keeper. -/
theorem hmrZero6Keep_run (w : Fin 12 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false ∧
      s.basis (w 9)=false ∧ s.basis (w 10)=false) :
    run (hmrZero6Keep w) m s=
      ⟨s.phase,writeBit s.basis (w 11) (s.basis (w 11) ^^ hmrZero6Value w s.basis)⟩ := by
  let v := s.basis (w 11) ^^ hmrZero6Value w s.basis
  let t : State := ⟨s.phase,writeBit s.basis (w 11) v⟩
  have tc : t.basis (w 6)=false ∧ t.basis (w 7)=false ∧ t.basis (w 8)=false ∧
      t.basis (w 9)=false ∧ t.basis (w 10)=false := by
    simpa [t,writeBit,hw.eq_iff] using clean
  have copied (tape : List Bool) :
      run [.CX (w 10) (w 11)] tape ⟨s.phase,hmrZero6Advanced w s.basis⟩=
        ⟨t.phase,hmrZero6Advanced w t.basis⟩ := by
    change run [.CX (w 10) (w 11)] tape ⟨s.phase,hmrZero6Advanced w s.basis⟩=
      ⟨s.phase,hmrZero6Advanced w (writeBit s.basis (w 11) v)⟩
    rw [hmrZero6Advanced_keeper w hw]
    simp [run,hmrZero6Advanced,writeBit,hw.eq_iff,v]
  rw [hmrZero6Keep,run_append,run_take,hmrAndSweep_run _ s m (hmrZero6_ready w hw _ clean),
    hmrZero6_advance w hw,run_append,run_take,copied]
  rw [←hmrZero6_advance w hw]
  exact hmrAndUnsweep_run _ t _ (hmrZero6_ready w hw _ tc)

end ECDSAAdd.Arithmetic.Paper935
