# 模加法

本模块计算模 `q` 的加法，并提供减法作为其逆向操作。约减、取负和工作池适配是完成这些接口所需的配套部分；模乘、求逆与模加倍各有自己的模块。

## 怎么使用

| 需求 | 入口 | 输出与前提摘要 |
| --- | --- | --- |
| secp256k1 的零输出模和/差 | [FieldAddSub.lean](FieldAddSub.lean) 的 `fieldAdd_zero_spec` / `fieldSub_zero_spec` | 两输入均 `<p`，工作区为零，得到规范模和/差 |
| 任意输出初值 | 同文件 `fieldAdd_spec` / `fieldSub_spec` | 保留两输入，把规范结果 XOR 到输出 |
| 一般模数的 XOR 运算 | [Modular.lean](Modular.lean) 的 `modAdd_spec` / `modSub_spec` | `0<q<2^n`，输入按相应规格的范围；`modAdd_bounded_spec` 可用和小于 `2q` 的条件 |
| 原地模加 | [ModInPlaceWrappers.lean](ModInPlaceWrappers.lean) 的 `modAddInPlace_spec` | `A≤p`、`Z<p`、`0<p<2^n`；`Z → (A+Z)%p` |
| 原地模减与受控接口 | [ModInPlaceSubtract.lean](ModInPlaceSubtract.lean)、同上 wrappers | 减法同样要求规范范围；受控时保留控制，禁用时目标不变 |

所有接口要求布局的位宽和全局线路互异，工作区按规格初始为零。`ModLayout.width=n` 的数据寄存器是 **n+1 位**；secp256k1 的这个 XOR 接口因此使用 257 位字。不要与求逆的外部 256 位接口混用。

## 算法与正确性

对于小于模数的两个输入，和小于 `2q`。XOR 版本先计算扩宽和，再试减 `q`，用最高位/借位选择原和或约减后的候选，将规范结果写入输出。保留原输入后，按依赖逆序重新执行前向 XOR 模块，清除和、候选及进位。

减法先计算差，借位时加回模数。`Reduction.lean` 的 `addReduction/subReduction` 把机器位宽下的借位判断连接到自然数模运算；`ModularSteps` 跟踪每步的寄存器值，`Modular` 组合为最终规格。

原地版本在扩宽目标上加源、试减模数、借位时加回，最后从新结果与源的比较重建并清除借位。这个最后步骤使辅助标志不再依赖已经消失的旧目标。受控版本先生成来源掩码，完成包含借位清理的整个核后再清掩码；源为 `p` 的边界也由公开前提覆盖。

## 文件分工

| 文件组 | 用途 |
| --- | --- |
| `ModularLayout/Steps/Modular/Frame/Resources` | XOR 模加减的布局、阶段、规格、保持及资源 |
| `ModInPlace*` | 原地核、复制/取负辅助引理、普通和受控接口 |
| `FieldAddSub` | 固定 secp256k1 模数的封装 |
| `Accumulate` | 用模加/减把结果移动到另一个银行并清旧值 |
| `ExternalMod/ModularXorSteps/UnaryMod*` | 用模运算核对外部寄存器约减或取负并清理 |
| `ModularPorts/PoolLayout/SubtractPorts` | 将同一运算接到调用方线路和工作池切片；不额外分配一套电路 |
| `Reduction` | 小端高低位与约减数学引理 |

数学补充仍在 [ModInPlace.lean](../../Math/ModularAddition/ModInPlace.lean)。数学层现归 Math/ModularAddition，电路程序与其组合证明在本目录；本 README 解释两者如何连接。

## 依赖与验证

主要依赖 [Addition](../Addition/README.md)、[Comparison](../Comparison/README.md)、[Selection](../Selection/README.md) 和 [RegisterXor](../RegisterXor/README.md)。模乘、求逆和点加都复用这些接口；改变 `PoolLayout` 时还需核对它们的端口、互异条件和支持集。

资源在 `ModularResources`、`FieldAddSub` 和原地 wrappers/subtract 文件中。XOR 与原地版本不是相同门列，资源不能互换。在仓库根目录执行 `scripts/verify.sh`；范围前提、辅助位清零、相位与同程序资源必须同时成立。
