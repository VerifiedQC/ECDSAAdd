# 条件选择

本模块根据控制位在两组输入中选择一个值，将它异或到输出，并证明输入保持与资源性质。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Select.lean](Select.lean)

该文件将两个输入中的一个异或到输出。

直接使用寄存器时写 `chooseXor flag whenZero whenOne out`：flag=0 选择 whenZero，flag=1 选择 whenOne，选中值 XOR 到 out。三个寄存器等长，输入和控制位保持不变；它与下面的逐位接口连接到同一电路。

bs 是逐位选择单元列表，每个单元含 no、yes 两个输入位和 out 输出位；下文同名寄存器由 `bs.map SelectBit.no/yes/out` 分别组成。输入 no、yes 的初值为 X、Y，输出 out 初始化为 O；flag 是选择位，初值为 C。参与线路互异，flag 不与布局重叠时，`selectXor_correct` 证明：

```text
{ flag=C, no=X, yes=Y, out=O }
selectXor bs flag
{ out=O ⊕ (if C then Y else X) }
```

out 以外的 wire 和相位保持不变。`selectStep_correct` 是对应的单个位结论。

- 资源：`selectXor bs flag`：T = `bs.length`，M = `0`。
