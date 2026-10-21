import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd

namespace ECDSAAdd.Arithmetic.Paper935

/-- A clean AND flag enclosing a possibly measured body. -/
def hmrMeasuredEnvelope (a b flag : Wire) (body : Program) : Program :=
  hmrPolarAnd a b flag true true ++ body ++ hmrPolarRelease a b flag true true

theorem hmrMeasuredEnvelope_run (a b flag : Wire) (body : Program) (nd : [a,b,flag].Nodup)
    (s : State) (m : List Bool) (clean : s.basis flag=false) :
    run (hmrMeasuredEnvelope a b flag body) m s=
      run (hmrPolarRelease a b flag true true) (m.drop (measurementCount body))
        (run body m ⟨s.phase,writeBit s.basis flag (s.basis a && s.basis b)⟩) := by
  rw [hmrMeasuredEnvelope,List.append_assoc,run_append,run_take,
    hmrPolarAnd_run a b flag true true nd s m clean]
  change run (body ++ hmrPolarRelease a b flag true true) m
    ⟨s.phase,writeBit s.basis flag (s.basis a && s.basis b)⟩=_
  rw [run_append,run_take]

theorem hmrMeasuredEnvelope_roundtrip (a b flag : Wire) (body inverse : Program)
    (nd : [a,b,flag].Nodup) (s : State) (m n : List Bool) (clean : s.basis flag=false)
    (preserved : let u : State := ⟨s.phase,writeBit s.basis flag (s.basis a && s.basis b)⟩
      ∀q∈[a,b,flag],(run body m u).basis q=u.basis q)
    (undo : let u : State := ⟨s.phase,writeBit s.basis flag (s.basis a && s.basis b)⟩
      run inverse n (run body m u)=u) :
    run (hmrMeasuredEnvelope a b flag inverse) n (run (hmrMeasuredEnvelope a b flag body) m s)=s := by
  have af : a≠flag := fun eq => (List.nodup_cons.mp nd).1 (by simp [eq])
  have bf : b≠flag := fun eq => (List.nodup_cons.mp (List.nodup_cons.mp nd).2).1 (by simp [eq])
  let u : State := ⟨s.phase,writeBit s.basis flag (s.basis a && s.basis b)⟩
  let v := run body m u
  have value : v.basis flag=(v.basis a && v.basis b) := by
    rw [preserved flag (by simp),preserved a (by simp),preserved b (by simp)]
    simp [writeBit,af,bf]
  rw [hmrMeasuredEnvelope_run a b flag body nd s m clean]
  change run (hmrMeasuredEnvelope a b flag inverse) n
    (run (hmrPolarRelease a b flag true true) (m.drop (measurementCount body)) v)=s
  rw [hmrPolarRelease_run a b flag true true nd v _ value]
  rw [hmrMeasuredEnvelope_run a b flag inverse nd _ n (by simp [writeBit])]
  have restored : (⟨v.phase,writeBit (writeBit v.basis flag false) flag
      ((writeBit v.basis flag false) a && (writeBit v.basis flag false) b)⟩ : State)=v := by
    simp only [writeBit,Function.update_of_ne af,Function.update_of_ne bf,Function.update_idem,←value,Function.update_eq_self]
  rw [restored]
  change run (hmrPolarRelease a b flag true true) _ (run inverse n v)=s
  rw [undo]
  rw [hmrPolarRelease_run a b flag true true nd _ _ (by simp [writeBit,af,bf])]
  simp only [writeBit,Function.update_idem,←clean,Function.update_eq_self]

end ECDSAAdd.Arithmetic.Paper935
