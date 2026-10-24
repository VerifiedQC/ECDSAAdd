import ECDSAAdd.Arithmetic.Paper935.HmrDecoderAliasedRelease
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderSelected

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps
open ECDSAAdd.Divsteps.SmallDecoders

/-- The actual cached gate sequence computes the old branch on the selected
stratum; physical residue and selector bindings remain explicit. -/
theorem hmrDecoder_depth3_run (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (p : Int) (st : ZState) (inv : Inv p st)
    (hp : p%2=1) (hz : st.z<0) (hd : padicValInt 2 (zStep st).fv=3)
    (f q : Fin 4) (gv : Fin 8) (hpmod : (p : ZMod 8)=7)
    (hf : ((zStep st).f : ZMod 8)=(oddValue f : ZMod 8))
    (hq : (((zStep st).fv/8 : Int) : ZMod 8)=(oddValue q : ZMod 8))
    (hgv : ((zStep st).gv : ZMod 8)=(gv.val : ZMod 8))
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false)
    (inputs : HmrDepth3Inputs w s.basis (oddValue f) gv.val (oddValue q)) :
    run (hmrDecoderCompute w ++ hmrDecoderRelease w) m s=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ decide (bbit st=1))⟩ := by
  rw [hmrDecoder_run_aliased w geometry s m clean,hmrDecoderValue_depth3 w s.basis _ _ _ inputs,
    ←hmrForm3_branch p st inv hp hz hd f q gv hpmod hf hq hgv]

/-- The actual cached gate sequence computes the old branch on the selected
stratum; physical residue and selector bindings remain explicit. -/
theorem hmrDecoder_depth4_run (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (p : Int) (st : ZState) (inv : Inv p st)
    (hp : p%2=1) (hz : st.z<0) (hd : padicValInt 2 (zStep st).fv=4)
    (f q : Fin 8) (gv : Fin 16) (hpmod : (p : ZMod 16)=15)
    (hf : ((zStep st).f : ZMod 16)=(oddValue f : ZMod 16))
    (hq : (((zStep st).fv/16 : Int) : ZMod 16)=(oddValue q : ZMod 16))
    (hgv : ((zStep st).gv : ZMod 16)=(gv.val : ZMod 16))
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false)
    (inputs : HmrDepth4Inputs w s.basis (oddValue f) gv.val (oddValue q)) :
    run (hmrDecoderCompute w ++ hmrDecoderRelease w) m s=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ decide (bbit st=1))⟩ := by
  rw [hmrDecoder_run_aliased w geometry s m clean,hmrDecoderValue_depth4 w s.basis _ _ _ inputs,
    ←hmrForm4_branch p st inv hp hz hd f q gv hpmod hf hq hgv]


theorem hmrDecoder_depth2_run (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (p : Int) (st : ZState) (inv : Inv p st)
    (hp : p%2=1) (hz : st.z<0) (hd : padicValInt 2 (zStep st).fv=2)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false)
    (selected : s.basis (w 0)=true ∧ s.basis (w 1)=false ∧ s.basis (w 2)=false)
    (hg : s.basis (w 6)=decide (bitk (zStep st).gv 1=1))
    (hv : s.basis (w 9)=decide (bitk (zStep st).fv 3=1)) :
    run (hmrDecoderCompute w ++ hmrDecoderRelease w) m s=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ decide (bbit st=1))⟩ := by
  have left : bitk (zStep st).gv 1=0 ∨ bitk (zStep st).gv 1=1 := by
    unfold bitk
    norm_num
    omega
  have right : bitk (zStep st).fv 3=0 ∨ bitk (zStep st).fv 3=1 := by
    unfold bitk
    norm_num
    omega
  have branch : (s.basis (w 6) ^^ s.basis (w 9))=decide (bbit st=1) := by
    rw [hg,hv,j2_law inv hp hz hd]
    rcases left with hl|hl <;> rcases right with hr|hr <;> simp [hl,hr]
  obtain ⟨h0,h1,h2⟩ := selected
  rw [hmrDecoder_run_aliased w geometry s m clean,hmrDecoderValue_grouped]
  simp only [h0,h1,h2,Bool.true_and,Bool.false_and,Bool.xor_false,branch]

end ECDSAAdd.Arithmetic.Paper935
