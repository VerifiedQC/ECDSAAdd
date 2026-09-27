import ECDSAAdd.Arithmetic.RegisterXor.Copy

namespace ECDSAAdd.Arithmetic
open Instr

/-- 两个候选值与输出位，均按小端排列。 -/
structure SelectBit where
  no : Wire
  yes : Wire
  out : Wire

def selectWires : List SelectBit → List Wire
  | [] => []
  | b :: bs => b.no :: b.yes :: b.out :: selectWires bs

/-- out ^= (flag=0 ? no : yes)，bs 是逐位的 no/yes/out 接线。 -/
def selectXor (bs : List SelectBit) (flag : Wire) : Program := prog {
  for b in bs {
    CX b.no b.out;
    CX b.yes b.no;
    CCX flag b.no b.out;
    CX b.yes b.no;
  };
}

private theorem selectXor_nil (flag : Wire) : selectXor [] flag = [] := rfl

private theorem selectXor_cons (b : SelectBit) (bs : List SelectBit) (flag : Wire) :
    selectXor (b :: bs) flag =
      [Instr.CX b.no b.out, Instr.CX b.yes b.no, Instr.CCX flag b.no b.out,
        Instr.CX b.yes b.no] ++ selectXor bs flag := rfl

private theorem mem_selectWires {bs : List SelectBit} {b : SelectBit} (hb : b ∈ bs) :
    b.no ∈ selectWires bs ∧ b.yes ∈ selectWires bs ∧ b.out ∈ selectWires bs := by
  induction bs with
  | nil => simp at hb
  | cons a bs ih =>
    rcases List.mem_cons.mp hb with rfl | hb
    · simp [selectWires]
    · obtain ⟨hn, hy, ho⟩ := ih hb
      simp [selectWires, hn, hy, ho]

private theorem selectStep_correct (a b out flag : Wire)
    (ha : a ≠ out) (hb : b ≠ out) (hab : a ≠ b) (hf : flag ≠ out) (hfa : flag ≠ a)
    (s : State) (m : List Bool) :
    run (prog { Instr.CX a out; Instr.CX b a; Instr.CCX flag a out; Instr.CX b a }) m s =
      ⟨s.phase, writeBit s.basis out (s.basis out ^^ (if s.basis flag then s.basis b else s.basis a))⟩ := by
  simp only [run]
  apply congrArg (State.mk s.phase)
  funext w
  by_cases hw : w = out
  · subst w
    simp only [writeBit, Function.update_self, Function.update_of_ne ha,
      Function.update_of_ne hb, Function.update_of_ne hf, Function.update_of_ne hfa,
      Function.update_of_ne (Ne.symm ha), Function.update_of_ne (Ne.symm hab)]
    cases s.basis flag <;> cases s.basis a <;> cases s.basis b <;> cases s.basis out <;> rfl
  · by_cases hw' : w = a
    · subst w
      simp only [writeBit, Function.update_self, Function.update_of_ne ha,
        Function.update_of_ne hb, Function.update_of_ne (Ne.symm hab)]
      cases s.basis a <;> cases s.basis b <;> rfl
    · simp [writeBit, hw, hw']

/-- 两个输入寄存器和选择位保持，任意输出初值按选择结果 XOR 更新。 -/
theorem selectXor_correct (bs : List SelectBit) (flag : Wire)
    (hnd : (selectWires bs).Nodup) (hflag : flag ∉ selectWires bs)
    (s : State) (m : List Bool) :
    (run (selectXor bs flag) m s).phase = s.phase ∧
    (∀ w, w ∉ bs.map SelectBit.out → (run (selectXor bs flag) m s).basis w = s.basis w) ∧
    regValue (bs.map SelectBit.out) (run (selectXor bs flag) m s).basis =
      regValue (bs.map SelectBit.out) s.basis ^^^
        (if s.basis flag then regValue (bs.map SelectBit.yes) s.basis
         else regValue (bs.map SelectBit.no) s.basis) := by
  induction bs generalizing s with
  | nil => simp [selectXor_nil, run, regValue]
  | cons b bs ih =>
    simp only [selectWires, List.nodup_cons, List.mem_cons, not_or] at hnd
    obtain ⟨⟨hny, hno, hnr⟩, ⟨hyo, hyr⟩, hor, hr⟩ := hnd
    have hf : flag ≠ b.no ∧ flag ≠ b.yes ∧ flag ≠ b.out ∧ flag ∉ selectWires bs := by
      simpa only [selectWires, List.mem_cons, not_or] using hflag
    let s1 : State := ⟨s.phase, writeBit s.basis b.out
      (s.basis b.out ^^ (if s.basis flag then s.basis b.yes else s.basis b.no))⟩
    have hs1 (w : Wire) (hw : w ∈ selectWires bs) : s1.basis w = s.basis w := by
      have hn : w ≠ b.out := by intro h; apply hor; simpa [h] using hw
      simp [s1, writeBit, hn]
    let t := run (selectXor bs flag) m s1
    obtain ⟨hp, he, hv⟩ := ih hr hf.2.2.2 s1
    have ho : b.out ∉ bs.map SelectBit.out := by
      intro hw
      obtain ⟨d, hd, heq⟩ := List.mem_map.mp hw
      exact hor (heq ▸ (mem_selectWires hd).2.2)
    have htO : t.basis b.out = s1.basis b.out := he _ ho
    simp only [selectXor_cons, run_append, run_take]
    rw [selectStep_correct _ _ _ _ hno hyo hny hf.2.2.1 hf.1]
    change (run (selectXor bs flag) (m.drop 0) s1).phase = _ ∧ _
    rw [List.drop_zero]
    refine ⟨hp, ?_, ?_⟩
    · intro w hw
      have hw' : w ≠ b.out ∧ w ∉ bs.map SelectBit.out := by
        simpa only [List.map_cons, List.mem_cons, not_or] using hw
      have ht : t.basis w = s1.basis w := he _ hw'.2
      change t.basis w = _
      rw [ht]
      simp [s1, writeBit, hw'.1]
    · have hread (f : SelectBit → Wire) (hf : ∀ d ∈ bs, f d ∈ selectWires bs) :
          regValue (bs.map f) s1.basis = regValue (bs.map f) s.basis :=
        regValue_congr _ _ _ (by
          intro w hw
          obtain ⟨d, hd, rfl⟩ := List.mem_map.mp hw
          exact hs1 _ (hf d hd))
      have hn' := hread SelectBit.no (fun d hd => (mem_selectWires hd).1)
      have hy' := hread SelectBit.yes (fun d hd => (mem_selectWires hd).2.1)
      have ho' := hread SelectBit.out (fun d hd => (mem_selectWires hd).2.2)
      have hf' : s1.basis flag = s.basis flag := by simp [s1, writeBit, hf.2.2.1]
      change (if t.basis b.out then 1 else 0) + 2 * regValue (bs.map SelectBit.out) t.basis = _
      rw [htO, hv, hn', hy', ho', hf']
      simp only [s1, writeBit, Function.update_self, List.map_cons]
      have hx (choice : Bool) (rest : Nat) := xor_value_step (s.basis b.out) choice
        (regValue (bs.map SelectBit.out) s.basis) rest
      cases h : s.basis flag
      · simpa only [h, Bool.false_eq_true, if_false, regValue, List.foldr_cons,
          Bool.toNat, Bool.cond_eq_ite] using hx (s.basis b.no) (regValue (bs.map SelectBit.no) s.basis)
      · simpa only [h, if_true, regValue, List.foldr_cons,
          Bool.toNat, Bool.cond_eq_ite] using hx (s.basis b.yes) (regValue (bs.map SelectBit.yes) s.basis)

/-- 每位一次 Toffoli，整个选择没有测量。 -/
theorem selectXor_counts (bs : List SelectBit) (flag : Wire) :
    toffoliCount (selectXor bs flag) = bs.length ∧
    measurementCount (selectXor bs flag) = 0 := by
  induction bs with
  | nil => exact ⟨rfl, rfl⟩
  | cons b bs ih =>
    simp only [selectXor_cons, toffoliCount_append, measurementCount_append,
      toffoliCount, measurementCount, List.length_cons, ih.1, ih.2]
    exact ⟨by omega, trivial⟩

/-- 非空选择的支持集是输入、输出线路与选择位的并集。 -/
theorem selectXor_wires (b : SelectBit) (bs : List SelectBit) (flag : Wire) :
    wires (selectXor (b :: bs) flag) = insert flag (selectWires (b :: bs)).toFinset := by
  induction bs generalizing b with
  | nil =>
    ext w
    simp [selectXor_nil, selectXor_cons, wires, Instr.wires, selectWires]
    tauto
  | cons c cs ih =>
    rw [selectXor_cons, wires_append, ih]
    ext w
    simp [wires, Instr.wires, selectWires]
    tauto

/-- out ^= (flag=0 ? whenZero : whenOne)，三个寄存器等长。 -/
def chooseXor (flag : Wire) (whenZero whenOne out : List Wire) : Program :=
  selectXor (List.zipWith (fun ab o => ⟨ab.1, ab.2, o⟩) (whenZero.zip whenOne) out) flag

/-- 优化选择与两个独立的互补受控 XOR 有相同的完整状态效果。
要求源、目标及控制互异；输出可以是任意初值，不依赖测量结果。 -/
theorem selectXor_controls_equiv (bs : List SelectBit) (flag : Wire)
    (hnd : (selectWires bs).Nodup) (hflag : flag ∉ selectWires bs)
    (s : State) (m : List Bool) :
    run (selectXor bs flag) m s = run (prog {
      CXor (flag XOR 1) (bs.map SelectBit.out) (bs.map SelectBit.no);
      CXor flag (bs.map SelectBit.out) (bs.map SelectBit.yes);
    }) m s := by
  let a := bs.map SelectBit.no
  let b := bs.map SelectBit.yes
  let o := bs.map SelectBit.out
  have counts (xs : List SelectBit) (w : Wire) :
      (selectWires xs).count w = (xs.map SelectBit.no).count w +
        (xs.map SelectBit.yes).count w + (xs.map SelectBit.out).count w := by
    induction xs with
    | nil => rfl
    | cons x xs ih => simp only [selectWires, List.map_cons, List.count_cons, ih]; omega
  have ha : (a ++ o).Nodup := by
    apply List.nodup_iff_count.mpr
    intro w
    have h := List.nodup_iff_count.mp hnd w
    rw [counts] at h
    simp only [List.count_append]
    change (bs.map SelectBit.no).count w + (bs.map SelectBit.out).count w ≤ 1
    omega
  have hb : (b ++ o).Nodup := by
    apply List.nodup_iff_count.mpr
    intro w
    have h := List.nodup_iff_count.mp hnd w
    rw [counts] at h
    simp only [List.count_append]
    change (bs.map SelectBit.yes).count w + (bs.map SelectBit.out).count w ≤ 1
    omega
  have hf : flag ∉ o := by
    intro h
    obtain ⟨x, hx, he⟩ := List.mem_map.mp h
    exact hflag (he ▸ (mem_selectWires hx).2.2)
  have hctrl : ∀ c ∈ some flag, c ∉ o := by simpa using hf
  have had := (List.nodup_append'.mp ha).2.2
  have hbd := (List.nodup_append'.mp hb).2.2
  let s₀ := run (copyRegister none a o) m s
  let s₁ := run (copyRegister (some flag) a o) m s₀
  let s₂ := run (copyRegister (some flag) b o) m s₁
  obtain ⟨hp₀, he₀, hv₀⟩ := copyRegister_correct none a o
    (by simp [a, o]) ha (by simp) s m
  obtain ⟨hp₁, he₁, hv₁⟩ := copyRegister_correct (some flag) a o
    (by simp [a, o]) ha hctrl s₀ m
  obtain ⟨hp₂, he₂, hv₂⟩ := copyRegister_correct (some flag) b o
    (by simp [b, o]) hb hctrl s₁ m
  have hfa : s₀.basis flag = s.basis flag := he₀ flag hf
  have hfb : s₁.basis flag = s.basis flag := (he₁ flag hf).trans hfa
  have hva : regValue a s₀.basis = regValue a s.basis :=
    regValue_congr _ _ _ (fun w hw => he₀ w (List.disjoint_left.mp had hw))
  have hvb : regValue b s₁.basis = regValue b s.basis :=
    regValue_congr _ _ _ (fun w hw =>
      (he₁ w (List.disjoint_left.mp hbd hw)).trans (he₀ w (List.disjoint_left.mp hbd hw)))
  change regValue o s₀.basis = _ at hv₀
  change regValue o s₁.basis = _ at hv₁
  change regValue o s₂.basis = _ at hv₂
  simp only [copyValue] at hv₀ hv₁ hv₂
  rw [hv₁, hv₀, hfa, hfb, hva, hvb] at hv₂
  have hv : regValue o s₂.basis = regValue o s.basis ^^^
      (if s.basis flag then regValue b s.basis else regValue a s.basis) := by
    cases h : s.basis flag <;> simpa [h, Nat.xor_assoc] using hv₂
  obtain ⟨hp, he, hz⟩ := selectXor_correct bs flag hnd hflag s m
  have hr : run (prog {
      CXor (flag XOR 1) o a;
      CXor flag o b;
    }) m s = s₂ := by
    rw [run_append, run_take, run_append, run_take]
    simp only [
      (copyRegister_counts none a o (by simp [a, o])).2,
      (copyRegister_counts (some flag) a o (by simp [a, o])).2,
      measurementCount_append, Nat.zero_add, List.drop_zero]
    rfl
  change run (selectXor bs flag) m s = run (prog {
    CXor (flag XOR 1) o a; CXor flag o b;
  }) m s
  rw [hr]
  have hphase : (run (selectXor bs flag) m s).phase = s₂.phase :=
    hp.trans (hp₂.trans (hp₁.trans hp₀)).symm
  have hbasis : (run (selectXor bs flag) m s).basis = s₂.basis := by
    funext w
    by_cases hw : w ∈ o
    · exact (regValue_eq_iff o _ _).mp (hz.trans hv.symm) w hw
    · exact (he w hw).trans ((he₂ w hw).trans ((he₁ w hw).trans (he₀ w hw))).symm
  exact congrArg₂ State.mk hphase hbasis

end ECDSAAdd.Arithmetic
