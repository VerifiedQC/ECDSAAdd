import ECDSAAdd.Arithmetic.ModularXorSteps

namespace ECDSAAdd.Arithmetic

open ExternalMod

/-- 复用模加工作区，向外部目标 XOR 写入两倍的模 q 值。 -/
def doubleXor (L : ModLayout) (q : Nat) (src dst : List Wire) : Program :=
  copyRegister none src L.x ++ copyRegister none src L.y ++ modAdd L q ++
  copyRegister none L.out dst ++ modAdd L q ++
  copyRegister none src L.y ++ copyRegister none src L.x

private theorem add_inside (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O q : Nat) (v : ModField → Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (hx : v .x < q) (hy : v .y < q)
    (hc : ∀ f, f ≠ .x → f ≠ .y → f ≠ .out → v f = 0) :
    Triple (ExternalMod.Values L src dst X O v) (modAdd L q)
      (ExternalMod.Values L src dst X O (Function.update v .out (v .out ^^^ ((v .x+v .y)%q)))) :=
  ExternalMod.mod_add L src dst hnd X O q v hq0 hq (by omega) hc

private theorem double_values (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q X O : Nat) (hq0 : 0 < q)
    (hq : q < 2^L.width) (hX : X < q) :
    Triple (ExternalMod.Values L src dst X O (fun _ => 0)) (doubleXor L q src dst)
      (ExternalMod.Values L src dst X (O ^^^ ((X+X)%q)) (fun _ => 0)) := by
  let v0 : ModField → Nat := fun _ => 0
  let v1 := Function.update v0 .x X
  let v2 := Function.update v1 .y X
  let S := (X+X)%q
  let v3 := Function.update v2 .out S
  let v4 := Function.update v3 .out 0
  let v5 := Function.update v4 .y 0
  let v6 := Function.update v5 .x 0
  have h0 : Triple (ExternalMod.Values L src dst X O v0) (copyRegister none src L.x)
      (ExternalMod.Values L src dst X O v1) := by
    simpa [v1, v0, ModLayout.x] using copy_into L src dst hnd hs X O v0 .x
  have h1 : Triple (ExternalMod.Values L src dst X O v1) (copyRegister none src L.y)
      (ExternalMod.Values L src dst X O v2) := by
    simpa [v2, v1, v0, ModLayout.y] using copy_into L src dst hnd hs X O v1 .y
  have h2 : Triple (ExternalMod.Values L src dst X O v2) (modAdd L q)
      (ExternalMod.Values L src dst X O v3) := by
    simpa [v3, v2, v1, v0, S] using add_inside L src dst hnd X O q v2 hq0 hq
      (by simpa [v2, v1, v0] using hX) (by simpa [v2, v1, v0] using hX)
      (by intro f hx hy _; simp [v2, v1, v0, hx, hy])
  have h3 : Triple (ExternalMod.Values L src dst X O v3) (copyRegister none L.out dst)
      (ExternalMod.Values L src dst X (O ^^^ S) v3) := by
    simpa [v3] using copy_out L src dst hnd hd X O v3
  have h4 : Triple (ExternalMod.Values L src dst X (O ^^^ S) v3) (modAdd L q)
      (ExternalMod.Values L src dst X (O ^^^ S) v4) := by
    simpa [v4, v3, v2, v1, v0, S] using add_inside L src dst hnd X (O ^^^ S) q v3 hq0 hq
      (by simpa [v3, v2, v1, v0] using hX) (by simpa [v3, v2, v1, v0] using hX)
      (by intro f hx hy ho; simp [v3, v2, v1, v0, hx, hy, ho])
  have h5 : Triple (ExternalMod.Values L src dst X (O ^^^ S) v4) (copyRegister none src L.y)
      (ExternalMod.Values L src dst X (O ^^^ S) v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModLayout.y] using copy_into L src dst hnd hs X (O ^^^ S) v4 .y
  have h6 : Triple (ExternalMod.Values L src dst X (O ^^^ S) v5) (copyRegister none src L.x)
      (ExternalMod.Values L src dst X (O ^^^ S) v6) := by
    simpa [v6, v5, v4, v3, v2, v1, v0, ModLayout.x] using copy_into L src dst hnd hs X (O ^^^ S) v5 .x
  have hv6 : v6 = v0 := by
    funext f; cases f <;> simp [v6, v5, v4, v3, v2, v1, v0]
  have h := h0.seq (h1.seq (h2.seq (h3.seq (h4.seq (h5.seq h6)))))
  simpa only [doubleXor, List.append_assoc, hv6, v0, S] using h

/-- 外部源保持，任意目标按模加倍结果 XOR 更新，整份借用工作区归零。 -/
theorem doubleXor_spec (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q X O : Nat) (hq0 : 0 < q)
    (hq : q < 2^L.width) (hX : X < q) :
    {{ src = X, dst = O, L.wires = 0 }} doubleXor L q src dst
    {{ src = X, dst = (O ^^^ ((X+X)%q)), L.wires = 0 }} :=
  Triple.conseq (fun st h => ⟨h.1.1, h.1.2, (zeros_iff L st).mpr h.2⟩)
    (double_values L src dst hnd hs hd q X O hq0 hq hX)
    (fun st h => ⟨⟨h.1, h.2.1⟩, (zeros_iff L st).mp h.2.2⟩)

theorem doubleXor_wires (L : ModLayout) (src dst : List Wire) (q : Nat)
    (hs : src.length = L.width+1) (hd : dst.length = L.width+1) :
    wires (doubleXor L q src dst) = (src ++ dst ++ L.wires).toFinset := by
  have hx : src.length = L.x.length := by rw [ModLayout.x, L.reg_length]; exact hs
  have hy : src.length = L.y.length := by rw [ModLayout.y, L.reg_length]; exact hs
  have ho : L.out.length = dst.length := by rw [ModLayout.out, L.reg_length]; exact hd.symm
  have hsne : src.isEmpty = false := by
    cases src <;> simp_all
  have hone : L.out.isEmpty = false := by
    have h := L.reg_length .out
    cases he : L.out with
    | nil => change L.out.length = _ at h; rw [he] at h; simp at h
    | cons b bs => rfl
  have hcx := copyRegister_wires none src L.x hx
  have hcy := copyRegister_wires none src L.y hy
  have hco := copyRegister_wires none L.out dst ho
  simp only [hsne, hone, Bool.false_eq_true, if_false, Option.toList_none, List.nil_append] at hcx hcy hco
  ext w
  have hxa : w ∈ L.x → w ∈ L.wires := fun h => field_subset L .x h
  have hya : w ∈ L.y → w ∈ L.wires := fun h => field_subset L .y h
  have hall : w ∈ L.activeWires ∨ w ∈ L.out ↔ w ∈ L.wires := by
    simpa only [Finset.mem_union, List.mem_toFinset] using
      (show w ∈ L.activeWires.toFinset ∪ L.out.toFinset ↔ w ∈ L.wires.toFinset from
        by rw [modActive_output])
  simp only [doubleXor, wires_append, hcx, hcy, hco, modAdd_wires,
    Finset.mem_union, List.mem_toFinset, List.mem_append]
  tauto

theorem doubleXor_correct (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q : Nat) (hq0 : 0 < q) (hq : q < 2^L.width)
    (s : State) (m : List Bool) (hX : regValue src s.basis < q)
    (hw : regValue L.wires s.basis = 0) :
    (run (doubleXor L q src dst) m s).phase = s.phase ∧
    (∀ w, w ∉ dst → (run (doubleXor L q src dst) m s).basis w = s.basis w) ∧
    regValue dst (run (doubleXor L q src dst) m s).basis = regValue dst s.basis ^^^
      ((regValue src s.basis + regValue src s.basis)%q) := by
  obtain ⟨hp, h⟩ := doubleXor_spec L src dst hnd hs hd q _ _ hq0 hq hX s m ⟨⟨rfl, rfl⟩, hw⟩
  refine ⟨hp, ?_, h.1.2⟩
  intro w hn
  by_cases hsrc : w ∈ src
  · exact (regValue_eq_iff _ _ _).mp h.1.1 w hsrc
  by_cases hL : w ∈ L.wires
  · exact ((regValue_zero _ _).mp h.2 w hL).trans ((regValue_zero _ _).mp hw w hL).symm
  · apply run_preserves_outside
    rw [doubleXor_wires L src dst q hs hd]
    simpa only [List.mem_toFinset, List.mem_append, not_or] using ⟨⟨hsrc, hn⟩, hL⟩

theorem doubleXor_resources (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q : Nat) :
    toffoliCount (doubleXor L q src dst) = 10*L.width+8 ∧
    measurementCount (doubleXor L q src dst) = 8*(L.width+1) ∧
    qubitCount (doubleXor L q src dst) = 10*(L.width+1)+2 := by
  have hl : L.wires.Nodup := (List.nodup_append'.mp hnd).2.1
  have hx : src.length = L.x.length := by rw [ModLayout.x, L.reg_length]; exact hs
  have hy : src.length = L.y.length := by rw [ModLayout.y, L.reg_length]; exact hs
  have ho : L.out.length = dst.length := by rw [ModLayout.out, L.reg_length]; exact hd.symm
  have cx := copyRegister_counts none src L.x hx
  have cy := copyRegister_counts none src L.y hy
  have co := copyRegister_counts none L.out dst ho
  have ha := modAdd_resources L hl q
  refine ⟨?_, ?_, ?_⟩
  · simp only [doubleXor, toffoliCount_append, cx.1, cy.1, co.1, ha.1, Option.isSome_none, Bool.false_eq_true, if_false]; omega
  · simp only [doubleXor, measurementCount_append, cx.2, cy.2, co.2, ha.2.1]; omega
  · rw [qubitCount, doubleXor_wires L src dst q hs hd, List.toFinset_card_of_nodup hnd]
    have h (bs : List ModBit) : (bs.flatMap ModBit.all).length = 8*bs.length := by
      induction bs with
      | nil => rfl
      | cons b bs ih => simp [ModBit.all, ih]; omega
    simp [List.length_append, hs, hd, ModLayout.wires, h, ModLayout.bits, ModLayout.width, ModBit.all]
    omega

end ECDSAAdd.Arithmetic
