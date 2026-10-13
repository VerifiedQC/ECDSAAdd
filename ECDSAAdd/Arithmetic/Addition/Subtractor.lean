import ECDSAAdd.Arithmetic.Addition.RippleAdder

namespace ECDSAAdd.Arithmetic
open GateProof

/-- n 位减法的 XOR 输出，n 是逐位布局列表 bs 的长度：out ^= (x−y) mod 2^n。
x/y/out/carry 分别由 bs 中对应字段组成；要求线路互异，cin、carry 初始为零并在结束后恢复。
输入 x/y 保持；通过 x + NOT y + 1 计算，前后的 X 层恢复 y 和 cin。

参数：

- `bs`：从最低位到最高位的逐位布局；每项的 x 是被减数位，y 是减数位，out 是差的 XOR 输出位，carry 是零进位工作位。
- `cin`：最低进位工作 wire，初始为 0；内部暂置 1 以计算补码减法，结束后清零。
-/
def rippleSubtractor (bs : List AddBit) (cin : Wire) : Program :=
  notRegister (bs.map AddBit.y ++ [cin]) ++ rippleAdder bs cin ++
    notRegister (bs.map AddBit.y ++ [cin])

private theorem y_sublist (bs : List AddBit) : List.Sublist (bs.map AddBit.y) (addWires bs) := by
  induction bs with
  | nil => exact List.Sublist.refl _
  | cons b bs ih => exact (((ih.cons b.carry).cons b.out).cons₂ b.y).cons b.x

private theorem not_y (bs : List AddBit) (hnd : (addWires bs).Nodup) :
    ∀ b ∈ bs, b.x ∉ bs.map AddBit.y ∧ b.out ∉ bs.map AddBit.y ∧
      b.carry ∉ bs.map AddBit.y := by
  induction bs with
  | nil => simp
  | cons a bs ih =>
    simp only [addWires, List.nodup_cons, List.mem_cons, not_or] at hnd
    obtain ⟨⟨hxy, hxo, hxk, hxr⟩, ⟨hyo, hyk, hyr⟩, ⟨hok, hor⟩, hkr, hr⟩ := hnd
    have hn (w : Wire) (h : w ∉ addWires bs) : w ∉ bs.map AddBit.y :=
      fun hw => h ((y_sublist bs).subset hw)
    intro b hb
    rcases List.mem_cons.mp hb with rfl | hb
    · simp [hn _ hxr, hn _ hor, hn _ hkr, hxy, Ne.symm hyo, Ne.symm hyk]
    · obtain ⟨hx, ho, hk⟩ := ih hr b hb
      obtain ⟨hx', _, ho', hk'⟩ := mem_addWires hb
      have hxy' : b.x ≠ a.y := by intro h; apply hyr; simpa [h] using hx'
      have hoy' : b.out ≠ a.y := by intro h; apply hyr; simpa [h] using ho'
      have hky' : b.carry ≠ a.y := by intro h; apply hyr; simpa [h] using hk'
      simp [hx, ho, hk, hxy', hoy', hky']

/-! Auxiliary rules for complement, addition, and restoration. -/
namespace SubtractorProof

private def flipped (bs : List AddBit) (cin : Wire) (initial : BasisState) : BasisState :=
  fun w => if w ∈ bs.map AddBit.y ++ [cin] then !initial w else initial w

private def frame (bs : List AddBit) (initial final : BasisState) : Prop :=
  ∀ w, w ∉ bs.map AddBit.out → final w = initial w

private theorem flipped_wiring (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) :
    (bs.map AddBit.y ++ [cin]).Nodup ∧
      (∀ b ∈ bs, b.x ∉ bs.map AddBit.y ++ [cin] ∧
        b.out ∉ bs.map AddBit.y ++ [cin] ∧ b.carry ∉ bs.map AddBit.y ++ [cin]) ∧
      (∀ w ∈ bs.map AddBit.y ++ [cin], w ∉ bs.map AddBit.out) := by
  obtain ⟨hcw, hn⟩ := List.nodup_cons.mp hnd
  have hcy : cin ∉ bs.map AddBit.y := fun h => hcw ((y_sublist bs).subset h)
  have hr : (bs.map AddBit.y ++ [cin]).Nodup := by
    have hd : ∀ b ∈ bs, b.y ≠ cin := by
      intro b hb he
      exact hcy (he ▸ List.mem_map.mpr ⟨b, hb, rfl⟩)
    simpa [List.nodup_append] using And.intro ((y_sublist bs).nodup hn) hd
  refine ⟨hr, ?_, ?_⟩
  · intro b hb
    obtain ⟨hx', ho', hk'⟩ := not_y bs hn b hb
    obtain ⟨hxw, _, how, hkw⟩ := mem_addWires hb
    have hxc : b.x ≠ cin := fun h => hcw (h ▸ hxw)
    have hoc : b.out ≠ cin := fun h => hcw (h ▸ how)
    have hkc : b.carry ≠ cin := fun h => hcw (h ▸ hkw)
    simp [hx', ho', hk', hxc, hoc, hkc]
  · intro w hw
    rcases List.mem_append.mp hw with hw | hw
    · obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hw
      exact (inputs_not_output bs hn b hb).2.1
    · have he : w = cin := by simpa using hw
      subst w
      intro hw
      obtain ⟨b, hb, he⟩ := List.mem_map.mp hw
      exact hcw (he ▸ (mem_addWires hb).2.2.1)

private theorem complement_value (bs : List AddBit) (cin : Wire) (initial : BasisState) :
    regValue (bs.map AddBit.y) (flipped bs cin initial) =
      2^bs.length - 1 - regValue (bs.map AddBit.y) initial := by
  rw [regValue_congr _ _ (fun w => !initial w) (by
    intro w hw
    simp [flipped, hw]), regValue_complement, List.length_map]

private theorem complement_step (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (initial : BasisState) (hc : initial cin = false) :
    Triple (fun st => st = initial) (notRegister (bs.map AddBit.y ++ [cin]))
      (fun st => (regValue (bs.map AddBit.y) st =
          2^bs.length - 1 - regValue (bs.map AddBit.y) initial ∧ st cin = true) ∧
        st = flipped bs cin initial) := by
  intro s m hs
  rw [notRegister_correct _ (flipped_wiring bs cin hnd).1, hs]
  exact ⟨rfl, ⟨complement_value bs cin initial, by simp [hc]⟩, rfl⟩

private theorem add_complement_step (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (initial : BasisState)
    (hclean : ∀ b ∈ bs, initial b.carry = false) :
    Triple
      (fun st => (regValue (bs.map AddBit.y) st =
          2^bs.length - 1 - regValue (bs.map AddBit.y) initial ∧ st cin = true) ∧
        st = flipped bs cin initial)
      (rippleAdder bs cin)
      (fun st => frame bs (flipped bs cin initial) st ∧
        regValue (bs.map AddBit.out) st = regValue (bs.map AddBit.out) initial ^^^
          ((regValue (bs.map AddBit.x) initial + 2^bs.length -
              regValue (bs.map AddBit.y) initial) % 2^bs.length)) := by
  intro s m hs
  have hnot := (flipped_wiring bs cin hnd).2.1
  have hread (f : AddBit → Wire) (h : ∀ b ∈ bs, f b ∉ bs.map AddBit.y ++ [cin]) :
      regValue (bs.map f) s.basis = regValue (bs.map f) initial :=
    regValue_congr _ _ _ (by
      intro w hw
      obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hw
      simp [hs.2, flipped, h b hb])
  have hx := hread AddBit.x (fun b hb => (hnot b hb).1)
  have ho := hread AddBit.out (fun b hb => (hnot b hb).2.1)
  have clean : ∀ b ∈ bs, s.basis b.carry = false := by
    intro b hb
    simpa [hs.2, flipped, (hnot b hb).2.2] using hclean b hb
  obtain ⟨hp, hsame, hsum⟩ := rippleAdder_xor_correct bs cin hnd s m clean
  refine ⟨hp, ?_, ?_⟩
  · simpa only [frame, hs.2] using hsame
  · have bound : regValue (bs.map AddBit.y) initial < 2^bs.length := by
      simpa using regValue_lt (bs.map AddBit.y) initial
    have arithmetic : regValue (bs.map AddBit.x) initial +
          (2^bs.length - 1 - regValue (bs.map AddBit.y) initial) + 1 =
        regValue (bs.map AddBit.x) initial + 2^bs.length - regValue (bs.map AddBit.y) initial := by
      omega
    simpa only [hx, ho, hs.1.1, hs.1.2, Bool.toNat_true, arithmetic] using hsum

private theorem restore_step (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (initial : BasisState) (D : Nat) :
    Triple (fun st => frame bs (flipped bs cin initial) st ∧ regValue (bs.map AddBit.out) st = D)
      (notRegister (bs.map AddBit.y ++ [cin]))
      (fun st => frame bs initial st ∧ regValue (bs.map AddBit.out) st = D) := by
  intro s m hs
  obtain ⟨hr, _, hrout⟩ := flipped_wiring bs cin hnd
  rw [notRegister_correct _ hr]
  refine ⟨rfl, ?_, ?_⟩
  · intro w hw
    change (if w ∈ bs.map AddBit.y ++ [cin] then !s.basis w else s.basis w) = initial w
    rw [hs.1 w hw]
    by_cases hwr : w ∈ bs.map AddBit.y ++ [cin] <;> simp [flipped, hwr]
  · rw [regValue_congr _ _ s.basis (by
      intro w hw
      have hwr : w ∉ bs.map AddBit.y ++ [cin] := fun h => hrout w h hw
      simp [hwr])]
    exact hs.2

end SubtractorProof

/-- 任意输出初值的 XOR 减法，所有非输出线路均恢复。 -/
theorem rippleSubtractor_xor_correct (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (s : State) (m : List Bool)
    (hc : s.basis cin = false) (hclean0 : ∀ b ∈ bs, s.basis b.carry = false) :
    (run (rippleSubtractor bs cin) m s).phase = s.phase ∧
    (∀ w, w ∉ bs.map AddBit.out → (run (rippleSubtractor bs cin) m s).basis w = s.basis w) ∧
    regValue (bs.map AddBit.out) (run (rippleSubtractor bs cin) m s).basis =
      regValue (bs.map AddBit.out) s.basis ^^^
      ((regValue (bs.map AddBit.x) s.basis + 2^bs.length - regValue (bs.map AddBit.y) s.basis) %
        2^bs.length) := by
  let X := regValue (bs.map AddBit.x) s.basis
  let Y := regValue (bs.map AddBit.y) s.basis
  let O := regValue (bs.map AddBit.out) s.basis
  let D := O ^^^ ((X + 2^bs.length - Y) % 2^bs.length)
  let complemented := SubtractorProof.flipped bs cin s.basis
  have prepare := SubtractorProof.complement_step bs cin hnd s.basis hc
  have add_complement := SubtractorProof.add_complement_step bs cin hnd s.basis hclean0
  have restore := SubtractorProof.restore_step bs cin hnd s.basis D
  have derivation := hoare_steps {
    Precondition { satisfies (fun st => st = s.basis) };

    after command { call (notRegister (bs.map AddBit.y ++ [cin])); }
    get { bs.map AddBit.y=(2^bs.length - 1 - Y), cin=true, satisfies (fun st => st = complemented) } by exact prepare;

    after command { call (rippleAdder bs cin); }
    get { satisfies (SubtractorProof.frame bs complemented), bs.map AddBit.out=D } by exact add_complement;

    after command { call (notRegister (bs.map AddBit.y ++ [cin])); }
    get { satisfies (SubtractorProof.frame bs s.basis), bs.map AddBit.out=D } by exact restore;

    Conclusion { satisfies (SubtractorProof.frame bs s.basis), bs.map AddBit.out=D };
  }
  simpa only [rippleSubtractor, List.append_assoc] using derivation s m rfl

namespace SubtractorProof

/-- Read the preserved inputs and zero workspace from the proved wire frame. -/
private theorem xor_register_step (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y O : Nat) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = O, bs.map AddBit.carry = (0 : Nat) }} rippleSubtractor bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = (O ^^^ ((X + 2^bs.length - Y) % 2^bs.length)),
       bs.map AddBit.carry = (0 : Nat) }} := by
  intro s m hP
  simp only [Holds.holds] at hP ⊢
  obtain ⟨⟨⟨⟨hx, hy⟩, hc⟩, ho⟩, hk⟩ := hP
  obtain ⟨hp, he, hv⟩ := rippleSubtractor_xor_correct bs cin hnd s m hc (by
    intro b hb
    exact (regValue_zero _ _).mp hk _ (List.mem_map.mpr ⟨b, hb, rfl⟩))
  have hn := inputs_not_output bs (List.nodup_cons.mp hnd).2
  have hreg (f : AddBit → Wire) (h : ∀ b ∈ bs, f b ∉ bs.map AddBit.out) :
      regValue (bs.map f) (run (rippleSubtractor bs cin) m s).basis = regValue (bs.map f) s.basis :=
    regValue_congr _ _ _ (by
      intro w hw
      obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hw
      exact he _ (h b hb))
  have hc' : (run (rippleSubtractor bs cin) m s).basis cin = s.basis cin := by
    apply he
    intro h
    obtain ⟨b, hb, hb'⟩ := List.mem_map.mp h
    exact (List.nodup_cons.mp hnd).1 (hb' ▸ (mem_addWires hb).2.2.1)
  exact ⟨hp, ⟨⟨⟨(hreg _ (fun b hb => (hn b hb).1)).trans hx,
      (hreg _ (fun b hb => (hn b hb).2.1)).trans hy⟩, hc'.trans hc⟩,
      by simpa only [hx, hy, ho] using hv⟩, (hreg _ (fun b hb => (hn b hb).2.2)).trans hk⟩

end SubtractorProof

/-- 任意初值输出的减法规格，输入和工作位保持。 -/
theorem rippleSubtractor_xor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y O : Nat) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = O, bs.map AddBit.carry = (0 : Nat) }} rippleSubtractor bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = (O ^^^ ((X + 2^bs.length - Y) % 2^bs.length)),
       bs.map AddBit.carry = (0 : Nat) }} := by
  have register_step := SubtractorProof.xor_register_step bs cin hnd X Y O
  exact hoare_steps {
    Precondition { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=false, bs.map AddBit.out=O, bs.map AddBit.carry=(0 : Nat) };
    after command { call (rippleSubtractor bs cin); }
    get { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=false, bs.map AddBit.out=(O ^^^ ((X + 2^bs.length - Y) % 2^bs.length)), bs.map AddBit.carry=(0 : Nat) } by exact register_step;
    Conclusion { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=false, bs.map AddBit.out=(O ^^^ ((X + 2^bs.length - Y) % 2^bs.length)), bs.map AddBit.carry=(0 : Nat) };
  }

/-- 零输出时，XOR 写入得到模 2^n 的差。 -/
theorem rippleSubtractor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y : Nat) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = (0 : Nat), bs.map AddBit.carry = (0 : Nat) }} rippleSubtractor bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = ((X + 2^bs.length - Y) % 2^bs.length),
       bs.map AddBit.carry = (0 : Nat) }} := by
  have zero_output := rippleSubtractor_xor_spec bs cin hnd X Y 0
  simp only [Nat.zero_xor] at zero_output
  exact hoare_steps {
    Precondition { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=false, bs.map AddBit.out=(0 : Nat), bs.map AddBit.carry=(0 : Nat) };
    after command { call (rippleSubtractor bs cin); }
    get { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=false, bs.map AddBit.out=((X + 2^bs.length - Y) % 2^bs.length), bs.map AddBit.carry=(0 : Nat) } by exact zero_output;
    Conclusion { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=false, bs.map AddBit.out=((X + 2^bs.length - Y) % 2^bs.length), bs.map AddBit.carry=(0 : Nat) };
  }

/-- 减法的两层 X 不增加 Toffoli 或测量。 -/
theorem rippleSubtractor_counts (bs : List AddBit) (cin : Wire) :
    toffoliCount (rippleSubtractor bs cin) = bs.length ∧
    measurementCount (rippleSubtractor bs cin) = bs.length := by
  simp [rippleSubtractor, toffoliCount_append, measurementCount_append,
    (notRegister_counts _).1, (notRegister_counts _).2,
    rippleAdder_toffoliCount, rippleAdder_measurementCount]

/-- 减法访问进位工作线和每位的四根线路。 -/
theorem rippleSubtractor_wires (bs : List AddBit) (cin : Wire) :
    wires (rippleSubtractor bs cin) = (cin :: addWires bs).toFinset := by
  cases bs with
  | nil => simp [rippleSubtractor, rippleAdder, wires_append, notRegister_wires, addWires]
  | cons b bs =>
    rw [rippleSubtractor, wires_append, wires_append, notRegister_wires,
      rippleAdder_wires]
    ext w
    simp only [Finset.mem_union, List.mem_toFinset, List.mem_append, List.mem_cons]
    have hy : w ∈ (b :: bs).map AddBit.y → w ∈ addWires (b :: bs) := fun hw => (y_sublist _).subset hw
    tauto

/-- n 位减法使用 4n+1 根静态线路，包括恢复为零的输入进位工作线。 -/
theorem rippleSubtractor_qubitCount (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) :
    qubitCount (rippleSubtractor bs cin) = 4 * bs.length + 1 := by
  rw [qubitCount, rippleSubtractor_wires, List.toFinset_card_of_nodup hnd]
  simp [addWires_length]

end ECDSAAdd.Arithmetic
