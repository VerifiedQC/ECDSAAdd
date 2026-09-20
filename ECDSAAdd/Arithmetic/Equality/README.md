# 相等检测

本模块检测寄存器是否为零或等于给定常量，并证明控制、输入和工作位的保持与恢复。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [EqualConstant.lean](EqualConstant.lean)

仅把 `控制 AND (输入值=k)` 异或到目标位，其余基态位与相位完全不变。

### equalConstant

正确性由 [equalConstant_correct](EqualConstant.lean#L21) 证明：

适用前提：

- `control::target::bs.flatMap ZeroBit.wires` 中的 wire 互不相同。
- `k<2^bs.length`。

```text
{ 初始状态 = s₀ ∧ (∀ b∈bs,s₀[b.work]=false) }
equalConstant control target bs k
{ s₁.phase=s₀.phase
  ∧ s₁[target] = s₀[target] XOR (s₀[control] AND decide (val₀(bs.map ZeroBit.input)=k))
  ∧ (∀ w, w ∉ {target} → s₁[w] = s₀[w]) }
```

## [ZeroControl.lean](ZeroControl.lean)

工作区初始为零时，将 `C AND (X=0)` 异或到目标 T，保持输入 X 与控制 C，并恢复零工作区。

### zeroControlled

实现约定：[zeroControlled_spec](ZeroControl.lean#L113)。

适用前提：

- `c::target::bs.flatMap ZeroBit.wires` 中的 wire 互不相同。

```text
{ c=C, target=T, (bs.map ZeroBit.input)=X, (bs.map ZeroBit.work)=0 }
zeroControlled c target bs
{ c=C, target=(T XOR (C AND decide (X=0))), (bs.map ZeroBit.input)=X, (bs.map ZeroBit.work)=0 }
```

正确性由 [zeroControlled_correct](ZeroControl.lean#L58) 证明：

完整状态公式：只有目标翻转，包含所有借用工作位和控制位的恢复。

适用前提：

- `c::target::bs.flatMap ZeroBit.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (∀ b∈bs, s₀[b.work]=false) }
zeroControlled c target bs
{ s₁.phase=s₀.phase
  ∧ s₁[target] = s₀[target] XOR (s₀[c] AND bs.all (fun b => !s₀[b.input]))
  ∧ (∀ w, w ∉ {target} → s₁[w] = s₀[w]) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [EqualConstant.lean](EqualConstant.lean)

- 资源：`equalConstant control target bs k`：T = `bs.length`，M = `bs.length`。

### [ZeroControl.lean](ZeroControl.lean)

- 资源：`zeroControlled c target bs`：T = `bs.length`，M = `bs.length`，Q = `2*bs.length+2`。
