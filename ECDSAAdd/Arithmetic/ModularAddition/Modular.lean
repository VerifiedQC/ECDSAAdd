import ECDSAAdd.Arithmetic.ModularAddition.ModularSteps

namespace ECDSAAdd.Arithmetic

/-- 模加减主体的逻辑接口：out ^= x±y；辅助参数在 modArithmeticContext 接线。 -/
structure ModArithmeticOps where
  addXor : List Wire → List Wire → List Wire → Program
  subXor : List Wire → List Wire → List Wire → Program

/-- L 提供固定辅助位；它们须初始为零，调用后恢复，不自动分配或猜测工作区。
carrySum/carryDiff 分别是加/减法进位链；cinSum/cinDiff 是零输入进位。
简写只用于此零进位环境，普通 addXor 的非零 cin 接口保持不变。 -/
def modArithmeticContext (L : ModLayout) : CircuitDSL.Context ModArithmeticOps := {
  operations := {
    addXor := fun x y out => addXor x y out (L.reg .carrySum) L.cinSum
    subXor := fun x y out => subXor x y out (L.reg .carryDiff) L.cinDiff
  }
}

/- 下列注释沿用原规格：0<q<2^n、x,y<q、各线路互异、工作区初始为零。
   n=L.width；x/y/total/modulus/diff 是 n+1 位，最高位用于溢出或借位。
   加减法按 n+1 位补码运算，选择只写 out 的低 n 位。
   所有操作都是 XOR 写入：同样的输入再次调用，会清除先前算出的结果。 -/

/-- 模加的 XOR 输出：L.out ^= (L.x+L.y) mod q，输入 L.x/L.y 保持，L.work 初始为零并恢复。
公开规格要求 0<q<2^L.width、输入均小于 q、布局线路互异；内部支持和小于 2*q 的约减。
只减一次 q，不是对任意大小输入的通用取模。

参数：

- `L`：模加减线路布局：x/y 是输入寄存器，out 是 XOR 输出，work 包含中间和/差、模数、进位等工作位；width 是有效数值位宽。
- `q`：构造电路时已知的经典模数，不是量子输入寄存器；取值须满足上述范围条件。
-/
def modAdd (L : ModLayout) (q : Nat) : Program := prog using (modArithmeticContext L) {
  let x := L.x;                     -- 保持不变的输入 x，含一根零扩展高位。
  let y := L.y;                     -- 保持不变的输入 y，含一根零扩展高位。
  let total := L.reg .total;        -- 零临时寄存器，保存 n+1 位完整和 x+y。
  let modulus := L.reg .modulus;    -- 零临时寄存器，用来装载经典模数 q。
  let diff := L.reg .diff;          -- 零临时寄存器，保存试减 q 后的 n+1 位差。
  let borrow := L.high.diff;        -- diff 的最高位，表示试减是否发生借位。
  let out := L.lowReg .out;         -- 最终 XOR 输出寄存器，仅取低 n 位。

  xorConstant(modulus, q);                         -- modulus = q
  addXor x y total;                               -- total = x+y
  subXor total modulus diff;                      -- diff = total-q

  -- 借位为 0：total≥q，选 diff；借位为 1：total<q，选 total。
  chooseXor borrow (diff.take L.width) (total.take L.width) out;  -- out ^= (borrow=1 ? total : diff) 的低 n 位。

  subXor total modulus diff;                      -- diff 再异或 total-q，清零（按 n+1 位补码）。
  addXor x y total;                               -- total 再异或 x+y，清零。
  xorConstant(modulus, q);                         -- modulus 再异或 q，清零。
}

/-- 模减的 XOR 输出：L.out ^= (L.x−L.y) mod q，输入 L.x/L.y 保持，L.work 初始为零并恢复。
要求 0<q<2^L.width、输入均小于 q、布局线路互异；这里减法按模 q 理解，不是 Nat 的截断减法。

参数：

- `L`：模加减线路布局：x/y 是输入寄存器，out 是 XOR 输出，work 包含中间和/差、模数、进位等工作位；width 是有效数值位宽。
- `q`：构造电路时已知的经典模数，不是量子输入寄存器；取值须满足上述范围条件。
-/
def modSub (L : ModLayout) (q : Nat) : Program := prog using (modArithmeticContext L) {
  let x := L.x;                     -- 保持不变的输入 x，含一根零扩展高位。
  let y := L.y;                     -- 保持不变的输入 y，含一根零扩展高位。
  let diff := L.reg .diff;          -- 零临时寄存器，保存 n+1 位补码差 x-y。
  let modulus := L.reg .modulus;    -- 零临时寄存器，用来装载经典模数 q。
  let corrected := L.reg .total;    -- 零临时寄存器，保存加回 q 后的候选值。
  let borrow := L.high.diff;        -- diff 的最高位，表示 x-y 是否发生借位。
  let out := L.lowReg .out;         -- 最终 XOR 输出寄存器，仅取低 n 位。

  xorConstant(modulus, q);                              -- modulus = q
  subXor x y diff;                                     -- diff = x-y
  addXor diff modulus corrected;                       -- corrected = diff+q

  -- 借位为 0：x≥y，选 diff；借位为 1：x<y，选 corrected。
  chooseXor borrow (diff.take L.width) (corrected.take L.width) out;  -- out ^= (borrow=1 ? corrected : diff) 的低 n 位。

  addXor diff modulus corrected;                       -- corrected 再异或 diff+q，清零（按 n+1 位截断）。
  subXor x y diff;                                     -- diff 再异或 x-y，清零（按 n+1 位补码）。
  xorConstant(modulus, q);                              -- modulus 再异或 q，清零。
}

private theorem registerAdderBits_map (bs : List ModBit) (a b target c : ModField) :
    registerAdderBits (bs.map (·.get a)) (bs.map (·.get b))
      (bs.map (·.get target)) (bs.map (·.get c)) =
      bs.map (fun bit => ⟨bit.get a, bit.get b, bit.get target, bit.get c⟩) := by
  induction bs with
  | nil => rfl
  | cons bit bs ih =>
    simpa [registerAdderBits] using congrArg (AddBit.mk (bit.get a) (bit.get b) (bit.get target) (bit.get c) :: ·) ih

private theorem take_reg (L : ModLayout) (f : ModField) :
    (L.reg f).take L.width = L.lowReg f := by
  simp [ModLayout.reg, ModLayout.bits, ModLayout.width, ModLayout.lowReg]

private theorem selector_map (bs : List ModBit) :
    List.zipWith (fun ab o => SelectBit.mk ab.1 ab.2 o)
      ((bs.map (·.diff)).zip (bs.map (·.total))) (bs.map (·.out)) =
      bs.map (fun b => ⟨b.diff, b.total, b.out⟩) := by
  induction bs with
  | nil => rfl
  | cons b bs ih => simp [ih]

/-- 供证明使用的展开式；算法阅读可跳过。 -/
theorem modAdd_program (L : ModLayout) (q : Nat) : modAdd L q =
  let load := xorConstant (L.reg .modulus) q
  let sum := add (L.adder .x .y .total .carrySum L.cinSum)
  let difference := sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)
  load ++ sum ++ difference ++ selectXor L.selector L.high.diff ++ difference ++ sum ++ load := by
  simp only [modAdd, take_reg]
  simp only [addXor, subXor, ModLayout.x, ModLayout.y, ModLayout.reg]
  simp only [registerAdderBits_map, add, sub, ModLayout.adder]
  simp only [chooseXor, ModLayout.lowReg, ModBit.get, selector_map, ModLayout.selector]

/-- 供证明使用的展开式；算法阅读可跳过。 -/
theorem modSub_program (L : ModLayout) (q : Nat) : modSub L q =
  let load := xorConstant (L.reg .modulus) q
  let difference := sub (L.adder .x .y .diff .carryDiff L.cinDiff)
  let correction := add (L.adder .diff .modulus .total .carrySum L.cinSum)
  load ++ difference ++ correction ++ selectXor L.selector L.high.diff ++ correction ++ difference ++ load := by
  simp only [modSub, take_reg]
  simp only [addXor, subXor, ModLayout.x, ModLayout.y, ModLayout.reg]
  simp only [registerAdderBits_map, add, sub, ModLayout.adder]
  simp only [chooseXor, ModLayout.lowReg, ModBit.get, selector_map, ModLayout.selector]

def ModValues.clean (X Y O : Nat) : ModField → Nat
  | .x => X | .y => Y | .out => O | _ => 0

theorem ModValues.clean_iff (L : ModLayout) (X Y O : Nat) (st : BasisState) :
    ModValues L (ModValues.clean X Y O) st ↔
      (((regValue L.x st = X ∧ regValue L.y st = Y) ∧ regValue L.out st = O) ∧
        regValue L.work st = 0) := by
  constructor
  · intro hv
    refine ⟨⟨⟨hv.1 .x, hv.1 .y⟩, hv.1 .out⟩, (regValue_zero _ _).mpr ?_⟩
    intro w hw
    simp only [ModLayout.work, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hw
    rcases hw with ((((ht | hm) | hd) | hcs) | hcd) | hci | hci
    · exact (regValue_zero _ _).mp (hv.1 .total) w ht
    · exact (regValue_zero _ _).mp (hv.1 .modulus) w hm
    · exact (regValue_zero _ _).mp (hv.1 .diff) w hd
    · exact (regValue_zero _ _).mp (hv.1 .carrySum) w hcs
    · exact (regValue_zero _ _).mp (hv.1 .carryDiff) w hcd
    · subst w; exact hv.2.1
    · subst w; exact hv.2.2
  · rintro ⟨⟨⟨hx, hy⟩, ho⟩, hw⟩
    have hz := (regValue_zero _ _).mp hw
    refine ⟨?_, hz L.cinSum (by simp [ModLayout.work]), hz L.cinDiff (by simp [ModLayout.work])⟩
    intro f
    cases f
    · exact hx
    · exact hy
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · exact ho
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])
    · apply (regValue_zero _ _).mpr; intro w hw; exact hz w (by simp [ModLayout.work, hw])

private theorem modAdd_bounded_values (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q) :
    Triple (ModValues L (ModValues.clean X Y O)) (modAdd L q)
      (ModValues L (ModValues.clean X Y (O ^^^ ((X+Y)%q)))) := by
  let S := X+Y
  let D := (S + 2^(L.width+1) - q) % 2^(L.width+1)
  let R := S%q
  have hS : X+Y < 2^(L.width+1) := by rw [Nat.pow_succ]; omega
  have hq' : q < 2^(L.width+1) := by rw [Nat.pow_succ]; omega
  have hchoose : (if 2^L.width ≤ D then S else D) = R :=
    (addReduction S q L.width hq0 hq (by dsimp [S]; omega)).2
  let v0 := ModValues.clean X Y O
  let v1 := Function.update v0 .modulus q
  let v2 := Function.update v1 .total S
  let v3 := Function.update v2 .diff D
  let v4 := Function.update v3 .out (O ^^^ R)
  let v5 := Function.update v4 .diff 0
  let v6 := Function.update v5 .total 0
  let v7 := Function.update v6 .modulus 0
  have h0 : Triple (ModValues L v0) (xorConstant (L.reg .modulus) q) (ModValues L v1) := by
    simpa [v1, v0, ModValues.clean] using constant_modValues L hnd v0 .modulus q hq'
  have h1 : Triple (ModValues L v1) (add (L.adder .x .y .total .carrySum L.cinSum)) (ModValues L v2) := by
    simpa [v2, v1, v0, ModValues.clean, S, Nat.mod_eq_of_lt hS] using
      add_modValues L hnd v1 .x .y .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v1, v0, ModValues.clean])
  have h2 : Triple (ModValues L v2) (sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)) (ModValues L v3) := by
    simpa [v3, v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v2 .total .modulus .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v2, v1, v0, ModValues.clean])
  have h3 : Triple (ModValues L v3) (selectXor L.selector L.high.diff) (ModValues L v4) := by
    simpa [v4, v3, v2, v1, v0, ModValues.clean, hchoose] using select_modValues L hnd v3 (by
      simpa [v3, v2, v1, v0, ModValues.clean, hchoose] using
        (lt_trans (Nat.mod_lt _ hq0) hq : R < 2^L.width))
  have h4 : Triple (ModValues L v4) (sub (L.adder .total .modulus .diff .carryDiff L.cinDiff)) (ModValues L v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v4 .total .modulus .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v4, v3, v2, v1, v0, ModValues.clean])
  have h5 : Triple (ModValues L v5) (add (L.adder .x .y .total .carrySum L.cinSum)) (ModValues L v6) := by
    simpa [v6, v5, v4, v3, v2, v1, v0, ModValues.clean, S, Nat.mod_eq_of_lt hS] using
      add_modValues L hnd v5 .x .y .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v5, v4, v3, v2, v1, v0, ModValues.clean])
  have h6 : Triple (ModValues L v6) (xorConstant (L.reg .modulus) q) (ModValues L v7) := by
    simpa [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean] using constant_modValues L hnd v6 .modulus q hq'
  have hv7 : v7 = ModValues.clean X Y (O ^^^ R) := by
    funext f; cases f <;> simp [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean]
  have h := h0.seq (h1.seq (h2.seq (h3.seq (h4.seq (h5.seq h6)))))
  simpa only [modAdd_program, List.append_assoc, hv7, v0, R, S] using h

/-- 模 q 加法：任意初值输出按位 XOR 更新，输入、相位和全部工作线恢复。
q 是编译期常量，X、Y 是寄存器中的变量；额外高位只属于实现布局。 -/
theorem modAdd_bounded_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modAdd L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0 }} :=
  Triple.conseq (fun st h => (ModValues.clean_iff L X Y O st).mpr h)
    (modAdd_bounded_values L hnd q hq0 hq X Y O hXY)
    (fun st h => (ModValues.clean_iff L X Y (O ^^^ ((X+Y)%q)) st).mp h)

theorem modAdd_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modAdd L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0 }} :=
  modAdd_bounded_spec L hnd q hq0 hq X Y O (by omega)

private theorem modSub_values (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    Triple (ModValues L (ModValues.clean X Y O)) (modSub L q)
      (ModValues L (ModValues.clean X Y (O ^^^ ((X+q-Y)%q)))) := by
  let D := (X + 2^(L.width+1) - Y) % 2^(L.width+1)
  let S := (D+q) % 2^(L.width+1)
  let R := (X+q-Y)%q
  have hq' : q < 2^(L.width+1) := by rw [Nat.pow_succ]; omega
  have hchoose : (if 2^L.width ≤ D then S else D) = R :=
    (subReduction X Y q L.width hq0 hq hX hY).2
  let v0 := ModValues.clean X Y O
  let v1 := Function.update v0 .modulus q
  let v2 := Function.update v1 .diff D
  let v3 := Function.update v2 .total S
  let v4 := Function.update v3 .out (O ^^^ R)
  let v5 := Function.update v4 .total 0
  let v6 := Function.update v5 .diff 0
  let v7 := Function.update v6 .modulus 0
  have h0 : Triple (ModValues L v0) (xorConstant (L.reg .modulus) q) (ModValues L v1) := by
    simpa [v1, v0, ModValues.clean] using constant_modValues L hnd v0 .modulus q hq'
  have h1 : Triple (ModValues L v1) (sub (L.adder .x .y .diff .carryDiff L.cinDiff)) (ModValues L v2) := by
    simpa [v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v1 .x .y .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v1, v0, ModValues.clean])
  have h2 : Triple (ModValues L v2) (add (L.adder .diff .modulus .total .carrySum L.cinSum)) (ModValues L v3) := by
    simpa [v3, v2, v1, v0, ModValues.clean, S] using
      add_modValues L hnd v2 .diff .modulus .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v2, v1, v0, ModValues.clean])
  have h3 : Triple (ModValues L v3) (selectXor L.selector L.high.diff) (ModValues L v4) := by
    simpa [v4, v3, v2, v1, v0, ModValues.clean, hchoose] using select_modValues L hnd v3 (by
      simpa [v3, v2, v1, v0, ModValues.clean, hchoose] using
        (lt_trans (Nat.mod_lt _ hq0) hq : R < 2^L.width))
  have h4 : Triple (ModValues L v4) (add (L.adder .diff .modulus .total .carrySum L.cinSum)) (ModValues L v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModValues.clean, S] using
      add_modValues L hnd v4 .diff .modulus .total .carrySum (by decide) L.cinSum (Or.inl rfl)
        (by simp [v4, v3, v2, v1, v0, ModValues.clean])
  have h5 : Triple (ModValues L v5) (sub (L.adder .x .y .diff .carryDiff L.cinDiff)) (ModValues L v6) := by
    simpa [v6, v5, v4, v3, v2, v1, v0, ModValues.clean, D] using
      sub_modValues L hnd v5 .x .y .diff .carryDiff (by decide) L.cinDiff (Or.inr rfl)
        (by simp [v5, v4, v3, v2, v1, v0, ModValues.clean])
  have h6 : Triple (ModValues L v6) (xorConstant (L.reg .modulus) q) (ModValues L v7) := by
    simpa [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean] using constant_modValues L hnd v6 .modulus q hq'
  have hv7 : v7 = ModValues.clean X Y (O ^^^ R) := by
    funext f; cases f <;> simp [v7, v6, v5, v4, v3, v2, v1, v0, ModValues.clean]
  have h := h0.seq (h1.seq (h2.seq (h3.seq (h4.seq (h5.seq h6)))))
  simpa only [modSub_program, List.append_assoc, hv7, v0, R] using h

/-- 模 q 减法：任意初值输出按位 XOR 更新，借位选择线随候选差一起清理。 -/
theorem modSub_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
    {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modSub L q
    {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+q-Y)%q)), L.work = 0 }} :=
  Triple.conseq (fun st h => (ModValues.clean_iff L X Y O st).mpr h)
    (modSub_values L hnd q hq0 hq X Y O hX hY)
    (fun st h => (ModValues.clean_iff L X Y (O ^^^ ((X+q-Y)%q)) st).mp h)

end ECDSAAdd.Arithmetic
