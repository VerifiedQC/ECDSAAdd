import ECDSAAdd.Arithmetic.ModularInverse.RoundFrame
import ECDSAAdd.Framework.CertifiedTranslation

namespace ECDSAAdd.Arithmetic

/-- The false branch preserves the target; the true branch uses its finite-width sum. -/
theorem roundAdd_step (c cin : Wire) (src mask target carry : List Wire)
    (hnd : (c :: cin :: (src ++ mask ++ target ++ carry)).Nodup)
    (hs : src.length=mask.length) (ht : mask.length=target.length)
    (hc : carry.length+1=target.length) (C : Bool) (S Y : Nat) :
    {{ c=C,src=S,mask=0,target=Y,cin=false,carry=0 }}
      measuredMaskedAddInPlace c src mask target carry cin
    {{ c=C,src=S,mask=0,target=(if C then (Y+S)%2^target.length else Y),cin=false,carry=0 }} := by
  intro s m h
  have hY : Y<2^target.length := by
    simpa only [show regValue target s.basis=Y from h.1.1.2] using regValue_lt target s.basis
  have result := measuredMaskedAddInPlace_spec c cin src mask target carry hnd hs ht hc C S Y s m h
  cases C <;> simpa [Holds.holds,Nat.mod_eq_of_lt hY] using result

theorem roundSub_step (c cin : Wire) (src mask target carry : List Wire)
    (hnd : (c :: cin :: (src ++ mask ++ target ++ carry)).Nodup)
    (hs : src.length=mask.length) (ht : mask.length=target.length)
    (hc : carry.length+1=target.length) (C : Bool) (S Y : Nat) :
    {{ c=C,src=S,mask=0,target=Y,cin=false,carry=0 }}
      measuredMaskedSubInPlace c src mask target carry cin
    {{ c=C,src=S,mask=0,target=(if C then (Y+2^target.length-S%2^target.length)%2^target.length else Y),cin=false,carry=0 }} := by
  intro s m h
  have hY : Y<2^target.length := by
    simpa only [show regValue target s.basis=Y from h.1.1.2] using regValue_lt target s.basis
  have hS : S<2^target.length := by
    simpa only [hs,ht,show regValue src s.basis=S from h.1.1.1.1.2] using regValue_lt src s.basis
  have result := measuredMaskedSubInPlace_spec c cin src mask target carry hnd hs ht hc C S Y s m h
  cases C <;> simpa [Holds.holds,Nat.mod_eq_of_lt hY,Nat.mod_eq_of_lt hS] using result

end ECDSAAdd.Arithmetic
