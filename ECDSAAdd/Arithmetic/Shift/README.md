# 寄存器移位

本模块提供寄存器位的循环移动及受控形式，并证明在相应边界条件下的数值变化和恢复性质。

## 文件目录

[Rotate.lean](#rotatelean)

这个文件定义无控制位交换和寄存器循环移动，证明数值变化、恢复及支持。

[Shift.lean](#shiftlean)

这个文件定义受控位交换与循环移动，证明算术边界条件下的移位结果及资源。

## [Rotate.lean](Rotate.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def swapBits (a b : Wire) : Program
```

无控制物理交换：三个 CX，不消耗 Toffoli 或测量。

```lean
theorem swapBits_correct (a b : Wire) (hab : a≠b) (s : State) (m : List Bool)
```

证明了执行后相位恢复，并满足所列寄存器更新和其他线路保持关系：`(run (swapBits a b) m s).phase=s.phase ∧ (∀ q, q≠a → q≠b → (run (swapBits a b) m s).basis q=s.basis q) ∧ (run (swapBits a b) m s).basis a=s.basis b ∧ (run (swapBits a b) m s).basis b=s.basis a`。

```lean
theorem swapBits_twice (a b : Wire) (hab : a≠b) (s : State) (m : List Bool)
```

证明了 `run (swapBits a b) m (run (swapBits a b) m s)` 等于 `s`。

```lean
def rotateRight : List Wire → Program
```

小端寄存器右旋：原最低位经相邻交换移动到最高位。

```lean
def rotateLeft : List Wire → Program
```

左旋按逆序执行无测量的相邻交换；固定物理寄存器不换视图。

```lean
theorem rotate_counts (r : List Wire)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (rotateRight r)=0 ∧ measurementCount (rotateRight r)=0 ∧ toffoliCount (rotateLeft r)=0 ∧ measurementCount (rotateLeft r)=0`。

```lean
theorem rotate_frame (r : List Wire) (s : State) (m : List Bool)
```

证明了执行后相位恢复，并满足所列寄存器更新和其他线路保持关系：`(run (rotateRight r) m s).phase=s.phase ∧ (∀ q, q∉r → (run (rotateRight r) m s).basis q=s.basis q) ∧ (run (rotateLeft r) m s).phase=s.phase ∧ (∀ q, q∉r → (run (rotateLeft r) m s).basis q=s.basis q)`。

```lean
theorem rotateRight_value (a : Wire) (bs : List Wire) (hnd : (a::bs).Nodup)
    (s : State) (m : List Bool)
```

证明了 `regValue (a::bs) (run (rotateRight (a::bs)) m s).basis` 等于 `regValue bs s.basis+2^bs.length*(s.basis a).toNat`。

```lean
theorem rotateRight_left_cancel (r : List Wire) (hnd : r.Nodup) (s : State) (m : List Bool)
```

证明了仅无测量的旋转互逆，不用于反转算术测量门列。

```lean
theorem rotateRight_spec (r : List Wire) (hnd : r.Nodup) (X : Nat) (heven : X%2=0)
```

证明了输入为偶数时，右旋恰好除以二，移入最高位为零。

```lean
theorem rotateLeft_spec (r : List Wire) (hnd : r.Nodup) (X : Nat) (hfit : 2*X<2^r.length)
```

证明了无溢出时，左旋恰好乘二。

```lean
theorem rotate_wires (r : List Wire)
```

证明了寄存器或线路列表的长度关系：`wires (rotateRight r)=(if r.length<2 then ∅ else r.toFinset) ∧ wires (rotateLeft r)=(if r.length<2 then ∅ else r.toFinset)`。

## [Shift.lean](Shift.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def cswap (c a b : Wire) : Program
```

Fredkin 门分解为两次 CX 与一次 CCX；控制与两个目标必须互异。

```lean
theorem cswap_correct (c a b : Wire) (hnd : [c,a,b].Nodup) (s : State) (m : List Bool)
```

证明了控制开启时交换 a、b 两位，关闭时保留原值，其他基态位与相位不变。

```lean
theorem cswap_spec (c a b : Wire) (hnd : [c,a,b].Nodup) (C A B : Bool)
```

证明了执行 `cswap c a b` 时，寄存器初态满足 `c=C, a=A, b=B` 就能得到 `c=C, a=(if C then B else A), b=(if C then A else B)`，并恢复相位。

```lean
theorem cswap_twice (c a b : Wire) (hnd : [c,a,b].Nodup) (s : State) (m : List Bool)
```

证明了 `run (cswap c a b) m (run (cswap c a b) m s)` 等于 `s`。

```lean
def shiftRight (c : Wire) : List Wire → Program
```

右移网络实际是循环移位；规格中的偶数前提保证移出的最低位为零。

```lean
def shiftLeft (c : Wire) : List Wire → Program
```

左移按相反顺序执行同一组 CSWAP；只重排无测量交换门。

```lean
theorem shift_counts (c : Wire) (r : List Wire)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (shiftRight c r) = r.length-1 ∧ measurementCount (shiftRight c r) = 0 ∧ toffoliCount (shiftLeft c r) = r.length-1 ∧ measurementCount (shiftLeft c r) = 0`。

```lean
theorem shift_frame (c : Wire) (r : List Wire) (s : State) (m : List Bool)
```

证明了受控左右移位均保持寄存器之外的基态位及相位。

```lean
theorem shiftRight_value (c a : Wire) (bs : List Wire) (hnd : (c::a::bs).Nodup)
    (s : State) (m : List Bool)
```

证明了非空寄存器的完整循环右移值公式，包含被移到最高位的原最低位。

```lean
theorem shiftRight_left_cancel (c : Wire) (r : List Wire) (hnd : (c::r).Nodup)
    (s : State) (m : List Bool)
```

证明了左右网络互为逆；交换门无测量，所以不涉及测量程序的逆序执行。

```lean
theorem shiftRight_spec (c : Wire) (r : List Wire) (hnd : (c::r).Nodup)
    (C : Bool) (X : Nat) (heven : C = true → X%2 = 0)
```

证明了若活动控制下输入为偶数，循环右移就是精确除以二。

```lean
theorem shiftLeft_spec (c : Wire) (r : List Wire) (hnd : (c::r).Nodup)
    (C : Bool) (X : Nat) (hfit : C = true → 2*X < 2^r.length)
```

证明了左移要求活动控制下 2X 仍能放入原寄存器，不静默截断最高位。

```lean
theorem shift_wires (c : Wire) (r : List Wire)
```

证明了寄存器或线路列表的长度关系：`wires (shiftRight c r) = (if r.length<2 then ∅ else (c::r).toFinset) ∧ wires (shiftLeft c r) = (if r.length<2 then ∅ else (c::r).toFinset)`。

```lean
theorem shift_resources (c : Wire) (r : List Wire) (hnd : (c::r).Nodup)
```

证明了所列程序的精确资源关系：`toffoliCount (shiftRight c r) = r.length-1 ∧ measurementCount (shiftRight c r) = 0 ∧ qubitCount (shiftRight c r) = (if r.length<2 then 0 else r.length+1) ∧ toffoliCount (shiftLeft c r) = r.length-1 ∧ measurementCount (shiftLeft c r) = 0 ∧ qubitCount (shiftLeft c r) = (if r.length<2 then 0 else r.length+1)`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem cswap_resources (c a b : Wire) (hnd : [c,a,b].Nodup)
```

证明了所列程序的精确资源关系：`toffoliCount (cswap c a b) = 1 ∧ measurementCount (cswap c a b) = 0 ∧ qubitCount (cswap c a b) = 3`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。
