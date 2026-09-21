# 寄存器交换

本模块交换两个寄存器的内容，提供受控和无控制形式，并证明状态变化和资源用量。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [SwapRegisters.lean](SwapRegisters.lean)

该文件实现等宽寄存器交换。

a、b 是待交换寄存器，初值为 A、B；c 是控制 wire，初值为 C。参与线路互异时，`swapRegisters_spec` 和 `swapRegisters_correct` 证明：

```text
{ c=C, a=A, b=B }
swapRegisters c a b
{ a=if C then B else A, b=if C then A else B }
```

a、b 以外的 wire 和相位保持不变。

`exchangeRegisters_spec` 证明无控制版本 `{a=A, b=B} exchangeRegisters a b {a=B, b=A}`，并保持相位。

- 资源：

  - `swapRegisters c a b`：T = `a.length`，M = `0`，Q = `(if a.isEmpty then 0 else 2*a.length+1)`。
  - `exchangeRegisters a b`：T = `0`，M = `0`，Q = `2*a.length`。
