import ECDSAAdd.Arithmetic.Addition.MeasuredMaskedAdder
import ECDSAAdd.Arithmetic.Addition.StatementSpecs
import ECDSAAdd.Framework.CertifiedTranslation

namespace ECDSAAdd.Arithmetic

/-- The controlled arithmetic statement preserves the target when its control is zero. -/
theorem montMaskedAdd_step_spec (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length=t.length)
    (ht : t.length=y.length) (hc : carry.length+1=y.length) (C : Bool) (S Y : Nat) :
    {{ c=C, src=S, t=0, y=Y, cin=false, carry=0 }} measuredMaskedAddInPlace c src t y carry cin
    {{ c=C, src=S, t=0, y=(if C then (Y+S)%2^y.length else Y), cin=false, carry=0 }} := by
  intro s m h
  have hY : Y<2^y.length := by
    simpa only [show regValue y s.basis=Y from h.1.1.2] using regValue_lt y s.basis
  have result := measuredMaskedAddInPlace_spec c cin src t y carry hnd hs ht hc C S Y s m h
  cases C <;> simpa [Holds.holds,Nat.mod_eq_of_lt hY] using result

theorem montMaskedSub_step_spec (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length=t.length)
    (ht : t.length=y.length) (hc : carry.length+1=y.length) (C : Bool) (S Y : Nat) :
    {{ c=C, src=S, t=0, y=Y, cin=false, carry=0 }} measuredMaskedSubInPlace c src t y carry cin
    {{ c=C, src=S, t=0, y=(if C then (Y+2^y.length-S%2^y.length)%2^y.length else Y), cin=false, carry=0 }} := by
  intro s m h
  have hY : Y<2^y.length := by
    simpa only [show regValue y s.basis=Y from h.1.1.2] using regValue_lt y s.basis
  have hS : S<2^y.length := by
    simpa only [hs,ht,show regValue src s.basis=S from h.1.1.1.1.2] using regValue_lt src s.basis
  have result := measuredMaskedSubInPlace_spec c cin src t y carry hnd hs ht hc C S Y s m h
  cases C <;> simpa [Holds.holds,Nat.mod_eq_of_lt hY,Nat.mod_eq_of_lt hS] using result

/-- Constant preparation and clearing are XOR circuits with different input requirements. -/
theorem montConstantPrepare_spec (r : List Wire) (K : Nat) (hnd : r.Nodup) (hK : K<2^r.length) :
    {{ r=0 }} xorConstant r K {{ r=K }} := by
  simpa only [Nat.zero_xor] using xorConstant_spec r hnd K 0 hK

theorem montConstantRestore_spec (r : List Wire) (K : Nat) (hnd : r.Nodup) (hK : K<2^r.length) :
    {{ r=K }} xorConstant r K {{ r=0 }} := by
  simpa only [Nat.xor_self] using xorConstant_spec r hnd K K hK

end ECDSAAdd.Arithmetic
