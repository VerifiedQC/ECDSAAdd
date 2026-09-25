import ECDSAAdd.Arithmetic.RegisterXor.Registers

namespace ECDSAAdd.Arithmetic

/-- 生成一个将 a 受控或无条件 XOR 到 b 的门，保留来源位 a。

参数：

- `control`：可选控制 wire；`none` 表示无条件执行，`some c` 表示只在 c=1 时更新目标。
- `a`：来源位的 wire，值保持。
- `b`：目标位的 wire，将对应来源值 XOR 到此位。
-/
def copyGate (control : Option Wire) (a b : Wire) : Instr :=
  match control with | none => Instr.CX a b | some c => Instr.CCX c a b

/-- 按位计算 dst ^= src；control=some c 时仅在 c=1 时更新，none 时无条件更新。
保留 src 和控制位；等长且线路互异时是完整寄存器 XOR，不等长时只处理共同前缀。
普通复制用 CX，受控复制用 CCX；只有 dst 初始为零时才得到源值的副本。

参数：

- `control`：可选控制 wire；`none` 表示无条件执行，`some c` 表示只在 c=1 时更新目标。
- `src`：小端来源寄存器，值保持。
- `dst`：小端 XOR 目标寄存器；与 src 按位置配对，不要求初值为零。
-/
def copyRegister (control : Option Wire) (src dst : List Wire) : Program := prog {
  for pair in (src.zip dst) {
    copyGate(control, pair.1, pair.2);  -- 目标位 ^= 源位；control=some c 时仅在 c=1 时更新。
  };
}

def copyValue (control : Option Wire) (st : BasisState) (X : Nat) : Nat :=
  match control with | none => X | some c => if st c then X else 0

private theorem copyRegister_nil (control : Option Wire) (dst : List Wire) :
    copyRegister control [] dst = [] := rfl

private theorem copyRegister_nil_right (control : Option Wire) (src : List Wire) :
    copyRegister control src [] = [] := by simp [copyRegister]

private theorem copyRegister_cons (control : Option Wire) (a b : Wire) (src dst : List Wire) :
    copyRegister control (a :: src) (b :: dst) =
      [copyGate control a b] ++ copyRegister control src dst := rfl

theorem copyRegister_correct (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length) (hnd : (src ++ dst).Nodup)
    (hc : ∀ c ∈ control, c ∉ dst) (s : State) (m : List Bool) :
    (run (copyRegister control src dst) m s).phase = s.phase ∧
    (∀ w, w ∉ dst → (run (copyRegister control src dst) m s).basis w = s.basis w) ∧
    regValue dst (run (copyRegister control src dst) m s).basis =
      regValue dst s.basis ^^^ copyValue control s.basis (regValue src s.basis) := by
  induction src generalizing dst s with
  | nil =>
    have hd : dst = [] := List.eq_nil_of_length_eq_zero hlen.symm
    subst dst
    cases control <;> simp [copyRegister_nil_right, copyValue, run, regValue]
  | cons a src ih =>
    cases dst with
    | nil => simp at hlen
    | cons b dst =>
      have hlen' : src.length = dst.length := by simpa using hlen
      obtain ⟨hs, hd, hsd⟩ := List.nodup_append'.mp hnd
      have hbs : b ∉ src := by
        intro h; exact List.disjoint_left.mp hsd (List.mem_cons_of_mem a h) (List.mem_cons_self)
      have hbd : b ∉ dst := (List.nodup_cons.mp hd).1
      have ht : (src ++ dst).Nodup :=
        List.nodup_append'.mpr ⟨(List.nodup_cons.mp hs).2, (List.nodup_cons.mp hd).2,
          List.disjoint_left.mpr (fun _ h₁ h₂ => List.disjoint_left.mp hsd (List.mem_cons_of_mem a h₁) (List.mem_cons_of_mem b h₂))⟩
      have hc' : ∀ c ∈ control, c ∉ dst := by
        intro c hm hd; exact hc c hm (by simp [hd])
      have hcb : ∀ c ∈ control, c ≠ b := by
        intro c hm he; exact hc c hm (by simp [he])
      let bit := match control with | none => s.basis a | some c => s.basis c && s.basis a
      let s1 : State := ⟨s.phase, writeBit s.basis b (s.basis b ^^ bit)⟩
      have hfirst : run [copyGate control a b] m s = s1 := by
        cases control <;> rfl
      have hm0 : measurementCount [copyGate control a b] = 0 := by
        cases control <;> rfl
      have hs1 (w : Wire) (hw : w ≠ b) : s1.basis w = s.basis w := by simp [s1, writeBit, hw]
      obtain ⟨hp, he, hv⟩ := ih dst hlen' ht hc' s1
      simp only [copyRegister_cons]
      rw [run_append, run_take, hm0, List.drop_zero, hfirst]
      refine ⟨hp, ?_, ?_⟩
      · intro w hw
        have hw' : w ≠ b ∧ w ∉ dst := by simpa only [List.mem_cons, not_or] using hw
        exact (he w hw'.2).trans (hs1 w hw'.1)
      · have hb := he b hbd
        have hsrc : regValue src s1.basis = regValue src s.basis :=
          regValue_congr _ _ _ (fun w hw => hs1 w (by intro h; exact hbs (h ▸ hw)))
        have hdst : regValue dst s1.basis = regValue dst s.basis :=
          regValue_congr _ _ _ (fun w hw => hs1 w (by intro h; exact hbd (h ▸ hw)))
        have hval : copyValue control s1.basis (regValue src s1.basis) =
            copyValue control s.basis (regValue src s.basis) := by
          rw [hsrc]
          cases control with
          | none => rfl
          | some c => simp only [copyValue, hs1 c (hcb c (by simp))]
        change (if (run (copyRegister control src dst) m s1).basis b then 1 else 0) +
          2 * regValue dst (run (copyRegister control src dst) m s1).basis = _
        rw [hb, hv, hdst, hval]
        have hx := xor_value_step (s.basis b) bit (regValue dst s.basis)
          (copyValue control s.basis (regValue src s.basis))
        have hvbit : bit.toNat + 2 * copyValue control s.basis (regValue src s.basis) =
            copyValue control s.basis (regValue (a :: src) s.basis) := by
          cases control with
          | none => simp [bit, copyValue, regValue, Bool.toNat]
          | some c => cases h : s.basis c <;> simp [bit, copyValue, regValue, Bool.toNat, Bool.cond_eq_ite, h]
        rw [hvbit] at hx
        simpa only [s1, writeBit, Function.update_self, regValue, List.foldr_cons,
          Bool.toNat, Bool.cond_eq_ite] using hx

theorem copyRegister_spec (src dst : List Wire) (hlen : src.length = dst.length)
    (hnd : (src ++ dst).Nodup) (X O : Nat) :
    {{ src = X, dst = O }} copyRegister none src dst {{ src = X, dst = (O ^^^ X) }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨hp, he, hv⟩ := copyRegister_correct none src dst hlen hnd (by simp) s m
  have hr := regValue_congr src (run (copyRegister none src dst) m s).basis s.basis
    (fun w hw => he w (List.disjoint_left.mp (List.nodup_append'.mp hnd).2.2 hw))
  exact ⟨hp, hr.trans h.1, by simpa only [copyValue, h.1, h.2] using hv⟩

theorem maskedCopy_spec (c : Wire) (src dst : List Wire) (hlen : src.length = dst.length)
    (hnd : (c :: (src ++ dst)).Nodup) (C : Bool) (X O : Nat) :
    {{ c = C, src = X, dst = O }} copyRegister (some c) src dst
    {{ c = C, src = X, dst = (O ^^^ (if C then X else 0)) }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hc : c ∉ dst := fun hw => (List.nodup_cons.mp hnd).1 (List.mem_append_right _ hw)
  obtain ⟨hp, he, hv⟩ := copyRegister_correct (some c) src dst hlen (List.nodup_cons.mp hnd).2
    (by simpa using hc) s m
  have hr := regValue_congr src (run (copyRegister (some c) src dst) m s).basis s.basis
    (fun w hw => he w (List.disjoint_left.mp (List.nodup_append'.mp (List.nodup_cons.mp hnd).2).2.2 hw))
  exact ⟨hp, ⟨(he c hc).trans h.1.1, hr.trans h.1.2⟩,
    by simpa only [copyValue, h.1.1, h.1.2, h.2] using hv⟩

theorem copyRegister_counts (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length) :
    toffoliCount (copyRegister control src dst) = (if control.isSome then src.length else 0) ∧
    measurementCount (copyRegister control src dst) = 0 := by
  induction src generalizing dst with
  | nil => cases dst <;> simp_all [copyRegister_nil_right, toffoliCount, measurementCount]
  | cons a src ih =>
    cases dst with
    | nil => simp at hlen
    | cons b dst =>
      have ht := ih dst (by simpa using hlen)
      cases control <;> simp_all [copyRegister_cons, copyGate, toffoliCount, measurementCount, Nat.add_comm]

theorem copyRegister_wires (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length) :
    wires (copyRegister control src dst) =
      if src.isEmpty then ∅ else (control.toList ++ src ++ dst).toFinset := by
  induction src generalizing dst with
  | nil => cases dst <;> simp_all [copyRegister_nil_right, wires]
  | cons a src ih =>
    cases dst with
    | nil => simp at hlen
    | cons b dst =>
      have ht := ih dst (by simpa using hlen)
      simp only [copyRegister_cons, wires_append, ht, List.isEmpty_cons, Bool.false_eq_true, if_false]
      cases src with
      | nil =>
        have hd : dst = [] := List.eq_nil_of_length_eq_zero (by simpa using hlen.symm)
        subst dst
        cases control <;> ext w <;> simp [copyGate, wires, Instr.wires]
      | cons a' src =>
        cases control <;> ext w <;> simp [copyGate, wires, Instr.wires] <;> tauto

theorem copyRegister_resources (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length) (hnd : (control.toList ++ src ++ dst).Nodup) :
    toffoliCount (copyRegister control src dst) = (if control.isSome then src.length else 0) ∧
    measurementCount (copyRegister control src dst) = 0 ∧
    qubitCount (copyRegister control src dst) =
      (if src.isEmpty then 0 else 2*src.length+control.toList.length) := by
  refine ⟨(copyRegister_counts control src dst hlen).1,
    (copyRegister_counts control src dst hlen).2, ?_⟩
  rw [qubitCount, copyRegister_wires control src dst hlen]
  split_ifs
  · rfl
  · rw [List.toFinset_card_of_nodup hnd]
    simp only [List.length_append, ← hlen]
    omega

end ECDSAAdd.Arithmetic
