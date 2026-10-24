import ECDSAAdd.Arithmetic.Paper935.HmrShiftArmedValue
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrShiftDown_row (r : WindowRow) (nonempty : r.payload≠[])
    (nd : (r.sign::r.payload).Nodup) (s : State) (m : List Bool)
    (even : r.value s.basis%2=0) :
    r.value (run (hmrShiftDown r.sign r.payload) m s).basis=r.value s.basis/2 := by
  obtain ⟨payload,sign⟩ := r
  cases payload with
  | nil => exact False.elim (nonempty rfl)
  | cons low tail =>
    exact hmrShiftDown_value sign low ((low::tail).getLast (by simp)) tail
      (low::tail).dropLast (List.dropLast_concat_getLast (by simp)).symm nd s m even

theorem hmrShiftUpFree_row (r : WindowRow) (nonempty : r.payload≠[])
    (nd : (r.sign::r.payload).Nodup) (s : State) (m : List Bool)
    (lower : -((2^(r.payload.length-1):Nat):Int) ≤ r.value s.basis)
    (upper : r.value s.basis < ((2^(r.payload.length-1):Nat):Int)) :
    r.value (run (hmrShiftUpFree r.sign r.payload) m s).basis=2*r.value s.basis := by
  obtain ⟨payload,sign⟩ := r
  cases payload with
  | nil => exact False.elim (nonempty rfl)
  | cons low tail =>
    apply hmrShiftUpFree_value sign low ((low::tail).getLast (by simp)) tail
      (low::tail).dropLast (List.dropLast_concat_getLast (by simp)).symm nd s m
    · simpa only [List.length_dropLast] using lower
    · simpa only [List.length_dropLast] using upper

theorem hmrShiftUpArmed_row (r : WindowRow) (frozen : Wire) (nonempty : r.payload≠[])
    (nd : (frozen::r.sign::r.payload).Nodup) (s : State) (m : List Bool)
    (lower : s.basis frozen=false → -((2^(r.payload.length-1):Nat):Int) ≤ r.value s.basis)
    (upper : s.basis frozen=false → r.value s.basis < ((2^(r.payload.length-1):Nat):Int)) :
    r.value (run (hmrShiftUpArmed frozen r.sign r.payload) m s).basis=
      if s.basis frozen then r.value s.basis else 2*r.value s.basis := by
  obtain ⟨payload,sign⟩ := r
  cases payload with
  | nil => exact False.elim (nonempty rfl)
  | cons low tail =>
    apply hmrShiftUpArmed_value frozen sign low ((low::tail).getLast (by simp)) tail
      (low::tail).dropLast (List.dropLast_concat_getLast (by simp)).symm nd s m
    · simpa only [List.length_dropLast] using lower
    · simpa only [List.length_dropLast] using upper

end ECDSAAdd.Arithmetic.Paper935
