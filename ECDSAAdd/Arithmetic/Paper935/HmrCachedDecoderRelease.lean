import ECDSAAdd.Arithmetic.Paper935.HmrCachedDecoder

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrDecoderRelease_run (w : Fin 19 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderRelease w) m ⟨s.phase,hmrDecoderComputed w s.basis⟩=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ hmrDecoderValue w s.basis)⟩ := by
  simp only [hmrDecoderRelease,run_append,run_take]
  rw [hmrLiteralRelease_run (w 2) (w 5) (w 18) false (by simp [hw.eq_iff]) _ _
    (by simp [hmrDecoderComputed,writeBit,hw.eq_iff])]
  rw [hmrLiteralRelease_run (w 2) (w 4) (w 17) false (by simp [hw.eq_iff]) _ _
    (by simp [hmrDecoderComputed,writeBit,hw.eq_iff])]
  rw [hmrLiteralRelease_run (w 2) (w 4) (w 16) true (by simp [hw.eq_iff]) _ _
    (by simp [hmrDecoderComputed,writeBit,hw.eq_iff])]
  rw [hmrLiteralRelease_run (w 2) (w 3) (w 15) false (by simp [hw.eq_iff]) _ _
    (by simp [hmrDecoderComputed,writeBit,hw.eq_iff])]
  rw [hmrLiteralRelease_run (w 1) (w 4) (w 14) false (by simp [hw.eq_iff]) _ _
    (by simp [hmrDecoderComputed,writeBit,hw.eq_iff])]
  obtain ⟨h14,h15,h16,h17,h18⟩ := clean
  congr 1
  funext q
  simp only [hmrDecoderComputed,writeBit,Function.update_apply]
  split_ifs <;> simp_all [hw.eq_iff]

theorem hmrDecoder_run (w : Fin 19 → Wire) (hw : Function.Injective w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderCompute w ++ hmrDecoderRelease w) m s=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ hmrDecoderValue w s.basis)⟩ := by
  rw [run_append,run_take,hmrDecoderCompute_run w hw s m clean]
  exact hmrDecoderRelease_run w hw s _ clean

end ECDSAAdd.Arithmetic.Paper935
