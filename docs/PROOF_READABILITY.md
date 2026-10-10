# Arithmetic 关键证明阅读地图

本轮只整理证明，不改变电路：中间命题／Hoare triple 写在大括号中，后面给出证据，最后显式写出结论。数值条件用分支证明；顺序电路用准备、使用、恢复的阶段组合；循环保留实际归纳。证明中的解释使用英文。

相对于 `439f481`，改写 **97 个原证明体**（81 个公开、16 个内部），涉及 41 个 Arithmetic 文件。原文件内 274 条定理声明及 106 个非证明声明经去注释文本核对均未变化。另新增一个小型内部引理 `divideProduct_returnBorrowedBit`，仅整理借用高位的恢复，不隐藏整个除法证明。

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
