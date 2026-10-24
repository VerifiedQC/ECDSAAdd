import ECDSAAdd.Arithmetic.Paper935.HmrSigmaDeath

namespace ECDSAAdd.Arithmetic.Paper935

/-- F16 between equality-chain creation and release: compute w1, retire
fire against w1/frz, then retire w1 against eqt/zf. -/
def hmrFireDeath (eqt zf frozen fire work : Wire) : Program :=
  hmrPolarAnd eqt zf work true true ++
    hmrPolarRelease work frozen fire true true ++
    hmrPolarRelease eqt zf work true true

theorem hmrFireDeath_run (w : Fin 5 → Wire) (distinct : Function.Injective w)
    (s : State) (m : List Bool) (zero : s.basis (w 4)=false)
    (value : s.basis (w 3)=((s.basis (w 0) && s.basis (w 1)) && s.basis (w 2))) :
    run (hmrFireDeath (w 0) (w 1) (w 2) (w 3) (w 4)) m s=
      ⟨s.phase,writeBit s.basis (w 3) false⟩ := by
  have nd1 : [w 0,w 1,w 4].Nodup := by simp [distinct.eq_iff]
  have nd2 : [w 4,w 2,w 3].Nodup := by simp [distinct.eq_iff]
  let t : State := ⟨s.phase,writeBit s.basis (w 4) (s.basis (w 0) && s.basis (w 1))⟩
  have compute : run (hmrPolarAnd (w 0) (w 1) (w 4) true true) m s=t := by
    simpa [t] using hmrPolarAnd_run (w 0) (w 1) (w 4) true true nd1 s m zero
  have tv : t.basis (w 3)=(t.basis (w 4) && t.basis (w 2)) := by
    simpa [t,writeBit,distinct.eq_iff] using value
  let u : State := ⟨t.phase,writeBit t.basis (w 3) false⟩
  have uv : u.basis (w 4)=(u.basis (w 0) && u.basis (w 1)) := by
    simp [u,t,writeBit,distinct.eq_iff]
  simp only [hmrFireDeath,run_append,run_take]
  rw [compute]
  rw [hmrPolarRelease_run (w 4) (w 2) (w 3) true true nd2 t _ (by simpa using tv)]
  change run (hmrPolarRelease (w 0) (w 1) (w 4) true true) _ u=_
  rw [hmrPolarRelease_run (w 0) (w 1) (w 4) true true nd1 u _ (by simpa using uv)]
  congr 1
  funext q
  by_cases h3 : q=w 3
  · subst q
    simp [u,t,writeBit,distinct.eq_iff]
  · by_cases h4 : q=w 4
    · subst q
      simp [u,t,writeBit,distinct.eq_iff,zero]
    · simp [u,t,writeBit,h3,h4]

theorem hmrFireDeath_counts (eqt zf frozen fire work : Wire) :
    toffoliCount (hmrFireDeath eqt zf frozen fire work)=1 ∧
    measurementCount (hmrFireDeath eqt zf frozen fire work)=2 := by
  simp [hmrFireDeath,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,toffoliCount,measurementCount]

end ECDSAAdd.Arithmetic.Paper935
