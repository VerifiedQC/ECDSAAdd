import ECDSAAdd.Arithmetic.Paper935.HmrDecoderStrata

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

structure HmrDecoderBindings (p : Int) (st : ZState) (w : Fin 19 → Wire)
    (s : BasisState) (enabled : Bool) : Prop where
  negative : enabled=true → st.z<0
  j2 : s (w 0)=(enabled && decide (padicValInt 2 (zStep st).fv=2))
  j3 : s (w 1)=(enabled && decide (padicValInt 2 (zStep st).fv=3))
  j4 : s (w 2)=(enabled && decide (padicValInt 2 (zStep st).fv=4))
  inputs2 : enabled=true → padicValInt 2 (zStep st).fv=2 →
    s (w 6)=decide (bitk (zStep st).gv 1=1) ∧ s (w 9)=decide (bitk (zStep st).fv 3=1)
  inputs3 : enabled=true → padicValInt 2 (zStep st).fv=3 → HmrDepth3Binding p st w s
  inputs4 : enabled=true → padicValInt 2 (zStep st).fv=4 → HmrDepth4Binding p st w s

/-- R6's actual retained-cache computation yields the mathematical shallow
contribution on every stratum; caches are kept for source R12 retirement. -/
theorem HmrDecoderBindings.compute (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w) (s : State) (m : List Bool)
    (enabled : Bool) (bindings : HmrDecoderBindings p st w s.basis enabled)
    (predictionClean : s.basis (w 13)=false)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    let out := run (hmrDecoderCompute w) m s
    out.phase=s.phase ∧ out.basis (w 13)=
      ((enabled && decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1)) := by
  have result := hmrDecoderCompute_run_aliased w geometry s m clean
  have value := hmrDecoderValue_strata p st inv hp w s.basis enabled bindings.negative
    bindings.j2 bindings.j3 bindings.j4 bindings.inputs2 bindings.inputs3 bindings.inputs4
  dsimp only
  rw [result]
  simp only [hmrDecoderComputed,writeBit,Function.update_self,predictionClean,Bool.false_xor,value]
  exact ⟨trivial,trivial⟩

end ECDSAAdd.Arithmetic.Paper935
