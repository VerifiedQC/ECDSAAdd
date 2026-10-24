import Mathlib.Algebra.Ring.BooleanRing
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderAliasedRelease

namespace ECDSAAdd.Arithmetic.Paper935

/-- The exact anchor order returned by the production cached decoder. -/
def hmrDecoderAnchors (w : Fin 19 → Wire) : List Correction :=
  [.CZ (w 0) (w 6),.CZ (w 0) (w 9),.CZ (w 1) (w 10),
   .CZ (w 14) (w 7),.CZ (w 15) (w 10),.CZ (w 16) (w 10),
   .CZ (w 15) (w 11),.CZ (w 16) (w 11),.CZ (w 2) (w 12),
   .CZ (w 15) (w 8),.CZ (w 17) (w 8),.CZ (w 18) (w 8)]

def hmrDecoderAnchorValue (w : Fin 19 → Wire) (s : BasisState) : Bool :=
  (s (w 0) && s (w 6)) ^^ (s (w 0) && s (w 9)) ^^ (s (w 1) && s (w 10)) ^^
  (s (w 14) && s (w 7)) ^^ (s (w 15) && s (w 10)) ^^ (s (w 16) && s (w 10)) ^^
  (s (w 15) && s (w 11)) ^^ (s (w 16) && s (w 11)) ^^ (s (w 2) && s (w 12)) ^^
  (s (w 15) && s (w 8)) ^^ (s (w 17) && s (w 8)) ^^ (s (w 18) && s (w 8))

/-- engine.py:1545–1553: measure prediction and apply all saved anchors
before freeing any cached leaf. -/
def hmrPredictionDeath (w : Fin 19 → Wire) : Program :=
  [.measureX (w 13) [] (hmrDecoderAnchors w)]

theorem hmrPredictionDeath_run (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : State) (m : List Bool) (value : s.basis (w 13)=hmrDecoderAnchorValue w s.basis) :
    run (hmrPredictionDeath w) m s=⟨s.phase,writeBit s.basis (w 13) false⟩ := by
  have eqs := geometry
  unfold HmrDecoderGeometry at eqs
  cases hm : m.head?.getD false <;>
    simp [hmrPredictionDeath,hmrDecoderAnchors,run,measureAndCorrect,correct,writeBit,eqs,
      hm,value,hmrDecoderAnchorValue]
  have hx (a b : Bool) : (a != b)=a+b := rfl
  simp only [hx]
  ring_nf
  simp only [show (2 : Bool)=0 from rfl,mul_zero,add_zero]

theorem hmrDecoderComputed_prediction (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : BasisState) (zero : s (w 13)=false) :
    hmrDecoderComputed w s (w 13)=hmrDecoderAnchorValue w (hmrDecoderComputed w s) := by
  have eqs := geometry
  unfold HmrDecoderGeometry at eqs
  simp [hmrDecoderComputed,hmrDecoderAnchorValue,hmrDecoderValue,writeBit,eqs,zero]

theorem hmrPredictionDeath_counts (w : Fin 19 → Wire) :
    toffoliCount (hmrPredictionDeath w)=0 ∧ measurementCount (hmrPredictionDeath w)=1 := ⟨rfl,rfl⟩

end ECDSAAdd.Arithmetic.Paper935
