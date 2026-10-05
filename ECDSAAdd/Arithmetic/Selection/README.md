# 条件选择

本模块根据控制位在两组输入中选择一个值，将它异或到输出，并证明输入保持与资源性质。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Select.lean](Select.lean)

该文件将两个输入中的一个异或到输出。

直接使用寄存器时写 `chooseXor flag whenZero whenOne out`：flag=0 选择 whenZero，flag=1 选择 whenOne，选中值 XOR 到 out。三个寄存器等长，输入和控制位保持不变；它与下面的逐位接口连接到同一电路。

上层模加减的比较配方显式列出两个受控 `if` 分支，后端仍使用此选择电路。`selectXor_controls_equiv` 证明：在线路互异、控制位不与寄存器重叠时，这个优化电路和两段独立受控 XOR 的完整状态效果相同，包括任意输出初值和相位；不是指门列表相同。

一般表达式的互补分支现在使用 `chooseXorFitted`：三个寄存器等宽时用原选择器，否则使用独立受控 XOR，各自按目标宽度截取/补零。`chooseXorFitted_controls_equiv` 对任意位宽证明完整状态效果一致，避免共同 zip 丢失长分支的有效位。模加减的专用约减配方仍使用原等宽选择器。

bs 是逐位选择单元列表，每个单元含 no、yes 两个输入位和 out 输出位；下文同名寄存器由 `bs.map SelectBit.no/yes/out` 分别组成。输入 no、yes 的初值为 X、Y，输出 out 初始化为 O；flag 是选择位，初值为 C。参与线路互异，flag 不与布局重叠时，`selectXor_correct` 证明：

```text
{ flag=C, no=X, yes=Y, out=O }
selectXor bs flag
{ out=O ⊕ (if C then Y else X) }
```

out 以外的 wire 和相位保持不变。`selectStep_correct` 是对应的单个位结论。

- 资源：`selectXor bs flag`：T = `bs.length`，M = `0`。
