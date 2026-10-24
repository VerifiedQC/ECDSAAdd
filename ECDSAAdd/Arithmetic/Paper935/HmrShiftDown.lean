import ECDSAAdd.Arithmetic.Paper935.HmrPlainRotateValue
import ECDSAAdd.Arithmetic.Paper935.RowResize
import ECDSAAdd.Arithmetic.SignedRecordProgram

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source F6 g shift: rotate payload only, then refill its top from the
separate sign wire. Frozen zero rows are automatically unchanged. -/
def hmrShiftDown (sign : Wire) (payload : List Wire) : Program :=
  match payload with
  | [] => []
  | _::_ => hmrRotateRight payload ++ [.CX sign (payload.getLastD 0)]

theorem hmrShiftDown_value (sign low top : Wire) (tail lo : List Wire)
    (view : low::tail=lo++[top]) (nd : (sign::low::tail).Nodup)
    (s : State) (m : List Bool) (even : signedRegValue ((low::tail)++[sign]) s.basis%2=0) :
    signedRegValue ((low::tail)++[sign]) (run (hmrShiftDown sign (low::tail)) m s).basis=
      signedRegValue ((low::tail)++[sign]) s.basis/2 := by
  have hn := List.nodup_cons.mp nd
  have lengths : lo.length=tail.length := by have := congrArg List.length view; simp only [List.length_cons,List.length_append,List.length_nil] at this; omega
  have topNotLo : top∉lo := by
    rw [view] at hn
    intro htop
    exact List.disjoint_left.mp (List.nodup_append'.mp hn.2).2.2 htop (by simp)
  have signTop : sign≠top := fun eq => hn.1 (by rw [view]; simp [eq])
  have lowZero : s.basis low=false := (signedRegValue_even_iff low (tail++[sign]) s.basis).mp even
  let t := run (hmrRotateRight (low::tail)) m s
  have rotated := hmrRotateRight_value low tail hn.2 s m
  have sameSign : t.basis sign=s.basis sign := (hmrRotate_frame (low::tail) s m).2.1 sign hn.1
  have value : regValue (lo++[top]) t.basis=regValue tail s.basis := by
    rw [←view]
    simpa only [lowZero,Bool.toNat_false,Nat.mul_zero,Nat.add_zero] using rotated
  have topZero : t.basis top=false := by
    by_contra bad
    have high := (regValue_highBit lo top t.basis).mp (Bool.eq_true_of_not_eq_false bad)
    rw [value,lengths] at high
    exact (Nat.not_le_of_gt (regValue_lt tail s.basis)) high
  have lower : regValue lo t.basis=regValue tail s.basis := by
    simpa [regValue_append,regValue,topZero] using value
  have grown := rowGrow_run lo sign top topNotLo signTop t m topZero
  have word : signedRegValue (lo++[sign]) t.basis=signedRegValue (tail++[sign]) s.basis := by
    unfold signedRegValue
    simp only [List.length_append,List.length_singleton,lengths,regValue_append]
    rw [lower]
    simp only [regValue,List.foldr_cons,List.foldr_nil,sameSign]
  have half : signedRegValue ((low::tail)++[sign]) s.basis/2=signedRegValue (tail++[sign]) s.basis := by
    have split := signedRegValue_cons low (tail++[sign]) s.basis (by simp)
    simp only [lowZero,Bool.toNat_false,Nat.cast_zero,add_zero] at split
    change signedRegValue (low::(tail++[sign])) s.basis/2=_
    rw [split]
    omega
  rw [hmrShiftDown,run_append,run_take,(hmrRotate_counts (low::tail)).2.1,List.drop_zero]
  have last : (low::tail).getLastD 0=top := by rw [view]; simp
  rw [last]
  change signedRegValue ((low::tail)++[sign]) (run (resizeBit sign top) m t).basis=_
  rw [view,grown.2.2,word,←half]
  rw [view]

end ECDSAAdd.Arithmetic.Paper935
