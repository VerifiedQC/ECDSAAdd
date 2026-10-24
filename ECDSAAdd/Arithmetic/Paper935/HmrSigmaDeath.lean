import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd

namespace ECDSAAdd.Arithmetic.Paper935

/-- Literal F15: early uses CX; armed borrows one guard and measures sigma
against fv[1] and the negative guard before releasing that guard. -/
def hmrSigmaDeath (armed : Bool) (frozen fire fv1 sigma guard : Wire) : Program :=
  if armed then hmrPolarAnd frozen fire guard true false ++
    hmrPolarRelease fv1 guard sigma true false ++
    hmrPolarRelease frozen fire guard true false
  else [.CX fv1 sigma]

theorem hmrSigmaDeath_early (frozen fire fv1 sigma guard : Wire)
    (s : State) (m : List Bool)
    (value : s.basis sigma=s.basis fv1) :
    run (hmrSigmaDeath false frozen fire fv1 sigma guard) m s=
      ⟨s.phase,writeBit s.basis sigma false⟩ := by
  simp [hmrSigmaDeath,run,value]

theorem hmrSigmaDeath_armed (w : Fin 5 → Wire) (distinct : Function.Injective w)
    (s : State) (m : List Bool) (zero : s.basis (w 4)=false)
    (value : s.basis (w 3)=(s.basis (w 2) && !(s.basis (w 0) && !s.basis (w 1)))) :
    run (hmrSigmaDeath true (w 0) (w 1) (w 2) (w 3) (w 4)) m s=
      ⟨s.phase,writeBit s.basis (w 3) false⟩ := by
  have nd1 : [w 0,w 1,w 4].Nodup := by simp [distinct.eq_iff]
  have nd2 : [w 2,w 4,w 3].Nodup := by simp [distinct.eq_iff]
  let t : State := ⟨s.phase,writeBit s.basis (w 4) (s.basis (w 0) && !s.basis (w 1))⟩
  have compute : run (hmrPolarAnd (w 0) (w 1) (w 4) true false) m s=t := by
    simpa [t] using hmrPolarAnd_run (w 0) (w 1) (w 4) true false nd1 s m zero
  have tv : t.basis (w 3)=(t.basis (w 2) && !t.basis (w 4)) := by
    simpa [t,writeBit,distinct.eq_iff] using value
  let u : State := ⟨t.phase,writeBit t.basis (w 3) false⟩
  have uv : u.basis (w 4)=(u.basis (w 0) && !u.basis (w 1)) := by
    simp [u,t,writeBit,distinct.eq_iff]
  simp only [hmrSigmaDeath,ite_true,run_append,run_take]
  rw [compute]
  rw [hmrPolarRelease_run (w 2) (w 4) (w 3) true false nd2 t _ (by simpa using tv)]
  change run (hmrPolarRelease (w 0) (w 1) (w 4) true false) _ u=_
  rw [hmrPolarRelease_run (w 0) (w 1) (w 4) true false nd1 u _ (by simpa using uv)]
  congr 1
  funext q
  by_cases h3 : q=w 3
  · subst q
    simp [u,t,writeBit,distinct.eq_iff]
  · by_cases h4 : q=w 4
    · subst q
      simp [u,t,writeBit,distinct.eq_iff,zero]
    · simp [u,t,writeBit,h3,h4]

theorem hmrSigmaDeath_counts (armed : Bool) (frozen fire fv1 sigma guard : Wire) :
    toffoliCount (hmrSigmaDeath armed frozen fire fv1 sigma guard)=(if armed then 1 else 0) ∧
    measurementCount (hmrSigmaDeath armed frozen fire fv1 sigma guard)=(if armed then 2 else 0) := by
  cases armed <;> simp [hmrSigmaDeath,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
    toffoliCount,measurementCount]

end ECDSAAdd.Arithmetic.Paper935
