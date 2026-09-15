# 模减半与模倍增

本模块说明如何在奇模数的规范代表元上除以 2，以及为什么模倍增是它的逆操作。这里处理数学函数，不处理电路线序。

## 接口与范围

[ModularHalving.lean](ModularHalving.lean) 定义 halveMod：偶数直接除以 2，奇数先加 p 再除以 2。p%2=1、r<p 时输出仍小于 p，且在 ZMod p 中两倍输出等于 r；不要求 p 是素数。

halveFixed 在固定轮数内执行 k 次有效减半；halveFixed_correct 需要 k≤rounds。halve_parity、double_flag 将输入奇偶与输出比较条件连接，供电路清标志。

[HalvingBijection.lean](HalvingBijection.lean) 的 double_halve_mod 与 halve_double_mod 证明规范范围内两个方向互相撤销。

## 为什么正确

按 r 奇偶分情况，保证分子为偶数，再在模 p 下消去加上的 p；归纳得到多次减半关系。反向定理按 2r 是否越过 p 分情况恢复原值。奇模数和规范范围是论证条件，不能省略。

## 修改影响与验证

依赖 Mathlib。用于 [数学求逆](../ModularInverse/README.md)、[数学模乘](../ModularMultiplication/README.md) 和 [模倍增电路](../../Arithmetic/ModularDoubling/README.md)。当前求逆电路采用 Montgomery 缩放，保留减半数学结论不意味着它仍逐轮执行减半。运行 `scripts/verify.sh`。

[返回项目地图](../../../docs/MODULES.md)。
