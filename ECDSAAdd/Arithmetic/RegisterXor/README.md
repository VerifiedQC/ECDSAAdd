# 寄存器 XOR

本模块提供寄存器、常量及受控值的按位异或操作，并证明寄存器读值、输入保持和资源性质。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [ConditionalXor.lean](ConditionalXor.lean)

目标在控制开启时异或 F(X)，关闭时异或 X（不是保持目标不变）；目标外所有基态位与相位不变。

### conditionalXor

正确性由 [conditionalXor_correct](ConditionalXor.lean#L40) 证明：

条件包装只要求核自身的 XOR 正确性；并不反转包含测量的程序。

适用前提：

- `c :: (src ++ temp ++ dst ++ work)` 中的 wire 互不相同。
- `src.length = dst.length`。
- `temp.length = dst.length`。
- `∀ (s₀ : State) (m : List Bool), val₀(src) < q → val₀(work) = 0 → (run kernel m s₀).phase = s₀.phase ∧ (∀ w, w ∉ temp → (run kernel m s₀).basis w = s₀[w]) ∧ regValue temp (run kernel m s₀).basis = val₀(temp) XOR F (val₀(src))`。

```text
{ 初始状态 = s₀ ∧ (val₀(src) < q) ∧ (val₀(temp) = 0) ∧ (val₀(work) = 0) }
conditionalXor kernel c src temp dst
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ dst → s₁[w] = s₀[w])
  ∧ val₁(dst) = val₀(dst) XOR (if s₀[c] then F (val₀(src)) else val₀(src)) }
```

## [Constant.lean](Constant.lean)

寄存器值从 X 更新为 `X XOR k`。

### xorConstant

实现约定：[xorConstant_spec](Constant.lean#L64)。

适用前提：

- `r` 中的 wire 互不相同。
- `k < 2^r.length`。

```text
{ r = X }
xorConstant r k
{ r = (X XOR k) }
```

正确性由 [xorConstant_correct](Constant.lean#L11) 证明：

异或经典常量，保持相位和寄存器外全部线路。

适用前提：

- `r` 中的 wire 互不相同。
- `k < 2^r.length`。

```text
{ 初始状态 = s₀ }
xorConstant r k
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ r → s₁[w] = s₀[w])
  ∧ val₁(r) = val₀(r) XOR k }
```

## [Copy.lean](Copy.lean)

无控制时将源 X 异或到目标 O；有控制时仅在控制开启时异或。保持源和控制，不要求目标初始为零。

### copyRegister

实现约定：[copyRegister_spec](Copy.lean#L85)。

适用前提：

- `src.length = dst.length`。
- `src ++ dst` 中的 wire 互不相同。

```text
{ src = X, dst = O }
copyRegister none src dst
{ src = X, dst = (O XOR X) }
```

正确性由 [copyRegister_correct](Copy.lean#L18) 证明：

寄存器复制将有效源值异或到目标；有控制时只在控制开启时复制，目标外基态位与相位保持不变。

适用前提：

- `src.length = dst.length`。
- `src ++ dst` 中的 wire 互不相同。
- `∀ c ∈ control, c ∉ dst`。

```text
{ 初始状态 = s₀ }
copyRegister control src dst
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ dst → s₁[w] = s₀[w])
  ∧ val₁(dst) = val₀(dst) XOR copyValue control s₀[val₀(src)] }
```

### maskedCopy

实现约定：[maskedCopy_spec](Copy.lean#L95)。

适用前提：

- `src.length = dst.length`。
- `c :: (src ++ dst)` 中的 wire 互不相同。

```text
{ c = C, src = X, dst = O }
copyRegister (some c) src dst
{ c = C, src = X, dst = (O XOR (if C then X else 0)) }
```

## [MaskedConstant.lean](MaskedConstant.lean)

控制开启时目标异或 k，关闭时不变；目标外所有基态位与相位不变。

### maskedConstant

正确性由 [maskedConstant_correct](MaskedConstant.lean#L25) 证明：

控制开启时将常量 k 异或到目标，关闭时不改变目标；目标外基态位与相位保持不变。

适用前提：

- `r` 中的 wire 互不相同。
- `c∉r`。
- `k<2^r.length`。

```text
{ 初始状态 = s₀ }
maskedConstant c r k
{ s₁.phase=s₀.phase
  ∧ (∀ w∉r,s₁[w]=s₀[w])
  ∧ val₁(r)= val₀(r) XOR (if s₀[c] then k else 0) }
```

## [Registers.lean](Registers.lean)

逐位取反，将 n 位寄存器值 X 更新为 `2^n−1−X`。

### notRegister

实现约定：[notRegister_spec](Registers.lean#L104)。

适用前提：

- `r` 中的 wire 互不相同。

```text
{ r = X }
notRegister r
{ r = (2^r.length - 1 - X) }
```

正确性由 [notRegister_correct](Registers.lean#L74) 证明：

寄存器内每一位取反，其他线路与相位保持。

适用前提：

- `r` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
notRegister r
{ s₁.phase=s₀.phase
  ∧ (∀ w, s₁[w] = if w ∈ r then !s₀[w] else s₀[w]) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [ConditionalXor.lean](ConditionalXor.lean)

- 资源：`conditionalXor kernel c src temp dst`：T = `2*toffoliCount kernel + 2*dst.length`，M = `2*measurementCount kernel`。

### [Constant.lean](Constant.lean)

- 资源：`xorConstant r k`：T = `0`，M = `0`。

### [Copy.lean](Copy.lean)

- 资源：`copyRegister control src dst`：T = `(if control.isSome then src.length else 0)`，M = `0`，Q = `(if src.isEmpty then 0 else 2*src.length+control.toList.length)`。

### [MaskedConstant.lean](MaskedConstant.lean)

- 资源：`maskedConstant c r k`：T = `0`，M = `0`。

### [Registers.lean](Registers.lean)

- 资源：`notRegister r`：T = `0`，M = `0`，Q = `r.length`。
