import ECDSAAdd.Arithmetic.Paper935.HmrShiftDown

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source `_shift_up_free`: clear the redundant payload top, then rotate
payload only. The separate sign address never participates in a SWAP. -/
def hmrShiftUpFree (sign : Wire) (payload : List Wire) : Program :=
  match payload with
  | [] => []
  | _::_ => [.CX sign (payload.getLastD 0)] ++ hmrRotateLeft payload

private theorem signed_payload (payload : List Wire) (sign : Wire) (s : BasisState) :
    signedRegValue (payload++[sign]) s=(regValue payload s:Int)-
      (if s sign then ((2^payload.length:Nat):Int) else 0) := by
  rw [signedRegValue_msb,regValue_append]
  cases hs : s sign <;>
    simp [regValue,hs,Nat.pow_succ,Nat.cast_add,Nat.cast_mul]
  all_goals ring

/-- The signed fit condition establishes the top-bit equality needed by the
source clearing gate; no clearing assertion is assumed separately. -/
theorem hmrShiftUpFree_value (sign low top : Wire) (tail lo : List Wire)
    (view : low::tail=lo++[top]) (nd : (sign::low::tail).Nodup)
    (s : State) (m : List Bool)
    (lower : -((2^lo.length:Nat):Int) ≤ signedRegValue ((low::tail)++[sign]) s.basis)
    (upper : signedRegValue ((low::tail)++[sign]) s.basis < ((2^lo.length:Nat):Int)) :
    signedRegValue ((low::tail)++[sign]) (run (hmrShiftUpFree sign (low::tail)) m s).basis=
      2*signedRegValue ((low::tail)++[sign]) s.basis := by
  have hn := List.nodup_cons.mp nd
  have lengths : lo.length=tail.length := by
    have := congrArg List.length view
    simp only [List.length_cons,List.length_append,List.length_nil] at this
    omega
  have topNotLo : top∉lo := by
    have nd' := hn.2
    rw [view] at nd'
    intro htop
    exact List.disjoint_left.mp (List.nodup_append'.mp nd').2.2 htop (by simp)
  have signTop : sign≠top := fun eq => hn.1 (by rw [view]; simp [eq])
  have topSign : s.basis top=s.basis sign := by
    apply rowShrink_bit_of_fits lo sign top s.basis
    · simpa only [←view] using lower
    · simpa only [←view] using upper
  let t := run (resizeBit sign top) m s
  have shrink := rowShrink_run lo sign top topNotLo signTop s m topSign
  have before : regValue (low::tail) t.basis=regValue lo s.basis := by
    rw [view,regValue_append]
    have keep : regValue lo t.basis=regValue lo s.basis := regValue_congr _ _ _ (by
      intro q hq; exact shrink.2.1 q (fun eq => topNotLo (eq ▸ hq)))
    have zero : t.basis top=false := shrink.2.2.1
    rw [keep]
    simp [regValue,zero]
  have small : regValue (low::tail) t.basis<2^tail.length := by
    rw [before,←lengths]; exact regValue_lt lo s.basis
  have rotated := hmrRotateLeft_value low tail hn.2 t m
  rw [if_pos small,before] at rotated
  have sameSign : (run (hmrRotateLeft (low::tail)) m t).basis sign=s.basis sign :=
    ((hmrRotate_frame (low::tail) t m).2.2.2 sign hn.1).trans (shrink.2.1 sign signTop)
  have last : (low::tail).getLastD 0=top := by rw [view]; simp
  rw [hmrShiftUpFree,last,run_append,run_take]
  change signedRegValue ((low::tail)++[sign]) (run (hmrRotateLeft (low::tail)) m t).basis=_
  rw [signed_payload,rotated,sameSign,signed_payload,view,regValue_append]
  simp only [List.length_append,List.length_singleton,regValue,List.foldr_cons,List.foldr_nil,topSign]
  cases hs : s.basis sign <;>
    simp [Nat.pow_succ,Nat.cast_add,Nat.cast_mul]
  all_goals ring

end ECDSAAdd.Arithmetic.Paper935
