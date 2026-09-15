# 模乘

本模块计算 `X×Y mod p`，保留输入，并清除计算产生的辅助数据。输出可以采用 XOR、模加累积或模减累积；这些接口共用同一个模乘结果与清理过程。

## 怎么调用

普通 secp256k1 调用使用 [FieldMultiply.lean](FieldMultiply.lean) 的 `fieldMul_zero_spec`：`x=X,y=Y,out=0,work=0` 变成 `x=X,y=Y,out=(X*Y)%p,work=0`。`fieldMul_spec` 支持任意初值的 XOR 输出。

更一般的接口在 [MontAdapterSpec.lean](MontAdapterSpec.lean)：

| 程序 / 对应 `*_spec` | 输出更新 |
| --- | --- |
| `montMulXor` | `O XOR ((X*Y)%p)` |
| `montMulAdd` / `montMulSub` | `(O ± X*Y) mod p` |
| `montMulControlledAdd` / `montMulControlledSub` | 控制为真时模加/减乘积，否则保留 `O` |

通用适配器要求素模数、`p<2^256`、`p%16=15`、`X<p`、`Y<2^256`。加减输出还要求 `O<p`；XOR 输出只受寄存器可表示范围约束。控制位必须与布局线路互异。所有接口要求 `MontLayout.Widths`、全局 `Nodup` 和 `work=0`，并保证输入、工作位与相位恢复。

布局中 `x/out` 各 257 位，`y` 为 256 位；内部累加器为 261 位，保存扩宽的窗口结果。`fieldMul` 的 secp256k1 封装自动满足模数条件，乘数范围由 256 位寄存器得出。完整布局见 [MontLayout.lean](MontLayout.lean)。

## 两段计算为什么得到普通模积

令 `R=2^256`。单段 Montgomery 的数学结果是 `X×Y×R⁻¹ mod p`。完整模乘先做变量段得到这个值，再与经典常量 `R² mod p` 做一次常数段，结果成为 `X×Y mod p`。因此调用者不需要自己转换输入或解释 Montgomery 表示。

每段分 64 个四位窗口处理。窗口将对应乘积加进扩宽累加器，记录约减系数，加入模数倍数后使低四位为零，再右旋四位。`p%16=15` 支撑这里的约减关系。窗口迭代和最终约减把结果变为规范值；[Montgomery.lean](../../Math/ModularMultiplication/Montgomery.lean) 与 [MontgomeryConversion.lean](../../Math/ModularMultiplication/MontgomeryConversion.lean) 证明算术等式。

电路不能在右移时遗失恢复所需的信息，所以记录每个窗口的约减系数，并保留最后规范化的标志。使用结果后，恢复段按反向窗口次序执行显式前向算术，重建旧值并清历史。测量只用于掩码/进位清理，不用来选择后续窗口。

## 输出和清理怎样组合

```text
montP：变量段准备 → 常数转换段准备
中段：将已得的规范乘积 XOR / 模加 / 模减到外部 out
montQ：常数段恢复 → 变量段恢复
```

| 边界 | 必须保持的数据 | 可复用空间 |
| --- | --- | --- |
| `montP` 之前 | 外部输入、输出 | 全部 work 初始为零 |
| `montP` 返回 | 两段结果、各自记录带和规范化标志 | `M.shared` 已归零 |
| 更新输出之后 | 同一个 `MontPrepared`，外部输入保持 | 中段借用的 shared 必须归零 |
| `montQ` 返回 | 外部输入及更新后的输出 | 两套历史和 shared 全部归零 |

准备契约 `MontPrepared` 在 `MontLayout.lean`，`montP_spec/montQ_spec` 在 [MontPQ.lean](MontPQ.lean)。两个阶段共享临时工作区，但各自的历史必须存活到恢复。`MontAdapterLayout` 只让中段复用已清零区域；`MontAdapterSpec` 用中段只更新 out 的保持性质证明历史仍然有效。

求逆缩放直接使用单段 `montPrepare/montRestore`，将特殊缩放因子编入查表值；它不调用完整两段 `fieldMul`。修改单段内核时必须检查求逆，修改输出适配器时则主要检查除法和点加。

## 文件地图与修改入口

| 文件组 | 内容 |
| --- | --- |
| `FieldMultiply`、`MontAdapterLayout/Spec/Frame/Resources` | 对外输出接口、组合正确性、保持与资源 |
| `MontLayout/PQ/Resources` | 两段布局、准备契约、P/Q 证明及资源汇总 |
| `MontPrepare/StageSpec/StagePorts` | 单段门列、边界契约与端口证明 |
| `MontDigit/Reduce/Window/Rounds/Normalize/History` | 变量窗口、约减、迭代与历史恢复证明 |
| `ConstDigit/Window/Rounds/StageSpec` | 常数转换段的对应证明 |
| `MontLookup/Constant/Rotate/Counts/Wires` | 查表算术、常数/旋转辅助、门数和实际支持 |
| `MultiplyPorts/MontBorrow` | 接入调用方的共享池与连续借用区 |

依赖 [Addition](../Addition/README.md)、[Lookup](../Lookup/README.md)、[ModularAddition](../ModularAddition/README.md)、[RegisterXor](../RegisterXor/README.md)。数学层现归 Math/ModularMultiplication，相关电路引理和资源证明在本目录。

## 验证与影响范围

`fieldMul_resources`、`montAdapter_counts` 等资源针对各自的具体程序。线路数由支持集求并得到，不把两段共用的空间重复计算。

修改窗口或清理方式时检查单段规格、P/Q、五种适配器，再检查 [ModularInverse](../ModularInverse/README.md)、[Division](../Division/README.md) 和 [PointAddition](../PointAddition/README.md) 的调用及资源传播。在仓库根目录运行 `scripts/verify.sh`，不更改公开定理的数学含义或放宽前提来使迁移通过。
