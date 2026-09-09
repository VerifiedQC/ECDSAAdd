# ECDSAAdd

在 Lean 中证明 Bitcoin/secp256k1 点加程序的 monomial 行为、Toffoli count 和静态 qubit count。

当前实现到 **M1**：Bitcoin 群与生成元的数学基础；带即时测量修正的程序语言；直接 basis/phase 语义；组合与线路保持定理；AND 计算及测量反计算的完整恢复证明。**点加电路尚未实现。**

程序是指令列表。`measureX target onZero onOne` 测量并清零后，立即执行结果对应的 Z/CZ 修正列表。测量结果不改变后续算术或测量流程。

```sh
lake exe cache get
scripts/verify.sh
```

Lean 固定为 `v4.28.0`，Mathlib 固定为 `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。验证为 Lean 构建、公理审计与源码依赖检查，不包含测试。

- [公开定理与证明状态](docs/PROOF_STATUS.md)
- [M1 可读证明说明](docs/witness/M1/WITNESS.md)
- [模型规格](docs/SPEC.md)
- [来源与构建环境](docs/PROVENANCE.md)
- [完整计划](docs/PLAN.md)

当前结论限于 monomial 模型，不包含量子语义对应，也不把静态线路数称为最大同时存活数。

Apache License 2.0；来源声明见 [NOTICE](NOTICE)。
