import ECDSAAdd.Arithmetic.Multiply

namespace ECDSAAdd.Arithmetic

theorem multiplyLoop_wires (bs : List MulStep) (D A : ModLayout) (src dst : List Wire)
    (hdim : D.width = A.width) (hs : src.length = A.width+1) (hd : dst.length = A.width+1)
    (hlen : ∀ b ∈ bs, b.next.length = A.width+1) (q : Nat) :
    wires (multiplyLoop D A q src dst bs) =
      if bs.isEmpty then (A.x ++ dst).toFinset else
        (src ++ dst ++ D.wires ++ A.wires ++ bs.flatMap MulStep.wires).toFinset := by
  induction bs generalizing A src with
  | nil =>
    have hx : A.x.length = dst.length := by rw [ModLayout.x, A.reg_length, hd]
    have hn : A.x.isEmpty = false := by
      have h : A.x.length = A.width+1 := A.reg_length .x
      cases he : A.x <;> simp_all
    simp only [multiplyLoop, copyRegister_wires _ _ _ hx, hn, Bool.false_eq_true, if_false,
      Option.toList_none, List.nil_append, List.isEmpty_nil, if_true]
  | cons b bs ih =>
    have hb := hlen b (List.mem_cons_self ..)
    have hi := ih A.swapXOut b.next (by simpa using hdim) (by simpa using hb)
      (by simpa using hd) (by intro t ht; simpa using hlen t (List.mem_cons_of_mem _ ht))
    have hdbl := doubleXor_wires D src b.next q (by omega) (by omega)
    have hma := maskedAccumulate_wires A src b.bit q hs
    have hmu := maskedUnaccumulate_wires A src b.bit q hs
    have hsub : A.out ⊆ A.wires := fun _ h =>
      List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (A.reg_mem .out h))
    have hswap : A.swapXOut.wires.toFinset = A.wires.toFinset := by
      ext w
      simpa only [List.mem_toFinset] using A.swap_perm.mem_iff
    change wires (doubleXor D q src b.next ++ maskedAccumulate A q src b.bit ++
      multiplyLoop D A.swapXOut q b.next dst bs ++ maskedUnaccumulate A q src b.bit ++
      doubleXor D q src b.next) = _
    by_cases hbs : bs = []
    · subst bs
      simp only [List.isEmpty_nil, if_true, ModLayout.swap_x] at hi
      ext w
      have hh : w ∈ A.out → w ∈ A.wires := fun h => hsub h
      simp only [wires_append, hdbl, hma, hmu, hi, List.isEmpty_cons, Bool.false_eq_true, if_false,
        List.flatMap_cons, List.flatMap_nil, List.append_nil, MulStep.wires,
        List.mem_toFinset, Finset.mem_union, List.mem_append, List.mem_cons]
      tauto
    · have hne : bs.isEmpty = false := by cases bs <;> simp_all
      simp only [hne, Bool.false_eq_true, if_false, List.toFinset_append, hswap] at hi
      ext w
      simp only [wires_append, hdbl, hma, hmu, hi, List.isEmpty_cons, Bool.false_eq_true, if_false,
        List.flatMap_cons, MulStep.wires, List.mem_toFinset, Finset.mem_union,
        List.mem_append, List.mem_cons]
      tauto

theorem multiplyLoop_counts (bs : List MulStep) (D A : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ D.wires ++ A.wires ++ bs.flatMap MulStep.wires).Nodup)
    (hdim : D.width = A.width) (hs : src.length = A.width+1) (hd : dst.length = A.width+1)
    (hlen : ∀ b ∈ bs, b.next.length = A.width+1) (q : Nat) :
    toffoliCount (multiplyLoop D A q src dst bs) = bs.length*(44*A.width+36) ∧
    measurementCount (multiplyLoop D A q src dst bs) = 32*bs.length*(A.width+1) := by
  induction bs generalizing A src with
  | nil =>
    have hx : A.x.length = dst.length := by rw [ModLayout.x, A.reg_length, hd]
    simpa only [multiplyLoop, List.length_nil, Nat.zero_mul, Nat.mul_zero,
      Option.isSome_none, Bool.false_eq_true, if_false] using copyRegister_counts none A.x dst hx
  | cons b bs ih =>
    have subnd (r : List Wire) (hc : ∀ w, r.count w ≤
        (src ++ dst ++ D.wires ++ A.wires ++ (b::bs).flatMap MulStep.wires).count w) : r.Nodup := by
      apply List.nodup_iff_count.mpr
      intro w
      exact (hc w).trans (List.nodup_iff_count.mp hnd w)
    have hdouble : (src ++ b.next ++ D.wires).Nodup := subnd _ (by
      intro w
      simp only [List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
      omega)
    have hmask : (b.bit :: (src ++ A.wires)).Nodup := subnd _ (by
      intro w
      simp only [List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
      omega)
    have hchild : (b.next ++ dst ++ D.wires ++ A.swapXOut.wires ++ bs.flatMap MulStep.wires).Nodup :=
      subnd _ (by
        intro w
        rw [List.count_append, List.count_append, A.swap_perm.count_eq]
        simp only [List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
        omega)
    have hb := hlen b (List.mem_cons_self ..)
    have hi := ih A.swapXOut b.next hchild (by simpa using hdim) (by simpa using hb)
      (by simpa using hd) (by intro t ht; simpa using hlen t (List.mem_cons_of_mem _ ht))
    have hdbl := doubleXor_resources D src b.next hdouble (by omega) (by omega) q
    have hma := maskedAccumulate_resources A src b.bit hmask hs q
    have hmu := maskedUnaccumulate_resources A src b.bit hmask hs q
    simp only [multiplyLoop, toffoliCount_append, measurementCount_append, hdbl.1, hdbl.2.1,
      hma.1, hma.2.1, hmu.1, hmu.2.1, hi.1, hi.2, ModLayout.swap_width, hdim, List.length_cons]
    constructor <;> ring

end ECDSAAdd.Arithmetic
