# 域模数的素性证明

本模块只负责证明 secp256k1 的域模数 p 是素数，供 ZMod p 的域运算使用。不证明曲线群阶或生成元阶。

## 接口

[BitcoinPrimes.lean](BitcoinPrimes.lean) 的 `Secp256k1.p_prime : Nat.Prime p` 是主要结论；文件还提供其对应实例。需要本项目模数素性时，从此入口使用，不必逐个阅读内部证书。

## 证明思路

内部 lucasFromFactors 将 n−1 的完整因子分解、因子素性、模幂等式和排除条件接到 Mathlib 的 Lucas 素性判据。较小素数证书逐层支撑较大的证书，最终得到 p_prime；常量运算由 Lean 检查，不是假设一个外部测试结果。

定义的 p 来自 [CurveDefinition](../CurveDefinition/README.md)。更换模数需要重新建立证书及下游域前提，不能仅替换常量或引入新公理。

## 修改影响与验证

主要影响点加数学、secp256k1 求逆实例及依赖域性质的算术证明。运行 `scripts/verify.sh`，其中包含 p_prime 的传递公理检查；允许的公理仍只有 propext、Classical.choice、Quot.sound。

[返回项目地图](../../../docs/MODULES.md)。
