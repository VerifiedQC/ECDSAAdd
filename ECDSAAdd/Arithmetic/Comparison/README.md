# 大小比较

本模块比较寄存器或寄存器与常量的大小，将比较结果写入标志位，并证明辅助位与相位恢复。

## 文件目录

[Compare.lean](#comparelean)

这个文件定义寄存器及常量比较电路，证明比较标志、输入和工作位恢复，并给出资源用量。

## [Compare.lean](Compare.lean)

这个文件定义寄存器及常量比较电路，证明比较标志、输入和工作位恢复，并给出资源用量。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def flipBelow : Option Wire → Wire → Wire → Program
```

读出最高进位：无控制时 target ^= ¬top；有控制时 target ^= control ∧ ¬top。

```lean
def compareChain (control : Option Wire) : List Wire → List Wire → List Wire → Wire → Wire → Program
```

Gidney 比较链：每位用 majority 算进位、递归到最高位，递归到底时 cin 就是最高进位， 读出后按相反顺序用现有 eraseCarry 擦除。三个输入寄存器全程不变。

```lean
def compareLt (control : Option Wire) (x y carry : List Wire) (cin target : Wire) : Program
```

target ^= [x < y]（有 control 时为 control ∧ [x < y]）：y 按位取反、cin 置 1， 进位链算的是 x + ¬y + 1，最高进位 = [x ≥ y]；读出后擦除并还原 y、cin。

```lean
def compareLtConst (control : Option Wire) (x T carry : List Wire) (cin target : Wire) (K : Nat) : Program
```

与经典常量比较：常量装进零寄存器 T，比较后再卸载。

```lean
def controlValue : Option Wire → BasisState → Bool
```

控制位的值：无控制视为真。

```lean
theorem flipBelow_correct (control : Option Wire) (top t : Wire) (hnt : t ≠ top)
    (hc : ∀ c ∈ control, c ≠ t) (s : State) (m : List Bool)
```

证明了 `run (flipBelow control top t) m s` 等于 `⟨s.phase, writeBit s.basis t (s.basis t ^^ (controlValue control s.basis && !s.basis top))⟩`。

```lean
theorem carry_threshold (A B C : Bool) (X Y n : Nat)
```

证明了进位与和的分解：2^(n+1) ≤ 三输入之和 ⇔ 2^n ≤ 高位之和加进位。

```lean
theorem compareChain_correct (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup)
    (hctl : ∀ c ∈ control, c ∉ target :: cin :: (x ++ y ++ carry))
    (hx : x.length = y.length) (hc : carry.length = y.length) (s : State) (m : List Bool)
    (hclean : ∀ w ∈ carry, s.basis w = false)
```

证明了进位链只改 target：进位辅助位算完又擦回零，x、y、cin 与控制位保持，相位对所有测量记录恢复。

```lean
theorem compareLt_correct (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup)
    (hctl : ∀ c ∈ control, c ∉ target :: cin :: (x ++ y ++ carry))
    (hx : x.length = y.length) (hc : carry.length = y.length) (s : State) (m : List Bool)
    (hcin : s.basis cin = false) (hclean : ∀ w ∈ carry, s.basis w = false)
```

证明了比较器整体：只改 target，x、y、cin、进位链与控制位保持，相位对所有测量记录恢复。

```lean
theorem compareLt_spec (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length = y.length) (X Y : Nat) (T : Bool)
```

证明了target ^= [x < y]；x、y 保持，进位链回零。

```lean
theorem maskedCompareLt_spec (c : Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (c :: target :: cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length = y.length) (C : Bool) (X Y : Nat) (T : Bool)
```

证明了受控版：target ^= c ∧ [x < y]，控制位保持。

```lean
theorem compareLtConst_spec (x T carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ T ++ carry)).Nodup) (hx : x.length = T.length)
    (hc : carry.length = T.length) (K : Nat) (hK : K < 2^T.length) (X : Nat) (B : Bool)
```

证明了与经典常量比较：T 从零装入 K，比较后卸载回零。

```lean
theorem maskedCompareLtConst_spec (c : Wire) (x T carry : List Wire) (cin target : Wire)
    (hnd : (c :: target :: cin :: (x ++ T ++ carry)).Nodup) (hx : x.length = T.length)
    (hc : carry.length = T.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (X : Nat) (B : Bool)
```

证明了受控常量比较：target ^= c ∧ [x < K]。

```lean
theorem flipBelow_counts (control : Option Wire) (top t : Wire)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (flipBelow control top t) = (if control.isSome then 1 else 0) ∧ measurementCount (flipBelow control top t) = 0`。

```lean
theorem compareChain_counts (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (compareChain control x y carry cin target) = y.length + (if control.isSome then 1 else 0) ∧ measurementCount (compareChain control x y carry cin target) = y.length`。

```lean
theorem compareLt_counts (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length)
```

证明了比较器 Toffoli = 位宽（受控版 +1），测量 = 位宽。

```lean
theorem flipBelow_wires (control : Option Wire) (top t : Wire)
```

证明了程序实际触及的线路集合：`wires (flipBelow control top t) = (control.toList ++ [top, t]).toFinset`。

```lean
theorem compareChain_wires (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length)
```

证明了程序实际触及的线路集合：`wires (compareChain control x y carry cin target) = (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset`。

```lean
theorem compareLt_wires (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length)
```

证明了程序实际触及的线路集合：`wires (compareLt control x y carry cin target) = (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset ∧ ∀ K, wires (compareLtConst control x y carry cin target K) = (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset`。

```lean
theorem compareLt_resources (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (control.toList ++ target :: cin :: (x ++ y ++ carry)).Nodup)
    (hx : x.length = y.length) (hc : carry.length = y.length)
```

证明了n 位比较：n(+1) 个 Toffoli、n 次测量、3n+2(+1) 根线路。
