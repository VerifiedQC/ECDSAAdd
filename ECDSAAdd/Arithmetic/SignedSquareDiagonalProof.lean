import ECDSAAdd.Arithmetic.SignedSquareRowsProof
import ECDSAAdd.Arithmetic.KaratsubaSquareProof
import ECDSAAdd.Math.SignedSquareIdentity

namespace ECDSAAdd.Arithmetic

theorem xorWhenFalse_wires_subset (c : Wire) (ys : List Wire) :
    wires (xorWhenFalse c ys)⊆(c::ys).toFinset := by
  induction ys with
  | nil => simp [xorWhenFalse,wires]
  | cons y ys ih =>
    simp only [xorWhenFalse,wires_append]
    intro q hq
    simp only [wires,Instr.wires,Finset.mem_union,Finset.mem_insert,
      Finset.mem_singleton,List.mem_toFinset,List.mem_cons] at hq ⊢
    have hi := @ih q
    simp only [List.mem_toFinset,List.mem_cons] at hi
    tauto

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

theorem signedDiagSub_wires_subset (cin : Wire) (xs dst mask carry : List Wire)
    (hx : xs≠[]) (hd : dst.length=2*xs.length) (hm : xs.length≤mask.length)
    (hc : dst.length-1≤carry.length) :
    wires (signedDiagSub xs dst mask carry cin)⊆
      (cin::xs++mask++dst++carry).toFinset := by
  let k := xs.length-1
  let low := xs.take k
  let mlow := mask.take k
  let src := signedDiagSource xs mask
  let cy := carry.take (dst.length-1)
  have lm : low.length=mlow.length := by simp [low,mlow,k]; omega
  have cp := copyRegister_wires none low mlow lm
  have xf := xorWhenFalse_wires_subset cin mlow
  have sl : src.length=dst.length := by
    simp [src,signedDiagSource,List.length_take,Nat.min_eq_left hm,hd]
    omega
  have cl : cy.length+1=dst.length := by
    simp [cy,List.length_take,Nat.min_eq_left hc]
    have hp : 0<dst.length := by
      have : 0<xs.length := List.length_pos_iff.mpr hx
      omega
    omega
  have ar := subInPlace_wires src dst cy cin sl cl
  intro q hq
  simp only [signedDiagSub,signedDiagLoad,signedDiagUnload,wires_append,
    Finset.mem_union] at hq
  rcases hq with hload | harith | hunload
  · rcases hload with hcopy | hxor
    · rw [cp] at hcopy
      split at hcopy
      · simp at hcopy
      · simp only [Option.toList_none,List.nil_append,List.mem_toFinset,List.mem_append] at hcopy
        have hl : q∈low → q∈xs := fun h => List.mem_of_mem_take h
        have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
        simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
        tauto

    · have h := xf hxor
      have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
      simp only [List.mem_toFinset,List.mem_cons] at h
      simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
      tauto
  · rw [ar] at harith
    have hs (h : q∈src) : q∈xs ∨ q∈mask := by
      simp only [src,signedDiagSource,List.mem_append] at h
      rcases h with h|h
      · exact Or.inl h
      · exact Or.inr (List.mem_of_mem_take h)
    have hcy (h : q∈cy) : q∈carry := List.mem_of_mem_take h
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at harith ⊢
    tauto
  · rcases hunload with hxor | hcopy
    · have h := xf hxor
      have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
      simp only [List.mem_toFinset,List.mem_cons] at h
      simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
      tauto
    · rw [cp] at hcopy
      split at hcopy
      · simp at hcopy
      · simp only [Option.toList_none,List.nil_append,List.mem_toFinset,List.mem_append] at hcopy
        have hl : q∈low → q∈xs := fun h => List.mem_of_mem_take h
        have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
        simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
        tauto

theorem signedDiagSub_preserves_outside (cin : Wire) (xs dst mask carry : List Wire)
    (hx : xs≠[]) (hd : dst.length=2*xs.length) (hm : xs.length≤mask.length)
    (hc : dst.length-1≤carry.length) (s : State) (records : List Bool)
    (q : Wire) (hq : q∉cin::xs++mask++dst++carry) :
    (run (signedDiagSub xs dst mask carry cin) records s).basis q=s.basis q := by
  apply run_preserves_outside
  intro hw
  have hs := signedDiagSub_wires_subset cin xs dst mask carry hx hd hm hc hw
  exact hq (List.mem_toFinset.mp hs)

theorem signedDiagAdd_wires_subset (cin : Wire) (xs dst mask carry : List Wire)
    (hx : xs≠[]) (hd : dst.length=2*xs.length) (hm : xs.length≤mask.length)
    (hc : dst.length-1≤carry.length) :
    wires (signedDiagAdd xs dst mask carry cin)⊆
      (cin::xs++mask++dst++carry).toFinset := by
  let k := xs.length-1
  let low := xs.take k
  let mlow := mask.take k
  let src := signedDiagSource xs mask
  let cy := carry.take (dst.length-1)
  have lm : low.length=mlow.length := by simp [low,mlow,k]; omega
  have cp := copyRegister_wires none low mlow lm
  have xf := xorWhenFalse_wires_subset cin mlow
  have sl : src.length=dst.length := by
    simp [src,signedDiagSource,List.length_take,Nat.min_eq_left hm,hd]
    omega
  have cl : cy.length+1=dst.length := by
    simp [cy,List.length_take,Nat.min_eq_left hc]
    have hp : 0<dst.length := by
      have : 0<xs.length := List.length_pos_iff.mpr hx
      omega
    omega
  have ar := addInPlace_wires src dst cy cin sl cl
  intro q hq
  simp only [signedDiagAdd,signedDiagLoad,signedDiagUnload,wires_append,
    Finset.mem_union] at hq
  rcases hq with hload | harith | hunload
  · rcases hload with hcopy | hxor
    · rw [cp] at hcopy
      split at hcopy
      · simp at hcopy
      · simp only [Option.toList_none,List.nil_append,List.mem_toFinset,List.mem_append] at hcopy
        have hl : q∈low → q∈xs := fun h => List.mem_of_mem_take h
        have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
        simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
        tauto

    · have h := xf hxor
      have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
      simp only [List.mem_toFinset,List.mem_cons] at h
      simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
      tauto
  · rw [ar] at harith
    have hs (h : q∈src) : q∈xs ∨ q∈mask := by
      simp only [src,signedDiagSource,List.mem_append] at h
      rcases h with h|h
      · exact Or.inl h
      · exact Or.inr (List.mem_of_mem_take h)
    have hcy (h : q∈cy) : q∈carry := List.mem_of_mem_take h
    simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at harith ⊢
    tauto
  · rcases hunload with hxor | hcopy
    · have h := xf hxor
      have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
      simp only [List.mem_toFinset,List.mem_cons] at h
      simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
      tauto
    · rw [cp] at hcopy
      split at hcopy
      · simp at hcopy
      · simp only [Option.toList_none,List.nil_append,List.mem_toFinset,List.mem_append] at hcopy
        have hl : q∈low → q∈xs := fun h => List.mem_of_mem_take h
        have hm' : q∈mlow → q∈mask := fun h => List.mem_of_mem_take h
        simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
        tauto

theorem signedDiagAdd_preserves_outside (cin : Wire) (xs dst mask carry : List Wire)
    (hx : xs≠[]) (hd : dst.length=2*xs.length) (hm : xs.length≤mask.length)
    (hc : dst.length-1≤carry.length) (s : State) (records : List Bool)
    (q : Wire) (hq : q∉cin::xs++mask++dst++carry) :
    (run (signedDiagAdd xs dst mask carry cin) records s).basis q=s.basis q := by
  apply run_preserves_outside
  intro hw
  have hs := signedDiagAdd_wires_subset cin xs dst mask carry hx hd hm hc hw
  exact hq (List.mem_toFinset.mp hs)


theorem signedDiagSub_correct (cin : Wire) (xs dst mask carry : List Wire)
    (hnd : (cin::xs++mask++dst++carry).Nodup) (hx : xs≠[])
    (hd : dst.length=2*xs.length) (hm : xs.length≤mask.length)
    (hc : dst.length-1≤carry.length) (s : State) (records : List Bool)
    (A : Nat) (hv : regValue dst s.basis=A) (hmask : regValue mask s.basis=0)
    (hcarry : regValue carry s.basis=0) (hcin : s.basis cin=false) :
    let out := run (signedDiagSub xs dst mask carry cin) records s
    out.phase=s.phase ∧
      regValue dst out.basis=
        (A+2^dst.length-signedDiagValue (regValue xs s.basis) xs.length)%2^dst.length ∧
      regValue mask out.basis=0 ∧ regValue carry out.basis=0 ∧
      out.basis cin=false ∧ regValue xs out.basis=regValue xs s.basis := by
  let load := signedDiagLoad xs mask cin
  let src := signedDiagSource xs mask
  let cy := carry.take (dst.length-1)
  let arith := subInPlace src dst cy cin
  let unload := signedDiagUnload xs mask cin
  let rest := records.drop (measurementCount load)
  let u := run load (records.take (measurementCount load)) s
  let v := run arith (rest.take (measurementCount arith)) u
  let out := run unload (rest.drop (measurementCount arith)) v
  have lf := signedDiagLoad_frame cin xs mask dst carry hnd hm s.basis hcin
  have lu := lf s (records.take (measurementCount load)) ⟨hmask,fun _ _ => rfl⟩
  have keepU (q : Wire) (hq : q∉mask) : u.basis q=s.basis q := lu.2.2 q hq
  have disXM (q : Wire) (hq : q∈xs) : q∉mask := by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append] at hn
    omega
  have disDM (q : Wire) (hq : q∈dst) : q∉mask := by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append] at hn
    omega
  have disCM (q : Wire) (hq : q∈carry) : q∉mask := by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append] at hn
    omega
  have xsU : regValue xs u.basis=regValue xs s.basis :=
    regValue_congr _ _ _ (fun q hq => keepU q (disXM q hq))
  have dstU : regValue dst u.basis=A :=
    (regValue_congr _ _ _ (fun q hq => keepU q (disDM q hq))).trans hv
  have carryU : regValue carry u.basis=0 :=
    (regValue_congr _ _ _ (fun q hq => keepU q (disCM q hq))).trans hcarry
  have cinU : u.basis cin=false := (keepU cin (by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd cin
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
    omega)).trans hcin
  have maskU : regValue mask u.basis=signedDiagHigh xs u.basis := by
    rw [lu.2.1]
    simp [signedDiagHigh,xsU]
  have srcU : regValue src u.basis=signedDiagValue (regValue xs s.basis) xs.length := by
    rw [signedDiagSource_value xs mask hx hm u.basis maskU,xsU]
  have srcLen : src.length=dst.length := by
    simp [src,signedDiagSource,List.length_take,Nat.min_eq_left hm,hd]
    omega
  have cyLen : cy.length+1=dst.length := by
    dsimp [cy]
    rw [List.length_take,Nat.min_eq_left hc]
    have hxpos : 0<xs.length := List.length_pos_iff.mpr hx
    omega
  have ndarith : (cin::src++dst++cy).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have hn := List.nodup_iff_count.mp hnd q
    have hm' := (List.take_sublist xs.length mask).count_le q
    have hc' := (List.take_sublist (dst.length-1) carry).count_le q
    simp only [src,cy,signedDiagSource,List.count_cons,List.count_append] at hn ⊢
    omega
  have cyU : regValue cy u.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => (regValue_zero _ _).mp carryU q (List.mem_of_mem_take hq))
  have af := karatsuba_arith_frame true src dst cy cin ndarith srcLen cyLen
    u.basis cyU cinU A
  have av0 := af u (rest.take (measurementCount arith)) ⟨dstU,fun _ _ => rfl⟩
  have av : v.phase=u.phase ∧ SquareFrame dst u.basis
      ((A+2^dst.length-regValue src u.basis)%2^dst.length) v.basis := by
    simpa [v,arith] using av0
  have targetV : regValue dst v.basis=
      (A+2^dst.length-signedDiagValue (regValue xs s.basis) xs.length)%2^dst.length := by
    rw [av.2.1,srcU]
  have keepV (q : Wire) (hq : q∉dst) : v.basis q=u.basis q := av.2.2 q hq
  have maskV0 : regValue mask v.basis=regValue mask u.basis := by
    apply regValue_congr; intro q hq; apply keepV q
    intro hdq
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hdq
    simp only [List.count_cons,List.count_append] at hn
    omega
  have xsV : regValue xs v.basis=regValue xs u.basis := by
    apply regValue_congr; intro q hq; apply keepV q
    intro hdq
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hdq
    simp only [List.count_cons,List.count_append] at hn
    omega
  have maskV : regValue mask v.basis=signedDiagHigh xs v.basis := by
    rw [maskV0,maskU]
    simp [signedDiagHigh,xsV]
  have cinV : v.basis cin=false := (keepV cin (by
    intro hdq
    have hn := List.nodup_iff_count.mp hnd cin
    have h2 := List.count_pos_iff.mpr hdq
    simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
    omega)).trans cinU
  have uf := signedDiagUnload_frame cin xs mask dst carry hnd hm v.basis cinV
  have uv := uf v (rest.drop (measurementCount arith)) ⟨maskV,fun _ _ => rfl⟩
  have keepOut (q : Wire) (hq : q∉mask) : out.basis q=v.basis q := uv.2.2 q hq
  have final : out.phase=s.phase ∧
      regValue dst out.basis=
        (A+2^dst.length-signedDiagValue (regValue xs s.basis) xs.length)%2^dst.length ∧
      regValue mask out.basis=0 ∧ regValue carry out.basis=0 ∧
      out.basis cin=false ∧ regValue xs out.basis=regValue xs s.basis := by
    refine ⟨uv.1.trans (av.1.trans lu.1),?_,uv.2.1,?_,?_,?_⟩
    · exact (regValue_congr _ _ _ (fun q hq => keepOut q (disDM q hq))).trans targetV
    · have cv : regValue carry v.basis=0 :=
        (regValue_congr _ _ _ (fun q hq => keepV q (by
          intro hdq
          have hn := List.nodup_iff_count.mp hnd q
          have h1 := List.count_pos_iff.mpr hq
          have h2 := List.count_pos_iff.mpr hdq
          simp only [List.count_cons,List.count_append] at hn
          omega))).trans carryU
      exact (regValue_congr _ _ _ (fun q hq => keepOut q (disCM q hq))).trans cv
    · exact (keepOut cin (by
        intro hmemb
        have hn := List.nodup_iff_count.mp hnd cin
        have h2 := List.count_pos_iff.mpr hmemb
        simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
        omega)).trans cinV
    · calc
        regValue xs out.basis = regValue xs v.basis :=
          regValue_congr _ _ _ (fun q hq => keepOut q (disXM q hq))
        _ = regValue xs u.basis := xsV
        _ = regValue xs s.basis := xsU
  simpa [signedDiagSub,load,arith,unload,rest,u,v,out,run_append] using final



theorem signedDiagAdd_correct (cin : Wire) (xs dst mask carry : List Wire)
    (hnd : (cin::xs++mask++dst++carry).Nodup) (hx : xs≠[])
    (hd : dst.length=2*xs.length) (hm : xs.length≤mask.length)
    (hc : dst.length-1≤carry.length) (s : State) (records : List Bool)
    (A : Nat) (hv : regValue dst s.basis=A) (hmask : regValue mask s.basis=0)
    (hcarry : regValue carry s.basis=0) (hcin : s.basis cin=false) :
    let out := run (signedDiagAdd xs dst mask carry cin) records s
    out.phase=s.phase ∧
      regValue dst out.basis=
        (A+signedDiagValue (regValue xs s.basis) xs.length)%2^dst.length ∧
      regValue mask out.basis=0 ∧ regValue carry out.basis=0 ∧
      out.basis cin=false ∧ regValue xs out.basis=regValue xs s.basis := by
  let load := signedDiagLoad xs mask cin
  let src := signedDiagSource xs mask
  let cy := carry.take (dst.length-1)
  let arith := addInPlace src dst cy cin
  let unload := signedDiagUnload xs mask cin
  let rest := records.drop (measurementCount load)
  let u := run load (records.take (measurementCount load)) s
  let v := run arith (rest.take (measurementCount arith)) u
  let out := run unload (rest.drop (measurementCount arith)) v
  have lf := signedDiagLoad_frame cin xs mask dst carry hnd hm s.basis hcin
  have lu := lf s (records.take (measurementCount load)) ⟨hmask,fun _ _ => rfl⟩
  have keepU (q : Wire) (hq : q∉mask) : u.basis q=s.basis q := lu.2.2 q hq
  have disXM (q : Wire) (hq : q∈xs) : q∉mask := by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append] at hn
    omega
  have disDM (q : Wire) (hq : q∈dst) : q∉mask := by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append] at hn
    omega
  have disCM (q : Wire) (hq : q∈carry) : q∉mask := by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append] at hn
    omega
  have xsU : regValue xs u.basis=regValue xs s.basis :=
    regValue_congr _ _ _ (fun q hq => keepU q (disXM q hq))
  have dstU : regValue dst u.basis=A :=
    (regValue_congr _ _ _ (fun q hq => keepU q (disDM q hq))).trans hv
  have carryU : regValue carry u.basis=0 :=
    (regValue_congr _ _ _ (fun q hq => keepU q (disCM q hq))).trans hcarry
  have cinU : u.basis cin=false := (keepU cin (by
    intro hmemb
    have hn := List.nodup_iff_count.mp hnd cin
    have h2 := List.count_pos_iff.mpr hmemb
    simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
    omega)).trans hcin
  have maskU : regValue mask u.basis=signedDiagHigh xs u.basis := by
    rw [lu.2.1]
    simp [signedDiagHigh,xsU]
  have srcU : regValue src u.basis=signedDiagValue (regValue xs s.basis) xs.length := by
    rw [signedDiagSource_value xs mask hx hm u.basis maskU,xsU]
  have srcLen : src.length=dst.length := by
    simp [src,signedDiagSource,List.length_take,Nat.min_eq_left hm,hd]
    omega
  have cyLen : cy.length+1=dst.length := by
    dsimp [cy]
    rw [List.length_take,Nat.min_eq_left hc]
    have hxpos : 0<xs.length := List.length_pos_iff.mpr hx
    omega
  have ndarith : (cin::src++dst++cy).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have hn := List.nodup_iff_count.mp hnd q
    have hm' := (List.take_sublist xs.length mask).count_le q
    have hc' := (List.take_sublist (dst.length-1) carry).count_le q
    simp only [src,cy,signedDiagSource,List.count_cons,List.count_append] at hn ⊢
    omega
  have cyU : regValue cy u.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => (regValue_zero _ _).mp carryU q (List.mem_of_mem_take hq))
  have af := karatsuba_arith_frame false src dst cy cin ndarith srcLen cyLen
    u.basis cyU cinU A
  have av0 := af u (rest.take (measurementCount arith)) ⟨dstU,fun _ _ => rfl⟩
  have av : v.phase=u.phase ∧ SquareFrame dst u.basis
      ((A+regValue src u.basis)%2^dst.length) v.basis := by
    simpa [v,arith] using av0
  have targetV : regValue dst v.basis=
      (A+signedDiagValue (regValue xs s.basis) xs.length)%2^dst.length := by
    rw [av.2.1,srcU]
  have keepV (q : Wire) (hq : q∉dst) : v.basis q=u.basis q := av.2.2 q hq
  have maskV0 : regValue mask v.basis=regValue mask u.basis := by
    apply regValue_congr; intro q hq; apply keepV q
    intro hdq
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hdq
    simp only [List.count_cons,List.count_append] at hn
    omega
  have xsV : regValue xs v.basis=regValue xs u.basis := by
    apply regValue_congr; intro q hq; apply keepV q
    intro hdq
    have hn := List.nodup_iff_count.mp hnd q
    have h1 := List.count_pos_iff.mpr hq
    have h2 := List.count_pos_iff.mpr hdq
    simp only [List.count_cons,List.count_append] at hn
    omega
  have maskV : regValue mask v.basis=signedDiagHigh xs v.basis := by
    rw [maskV0,maskU]
    simp [signedDiagHigh,xsV]
  have cinV : v.basis cin=false := (keepV cin (by
    intro hdq
    have hn := List.nodup_iff_count.mp hnd cin
    have h2 := List.count_pos_iff.mpr hdq
    simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
    omega)).trans cinU
  have uf := signedDiagUnload_frame cin xs mask dst carry hnd hm v.basis cinV
  have uv := uf v (rest.drop (measurementCount arith)) ⟨maskV,fun _ _ => rfl⟩
  have keepOut (q : Wire) (hq : q∉mask) : out.basis q=v.basis q := uv.2.2 q hq
  have final : out.phase=s.phase ∧
      regValue dst out.basis=
        (A+signedDiagValue (regValue xs s.basis) xs.length)%2^dst.length ∧
      regValue mask out.basis=0 ∧ regValue carry out.basis=0 ∧
      out.basis cin=false ∧ regValue xs out.basis=regValue xs s.basis := by
    refine ⟨uv.1.trans (av.1.trans lu.1),?_,uv.2.1,?_,?_,?_⟩
    · exact (regValue_congr _ _ _ (fun q hq => keepOut q (disDM q hq))).trans targetV
    · have cv : regValue carry v.basis=0 :=
        (regValue_congr _ _ _ (fun q hq => keepV q (by
          intro hdq
          have hn := List.nodup_iff_count.mp hnd q
          have h1 := List.count_pos_iff.mpr hq
          have h2 := List.count_pos_iff.mpr hdq
          simp only [List.count_cons,List.count_append] at hn
          omega))).trans carryU
      exact (regValue_congr _ _ _ (fun q hq => keepOut q (disCM q hq))).trans cv
    · exact (keepOut cin (by
        intro hmemb
        have hn := List.nodup_iff_count.mp hnd cin
        have h2 := List.count_pos_iff.mpr hmemb
        simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
        omega)).trans cinV
    · calc
        regValue xs out.basis = regValue xs v.basis :=
          regValue_congr _ _ _ (fun q hq => keepOut q (disXM q hq))
        _ = regValue xs u.basis := xsV
        _ = regValue xs s.basis := xsU
  simpa [signedDiagAdd,load,arith,unload,rest,u,v,out,run_append] using final


end ECDSAAdd.Arithmetic
