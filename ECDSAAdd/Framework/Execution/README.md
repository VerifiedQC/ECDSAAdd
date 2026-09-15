# 程序执行语义

本模块定义给定基态、相位和测量结果记录时，程序如何执行。模型是带符号的计算基态分支，不是一般量子态模拟器，也不计算测量概率。

## 接口

[Semantics.lean](Semantics.lean) 中 run 接收 Program、布尔记录列表和 State，返回 State。writeBit 更新一位；correct 执行 Z/CZ 相位修正；measureAndCorrect 处理测量与即时修正。

每次测量先用清零前的位更新相位，再将目标清零，最后执行所选修正。记录不足时按 false 补足，多余记录忽略；上层 Triple 对所有记录量化，不是只验证全 false 分支。

## 为什么能组合

correct_basis 证明相位修正不改基态位。run_take 证明额外记录不影响运行；run_append 证明串接程序等价于先后执行，并按第一段 measurementCount 拆分记录。这使上层顺序证明不必重新展开完整门列。

## 依赖、修改与验证

依赖 [ProgramSyntax](../ProgramSyntax/README.md)。被 [ResourceCounting](../ResourceCounting/README.md)、[HoareLogic](../HoareLogic/README.md) 及所有具体程序正确性证明使用。

相位、测量顺序或记录消费规则变化属于语义变更，影响全库，不能作为目录整理的一部分顺便修改。运行 `scripts/verify.sh`，通过构建和选定公开入口的传递公理检查。

[返回项目地图](../../../docs/MODULES.md)。
