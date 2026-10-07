import ECDSAAdd.Arithmetic.Addition.InPlaceAdder

namespace ECDSAAdd.Arithmetic

/-- Zero incoming carry is a requirement of this interface, not of the general adder. -/
theorem addInPlace_zero_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) :
    {{ x=X, y=Y, cin=false, carry=0 }} addInPlace x y carry cin
    {{ x=X, y=(X+Y)%2^y.length, cin=false, carry=0 }} := by
  simpa only [Bool.toNat_false, Nat.add_zero] using
    addInPlace_spec x y carry cin hnd hx hc X Y false

theorem subInPlace_step_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) :
    {{ x=X, y=Y, cin=false, carry=0 }} subInPlace x y carry cin
    {{ x=X, y=(Y+2^y.length-X%2^y.length)%2^y.length, cin=false, carry=0 }} := by
  intro s m h
  have hX : X < 2^y.length := by
    simpa only [hx, show regValue x s.basis=X from h.1.1.1] using regValue_lt x s.basis
  simpa only [Nat.mod_eq_of_lt hX] using subInPlace_spec x y carry cin hnd hx hc X Y s m h

/-- The disabled branch is the identity, using the target's intrinsic width bound. -/
theorem maskedAddConst_step_spec (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (hK : K < 2^T.length) (C : Bool) (Y : Nat) :
    {{ c=C, T=0, y=Y, cin=false, carry=0 }} maskedAddConst c T y carry cin K
    {{ c=C, T=0, y=(if C then (Y+K)%2^y.length else Y), cin=false, carry=0 }} := by
  intro s m h
  have hY : Y < 2^y.length := by
    simpa only [show regValue y s.basis=Y from h.1.1.2] using regValue_lt y s.basis
  have result := maskedAddConst_spec c cin T y carry hnd hT hc K hK C Y s m h
  cases C <;> simpa [Holds.holds, Nat.mod_eq_of_lt hY] using result

theorem maskedSubConst_step_spec (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (hK : K < 2^T.length) (C : Bool) (Y : Nat) :
    {{ c=C, T=0, y=Y, cin=false, carry=0 }} maskedSubConst c T y carry cin K
    {{ c=C, T=0, y=(if C then (Y+2^y.length-K%2^y.length)%2^y.length else Y), cin=false, carry=0 }} := by
  intro s m h
  have hY : Y < 2^y.length := by
    simpa only [show regValue y s.basis=Y from h.1.1.2] using regValue_lt y s.basis
  have hK' : K < 2^y.length := by simpa only [hT] using hK
  have result := maskedSubConst_spec c cin T y carry hnd hT hc K hK C Y s m h
  cases C <;> simpa [Holds.holds, Nat.mod_eq_of_lt hY, Nat.mod_eq_of_lt hK'] using result

end ECDSAAdd.Arithmetic
