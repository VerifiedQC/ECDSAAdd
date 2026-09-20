# 条件选择

本模块根据控制位在两组输入中选择一个值，将它异或到输出，并证明输入保持与资源性质。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [Select.lean](Select.lean)

单个位与整寄存器都将 `if flag then yes else no` 异或到输出，输出之外所有基态位与相位不变。

### selectStep

正确性由 [selectStep_correct](Select.lean#L32) 证明：

适用前提：

- `a ≠ out`。
- `b ≠ out`。
- `a ≠ b`。
- `flag ≠ out`。
- `flag ≠ a`。

```text
{ 初始状态 = s₀ }
prog { Instr.CX a out; Instr.CX b a; Instr.CCX flag a out; Instr.CX b a }
{ s₁.phase=s₀.phase
  ∧ s₁[out] = s₀[out] XOR (if s₀[flag] then s₀[b] else s₀[a])
  ∧ (∀ w, w ∉ {out} → s₁[w] = s₀[w]) }
```

### selectXor

正确性由 [selectXor_correct](Select.lean#L54) 证明：

两个输入寄存器和选择位保持，任意输出初值按选择结果 XOR 更新。

适用前提：

- `selectWires bs` 中的 wire 互不相同。
- `flag ∉ selectWires bs`。

```text
{ 初始状态 = s₀ }
selectXor bs flag
{ s₁.phase = s₀.phase
  ∧ (∀ w, w ∉ bs.map SelectBit.out → s₁[w] = s₀[w])
  ∧ val₁(bs.map SelectBit.out) = val₀(bs.map SelectBit.out) XOR (if s₀[flag] then val₀(bs.map SelectBit.yes)
    else val₀(bs.map SelectBit.no)) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [Select.lean](Select.lean)

- 资源：`selectXor bs flag`：T = `bs.length`，M = `0`。
