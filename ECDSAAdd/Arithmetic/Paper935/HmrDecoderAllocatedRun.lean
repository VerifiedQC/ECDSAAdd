import ECDSAAdd.Arithmetic.Paper935.HmrDecoderAllocation

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrDecoder_outside (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) (output : Wire)
    (owned : output∈A.live) (outside : ∀i,v i≠output) :
    ∀i,hmrAllocatedDecoderPorts v work i≠output := by
  have hc := compileHmrDecoder_contract A B v work h
  have hw := hmrBorrowPorts_contract A B 6 work hc.2.2
  intro i
  unfold hmrAllocatedDecoderPorts
  split
  · exact outside _
  · intro eq; exact hw.2.2 _ (eq.symm ▸ owned)

theorem compileHmrDecoder_copy (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) (output : Wire)
    (owned : output∈A.live) (outside : ∀i,v i≠output)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run (hmrDecoderCopy (hmrAllocatedDecoderPorts v work) output) m s=
      ⟨s.phase,writeBit s.basis output
        (s.basis output ^^ hmrDecoderValue (hmrAllocatedDecoderPorts v work) s.basis)⟩ := by
  have clean := compileHmrDecoder_clean A B v work h s.basis ready
  exact hmrDecoderCopy_run _ (compileHmrDecoder_geometry A B v work h) output
    (compileHmrDecoder_outside A B v work h output owned outside) s m
    (clean 13 (by decide)) ⟨clean 14 (by decide),clean 15 (by decide),clean 16 (by decide),
      clean 17 (by decide),clean 18 (by decide)⟩

theorem compileHmrDecoder_return (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) (output : Wire)
    (owned : output∈A.live) (outside : ∀i,v i≠output)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    B.release work.toFinset
      (run (hmrDecoderCopy (hmrAllocatedDecoderPorts v work) output) m s).basis=some A := by
  rw [compileHmrDecoder_copy A B v work h output owned outside s m ready]
  apply hmrBorrow_return A B 6 work (compileHmrDecoder_contract A B v work h).2.2
  intro q hq hn
  have ne : q≠output := fun eq => hn (eq ▸ owned)
  simpa [writeBit,ne] using ready q hq hn

end ECDSAAdd.Arithmetic.Paper935
