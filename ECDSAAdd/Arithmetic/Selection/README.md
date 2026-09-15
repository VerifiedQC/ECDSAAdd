# 条件选择

本模块根据一个控制位，在两个寄存器之间选择一个值并 XOR 到输出：`out ^= if flag then yes else no`。两个候选寄存器和选择位保持。

## 契约

[Select.lean](Select.lean) 的 `SelectBit` 将对应位置的 `no/yes/out` 三根线组成一组；列表天然给出相同位宽。`selectXor_correct` 要求列表中的线路互异，且 `flag` 不属于这些线路。输出可以有任意初值，不要求额外工作寄存器。

## 算法与证明

布尔选择可以写为 `no XOR (flag AND (yes XOR no))`。电路临时构造候选差，使用一次受控写入，再恢复临时修改的输入。每位证得这一恒等式后，按位列表归纳得到整个寄存器的 XOR 结果；控制和候选输入不会被后续位破坏。

电路没有测量；相位保持由门语义直接推出。该模块主要为模加减提供“原值或约减候选”的选择，而不是直接控制整个算术程序。

## 修改与验证

全部内容在 `Select.lean`，资源与实际支持为 `selectXor_counts`、`selectXor_wires`。依赖 [RegisterXor](../RegisterXor/README.md) 的读值引理。修改选择方向时检查 [ModularAddition](../ModularAddition/README.md) 中借位对应的候选顺序，并在仓库根目录运行 `scripts/verify.sh`。
