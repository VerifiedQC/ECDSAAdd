import ECDSAAdd.Arithmetic.Paper935.HmrZero6Free

namespace ECDSAAdd.Arithmetic.Paper935

/-- Six counter inputs, four newly allocated prefix leaves, and the existing keeper. -/
def hmrFreshValue (w : Fin 11 → Wire) (s : BasisState) : Bool :=
  !s (w 0) && !s (w 1) && !s (w 2) && !s (w 3) && !s (w 4) && !s (w 5)

def hmrFreshPrefix (w : Fin 11 → Wire) : List HmrAndStage :=
  [⟨w 0,w 1,w 6,false,false⟩,⟨w 6,w 2,w 7,true,false⟩,
   ⟨w 7,w 3,w 8,true,false⟩,⟨w 8,w 4,w 9,true,false⟩]

def hmrFreshFree (w : Fin 11 → Wire) : Program :=
  hmrAndSweep (hmrFreshPrefix w) ++
    (hmrPolarRelease (w 9) (w 5) (w 10) true false ++ hmrAndUnsweep (hmrFreshPrefix w))

theorem hmrFreshPrefix_ready (w : Fin 11 → Wire) (hw : Function.Injective w) (s : BasisState)
    (clean : s (w 6)=false ∧ s (w 7)=false ∧ s (w 8)=false ∧ s (w 9)=false) :
    HmrAndReady (hmrFreshPrefix w) s := by
  obtain ⟨h6,h7,h8,h9⟩ := clean
  simp [hmrFreshPrefix,HmrAndReady,HmrAndStage.advance,writeBit,hw.eq_iff,h6,h7,h8,h9]

theorem hmrFreshPrefix_keeper (w : Fin 11 → Wire) (hw : Function.Injective w)
    (s : BasisState) (v : Bool) :
    hmrAndAdvance (hmrFreshPrefix w) (writeBit s (w 10) v)=
      writeBit (hmrAndAdvance (hmrFreshPrefix w) s) (w 10) v := by
  simp [hmrFreshPrefix,hmrAndAdvance,HmrAndStage.advance,writeBit,hw.eq_iff]
  funext q
  by_cases hq : q=w 10
  · subst q; simp [Function.update,hw.eq_iff]
  · simp [Function.update,hq]

/-- Source ztest_free recomputes only the penultimate prefix and measures
its keeper against the final negative literal; it never recomputes the top. -/
theorem hmrFreshFree_run (w : Fin 11 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false ∧ s.basis (w 9)=false)
    (value : s.basis (w 10)=hmrFreshValue w s.basis) :
    run (hmrFreshFree w) m s=⟨s.phase,writeBit s.basis (w 10) false⟩ := by
  let t : State := ⟨s.phase,writeBit s.basis (w 10) false⟩
  have tc : t.basis (w 6)=false ∧ t.basis (w 7)=false ∧ t.basis (w 8)=false ∧ t.basis (w 9)=false := by
    simpa [t,writeBit,hw.eq_iff] using clean
  have hv : (hmrAndAdvance (hmrFreshPrefix w) s.basis) (w 10)=
      ((hmrAndAdvance (hmrFreshPrefix w) s.basis) (w 9) &&
      !(hmrAndAdvance (hmrFreshPrefix w) s.basis) (w 5)) := by
    simpa [hmrFreshPrefix,hmrAndAdvance,HmrAndStage.advance,writeBit,hw.eq_iff,hmrFreshValue] using value
  rw [hmrFreshFree,run_append,run_take,hmrAndSweep_run _ s m (hmrFreshPrefix_ready w hw _ clean),
    run_append,run_take,hmrPolarRelease_run _ _ _ true false (by simp [hw.eq_iff]) _ _ hv]
  change run (hmrAndUnsweep (hmrFreshPrefix w)) _
    ⟨s.phase,writeBit (hmrAndAdvance (hmrFreshPrefix w) s.basis) (w 10) false⟩=_
  rw [←hmrFreshPrefix_keeper w hw]
  exact hmrAndUnsweep_run _ t _ (hmrFreshPrefix_ready w hw _ tc)

theorem hmrFreshValue_zero (w : Fin 11 → Wire) (s : BasisState) :
    hmrFreshValue w s=decide (regValue [w 0,w 1,w 2,w 3,w 4,w 5] s=0) := by
  apply Bool.eq_iff_iff.mpr
  simp [hmrFreshValue,regValue_zero,and_assoc]

theorem hmrFreshFree_counts (w : Fin 11 → Wire) :
    toffoliCount (hmrFreshFree w)=4 ∧ measurementCount (hmrFreshFree w)=5 := by
  simp [hmrFreshFree,hmrFreshPrefix,hmrAndSweep,hmrAndUnsweep,HmrAndStage.compute,
    HmrAndStage.release,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,toffoliCount,measurementCount]

/-- Drop the old unused top-leaf port; the fresh-prefix interface is exactly
 the same source release program, with no fifth work-site requirement. -/
def hmrFreshFromOld (w : Fin 12 → Wire) (i : Fin 11) : Wire :=
  if h : i.val<10 then w ⟨i.val,by omega⟩ else w 11

theorem hmrFreshFree_fromOld (w : Fin 12 → Wire) :
    hmrFreshFree (hmrFreshFromOld w)=hmrZero6Free w := by rfl

end ECDSAAdd.Arithmetic.Paper935
