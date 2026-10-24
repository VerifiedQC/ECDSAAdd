import ECDSAAdd.Arithmetic.Paper935.HmrDepth3Bits
import ECDSAAdd.Arithmetic.Paper935.HmrDepth4Bits
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderBoundRun

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Direct coefficient-bit interface for source decoding. No finite residue
witness or presumed prediction value is an input. -/
structure HmrDecoderBits (st : ZState) (w : Fin 19 → Wire) (s : BasisState) : Prop where
  f1 : s (w 3)=decide (bitk (zStep st).f 1=1)
  f2 : s (w 4)=decide (bitk (zStep st).f 2=1)
  f3 : s (w 5)=decide (bitk (zStep st).f 3=1)
  gv1 : s (w 6)=decide (bitk (zStep st).gv 1=1)
  gv2 : s (w 7)=decide (bitk (zStep st).gv 2=1)
  gv3 : s (w 8)=decide (bitk (zStep st).gv 3=1)
  fv3 : s (w 9)=decide (bitk (zStep st).fv 3=1)
  fv5 : s (w 10)=decide (bitk (zStep st).fv 5=1)
  fv6 : s (w 11)=decide (bitk (zStep st).fv 6=1)
  fv7 : s (w 12)=decide (bitk (zStep st).fv 7=1)

theorem HmrDecoderBits.bindings (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hp8 : (p : ZMod 8)=7) (hp16 : (p : ZMod 16)=15)
    (w : Fin 19 → Wire) (s : BasisState) (bits : HmrDecoderBits st w s) (enabled : Bool)
    (negative : enabled=true → st.z<0)
    (j2 : s (w 0)=(enabled && decide (padicValInt 2 (zStep st).fv=2)))
    (j3 : s (w 1)=(enabled && decide (padicValInt 2 (zStep st).fv=3)))
    (j4 : s (w 2)=(enabled && decide (padicValInt 2 (zStep st).fv=4))) :
    HmrDecoderBindings p st w s enabled := by
  refine ⟨negative,j2,j3,j4,?_,?_,?_⟩
  · intro _ _
    exact ⟨bits.gv1,bits.fv3⟩
  · intro he hd
    apply hmrDepth3Binding_of_bits p st inv hp hd hp8 w s
    · simp [j2,j3,j4,he,hd]
    · exact ⟨bits.f2,bits.gv2,bits.fv5⟩
  · intro he hd
    apply hmrDepth4Binding_of_bits p st inv hp hd hp16 w s
    · simp [j2,j3,j4,he,hd]
    · exact ⟨bits.f1,bits.f2,bits.f3,bits.gv3,bits.fv5,bits.fv6,bits.fv7⟩

end ECDSAAdd.Arithmetic.Paper935
