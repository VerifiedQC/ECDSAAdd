# 模加减的数值与清理等式

本模块提供原地模加减电路需要的自然数等式，尤其是如何从约减后的值恢复并清除借位信息。

## 接口

[ModInPlace.lean](ModInPlace.lean) 中：

- modAddCore_cleanup：当 A≤p、Z<p 时，用约减后的结果与 A 比较恢复是否减过 p。
- modAddCore_low：扩宽减 p 后按借位加回 p，低 n 位得到规范余数；要求正模数、p<2^n、t<2p。
- negRaw_range_restore、modSubCore_value：连接取负恢复和减法的自然数表达式。

这些是数值等式，不单独保证电路工作位清零或相位恢复；后者由 [Arithmetic/ModularAddition](../../Arithmetic/ModularAddition/README.md) 的程序规格证明。

## 证明思路与依赖

按是否发生一次约减分情况，用范围条件把取模展开为原值或减 p，再证明比较等价。不能把 A≤p 随意扩大到任意自然数。

现有文件依赖 Arithmetic 中的 Reduction 与 [ModularDoubling](../ModularDoubling/README.md)。因此 Math 在实际 import 图中并非完全独立的底层；本次仅移动路径，不重构这条依赖或重命名现有 ECDSAAdd.Arithmetic namespace。

## 修改与验证

改范围、借位或高低位解释时复查 ModInPlace 电路及其上层 Montgomery 适配器。运行 `scripts/verify.sh`；具体前提以链接文件为准。

[返回项目地图](../../../docs/MODULES.md)。
