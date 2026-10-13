# Arithmetic 关键证明阅读地图

本页记录证明阅读方式及各轮改写清单，不改变电路：中间命题／Hoare triple 写在大括号中，后面给出证据，最后显式写出结论。数值条件用分支证明；顺序电路用准备、使用、恢复的阶段组合；循环保留实际归纳。证明中的解释使用英文。

此前相对于 `439f481`，改写 **97 个原证明体**（81 个公开、16 个内部），涉及 41 个 Arithmetic 文件。原文件内 274 条定理声明及 106 个非证明声明经去注释文本核对均未变化。另新增一个小型内部引理 `divideProduct_returnBorrowedBit`，仅整理借用高位的恢复，不隐藏整个除法证明。

## Addition：两行式命令与结果（2026-10-13）

在已完成的 `fullAdder_correct` 示范之外，继续整理以下证明。格式为 `Precondition`、两行一组的 `after command { … }` / `get { … } by 规则;`、`Conclusion`。步骤明确显示数值结果和清理情况；接线、代数化简、完整状态拼接放在阶段辅助规则中。

相对于 `92457ed`，本次实际改变 7 个文件中的 27 个原证明体（26 个公开、1 个内部）。这些文件的 104 条原定理声明及 38 个原非证明声明经去注释文本核对保持不变；已完成的 `fullAdder_correct` 不计入本次清单。

| 文件 | 本次改写的原证明体 |
| --- | --- |
| [FullAdder.lean](../ECDSAAdd/Arithmetic/Addition/FullAdder.lean) | `eraseCarry_correct`、`fullAdder_spec`、`eraseCarry_spec` |
| [RippleAdder.lean](../ECDSAAdd/Arithmetic/Addition/RippleAdder.lean) | `rippleAdder_xor_correct`、`rippleAdder_correct`、`rippleAdder_xor_spec`、`rippleAdder_spec`、`rippleAdder_wide_spec` |
| [Subtractor.lean](../ECDSAAdd/Arithmetic/Addition/Subtractor.lean) | `rippleSubtractor_xor_correct`、`rippleSubtractor_xor_spec`、`rippleSubtractor_spec` |
| [InPlaceAdder.lean](../ECDSAAdd/Arithmetic/Addition/InPlaceAdder.lean) | `majority_correct`、`majority_spec`、`sumInto_spec`、`addInPlaceRecursive_run`（内部）、`addInPlace_spec`、`subInPlace_spec`、`maskedAddConst_spec`、`maskedSubConst_spec`、`maskedAddInPlace_spec`、`maskedSubInPlace_spec` |
| [MeasuredMaskedAdder.lean](../ECDSAAdd/Arithmetic/Addition/MeasuredMaskedAdder.lean) | `measuredMaskedAddInPlace_spec`、`measuredMaskedSubInPlace_spec` |
| [Counter.lean](../ECDSAAdd/Arithmetic/Addition/Counter.lean) | `counterDecXor_spec`、`counterInc_spec`、`counterDec_spec` |
| [Layout.lean](../ECDSAAdd/Arithmetic/Addition/Layout.lean) | `add_twice_spec` |

建议先读 `maskedAddConst_spec`：装载受控常量、原地相加、清除临时值三步最短；再读 `rippleAdder_xor_correct` 的低位计算／高位归纳／清进位。`addInPlaceRecursive_run` 保留实际结构归纳；公开 `addInPlace_correct` 仍通过原有的逐指令等价定理，把递归参考电路连接到循环版程序。

`fullAdder_spec` 等接口证明直接引用已证的 `_correct`，不重复展开算法。`eraseCarry_correct` 的单步是原语义中的“一次测量及其即时修正”；辅助规则必须处理两种结果并证明相位抵消。其余底层位操作、frame、资源证明，以及 `StatementSpecs.lean` 和一行导出接口保持原样，没有机械包成新格式。

`call (程序)` 只指定这一步实际证明的子程序，不增加门；`satisfies (fun st => …)` 表示当前 basis 必须满足的完整状态或 frame 条件。每步证据必须证明真正的 Triple，首尾断言与实际门列也必须匹配。框架仍使用原有 `Triple.seq` 分配测量记录，而不是各步重复读取同一记录；不新增自动编译器或自动循环证明器。

## 后续示范：fullAdder 的两行式 Hoare 证明

[FullAdder.lean](../ECDSAAdd/Arithmetic/Addition/FullAdder.lean) 的 `fullAdder_correct` 从 `Precondition` 开始，按原程序九条语句排列，每步固定为两行：`after command { … }` 和 `get { 五根 wire 的值 } by 规则;`，最后显式写 `Conclusion`。`A/B/C` 是输入初值，`O/K` 是任意输出初值，不额外要求清零。解释保持英文。

主证明保留九步状态推导，代数细节移到同文件 `FullAdderProof` 辅助区：`carryIdentity`、`restoreIdentity`、`sumIdentity`。`finish` 及原内部引理 `state_eq_of_two_outputs` 只将已证明的五线结果、相位和其余位拼成状态等式，不代替九步算法证明。电路和原定理声明不变；以下 97 项仍是上一轮改写清单。

`fullAdder` 的定义保持不变，仍是九条 `if … using CX/CCX by cx_correct/ccx_correct`。证明中的 `hoare_steps` 将每个经检查的局部状态转移经 `Plan.toTriple` 变成 Hoare triple，再由 `Triple.seq` 顺序组合；首尾断言和门列必须匹配待证目标，不是在证明另一个程序。相位来自 Triple，其他 wire 的保持性质通过已有 `fullAdder.translation` 及完整状态模型补齐。基础规则位于 [GateProof.lean](../ECDSAAdd/Framework/GateProof.lean)，测试同时锁定门级认证和 Hoare 顺序组合的依赖方向，并拒绝错误中间状态、错误门序和使用旧控制值等写法。

## 建议先看

1. [ModularAlgorithm.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModularAlgorithm.lean)：模加／模减各分支的数值等式与共同结论。`addResult_correct` 是上一轮已完成示范，本轮新增同风格的 `subResult_correct`。
2. [Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean)：如何把数值等式与实际电路的 Hoare 证明连接。
3. [InPlaceAdder.lean](../ECDSAAdd/Arithmetic/Addition/InPlaceAdder.lean)：进位、递归处理高位、擦进位、写和；`subInPlace_spec` 展示取反—加法—取反。
4. [InverseCompute.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseCompute.lean)：求逆的正向与反向阶段如何保留、再清除历史。
5. [PointInPlaceClearSlopeKernel.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceClearSlopeKernel.lean)：使能／不使能、零分母／非零分母的明确结论，再组合两个受控电路。
6. [ControlledPointAddSpec.lean](../ECDSAAdd/Arithmetic/PointAddition/ControlledPointAddSpec.lean)：最终点加接口的分支与完整结果。

句式说明见 [Framework README](../ECDSAAdd/Framework/README.md#prooflanguagelean)。`{ P } as fact by evidence;` 必须真正证明 P；`conclude { Q } by evidence;` 必须完成当前目标。Triple 始终包含任意初始相位、任意测量记录下的相位恢复，不只检查数值。

## 精确改写清单

以下只列实际改变的原证明体；标为“内部”的是 private theorem。没有把未修改的一行导出包装算进数量。

### Addition（18 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [FullAdder.lean](../ECDSAAdd/Arithmetic/Addition/FullAdder.lean) | `fullAdder_correct`、`eraseCarry_correct`、`fullAdder_spec`、`eraseCarry_spec` |
| [InPlaceAdder.lean](../ECDSAAdd/Arithmetic/Addition/InPlaceAdder.lean) | `majority_spec`、`sumInto_spec`、`addInPlaceRecursive_run`（内部）、`addInPlace_spec`、`subInPlace_spec`、`maskedAddConst_spec`、`maskedSubConst_spec`、`maskedAddInPlace_spec`、`maskedSubInPlace_spec` |
| [RippleAdder.lean](../ECDSAAdd/Arithmetic/Addition/RippleAdder.lean) | `rippleAdder_xor_correct`、`rippleAdder_correct`、`rippleAdder_xor_spec`、`rippleAdder_spec`、`rippleAdder_wide_spec` |

### Comparison（6 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [Compare.lean](../ECDSAAdd/Arithmetic/Comparison/Compare.lean) | `compareChain_correct`、`compareLt_correct`、`compareLt_spec`、`maskedCompareLt_spec`、`compareLtConst_spec`、`maskedCompareLtConst_spec` |

### Division（2 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [DivideProduct.lean](../ECDSAAdd/Arithmetic/Division/DivideProduct.lean) | `divideProduct_correct` |
| [DivideSpec.lean](../ECDSAAdd/Arithmetic/Division/DivideSpec.lean) | `divide_spec`（内部） |

### Equality（3 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [EqualConstant.lean](../ECDSAAdd/Arithmetic/Equality/EqualConstant.lean) | `equalConstant_correct` |
| [ZeroControl.lean](../ECDSAAdd/Arithmetic/Equality/ZeroControl.lean) | `zeroControlled_correct`、`zeroControlled_spec` |

### ModularAddition（14 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [ModInPlace.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlace.lean) | `modAddCore_spec` |
| [ModInPlaceSubtract.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlaceSubtract.lean) | `modSubInPlace_spec`、`controlledModSub_spec` |
| [ModInPlaceWrappers.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlaceWrappers.lean) | `modAddInPlace_spec`、`controlledModAdd_spec` |
| [Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean) | `modAddOn_refines`、`modSubOn_refines`、`modAddOn_mod_spec`、`modSubOn_mod_spec` |
| [ModularAlgorithm.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModularAlgorithm.lean) | `subResult_correct` |
| [ModularFrame.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModularFrame.lean) | `modAdd_bounded_correct`、`modAdd_correct`、`modSub_correct` |
| [ModularTranslation.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModularTranslation.lean) | `reductionProgram_correct` |

### ModularDoubling（3 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [ModDouble.lean](../ECDSAAdd/Arithmetic/ModularDoubling/ModDouble.lean) | `double_core`（内部）、`dblInPlace_spec` |
| [ModHalf.lean](../ECDSAAdd/Arithmetic/ModularDoubling/ModHalf.lean) | `halfInPlace_spec` |

### ModularInverse（12 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [InverseCompute.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseCompute.lean) | `inverseCompute_values` |
| [InverseLoopProof.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseLoopProof.lean) | `inverseLoop_values` |
| [InverseLoopSpec.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseLoopSpec.lean) | `inversePrepare_spec`、`inverseRestore_spec`、`inverseLoop_xor_spec` |
| [InverseSpec.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseSpec.lean) | `fieldInverse_xor_spec`、`fieldInverse_spec` |
| [KaliskiLoopProof.lean](../ECDSAAdd/Arithmetic/ModularInverse/KaliskiLoopProof.lean) | `kaliskiLoop_correct` |
| [KaliskiRoundProof.lean](../ECDSAAdd/Arithmetic/ModularInverse/KaliskiRoundProof.lean) | `kaliskiRound_state`、`kaliskiUnround_state` |
| [NegativeInit.lean](../ECDSAAdd/Arithmetic/ModularInverse/NegativeInit.lean) | `negativeInit_correct` |
| [NegativeInitResources.lean](../ECDSAAdd/Arithmetic/ModularInverse/NegativeInitResources.lean) | `negativeInit_spec` |

### ModularMultiplication（21 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [ConstStageSpec.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/ConstStageSpec.lean) | `constPreparePrefix_correct`（内部）、`constPreparePrefix_spec`（内部）、`constRestorePrefix_correct`（内部）、`constRestorePrefix_spec`（内部） |
| [MontAdapterSpec.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontAdapterSpec.lean) | `montSandwich_spec`（内部）、`montMulXor_spec`、`montMulAdd_spec`、`montMulSub_spec`、`montControlledSandwich_spec`（内部）、`montMulControlledAdd_spec`、`montMulControlledSub_spec` |
| [MontPQ.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontPQ.lean) | `montP_correct`、`montQ_correct`、`montP_spec`、`montQ_spec` |
| [MontPrepare.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontPrepare.lean) | `montLookupPrepare_spec`、`montLookupRestore_spec` |
| [MontStageSpec.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontStageSpec.lean) | `montPreparePrefix_correct`（内部）、`montPreparePrefix_spec`（内部）、`montRestorePrefix_correct`（内部）、`montRestorePrefix_spec`（内部） |

### PointAddition（18 个）

| 文件 | 本轮改写的证明 |
| --- | --- |
| [ControlledPointAddSpec.lean](../ECDSAAdd/Arithmetic/PointAddition/ControlledPointAddSpec.lean) | `controlledPointAdd_spec` |
| [PointCandidateBlocks.lean](../ECDSAAdd/Arithmetic/PointAddition/PointCandidateBlocks.lean) | `CandidateValues.subConstant`、`CandidateValues.square` |
| [PointCandidateProof.lean](../ECDSAAdd/Arithmetic/PointAddition/PointCandidateProof.lean) | `pointCandidate_compute_spec`、`candidateClear_of_values`（内部） |
| [PointInPlaceClearSlopeKernel.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceClearSlopeKernel.lean) | `pointInPlaceClearSlopeKernel_spec`、`pointInPlaceClearSlopeKernel_disabled` |
| [PointInPlaceConstant.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceConstant.lean) | `constant_program_spec`（内部）、`pointInPlaceConstantAdd_correct` |
| [PointInPlaceFiniteSpec.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceFiniteSpec.lean) | `pointInPlaceFinite_spec` |
| [PointInPlaceGeneric.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceGeneric.lean) | `pointInPlaceGeneric_true`、`pointInPlaceGeneric_false` |
| [PointInPlaceIntegration.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceIntegration.lean) | `pointInPlaceFinite_full_spec` |
| [PointInPlaceNegate.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceNegate.lean) | `pointInPlaceNegate_spec`、`pointInPlaceNegate_correct` |
| [PointInPlaceProduct.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceProduct.lean) | `pointInPlaceProduct_correct` |
| [PointInPlaceSquare.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceSquare.lean) | `square_program_spec`（内部）、`pointInPlaceSquare_correct` |

## 保留的短接口与范围

- `addInPlace_correct` 保留同门列连接；实际递归证明 `addInPlaceRecursive_run` 和公开 `addInPlace_spec` 已改写。
- `modAddOn_spec/modSubOn_spec`、`modAdd_spec/modSub_spec`、`modAddOn_correct/modSubOn_correct` 保留短导出形式；实际分支连接、取模规格、完整状态结论及准备／结束组合已改写。
- `montPrepare/Restore` 与常量版本的短导出接口保留；真正的 Prefix 归纳证明和乘积适配器已改写。
- `divideAdd_spec/divideSub_spec` 保留投影；完整 `divide_spec` 展示装载 → 求逆 → 乘积加减 → 反向求逆 → 卸载。
- 点加的 `pointInPlaceClearSlope_spec`、`pointCandidate_zero_spec/pointCandidate_cleanup_spec` 等短连接保留；实际斜率内核、候选计算／清理、普通分支及最终规格已改写。
- 没有机械改写全部内部 lemma、资源证明，或 RegisterXor、Selection、Swap 等已清楚的短门级辅助模块。

接线互异、列表下标、位值化简仍保留必要的小段 Lean tactic。这不是任意自然语言自动证明器，也不引入新的可信公理。详细验证记录见 [PROOF_STATUS](PROOF_STATUS.md)。
