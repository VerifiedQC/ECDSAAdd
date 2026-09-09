import ECDSAAdd.Arithmetic.Halve

namespace ECDSAAdd.Arithmetic
open ExternalMod

def halveWires (L : ModLayout) (src dst : List Wire) : List Wire :=
  src ++ dst ++ [L.cinSum] ++ L.x ++ L.y ++ L.out ++ L.reg .carrySum ++ L.reg .modulus

theorem halveXor_wires (L : ModLayout) (src dst : List Wire) (q : Nat)
    (hs : src.length = L.width+1) (hd : dst.length = L.width+1) :
    wires (halveXor L q src dst) = (halveWires L src dst).toFinset := by
  have hx : src.length = L.x.length := by simp [ModLayout.x, hs, L.reg_length]
  have hy : (L.reg .modulus).length = L.y.length := by simp [ModLayout.y, L.reg_length]
  have ho : L.out.length = dst.length := by simp [ModLayout.out, hd, L.reg_length]
  have hsne : src.isEmpty = false := by cases src <;> simp_all
  have hmne : (L.reg .modulus).isEmpty = false := by
    have hh := L.reg_length .modulus
    cases he : L.reg .modulus <;> simp_all
  have hone : L.out.isEmpty = false := by
    have hh : L.out.length = L.width+1 := L.reg_length .out
    cases he : L.out <;> simp_all
  have hsm : src.head! ∈ src := by cases src <;> simp_all
  have hmm : (L.reg .modulus).head! ∈ L.reg .modulus := by
    generalize he : L.reg .modulus = r at *; cases r <;> simp_all
  have cx := copyRegister_wires none src L.x hx
  have cy := copyRegister_wires (some src.head!) (L.reg .modulus) L.y hy
  have co := copyRegister_wires none L.out dst ho
  simp only [hsne, hmne, hone, Bool.false_eq_true, if_false, Option.toList_none,
    Option.toList_some, List.nil_append] at cx cy co
  ext w
  have hk : w ∈ wires (xorConstant (L.reg .modulus) q) → w ∈ L.reg .modulus :=
    fun h => List.mem_toFinset.mp (xorConstant_wires_subset _ _ h)
  have hsm' : w = src.head! → w ∈ src := fun h => h ▸ hsm
  have hmm' : w = (L.reg .modulus).head! → w ∈ L.reg .modulus := fun h => h ▸ hmm
  simp only [halveXor, wires_append, cx, cy, co, (shift_wires _ _).1,
    (shift_wires _ _).2, Finset.mem_union, modAdder_mem, halveWires,
    List.mem_toFinset, List.mem_append, List.mem_cons, List.not_mem_nil, or_false]
  simp only [ModLayout.x, ModLayout.y, ModLayout.out] at *
  clear hs hd hx hy ho hsne hmne hone hsm hmm cx cy co
  split_ifs <;> simp only [Finset.notMem_empty, List.mem_toFinset, List.mem_cons, or_false] <;> aesop

theorem halveXor_support (L : ModLayout) (src dst : List Wire) (q : Nat)
    (hs : src.length = L.width+1) (hd : dst.length = L.width+1) :
    wires (halveXor L q src dst) ⊆ (src ++ dst ++ L.wires).toFinset := by
  rw [halveXor_wires L src dst q hs hd]
  intro w hw
  simp only [List.mem_toFinset, halveWires, List.mem_append, List.mem_cons,
    List.not_mem_nil, or_false] at hw ⊢
  rcases hw with ((((((ha | hb) | hc) | hx) | hy) | ho) | hcarry) | hm
  · exact Or.inl (Or.inl ha)
  · exact Or.inl (Or.inr hb)
  · subst w; exact Or.inr (by simp [ModLayout.wires])
  · exact Or.inr (field_subset L .x hx)
  · exact Or.inr (field_subset L .y hy)
  · exact Or.inr (field_subset L .out ho)
  · exact Or.inr (field_subset L .carrySum hcarry)
  · exact Or.inr (field_subset L .modulus hm)

theorem halveXor_correct (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q : Nat) (hq : q < 2^L.width) (hqodd : q%2=1)
    (s : State) (m : List Bool) (hX : regValue src s.basis < q)
    (hw : regValue L.wires s.basis = 0) :
    (run (halveXor L q src dst) m s).phase = s.phase ∧
    (∀ w, w ∉ dst → (run (halveXor L q src dst) m s).basis w = s.basis w) ∧
    regValue dst (run (halveXor L q src dst) m s).basis =
      regValue dst s.basis ^^^ halveMod q (regValue src s.basis) := by
  obtain ⟨hp, h⟩ := halveXor_spec L src dst hnd hs hd q _ _ hq hqodd hX s m ⟨⟨rfl,rfl⟩,hw⟩
  refine ⟨hp, ?_, h.1.2⟩
  intro w hn
  by_cases hsrc : w ∈ src
  · exact (regValue_eq_iff _ _ _).mp h.1.1 w hsrc
  by_cases hL : w ∈ L.wires
  · exact ((regValue_zero _ _).mp h.2 w hL).trans ((regValue_zero _ _).mp hw w hL).symm
  · apply run_preserves_outside
    exact fun hh => (by simpa using halveXor_support L src dst q hs hd hh :
      w ∈ src ∨ w ∈ dst ∨ w ∈ L.wires).elim hsrc (fun h => h.elim hn hL)

theorem halveXor_counts (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q : Nat) :
    toffoliCount (halveXor L q src dst) = 6*L.width+4 ∧
    measurementCount (halveXor L q src dst) = 2*(L.width+1) := by
  have hl := (List.nodup_append'.mp hnd).2.1
  have hx : src.length = L.x.length := by simp [ModLayout.x, hs, L.reg_length]
  have hy : (L.reg .modulus).length = L.y.length := by simp [ModLayout.y, L.reg_length]
  have ho : L.out.length = dst.length := by simp [ModLayout.out, hd, L.reg_length]
  have cx := copyRegister_counts none src L.x hx
  have cy := copyRegister_counts (some src.head!) (L.reg .modulus) L.y hy
  have co := copyRegister_counts none L.out dst ho
  have ha := add_resources (L.adder .x .y .out .carrySum L.cinSum)
    (L.adder_nodup hl .x .y .out .carrySum (by decide) L.cinSum (Or.inl rfl))
  have ht := shift_counts (L.reg .modulus).head! L.out
  have hc := xorConstant_counts (L.reg .modulus) q
  simp only [halveXor, toffoliCount_append, measurementCount_append, cx.1, cx.2,
    cy.1, cy.2, co.1, co.2, ha.1, ha.2.1, ht.1, ht.2.1, ht.2.2.1, ht.2.2.2,
    hc.1, hc.2, Option.isSome_none, Option.isSome_some, Bool.false_eq_true,
    if_false, if_true]
  simp only [ModLayout.adder_width, ModLayout.out, L.reg_length]
  omega

end ECDSAAdd.Arithmetic
