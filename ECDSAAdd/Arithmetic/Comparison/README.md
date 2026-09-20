# 大小比较

本模块比较寄存器或寄存器与常量的大小，将比较结果写入标志位，并证明辅助位与相位恢复。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [Compare.lean](Compare.lean)

将 `X<Y` 或 `X<K` 的判断异或到目标标志，受控版本再与控制值做 AND；保持输入和控制，并将常量临时寄存器及进位工作区恢复为零。

### flipBelow

正确性由 [flipBelow_correct](Compare.lean#L34) 证明：

适用前提：

- `t ≠ top`。
- `∀ c ∈ control, c ≠ t`。

```text
{ 初始状态 = s₀ }
flipBelow control top t
{ s₁.phase=s₀.phase
  ∧ s₁[t] = s₀[t] XOR (controlValue control s₀.basis AND !s₀[top])
  ∧ (∀ w, w ∉ {t} → s₁[w] = s₀[w]) }
```

### compareChain

正确性由 [compareChain_correct](Compare.lean#L68) 证明：

进位链只改 target：进位辅助位算完又擦回零，x、y、cin 与控制位保持，相位对所有测量记录恢复。

适用前提：

- `target :: cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `∀ c ∈ control, c ∉ target::cin::(x ++ y ++ carry)`。
- `x.length = y.length`。
- `carry.length = y.length`。

```text
{ 初始状态 = s₀ ∧ (∀ w ∈ carry, s₀[w] = false) }
compareChain control x y carry cin target
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ≠ target → s₁[w] = s₀[w])
  ∧ s₁[target] = (s₀[target] XOR (controlValue control s₀.basis AND !decide (2^y.length ≤ val₀(x) + val₀(y) +
    (s₀[cin]).toNat))) }
```

### compareLt

实现约定：[compareLt_spec](Compare.lean#L260)。

适用前提：

- `target :: cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `x.length = y.length`。
- `carry.length = y.length`。

```text
{ x = X, y = Y, carry = 0, cin = false, target = T }
compareLt none x y carry cin target
{ x = X, y = Y, carry = 0, cin = false, target = (T XOR decide (X < Y)) }
```

正确性由 [compareLt_correct](Compare.lean#L192) 证明：

比较器整体：只改 target，x、y、cin、进位链与控制位保持，相位对所有测量记录恢复。

适用前提：

- `target :: cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `∀ c ∈ control, c ∉ target::cin::(x ++ y ++ carry)`。
- `x.length = y.length`。
- `carry.length = y.length`。

```text
{ 初始状态 = s₀ ∧ (s₀[cin] = false) ∧ (∀ w ∈ carry, s₀[w] = false) }
compareLt control x y carry cin target
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ≠ target → s₁[w] = s₀[w])
  ∧ s₁[target] = (s₀[target] XOR (controlValue control s₀.basis AND decide (val₀(x) < val₀(y)))) }
```

### maskedCompareLt

实现约定：[maskedCompareLt_spec](Compare.lean#L285)。

适用前提：

- `c :: target :: cin :: (x ++ y ++ carry)` 中的 wire 互不相同。
- `x.length = y.length`。
- `carry.length = y.length`。

```text
{ c = C, x = X, y = Y, carry = 0, cin = false, target = T }
compareLt (some c) x y carry cin target
{ c = C, x = X, y = Y, carry = 0, cin = false, target = (T XOR (C AND decide (X < Y))) }
```

### compareLtConst

实现约定：[compareLtConst_spec](Compare.lean#L314)。

适用前提：

- `target :: cin :: (x ++ T ++ carry)` 中的 wire 互不相同。
- `x.length = T.length`。
- `carry.length = T.length`。
- `K < 2^T.length`。

```text
{ x = X, T = 0, carry = 0, cin = false, target = B }
compareLtConst none x T carry cin target K
{ x = X, T = 0, carry = 0, cin = false, target = (B XOR decide (X < K)) }
```

### maskedCompareLtConst

实现约定：[maskedCompareLtConst_spec](Compare.lean#L343)。

适用前提：

- `c :: target :: cin :: (x ++ T ++ carry)` 中的 wire 互不相同。
- `x.length = T.length`。
- `carry.length = T.length`。
- `K < 2^T.length`。

```text
{ c = C, x = X, T = 0, carry = 0, cin = false, target = B }
compareLtConst (some c) x T carry cin target K
{ c = C, x = X, T = 0, carry = 0, cin = false, target = (B XOR (C AND decide (X < K))) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [Compare.lean](Compare.lean)

- 资源：control.isSome 表示有控制，control.toList.length 在无控制/有控制时分别为 0/1；线路数还需互异及等长条件。

  - `flipBelow control top t`：T = `(if control.isSome then 1 else 0)`，M = `0`。
  - `compareChain control x y carry cin target` / `compareLtConst control x y carry cin target K`：T = `y.length + (if control.isSome then 1 else 0)`，M = `y.length`。
  - `compareLt control x y carry cin target`：T = `y.length + (if control.isSome then 1 else 0)`，M = `y.length`，Q = `3 * y.length + 2 + control.toList.length`。
