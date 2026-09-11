# 来源与复现

数学层改编自 [VerifiedQC/ShorECDLP](https://github.com/VerifiedQC/ShorECDLP) 的提交 `15d2a336743304e069f8a8a468c6ab1da334577b`：`Math/BitcoinCurve.lean`、`Math/BitcoinPrimes.lean` 和 `Math/EllipticCurve/AffineFormula.lean`。命名空间改为 ECDSAAdd，AffineFormula 路径扁平化并直接使用已证 p 素性的实例。BitcoinPrimes 仅保留 `lucasFromFactors`、`p_prime` 所需的 40 条 `prime_cert_*` 及字段/曲线实例；未复制群阶证明。BitcoinCurve 保留群、生成元 G 和坐标；所有证明重新由 Lean 检查。Framework、AND 与 Arithmetic 程序及证明为本项目编写，Hoare/program 语法糖改编自 Dirac 在项目频道提供的原型。

`Math/Kaliski.lean`、`Math/ModularHalving.lean`、`Math/KaliskiInverse.lean` 为本项目按已确认的二进制 EEA/Kaliski 算法规格编写的数学证明；未复制上游求逆实现，也不包含求逆电路。

Lean 固定为 `leanprover/lean4:v4.28.0`；Mathlib 固定为 `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。全新检出执行 `lake exe cache get`，再执行 `scripts/verify.sh`；不需要其他本地仓库。公理检查针对脚本列出的公开定理及其传递依赖，不是全环境声明审计。

本仓库为 private；Apache 2.0 由 Runzhou 于 2026-09-08 指定。所检上游提交没有 LICENSE，此声明不表示上游独立选择了该许可证。详见 [NOTICE](../NOTICE)。

I2 的 CSWAP 交换网络、移位和 10 位计数原语及证明为本仓库新增。CSWAP 使用标准 CX/CCX 分解；计数器复用已有加法器和前向 XOR 清理，没有复制新的外部源码。

I3 的 Math/KaliskiRound 与单轮布局、比较、零检测、受控加减、记录、正逆轮组合和资源证明均为本项目编写。算法根据频道确认的 EEA 路线，修正十位计数、终止轮计数时机与完整两位编码；计数比较采用固定 i<更新后 k 恢复活动性。未复制外部电路或证明源码，也未运行数值样例、Python 对照或真值表。I3 只实现单轮与逆轮；I4 与 I5 的后续实现见下文。

I4 的记录带循环、模减半/模加倍互逆证明、条件 XOR 包装、规范化取负、第二阶段循环和整体反计算均为本项目编写，复用 I1–I3 及既有模加减的已证程序。终态 r 先取模再取负，不假定 r<p；计数器在第二阶段保持。没有复制新的外部源码，没有新增测试、Python 数值对照或真值表。共享外部寄存器框架从既有 Double 实现提取，模加证明扩展到输入和小于两倍模数，既有公开模加/模乘接口保持兼容。

I5 的 InverseLayout/InverseLoad/InverseSpec/InverseResources 为本项目编写，复用已证 I4 内核及 I1 的 kaliski_inverse_p。装载与卸载使用既有 copyRegister/xorConstant；六字段值表仅用于封装证明中的寄存器保持与更新。布局置换、输出高位清零和实际支持集均由 Lean 证明；没有复制新外部源码，没有增加数值测试或对照程序。旧 Halve（本次已删除）曾使用已载入奇模数最低位作为移位控制。

M3 第一部分的相等检测、分支标志、安全除数、共享池端口布局、候选计算/清理及资源证明均为本项目编写，依照频道确认的六减、三乘、一次求逆方案，复用已证模算术与 I5。候选数学关系复用已有 AffineFormula；未复制其他论文的电路或证明源码。本部分是既有算术模块的正确性基线，不实现另行讨论的原地算术优化。没有新增数值测试、Python 对照、真值表或公理。

M3 第二部分的完整分类、共享池零检测映射、常量/候选输出、点状态组合、完整 XOR 规格及实际支持集/资源证明均为本项目编写，复用第一部分的候选程序及既有 AffineFormula 曲线性质。未复制新的外部程序或证明源码；仍是已确认的算术基线，不包含另行规划的原地算术或 Montgomery 优化。完整点加覆盖所有合法点，受控原地组合见下文。没有新增测试、数值对照、真值表、公理或证明资源限制放宽。

M3 第三部分的四线控制扩展、最终输出选择、受控点交换、两次前向调用的组合规格及实际支持/资源证明均为本项目编写，复用前两部分点加、既有 CSWAP 和寄存器交换。没有复制新的外部源码，没有引入全算术受控变换；不包含另行规划的原地算术或 Montgomery 优化。没有新增测试、Python 数值对照、真值表、公理或证明资源限制放宽。

基础层的 `majority`、`addInPlace`/`subInPlace`、受控常数/寄存器加减和 `compareChain`/`compareLt`/`compareLtConst` 为本项目编写，按 [REWORK_PLAN](REWORK_PLAN.md) §1.1 与 §5.2 的构造（Gidney 2018 "Halving the cost of quantum addition" 的进位链、和位写回与比较器思路），门列复用现有 `fullAdder` 的进位段与 `eraseCarry`。擦除顺序按独立复审意见改为"先擦进位再写和位"，最高位不算进位。`Math/ModularHalving.lean` 的三条奇偶/加倍引理为本项目编写。`RippleAdder.lean` 的 `sum_value_step` 由私有改为公开以供复用，陈述未变。没有复制外部程序或证明源码，没有新增测试、数值对照、真值表、公理或证明资源限制放宽。

改 1：`HalveInPlace.lean` 与重写的 `HalvingLoop.lean` 按已复审设计实现原地减半、显式加倍恢复与固定轮数正逆证明。奇数加模数、移位、从输出范围恢复奇偶的构造依据 Roetteler 等（2017）Fig. 4 的模减半/加倍思路，基础加法及比较器复用上节的 Gidney 原语。证明和布局复用代码均为本项目编写，未复制外部源码。删除旧 out-of-place Halve/两字交替循环，保留 Double（模乘仍调用）。历史基线 fieldInverse 为 14,303,280/6,936,624/6,468，本次变为 5,626,928/2,198,576/6,211；第二阶段仍正反两遍，公开 XOR 接口不变。未新增测试、公理、native_decide 或放宽证明资源限制。

改 4 首批：计数活动比较直接组合本项目已证明的 Gidney 比较器与 X 门。删除旧 Borrow 包装，保留其唯一有效数学依赖为 RecordRound 私有引理。新接口、frame、精确支持及资源适配均为本项目证明，未复制外部源码；完整求逆从5,626,928/2,198,576降至5,596,208/2,167,856，内部线路仍为5,955。记录段门列未变。
