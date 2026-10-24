import ECDSAAdd.Arithmetic.Paper935.HmrDecoderErase

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrDecoderComputed_write (w : Fin 19 → Wire) (output : Wire)
    (outside : ∀i,w i≠output) (s : BasisState) (value : Bool) :
    hmrDecoderComputed w (writeBit s output value)=writeBit (hmrDecoderComputed w s) output value := by
  simp only [hmrDecoderComputed,hmrDecoderValue,writeBit,Function.update_of_ne (outside _)]
  funext q
  by_cases hq : q=output
  · subst q
    simp [Function.update,fun i => Ne.symm (outside i)]
  · simp [Function.update,hq]

def hmrDecoderCopy (w : Fin 19 → Wire) (output : Wire) : Program :=
  hmrDecoderCompute w ++ ([.CX (w 13) output] ++ hmrDecoderErase w)

/-- The source prediction is copied to an external branch wire, then its
own measurement and the five cached-leaf measurements restore all scratch. -/
theorem hmrDecoderCopy_run (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (output : Wire) (outside : ∀i,w i≠output) (s : State) (m : List Bool)
    (predZero : s.basis (w 13)=false)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderCopy w output) m s=
      ⟨s.phase,writeBit s.basis output (s.basis output ^^ hmrDecoderValue w s.basis)⟩ := by
  let value := s.basis output ^^ hmrDecoderValue w s.basis
  let t : State := ⟨s.phase,writeBit s.basis output value⟩
  have copied (tape : List Bool) :
      run [.CX (w 13) output] tape ⟨s.phase,hmrDecoderComputed w s.basis⟩=
        ⟨t.phase,hmrDecoderComputed w t.basis⟩ := by
    change run [.CX (w 13) output] tape ⟨s.phase,hmrDecoderComputed w s.basis⟩=
      ⟨s.phase,hmrDecoderComputed w (writeBit s.basis output value)⟩
    rw [hmrDecoderComputed_write w output outside]
    simp [run,hmrDecoderComputed,writeBit,predZero,fun i => Ne.symm (outside i),value]
  rw [hmrDecoderCopy,run_append,run_take,hmrDecoderCompute_run_aliased w geometry s m clean,
    run_append,run_take,copied]
  have tz : t.basis (w 13)=false := by simpa [t,writeBit,outside] using predZero
  have tc : t.basis (w 14)=false ∧ t.basis (w 15)=false ∧ t.basis (w 16)=false ∧
      t.basis (w 17)=false ∧ t.basis (w 18)=false := by simpa [t,writeBit,outside] using clean
  exact hmrDecoderErase_run w geometry t _ tz tc

theorem hmrDecoderCopy_counts (w : Fin 19 → Wire) (output : Wire) :
    toffoliCount (hmrDecoderCopy w output)=17 ∧ measurementCount (hmrDecoderCopy w output)=6 := by
  have h := hmrDecoder_full_counts w
  simpa only [hmrDecoderCopy,toffoliCount_append,measurementCount_append,
    toffoliCount,measurementCount,Nat.zero_add] using h

end ECDSAAdd.Arithmetic.Paper935
