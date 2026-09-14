# 求逆模块：怎样得到逆元，又把工作区清干净

给定 `0 < X < p`，这里计算一个数 `V`，使 `X × V ≡ 1 (mod p)`。`p` 是 secp256k1 的域模数。点加中的除法会用到它：先求分母的逆元，再乘分子。

模块还要处理计算时留下的数据。调用者可以选择：把逆元写入输出、清好工作区后返回；或者先保留逆元和恢复所需的历史，用完后再清理。**选对这两个入口，是阅读本模块的第一步。**

核对代码基线：`6bdfc69dde84cc089f94edde70c441fc0e309b60`，2026-09-14。[返回项目地图](../MODULES.md)。下文状态表和公式是阅读摘要，完整 Lean 前提以链接的定理为准。

## 只想调用：先选接口

| 需求 | 程序与公开定理 | 调用结束时 |
| --- | --- | --- |
| 把逆元写入初始为零的输出 | `fieldInverse`；[InverseSpec.lean](../../ECDSAAdd/Arithmetic/InverseSpec.lean) 的 `fieldInverse_spec` | 外部 `x` 保持，`out=V`，内部 `work=0` |
| 将逆元按位异或进已有输出 | 同一个 `fieldInverse`；同文件的 `fieldInverse_xor_spec` | `out=O XOR V`，输入保持，内部 `work=0` |
| 在内部用逆元做乘法等运算，再恢复 | `inverseCompute` / `inverseUncompute`；[InverseLoopSpec.lean](../../ECDSAAdd/Arithmetic/InverseLoopSpec.lean) 的 `inversePrepare_spec` / `inverseRestore_spec` | 准备后 `a=V`，部分工作区可借用，但历史必须保留；恢复后回到已装载初值 |
| 已经装载了内部寄存器，只需 XOR 输出 | `inverseLoop`；同文件的 `inverseLoop_spec` / `inverseLoop_xor_spec` | 输出更新，内部数据恢复为已装载初值，不负责卸载 |

普通调用从 `fieldInverse_spec` 开始；无需先读 Kaliski 的每轮证明。`inverseContract` 只是接口要求，具体电路满足它的证据是 [InverseResources.lean](../../ECDSAAdd/Arithmetic/InverseResources.lean) 的 `fieldInverse_contract`。

### 完整 fieldInverse 要求什么

布局定义在 [InverseLayout.lean](../../ECDSAAdd/Arithmetic/InverseLayout.lean)：`L.x` 和公开 `L.out` 各 256 位，`L.work` 包含完整内部数据与辅助位。公开输出取内部 257 位输出的低 256 位，额外高位属于工作区，最终为零。

调用前需要 `L.Widths`、`L.wires.Nodup`、`0<X<p` 和 `work=0`。`Widths` 还固定内部 256 个低位、257 位数据字、512 对分支记录、10 位计数器等尺寸。输出初值为零时可这样读其规格：

```text
x=X, out=0, work=0
    ── fieldInverse ──▶
x=X, out=X 在模 p 下的逆元, work=0
```

XOR 形式允许任意可由输出寄存器表示的 `O`，但不是模加。零输入不在这两个规格的保证范围内。`Triple` 对任意初始相位和任意测量记录保证相位恢复；没有在这里增加完整量子态语义。额外状态的保持需要程序外线路条件，参见 [Cost.lean](../../ECDSAAdd/Framework/Cost.lean) 的 `run_preserves_outside` 与 [Hoare.lean](../../ECDSAAdd/Framework/Hoare.lean) 的 `Triple.frame`。

## 想理解实现：按“装载、准备、使用、恢复、卸载”读

当前门列在 [InverseLayout.lean](../../ECDSAAdd/Arithmetic/InverseLayout.lean) 和 [InverseCompute.lean](../../ECDSAAdd/Arithmetic/InverseCompute.lean) 中直接写为：

```text
fieldInverse = inverseLoad → inverseLoop → inverseUnload
inverseLoop  = inverseCompute → 将 a XOR 到 out → inverseUncompute

inverseCompute   = 512 轮 Kaliski → 规范化取负 → scaling.prepare
inverseUncompute = scaling.restore → 再做规范化取负以清 a → 512 轮显式恢复
```

装载把模数、输入副本和常数放入内部寄存器；恢复把内部数据还原到这一已装载状态；最后卸载才将这些内部寄存器清零。所以 `inverseUncompute` 结束与 `fieldInverse` 结束的“清零范围”不同。

Kaliski 是使用奇偶、减法和移位的扩展欧几里得算法。它维护 `u,v,r,s,k`，初始为 `(q,X,0,1,0)`；`k` 统计有效轮数。程序固定展开 512 轮，数学状态在 `v=0` 后不再更新，计数银行的物理角色仍按轮号交替。每轮把分支保存到两位记录 `swap/subtract`，供恢复时使用。定义和证明入口是 [Math/Kaliski.lean](../../ECDSAAdd/Math/Kaliski.lean)、[KaliskiLoop.lean](../../ECDSAAdd/Arithmetic/KaliskiLoop.lean)。

Kaliski 结束后还需要消去一个缩放因子。令终态为 `z`，`K=z.k`，`N=(-z.r) mod q`。第一阶段得到的是带 `2^K` 因子的逆元信息；还需要计算 `N × 2^(-K) mod q`。当前通过计数查表得到 `R × 2^(-K) mod q`，再用一段 Montgomery 计算消去 `R=2^256`，得到普通表示的逆元。数学连接见 [InverseScaleFactor.lean](../../ECDSAAdd/Math/InverseScaleFactor.lean) 的 `kaliski_montgomery_scale`。

电路用 `L.scaling.prepare` 实现查表、Montgomery 准备、交换和清表，用 `restore` 显式恢复，见 [InverseScale.lean](../../ECDSAAdd/Arithmetic/InverseScale.lean)。恢复程序不是把含测量的指令列表倒放；每个恢复段都需要独立的状态前提和正确性证明。

## 核心示范：逆元可用时，哪些数据还活着

本节 `L` 指内部 `InverseLoopLayout`，与上一节外部布局的字段含义不同。`L.a` 是内部结果，`L.out` 是复制目标；`L.middle` 是第一阶段结束时的寄存器视图。计数银行的角色可能交换，应使用该视图，不自行猜测终态计数在哪一组线中。

| 边界 | 内部数据和历史 | `a` | `temp` 与 `arithmetic.wires` |
| --- | --- | --- | --- |
| 已装载，准备开始 | `u=q,v=X,r=0,s=1,k=0,done=false`，记录和其余工作区为零 | 0 | 全零 |
| Kaliski 结束 | 数据为终态 `z`，计数 `K` 和 512 对分支记录保留；轮工作区已清理 | 0 | 全零 |
| 规范化取负结束 | 第一阶段历史保持 | `N=(-z.r) mod q` | 全零 |
| `inverseCompute` 返回 | 第一阶段历史仍在；另有缩放历史 `y=N`、`carry=商与标志` | 逆元 `V` | 全零，可按已证布局借用 |
| 使用逆元结束、准备恢复 | 必须重新满足同一个 `InverseHistory L q X` | 必须仍为 `V` | 必须归还为全零 |
| `inverseUncompute` 返回 | 回到已装载初值；分支记录和缩放历史清零 | 0 | 全零 |

准备/恢复的精确接口在 [InverseLoopSpec.lean](../../ECDSAAdd/Arithmetic/InverseLoopSpec.lean)：

```text
已装载初值，L.work=0
    ── inverseCompute L q ──▶
a=V, temp=0, arithmetic.wires=0, InverseHistory L q X
    ── 调用者使用逆元，并归还这些条件 ──▶
a=V, temp=0, arithmetic.wires=0, InverseHistory L q X
    ── inverseUncompute L q ──▶
已装载初值，L.work=0
```

这两个定理要求 `q<2^256`、`q%16=15`、`0<X<q`、`q.Coprime X`，以及规定的尺寸和线路互异性；这里的 `q` 不必是素数，但不能把接口泛化成“任意奇模数”。secp256k1 封装用已证的 `p` 素性等性质满足这些前提。

`InverseHistory` 的字段解释在 [InverseScaleState.lean](../../ECDSAAdd/Arithmetic/InverseScaleState.lean) 的 `ScaledRest`、`scaledRoundValues`：

- 保存第一阶段的 `u/v/r/s`、分支记录和状态位，以及计数和计数工作区的指定值。
- 缩放后 `middle.data.reg .y` 保存 `N`；`.carry` 保存 Montgomery 商与约减比较标志，恢复缩放时需要它们。
- 缩放的 518 位存活布局还包括 `.zero` 的低 4 位；在准备完成的边界它们为零，但仍由历史断言约束。值恰好为零不自动意味着可任意借用。

逆元 `a` 不在 `InverseHistory` 里，因为它单独写在恢复前提中；这不代表调用者可以丢掉它。调用者最容易复用的区域是已证为零的 `temp ++ arithmetic.wires`。如需借其他线路，必须另证布局安全、历史恢复和相位条件，不能只凭“当前看起来没用”。

## 真实调用例子：除法借用求逆工作区

[Divide.lean](../../ECDSAAdd/Arithmetic/Divide.lean) 的 `divideAdd` 按以下顺序组合：装入安全分母 → `inverseCompute` → `montMulControlledAdd` → `inverseUncompute` → 卸载。`divideSub` 替换中间的累加方向。

控制位为真时，安全分母是输入 `D`；为假时装入 1，所以禁用分支不需要对零求逆。公开规格仍要求 `D,E,Z<p`，只在启用时额外要求 `D≠0`。启用时目标从 `Z` 变为 `(Z + D⁻¹×E) mod p`，禁用时保持 `Z`；控制、分母、分子保持，工作区清零，见 [DivideSpec.lean](../../ECDSAAdd/Arithmetic/DivideSpec.lean)。

除法保留准备态，用逆元直接完成乘积，并复用已经清零的工作区。对应字段都可在 `Divide.lean` 中找到：

| 乘法需要的东西 | 对应线路 |
| --- | --- |
| 逆元输入 | `L.inner.a`，只作为输入使用并保持 |
| 分子、累加目标 | 外部 `L.numerator`、`L.acc` |
| 可借用区 `L.borrow` | `L.inner.temp ++ L.inner.arithmetic.wires`，共 2,315 位 |
| 输出额外高位 | `L.borrow` 的索引 0 |
| Montgomery 工作区 | `L.borrow` 的索引 1 至 1,827；恢复前清零 |

这些是具体布局尺寸，不是整个求逆的成本表；长度证据为 `DivideLayout.borrow_length`。缩放自身也复用同一零区的前 1,054 位，并在准备结束时归还，见 [InverseScaleBorrow.lean](../../ECDSAAdd/Arithmetic/InverseScaleBorrow.lean) 的 `scaling_work`。两段在不同阶段使用同一空间，缩放历史则留在其他线路上。

借用安全性不止是长度够用：[DivideProduct.lean](../../ECDSAAdd/Arithmetic/DivideProduct.lean) 证明乘积执行后的保持/更新性质，[DivideSpec.lean](../../ECDSAAdd/Arithmetic/DivideSpec.lean) 组合证明准备态历史在乘积段后仍满足恢复前提。当前除法证明使用的是更细的 `inverseCompute_values` 与 `InverseScaledMiddle`，不是直接调用 `inversePrepare_spec`；上表用公开接口解释同一边界。

## 维护者从哪里继续读

按修改目标选择一行，不必顺序打开全部文件。

| 你要修改什么 | 阅读顺序与证明接点 |
| --- | --- |
| 外部装载、输出或清理接口 | [InverseLayout](../../ECDSAAdd/Arithmetic/InverseLayout.lean) → [InverseLoad](../../ECDSAAdd/Arithmetic/InverseLoad.lean) → [InverseSpec](../../ECDSAAdd/Arithmetic/InverseSpec.lean) → [InverseResources](../../ECDSAAdd/Arithmetic/InverseResources.lean) |
| 准备/恢复的总组合 | [InverseLoopSpec](../../ECDSAAdd/Arithmetic/InverseLoopSpec.lean) → [InverseCompute](../../ECDSAAdd/Arithmetic/InverseCompute.lean) → [InverseLoopProof](../../ECDSAAdd/Arithmetic/InverseLoopProof.lean)；内部布局在 [InverseLoopLayout](../../ECDSAAdd/Arithmetic/InverseLoopLayout.lean) |
| Kaliski 循环或单轮 | [KaliskiLoop](../../ECDSAAdd/Arithmetic/KaliskiLoop.lean) → [KaliskiLoopProof](../../ECDSAAdd/Arithmetic/KaliskiLoopProof.lean) → [RoundSpec](../../ECDSAAdd/Arithmetic/RoundSpec.lean) → [KaliskiRound](../../ECDSAAdd/Arithmetic/KaliskiRound.lean)；数学依据为 [Kaliski](../../ECDSAAdd/Math/Kaliski.lean) 与 [KaliskiRound](../../ECDSAAdd/Math/KaliskiRound.lean) |
| 规范化取负 | [NegativeInit](../../ECDSAAdd/Arithmetic/NegativeInit.lean) 与 [NegativeInitResources](../../ECDSAAdd/Arithmetic/NegativeInitResources.lean)；注意终态 `r` 需要约减，不自行假设 `r<q` |
| 当前缩放算法 | [InverseScaleFactor](../../ECDSAAdd/Math/InverseScaleFactor.lean) → [InverseScale](../../ECDSAAdd/Arithmetic/InverseScale.lean) → [InverseScaleBorrow](../../ECDSAAdd/Arithmetic/InverseScaleBorrow.lean) → [InverseScaleState](../../ECDSAAdd/Arithmetic/InverseScaleState.lean) |
| 中间态或借用范围 | [InverseLoopState](../../ECDSAAdd/Arithmetic/InverseLoopState.lean)、[InverseScaleState](../../ECDSAAdd/Arithmetic/InverseScaleState.lean)、`InverseHistory`；一起检查 [DivideState](../../ECDSAAdd/Arithmetic/DivideState.lean)、[DivideSpec](../../ECDSAAdd/Arithmetic/DivideSpec.lean) |

有些名字仍保留早期结构：`InverseLoopLayout.halving` 与 `HalvingCounter` 目前还用于计数视图/断言，但 `inverseCompute` 的第二阶段已经是 `scaling.prepare`。不要由名字推断还在执行逐轮减半；旧数学减半结论仍用于连接正确性证明，见 [KaliskiInverse.lean](../../ECDSAAdd/Math/KaliskiInverse.lean)。

[OneBitRoundSpec.lean](../../ECDSAAdd/Arithmetic/OneBitRoundSpec.lean) 已提供一位记录单轮规格；[InverseCompactLayout.lean](../../ECDSAAdd/Arithmetic/InverseCompactLayout.lean)、[InverseCompactViews.lean](../../ECDSAAdd/Arithmetic/InverseCompactViews.lean)、[InverseTerminalConstants.lean](../../ECDSAAdd/Arithmetic/InverseTerminalConstants.lean) 提供紧凑布局及相关组件。当前 `kaliskiLoop` 仍调用 `kaliskiRound` 并保存两位记录，`inverseCompute` 仍调用 `negativeInit` 和 `scaling.prepare`。这些新增组件尚未替换完整入口，不能用它们的借用表或局部资源来描述当前完整求逆。

## 改完后检查什么

成本从 [InverseLoopResources.lean](../../ECDSAAdd/Arithmetic/InverseLoopResources.lean) 的 `inverseLoop_257_resources` 和 [InverseResources.lean](../../ECDSAAdd/Arithmetic/InverseResources.lean) 的 `fieldInverse_resources` 查询；实际支持见 `inverseLoop_wires`、`fieldInverse_wires`。布局分配的线路与实际门列支持要分别核对，不能直接累加各模块线路数。准备/恢复的资源与完整输出接口也不能互相替代。

外部 `fieldInverse` 的主要调用路径是 [PointCandidate.lean](../../ECDSAAdd/Arithmetic/PointCandidate.lean)，通过 [InversePorts.lean](../../ECDSAAdd/Arithmetic/InversePorts.lean) 接入共享池；内部准备/恢复由除法调用，再进入原地点加。修改接口、工作区或资源时，同时检查这两条路径及其资源证明，最终到 [ControlledPointResources.lean](../../ECDSAAdd/Arithmetic/ControlledPointResources.lean)。

在仓库根目录使用已有验证入口：

```sh
# 新检出尚无依赖缓存时先执行
lake exe cache get
# 构建并检查公开定理的传递公理依赖
scripts/verify.sh
```

脚本已列入 `fieldInverse_spec`、`fieldInverse_xor_spec`、`fieldInverse_contract`、`inversePrepare_spec`、`inverseRestore_spec`、循环规格与资源、`inverseScaling_values` 和 `kaliski_montgomery_scale` 等入口。完整检查包含 `lake --wfail build`，公理白名单为 `propext`、`Classical.choice`、`Quot.sound`。局部构建用于定位问题，不能代替最终规定检查；这里不添加数值测试或真值表。

本说明随外部/内部规格、Kaliski 记录形式、缩放实现、历史断言及除法借用布局的变化更新；当前资源数和公理证据集中在 [PROOF_STATUS.md](../PROOF_STATUS.md)。纯文档改动检查链接和陈述；本次编写未进行新的完整 Lean 构建，运行结果不能由文档存在与否推断。
