import ECDSAAdd.Arithmetic.Modular

namespace ECDSAAdd.Arithmetic

private theorem add_mem (L : ModLayout) (a b t c : ModField) (cin w : Wire) :
    w ∈ wires (add (L.adder a b t c cin)) ↔
      w = cin ∨ w ∈ L.reg a ∨ w ∈ L.reg b ∨ w ∈ L.reg t ∨ w ∈ L.reg c := by
  have hn : (L.adder a b t c cin).bits ≠ [] := by
    simp [ModLayout.adder, ModLayout.bits]
  unfold add
  cases hb : (L.adder a b t c cin).bits with
  | nil => exact False.elim (hn hb)
  | cons bit bs =>
    rw [rippleAdder_wires, ← hb]
    simp [ModLayout.adder, addWires_map, ModLayout.reg, List.mem_flatMap,
      List.mem_map, exists_or, and_or_left, eq_comm]

private theorem sub_mem (L : ModLayout) (a b t c : ModField) (cin w : Wire) :
    w ∈ wires (sub (L.adder a b t c cin)) ↔
      w = cin ∨ w ∈ L.reg a ∨ w ∈ L.reg b ∨ w ∈ L.reg t ∨ w ∈ L.reg c := by
  rw [sub, rippleSubtractor_wires]
  simp [ModLayout.adder, addWires_map, ModLayout.reg, List.mem_flatMap,
    List.mem_map, exists_or, and_or_left, eq_comm]

private theorem select_mem (L : ModLayout) (w : Wire) :
    w ∈ wires (selectXor L.selector L.high.diff) ↔
      w ∈ L.reg .diff ∨ w ∈ L.reg .total ∨ w ∈ L.reg .out := by
  have hn : L.selector ≠ [] := by simp [ModLayout.selector, ModLayout.bits]
  have he : wires (selectXor L.selector L.high.diff) =
      insert L.high.diff (selectWires L.selector).toFinset := by
    cases h : L.selector with
    | nil => exact False.elim (hn h)
    | cons b bs => exact selectXor_wires b bs L.high.diff
  rw [he]
  have hh := L.high_diff_mem
  simp only [Finset.mem_insert, List.mem_toFinset]
  have hs : w ∈ selectWires L.selector ↔
      w ∈ L.reg .diff ∨ w ∈ L.reg .total ∨ w ∈ L.reg .out := by
    simp [ModLayout.selector, selectWires_map, ModLayout.reg, ModBit.get,
      List.mem_flatMap, List.mem_map, exists_or, and_or_left, eq_comm]
  rw [hs]
  constructor
  · rintro (rfl | h)
    · exact Or.inl hh
    · exact h
  · exact Or.inr

private theorem layout_mem (L : ModLayout) (w : Wire) :
    w ∈ L.wires ↔ w = L.cinSum ∨ w = L.cinDiff ∨
      w ∈ L.reg .x ∨ w ∈ L.reg .y ∨ w ∈ L.reg .total ∨ w ∈ L.reg .modulus ∨
      w ∈ L.reg .diff ∨ w ∈ L.reg .out ∨ w ∈ L.reg .carrySum ∨ w ∈ L.reg .carryDiff := by
  simp [ModLayout.wires, ModLayout.reg, ModBit.all, ModBit.get,
    List.mem_flatMap, List.mem_map, exists_or, and_or_left, eq_comm]

theorem modAdd_wires (L : ModLayout) (q : Nat) :
    wires (modAdd L q) = L.wires.toFinset := by
  ext w
  have hk : w ∈ wires (xorConstant (L.reg .modulus) q) → w ∈ L.reg .modulus :=
    fun h => List.mem_toFinset.mp (xorConstant_wires_subset _ _ h)
  simp only [modAdd, wires_append, Finset.mem_union, add_mem, sub_mem, select_mem,
    List.mem_toFinset, layout_mem]
  tauto

theorem modSub_wires (L : ModLayout) (q : Nat) :
    wires (modSub L q) = L.wires.toFinset := by
  ext w
  have hk : w ∈ wires (xorConstant (L.reg .modulus) q) → w ∈ L.reg .modulus :=
    fun h => List.mem_toFinset.mp (xorConstant_wires_subset _ _ h)
  simp only [modSub, wires_append, Finset.mem_union, add_mem, sub_mem, select_mem,
    List.mem_toFinset, layout_mem]
  tauto

private theorem layout_length (L : ModLayout) : L.wires.length = 8 * (L.width + 1) + 2 := by
  have h (bs : List ModBit) : (bs.flatMap ModBit.all).length = 8 * bs.length := by
    induction bs with
    | nil => rfl
    | cons b bs ih => simp [ModBit.all, ih]; omega
  simp [ModLayout.wires, h, ModLayout.bits, ModLayout.width, ModBit.all]
  omega

/-- W = n+1：四次进位算术与一次选择，共 6W Toffoli、4W 测量、8W+2 根线路。 -/
theorem modAdd_resources (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat) :
    toffoliCount (modAdd L q) = 6 * (L.width + 1) ∧
    measurementCount (modAdd L q) = 4 * (L.width + 1) ∧
    qubitCount (modAdd L q) = 8 * (L.width + 1) + 2 := by
  have hq : qubitCount (modAdd L q) = 8 * (L.width + 1) + 2 := by
    rw [qubitCount, modAdd_wires, List.toFinset_card_of_nodup hnd, layout_length]
  refine ⟨?_, ?_, hq⟩ <;>
    simp [modAdd, toffoliCount_append, measurementCount_append, (xorConstant_counts _ _).1,
      (xorConstant_counts _ _).2, add, sub, rippleAdder_toffoliCount, rippleAdder_measurementCount,
      (rippleSubtractor_counts _ _).1, (rippleSubtractor_counts _ _).2,
      (selectXor_counts _ _).1, (selectXor_counts _ _).2,
      ModLayout.adder, ModLayout.selector, ModLayout.bits, ModLayout.width] <;> omega

theorem modSub_resources (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat) :
    toffoliCount (modSub L q) = 6 * (L.width + 1) ∧
    measurementCount (modSub L q) = 4 * (L.width + 1) ∧
    qubitCount (modSub L q) = 8 * (L.width + 1) + 2 := by
  have hq : qubitCount (modSub L q) = 8 * (L.width + 1) + 2 := by
    rw [qubitCount, modSub_wires, List.toFinset_card_of_nodup hnd, layout_length]
  refine ⟨?_, ?_, hq⟩ <;>
    simp [modSub, toffoliCount_append, measurementCount_append, (xorConstant_counts _ _).1,
      (xorConstant_counts _ _).2, add, sub, rippleAdder_toffoliCount, rippleAdder_measurementCount,
      (rippleSubtractor_counts _ _).1, (rippleSubtractor_counts _ _).2,
      (selectXor_counts _ _).1, (selectXor_counts _ _).2,
      ModLayout.adder, ModLayout.selector, ModLayout.bits, ModLayout.width] <;> omega

end ECDSAAdd.Arithmetic
