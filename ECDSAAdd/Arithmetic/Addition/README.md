# Addition

本模块提供固定位宽的二进制加减法、受控加减法和计数器，并证明计算结果、工作位清理及资源用量。

## 文件目录

[FullAdder.lean](#fulladderlean)

这个文件定义一位全加器和进位清理电路，证明它们的计算结果、状态保持性质和资源用量。

[RippleAdder.lean](#rippleadderlean)

这个文件将一位全加器组合成多位加法器，证明截断和、额外高位保存的完整和，以及进位清理与资源用量。

[Subtractor.lean](#subtractorlean)

这个文件利用加法器构造减法器，将两个输入之差按输出位宽截断后异或到输出，并证明正确性及资源用量。

[Layout.lean](#layoutlean)

这个文件把逐位加法线路组织成统一布局，提供加减法、结果清理及资源定理。

[InPlaceAdder.lean](#inplaceadderlean)

这个文件定义直接更新目标寄存器的加减法，以及受控常量和受控寄存器版本，证明结果、工作位清理与资源用量。

[MeasuredMaskedAdder.lean](#measuredmaskedadderlean)

这个文件用测量和即时相位修正清除受控加减法的临时掩码，证明计算结果不变及对应的资源用量。

[Counter.lean](#counterlean)

这个文件提供 10 位受控加一、减一计数器，既支持 XOR 输出，也支持把结果写入另一寄存器后清零原计数。

## [FullAdder.lean](FullAdder.lean)

```lean
def sumBit (a b c : Bool) : Bool
```

计算三个输入位相加得到的和位。

```lean
def carryBit (a b c : Bool) : Bool
```

计算三个输入位相加得到的进位。

```lean
def fullAdder (a b cin out carry : Wire) : Program
```

一位全加器：将和位异或到 out，将进位异或到 carry，保留三个输入位。

```lean
def eraseCarry (a b cin carry : Wire) : Program
```

通过测量和即时相位修正清除已计算的进位。

```lean
theorem fullAdder_correct (a b cin out carry : Wire)
    (hdisjoint : [a, b, cin, out, carry].Nodup)
    (s : State) (m : List Bool)
```

证明了在线路互异时，全加器只将和位、进位分别异或到 out、carry，其他基态位及相位保持不变。

```lean
theorem eraseCarry_correct (a b cin carry : Wire)
    (ha : a ≠ carry) (hb : b ≠ carry) (hc : cin ≠ carry)
    (s : State)
    (hcarry : s.basis carry = carryBit (s.basis a) (s.basis b) (s.basis cin))
    (m : List Bool)
```

证明了 carry 保存正确进位且不与输入重叠时，清理程序将 carry 置零，其他基态位及相位保持不变。

```lean
theorem fullAdder_spec (a b cin out carry : Wire)
    (hnd : [a, b, cin, out, carry].Nodup) (A B C O K : Bool)
```

证明了全加器保持 A、B、C，将输出 O 更新为 O XOR sumBit A B C，将进位 K 更新为 K XOR carryBit A B C，并保持相位。

```lean
theorem eraseCarry_spec (a b cin carry : Wire)
    (hnd : [a, b, cin, carry].Nodup) (A B C : Bool)
```

证明了输入保持不变，正确的进位被清零，且对所有测量结果恢复相位。

```lean
theorem fullAdder_toffoliCount (a b cin out carry : Wire)
```

证明了全加器使用 1 个 Toffoli 门。

```lean
theorem fullAdder_measurementCount (a b cin out carry : Wire)
```

证明了全加器不使用测量。

```lean
theorem eraseCarry_resources (a b cin carry : Wire)
```

证明了进位清理不使用 Toffoli 门，只使用 1 次测量。

```lean
theorem fullAdder_wires (a b cin out carry : Wire)
```

证明了全加器的线路支持恰为 a、b、cin、out、carry 的集合。

```lean
theorem eraseCarry_wires (a b cin carry : Wire)
```

证明了进位清理的线路支持恰为 a、b、cin、carry 的集合。

```lean
theorem fullAdder_qubitCount (a b cin out carry : Wire)
    (hnd : [a, b, cin, out, carry].Nodup)
```

证明了线路互异时，全加器使用 5 根不同物理线路。

```lean
theorem eraseCarry_qubitCount (a b cin carry : Wire)
    (hnd : [a, b, cin, carry].Nodup)
```

证明了线路互异时，进位清理使用 4 根不同物理线路。

```lean
theorem fullAdder_bit_value (a b c : Bool)
```

证明了和位加上两倍进位，等于三个输入位的数值之和。

## [RippleAdder.lean](RippleAdder.lean)

```lean
structure AddBit
```

一位加法的布局 AddBit 定义为两个输入位 x、y，输出位 out 和进位工作位 carry 四部分。

```lean
def addWires : List AddBit → List Wire
```

列出逐位加法布局包含的全部线路。

```lean
def rippleAdder : List AddBit → Wire → Program
```

按低位到高位传递进位，将加法结果异或到输出，并清理临时进位。

```lean
theorem mem_addWires {bs : List AddBit} {b : AddBit} (h : b ∈ bs)
```

证明了布局中的任意一位，其 x、y、out、carry 都属于总线路列表。

```lean
theorem sum_value_step (A B C : Bool) (X Y n : Nat)
```

证明了当前和位与高位加法结果组合后，等于整个加法结果的低 n+1 位。

```lean
theorem rippleAdder_xor_correct (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (s : State) (m : List Bool)
    (hclean : ∀ b ∈ bs, s.basis b.carry = false)
```

证明了进位工作位初始为零时，程序将两输入及输入进位之和的低 bs.length 位异或到输出；输出以外的基态位保持不变，且相位恢复。

```lean
theorem rippleAdder_correct (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (s : State) (m : List Bool)
    (hclean : ∀ b ∈ bs, s.basis b.out = false ∧ s.basis b.carry = false)
```

证明了输出和进位工作位初始为零时，输出得到两输入及输入进位之和的低 bs.length 位；输出以外的基态位保持不变，且相位恢复。

```lean
theorem inputs_not_output (bs : List AddBit) (hnd : (addWires bs).Nodup)
```

证明了总线路互异时，任何输入位或进位工作位都不属于输出寄存器。

```lean
theorem rippleAdder_xor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y O : Nat) (C : Bool)
```

证明了输出由 O 更新为 O XOR ((X+Y+C.toNat) % 2^bs.length)，输入保持，进位工作区归零，且相位恢复。

```lean
theorem rippleAdder_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y : Nat) (C : Bool)
```

证明了零输出得到 (X+Y+C.toNat) % 2^bs.length，输入保持，进位工作区归零，且相位恢复。

```lean
theorem rippleAdder_wide_spec (bs : List AddBit) (high : AddBit) (cin : Wire)
    (hnd : (cin :: addWires (bs ++ [high])).Nodup) (X Y : Nat) (C : Bool)
    (hX : X < 2^bs.length) (hY : Y < 2^bs.length)
```

证明了额外增加一位、且 X 和 Y 均可由原位宽表示时，零输出得到完整整数和 X+Y+C.toNat，不再截断；输入保持，进位工作区归零，且相位恢复。

```lean
theorem rippleAdder_toffoliCount (bs : List AddBit) (cin : Wire)
```

证明了 Toffoli 门数等于加法位数 bs.length。

```lean
theorem rippleAdder_measurementCount (bs : List AddBit) (cin : Wire)
```

证明了测量次数等于加法位数 bs.length。

```lean
theorem addWires_length (bs : List AddBit)
```

证明了总线路列表长度为 4 * bs.length。

```lean
theorem rippleAdder_wires (b : AddBit) (bs : List AddBit) (cin : Wire)
```

证明了非空加法器的线路支持恰为 cin 与各位布局线路的集合。

```lean
theorem rippleAdder_qubitCount (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup)
```

证明了线路互异时，空加法器使用 0 根线路，非空加法器使用 4 * bs.length + 1 根线路。

## [Subtractor.lean](Subtractor.lean)

```lean
def rippleSubtractor (bs : List AddBit) (cin : Wire) : Program
```

将输入 y 和 cin 取反、执行加法、再恢复取反；在 cin 初始为零时，将 X−Y 的截断结果异或到输出。

```lean
private theorem y_sublist (bs : List AddBit)
```

证明了 y 寄存器的线路列表是全部加法线路列表的子列表。

```lean
private theorem not_y (bs : List AddBit) (hnd : (addWires bs).Nodup)
```

证明了总线路互异时，x、out 和 carry 中的线路都不属于 y 寄存器。

```lean
theorem rippleSubtractor_xor_correct (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (s : State) (m : List Bool)
    (hc : s.basis cin = false) (hclean0 : ∀ b ∈ bs, s.basis b.carry = false)
```

证明了 cin 和进位工作位初始为零时，输出异或上 (X+2^bs.length−Y) % 2^bs.length；输出以外的基态位保持不变，且相位恢复。

```lean
theorem rippleSubtractor_xor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y O : Nat)
```

证明了输出由 O 更新为 O XOR ((X+2^bs.length−Y) % 2^bs.length)，输入保持，cin 和进位工作区归零，且相位恢复。

```lean
theorem rippleSubtractor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y : Nat)
```

证明了零输出得到 (X+2^bs.length−Y) % 2^bs.length，输入保持，cin 和进位工作区归零，且相位恢复。

```lean
theorem rippleSubtractor_counts (bs : List AddBit) (cin : Wire)
```

证明了 Toffoli 门数和测量次数均为 bs.length。

```lean
theorem rippleSubtractor_wires (bs : List AddBit) (cin : Wire)
```

证明了减法器的线路支持恰为 cin 与各位布局线路的集合。

```lean
theorem rippleSubtractor_qubitCount (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup)
```

证明了线路互异时，减法器使用 4 * bs.length + 1 根不同物理线路。

## [Layout.lean](Layout.lean)

```lean
structure AdderLayout
```

加法器布局 AdderLayout 定义为逐位布局列表 bits 和输入进位 cin 两部分。

以下 width、x、y、out、carry、wires 位于 AdderLayout 命名空间。

```lean
def width (L : AdderLayout) : Nat
```

给出加法器的位宽。

```lean
def x (L : AdderLayout) : List Wire
```

取出第一个输入寄存器的线路。

```lean
def y (L : AdderLayout) : List Wire
```

取出第二个输入寄存器的线路。

```lean
def out (L : AdderLayout) : List Wire
```

取出输出寄存器的线路。

```lean
def carry (L : AdderLayout) : List Wire
```

取出进位工作寄存器的线路。

```lean
def wires (L : AdderLayout) : List Wire
```

列出包含输入进位在内的全部布局线路。

以下声明回到 ECDSAAdd.Arithmetic 命名空间。

```lean
def add (L : AdderLayout) : Program
```

在给定布局上执行 XOR 输出加法。

```lean
def sub (L : AdderLayout) : Program
```

在给定布局上执行 XOR 输出减法。

```lean
theorem add_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) (C : Bool)
```

证明了输出由 O 更新为 O XOR ((X+Y+C.toNat) % 2^L.width)，输入保持，进位工作区归零，且相位恢复。

```lean
theorem sub_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat)
```

证明了 cin 初始为零时，输出由 O 更新为 O XOR ((X+2^L.width−Y) % 2^L.width)，输入保持，进位工作区归零，且相位恢复。

```lean
theorem add_erase_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y : Nat) (C : Bool)
```

证明了输出已经保存同一加法结果时，再执行一次 add 可将输出清零，保持输入、零进位工作区及相位。

```lean
theorem sub_erase_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y : Nat)
```

证明了输出已经保存同一减法结果且 cin 为零时，再执行一次 sub 可将输出清零，保持输入、零进位工作区及相位。

```lean
theorem add_twice_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) (C : Bool)
```

证明了进位工作区初始为零时，连续执行两次 add 会恢复原输出 O，并保持输入、零进位工作区及相位。

```lean
theorem add_resources (L : AdderLayout) (hnd : L.wires.Nodup)
```

证明了 Toffoli 门数和测量次数均为 L.width；空布局使用 0 根线路，非空布局使用 4 * L.width + 1 根线路。

```lean
theorem sub_resources (L : AdderLayout) (hnd : L.wires.Nodup)
```

证明了 Toffoli 门数和测量次数均为 L.width，线路数为 4 * L.width + 1。

## [InPlaceAdder.lean](InPlaceAdder.lean)

```lean
def majority (a b cin carry : Wire) : Program
```

将三个输入位的进位异或到 carry，不写和位。

```lean
def addInPlace : List Wire → List Wire → List Wire → Wire → Program
```

将 x 与输入进位加到 y 中，结果按 y 的位宽截断，并清理临时进位。

```lean
theorem majority_correct (a b cin carry : Wire) (hnd : [a, b, cin, carry].Nodup)
    (s : State) (m : List Bool)
```

证明了程序只更新 carry，将其与三个输入的进位异或，其他基态位和相位保持不变。

```lean
theorem addInPlace_correct (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (s : State) (m : List Bool)
    (hclean : ∀ w ∈ carry, s.basis w = false)
```

证明了位宽匹配、进位工作位初始为零时，y 得到 (X+Y+C.toNat) % 2^y.length；y 以外的基态位保持不变，且相位恢复。

```lean
theorem addInPlace_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) (C : Bool)
```

证明了 y 原地更新为 (X+Y+C.toNat) % 2^y.length，x 和 cin 保持，进位工作区归零，且相位恢复。

```lean
def subInPlace (x y carry : List Wire) (cin : Wire) : Program
```

在 y 取反前后夹入原地加法；cin 为零时，从 y 中减去 x，结果按 y 的位宽截断。

```lean
private theorem flip_y (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (X Y K : Nat) (C : Bool)
```

证明了对 y 取反将其值变为 2^y.length−1−Y，同时保持 x、cin、进位寄存器及相位。

```lean
private theorem complement_sub (X Y N : Nat) (hN : 0 < N) (hX : X < N) (hY : Y < N)
```

证明了范围内的数经过“取反、加法取模、再取反”，得到 (Y+N−X) % N。

```lean
theorem subInPlace_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat)
```

证明了 cin 初始为零时，y 更新为 (Y+2^y.length−X) % 2^y.length，x 保持，cin 和进位工作区归零，且相位恢复。

```lean
theorem addInPlace_counts (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length)
```

证明了位宽匹配时，原地加法的 Toffoli 门数和测量次数均为 y.length−1。

```lean
theorem subInPlace_counts (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length)
```

证明了位宽匹配时，原地减法的 Toffoli 门数和测量次数均为 y.length−1。

```lean
theorem addInPlace_wires (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length)
```

证明了原地加法的线路支持恰为 cin、x、y 和 carry 的线路集合。

```lean
theorem subInPlace_wires (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length)
```

证明了原地减法的线路支持恰为 cin、x、y 和 carry 的线路集合。

```lean
theorem addInPlace_resources (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length)
```

证明了线路互异、位宽匹配时，原地加法和减法各使用 y.length−1 个 Toffoli 门、同样次数的测量，以及 3 * y.length 根线路。

```lean
def maskedAddConst (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat) : Program
```

按控制位将常量 K 加到 y，并清理临时常量寄存器 T。

```lean
def maskedSubConst (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat) : Program
```

按控制位从 y 减去常量 K，并清理临时常量寄存器 T。

```lean
def maskedAddInPlace (c : Wire) (src t y carry : List Wire) (cin : Wire) : Program
```

按控制位将 src 加到 y，使用 t 保存临时掩码，最后清理 t。

```lean
def maskedSubInPlace (c : Wire) (src t y carry : List Wire) (cin : Wire) : Program
```

按控制位从 y 减去 src，使用 t 保存临时掩码，最后清理 t。

```lean
private theorem masked_load (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (K : Nat) (hK : K < 2^T.length)
    (C : Bool) (V Y : Nat)
```

证明了常量装载把 T 从 V 更新为 V XOR (if C then K else 0)，并保持控制、y、零输入进位、零进位工作区及相位。

```lean
private theorem masked_add (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (V Y : Nat)
```

证明了将 T 中的 V 原地加到 y 时，控制和 T 保持，进位工作区归零，且相位恢复。

```lean
private theorem masked_sub (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (V Y : Nat)
```

证明了从 y 原地减去 T 中的 V 时，控制和 T 保持，进位工作区归零，且相位恢复。

```lean
theorem maskedAddConst_spec (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (Y : Nat)
```

证明了控制为真时 y 加上 K，为假时 y 不变，结果按位宽截断；控制保持，T、cin 和 carry 归零，且相位恢复。

```lean
theorem maskedSubConst_spec (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (Y : Nat)
```

证明了控制为真时 y 减去 K，为假时 y 不变，结果按位宽截断；控制保持，T、cin 和 carry 归零，且相位恢复。

```lean
theorem maskedCopyWithFrame_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (C : Bool) (S V Y : Nat)
```

证明了受控复制把 t 从 V 更新为 V XOR (if C then S else 0)，并保持控制、src、y、零输入进位、零进位工作区及相位。

```lean
theorem addInPlaceWithSource_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (S V Y : Nat)
```

证明了将 t 中的 V 加到 y 时，额外的控制位和 src 也保持不变；t 保持，进位工作区归零，且相位恢复。

```lean
theorem subInPlaceWithSource_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (S V Y : Nat)
```

证明了从 y 减去 t 中的 V 时，额外的控制位和 src 也保持不变；t 保持，进位工作区归零，且相位恢复。

```lean
theorem maskedAddInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat)
```

证明了控制为真时 y 加上 S，为假时 y 不变，结果按位宽截断；控制和 src 保持，t、cin、carry 归零，且相位恢复。

```lean
theorem maskedSubInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat)
```

证明了控制为真时 y 减去 S，为假时 y 不变，结果按位宽截断；控制和 src 保持，t、cin、carry 归零，且相位恢复。

```lean
theorem maskedInPlace_counts (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length = t.length) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length)
```

证明了受控寄存器加法和减法各使用 3 * y.length−1 个 Toffoli 门、y.length−1 次测量。

```lean
theorem maskedInPlace_wires (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length = t.length) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length)
```

证明了受控寄存器加法和减法的线路支持均恰为 c、cin、src、t、y、carry 的线路集合。

```lean
theorem maskedConst_wires_subset (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat)
    (hT : T.length = y.length) (hc : carry.length + 1 = y.length)
```

证明了受控常量加法和减法不会触及 c、cin、T、y、carry 之外的线路；这里只给支持集上界。

```lean
theorem maskedInPlace_wires_subset (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length = t.length) (ht : t.length = y.length) (hc : carry.length + 1 = y.length)
```

证明了受控寄存器加法和减法不会触及 c、cin、src、t、y、carry 之外的线路。

## [MeasuredMaskedAdder.lean](MeasuredMaskedAdder.lean)

```lean
def eraseMask (c : Wire) : List Wire → List Wire → Program
```

通过测量和即时相位修正清除目标寄存器中的受控源掩码。

```lean
private theorem eraseMask_bit (c a b : Wire) (hc : c≠b) (ha : a≠b)
    (s : State) (h : s.basis b = (s.basis c && s.basis a)) (v : Bool)
```

证明了目标位 b 保存 c AND a 时，一次测量及对应 CZ 修正可清零 b，其他基态位及相位保持不变。

```lean
theorem eraseMask_correct (c : Wire) (src dst : List Wire)
    (hlen : src.length=dst.length) (hnd : (c::(src++dst)).Nodup)
    (s : State) (m : List Bool)
    (hmask : regValue dst s.basis = if s.basis c then regValue src s.basis else 0)
```

证明了 dst 保存由 c 控制的 src 掩码时，eraseMask 将 dst 清零，dst 以外的基态位保持不变，且相位恢复。

```lean
theorem eraseMask_eq_copy (c : Wire) (src dst : List Wire)
    (hlen : src.length=dst.length) (hnd : (c::(src++dst)).Nodup)
    (s : State) (m : List Bool)
    (hm : regValue dst s.basis = if s.basis c then regValue src s.basis else 0)
```

证明了在 dst 保存正确掩码的前提下，测量清掩码与再次执行受控复制得到相同的完整状态；不是对任意 dst 都成立。

```lean
def measuredMaskedAddInPlace (c : Wire) (src t y carry : List Wire) (cin : Wire) : Program
```

按控制位将 src 加到 y，最后通过测量清理临时掩码 t。

```lean
def measuredMaskedSubInPlace (c : Wire) (src t y carry : List Wire) (cin : Wire) : Program
```

按控制位从 y 减去 src，最后通过测量清理临时掩码 t。

```lean
private theorem eraseMask_frame_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (C : Bool) (S Y : Nat)
```

证明了清理正确掩码 t 时，控制、src、y、零输入进位和零进位工作区保持，t 归零，且相位恢复。

```lean
theorem measuredMaskedAddInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat)
```

证明了控制为真时 y 加上 S，为假时 y 不变，结果按位宽截断；控制和 src 保持，t、cin、carry 归零，且相位恢复。

```lean
theorem measuredMaskedSubInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat)
```

证明了控制为真时 y 减去 S，为假时 y 不变，结果按位宽截断；控制和 src 保持，t、cin、carry 归零，且相位恢复。

```lean
theorem eraseMask_counts (c : Wire) (src dst : List Wire) (hlen : src.length=dst.length)
```

证明了掩码清理不使用 Toffoli 门，测量次数为 dst.length。

```lean
theorem eraseMask_wires_subset (c : Wire) (src dst : List Wire)
```

证明了掩码清理只触及 c、src、dst 中的线路。

```lean
theorem measuredMaskedInPlace_counts (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length=t.length) (ht : t.length=y.length) (hc : carry.length+1=y.length)
```

证明了测量清掩码版本的受控加法和减法各使用 2 * y.length−1 个 Toffoli 门及同样次数的测量。

```lean
theorem measuredMaskedInPlace_wires (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length=t.length) (ht : t.length=y.length) (hc : carry.length+1=y.length)
```

证明了这两个程序的线路支持均恰为 c、cin、src、t、y、carry 的线路集合。

```lean
theorem measuredMaskedInPlace_qubits (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hnd : (c::cin::(src++t++y++carry)).Nodup)
    (hs : src.length=t.length) (ht : t.length=y.length) (hc : carry.length+1=y.length)
```

证明了线路互异、位宽匹配时，这两个程序各使用 4 * y.length+1 根不同物理线路。

```lean
private theorem mask_frame (c cin : Wire) (src t y carry : List Wire) (s u : BasisState)
    (hc : u c=s c) (hi : u cin=s cin)
    (hs : regValue src u=regValue src s) (ht : regValue t u=regValue t s)
    (hk : regValue carry u=regValue carry s)
    (he : ∀ w, w∉c::cin::(src++t++y++carry) → u w=s w)
```

证明了控制、输入进位及各非目标寄存器的值保持，且布局外线路保持时，y 以外的每个基态位都保持不变。

```lean
theorem measuredMaskedAddInPlace_frame (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length=t.length)
    (ht : t.length=y.length) (hc : carry.length+1=y.length)
    (s : State) (m : List Bool) (vt : regValue t s.basis=0)
    (vi : s.basis cin=false) (vk : regValue carry s.basis=0)
```

证明了规定的工作区初始为零时，测量清掩码版本的受控加法不改变 y 以外的任何基态位。

```lean
theorem measuredMaskedSubInPlace_frame (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length=t.length)
    (ht : t.length=y.length) (hc : carry.length+1=y.length)
    (s : State) (m : List Bool) (vt : regValue t s.basis=0)
    (vi : s.basis cin=false) (vk : regValue carry s.basis=0)
```

证明了规定的工作区初始为零时，测量清掩码版本的受控减法不改变 y 以外的任何基态位。

## [Counter.lean](Counter.lean)

```lean
private theorem counter_perm (L : AdderLayout)
```

证明了把 cin、y 放在前面，再接 x、out、carry，只是对布局总线路列表重新排序。

```lean
private def counterFlip (L : AdderLayout) : Program
```

对输入进位 cin 和寄存器 y 取反。

```lean
private theorem counterFlip_spec (L : AdderLayout) (hnd : L.wires.Nodup)
    (K Y O : Nat) (C : Bool)
```

证明了取反把 y 更新为 2^L.width−1−Y、将控制进位 C 变为非 C，并保持 x、out、零进位工作区及相位。

```lean
def counterIncXor (L : AdderLayout) : Program
```

将计数加法结果异或到 out；计数接口使用零 y 和作为加一控制的 cin。

```lean
def counterDecXor (L : AdderLayout) : Program
```

将计数减法结果异或到 out；计数接口使用零 y 和作为减一控制的 cin。

```lean
theorem counterIncXor_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool)
```

证明了 10 位计数器的输出由 O 更新为 O XOR ((K+C.toNat) % 1024)，原计数和控制保持，y、carry 归零，且相位恢复。

```lean
theorem counterDecXor_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool)
```

证明了 10 位计数器的输出由 O 更新为 O XOR ((K+1024−C.toNat) % 1024)，原计数和控制保持，y、carry 归零，且相位恢复。

```lean
private theorem counter_wires (L : AdderLayout) (hw : L.width=10)
```

证明了 10 位计数器的两种 XOR 程序都恰好触及布局的全部线路。

```lean
theorem counterXor_resources (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
```

证明了两种 10 位 XOR 计数程序各使用 10 个 Toffoli 门、10 次测量、41 根线路。

```lean
def AdderLayout.swapCounter (L : AdderLayout) : AdderLayout
```

交换布局中 x 和 out 的角色；这里只改变布局视图，不执行物理交换电路。

```lean
theorem AdderLayout.swapCounter_fields (L : AdderLayout)
```

证明了交换后的 x、out 分别是原 out、x，y、carry、cin 和位宽保持不变。

```lean
theorem AdderLayout.swapCounter_perm (L : AdderLayout)
```

证明了交换布局视图只重新排列线路，不增加或丢失线路。

```lean
def counterInc (L : AdderLayout) : Program
```

将加一后的计数写入另一寄存器，再清零原计数寄存器；cin 为假时数值不变，但存放位置仍改变。

```lean
def counterDec (L : AdderLayout) : Program
```

将减一后的计数写入另一寄存器，再清零原计数寄存器；cin 为假时数值不变，但存放位置仍改变。

```lean
theorem counterInc_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K : Nat) (C : Bool)
```

证明了 10 位计数由 x 中的 K 移到 out 中的 (K+C.toNat) % 1024，x、y、carry 归零，控制保持，且相位恢复。

```lean
theorem counterDec_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K : Nat) (C : Bool)
```

证明了 10 位计数由 x 中的 K 移到 out 中的 (K+1024−C.toNat) % 1024，x、y、carry 归零，控制保持，且相位恢复。

```lean
theorem counter_resources (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
```

证明了两种带清理的 10 位计数程序各使用 20 个 Toffoli 门、20 次测量、41 根线路。

```lean
theorem counterMove_wires (L : AdderLayout) (hw : L.width=10)
```

证明了两种带清理的 10 位计数程序都恰好触及布局的全部线路。
