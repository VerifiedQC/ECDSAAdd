import ECDSAAdd.Arithmetic.Copy
import ECDSAAdd.Arithmetic.ModularFrame

namespace ECDSAAdd.Arithmetic

/-- 复用模加工作区，向外部目标 XOR 写入两倍的模 q 值。 -/
def doubleXor (L : ModLayout) (q : Nat) (src dst : List Wire) : Program :=
  copyRegister none src L.x ++ copyRegister none src L.y ++ modAdd L q ++
  copyRegister none L.out dst ++ modAdd L q ++
  copyRegister none src L.y ++ copyRegister none src L.x

private def DoubleValues (L : ModLayout) (src dst : List Wire) (X O : Nat)
    (v : ModField → Nat) (st : BasisState) : Prop :=
  regValue src st = X ∧ regValue dst st = O ∧ ModValues L v st

private theorem external_disjoint (src dst : List Wire) (L : ModLayout)
    (hnd : (src ++ dst ++ L.wires).Nodup) : src.Disjoint L.wires ∧ dst.Disjoint L.wires := by
  have h := (List.nodup_append'.mp hnd).2.2
  exact ⟨List.disjoint_left.mpr (fun _ hs hl => List.disjoint_left.mp h (List.mem_append_left dst hs) hl),
    List.disjoint_left.mpr (fun _ hd hl => List.disjoint_left.mp h (List.mem_append_right src hd) hl)⟩

private theorem field_subset (L : ModLayout) (f : ModField) : L.reg f ⊆ L.wires :=
  fun _ hw => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (L.reg_mem f hw))

private theorem copy_into (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hlen : src.length = L.width+1)
    (X O : Nat) (v : ModField → Nat) (f : ModField) :
    Triple (DoubleValues L src dst X O v) (copyRegister none src (L.reg f))
      (DoubleValues L src dst X O (Function.update v f (v f ^^^ X))) := by
  intro s m hv
  obtain ⟨hs, hd⟩ := external_disjoint src dst L hnd
  have hl : L.wires.Nodup := (List.nodup_append'.mp hnd).2.1
  have hsr : src.Disjoint (L.reg f) :=
    List.disjoint_left.mpr (fun _ h₁ h₂ => List.disjoint_left.mp hs h₁ (field_subset L f h₂))
  have hc : (src ++ L.reg f).Nodup := List.nodup_append'.mpr
    ⟨(List.nodup_append'.mp (List.nodup_append'.mp hnd).1).1, L.reg_nodup hl f, hsr⟩
  obtain ⟨hp, he, hz⟩ := copyRegister_correct none src (L.reg f)
    (by rw [L.reg_length]; exact hlen) hc (by simp) s m
  refine ⟨hp, ?_, ?_, ModValues.update L hl v f _ s.basis _ hv.2.2 he ?_⟩
  · exact (regValue_congr _ _ _ (fun w hw => he w (List.disjoint_left.mp hsr hw))).trans hv.1
  · exact (regValue_congr _ _ _ (fun w hw => he w (fun h => List.disjoint_left.mp hd hw
      (field_subset L f h)))).trans hv.2.1
  · simpa only [copyValue, hv.1, hv.2.2.1 f] using hz

private theorem copy_out (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hlen : dst.length = L.width+1)
    (X O : Nat) (v : ModField → Nat) :
    Triple (DoubleValues L src dst X O v) (copyRegister none L.out dst)
      (DoubleValues L src dst X (O ^^^ v .out) v) := by
  intro s m hv
  obtain ⟨_, hd⟩ := external_disjoint src dst L hnd
  have hl : L.wires.Nodup := (List.nodup_append'.mp hnd).2.1
  have hsd : src.Disjoint dst := (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).2.2
  have ho : L.out.Disjoint dst := List.disjoint_left.mpr
    (fun _ h₁ h₂ => List.disjoint_left.mp hd h₂ (field_subset L .out h₁))
  have hc : (L.out ++ dst).Nodup := List.nodup_append'.mpr
    ⟨L.reg_nodup hl .out, (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).2.1, ho⟩
  obtain ⟨hp, he, hz⟩ := copyRegister_correct none L.out dst
    (by change (L.reg .out).length = _; rw [L.reg_length]; exact hlen.symm) hc (by simp) s m
  have hlwire (w : Wire) (hw : w ∈ L.wires) :
      (run (copyRegister none L.out dst) m s).basis w = s.basis w :=
    he w (fun h => List.disjoint_left.mp hd h hw)
  refine ⟨hp, ?_, ?_, ?_⟩
  · exact (regValue_congr _ _ _ (fun w hw => he w (List.disjoint_left.mp hsd hw))).trans hv.1
  · simpa only [copyValue, hv.2.1, show regValue L.out s.basis = v .out from hv.2.2.1 .out] using hz
  · refine ⟨fun f => (regValue_congr _ _ _ (fun w hw => hlwire w (field_subset L f hw))).trans
      (hv.2.2.1 f), ?_, ?_⟩
    · exact (hlwire L.cinSum (by simp [ModLayout.wires])).trans hv.2.2.2.1
    · exact (hlwire L.cinDiff (by simp [ModLayout.wires])).trans hv.2.2.2.2

private theorem work_zero (L : ModLayout) (v : ModField → Nat) (st : BasisState)
    (hv : ModValues L v st)
    (hc : ∀ f, f ≠ .x → f ≠ .y → f ≠ .out → v f = 0) : regValue L.work st = 0 := by
  apply (regValue_zero _ _).mpr
  intro w hw
  simp only [ModLayout.work, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with ((((ht | hm) | hd) | hcs) | hcd) | hci | hci
  · exact (regValue_zero _ _).mp ((hv.1 .total).trans (hc .total (by decide) (by decide) (by decide))) w ht
  · exact (regValue_zero _ _).mp ((hv.1 .modulus).trans (hc .modulus (by decide) (by decide) (by decide))) w hm
  · exact (regValue_zero _ _).mp ((hv.1 .diff).trans (hc .diff (by decide) (by decide) (by decide))) w hd
  · exact (regValue_zero _ _).mp ((hv.1 .carrySum).trans (hc .carrySum (by decide) (by decide) (by decide))) w hcs
  · exact (regValue_zero _ _).mp ((hv.1 .carryDiff).trans (hc .carryDiff (by decide) (by decide) (by decide))) w hcd
  · subst w; exact hv.2.1
  · subst w; exact hv.2.2

private theorem add_inside (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O q : Nat) (v : ModField → Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (hx : v .x < q) (hy : v .y < q)
    (hc : ∀ f, f ≠ .x → f ≠ .y → f ≠ .out → v f = 0) :
    Triple (DoubleValues L src dst X O v) (modAdd L q)
      (DoubleValues L src dst X O (Function.update v .out (v .out ^^^ ((v .x+v .y)%q)))) := by
  intro s m hv
  obtain ⟨hs, hd⟩ := external_disjoint src dst L hnd
  have hl : L.wires.Nodup := (List.nodup_append'.mp hnd).2.1
  obtain ⟨hp, he, hz⟩ := modAdd_correct L hl q hq0 hq s m
    (by simpa only [show regValue L.x s.basis = v .x from hv.2.2.1 .x] using hx)
    (by simpa only [show regValue L.y s.basis = v .y from hv.2.2.1 .y] using hy)
    (work_zero L v s.basis hv.2.2 hc)
  refine ⟨hp, ?_, ?_, ModValues.update L hl v .out _ s.basis _ hv.2.2 he ?_⟩
  · exact (regValue_congr _ _ _ (fun w hw => he w (fun h => List.disjoint_left.mp hs hw
      (field_subset L .out h)))).trans hv.1
  · exact (regValue_congr _ _ _ (fun w hw => he w (fun h => List.disjoint_left.mp hd hw
      (field_subset L .out h)))).trans hv.2.1
  · simpa only [show regValue L.x s.basis = v .x from hv.2.2.1 .x,
      show regValue L.y s.basis = v .y from hv.2.2.1 .y,
      show regValue L.out s.basis = v .out from hv.2.2.1 .out] using hz

private theorem zeros_iff (L : ModLayout) (st : BasisState) :
    ModValues L (fun _ => 0) st ↔ regValue L.wires st = 0 := by
  constructor
  · intro hv
    have hw := work_zero L (fun _ => 0) st hv (by intros; rfl)
    apply (regValue_zero _ _).mpr
    intro w hm
    have h := L.interface_perm.mem_iff.mpr hm
    simp only [List.mem_append] at h
    rcases h with ((hx | hy) | ho) | hwork
    · exact (regValue_zero _ _).mp (hv.1 .x) w hx
    · exact (regValue_zero _ _).mp (hv.1 .y) w hy
    · exact (regValue_zero _ _).mp (hv.1 .out) w ho
    · exact (regValue_zero _ _).mp hw w hwork
  · intro hw
    have hz := (regValue_zero _ _).mp hw
    refine ⟨fun f => (regValue_zero _ _).mpr (fun w hw => hz w (field_subset L f hw)), ?_, ?_⟩
    · exact hz L.cinSum (by simp [ModLayout.wires])
    · exact hz L.cinDiff (by simp [ModLayout.wires])

private theorem double_values (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q X O : Nat) (hq0 : 0 < q)
    (hq : q < 2^L.width) (hX : X < q) :
    Triple (DoubleValues L src dst X O (fun _ => 0)) (doubleXor L q src dst)
      (DoubleValues L src dst X (O ^^^ ((X+X)%q)) (fun _ => 0)) := by
  let v0 : ModField → Nat := fun _ => 0
  let v1 := Function.update v0 .x X
  let v2 := Function.update v1 .y X
  let S := (X+X)%q
  let v3 := Function.update v2 .out S
  let v4 := Function.update v3 .out 0
  let v5 := Function.update v4 .y 0
  let v6 := Function.update v5 .x 0
  have h0 : Triple (DoubleValues L src dst X O v0) (copyRegister none src L.x)
      (DoubleValues L src dst X O v1) := by
    simpa [v1, v0, ModLayout.x] using copy_into L src dst hnd hs X O v0 .x
  have h1 : Triple (DoubleValues L src dst X O v1) (copyRegister none src L.y)
      (DoubleValues L src dst X O v2) := by
    simpa [v2, v1, v0, ModLayout.y] using copy_into L src dst hnd hs X O v1 .y
  have h2 : Triple (DoubleValues L src dst X O v2) (modAdd L q)
      (DoubleValues L src dst X O v3) := by
    simpa [v3, v2, v1, v0, S] using add_inside L src dst hnd X O q v2 hq0 hq
      (by simpa [v2, v1, v0] using hX) (by simpa [v2, v1, v0] using hX)
      (by intro f hx hy _; simp [v2, v1, v0, hx, hy])
  have h3 : Triple (DoubleValues L src dst X O v3) (copyRegister none L.out dst)
      (DoubleValues L src dst X (O ^^^ S) v3) := by
    simpa [v3] using copy_out L src dst hnd hd X O v3
  have h4 : Triple (DoubleValues L src dst X (O ^^^ S) v3) (modAdd L q)
      (DoubleValues L src dst X (O ^^^ S) v4) := by
    simpa [v4, v3, v2, v1, v0, S] using add_inside L src dst hnd X (O ^^^ S) q v3 hq0 hq
      (by simpa [v3, v2, v1, v0] using hX) (by simpa [v3, v2, v1, v0] using hX)
      (by intro f hx hy ho; simp [v3, v2, v1, v0, hx, hy, ho])
  have h5 : Triple (DoubleValues L src dst X (O ^^^ S) v4) (copyRegister none src L.y)
      (DoubleValues L src dst X (O ^^^ S) v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModLayout.y] using copy_into L src dst hnd hs X (O ^^^ S) v4 .y
  have h6 : Triple (DoubleValues L src dst X (O ^^^ S) v5) (copyRegister none src L.x)
      (DoubleValues L src dst X (O ^^^ S) v6) := by
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

private theorem active_and_output (L : ModLayout) :
    L.activeWires.toFinset ∪ L.out.toFinset = L.wires.toFinset := by
  ext w
  simp [ModLayout.activeWires, ModLayout.out, ModLayout.reg, ModLayout.wires, ModLayout.bits,
    ModBit.all, ModBit.get, List.mem_flatMap, List.mem_map, exists_or, and_or_left, eq_comm]
  simp [or_left_comm, or_comm]

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
        by rw [active_and_output])
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
