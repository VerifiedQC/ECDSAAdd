import ECDSAAdd.Arithmetic.Paper935.HmrZero6Free

namespace ECDSAAdd.Arithmetic.Paper935

/-- With a fresh keeper the retained bit is the unsigned six-bit zero test. -/
theorem hmrZero6Keep_zero (w : Fin 12 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false ∧
      s.basis (w 9)=false ∧ s.basis (w 10)=false) (keeper : s.basis (w 11)=false) :
    run (hmrZero6Keep w) m s=⟨s.phase,writeBit s.basis (w 11)
      (decide (regValue [w 0,w 1,w 2,w 3,w 4,w 5] s.basis=0))⟩ := by
  rw [hmrZero6Keep_run w hw s m clean,keeper,Bool.false_xor,hmrZero6_value]

/-- Full state and incoming phase are restored for every measurement tape. -/
theorem hmrZero6Cycle_run (w : Fin 12 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false ∧
      s.basis (w 9)=false ∧ s.basis (w 10)=false) (keeper : s.basis (w 11)=false) :
    run (hmrZero6Keep w ++ hmrZero6Free w) m s=s := by
  rw [run_append,run_take,hmrZero6Keep_run w hw s m clean,keeper,Bool.false_xor]
  rw [hmrZero6Free_run w hw _ _
    (by simpa [writeBit,hw.eq_iff] using And.intro clean.1 (And.intro clean.2.1 (And.intro clean.2.2.1 clean.2.2.2.1)))
    (by simp [writeBit,hmrZero6Value,hw.eq_iff])]
  change State.mk s.phase (Function.update (Function.update s.basis (w 11) _) (w 11) false)=s
  rw [Function.update_idem,←keeper,Function.update_eq_self]

theorem hmrZero6Keep_counts (w : Fin 12 → Wire) :
    toffoliCount (hmrZero6Keep w)=5 ∧ measurementCount (hmrZero6Keep w)=5 := by
  simp [hmrZero6Keep,hmrZero6Chain,hmrAndSweep,hmrAndUnsweep,HmrAndStage.compute,
    HmrAndStage.release,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
    toffoliCount,measurementCount]

theorem hmrZero6Free_counts (w : Fin 12 → Wire) :
    toffoliCount (hmrZero6Free w)=4 ∧ measurementCount (hmrZero6Free w)=5 := by
  simp [hmrZero6Free,hmrZero6Prefix,hmrAndSweep,hmrAndUnsweep,HmrAndStage.compute,
    HmrAndStage.release,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
    toffoliCount,measurementCount]

theorem hmrZero6Cycle_counts (w : Fin 12 → Wire) :
    toffoliCount (hmrZero6Keep w ++ hmrZero6Free w)=9 ∧
      measurementCount (hmrZero6Keep w ++ hmrZero6Free w)=10 := by
  simp [toffoliCount_append,measurementCount_append,(hmrZero6Keep_counts w).1,
    (hmrZero6Keep_counts w).2,(hmrZero6Free_counts w).1,(hmrZero6Free_counts w).2]

end ECDSAAdd.Arithmetic.Paper935
