# 来源与复现

上游：[VerifiedQC/ShorECDLP](https://github.com/VerifiedQC/ShorECDLP)，固定提交 `15d2a336743304e069f8a8a468c6ab1da334577b`。

数学层有三份来源：`Math/BitcoinCurve.lean`、`Math/BitcoinPrimes.lean`、`Math/EllipticCurve/AffineFormula.lean`。详细声明映射见 [math-declarations.tsv](math-declarations.tsv)，证书清单见 [prime-certificate-manifest.txt](prime-certificate-manifest.txt)。

变化：

- 命名空间改为 ECDSAAdd，AffineFormula 路径扁平化。
- BitcoinPrimes 仅保留 `lucasFromFactors`、p_prime 及其引用的 40 条 `prime_cert_*`，再保留 `certifiedFpField` 和 `certifiedCurveIsElliptic`。不复制 order_prime 链或 GeneratorOrder。
- AffineFormula 直接导入已证素性的字段实例，去掉公开 `Fact (Nat.Prime p)` 参数。所有原有证明重新由 Lean 检查，没有复制旧 olean 作为本项目证明。
- BitcoinCurve 保留 p、曲线、群、标准 G、坐标和相关定理；order 只保留定义，没有群阶证明。
- Framework 和 AND 程序及证明在 ECDSAAdd 新写，不依赖上游 Framework 或量子模块。

Lean：`leanprover/lean4:v4.28.0`。Mathlib：`fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`，与所检查上游锁文件一致。包元数据改为 ECDSAAdd，依赖版本保持固定。

开发机为 Mac-mini-Office，darwin arm64。为减少下载，使用 APFS 独立复制已缓存的相同版本 Lake packages（非跨仓库符号链接）；新仓库自身的 Lean 文件全部重新编译。全新环境使用 `lake exe cache get`，无需其他本地仓库。

构建时间和受检源码版本见 PROOF_STATUS。CI 超时暂设 20 分钟，包含 Linux 首次依赖缓存获取和审计工具构建；它不是单个文件编译时间的声明。

仓库为 private，Apache 2.0 由 Runzhou 于 2026-09-08 指定。上游检查时无 LICENSE，不反向宣称上游已独立选择此许可证。详见 NOTICE。
