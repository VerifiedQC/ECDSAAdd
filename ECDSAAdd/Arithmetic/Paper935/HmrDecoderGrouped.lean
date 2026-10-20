import Mathlib.Algebra.Ring.BooleanRing
import ECDSAAdd.Arithmetic.Paper935.HmrCachedDecoderRelease
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderBranch

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrDecoderValue_grouped (w : Fin 19 → Wire) (s : BasisState) :
    hmrDecoderValue w s=
      ((s (w 0) && (s (w 6) ^^ s (w 9))) ^^
       (s (w 1) && (s (w 10) ^^ (!s (w 4) && s (w 7)))) ^^
       (s (w 2) && (((!s (w 3) ^^ s (w 4)) && (s (w 10) ^^ s (w 11))) ^^
         s (w 12) ^^ ((!s (w 3) ^^ !s (w 4) ^^ !s (w 5)) && s (w 8))))) := by
  have hx (a b : Bool) : (a ^^ b)=a+b := rfl
  have ha (a b : Bool) : (a && b)=a*b := rfl
  simp only [hmrDecoderValue,hx,ha]
  ring

end ECDSAAdd.Arithmetic.Paper935
