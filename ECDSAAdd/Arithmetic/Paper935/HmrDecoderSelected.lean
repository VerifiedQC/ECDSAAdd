import ECDSAAdd.Arithmetic.Paper935.HmrDecoderGrouped

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps.SmallDecoders

/-- Explicit bit-to-residue bindings for the selected depth-three stratum. -/
def HmrDepth3Inputs (w : Fin 19 → Wire) (s : BasisState) (f gv q : Nat) : Prop :=
  s (w 0)=false ∧ s (w 1)=true ∧ s (w 2)=false ∧
  s (w 4)=bit f 2 ∧ s (w 7)=bit gv 2 ∧ s (w 10)=bit q 2

def HmrDepth4Inputs (w : Fin 19 → Wire) (s : BasisState) (f gv q : Nat) : Prop :=
  s (w 0)=false ∧ s (w 1)=false ∧ s (w 2)=true ∧
  s (w 3)=bit f 1 ∧ s (w 4)=bit f 2 ∧ s (w 5)=bit f 3 ∧
  s (w 8)=bit gv 3 ∧ s (w 10)=bit q 1 ∧ s (w 11)=bit q 2 ∧ s (w 12)=bit q 3

theorem hmrDecoderValue_depth3 (w : Fin 19 → Wire) (s : BasisState) (f gv q : Nat)
    (inputs : HmrDepth3Inputs w s f gv q) : hmrDecoderValue w s=hmrForm3 f gv q := by
  obtain ⟨h0,h1,h2,h4,h7,h10⟩ := inputs
  simp [hmrDecoderValue_grouped,h0,h1,h2,h4,h7,h10,hmrForm3]

theorem hmrDecoderValue_depth4 (w : Fin 19 → Wire) (s : BasisState) (f gv q : Nat)
    (inputs : HmrDepth4Inputs w s f gv q) : hmrDecoderValue w s=hmrForm4 f gv q := by
  obtain ⟨h0,h1,h2,h3,h4,h5,h8,h10,h11,h12⟩ := inputs
  simp [hmrDecoderValue_grouped,h0,h1,h2,h3,h4,h5,h8,h10,h11,h12,hmrForm4]

end ECDSAAdd.Arithmetic.Paper935
