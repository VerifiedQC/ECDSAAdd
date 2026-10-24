import ECDSAAdd.Arithmetic.Paper935.HmrAndChain

namespace ECDSAAdd.Arithmetic.Paper935
def hmrZero6Chain (w : Fin 12 → Wire) : List HmrAndStage :=
  [⟨w 0,w 1,w 6,false,false⟩,⟨w 6,w 2,w 7,true,false⟩,
   ⟨w 7,w 3,w 8,true,false⟩,⟨w 8,w 4,w 9,true,false⟩,⟨w 9,w 5,w 10,true,false⟩]

def hmrZero6Value (w : Fin 12 → Wire) (s : BasisState) : Bool :=
  !s (w 0) && !s (w 1) && !s (w 2) && !s (w 3) && !s (w 4) && !s (w 5)

def hmrZero6Advanced (w : Fin 12 → Wire) (s : BasisState) : BasisState :=
  writeBit (writeBit (writeBit (writeBit (writeBit s
    (w 6) (!s (w 0) && !s (w 1)))
    (w 7) (!s (w 0) && !s (w 1) && !s (w 2)))
    (w 8) (!s (w 0) && !s (w 1) && !s (w 2) && !s (w 3)))
    (w 9) (!s (w 0) && !s (w 1) && !s (w 2) && !s (w 3) && !s (w 4)))
    (w 10) (hmrZero6Value w s)

theorem hmrZero6_ready (w : Fin 12 → Wire) (hw : Function.Injective w) (s : BasisState)
    (clean : s (w 6)=false ∧ s (w 7)=false ∧ s (w 8)=false ∧ s (w 9)=false ∧ s (w 10)=false) :
    HmrAndReady (hmrZero6Chain w) s := by
  obtain ⟨h6,h7,h8,h9,h10⟩ := clean
  simp [hmrZero6Chain,HmrAndReady,HmrAndStage.advance,writeBit,hw.eq_iff,h6,h7,h8,h9,h10]

theorem hmrZero6_advance (w : Fin 12 → Wire) (hw : Function.Injective w) (s : BasisState) :
    hmrAndAdvance (hmrZero6Chain w) s=hmrZero6Advanced w s := by
  simp [hmrZero6Chain,hmrAndAdvance,HmrAndStage.advance,hmrZero6Advanced,hmrZero6Value,writeBit,hw.eq_iff]

theorem hmrZero6_value (w : Fin 12 → Wire) (s : BasisState) :
    hmrZero6Value w s=decide (regValue [w 0,w 1,w 2,w 3,w 4,w 5] s=0) := by
  apply Bool.eq_iff_iff.mpr
  simp [hmrZero6Value,regValue_zero, and_assoc]

end ECDSAAdd.Arithmetic.Paper935
