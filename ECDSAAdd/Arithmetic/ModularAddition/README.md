# 模加法

本模块实现模加法、模减法及其原地、受控和 XOR 输出接口，并证明范围、清理与资源结论。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [Accumulate.lean](Accumulate.lean)

从 `(x=A,y=B,out=0,work=0)` 得到 `(x=0,y=B,out=(A+B) mod q,work=0)`；unaccumulate 从这个结果恢复原状态。

### accumulate

实现约定：[accumulate_spec](Accumulate.lean#L60)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。
- `A < q`。
- `B < q`。

```text
{ L.x = A, L.y = B, L.out = 0, L.work = 0 }
accumulate L q
{ L.x = 0, L.y = B, L.out = ((A+B)%q), L.work = 0 }
```

### unaccumulate

实现约定：[unaccumulate_spec](Accumulate.lean#L74)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。
- `A < q`。
- `B < q`。

```text
{ L.x = 0, L.y = B, L.out = ((A+B)%q), L.work = 0 }
unaccumulate L q
{ L.x = A, L.y = B, L.out = 0, L.work = 0 }
```

## [FieldAddSub.lean](FieldAddSub.lean)

将 `(X+Y) mod p` 或 `(X+p−Y) mod p` 异或到输出 O；零输出版本直接得到域加减结果，输入保持且工作区恢复零。

### fieldAdd

实现约定：[fieldAdd_spec](FieldAddSub.lean#L13)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width = 256`。
- `X < p`。
- `Y < p`。

```text
{ L.x = X, L.y = Y, L.out = O, L.work = 0 }
fieldAdd L
{ L.x = X, L.y = Y, L.out = (O XOR ((X+Y)%p)), L.work = 0 }
```

### fieldSub

实现约定：[fieldSub_spec](FieldAddSub.lean#L19)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width = 256`。
- `X < p`。
- `Y < p`。

```text
{ L.x = X, L.y = Y, L.out = O, L.work = 0 }
fieldSub L
{ L.x = X, L.y = Y, L.out = (O XOR ((X+p-Y)%p)), L.work = 0 }
```

### fieldAdd_zero

实现约定：[fieldAdd_zero_spec](FieldAddSub.lean#L26)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width = 256`。
- `X < p`。
- `Y < p`。

```text
{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }
fieldAdd L
{ L.x = X, L.y = Y, L.out = ((X+Y)%p), L.work = 0 }
```

### fieldSub_zero

实现约定：[fieldSub_zero_spec](FieldAddSub.lean#L32)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.width = 256`。
- `X < p`。
- `Y < p`。

```text
{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }
fieldSub L
{ L.x = X, L.y = Y, L.out = ((X+p-Y)%p), L.work = 0 }
```

## [ModInPlace.lean](ModInPlace.lean)

在输入约减到模数范围内、工作区为零的前提下，将目标 Z 原地更新为 `(A+Z) mod p`，保持 A，工作区恢复零。

### modAddCore

实现约定：[modAddCore_spec](ModInPlace.lean#L360)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `0<p`。
- `p<2^n`。
- `A≤p`。
- `Z<p`。

```text
{ L.a=A, L.z=Z, L.work=0 }
modAddCore L p
{ L.a=A, L.z=(A+Z)%p, L.work=0 }
```

## [ModInPlaceCopy.lean](ModInPlaceCopy.lean)

受控复制只改变目标低 n 位，目标全值更新为 `V XOR (if control then X else 0)`；其余基态位和相位保持。

### copyLow

正确性由 [copyLow_correct](ModInPlaceCopy.lean#L7) 证明：

只复制低 n 位；规范输入与掩码的未复制高位保持零，输出仍按完整寄存器读取。

适用前提：

- `n≤src.length`。
- `n≤dst.length`。
- `c::src++dst` 中的 wire 互不相同。
- `X<2^n`。
- `V<2^n`。

```text
{ 初始状态 = s₀ ∧ (val₀(src)=X) ∧ (val₀(dst)=V) }
copyRegister (some c) (src.take n) (dst.take n)
{ s₁.phase=s₀.phase
  ∧ (∀ q, q∉dst.take n → s₁[q]=s₀[q])
  ∧ val₁(dst) = V XOR (if s₀[c] then X else 0) }
```

## [ModInPlaceNegate.lean](ModInPlaceNegate.lean)

将 A 更新为自然数 `p−A`，保留 Z 并恢复零工作区；这里不是再对 p 取模，因此 A=0 时结果为 p。

### negRaw

实现约定：[negRaw_spec](ModInPlaceNegate.lean#L151)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `p<2^n`。
- `A≤p`。

```text
{ L.a=A,L.z=Z,L.work=0 }
negRaw L p
{ L.a=(p-A),L.z=Z,L.work=0 }
```

正确性由 [negRaw_correct](ModInPlaceNegate.lean#L121) 证明：

扩宽取负保持全部源外位，恢复常数与进位；允许输入等于 p。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `p<2^n`。
- `A≤p`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.a)=A) ∧ (val₀(L.work)=0) }
negRaw L p
{ s₁.phase=s₀.phase
  ∧ (∀ q, q∉L.a → s₁[q]=s₀[q])
  ∧ val₁(L.a)=p-A }
```

## [ModInPlaceSubtract.lean](ModInPlaceSubtract.lean)

原地模减将 Z 更新为 `(Z+p−A) mod p`；受控版本关闭时不改变 Z，保持 A、控制及零工作区。辅助 negRaw 规格将 A 变为 p−A，同时保持外部控制。

### modSubInPlace

实现约定：[modSubInPlace_spec](ModInPlaceSubtract.lean#L13)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `0<p`。
- `p<2^n`。
- `A≤p`。
- `Z<p`。

```text
{ L.a=A,L.z=Z,L.work=0 }
modSubInPlace L p
{ L.a=A,L.z=((Z+p-A)%p),L.work=0 }
```

### negRaw_control

实现约定：[negRaw_control_spec](ModInPlaceSubtract.lean#L25)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `c::L.wires` 中的 wire 互不相同。
- `p<2^n`。
- `A≤p`。

```text
{ c=B,L.a=A,L.z=Z,L.work=0 }
negRaw L p
{ c=B,L.a=(p-A),L.z=Z,L.work=0 }
```

### controlledModSub

实现约定：[controlledModSub_spec](ModInPlaceSubtract.lean#L38)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `c::L.wires` 中的 wire 互不相同。
- `0<p`。
- `p<2^n`。
- `A≤p`。
- `Z<p`。

```text
{ c=B,L.a=A,L.z=Z,L.work=0 }
controlledModSub c L p
{ c=B,L.a=A,L.z=(if B then (Z+p-A)%p else Z),L.work=0 }
```

## [ModInPlaceWrappers.lean](ModInPlaceWrappers.lean)

原地模加将 Z 更新为 `(Z+A) mod p`；受控版本只在控制开启时更新，保持 A、控制及零工作区。

### modAddInPlace

实现约定：[modAddInPlace_spec](ModInPlaceWrappers.lean#L45)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `0<p`。
- `p<2^n`。
- `A≤p`。
- `Z<p`。

```text
{ L.a=A, L.z=Z, L.work=0 }
modAddInPlace L p
{ L.a=A, L.z=(Z+A)%p, L.work=0 }
```

### controlledModAdd

实现约定：[controlledModAdd_spec](ModInPlaceWrappers.lean#L162)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `c::L.wires` 中的 wire 互不相同。
- `0<p`。
- `p<2^n`。
- `A≤p`。
- `Z<p`。

```text
{ c=B, L.a=A, L.z=Z, L.work=0 }
controlledModAdd c L p
{ c=B, L.a=A, L.z=(if B then (Z+A)%p else Z), L.work=0 }
```

## [Modular.lean](Modular.lean)

在各自范围前提下，把 `(X+Y) mod q` 或 `(X+q−Y) mod q` 异或到输出 O，输入保持、工作区从零恢复为零；bounded 版本单独给出允许的范围条件。

### modAdd_bounded

实现约定：[modAdd_bounded_spec](Modular.lean#L103)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。
- `X + Y < 2*q`。

```text
{ L.x = X, L.y = Y, L.out = O, L.work = 0 }
modAdd L q
{ L.x = X, L.y = Y, L.out = (O XOR ((X+Y)%q)), L.work = 0 }
```

### modAdd

实现约定：[modAdd_spec](Modular.lean#L111)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。
- `X < q`。
- `Y < q`。

```text
{ L.x = X, L.y = Y, L.out = O, L.work = 0 }
modAdd L q
{ L.x = X, L.y = Y, L.out = (O XOR ((X+Y)%q)), L.work = 0 }
```

### modSub

实现约定：[modSub_spec](Modular.lean#L165)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。
- `X < q`。
- `Y < q`。

```text
{ L.x = X, L.y = Y, L.out = O, L.work = 0 }
modSub L q
{ L.x = X, L.y = Y, L.out = (O XOR ((X+q-Y)%q)), L.work = 0 }
```

## [ModularFrame.lean](ModularFrame.lean)

输出读值恰好异或模和或模差，输出之外的所有基态位与相位不变；各版本分别要求其定理给出的输入范围和零工作区条件。

### modAdd_bounded

正确性由 [modAdd_bounded_correct](ModularFrame.lean#L63) 证明：

在给定数值范围条件下，将两个输入之和模 q 的结果异或到输出，保持输出外基态位与相位。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.x) + val₀(L.y) < 2*q) ∧ (val₀(L.work) = 0) }
modAdd L q
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ L.out → s₁[w] = s₀[w])
  ∧ val₁(L.out) = val₀(L.out) XOR ((val₀(L.x) + val₀(L.y))%q) }
```

### modAdd

正确性由 [modAdd_correct](ModularFrame.lean#L78) 证明：

将两个输入之和模 q 的结果异或到输出，保持输出外基态位与相位。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.x) < q) ∧ (val₀(L.y) < q) ∧ (val₀(L.work) = 0) }
modAdd L q
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ L.out → s₁[w] = s₀[w])
  ∧ val₁(L.out) = val₀(L.out) XOR ((val₀(L.x) + val₀(L.y))%q) }
```

### modSub

正确性由 [modSub_correct](ModularFrame.lean#L93) 证明：

将两个输入之差模 q 的结果异或到输出，保持输出外基态位与相位。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `0 < q`。
- `q < 2^L.width`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.x) < q) ∧ (val₀(L.y) < q) ∧ (val₀(L.work) = 0) }
modSub L q
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ L.out → s₁[w] = s₀[w])
  ∧ val₁(L.out) = val₀(L.out) XOR ((val₀(L.x) + q - val₀(L.y))%q) }
```

## [UnaryMod.lean](UnaryMod.lean)

约减将 `X mod q` 异或到 O，模取负将 `(q−X) mod q` 异或到 O；保持源 X，算术工作区从零恢复为零。

### reduceXor

实现约定：[reduceXor_spec](UnaryMod.lean#L58)。

适用前提：

- `src ++ dst ++ L.wires` 中的 wire 互不相同。
- `src.length=L.width+1`。
- `dst.length=L.width+1`。
- `0<q`。
- `q<2^L.width`。
- `X<2*q`。

```text
{ src=X, dst=O, L.wires=0 }
reduceXor L q src dst
{ src=X, dst=(O XOR (X%q)), L.wires=0 }
```

### negateXor

实现约定：[negateXor_spec](UnaryMod.lean#L71)。

适用前提：

- `src ++ dst ++ L.wires` 中的 wire 互不相同。
- `src.length=L.width+1`。
- `dst.length=L.width+1`。
- `0<q`。
- `q<2^L.width`。
- `X<q`。

```text
{ src=X, dst=O, L.wires=0 }
negateXor L q src dst
{ src=X, dst=(O XOR ((q-X)%q)), L.wires=0 }
```

## [UnaryModResources.lean](UnaryModResources.lean)

目标分别异或 X mod q 或 (q−X) mod q，目标之外的所有基态位与相位不变。

### reduceXor

正确性由 [reduceXor_correct](UnaryModResources.lean#L49) 证明：

将源值对 q 取模后异或到目标，保持目标外基态位与相位。

适用前提：

- `src ++ dst ++ L.wires` 中的 wire 互不相同。
- `src.length = L.width+1`。
- `dst.length = L.width+1`。
- `0 < q`。
- `q < 2^L.width`。

```text
{ 初始状态 = s₀ ∧ (val₀(src) < 2*q) ∧ (val₀(L.wires) = 0) }
reduceXor L q src dst
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ dst → s₁[w] = s₀[w])
  ∧ val₁(dst) = val₀(dst) XOR (val₀(src) % q) }
```

### negateXor

正确性由 [negateXor_correct](UnaryModResources.lean#L70) 证明：

将源值模 q 的负值异或到目标，保持目标外基态位与相位。

适用前提：

- `src ++ dst ++ L.wires` 中的 wire 互不相同。
- `src.length = L.width+1`。
- `dst.length = L.width+1`。
- `0 < q`。
- `q < 2^L.width`。

```text
{ 初始状态 = s₀ ∧ (val₀(src) < q) ∧ (val₀(L.wires) = 0) }
negateXor L q src dst
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ dst → s₁[w] = s₀[w])
  ∧ val₁(dst) = val₀(dst) XOR ((q - val₀(src))%q) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [Accumulate.lean](Accumulate.lean)

- 资源：`accumulate L q` / `unaccumulate L q`：T = `10*L.width+8`，M = `8*(L.width+1)`，Q = `8*(L.width+1)+2`。

### [FieldAddSub.lean](FieldAddSub.lean)

- 资源：`fieldAdd L` / `fieldSub L`：T = `1284`，M = `1028`，Q = `2057`。

### [ModInPlace.lean](ModInPlace.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。 `modAddCore L p`：T = `4*n-1`，M = `4*n-1`，Q = `4*n+4`。

### [ModInPlaceNegate.lean](ModInPlaceNegate.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。 `negRaw L p`：T = `n`，M = `n`。

### [ModInPlaceSubtract.lean](ModInPlaceSubtract.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `modSubInPlace L p`：T = `6*n-1`，M = `6*n-1`，Q = `4*n+4`。
  - `controlledModSub c L p`：T = `8*n-1`，M = `6*n-1`，Q = `5*n+6`。

### [ModInPlaceWrappers.lean](ModInPlaceWrappers.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `modAddInPlace L p`：T = `4*n-1`，M = `4*n-1`，Q = `4*n+4`。
  - `controlledModAdd c L p`：T = `6*n-1`，M = `4*n-1`，Q = `5*n+5`。

### [ModularResources.lean](ModularResources.lean)

- 资源：`modAdd L q` / `modSub L q`：T = `5 * L.width + 4`，M = `4 * (L.width + 1)`，Q = `8 * L.width + 9`。

### [UnaryModResources.lean](UnaryModResources.lean)

- 资源：`unaryModXor L f operation src dst`：T = `2*toffoliCount operation`，M = `2*measurementCount operation`。
