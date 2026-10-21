import ECDSAAdd.Arithmetic.Paper935.HmrRowBits
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderAllocation

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

def hmrRowDecoderInputs (j2 j3 j4 : Wire) (f gv fv : List Wire) (fs gvs fvs : Wire) : Fin 13 → Wire :=
  ![j2,j3,j4,hmrRowPos f fs 1,hmrRowPos f fs 2,hmrRowPos f fs 3,
    hmrRowPos gv gvs 1,hmrRowPos gv gvs 2,hmrRowPos gv gvs 3,
    hmrRowPos fv fvs 3,hmrRowPos fv fvs 5,hmrRowPos fv fvs 6,hmrRowPos fv fvs 7]

theorem hmrRowDecoder_bits (j2 j3 j4 : Wire) (f gv fv : List Wire) (fs gvs fvs : Wire)
    (work : List Wire) (s : BasisState) (st : ZState)
    (hf : signedRegValue (f++[fs]) s=(zStep st).f)
    (hg : signedRegValue (gv++[gvs]) s=(zStep st).gv)
    (hv : signedRegValue (fv++[fvs]) s=(zStep st).fv) :
    HmrDecoderBits st (hmrAllocatedDecoderPorts (hmrRowDecoderInputs j2 j3 j4 f gv fv fs gvs fvs) work) s := by
  have fb := fun k hk => hmrRowPos_bit f fs s k hk
  have gb := fun k hk => hmrRowPos_bit gv gvs s k hk
  have vb := fun k hk => hmrRowPos_bit fv fvs s k hk
  simp only [hf] at fb
  simp only [hg] at gb
  simp only [hv] at vb
  constructor
  · exact fb 1 (by decide)
  · exact fb 2 (by decide)
  · exact fb 3 (by decide)
  · exact gb 1 (by decide)
  · exact gb 2 (by decide)
  · exact gb 3 (by decide)
  · exact vb 3 (by decide)
  · exact vb 5 (by decide)
  · exact vb 6 (by decide)
  · exact vb 7 (by decide)

/-- Actual allocation, physical signed rows and selector values suffice for
R6's mathematical prediction. No bit-level or finite-residue witness is assumed. -/
theorem compileHmrRowDecoder_run (A B : Arena) (j2 j3 j4 : Wire)
    (f gv fv : List Wire) (fs gvs fvs : Wire) (work : List Wire)
    (h : compileHmrDecoder A (hmrRowDecoderInputs j2 j3 j4 f gv fv fs gvs fvs)=some (B,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hp8 : (p : ZMod 8)=7) (hp16 : (p : ZMod 16)=15)
    (enabled : Bool)
    (hf : enabled=true → signedRegValue (f++[fs]) s.basis=(zStep st).f)
    (hg : enabled=true → signedRegValue (gv++[gvs]) s.basis=(zStep st).gv)
    (hv : enabled=true → signedRegValue (fv++[fvs]) s.basis=(zStep st).fv)
    (negative : enabled=true → st.z<0)
    (hj2 : s.basis j2=(enabled && decide (padicValInt 2 (zStep st).fv=2)))
    (hj3 : s.basis j3=(enabled && decide (padicValInt 2 (zStep st).fv=3)))
    (hj4 : s.basis j4=(enabled && decide (padicValInt 2 (zStep st).fv=4))) :
    let w := hmrAllocatedDecoderPorts (hmrRowDecoderInputs j2 j3 j4 f gv fv fs gvs fvs) work
    let out := run (hmrDecoderCompute w) m s
    out.phase=s.phase ∧ out.basis (w 13)=
      ((enabled && decide (2≤padicValInt 2 (zStep st).fv ∧ padicValInt 2 (zStep st).fv≤4)) &&
        decide (bbit st=1)) := by
  let v := hmrRowDecoderInputs j2 j3 j4 f gv fv fs gvs fvs
  let w := hmrAllocatedDecoderPorts v work
  have bindings : HmrDecoderBindings p st w s.basis enabled := by
    cases he : enabled with
    | false =>
      rw [he] at hj2 hj3 hj4
      refine ⟨?_,hj2,hj3,hj4,?_,?_,?_⟩
      all_goals intro impossible; contradiction
    | true =>
      rw [he] at hj2 hj3 hj4 negative
      have bits := hmrRowDecoder_bits j2 j3 j4 f gv fv fs gvs fvs work s.basis st
        (hf he) (hg he) (hv he)
      apply bits.bindings p st inv hp hp8 hp16 w s.basis true negative
      · exact hj2
      · exact hj3
      · exact hj4
  have clean := compileHmrDecoder_clean A B v work h s.basis ready
  exact bindings.compute p st inv hp w (compileHmrDecoder_geometry A B v work h) s m enabled
    (clean 13 (by decide)) ⟨clean 14 (by decide),clean 15 (by decide),clean 16 (by decide),
      clean 17 (by decide),clean 18 (by decide)⟩

end ECDSAAdd.Arithmetic.Paper935
