# 模乘的数学递推

本模块证明模乘递推及 Montgomery 表示转换的等式，不包含门列、线路布局或资源结论。

## 接口与文件

- [HornerMultiply.lean](HornerMultiply.lean)：hornerValue 是乘积的高位前缀；start、step、finish 和 unstep 分别给出初值、递推、结果与恢复。
- [Montgomery.lean](Montgomery.lean)：montgomeryStep、montgomeryValue 和 montgomeryQuotient 描述四位窗口计算，证明整除、范围、恢复和迭代不变量。
- [MontgomeryConversion.lean](MontgomeryConversion.lean)：定义 R=16^64=2^256 及转换常量 R² mod q；montgomery_two_stages 证明两段计算得到标准模积。

## 为什么正确、需要什么

当 q%16=15 时，窗口中间值 u 加上 (u%16)q 后能精确除以 16。逐轮不变量连接已处理的乘数位、约减商和累加器；64 轮得到带 R⁻¹ 缩放的结果。第二段乘 R² mod q 消去两段各自的缩放，得到 (X*Y)%q。

两段转换定理要求素模数、q%16=15、q<R、Y<R；窗口范围定理另有相应输入界。不能把所有内部引理一概宣称适用任意模数。Horner 数学递推仍被当前数学文件引用，但不是当前完整模乘电路实现。

## 依赖、修改与验证

依赖 [ModularDoubling](../ModularDoubling/README.md)、[CurveDefinition](../CurveDefinition/README.md) 和 Mathlib。主要调用者是 [模乘电路](../../Arithmetic/ModularMultiplication/README.md) 与 [求逆缩放数学](../ModularInverse/README.md)。

修改窗口基数、范围或转换关系时，复查两段模乘和求逆单段缩放。运行 `scripts/verify.sh`，同时保留数学结论与实际程序规格的区别。

[返回项目地图](../../../docs/MODULES.md)。
