# 来源与复现

数学层改编自 [VerifiedQC/ShorECDLP](https://github.com/VerifiedQC/ShorECDLP) 的提交 `15d2a336743304e069f8a8a468c6ab1da334577b`：`Math/BitcoinCurve.lean`、`Math/BitcoinPrimes.lean` 和 `Math/EllipticCurve/AffineFormula.lean`。命名空间改为 ECDSAAdd，AffineFormula 路径扁平化并直接使用已证 p 素性的实例。BitcoinPrimes 仅保留 `lucasFromFactors`、`p_prime` 所需的 40 条 `prime_cert_*` 及字段/曲线实例；未复制群阶证明。BitcoinCurve 保留群、生成元 G 和坐标；所有证明重新由 Lean 检查。Framework 与 AND 证明为本项目编写，Hoare/program 语法糖改编自 Dirac 在项目频道提供的原型。

Lean 固定为 `leanprover/lean4:v4.28.0`；Mathlib 固定为 `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。全新检出执行 `lake exe cache get`，再执行 `scripts/verify.sh`；不需要其他本地仓库。公理检查针对脚本列出的公开定理及其传递依赖，不是全环境声明审计。

本仓库为 private；Apache 2.0 由 Runzhou 于 2026-09-08 指定。所检上游提交没有 LICENSE，此声明不表示上游独立选择了该许可证。详见 [NOTICE](../NOTICE)。
