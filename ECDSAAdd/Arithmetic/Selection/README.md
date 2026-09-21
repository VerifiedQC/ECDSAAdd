# 条件选择

本模块根据控制位在两组输入中选择一个值，将它异或到输出，并证明输入保持与资源性质。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Select.lean](Select.lean)

该文件将两个输入中的一个异或到输出。参与线路互异，flag 不与布局重叠时，`selectXor_correct` 证明：

```text
{ flag=C, no=X, yes=Y, out=O }
selectXor bs flag
{ out=O ⊕ (if C then Y else X) }
```

out 以外的 wire 和相位保持不变。`selectStep_correct` 是对应的单个位结论。

- 资源：`selectXor bs flag`：T = `bs.length`，M = `0`。
