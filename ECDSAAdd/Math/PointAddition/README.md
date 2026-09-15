# 点加的数学公式

本模块证明坐标公式等于 secp256k1 点群中的加法，并提供原地点加清理中间量需要的等式。它不执行电路、不计算门数。

## 接口与前提

[AffineFormula.lean](AffineFormula.lean) 的 `affineAdd_correct` 连接完整分情况公式与 P+Q。genericAdd_correct 处理横坐标不同的有限点；doublePoint_correct 处理非零倍点分母；inverseAdd_correct 处理互逆点。局部公式的非零条件不能省略，完整入口负责分类。

[PointInPlace.lean](PointInPlace.lean) 的 generic_inplace_values 说明原地坐标更新；translated_point_flags 支撑从输出重建分类；slope_from_output 与 exceptional_slope_eq 支撑斜率清理，包括第二分母为零时的例外。

## 证明思路

先将普通斜率、倍点坐标对齐 Mathlib 的 affine 定义，证明结果非奇异；再分类无穷远点、互逆、横坐标不同及倍点，汇总为完整群律。原地辅助等式利用同横坐标点相同或互逆的关系，并用域运算推导新旧坐标及斜率关系。

依赖 [FieldPrimality](../FieldPrimality/README.md) 和曲线定义。电路如何读写寄存器、保持相位和清理辅助位，由 [Arithmetic/PointAddition](../../Arithmetic/PointAddition/README.md) 另外证明。

## 修改与验证

改公式时同时检查普通和特殊分支、原地输出侧清理条件及两条点加电路路径。运行 `scripts/verify.sh`，不要以普通输入例子代替完整群律证明。

[返回项目地图](../../../docs/MODULES.md)。
