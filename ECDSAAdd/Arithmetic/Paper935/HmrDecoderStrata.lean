import ECDSAAdd.Arithmetic.Paper935.HmrDecoderSelectedRun

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps
open ECDSAAdd.Divsteps.SmallDecoders

/-- Conditional source residue bindings. These describe input bits and
integer residues, not a presumed decoder output equation. -/
def HmrDepth3Binding (p : Int) (st : ZState) (w : Fin 19 → Wire) (s : BasisState) : Prop :=
  ∃f q : Fin 4,∃gv : Fin 8,
    ((zStep st).f : ZMod 8)=(oddValue f : ZMod 8) ∧
    (((zStep st).fv/8 : Int) : ZMod 8)=(oddValue q : ZMod 8) ∧
    ((zStep st).gv : ZMod 8)=(gv.val : ZMod 8) ∧
    HmrDepth3Inputs w s (oddValue f) gv.val (oddValue q) ∧ (p : ZMod 8)=7

def HmrDepth4Binding (p : Int) (st : ZState) (w : Fin 19 → Wire) (s : BasisState) : Prop :=
  ∃f q : Fin 8,∃gv : Fin 16,
    ((zStep st).f : ZMod 16)=(oddValue f : ZMod 16) ∧
    (((zStep st).fv/16 : Int) : ZMod 16)=(oddValue q : ZMod 16) ∧
    ((zStep st).gv : ZMod 16)=(gv.val : ZMod 16) ∧
    HmrDepth4Inputs w s (oddValue f) gv.val (oddValue q) ∧ (p : ZMod 16)=15

theorem hmrDecoderValue_strata (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (w : Fin 19 → Wire) (s : BasisState) (enabled : Bool)
    (negative : enabled=true → st.z<0)
    (j2 : s (w 0)=(enabled && decide (padicValInt 2 (zStep st).fv=2)))
    (j3 : s (w 1)=(enabled && decide (padicValInt 2 (zStep st).fv=3)))
    (j4 : s (w 2)=(enabled && decide (padicValInt 2 (zStep st).fv=4)))
    (inputs2 : enabled=true → padicValInt 2 (zStep st).fv=2 →
      s (w 6)=decide (bitk (zStep st).gv 1=1) ∧ s (w 9)=decide (bitk (zStep st).fv 3=1))
    (inputs3 : enabled=true → padicValInt 2 (zStep st).fv=3 → HmrDepth3Binding p st w s)
    (inputs4 : enabled=true → padicValInt 2 (zStep st).fv=4 → HmrDepth4Binding p st w s) :
    hmrDecoderValue w s=((enabled &&
      decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) && decide (bbit st=1)) := by
  cases he : enabled with
  | false => simp [hmrDecoderValue_grouped,j2,j3,j4,he]
  | true =>
    have hz := negative he
    by_cases h2 : padicValInt 2 (zStep st).fv=2
    · obtain ⟨hg,hv⟩ := inputs2 he h2
      have left : bitk (zStep st).gv 1=0 ∨ bitk (zStep st).gv 1=1 := by unfold bitk; norm_num; omega
      have right : bitk (zStep st).fv 3=0 ∨ bitk (zStep st).fv 3=1 := by unfold bitk; norm_num; omega
      have branch : (s (w 6) ^^ s (w 9))=decide (bbit st=1) := by
        rw [hg,hv,j2_law inv hp hz h2]
        rcases left with hl|hl <;> rcases right with hr|hr <;> simp [hl,hr]
      simp [hmrDecoderValue_grouped,j2,j3,j4,he,h2,branch]
    · by_cases h3 : padicValInt 2 (zStep st).fv=3
      · obtain ⟨f,q,gv,hf,hq,hgv,inputs,hpm⟩ := inputs3 he h3
        rw [hmrDecoderValue_depth3 w s _ _ _ inputs,←hmrForm3_branch p st inv hp hz h3 f q gv hpm hf hq hgv]
        simp [h3]
      · by_cases h4 : padicValInt 2 (zStep st).fv=4
        · obtain ⟨f,q,gv,hf,hq,hgv,inputs,hpm⟩ := inputs4 he h4
          rw [hmrDecoderValue_depth4 w s _ _ _ inputs,←hmrForm4_branch p st inv hp hz h4 f q gv hpm hf hq hgv]
          simp [h4]
        · have outside : ¬(2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4) := by omega
          simp [hmrDecoderValue_grouped,j2,j3,j4,he,h2,h3,h4,outside]

end ECDSAAdd.Arithmetic.Paper935
