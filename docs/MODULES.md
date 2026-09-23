# 项目地图

项目在 Lean 中构造 secp256k1 点加电路，证明计算结果、工作位清零、相位恢复及资源计数。最终入口 `controlledPointAdd` 在控制为真时将点 R 更新为 R+C，否则保留 R；C 是构造电路时已知的经典常量点。

## 阅读方式

先选功能，只读该目录的 README，理解输入输出、前提、算法和证明思路。调用模块时核对公开定理；修改实现时再展开相关 Lean 文件。README 是唯一的人类阅读入口，不是正确性的替代证据，也不意味着维护者永远不用读代码。

Arithmetic 的 196 个 Lean 文件已归入以下 14 个功能目录，每目录恰有一份 README，不另设重复的 docs/modules 说明。加法与其逆操作、受控和 XOR 等接口变体放在同一功能模块，不使用 Primitives 或 Modular 作为杂项模块。

## Arithmetic：电路算术模块

| 模块说明 | 负责的操作 | Lean 文件数 |
| --- | --- | ---: |
| [RegisterXor](../ECDSAAdd/Arithmetic/RegisterXor/README.md) | 寄存器或常量 XOR，包括受控形式 | 5 |
| [Addition](../ECDSAAdd/Arithmetic/Addition/README.md) | 二进制加法及逆操作，包括计数和掩码接口 | 7 |
| [Comparison](../ECDSAAdd/Arithmetic/Comparison/README.md) | 比较大小 | 1 |
| [Equality](../ECDSAAdd/Arithmetic/Equality/README.md) | 检测零值或等于常量 | 2 |
| [Selection](../ECDSAAdd/Arithmetic/Selection/README.md) | 按控制位选择输入并 XOR 到目标 | 1 |
| [Swap](../ECDSAAdd/Arithmetic/Swap/README.md) | 交换寄存器 | 1 |
| [Shift](../ECDSAAdd/Arithmetic/Shift/README.md) | 移动寄存器位的位置及逆向操作 | 2 |
| [Lookup](../ECDSAAdd/Arithmetic/Lookup/README.md) | 按寄存器地址查经典常量表 | 1 |
| [ModularAddition](../ECDSAAdd/Arithmetic/ModularAddition/README.md) | 模加与模减 | 20 |
| [ModularDoubling](../ECDSAAdd/Arithmetic/ModularDoubling/README.md) | 模倍增与模减半 | 4 |
| [ModularMultiplication](../ECDSAAdd/Arithmetic/ModularMultiplication/README.md) | 标准表示模乘及累加、受控接口 | 28 |
| [ModularInverse](../ECDSAAdd/Arithmetic/ModularInverse/README.md) | 求逆及保留历史的准备/恢复接口 | 47 |
| [Division](../ECDSAAdd/Arithmetic/Division/README.md) | 模除法结果的受控累加或累减 | 8 |
| [PointAddition](../ECDSAAdd/Arithmetic/PointAddition/README.md) | 加经典常量曲线点，包括 XOR 和受控原地接口 | 69 |

布局、程序、辅助 lemma、规格和资源证明随所属功能归档。其余三个目录也已按功能整理；同名数学模块解释数值结论，Arithmetic 模块解释电路实现与状态恢复，两者不是重复说明。全库 ECDSAAdd 下共 217 个 Lean 文件；Arithmetic、Math、Circuit 按功能分目录，Framework 的四个文件集中说明。

## Math：数学结论模块

| 模块说明 | 职责 | Lean 文件数 |
| --- | --- | ---: |
| [CurveDefinition](../ECDSAAdd/Math/CurveDefinition/README.md) | 定义 secp256k1 曲线、点与生成元 | 1 |
| [FieldPrimality](../ECDSAAdd/Math/FieldPrimality/README.md) | 证明域模数 p 的素性 | 1 |
| [PointAddition](../ECDSAAdd/Math/PointAddition/README.md) | 点加公式、分类与原地清理等式 | 2 |
| [ModularAddition](../ECDSAAdd/Math/ModularAddition/README.md) | 模加减的数值与借位清理等式 | 1 |
| [ModularDoubling](../ECDSAAdd/Math/ModularDoubling/README.md) | 模减半、倍增及互逆性 | 2 |
| [ModularMultiplication](../ECDSAAdd/Math/ModularMultiplication/README.md) | 模乘递推与 Montgomery 转换 | 3 |
| [ModularInverse](../ECDSAAdd/Math/ModularInverse/README.md) | Kaliski 求逆、终止与缩放 | 6 |

## Framework：语义与证明工具模块

只读一份 [Framework/README.md](../ECDSAAdd/Framework/README.md)，按 Syntax、Semantics、Hoare、Cost 四个文件介绍用途、必要概念和定理结论。四个 Lean 文件直接放在 Framework 下，不再拆分子模块。

## Circuit：测量 AND 模块

[Circuit](../ECDSAAdd/Circuit/README.md) 包含 And.lean，证明 AND 计算后测量清理能够恢复完整状态，并给出同程序资源。Circuit 当前只有一个 Lean 文件，因此 And.lean 与 README.md 直接放在 Circuit 下。

各功能目录只有一份 README，作为人类阅读入口；进入源码只用于核对精确规格或修改证明。现有 Math/ModularAddition 仍依赖 Arithmetic 的 Reduction，Hoare 仍依赖曲线定义，本次未强行重排实际依赖层次。

## 理解上层组合

模乘使用 Montgomery 计算和输出适配器。求逆使用 Kaliski 循环，并调用 Montgomery 缩放消去逆元的缩放因子。除法准备逆元、保留恢复历史、借用已清零工作区做乘积累加，再恢复。点加组合这些算术接口与曲线数学，并覆盖特殊点分支。

需要查看算法时，优先读下列程序定义即可，不必从头读完证明文件。这些主体使用 `prog` 的顺序调用或循环；递归查表保留树形结构。

| 模块 | 算法阅读入口 |
| --- | --- |
| RegisterXor | [Copy.lean](../ECDSAAdd/Arithmetic/RegisterXor/Copy.lean)：`copyRegister`；[ConditionalXor.lean](../ECDSAAdd/Arithmetic/RegisterXor/ConditionalXor.lean)：`conditionalXor` |
| Addition | [RippleAdder.lean](../ECDSAAdd/Arithmetic/Addition/RippleAdder.lean)：`rippleAdder`；[InPlaceAdder.lean](../ECDSAAdd/Arithmetic/Addition/InPlaceAdder.lean)：`addInPlace` |
| Comparison | [Compare.lean](../ECDSAAdd/Arithmetic/Comparison/Compare.lean)：`compareChain`、`compareLt` |
| Equality | [ZeroControl.lean](../ECDSAAdd/Arithmetic/Equality/ZeroControl.lean)：`zeroControlled`；[EqualConstant.lean](../ECDSAAdd/Arithmetic/Equality/EqualConstant.lean)：`equalConstant` |
| Selection | [Select.lean](../ECDSAAdd/Arithmetic/Selection/Select.lean)：`selectXor` |
| Swap | [SwapRegisters.lean](../ECDSAAdd/Arithmetic/Swap/SwapRegisters.lean)：`swapRegisters`、`exchangeRegisters` |
| Shift | [Shift.lean](../ECDSAAdd/Arithmetic/Shift/Shift.lean)：`shiftRight`、`shiftLeft`；[Rotate.lean](../ECDSAAdd/Arithmetic/Shift/Rotate.lean)：`rotateRight`、`rotateLeft` |
| Lookup | [Lookup.lean](../ECDSAAdd/Arithmetic/Lookup/Lookup.lean)：`lookupWalk`、`lookup` |
| ModularAddition | [ModInPlace.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlace.lean)：`modAddCore`；[Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean)：`modAdd`、`modSub` |
| ModularDoubling | [ModUnary.lean](../ECDSAAdd/Arithmetic/ModularDoubling/ModUnary.lean)：`dblInPlace`、`halfInPlace` |
| ModularMultiplication | [MontPrepare.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontPrepare.lean)：`montWindow`、`montPrepareRounds`、`montPrepare` 及对应恢复程序；[MontLayout.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontLayout.lean)：`montP`、`montQ` |
| ModularInverse | [InverseCompute.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseCompute.lean)：`inverseCompute`、`inverseUncompute`；[KaliskiLoop.lean](../ECDSAAdd/Arithmetic/ModularInverse/KaliskiLoop.lean)：`kaliskiLoop`、`kaliskiUnloop`；单轮见 [KaliskiRound.lean](../ECDSAAdd/Arithmetic/ModularInverse/KaliskiRound.lean) 和 [RoundBody.lean](../ECDSAAdd/Arithmetic/ModularInverse/RoundBody.lean) |
| Division | [Divide.lean](../ECDSAAdd/Arithmetic/Division/Divide.lean)：`divideAdd`、`divideSub` 及装载/恢复程序 |
| PointAddition | [PointInPlaceProgram.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceProgram.lean)：`pointInPlaceGeneric`、`pointInPlaceFinite`；XOR 输出接口见 [PointOutput.lean](../ECDSAAdd/Arithmetic/PointAddition/PointOutput.lean)：`pointAddOut` |

循环在构造电路时展开，不依赖运行时量子位的值。反向清理调用显式恢复子程序，不反转子程序内部的门或测量。定义后的 `_program`、`_cons`、`_succ` 等引理连接可读程序与归纳证明，可在理解算法时跳过。

这不是完整 import 图。功能目录不保证完全独立：历史布局与适配证明仍可能跨目录引用。修改共享布局或资源时，沿模块说明指出的调用者复查，不要只凭目录边界判断影响范围。

## 常用词

| 术语 | 含义 |
| --- | --- |
| Program | 门和测量指令组成的程序 |
| Layout / Widths / Nodup | 寄存器线路布局 / 位宽条件 / 线路无重复 |
| Triple | 前置条件、程序和后置条件；还保证所有测量记录下相位恢复 |
| work=0 | 指定边界处工作寄存器全零，不是每个中间阶段都全零 |
| XOR 输出 | 将结果按位异或进目标，不同于模加和覆盖写入 |
| 原地更新 | 直接更新目标数值，例如 Z → (Z+X)%p |
| 历史 | 恢复程序仍需要的数据，不能因结果已得到而丢弃 |
| Support / Resources | 程序实际触及的线路 / 同一程序的资源计数 |

语义入口为 [Syntax](../ECDSAAdd/Framework/Syntax.lean)、[Semantics](../ECDSAAdd/Framework/Semantics.lean)、[Hoare](../ECDSAAdd/Framework/Hoare.lean) 和 [Cost](../ECDSAAdd/Framework/Cost.lean)。模型是带符号的计算基态分支，不在此扩展为一般量子态语义；静态线路支持大小也不同于布局分配数或最大同时存活数。

## 修改与验证

移动后 import 增加功能目录，例如 `import ECDSAAdd.Arithmetic.ModularInverse.InverseSpec`。声明的 namespace 和原有公开定理名称保持不变。随后将关键程序主体改写为可读的 `prog`，并调整相应证明；规格、资源结论及指令顺序保持不变。旧路径不提供兼容文件，其他分支合并时需要同步 import。

本轮只用 `new-temp` 累积报告、文档和源码整理，`new` 留作最终验收后的集成分支。多人协作按模块划定写入范围，由一个集成人负责共享文件和 Git 操作。接口、算法、历史寿命或文件归属变化时，同步修改模块 README。

仓库根目录运行 `scripts/verify.sh`：完整 `lake --wfail build`，运行 `tests/ProgSyntax.lean`、`tests/ReadablePrograms.lean`、`tests/ReadableLoops.lean` 中的语法与指令等价性检查，然后检查脚本选定公开定理的传递公理依赖，只允许 propext、Classical.choice、Quot.sound。不以数值测试替代证明。

当前证明与资源证据见 [PROOF_STATUS](PROOF_STATUS.md)，算法历史见 [REWORK_PLAN](REWORK_PLAN.md)，来源见 [PROVENANCE](PROVENANCE.md)，整理范围和验收记录见 [READABILITY_REPORT](READABILITY_REPORT.md)。
