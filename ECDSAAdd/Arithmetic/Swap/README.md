# 寄存器交换

本模块交换两个寄存器的内容，提供受控和无控制形式，并证明状态变化和资源用量。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [SwapRegisters.lean](SwapRegisters.lean)

受控交换在 C 为真时交换 A、B，否则保留原值，控制不变；无控制交换直接互换两寄存器。

### swapRegisters

实现约定：[swapRegisters_spec](SwapRegisters.lean#L24)。

适用前提：

- `a.length=b.length`。
- `c::(a++b)` 中的 wire 互不相同。

```text
{ c=C, a=A, b=B }
swapRegisters c a b
{ c=C, a=(if C then B else A), b=(if C then A else B) }
```

正确性由 [swapRegisters_correct](SwapRegisters.lean#L129) 证明：

两个目标寄存器以外逐线保持，包括控制线。

适用前提：

- `a.length=b.length`。
- `c::(a++b)` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ }
swapRegisters c a b
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉a → w∉b → s₁[w]=s₀[w])
  ∧ val₁(a) = (if s₀[c] then val₀(b) else val₀(a))
  ∧ val₁(b) = (if s₀[c] then val₀(a) else val₀(b)) }
```

### exchangeRegisters

实现约定：[exchangeRegisters_spec](SwapRegisters.lean#L66)。

适用前提：

- `a.length=b.length`。
- `a++b` 中的 wire 互不相同。

```text
{ a=A, b=B }
exchangeRegisters a b
{ a=B, b=A }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [SwapRegisters.lean](SwapRegisters.lean)

- 资源：

  - `swapRegisters c a b`：T = `a.length`，M = `0`，Q = `(if a.isEmpty then 0 else 2*a.length+1)`。
  - `exchangeRegisters a b`：T = `0`，M = `0`，Q = `2*a.length`。
