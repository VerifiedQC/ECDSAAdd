import ECDSAAdd.Arithmetic.SignedSquareRowsProof
import ECDSAAdd.Arithmetic.KaratsubaSquareProof
import ECDSAAdd.Math.SignedSquareIdentity

namespace ECDSAAdd.Arithmetic

private theorem take_value_mod_local (r : List Wire) (n : Nat) (hn : n≤r.length)
    (s : BasisState) : regValue (r.take n) s=regValue r s%2^n := by
  have h := regValue_append (r.take n) (r.drop n) s
  rw [List.take_append_drop,List.length_take,Nat.min_eq_left hn] at h
  rw [h,Nat.add_mul_mod_self_left]
  apply (Nat.mod_eq_of_lt ?_).symm
  simpa only [List.length_take,Nat.min_eq_left hn] using regValue_lt (r.take n) s

private theorem diag_nodup (cin : Wire) (xs mask dst carry : List Wire)
    (hnd : (cin::xs++mask++dst++carry).Nodup) :
    (xs.take (xs.length-1)++mask).Nodup ∧ (cin::mask).Nodup := by
  constructor
  · apply List.nodup_iff_count.mpr; intro q
    have h := List.nodup_iff_count.mp hnd q
    have ht := (List.take_sublist (xs.length-1) xs).count_le q
    simp only [List.count_cons,List.count_append] at h ⊢
    omega
  · apply List.nodup_iff_count.mpr; intro q
    have h := List.nodup_iff_count.mp hnd q
    simp only [List.count_cons,List.count_append] at h ⊢
    omega

def signedDiagHigh (xs : List Wire) (base : BasisState) : Nat :=
  2^(xs.length-1)-1-regValue xs base%2^(xs.length-1)

theorem signedDiagLoad_frame (cin : Wire) (xs mask dst carry : List Wire)
    (hnd : (cin::xs++mask++dst++carry).Nodup) (hm : xs.length≤mask.length)
    (base : BasisState) (hcin : base cin=false) :
    Triple (SquareFrame mask base 0) (signedDiagLoad xs mask cin)
      (SquareFrame mask base (signedDiagHigh xs base)) := by
  let k := xs.length-1
  have hn := diag_nodup cin xs mask dst carry hnd
  have srcLen : (xs.take k).length=k := by simp [k]
  have km : k≤mask.length := by dsimp [k]; omega
  have cp := karatsuba_copy_low (xs.take k) mask k srcLen km hn.1 base
  have ndc : (cin::mask).Nodup := hn.2
  have xf := xorWhenFalse_prefix_frame cin mask k ndc km base false  (regValue (xs.take k) base) hcin
  have lowv : regValue (xs.take k) base=regValue xs base%2^k := by
    have ht := take_value_mod_local xs k (by dsimp [k]; omega) base
    exact ht
  have bound := regValue_lt (xs.take k) base
  rw [srcLen] at bound
  have comp := cp.1.seq xf
  have post := Triple.conseq (fun _ h => h) comp (fun _ h => by
    have he : (2^k-1-regValue (xs.take k) base%2^k)+
        2^k*(regValue (xs.take k) base/2^k)=signedDiagHigh xs base := by
      rw [Nat.mod_eq_of_lt bound,Nat.div_eq_of_lt bound,lowv]
      simp [signedDiagHigh,k]
    simpa [he] using h)
  simpa [signedDiagLoad,k,List.append_assoc] using post

theorem signedDiagUnload_frame (cin : Wire) (xs mask dst carry : List Wire)
    (hnd : (cin::xs++mask++dst++carry).Nodup) (hm : xs.length≤mask.length)
    (base : BasisState) (hcin : base cin=false) :
    Triple (SquareFrame mask base (signedDiagHigh xs base))
      (signedDiagUnload xs mask cin) (SquareFrame mask base 0) := by
  let k := xs.length-1
  have hn := diag_nodup cin xs mask dst carry hnd
  have srcLen : (xs.take k).length=k := by simp [k]
  have km : k≤mask.length := by dsimp [k]; omega
  have lowv : regValue (xs.take k) base=regValue xs base%2^k :=
    take_value_mod_local xs k (by dsimp [k]; omega) base
  have bound := regValue_lt (xs.take k) base
  rw [srcLen] at bound
  have ndc : (cin::mask).Nodup := hn.2
  have xf := xorWhenFalse_prefix_frame cin mask k ndc km base false
    (signedDiagHigh xs base) hcin
  have xpost : Triple (SquareFrame mask base (signedDiagHigh xs base))
      (xorWhenFalse cin (mask.take k))
      (SquareFrame mask base (regValue (xs.take k) base)) := by
    apply Triple.conseq (fun _ h => h) xf
    intro st h
    have hd : signedDiagHigh xs base<2^k := by
      dsimp [signedDiagHigh,k]
      have hm0 := Nat.mod_lt (regValue xs base) (Nat.two_pow_pos k)
      dsimp [k] at hm0
      omega
    have he : (2^k-1-signedDiagHigh xs base%2^k)+
        2^k*(signedDiagHigh xs base/2^k)=regValue (xs.take k) base := by
      rw [Nat.mod_eq_of_lt hd,Nat.div_eq_of_lt hd,lowv]
      simp [signedDiagHigh,k]
      omega
    simpa [he] using h
  have cp := karatsuba_copy_low (xs.take k) mask k srcLen km hn.1 base
  have comp := xpost.seq cp.2
  simpa [signedDiagUnload,k,List.append_assoc] using comp

theorem signedDiagSource_value (xs mask : List Wire) (hx : xs≠[])
    (hm : xs.length≤mask.length)
    (s : BasisState) (hmask : regValue mask s=signedDiagHigh xs s) :
    regValue (signedDiagSource xs mask) s=
      signedDiagValue (regValue xs s) xs.length := by
  let m := xs.length
  have takev := take_value_mod_local mask m hm s
  have hb : signedDiagHigh xs s<2^m := by
    dsimp [signedDiagHigh,m]
    have hp := Nat.mod_lt (regValue xs s) (Nat.two_pow_pos (xs.length-1))
    have powle : 2^(xs.length-1)≤2^xs.length :=
      Nat.pow_le_pow_right (by decide) (Nat.sub_le _ _)
    omega
  rw [hmask,Nat.mod_eq_of_lt hb] at takev
  rw [signedDiagSource,regValue_append,takev]
  simp [signedDiagValue,signedDiagHigh,hx,Nat.mul_comm]


end ECDSAAdd.Arithmetic
