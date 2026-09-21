# 相等检测

本模块检测寄存器是否为零或等于给定常量，并证明控制、输入和工作位的保持与恢复。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [EqualConstant.lean](EqualConstant.lean)

该文件实现受控常量相等检测。输入为 n 位，k<2^n，参与线路互异，工作位初始为零。

`equalConstant_correct` 证明：

```text
{ control=C, input=X, target=T, work=0 }
equalConstant control target bs k
{ target=T ⊕ (C AND (X=k)) }
```

target 以外的 wire 和相位保持不变。

- 资源：`equalConstant control target bs k`：T = `bs.length`，M = `bs.length`。

## [ZeroControl.lean](ZeroControl.lean)

该文件实现受控零检测。`zeroControlled_spec` 和 `zeroControlled_correct` 证明：线路互异、工作位初始为零时，

```text
{ c=C, input=X, target=T, work=0 }
zeroControlled c target bs
{ target=T ⊕ (C AND (X=0)) }
```

target 以外的 wire 和相位保持不变。

- 资源：`zeroControlled c target bs`：T = `bs.length`，M = `bs.length`，Q = `2*bs.length+2`。
