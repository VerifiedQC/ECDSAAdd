# 来源与复现

数学层改编自 [VerifiedQC/ShorECDLP](https://github.com/VerifiedQC/ShorECDLP) 的提交 `15d2a336743304e069f8a8a468c6ab1da334577b`：`Math/BitcoinCurve.lean`、`Math/BitcoinPrimes.lean` 和 `Math/EllipticCurve/AffineFormula.lean`。命名空间改为 ECDSAAdd，AffineFormula 路径扁平化并直接使用已证 p 素性的实例。BitcoinPrimes 仅保留 `lucasFromFactors`、`p_prime` 所需的 40 条 `prime_cert_*` 及字段/曲线实例；未复制群阶证明。BitcoinCurve 保留群、生成元 G 和坐标；所有证明重新由 Lean 检查。Framework、AND 与 Arithmetic 程序及证明为本项目编写，Hoare/program 语法糖改编自 Dirac 在项目频道提供的原型。

`Math/Kaliski.lean`、`Math/ModularHalving.lean`、`Math/KaliskiInverse.lean` 为本项目按已确认的二进制 EEA/Kaliski 算法规格编写的数学证明；未复制上游求逆实现，也不包含求逆电路。

Lean 固定为 `leanprover/lean4:v4.28.0`；Mathlib 固定为 `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。全新检出执行 `lake exe cache get`，再执行 `scripts/verify.sh`；不需要其他本地仓库。公理检查针对脚本列出的公开定理及其传递依赖，不是全环境声明审计。

本仓库为 private；Apache 2.0 由 Runzhou 于 2026-09-08 指定。所检上游提交没有 LICENSE，此声明不表示上游独立选择了该许可证。详见 [NOTICE](../NOTICE)。

I2 的 CSWAP 交换网络、移位和 10 位计数原语及证明为本仓库新增。CSWAP 使用标准 CX/CCX 分解；计数器复用已有加法器和前向 XOR 清理，没有复制新的外部源码。

I3 的 Math/KaliskiRound 与单轮布局、比较、零检测、受控加减、记录、正逆轮组合和资源证明均为本项目编写。算法根据频道确认的 EEA 路线，修正十位计数、终止轮计数时机与完整两位编码；计数比较采用固定 i<更新后 k 恢复活动性。未复制外部电路或证明源码，也未运行数值样例、Python 对照或真值表。I3 只实现单轮与逆轮，完整求逆仍待 I4/I5。
