# 相等检测

本模块判断寄存器是否等于一个经典常量，并把结果受控 XOR 到目标位。检测零是常量等于零的情况。

## 契约与入口

[ZeroControl.lean](ZeroControl.lean) 的 `zeroControlled_spec` 写入 `control AND (input=0)`；[EqualConstant.lean](EqualConstant.lean) 的 `equalConstant_correct` 写入 `control AND (input=k)`。输入、控制和工作位恢复，目标允许初值，相位对所有测量记录恢复。

每个输入位由 `ZeroBit` 配一根零工作位，参与线路必须互异；等常量接口还要求常量能放入输入位宽。目标本来为零时得到判断结果；保持输入后再调用一次可将结果清零。

## 算法与证明

检测零等于检查所有输入位都为假。程序逐步构造“控制为真且目前读到的输入全零”的 AND 链，最后用该链翻转目标。返回时测量清理 AND 工作位，对负输入条件用 X 包夹的 CZ 修正恢复相位。

证明按位递归，同时跟踪链上的布尔关系和工作位归零。等常量检测先对常量为 1 的输入位取反，将相等条件化为全零条件，检测后恢复这些输入位。

## 维护

`ZeroControl` 包含布局、程序、规格和资源；`EqualConstant` 包含常量归约与对应证据。依赖小端读值和常量 XOR；用于点分类、Kaliski 终止检测等。修改时检查检测极性、目标 XOR 语义及输入恢复。

在仓库根目录运行 `scripts/verify.sh`，资源查询同文件的 `*_counts`、`*_wires`、`*_resources`。目标翻转值正确但测量相位未恢复，仍不满足本模块契约。
