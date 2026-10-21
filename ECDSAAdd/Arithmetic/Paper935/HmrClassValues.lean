import ECDSAAdd.Arithmetic.Paper935.HmrClassFlags
import ECDSAAdd.Arithmetic.Paper935.PositiveFlag

namespace ECDSAAdd.Arithmetic.Paper935

/-- Bind the source positive-counter flag to a signed register, without
assuming its Boolean output. The register includes its sign as last bit. -/
theorem hmrClass_signed_value (mode : HmrClassMode) (w : Fin 9 → Wire)
    (lo : List Wire) (s : BasisState)
    (zero : s (w 1)=decide (regValue (lo++[w 0]) s=0)) :
    hmrClassValue mode w s = match mode with
      | .early => !s (w 2) && decide (signedRegValue (lo++[w 0]) s≤0)
      | .forwardArmed => !s (w 3) && !s (w 2) && decide (signedRegValue (lo++[w 0]) s≤0)
      | .reverseArmed => !s (w 3) && !s (w 2) && decide (signedRegValue (lo++[w 0]) s≤0) && !s (w 4) := by
  have nonpos : (!decide (0<signedRegValue (lo++[w 0]) s))=decide (signedRegValue (lo++[w 0]) s≤0) := by
    apply Bool.eq_iff_iff.mpr
    simp
  cases mode <;> simp only [hmrClassValue,zero,positivePredicate_value,nonpos]

end ECDSAAdd.Arithmetic.Paper935
