# 程序资源与实际线路支持

本模块计算同一具体程序使用的资源，并证明支持集以外的线路保持不变。

## 接口与含义

[Cost.lean](Cost.lean) 定义 toffoliCount、correctionWires、Instr.wires、wires 和 qubitCount。measurementCount 的定义在语法模块，组合规则在此。

Toffoli 数只计 CCX；测量数计 measureX；qubitCount 是整个程序静态线路并集的大小，包含测量两条可能修正列表。不等于布局预留线路数、各子程序线路数之和或最大同时存活数。

## 证明思路

对程序列表归纳得到 measurementCount_append、toffoliCount_append 和 wires_append：前两者相加，支持集求并。run_preserves_outside 按每条指令的支持证明，所有测量记录下都不会改动程序外的基态位；它不单独保证整个相位恢复。

## 修改影响与验证

依赖 [Execution](../Execution/README.md)。支持集保持定理支撑 Hoare frame，计数定义支撑全部 Resources/Wires 文件。新增指令或改变测量修正必须同步更新支持和计数，不能仅改展示数字。

运行 `scripts/verify.sh`，确保具体程序的正确性定理与成本定理仍指向同一门列。

[返回项目地图](../../../docs/MODULES.md)。
