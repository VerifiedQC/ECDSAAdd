# secp256k1 数学对象

本模块定义项目究竟在哪个域、哪条曲线上讨论点加。不构造电路，也不声称证明了曲线群阶。

## 接口与范围

唯一源码是 [BitcoinCurve.lean](BitcoinCurve.lean)：定义模数 `p=2^256−2^32−977`、`Fp=ZMod p`、曲线 `y²=x³+7`、点类型 `Secp256k1.Point`、标准生成元 G 与坐标读取函数 coordinates。order 是指定的阶常量，不是群阶定理。

文件证明生成元坐标范围、曲线判别式非零、生成元满足方程且非奇异，以及 G 非零。无穷远点的 coordinates 为 none，有限点为 some；这里尚未选择线路编码。

## 为什么正确

具体常量通过核验等式、模运算与非奇异条件构造数学点，再使用 Mathlib 的椭圆曲线点类型。不要把 G 满足曲线方程理解成 G 的阶已经得到证明。模数素性另由 [FieldPrimality](../FieldPrimality/README.md) 提供。

## 修改影响与验证

该模块被点加数学、Hoare 点断言及算术模数实例使用；改 p、曲线或坐标定义会影响几乎所有上层规格。依赖 Mathlib，不依赖项目电路。运行仓库根目录的 `scripts/verify.sh`，检查曲线与生成元相关公开入口；新结论需按现有规则补入公理检查。

[返回项目地图](../../../docs/MODULES.md)。
