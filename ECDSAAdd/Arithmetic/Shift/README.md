# 寄存器移位

本模块提供寄存器位的循环移动及受控形式，并证明在相应边界条件下的数值变化和恢复性质。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [Rotate.lean](Rotate.lean)

偶数 X 右循环移位一位得到 X/2；高位为零且位宽满足前提时，左循环移位一位得到 2X。

### swapBits

正确性由 [swapBits_correct](Rotate.lean#L8) 证明：

适用前提：

- `a≠b`。

```text
{ 初始状态 = s₀ }
swapBits a b
{ s₁.phase=s₀.phase
  ∧ (∀ q, q≠a → q≠b → s₁[q]=s₀[q])
  ∧ s₁[a]=s₀[b]
  ∧ s₁[b]=s₀[a] }
```

### rotateRight

实现约定：[rotateRight_spec](Rotate.lean#L122)。

适用前提：

- `r` 中的 wire 互不相同。
- `X%2=0`。

```text
{ r=X }
rotateRight r
{ r=(X/2) }
```

### rotateLeft

实现约定：[rotateLeft_spec](Rotate.lean#L139)。

适用前提：

- `r` 中的 wire 互不相同。
- `2*X<2^r.length`。

```text
{ r=X }
rotateLeft r
{ r=(2*X) }
```

## [Shift.lean](Shift.lean)

受控交换只在 C 为真时交换两位；满足边界位条件时，受控右/左移位只在 C 为真时得到 X/2 或 2X，否则保持 X，控制不变。

### cswap

实现约定：[cswap_spec](Shift.lean#L21)。

适用前提：

- `[c,a,b]` 中的 wire 互不相同。

```text
{ c=C, a=A, b=B }
cswap c a b
{ c=C, a=(if C then B else A), b=(if C then A else B) }
```

正确性由 [cswap_correct](Shift.lean#L8) 证明：

控制开启时交换 a、b 两位，关闭时保留原值，其他基态位与相位不变。

适用前提：

- `[c,a,b]` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
cswap c a b
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ≠ a → w ≠ b → s₁[w] = s₀[w])
  ∧ s₁[a] = (if s₀[c] then s₀[b] else s₀[a])
  ∧ s₁[b] = (if s₀[c] then s₀[a] else s₀[b]) }
```

### shiftRight

实现约定：[shiftRight_spec](Shift.lean#L160)。

适用前提：

- `c::r` 中的 wire 互不相同。
- `C = true → X%2 = 0`。

```text
{ c=C, r=X }
shiftRight c r
{ c=C, r=(if C then X/2 else X) }
```

### shiftLeft

实现约定：[shiftLeft_spec](Shift.lean#L183)。

适用前提：

- `c::r` 中的 wire 互不相同。
- `C = true → 2*X < 2^r.length`。

```text
{ c=C, r=X }
shiftLeft c r
{ c=C, r=(if C then 2*X else X) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [Rotate.lean](Rotate.lean)

- 资源：`rotateRight r` / `rotateLeft r`：T = `0`，M = `0`。

### [Shift.lean](Shift.lean)

- 资源：

  - `shiftRight c r` / `shiftLeft c r`：T = `r.length-1`，M = `0`，Q = `(if r.length<2 then 0 else r.length+1)`。
  - `cswap c a b`：T = `1`，M = `0`，Q = `3`。
