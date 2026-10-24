import ECDSAAdd.Arithmetic.Paper935.HmrDecoderCopy

namespace ECDSAAdd.Arithmetic.Paper935

/-- R12 retires the retained prediction/cache after R7 has changed an
external branch and R11 has changed phase. Neither change is undone. -/
theorem hmrDecoderErase_after_write (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (output : Wire) (outside : ∀i,w i≠output) (s : BasisState) (phase value : Bool) (m : List Bool)
    (predZero : s (w 13)=false)
    (clean : s (w 14)=false ∧ s (w 15)=false ∧ s (w 16)=false ∧ s (w 17)=false ∧ s (w 18)=false) :
    run (hmrDecoderErase w) m ⟨phase,writeBit (hmrDecoderComputed w s) output value⟩=
      ⟨phase,writeBit s output value⟩ := by
  let t : State := ⟨phase,writeBit s output value⟩
  have tz : t.basis (w 13)=false := by simpa [t,writeBit,outside] using predZero
  have tc : t.basis (w 14)=false ∧ t.basis (w 15)=false ∧ t.basis (w 16)=false ∧
      t.basis (w 17)=false ∧ t.basis (w 18)=false := by simpa [t,writeBit,outside] using clean
  rw [←hmrDecoderComputed_write w output outside]
  exact hmrDecoderErase_run w geometry t m tz tc

end ECDSAAdd.Arithmetic.Paper935
