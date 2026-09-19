# 寄存器 XOR

本模块提供寄存器、常量及受控值的按位异或操作，并证明寄存器读值、输入保持和资源性质。

## 文件目录

[ConditionalXor.lean](#conditionalxorlean)

这个文件通过临时掩码实现条件 XOR，证明目标更新、临时位恢复及资源。

[Constant.lean](#constantlean)

这个文件定义经典常量的 XOR 写入，证明数值更新、状态保持和支持范围。

[Copy.lean](#copylean)

这个文件定义普通和受控寄存器 XOR 复制，并证明结果、输入保持和资源。

[MaskedConstant.lean](#maskedconstantlean)

这个文件定义受控常量 XOR，证明执行结果、状态保持及资源性质。

[Registers.lean](#registerslean)

这个文件证明寄存器读取、取反、范围和逐位关系，并给出寄存器取反电路规格。

## [ConditionalXor.lean](ConditionalXor.lean)

这个文件通过临时掩码实现条件 XOR，证明目标更新、临时位恢复及资源。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def conditionalXor (kernel : Program) (c : Wire) (src temp dst : List Wire) : Program
```

先计算候选，再 XOR 选择候选或原值，最后用同一核清空候选。

```lean
def PairFrame (temp dst : List Wire) (base : BasisState) (T O : Nat) (st : BasisState) : Prop
```

两个可变寄存器以外逐线保持初始状态。

以下声明位于 `ECDSAAdd.Arithmetic.PairFrame` 命名空间。

```lean
theorem read (temp dst r : List Wire) (base st : BasisState) (T O : Nat)
    (h : PairFrame temp dst base T O st) (ht : r.Disjoint temp) (hd : r.Disjoint dst)
```

证明了 `regValue r st` 等于 `regValue r base`。

```lean
theorem update_temp (temp dst : List Wire) (base s t : BasisState) (T O Z : Nat)
    (hd : temp.Disjoint dst) (h : PairFrame temp dst base T O s)
    (he : ∀ w, w ∉ temp → t w = s w) (hz : regValue temp t = Z)
```

证明了操作后满足对应的寄存器状态或保持断言：`PairFrame temp dst base Z O t`。

```lean
theorem update_dst (temp dst : List Wire) (base s t : BasisState) (T O Z : Nat)
    (hd : temp.Disjoint dst) (h : PairFrame temp dst base T O s)
    (he : ∀ w, w ∉ dst → t w = s w) (hz : regValue dst t = Z)
```

证明了操作后满足对应的寄存器状态或保持断言：`PairFrame temp dst base T Z t`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem conditionalXor_correct (kernel : Program) (c : Wire) (src temp dst work : List Wire)
    (hnd : (c :: (src ++ temp ++ dst ++ work)).Nodup)
    (hs : src.length = dst.length) (ht : temp.length = dst.length)
    (F : Nat → Nat) (q : Nat)
    (hk : ∀ (s : State) (m : List Bool), regValue src s.basis < q → regValue work s.basis = 0 →
      (run kernel m s).phase = s.phase ∧
      (∀ w, w ∉ temp → (run kernel m s).basis w = s.basis w) ∧
      regValue temp (run kernel m s).basis = regValue temp s.basis ^^^ F (regValue src s.basis))
    (s : State) (m : List Bool) (hX : regValue src s.basis < q)
    (hT : regValue temp s.basis = 0) (hW : regValue work s.basis = 0)
```

证明了条件包装只要求核自身的 XOR 正确性；并不反转包含测量的程序。

```lean
theorem conditionalXor_counts (kernel : Program) (c : Wire) (src temp dst : List Wire)
    (hs : src.length = dst.length) (ht : temp.length = dst.length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (conditionalXor kernel c src temp dst) = 2*toffoliCount kernel + 2*dst.length ∧ measurementCount (conditionalXor kernel c src temp dst) = 2*measurementCount kernel`。

```lean
theorem conditionalXor_wires (kernel : Program) (c : Wire) (src temp dst : List Wire)
    (hs : src.length = dst.length) (ht : temp.length = dst.length) (hn : dst ≠ [])
```

证明了程序实际触及的线路集合：`wires (conditionalXor kernel c src temp dst) = wires kernel ∪ (c :: (src ++ temp ++ dst)).toFinset`。

## [Constant.lean](Constant.lean)

这个文件定义经典常量的 XOR 写入，证明数值更新、状态保持和支持范围。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def xorConstant : List Wire → Nat → Program
```

经典常量按小端展开，只有常量位为 1 的线路才执行 X。

```lean
theorem xorConstant_correct (r : List Wire) (hnd : r.Nodup) (k : Nat)
    (hk : k < 2^r.length) (s : State) (m : List Bool)
```

证明了异或经典常量，保持相位和寄存器外全部线路。

```lean
theorem xorConstant_spec (r : List Wire) (hnd : r.Nodup) (k X : Nat) (hk : k < 2^r.length)
```

证明了可重复使用同一常量程序载入和清理常量。

```lean
theorem xorConstant_counts (r : List Wire) (k : Nat)
```

证明了常量 XOR 不使用 Toffoli 或测量。

```lean
theorem xorConstant_wires_subset (r : List Wire) (k : Nat)
```

证明了常量 XOR 只触碰常量寄存器；实际支持集可能更小，因为 0 位不施门。

## [Copy.lean](Copy.lean)

这个文件定义普通和受控寄存器 XOR 复制，并证明结果、输入保持和资源。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def copyGate (control : Option Wire) (a b : Wire) : Instr
```

根据是否提供控制位，选择普通 CX 或受控 CCX 复制门。

```lean
def copyRegister (control : Option Wire) : List Wire → List Wire → Program
```

普通复制用 CX；受控复制逐位用 CCX。两者都按 XOR 更新目标。

```lean
def copyValue (control : Option Wire) (st : BasisState) (X : Nat) : Nat
```

给出复制操作的有效源值：无控制时为 X，有控制时由该控制位决定是否为 X。

```lean
theorem copyRegister_correct (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length) (hnd : (src ++ dst).Nodup)
    (hc : ∀ c ∈ control, c ∉ dst) (s : State) (m : List Bool)
```

证明了寄存器复制将有效源值异或到目标；有控制时只在控制开启时复制，目标外基态位与相位保持不变。

```lean
theorem copyRegister_spec (src dst : List Wire) (hlen : src.length = dst.length)
    (hnd : (src ++ dst).Nodup) (X O : Nat)
```

证明了执行 `copyRegister none src dst` 时，寄存器初态满足 `src = X, dst = O` 就能得到 `src = X, dst = (O ^^^ X)`，并恢复相位。

```lean
theorem maskedCopy_spec (c : Wire) (src dst : List Wire) (hlen : src.length = dst.length)
    (hnd : (c :: (src ++ dst)).Nodup) (C : Bool) (X O : Nat)
```

证明了执行 `copyRegister (some c) src dst` 时，寄存器初态满足 `c = C, src = X, dst = O` 就能得到 `c = C, src = X, dst = (O ^^^ (if C then X else 0))`，并恢复相位。

```lean
theorem copyRegister_counts (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (copyRegister control src dst) = (if control.isSome then src.length else 0) ∧ measurementCount (copyRegister control src dst) = 0`。

```lean
theorem copyRegister_wires (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length)
```

证明了程序实际触及的线路集合：`wires (copyRegister control src dst) = if src.isEmpty then ∅ else (control.toList ++ src ++ dst).toFinset`。

```lean
theorem copyRegister_resources (control : Option Wire) (src dst : List Wire)
    (hlen : src.length = dst.length) (hnd : (control.toList ++ src ++ dst).Nodup)
```

证明了所列程序的精确资源关系：`toffoliCount (copyRegister control src dst) = (if control.isSome then src.length else 0) ∧ measurementCount (copyRegister control src dst) = 0 ∧ qubitCount (copyRegister control src dst) = (if src.isEmpty then 0 else 2*src.length+control.toList.length)`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [MaskedConstant.lean](MaskedConstant.lean)

这个文件定义受控常量 XOR，证明执行结果、状态保持及资源性质。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def maskedConstant (c : Wire) : List Wire → Nat → Program
```

经典位为 1 时执行 CX；控制位不属于目标寄存器。

```lean
theorem maskedConstant_run (c : Wire) (r : List Wire) (k : Nat) (hc : c∉r)
    (s : State) (m : List Bool)
```

证明了 `run (maskedConstant c r k) m s` 等于 `if s.basis c then run (xorConstant r k) m s else s`。

```lean
theorem maskedConstant_correct (c : Wire) (r : List Wire) (k : Nat)
    (hn : r.Nodup) (hc : c∉r) (hk : k<2^r.length) (s : State) (m : List Bool)
```

证明了控制开启时将常量 k 异或到目标，关闭时不改变目标；目标外基态位与相位保持不变。

```lean
theorem maskedConstant_counts (c : Wire) (r : List Wire) (k : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (maskedConstant c r k)=0 ∧ measurementCount (maskedConstant c r k)=0`。

```lean
theorem maskedConstant_wires_subset (c : Wire) (r : List Wire) (k : Nat)
```

证明了 `wires (maskedConstant c r k)` 包含的线路都在 `(c::r).toFinset` 中。

## [Registers.lean](Registers.lean)

这个文件证明寄存器读取、取反、范围和逐位关系，并给出寄存器取反电路规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem regValue_eq_iff (r : List Wire) (s t : BasisState)
```

证明了小端读值相等恰好表示寄存器中的每一位相等。

```lean
theorem xor_value_step (a b : Bool) (x y : Nat)
```

证明了XOR 按小端的最低位与高位分解。

```lean
theorem regValue_congr (r : List Wire) (s t : BasisState)
    (h : ∀ w ∈ r, s w = t w)
```

证明了小端寄存器读取只依赖其自身线路。

```lean
theorem regValue_zero (r : List Wire) (s : BasisState)
```

证明了零值恰好表示每一位均为 false。

```lean
theorem regValue_lt (r : List Wire) (s : BasisState)
```

证明了n 位寄存器总是表示小于 2^n 的自然数。

```lean
def notRegister (r : List Wire) : Program
```

对寄存器每根线路执行 X。

```lean
theorem notRegister_correct (r : List Wire) (hnd : r.Nodup) (s : State) (m : List Bool)
```

证明了寄存器内每一位取反，其他线路与相位保持。

```lean
theorem regValue_complement (r : List Wire) (s : BasisState)
```

证明了全位取反的读值为 2^n-1-X。

```lean
theorem notRegister_spec (r : List Wire) (hnd : r.Nodup) (X : Nat)
```

证明了全位取反的可读寄存器规格。

```lean
theorem notRegister_counts (r : List Wire)
```

证明了全位取反只含 X 门，没有 Toffoli 或测量。

```lean
theorem notRegister_wires (r : List Wire)
```

证明了程序实际触及的线路集合：`wires (notRegister r) = r.toFinset`。

```lean
theorem notRegister_qubitCount (r : List Wire) (hnd : r.Nodup)
```

证明了互异寄存器的静态线路数就是位宽。

```lean
theorem regValue_bit (r : List Wire) (i : Nat) (fallback : Wire) (s : BasisState) (hi : i<r.length)
```

证明了小端寄存器第 i 位与自然数除法表示一致。
