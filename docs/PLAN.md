# ECDSAAdd：Monomial 层点加证明计划

本版依据 Runzhou 最新要求：只在 monomial 层证明点加正确性、Toffoli count 和 qubit count；不做量子层、不设 Reference、不做小 case 测试。**公开 Lean theorem statement 本身必须可读**，这是每个 milestone 的主要审阅对象。本文替代此前带小曲线测试与表格生成要求的版本。

实现：Lamport。监督：Dirac。仓库名：ECDSAAdd。私有仓库已创建，使用 Apache 2.0；当前实现交付 M1。

## 最新范围：恢复完整点加

Runzhou 在消息 0a874db8 要求恢复 corner cases。完整处理无穷远点、倍点、互逆点和一般相加；公开点加定理对任意合法点 R、C 成立，不要求横坐标不等。此前收窄输入域的方案及新增 hx₂ 条件取消，不能继续作为公开前提。内部一般公式仍可使用相应非零分母条件，由分支条件证明。

执行函数命名为 `run`：给定电路、测量结果记录和初始 basis/phase 状态，按定义执行。正确性对所有合法测量记录成立。此前 `run` 只是这一执行函数的暂定名字，并非新增语义层。

## 1. 首期交付

针对同一个具体电路 `prog` 证明三项结果：

- 受控经典常量点加的结果等于 Bitcoin/secp256k1 群上的 `R + C`，或在控制位关闭时保持 R；相位恢复或仅增加与输入无关的记录相位；辅助位恢复，控制位和外部线路不变。
- 从该程序构造推导 Toffoli count，精确计数 CCX。另记录 measurementCount；不做 T-count 转换。
- 对该程序给出具体合法布局，证明只访问声明的物理线路，并证明分配线路数。首期是静态容量，不是最大同时存活量子位数。

结论限于定义的 monomial 语义，不引入量子态向量、Kraus 语义或量子桥。保留测量记录的全称证明，不以有限执行样本替代。

## 2. 数学与文件组织

Math 提供干净的 Bitcoin/secp256k1 椭圆曲线群、相关定理和生成元 G 的具体定义。采用 `affineAdd` 及其与 Mathlib 群律的等价。仅保留所需的素性、域、曲线和编码证明依赖；不引入 Shor 后处理或不需要的生成元阶证明。

按目前对 monofile 的理解，一个文件定义普通门和带局部测量修正的指令列表语言，另一个文件直接定义其 monomial 执行语义。目录如下：

```text
ECDSAAdd/
  Math/
  Framework/
    Syntax.lean
    Semantics.lean
    Cost.lean
  Arithmetic/
  PointAdd/
ECDSAAdd.lean
lean-toolchain
lakefile.lean
lake-manifest.json
docs/SPEC.md
docs/PROOF_STATUS.md
docs/PROVENANCE.md
docs/witness/M1/WITNESS.md
docs/witness/M2/WITNESS.md
docs/witness/M3/WITNESS.md
docs/witness/M4/WITNESS.md
scripts/verify.sh
scripts/check-source.py
```

不设置 Reference，不逐文件复制 ShorECDLP。按需提取定义或引理，来源追踪到声明层面。已检查上游版本：[15d2a336743304e069f8a8a468c6ab1da334577b](https://github.com/VerifiedQC/ShorECDLP/tree/15d2a336743304e069f8a8a468c6ab1da334577b)。Framework 不依赖上游 Gate、InstructionSet 或 Quantum 模块。

## 3. Monomial 语义

执行状态由 `basis : Wire → Bool` 和 `phase : Bool` 构成，测量记录显式驱动分支。指令规则直接定义：

- X/CX/CCX 更新 basis，不改变 phase。
- Z(t) 将 phase 异或上 basis(t)。
- CZ(c,t) 将 phase 异或上 basis(c) ∧ basis(t)。
- X-measurement/reset(t) 消费结果 m，将 phase 异或上 m ∧ 旧 basis(t)，随后清零 t。

测量结果采用依赖程序静态测量次数的类型 `Outcomes p`，格式由类型保证，不在顶层定理另列长度前提。其值覆盖所有结果组合，不按输入或正确性筛选；消费顺序由执行定义明确。清零不保持单射，不把中间分支称为置换。

这里直接定义符号语义，不额外构建量子幅度/归一化证明层。C 是构造时固定的经典常量，R 是点寄存器里的可变值；定理全称量化 C 表示每个常量生成的电路都正确，不表示 C 占用可变输入点寄存器。

### 首版程序语言：固定流程与局部测量修正

Dirac 在 9655335c 将首版进一步限定为局部相位修正语言（替代此前任意分支的 Program 草图）：

```text
Gate     := X | CX | CCX | Z | CZ（各带线路参数）
PhaseCorrection := Z | CZ（各带线路参数）
Instr    := gate Gate
          | measureX Wire (List PhaseCorrection) (List PhaseCorrection)
Program  := List Instr
```

`measureX w corrections0 corrections1` 测量并清零 w，然后按测量结果立即执行相应 Z/CZ 修正列表。AND 清理写为 `measureX anc [] [CZ a b]`。它是含条件修正的程序语言，不是无条件基本门列表。

**表达范围：**后续算术与测量顺序固定；测量结果只能选择当前节点的相位修正，不能选择不同算术、改变后续测量或保存结果供以后使用。每个采用的算术 MBU 模块必须证明能按这个接口实现；不能假定任意测量反计算都可直接表达。若真实实现需要更强表达力，先修订语言和资源契约。

Semantics 中 `Outcomes p := Fin (measurementCount p) → Bool`。`run (p : Program) (m : Outcomes p) (s : State)` 依次执行：普通门按前述规则更新 basis/phase；测量取下一位结果，先按旧工作位更新相位、清零，再执行选中修正。定义本身不筛选任何测量结果。

先证明顺序组合 `++` 的语义与结果记录拆分、作用范围保持和线路合法性规则，再证明 AND 实例。

Toffoli count 为程序中 CCX 数，measurementCount 为测量指令数；两条修正列表不含 CCX 或测量，因此这两项计数与测量结果无关，顺序组合相加。静态线路集合取普通门、测量目标及**两条**修正列表的线路并集，不能逐指令求和。最终物理布局还包括输入输出和预留工作位。

选择这一受限语言是为了表达局部修正、简化证明和固定计数。此前含 seq 的树形方案同样可共享后续程序，不以必然产生代码膨胀作为否定它的理由。无量子后端、无测试。

## 4. 可读 theorem statement 的要求

每个阶段优先设计公开定理陈述，再实现证明。每条顶层定理附中文 docstring；结论直接写群运算，不嵌隐藏结果的 let/match。公开声明须做到：

1. 输入、输出、控制位、工作位和测量记录有明确名称。
2. 每个假设说明具体条件：合法点编码、数值范围、布局互不重叠、工作位初始清零、记录格式；不把这些全部藏在一个不透明的 `Valid` 中。
3. 结论直接给出数学结果、相位与寄存器行为。内部可复用契约，但最终公开结论不能只写“满足某 contract”。
4. 必要的编码、布局、run 定义靠近公开接口，并在 witness 中链接；避免读者必须穿过多层别名才知道证明了什么。
5. 对同一程序分别陈述正确性、Toffoli 和 qubit 定理，资源公式中参数的含义明确。Toffoli 与测量次数均为静态精确计数，与测量结果无关。
6. 条件性组合定理与具体实现定理分开命名和展示，不把未实现的求逆契约当作已完成电路。

点加公开结论的可读数学形状如下（接口草图，不是已编译的 Lean 声明）：

```text
初始：控制位为 b，点寄存器为 encode(R)，工作位为 0，相位为 s
执行：run prog m initial
最终：控制位仍为 b
      点寄存器为 encode(if b then R + C else R)
      工作位为 0
      外部线路不变
      相位为 s XOR phaseOffset(m)
```

`phaseOffset` 不依赖输入点或控制位；优先证明它为 false。正式声明用实际 Lean 类型和等式表达上述含义。

## 5. 各 milestone 如何验证

### M1：模型和 AND 测量反计算

交付实际程序 `[gate (CCX a b anc), measureX anc [] [CZ a b]]`：CCX 计算 AND 到干净辅助位，X 测量并清零，按结果立即执行 CZ 修正。

公开定理对任意 a、b、测量结果 m、初始相位 s 证明：a、b 不变，辅助位归零，相位仍为 s。witness 展示指令顺序及符号推导：

```text
测量相位 = m ∧ (a ∧ b)
修正相位 = m ∧ (a ∧ b)
总变化   = (m ∧ (a ∧ b)) XOR (m ∧ (a ∧ b)) = false
```

同一程序另证 1 个 Toffoli、1 次测量、3 根互不重叠的物理线路。用全称 Lean 证明验收，不列测试真值表。

### M2：算术与求逆接口

加减、模加减、模乘逐模块证明输入输出公式、范围、相位保持、工作位恢复、作用范围与资源公式。witness 用逐步不变量解释证明，不做小宽度执行测试。

求逆先提供显式契约，Fermat/EEA 后续插入，不阻塞基础模型。契约必须包含输入域、输出逆元、相位、清理及资源要求；零输入处理或非零假设必须写明。

有契约参数的组合定理可以作为接口阶段结果，但 M2 的具体实现验收和 M4 最终验收需要实际求逆程序及其契约证明。不得把所需正确性本身作为最终用户额外提供的假设。

### M3：完整点加

实现无穷远点、互逆点、倍点和一般相加，并证明分支覆盖所有合法点。结果直接等于 Mathlib 的 `R + C`；`affineAdd_correct` 可用于内部证明。witness 说明分支条件如何建立各公式需要的非零分母等条件，而不把这些内部条件施加给调用者。

先证明任意 XOR 输出寄存器的接口：

```text
addOut(C): (R,T) ↦ (R,T XOR encode(R+C))
```

恢复完整 out-of-place 加法后，用两次前向 XOR 操作构造受控原地点加：先将目标点计算到干净 temp，交换，再用完整的加 -C 操作清理旧点；控制关闭时目标为恒等。两次调用均支持所有合法点，因此第二次遇到倍点或无穷远点由完整实现处理，不需要公开 hx₁/hx₂ 前提。

证明依赖任意 XOR 输出目标的完整契约，以及相位恢复和工作位清零；不能用只支持零输出的契约替代。含测量程序不直接取 `.reverse`。内部布尔谓词、候选结果和选择线路都必须给出恢复及相位证明，不能把完整分支处理当作无成本操作。

最终直接证明点加结果、相位、控制位、工作位和外部线路行为。witness 标出每个测量反计算所需的经典不变量与相位抵消定理。

### M4：secp256k1 三项最终定理

实例化同一个完整程序，公开可读的正确性、Toffoli count、qubit count 定理，以及 measurementCount。列出具体布局和公式推导；大门数通过组合定理计算，不展开完整电路。

静态 qubit 数要与实际可实现的物理布局对应：证明线路唯一、索引界和复用前提。若采用任意标签，需证明可无冲突重标号；不同线路数不自动等于最大标签加一。复用工作位的成本不能按调用次数重复加到容量上。

最终定理必须落实所有实际算术程序和假设。witness 提供定理原文、参数含义和资源推导，不引入独立测试计数器作为验收要求。

## 6. Witness 与机械验收

每份 WITNESS.md 是公开 theorem statement 的阅读辅助，内容包括：

- 实际程序和布局定义的定位；公开定理原文。
- 每个假设的中文解释；结论与本期范围。
- 寄存器不变量、分支覆盖、相位消除或资源递推的可读推导。
- 定理全名、源码定位、`#print axioms` 原文、受检源码提交及 Lean/Mathlib 版本。
- 已完成证明与尚未实例化契约的明确区分。

验收流程：Lean 构建和证明通过 → 公理、源码闭包及分层检查通过 → Dirac 对同一提交的公开定理陈述和 witness 审阅认可。

固定 Lean `v4.28.0` 与核实的 Mathlib 锁定版本，执行 `lake --wfail build`。公理允许集合为 `propext`、`Classical.choice`、`Quot.sound`；不允许 `sorry`、`admit`、自定义公理或 `native_decide`。记录构建耗时和缓存条件以合理设置 CI 时限。

不设小 case 测试、小曲线穷举、Python 对照、执行结果表生成或测试再生成 diff 门禁。不为测试额外要求宽度/模数参数化；参数化只在简化定义和证明时采用。这些取消项依据 Runzhou 的消息 a3632bf9、850c041e，取代之前 Dirac 的相关测试要求。

## 7. 尚待确定

Runzhou 已确认私有仓库 VerifiedQC/ECDSAAdd 和 Apache 2.0（d80d7736）。求逆实现可以在接口阶段后选择，最终具体程序验收前必须落实。
