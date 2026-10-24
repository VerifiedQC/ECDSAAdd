import ECDSAAdd.Arithmetic.Paper935.HmrZero6Keeper

namespace ECDSAAdd.Arithmetic.Paper935

def hmrZero6Prefix (w : Fin 12 → Wire) : List HmrAndStage :=
  [⟨w 0,w 1,w 6,false,false⟩,⟨w 6,w 2,w 7,true,false⟩,
   ⟨w 7,w 3,w 8,true,false⟩,⟨w 8,w 4,w 9,true,false⟩]

def hmrZero6Free (w : Fin 12 → Wire) : Program :=
  hmrAndSweep (hmrZero6Prefix w) ++
    (hmrPolarRelease (w 9) (w 5) (w 11) true false ++ hmrAndUnsweep (hmrZero6Prefix w))

theorem hmrZero6Prefix_ready (w : Fin 12 → Wire) (hw : Function.Injective w) (s : BasisState)
    (clean : s (w 6)=false ∧ s (w 7)=false ∧ s (w 8)=false ∧ s (w 9)=false) :
    HmrAndReady (hmrZero6Prefix w) s := by
  obtain ⟨h6,h7,h8,h9⟩ := clean
  simp [hmrZero6Prefix,HmrAndReady,HmrAndStage.advance,writeBit,hw.eq_iff,h6,h7,h8,h9]

theorem hmrZero6Prefix_keeper (w : Fin 12 → Wire) (hw : Function.Injective w)
    (s : BasisState) (v : Bool) :
    hmrAndAdvance (hmrZero6Prefix w) (writeBit s (w 11) v)=
      writeBit (hmrAndAdvance (hmrZero6Prefix w) s) (w 11) v := by
  simp [hmrZero6Prefix,hmrAndAdvance,HmrAndStage.advance,writeBit,hw.eq_iff]
  funext q
  by_cases hq : q=w 11
  · subst q; simp [Function.update,hw.eq_iff]
  · simp [Function.update,hq]

/-- Source ztest_free recomputes only the penultimate prefix and measures
its keeper against the final negative literal; it never recomputes the top. -/
theorem hmrZero6Free_run (w : Fin 12 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 6)=false ∧ s.basis (w 7)=false ∧ s.basis (w 8)=false ∧ s.basis (w 9)=false)
    (value : s.basis (w 11)=hmrZero6Value w s.basis) :
    run (hmrZero6Free w) m s=⟨s.phase,writeBit s.basis (w 11) false⟩ := by
  let t : State := ⟨s.phase,writeBit s.basis (w 11) false⟩
  have tc : t.basis (w 6)=false ∧ t.basis (w 7)=false ∧ t.basis (w 8)=false ∧ t.basis (w 9)=false := by
    simpa [t,writeBit,hw.eq_iff] using clean
  have hv : (hmrAndAdvance (hmrZero6Prefix w) s.basis) (w 11)=
      ((hmrAndAdvance (hmrZero6Prefix w) s.basis) (w 9) &&
      !(hmrAndAdvance (hmrZero6Prefix w) s.basis) (w 5)) := by
    simpa [hmrZero6Prefix,hmrAndAdvance,HmrAndStage.advance,writeBit,hw.eq_iff,hmrZero6Value] using value
  rw [hmrZero6Free,run_append,run_take,hmrAndSweep_run _ s m (hmrZero6Prefix_ready w hw _ clean),
    run_append,run_take,hmrPolarRelease_run _ _ _ true false (by simp [hw.eq_iff]) _ _ hv]
  change run (hmrAndUnsweep (hmrZero6Prefix w)) _
    ⟨s.phase,writeBit (hmrAndAdvance (hmrZero6Prefix w) s.basis) (w 11) false⟩=_
  rw [←hmrZero6Prefix_keeper w hw]
  exact hmrAndUnsweep_run _ t _ (hmrZero6Prefix_ready w hw _ tc)

end ECDSAAdd.Arithmetic.Paper935
