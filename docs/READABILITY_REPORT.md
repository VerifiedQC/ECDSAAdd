# ECDSAAdd 可读性与多 agent 协作整理建议

日期：2026-09-14。调研基线：`6bdfc69dde84cc089f94edde70c441fc0e309b60`（同步时的 `origin/main`）。

本文是整理方案的提案记录，最初单独提交报告。当前报告、项目地图和求逆说明已统一到临时分支 `codex/module-map-inverse`；`new` 为最终集成分支。下文保留分阶段方案，阶段 B 的文档初稿已完成、待审阅，源码目录尚未搬迁。报告中的路径相对于仓库根目录，链接相对于本文。

## 1. 结论与目标

建议先建立职责清晰的模块说明和公共接口导航，再按实际阅读反馈改进源码注释，最后决定是否搬迁文件。第一阶段保留 Lean 文件路径、命名空间、公开定理和电路实现，使整理可以小批审阅，也便于持续吸收主分支更新。

目标是让人类与新加入的 agent 通过项目导航和目标模块介绍，找到入口、理解契约、划定修改范围并选择验证方法。使用一个模块时通常只需要理解其公共定理；修改其实现时才深入内部证明。文档提供索引和解释，源码及 Lean 验证仍是正确性依据。

目前没有测量 agent 的阅读耗时或上下文消耗，因此不承诺具体降幅。可以通过后文的独立阅读任务评估改善是否有效。

## 2. 当前结构与具体问题

基线包含 217 个 Lean 文件，其中 196 个位于 `ECDSAAdd/Arithmetic`。README 为 185 行，PROOF_STATUS 为 1,113 行，REWORK_PLAN 为 1,875 行，PROVENANCE 为 122 行。这些数字只描述本次快照，不作为长期维护指标。

已有资料很丰富：[README](../README.md) 提供状态、接口样例和交付要求，[PROOF_STATUS](PROOF_STATUS.md) 记录证明与资源，[REWORK_PLAN](REWORK_PLAN.md) 记录设计演化，[PROVENANCE](PROVENANCE.md) 记录来源。问题主要在于初次阅读者需要从这些长文和大量平铺文件中自行重建当前架构。

| 观察 | 阅读或协作成本 | 建议 |
| --- | --- | --- |
| Arithmetic 中布局、状态、规格、资源、辅助证明并列 | 文件名无法直接告诉调用者应该读到哪里就停 | 按概念模块列公共入口与内部阅读路径 |
| README 同时包含现状与多轮优化历史 | 容易把旧实现或历史成本带入当前任务 | 当前架构先呈现，历史通过链接查询 |
| 同一功能存在不同输出接口 | 可能把 XOR 输出与原地更新混用 | 用寄存器前后状态解释每个接口 |
| 求逆准备后保留历史，除法借用已清零工作区 | 只知道数学公式不足以安全组合电路 | 明确历史寿命、借用范围和恢复条件 |
| 多人容易同时修改 README、公共布局和资源文件 | 产生冲突，局部改动可能遗漏上层资源传播 | 在任务开始时约定写入范围与集成责任 |

两处源码说明了导航必须反映当前实现：

- [ControlledPointLayout.lean](../ECDSAAdd/Arithmetic/ControlledPointLayout.lean) 中 `controlledPointAddOut` 仍走候选计算与 XOR 输出；`controlledPointAdd` 对有限常量调用 `pointInPlaceFinite`。介绍必须区分这两条路径。
- [InverseCompute.lean](../ECDSAAdd/Arithmetic/InverseCompute.lean) 中当前准备过程是 Kaliski 循环、取负、计数驱动的 Montgomery 缩放；恢复过程显式清理缩放和历史。旧减半方案不能作为当前求逆的主阅读路径。[FieldMultiply.lean](../ECDSAAdd/Arithmetic/FieldMultiply.lean) 当前调用 `montMulXor`，模乘介绍也应从此进入。

这些是结构与入口抽查，不是对全部证明和文档一致性的完整审计。平铺或文件数量本身并不意味着设计错误；先解决可发现性，再判断拆分是否需要调整。

## 3. 文档组织与信息归属

原方案将 `docs/MODULES.md` 作为模块地图，模块介绍放在 `docs/modules/`；当前地图与求逆说明初稿采用这一结构。用户随后提出将 Lean 文件按模块放入 `Arithmetic` 子目录，并在每个子目录放说明文件：源码目录迁移尚未执行，若采用该结构，现有求逆说明随模块迁入，地图继续作为全项目入口，不保留两份重复的模块说明。

| 位置 | 负责内容 | 更新触发条件 |
| --- | --- | --- |
| README | 项目目标、当前摘要、阅读入口、基本验证命令 | 公共行为或导航变化 |
| docs/MODULES.md（拟新增） | 模块职责、主要依赖、任务路由 | 模块边界或入口变化 |
| docs/modules/*.md（拟新增） | 公共契约、布局含义、实现阅读路径、修改影响 | 接口、算法或文件归属变化 |
| PROOF_STATUS | 当前证明范围、资源定理、公理检查证据 | 证明或资源变化 |
| REWORK_PLAN | 优化提案与设计历史 | 算法设计变化 |
| PROVENANCE | 来源、复现和许可说明 | 来源或复现条件变化 |
| 本报告 | 本轮可读性整理的提案与验收依据 | 方案审阅修订；完成后标记状态 |

原 README 要求文档集中在几份文件中，未实现计划只放 REWORK_PLAN。本报告按用户要求单独编写；项目地图初稿已同步修订 README，明确算法优化计划、架构阅读说明和提案记录的归属。今后若迁移模块说明的存放位置，也应同步更新该约定。

模块说明不重复粘贴完整定理或维护另一套资源表：链接到定义、规格和资源定理，并解释如何使用。必要的公式或状态摘要标明是解释性简写，省略的位宽、互异性等前提仍以链接的 Lean 陈述为准。历史方案留在原设计文档，通过链接访问。

## 4. 建议的模块边界

下表是初步阅读分组，不是完整 import 图或最终文件归属表。实施时逐组核对实际依赖，明确共享布局的维护责任；不按文件名前缀自动搬迁。

| 模块介绍（拟新增） | 职责 | 已有阅读入口 |
| --- | --- | --- |
| foundation.md | 基态、相位、指令、Triple、资源含义 | [Syntax](../ECDSAAdd/Framework/Syntax.lean)、[Semantics](../ECDSAAdd/Framework/Semantics.lean)、[Hoare](../ECDSAAdd/Framework/Hoare.lean)、[Cost](../ECDSAAdd/Framework/Cost.lean) |
| curve-math.md | secp256k1 域、曲线与点加数学规格 | [BitcoinCurve](../ECDSAAdd/Math/BitcoinCurve.lean)、[AffineFormula](../ECDSAAdd/Math/AffineFormula.lean) |
| primitives.md | 加减、比较、测量清理等基础电路 | [And](../ECDSAAdd/Circuit/And.lean)、[InPlaceAdder](../ECDSAAdd/Arithmetic/InPlaceAdder.lean)、[Compare](../ECDSAAdd/Arithmetic/Compare.lean) |
| modular.md | 模加减、原地接口、半倍与范围前提 | [FieldAddSub](../ECDSAAdd/Arithmetic/FieldAddSub.lean)、[ModInPlaceSubtract](../ECDSAAdd/Arithmetic/ModInPlaceSubtract.lean)、[ModUnaryResources](../ECDSAAdd/Arithmetic/ModUnaryResources.lean) |
| multiplication.md | Montgomery 内核、历史与输出适配器 | [FieldMultiply](../ECDSAAdd/Arithmetic/FieldMultiply.lean)、[MontAdapterSpec](../ECDSAAdd/Arithmetic/MontAdapterSpec.lean)、[MontPQ](../ECDSAAdd/Arithmetic/MontPQ.lean) |
| inverse.md | Kaliski 数学、循环、缩放、逆元准备与恢复 | [InverseSpec](../ECDSAAdd/Arithmetic/InverseSpec.lean)、[InverseCompute](../ECDSAAdd/Arithmetic/InverseCompute.lean)、[InverseScale](../ECDSAAdd/Arithmetic/InverseScale.lean) |
| division.md | 保留求逆历史的除法与受控累加 | [DivideSpec](../ECDSAAdd/Arithmetic/DivideSpec.lean)、[Divide](../ECDSAAdd/Arithmetic/Divide.lean)、[DivideResources](../ECDSAAdd/Arithmetic/DivideResources.lean) |
| point-add.md | XOR 点加与受控原地点加、特殊分支及工作池 | [PointAddSpec](../ECDSAAdd/Arithmetic/PointAddSpec.lean)、[ControlledPointAddSpec](../ECDSAAdd/Arithmetic/ControlledPointAddSpec.lean)、[ControlledPointLayout](../ECDSAAdd/Arithmetic/ControlledPointLayout.lean) |

概念依赖是：基础语义支持电路及其证明；基础算术支持模算术和 Montgomery 模乘；求逆结合 Kaliski 与 Montgomery 缩放；除法组合求逆和乘法；点加组合这些算术接口与曲线数学。数学与电路证明应在介绍中明确区分。

## 5. 每个模块介绍的统一模板

建议每份以约 60–120 行为起点；复杂模块可增加长度，但首页应足以选择入口。长度是编辑参考，不是为了压缩而省略关键前提的硬限制。

1. **职责和适用范围**：用普通语言说明它完成什么操作，输入输出各是什么。
2. **调用者先读**：列少量程序、规格、布局和资源入口；解释零输出、XOR、原地接口的区别。
3. **契约**：位宽、数值范围、线路互异、初始清零、控制保持、相位恢复、目标外保持，以及不支持的输入。
4. **状态与算法**：简短阶段表，列出活跃寄存器、必须保留的历史、可借用工作区和恢复时机。
5. **维护者阅读路径**：按布局、程序、规格、证明、资源的关系组织文件；解释名字不足以表达的设计原因。
6. **依赖和修改影响**：直接依赖哪些接口，哪些上层模块需要复查；共享文件由谁协调。
7. **验证与交付**：链接现有验证脚本，列与该模块相关的公开定理，说明资源变化如何传递。
8. **维护范围**：明确哪些文件的接口或实现变化必须同步更新本说明；无法确认的事项标记待核实。

先给清晰解释再链接细节。不要把 tactic 逐行翻译成自然语言，也不要新增与当前实现无关的抽象、镜像源码树或庞大的“agent 手册”。

## 6. 求逆模块示范的内容提纲

建议用求逆作为首个完整示范，连同一个除法调用场景评估模板是否有效。

- 调用者从 `InverseSpec.lean` 理解非零域输入和 XOR/零输出契约，从 `InverseResources.lean` 找到同一程序的资源定理。
- 维护者从 `InverseCompute.lean` 理解当前阶段顺序，再进入循环、缩放及相应布局。Kaliski 的数学终止和逆元等式从 `Math/KaliskiInverse.lean` 追溯。
- 准备阶段保留恢复所需历史；“某块工作区已清零”不代表所有历史可覆盖。文档应根据实际布局与规格逐项列出可借用区域。
- 用一个状态表解释初始、Kaliski 结束、逆元可用、恢复完成四个状态，标出计数、记录带、逆元输出和缩放历史的寿命。
- 将 `DivideSpec.lean` 作为上层使用示例，解释为什么调用者需要准备/恢复接口，而不总是完整的复制输出接口。

这只是示范编写任务，不声称已经核对上述各阶段所有字段。实际示范必须对照当前源码补全精确链接和前提。

## 7. 分支与多 agent 协作

本轮整理只维护两个分支：`new` 保存最终集成成果，`codex/module-map-inverse` 是唯一临时工作分支，后续报告、文档、目录迁移及其他修改全部在这里累积。完成整理、验证和审阅后，再通过以 `new` 为 base 的 PR 集成。原 `codex/readability-report` 的历史已合入临时分支，不再单独维护。仓库原有 `main` 和其他开发者分支不属于本轮清理范围。

单个执行者直接在临时分支工作。需要多个 agent 协作时，先协调互不重叠的文件范围，由一个集成执行者负责 Git 提交；不要让多个 agent 同时切分支、改索引或修改同一文件。确需独立目录时可使用同一基线的 detached worktree，并以补丁交接，不新增持久工作分支。任务说明建议包含：

| 字段 | 示例含义 |
| --- | --- |
| 目标和基线 | 求逆模块说明；从哪个提交开始 |
| 必读入口 | 模块地图、该模块规格、必要依赖契约 |
| 允许修改 | 本模块说明和明确列出的源码注释 |
| 共享文件 | README、MODULES、公共布局、验证脚本等由集成人协调 |
| 交付物 | 修改文件、接口是否变化、验证结果、待核实项 |
| 交付目标 | 唯一临时分支 `codex/module-map-inverse`；整轮完成后再集成到 `new` |

任务交接应简短指出关键结论、源码位置和未解决事项，不要求下一个 agent 重读全部历史对话。不要将“只能读指定文件”设成硬限制；若契约不足，应允许追踪必要源码并补充文档。

沿用仓库现有的合并责任和审阅约定，本报告不重新指定合并人。若整理期间需要吸收 `main` 的更新，在临时分支完成整合并复查受影响的模块说明；不提前将未验收成果写入 `new`。共享分支避免改写历史。最终候选提交完成验证和审阅后再集成到 `new`；是否回到 `main` 留作后续决定。

## 8. 分阶段实施与验收

| 阶段 | 交付内容 | 验收条件 |
| --- | --- | --- |
| A：方案 | 本报告 | 确定模块边界、文档归属、分支流程；尚不改变实现 |
| B：导航与示范 | MODULES、README 导航、求逆说明与必要注释 | 独立读者能找到接口、解释前提、指出修改及验证入口 |
| C：推广 | 其余模块说明，小批分模块提交 | 每份链接有效、区分公共与内部接口、明确上层影响 |
| D：源码可读性 | 针对难点补注释、改进局部命名或分段 | 改动范围可审阅；涉及 Lean 的变更通过规定验证 |
| E：结构调整（按需） | 根据阅读反馈移动文件或重组 imports | 有旧新路径映射，依赖和验证入口同步，完整构建通过 |

源码搬迁会影响 import 和并行分支，因此应作为单独变更评估；不把目录重排与算法优化混在同一 PR。每个阶段可独立保留或回退，不要求先完成全仓整理才能产生收益。

建议让未参与编写的读者完成三个任务：找到受控原地点加的公共定理；解释使用逆元时哪些历史必须保留；指出改动模乘资源后应检查的上层模块。记录定位耗时、打开的文件及错误理解，并与整理前同类任务比较。验收看能否正确完成任务，而非文档数量或字数。

## 9. 验证、风险与本次边界

纯文档报告检查相对链接、引用路径、基线、提案与现状的区分，以及 `git diff --check`。本次不修改 Lean、依赖、CI 或验证脚本，不把源码抽查写成“完整构建已通过”。

后续修改 Lean 文件、import 或公开入口时，按现有 [verify.sh](../scripts/verify.sh) 执行构建与公开定理的传递公理检查：`lake --wfail build` 及脚本列出的 `#print axioms`，仅允许仓库现有白名单。新公开接口应纳入相应检查；不因整理而放宽证明要求。纯文档 PR 若现有 CI 会构建，正常保留该检查，不另行绕开。

主要风险及处理方式：

- **文档漂移**：接口或阶段顺序变化时，在同一 PR 更新所属模块说明；易变资源数以定理与 PROOF_STATUS 为准。
- **重复维护**：模块说明解释当前结构，算法历史仍归原设计文档；不复制整段定理和长资源表。
- **文档误导**：明确数学结论与电路结论、静态支持与布局分配、基态分支语义与完整量子态语义的边界。
- **并行冲突**：明确每个任务的写入范围，由一个执行者操作 Git；共享布局和导航由集成人协调，所有成果归入同一临时分支。
- **整理范围失控**：第一轮以导航和求逆示范验收，再决定后续批次；算法优化继续按既有设计流程处理。

当前临时分支包含本报告、项目地图、求逆模块说明及 README 导航。源码重构、最终 PR 合并和新的完整 Lean 复验尚未完成；这些阶段的状态不能由文档初稿完成推断。
