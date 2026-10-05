import ECDSAAdd.Arithmetic.RegisterXor.Registers
import ECDSAAdd.Arithmetic.ModularAddition.ModularAlgorithm

namespace ECDSAAdd.Arithmetic

/-- 小端拼接：高段的权重是低段位宽对应的 2 的幂。 -/
theorem regValue_append (lo hi : List Wire) (s : BasisState) :
    regValue (lo ++ hi) s = regValue lo s + 2^lo.length * regValue hi s := by
  induction lo with
  | nil => simp [regValue]
  | cons w lo ih =>
    change (if s w then 1 else 0) + 2 * regValue (lo ++ hi) s =
      ((if s w then 1 else 0) + 2 * regValue lo s) + 2^(lo.length+1) * regValue hi s
    rw [ih, Nat.pow_succ]
    ring

/-- 最高位为 1 恰好表示整个寄存器读值不小于该位的权重。 -/
theorem regValue_highBit (lo : List Wire) (high : Wire) (s : BasisState) :
    s high = true ↔ 2^lo.length ≤ regValue (lo ++ [high]) s := by
  rw [regValue_append]
  have h := regValue_lt lo s
  change s high = true ↔ 2^lo.length ≤ regValue lo s + 2^lo.length * (if s high then 1 else 0)
  cases s high <;> simp [Nat.not_le.mpr h]

theorem regValue_low (lo : List Wire) (hi : Wire) (s : BasisState) :
    regValue lo s = regValue (lo ++ [hi]) s % 2^lo.length := by
  rw [regValue_append, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (regValue_lt lo s)]

/-- XOR 一个低 n 位的值不会改变更高位。 -/
theorem xor_low_add (n a h r : Nat) (ha : a < 2^n) (hr : r < 2^n) :
    (a ^^^ r) + 2^n*h = (a + 2^n*h) ^^^ r := by
  have hd : ((a + 2^n*h) ^^^ r) / 2^n = h := by
    have hx := @Nat.shiftRight_xor_distrib n (a + 2^n*h) r
    simp only [Nat.shiftRight_eq_div_pow] at hx
    rw [hx, Nat.add_mul_div_left _ _ (by positivity), Nat.div_eq_of_lt ha,
      Nat.div_eq_of_lt hr, Nat.zero_add, Nat.xor_zero]
  have hm : ((a + 2^n*h) ^^^ r) % 2^n = a ^^^ r := by
    rw [Nat.xor_mod_two_pow, Nat.add_mul_mod_self_left,
      Nat.mod_eq_of_lt ha, Nat.mod_eq_of_lt hr]
  have he := Nat.mod_add_div ((a + 2^n*h) ^^^ r) (2^n)
  simpa only [hd, hm] using he

/-- 后端连接：最高位给出比较条件，选择器给出对应分支的数值。
这里不证明取模结果，只把补码寄存器与算法层的 if 对齐。 -/
theorem addReduction_branches (t q n : Nat) (hq0 : 0 < q) (hq : q < 2^n) (ht : t < 2*q) :
    ((2^n ≤ (t + 2^(n+1) - q) % 2^(n+1)) ↔ t < q) ∧
    (if 2^n ≤ (t + 2^(n+1) - q) % 2^(n+1) then t
     else (t + 2^(n+1) - q) % 2^(n+1)) = (if t < q then t else t-q) := by
  have hp : 0 < 2^n := lt_trans hq0 hq
  rw [Nat.pow_succ]
  by_cases h : t < q
  · have hr : t + 2^n * 2 - q < 2^n * 2 := by omega
    have hh : 2^n ≤ t + 2^n * 2 - q := by omega
    simp [Nat.mod_eq_of_lt hr, hh, h]
  · have he : t + 2^n * 2 - q = (t-q) + 2^n * 2 := by omega
    have hr : t-q < 2^n * 2 := by omega
    have hh : ¬2^n ≤ t-q := by omega
    simp [he, Nat.add_mod_right, Nat.mod_eq_of_lt hr, hh, h]

/-- 后端连接：补码借位等价于 X<Y；借位时的修正候选解码为 X+q-Y。 -/
theorem subReduction_branches (X Y q n : Nat) (hq0 : 0 < q) (hq : q < 2^n)
    (hX : X < q) (hY : Y < q) :
    ((2^n ≤ (X + 2^(n+1) - Y) % 2^(n+1)) ↔ X < Y) ∧
    (if 2^n ≤ (X + 2^(n+1) - Y) % 2^(n+1)
     then (((X + 2^(n+1) - Y) % 2^(n+1)) + q) % 2^(n+1)
     else (X + 2^(n+1) - Y) % 2^(n+1)) = (if X < Y then X+q-Y else X-Y) := by
  have hp : 0 < 2^n := lt_trans hq0 hq
  rw [Nat.pow_succ]
  by_cases h : X < Y
  · have hr : X + 2^n * 2 - Y < 2^n * 2 := by omega
    have hh : 2^n ≤ X + 2^n * 2 - Y := by omega
    have he : X + 2^n * 2 - Y + q = (X+q-Y) + 2^n * 2 := by omega
    have hs : X+q-Y < 2^n * 2 := by omega
    simp [Nat.mod_eq_of_lt hr, hh, h, he, Nat.add_mod_right, Nat.mod_eq_of_lt hs]
  · have he : X + 2^n * 2 - Y = (X-Y) + 2^n * 2 := by omega
    have hr : X-Y < 2^n * 2 := by omega
    have hh : ¬2^n ≤ X-Y := by omega
    simp [he, Nat.add_mod_right, Nat.mod_eq_of_lt hr, hh, h]

/-- t<2q 时，一次减 q 加上候选选择就得到 t mod q。
额外高位为 1 表示减法发生借位，应保留原和 t。 -/
theorem addReduction (t q n : Nat) (hq0 : 0 < q) (hq : q < 2^n) (ht : t < 2*q) :
    ((2^n ≤ (t + 2^(n+1) - q) % 2^(n+1)) ↔ t < q) ∧
    (if 2^n ≤ (t + 2^(n+1) - q) % 2^(n+1) then t
     else (t + 2^(n+1) - q) % 2^(n+1)) = t % q := by
  obtain ⟨hb, hr⟩ := addReduction_branches t q n hq0 hq ht
  refine ⟨hb, hr.trans ?_⟩
  simpa [ModReductionAlgorithm.addResult] using
    ModReductionAlgorithm.addResult_correct t 0 q (by simpa using ht)

/-- X,Y<q 时，借位的差加回 q；未借位则直接保留差。 -/
theorem subReduction (X Y q n : Nat) (hq0 : 0 < q) (hq : q < 2^n)
    (hX : X < q) (hY : Y < q) :
    ((2^n ≤ (X + 2^(n+1) - Y) % 2^(n+1)) ↔ X < Y) ∧
    (if 2^n ≤ (X + 2^(n+1) - Y) % 2^(n+1)
     then (((X + 2^(n+1) - Y) % 2^(n+1)) + q) % 2^(n+1)
     else (X + 2^(n+1) - Y) % 2^(n+1)) = (X + q - Y) % q := by
  obtain ⟨hb, hr⟩ := subReduction_branches X Y q n hq0 hq hX hY
  exact ⟨hb, hr.trans (ModReductionAlgorithm.subResult_correct X Y q hX hY)⟩

end ECDSAAdd.Arithmetic
