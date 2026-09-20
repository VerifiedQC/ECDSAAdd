# Addition

本模块提供固定位宽的二进制加减法、受控加减法和计数器，并证明计算结果、工作位清理及资源用量。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [FullAdder.lean](FullAdder.lean)

该文件实现量子 full adder，以及计算后清除进位辅助位的电路。输入为三个位 A、B、C，和位与进位分别为：

```text
SUM(A,B,C)   = A XOR B XOR C
CARRY(A,B,C) = (A AND B) XOR (A AND C) XOR (B AND C)
```

### fullAdder

从 [fullAdder_spec](FullAdder.lean#L59) 可以看出：当 out 和 carry 初始化为 0 时，电路把和位写入 out、进位写入 carry，保持三个输入。假设 a、b、cin、out、carry 是五根互不相同的 wire：

```text
{ a=A, b=B, cin=C, out=0, carry=0 }
fullAdder a b cin out carry
{ a=A, b=B, cin=C, out=SUM(A,B,C), carry=CARRY(A,B,C) }
```

规格实际还允许任意输出初值 O、K：结果分别是 `O XOR SUM(A,B,C)` 和 `K XOR CARRY(A,B,C)`。

文件通过 [fullAdder_correct](FullAdder.lean#L22) 证明完整状态层面的正确性。对于任意初始状态 s₀ 和任意预先提供的测量结果 m，在上述五线互异的前提下，令 `A=s₀[a]`、`B=s₀[b]`、`C=s₀[cin]`，运行后的状态 s₁ 满足：

```text
{ 初始状态为 s₀ }
fullAdder a b cin out carry
{ s₁[out]   = s₀[out]   XOR SUM(A,B,C)
  ∧ s₁[carry] = s₀[carry] XOR CARRY(A,B,C)
  ∧ s₁.phase = s₀.phase
  ∧ 对所有 w∉{out,carry}，s₁[w]=s₀[w] }
```

也就是说，不仅三个输入保持不变，其他所有 wire 的值和整体相位也保持不变；正确性不要求 out、carry 的初值为零。

### eraseCarry

从 [eraseCarry_spec](FullAdder.lean#L73) 可以看出：如果 carry 已保存这三个输入对应的进位，电路将它清零，并保留输入。这里的规格要求 a、b、cin、carry 四线互异：

```text
{ a=A, b=B, cin=C, carry=CARRY(A,B,C) }
eraseCarry a b cin carry
{ a=A, b=B, cin=C, carry=0 }
```

[eraseCarry_correct](FullAdder.lean#L45) 进一步给出逐线保持的结论。它只要求 a、b、cin 各自不等于 carry；不要求三根输入线彼此不同。对于任意测量结果：

```text
{ 初始状态为 s₀
  ∧ s₀[carry]=CARRY(s₀[a],s₀[b],s₀[cin]) }
eraseCarry a b cin carry
{ s₁[carry]=0
  ∧ s₁.phase=s₀.phase
  ∧ 对所有 w≠carry，s₁[w]=s₀[w] }
```

因此，测量清理既归零进位，也恢复相位，且不改变其他 wire。

## [RippleAdder.lean](RippleAdder.lean)

这里 n=bs.length。进位工作区初始为零，将 `(X+Y+C.toNat) mod 2^n` 异或到输出 O；零输出版本直接得到该和，增加一位且满足输入范围时得到不截断的完整和。输入与进位输入保持，工作区恢复零。

### rippleAdder_xor

实现约定：[rippleAdder_xor_spec](RippleAdder.lean#L191)。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C, bs.map AddBit.out = O, bs.map AddBit.carry = (0 : Nat) }
rippleAdder bs cin
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C, bs.map AddBit.out = (O XOR ((X + Y + C.toNat) %
    2^bs.length)), bs.map AddBit.carry = (0 : Nat) }
```

正确性由 [rippleAdder_xor_correct](RippleAdder.lean#L52) 证明：

进位工作位初始为零时，程序将两输入及输入进位之和的低 bs.length 位异或到输出；输出以外的基态位保持不变，且相位恢复。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (∀ b ∈ bs, s₀[b.carry] = false) }
rippleAdder bs cin
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ bs.map AddBit.out → s₁[w] = s₀[w])
  ∧ val₁(bs.map AddBit.out) = val₀(bs.map AddBit.out) XOR ((val₀(bs.map AddBit.x) + val₀(bs.map AddBit.y) +
    (s₀[cin]).toNat) % 2^bs.length) }
```

### rippleAdder

实现约定：[rippleAdder_spec](RippleAdder.lean#L224)。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C, bs.map AddBit.out = (0 : Nat), bs.map AddBit.carry = (0 :
    Nat) }
rippleAdder bs cin
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C, bs.map AddBit.out = ((X + Y + C.toNat) % 2^bs.length),
    bs.map AddBit.carry = (0 : Nat) }
```

正确性由 [rippleAdder_correct](RippleAdder.lean#L152) 证明：

输出和进位工作位初始为零时，输出得到两输入及输入进位之和的低 bs.length 位；输出以外的基态位保持不变，且相位恢复。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (∀ b ∈ bs, s₀[b.out] = false ∧ s₀[b.carry] = false) }
rippleAdder bs cin
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ bs.map AddBit.out → s₁[w] = s₀[w])
  ∧ val₁(bs.map AddBit.out) = (val₀(bs.map AddBit.x) + val₀(bs.map AddBit.y) + (s₀[cin]).toNat) % 2^bs.length
    }
```

### rippleAdder_wide

实现约定：[rippleAdder_wide_spec](RippleAdder.lean#L235)。

适用前提：

- `cin :: addWires (bs ++ [high])` 中的 wire 互不相同。
- `X < 2^bs.length`。
- `Y < 2^bs.length`。

```text
{ (bs ++ [high]).map AddBit.x = X, (bs ++ [high]).map AddBit.y = Y, cin = C, (bs ++ [high]).map AddBit.out =
    (0 : Nat), (bs ++ [high]).map AddBit.carry = (0 : Nat) }
rippleAdder (bs ++ [high]) cin
{ (bs ++ [high]).map AddBit.x = X, (bs ++ [high]).map AddBit.y = Y, cin = C, (bs ++ [high]).map AddBit.out =
    (X + Y + C.toNat), (bs ++ [high]).map AddBit.carry = (0 : Nat) }
```

## [Subtractor.lean](Subtractor.lean)

这里 n=bs.length。进位输入及工作区为零时，将 `(X+2^n−Y) mod 2^n` 异或到输出；零输出版本直接得到该差，两个输入保持、工作区恢复零。

### rippleSubtractor_xor

实现约定：[rippleSubtractor_xor_spec](Subtractor.lean#L125)。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false, bs.map AddBit.out = O, bs.map AddBit.carry = (0 :
    Nat) }
rippleSubtractor bs cin
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false, bs.map AddBit.out = (O XOR ((X + 2^bs.length - Y) %
    2^bs.length)), bs.map AddBit.carry = (0 : Nat) }
```

正确性由 [rippleSubtractor_xor_correct](Subtractor.lean#L36) 证明：

 cin 和进位工作位初始为零时，输出异或上 (X+2^bs.length−Y) % 2^bs.length；输出以外的基态位保持不变，且相位恢复。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (s₀[cin] = false) ∧ (∀ b ∈ bs, s₀[b.carry] = false) }
rippleSubtractor bs cin
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ bs.map AddBit.out → s₁[w] = s₀[w])
  ∧ val₁(bs.map AddBit.out) = val₀(bs.map AddBit.out) XOR ((val₀(bs.map AddBit.x) + 2^bs.length - val₀(bs.map
    AddBit.y)) % 2^bs.length) }
```

### rippleSubtractor

实现约定：[rippleSubtractor_spec](Subtractor.lean#L155)。

适用前提：

- `cin :: addWires bs` 中的 wire 互不相同。

```text
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false, bs.map AddBit.out = (0 : Nat), bs.map AddBit.carry =
    (0 : Nat) }
rippleSubtractor bs cin
{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false, bs.map AddBit.out = ((X + 2^bs.length - Y) %
    2^bs.length), bs.map AddBit.carry = (0 : Nat) }
```

## [Layout.lean](Layout.lean)

`add` 将截断和异或到 O，`sub` 将截断差异或到 O，保持输入并恢复进位工作区；若输出原本就是该结果，再执行一次将其清零，连续两次 add 恢复原输出。

### add

实现约定：[add_spec](Layout.lean#L25)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }
add L
{ L.x = X, L.y = Y, L.cin = C, L.out = (O XOR ((X + Y + C.toNat) % 2^L.width)), L.carry = 0 }
```

### sub

实现约定：[sub_spec](Layout.lean#L32)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.x = X, L.y = Y, L.cin = false, L.out = O, L.carry = 0 }
sub L
{ L.x = X, L.y = Y, L.cin = false, L.out = (O XOR ((X + 2^L.width - Y) % 2^L.width)), L.carry = 0 }
```

### add_erase

实现约定：[add_erase_spec](Layout.lean#L39)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.x = X, L.y = Y, L.cin = C, L.out = ((X + Y + C.toNat) % 2^L.width), L.carry = 0 }
add L
{ L.x = X, L.y = Y, L.cin = C, L.out = 0, L.carry = 0 }
```

### sub_erase

实现约定：[sub_erase_spec](Layout.lean#L46)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.x = X, L.y = Y, L.cin = false, L.out = ((X + 2^L.width - Y) % 2^L.width), L.carry = 0 }
sub L
{ L.x = X, L.y = Y, L.cin = false, L.out = 0, L.carry = 0 }
```

### add_twice

实现约定：[add_twice_spec](Layout.lean#L53)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }
(add L ++ add L)
{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }
```

## [InPlaceAdder.lean](InPlaceAdder.lean)

这里 n=y.length。`addInPlace` 将 y 更新为 `(X+Y+C.toNat) mod 2^n`，`subInPlace` 将其更新为 `(Y+2^n−X) mod 2^n`；受控常量和寄存器版本仅在控制开启时加减，保持源与控制，零掩码和进位工作区最终仍为零。还给出复制及保留外部源的组合规格。

### majority

正确性由 [majority_correct](InPlaceAdder.lean#L24) 证明：

程序只更新 carry，将其与三个输入的进位异或，其他基态位和相位保持不变。

适用前提：

- `[a, b, cin, carry]` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
majority a b cin carry
{ s₁.phase=s₀.phase
  ∧ s₁[carry] = s₀[carry] XOR carryBit (s₀[a]) (s₀[b]) (s₀[cin])
  ∧ (∀ w, w ∉ {carry} → s₁[w] = s₀[w]) }
```

### addInPlace

实现约定：[addInPlace_spec](InPlaceAdder.lean#L196)。

适用前提：

- `cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `x.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ x = X, y = Y, cin = C, carry = 0 }
addInPlace x y carry cin
{ x = X, y = ((X + Y + C.toNat) % 2^y.length), cin = C, carry = 0 }
```

正确性由 [addInPlace_correct](InPlaceAdder.lean#L45) 证明：

位宽匹配、进位工作位初始为零时，y 得到 (X+Y+C.toNat) % 2^y.length；y 以外的基态位保持不变，且相位恢复。

适用前提：

- `cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `x.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ 初始状态 = s₀ ∧ (∀ w ∈ carry, s₀[w] = false) }
addInPlace x y carry cin
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ y → s₁[w] = s₀[w])
  ∧ val₁(y) = (val₀(x) + val₀(y) + (s₀[cin]).toNat) % 2^y.length }
```

### subInPlace

实现约定：[subInPlace_spec](InPlaceAdder.lean#L253)。

适用前提：

- `cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `x.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ x = X, y = Y, cin = false, carry = 0 }
subInPlace x y carry cin
{ x = X, y = ((Y + 2^y.length - X) % 2^y.length), cin = false, carry = 0 }
```

### maskedAddConst

实现约定：[maskedAddConst_spec](InPlaceAdder.lean#L440)。

适用前提：

- `c :: cin :: (T ++ y ++ carry)` 中的 wire 互不相同。
- `T.length = y.length`。
- `carry.length + 1 = y.length`。
- `K < 2^T.length`。

```text
{ c = C, T = 0, y = Y, cin = false, carry = 0 }
maskedAddConst c T y carry cin K
{ c = C, T = 0, y = ((Y + (if C then K else 0)) % 2^y.length), cin = false, carry = 0 }
```

### maskedSubConst

实现约定：[maskedSubConst_spec](InPlaceAdder.lean#L453)。

适用前提：

- `c :: cin :: (T ++ y ++ carry)` 中的 wire 互不相同。
- `T.length = y.length`。
- `carry.length + 1 = y.length`。
- `K < 2^T.length`。

```text
{ c = C, T = 0, y = Y, cin = false, carry = 0 }
maskedSubConst c T y carry cin K
{ c = C, T = 0, y = ((Y + 2^y.length - (if C then K else 0)) % 2^y.length), cin = false, carry = 0 }
```

### maskedCopyWithFrame

实现约定：[maskedCopyWithFrame_spec](InPlaceAdder.lean#L465)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `src.length = t.length`。

```text
{ c = C, src = S, t = V, y = Y, cin = false, carry = 0 }
copyRegister (some c) src t
{ c = C, src = S, t = (V XOR (if C then S else 0)), y = Y, cin = false, carry = 0 }
```

### addInPlaceWithSource

实现约定：[addInPlaceWithSource_spec](InPlaceAdder.lean#L498)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `t.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ c = C, src = S, t = V, y = Y, cin = false, carry = 0 }
addInPlace t y carry cin
{ c = C, src = S, t = V, y = ((Y + V) % 2^y.length), cin = false, carry = 0 }
```

### subInPlaceWithSource

实现约定：[subInPlaceWithSource_spec](InPlaceAdder.lean#L527)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `t.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ c = C, src = S, t = V, y = Y, cin = false, carry = 0 }
subInPlace t y carry cin
{ c = C, src = S, t = V, y = ((Y + 2^y.length - V) % 2^y.length), cin = false, carry = 0 }
```

### maskedAddInPlace

实现约定：[maskedAddInPlace_spec](InPlaceAdder.lean#L557)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `src.length = t.length`。
- `t.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }
maskedAddInPlace c src t y carry cin
{ c = C, src = S, t = 0, y = ((Y + (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }
```

### maskedSubInPlace

实现约定：[maskedSubInPlace_spec](InPlaceAdder.lean#L570)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `src.length = t.length`。
- `t.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }
maskedSubInPlace c src t y carry cin
{ c = C, src = S, t = 0, y = ((Y + 2^y.length - (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }
```

## [MeasuredMaskedAdder.lean](MeasuredMaskedAdder.lean)

这里 n=y.length。掩码等于受控源值时可被测量清零；令 V 为控制开启时的源 S（否则为零），加法将 y 更新为 `(Y+V) mod 2^n`，减法更新为 `(Y+2^n−V) mod 2^n`；保持源与控制，将掩码和进位工作区恢复为零。

### eraseMask

正确性由 [eraseMask_correct](MeasuredMaskedAdder.lean#L16) 证明：

 dst 保存由 c 控制的 src 掩码时，eraseMask 将 dst 清零，dst 以外的基态位保持不变，且相位恢复。

适用前提：

- `src.length=dst.length`。
- `c::(src++dst)` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (val₀(dst) = if s₀[c] then val₀(src) else 0) }
eraseMask c src dst
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉dst → s₁[w]=s₀[w])
  ∧ val₁(dst)=0 }
```

### eraseMask_frame

实现约定：[eraseMask_frame_spec](MeasuredMaskedAdder.lean#L98)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `src.length = t.length`。

```text
{ c = C, src = S, t = (if C then S else 0), y = Y, cin = false, carry = 0 }
eraseMask c src t
{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }
```

### measuredMaskedAddInPlace

实现约定：[measuredMaskedAddInPlace_spec](MeasuredMaskedAdder.lean#L118)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `src.length = t.length`。
- `t.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }
measuredMaskedAddInPlace c src t y carry cin
{ c = C, src = S, t = 0, y = ((Y + (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }
```

### measuredMaskedSubInPlace

实现约定：[measuredMaskedSubInPlace_spec](MeasuredMaskedAdder.lean#L130)。

适用前提：

- `c :: cin :: (src ++ t ++ y ++ carry)` 中的 wire 互不相同。
- `src.length = t.length`。
- `t.length = y.length`。
- `carry.length + 1 = y.length`。

```text
{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }
measuredMaskedSubInPlace c src t y carry cin
{ c = C, src = S, t = 0, y = ((Y + 2^y.length - (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }
```

## [Counter.lean](Counter.lean)

10 位计数器分别得到 `(K+C.toNat) mod 1024` 或 `(K+1024−C.toNat) mod 1024`；XOR 版本保持 K 并将结果异或到输出 O，转移版本要求输出初始为零，写入结果同时清零旧 K。两者保持控制并清理工作位；counterFlip 仅翻转辅助寄存器与进位位。

### counterFlip

实现约定：[counterFlip_spec](Counter.lean#L26)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.x=K, L.y=Y, L.cin=C, L.out=O, L.carry=0 }
counterFlip L
{ L.x=K, L.y=(2^L.width-1-Y), L.cin=(!C), L.out=O, L.carry=0 }
```

### counterIncXor

实现约定：[counterIncXor_spec](Counter.lean#L55)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width=10`。

```text
{ L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 }
counterIncXor L
{ L.x=K, L.y=0, L.cin=C, L.out=(O XOR ((K+C.toNat)%1024)), L.carry=0 }
```

### counterDecXor

实现约定：[counterDecXor_spec](Counter.lean#L61)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width=10`。

```text
{ L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 }
counterDecXor L
{ L.x=K, L.y=0, L.cin=C, L.out=(O XOR ((K+1024-C.toNat)%1024)), L.carry=0 }
```

### counterInc

实现约定：[counterInc_spec](Counter.lean#L136)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width=10`。

```text
{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }
counterInc L
{ L.x=0, L.y=0, L.cin=C, L.out=((K+C.toNat)%1024), L.carry=0 }
```

### counterDec

实现约定：[counterDec_spec](Counter.lean#L162)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width=10`。

```text
{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }
counterDec L
{ L.x=0, L.y=0, L.cin=C, L.out=((K+1024-C.toNat)%1024), L.carry=0 }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [FullAdder.lean](FullAdder.lean)

- 资源：

  - `fullAdder a b cin out carry`：T = `1`，M = `0`，Q = `5`。
  - `eraseCarry a b cin carry`：T = `0`，M = `1`，Q = `4`。

### [RippleAdder.lean](RippleAdder.lean)

- 资源：n 为逐位布局数量 bs.length；增加一位时资源公式中的长度也相应增加。 `rippleAdder bs cin`：T = `bs.length`，M = `bs.length`，Q = `if bs.isEmpty then 0 else 4 * bs.length + 1`。

### [Subtractor.lean](Subtractor.lean)

- 资源：n 为 bs.length；即使 bs 为空，减法程序仍使用 cin，因此 Q=1。 `rippleSubtractor bs cin`：T = `bs.length`，M = `bs.length`，Q = `4 * bs.length + 1`。

### [Layout.lean](Layout.lean)

- 资源：n 为 L.width；空布局的 add 不使用线路，sub 仍使用 cin。

  - `add L`：T = `L.width`，M = `L.width`，Q = `if L.bits.isEmpty then 0 else 4 * L.width + 1`。
  - `sub L`：T = `L.width`，M = `L.width`，Q = `4 * L.width + 1`。

### [InPlaceAdder.lean](InPlaceAdder.lean)

- 资源：n 为目标位宽 y.length；精确线路数要求 n≥1。

  - `addInPlace x y carry cin` / `subInPlace x y carry cin`：T = `y.length - 1`，M = `y.length - 1`，Q = `3 * y.length`。
  - `maskedAddInPlace c src t y carry cin` / `maskedSubInPlace c src t y carry cin`：T = `3*y.length-1`，M = `y.length-1`。

### [MeasuredMaskedAdder.lean](MeasuredMaskedAdder.lean)

- 资源：n 为目标位宽 y.length；精确线路数使用定理中的非空、互异条件。

  - `eraseMask c src dst`：T = `0`，M = `dst.length`。
  - `measuredMaskedAddInPlace c src t y carry cin` / `measuredMaskedSubInPlace c src t y carry cin`：T = `2*y.length-1`，M = `2*y.length-1`，Q = `4*y.length+1`。

### [Counter.lean](Counter.lean)

- 资源：

  - `counterIncXor L` / `counterDecXor L`：T = `10`，M = `10`，Q = `41`。
  - `counterInc L` / `counterDec L`：T = `20`，M = `20`，Q = `41`。
