# ECDSAAdd

在 Lean 中证明 Bitcoin/secp256k1 点加程序的 monomial 行为与资源计数。

## Current status

本节描述当前提交包含的代码。M1（语义、Hoare 规格、AND 测量反计算）、M2（加减法、模 p 加减、模乘）、完整 EEA 求逆（I1–I5）和 M3（候选计算、完整经典常量点加、受控原地点加）已完成；改 1 已将求逆第二阶段替换为原地减半与显式加倍恢复；改 5 已用测量清零检测链并接入原地受控加减；改 4 已将计数活动比较及记录段接入 Gidney 比较器；改 2 已用 Horner 内核及三个适配器替换倍数链模乘，并缩小共享工作池；改3已接入两次除法与五个乘积的原地点加；改6a的五个标准模乘适配器已接入fieldMul及独立XOR点加，原地点加的两次除法与三个外部乘积也已接入。最终结果 `controlledPointAdd` 对任意合法点 R、经典常量 C 与控制位 b 证明 `point = if b then R+C else R`，清零全部工作位并对所有测量记录恢复相位；有限 C 的同程序精确资源为 11,800,058 个 Toffoli、4,656,378 次测量、6,218 根实际静态线路。改 1 已实现，后续门数压缩见下文计划。

| 范围 | 当前状态 | 代码入口 |
| --- | --- | --- |
| Bitcoin 数学基础 | 已证明 p 的素性、群与 G 的相关性质、完整 affine 群律规格；没有群阶证明 | [Math](ECDSAAdd/Math) |
| 程序与语义 | 已实现 X/CX/CCX、测量及即时 Z/CZ 修正、monomial 执行和静态资源计数 | [Framework](ECDSAAdd/Framework) |
| Hoare 规格 | 已实现寄存器断言与程序语法糖，证明 seq/conseq/frame | [Hoare.lean](ECDSAAdd/Framework/Hoare.lean) |
| AND 测量反计算 | 已证明完整状态恢复，以及 1 Toffoli、1 次测量、3 根静态线路 | [And.lean](ECDSAAdd/Circuit/And.lean) |
| M2 加减法基础 | 已证明任意位宽加减法与任意初值输出 XOR 接口、同程序前向清理；输入、相位和工作位恢复 | [Layout.lean](ECDSAAdd/Arithmetic/Layout.lean) |
| 模 p 加减 | 已证明保留输入、任意初值输出 XOR、全部工作位清零，以及同程序精确资源公式 | [FieldAddSub.lean](ECDSAAdd/Arithmetic/FieldAddSub.lean) |
| 模乘 | 已证明两段Montgomery的五个适配器，fieldMul使用标准模积XOR，工作区1,827位 | [FieldMultiply.lean](ECDSAAdd/Arithmetic/FieldMultiply.lean) |
| 改 2 C1 原地模加减 | 已证明普通/受控四接口的 Triple、frame、清理及资源；已供 Montgomery 适配器复用 | [ModInPlaceSubtract.lean](ECDSAAdd/Arithmetic/ModInPlaceSubtract.lean) |
| 改 2 C2 半倍 | 无控制半倍的 Triple/frame/资源保留；旧Horner电路已由Montgomery替换，旧文件待清理 | [ModUnaryResources.lean](ECDSAAdd/Arithmetic/ModUnaryResources.lean) |
| 改 6a 准备/恢复 | 已证明P/Q与五个适配器的Triple、逐线保持、精确资源；已接入fieldMul，原地点加改接已实现 | [MontPQ.lean](ECDSAAdd/Arithmetic/MontPQ.lean) · [MontResources.lean](ECDSAAdd/Arithmetic/MontResources.lean) |
| EEA 求逆数学 | 已证明 Kaliski 不变量、2n 轮终止、范围、固定减半与逆元等式；不是电路证明 | [KaliskiInverse.lean](ECDSAAdd/Math/KaliskiInverse.lean) |
| EEA 电路原语 | 已证明 CSWAP、带偶数/无溢出前提的左右移位、10 位受控增减与清理及精确资源 | [Shift.lean](ECDSAAdd/Arithmetic/Shift.lean) · [Counter.lean](ECDSAAdd/Arithmetic/Counter.lean) |
| EEA 单轮与逆轮 | 已证明数据/计数/done 更新、两位分支记录、逆轮恢复与清理、同程序精确资源 | [RoundSpec.lean](ECDSAAdd/Arithmetic/RoundSpec.lean) |
| EEA 固定循环与反计算 | 已证明两个 512 轮阶段、规范化取负、XOR 输出及恢复已初始化输入；共享计数线路和全部记录线计入资源 | [InverseLoopSpec.lean](ECDSAAdd/Arithmetic/InverseLoopSpec.lean) · [InverseLoopResources.lean](ECDSAAdd/Arithmetic/InverseLoopResources.lean) |
| 完整求逆电路 | 已证明外部 256 位非零输入的域逆元、XOR 输出、装载/卸载、相位/清理和同程序精确资源及契约实例 | [InverseSpec.lean](ECDSAAdd/Arithmetic/InverseSpec.lean) · [InverseResources.lean](ECDSAAdd/Arithmetic/InverseResources.lean) |
| M3 候选计算 | 已证明全部标志取值下的安全候选、清理和同程序 Toffoli/测量数；分支标志原语单独证明 | [PointCandidateSpec.lean](ECDSAAdd/Arithmetic/PointCandidateSpec.lean) · [PointCandidateResources.lean](ECDSAAdd/Arithmetic/PointCandidateResources.lean) |
| 完整点加电路 | 已证明经典常量 C、任意合法输入 R 的完整点加 XOR、零输出规格及同程序精确资源 | [PointAddSpec.lean](ECDSAAdd/Arithmetic/PointAddSpec.lean) · [PointAddResources.lean](ECDSAAdd/Arithmetic/PointAddResources.lean) |
| 受控原地点加 | 已证明控制保持、全部点情形、临时点/工作区清零及同程序精确资源 | [ControlledPointAddSpec.lean](ECDSAAdd/Arithmetic/ControlledPointAddSpec.lean) · [ControlledPointResources.lean](ECDSAAdd/Arithmetic/ControlledPointResources.lean) |
| 原地加减与比较器原语 | 已证明原地加/减（n−1 Toffoli、n−1 测量、3n 线）、受控常数/寄存器加减、Gidney 比较器（n Toffoli）；已由求逆第二阶段复用 | [InPlaceAdder.lean](ECDSAAdd/Arithmetic/InPlaceAdder.lean) · [Compare.lean](ECDSAAdd/Arithmetic/Compare.lean) |

每次创建或更新 PR 前，逐项核对本节与实际源码、公开定理和验证结果；状态变化时在同一 PR 更新 README。后续计划不计入已实现范围。

n 位加法和减法均使用 n 个 Toffoli、n 次测量；非空加法与减法均使用 4n+1 根静态线路。用 n+1 位加法保留完整结果时，资源为 n+1 个 Toffoli、n+1 次测量、4n+5 根线路。n 位常量模数的模加减各用 5n+4 个 Toffoli、4(n+1) 次测量、8n+9 根线路；secp256k1 实例分别为 1284、1028、2057。当前fieldMul使用539,168个Toffoli、271,904次测量和2,596根实际线路。全部模乘调用已统一为Montgomery适配器；旧Horner电路与适配器无实际调用者，留待独立清理PR。模乘空间为 O(n)，未声称资源最优。每项计数都针对规格中的同一个程序，详见 [证明状态](docs/PROOF_STATUS.md)。

I2 的 w 位受控移位使用 max(w−1,0) 个 Toffoli、零测量；w≥2 时静态线路为 w+1，否则为零。10 位计数器按模 1024 增减，使用 20 个 Toffoli、20 次测量、41 根静态线路；结果移入空寄存器并清空旧寄存器，控制为假时数值不变但角色仍交换。

I3 正轮与逆轮各使用 14w+31 个 Toffoli、4w+28 次测量；w≥2 时精确静态线路数为 7w+48。w=257 时分别为 3629、1056、1847。这是单轮成本，不能写成完整逆元成本；轮内共享工作区为 O(w)，只保留两位分支记录，计数器两份银行的角色按固定轮号交换。

I4 在两个阶段各执行 N=512 轮。第一阶段保存 2N 根记录线；第二阶段在 a 上按 i<k 原地减半，复用计数银行并保留 k；删去 b，常数字、进位链、flag 与 cin 借用现有模算术区，active 沿用第一阶段。复制结果后以正向算术恢复两阶段和所有历史。内部数据宽度 w=257 时，同一 `inverseLoop` 程序使用 **4,541,488 个 Toffoli、1,639,472 次测量、5,698 根静态线路**；这包括两次完整计算/清理及 257 位输出，不包括 I5 的外部输入装载与卸载。空间为 O(w+N)，没有保留第二阶段数值链，也未声称资源最优。完整公式和公开规格见 [证明状态](docs/PROOF_STATUS.md#i4固定循环第二阶段与反计算)。

改 1 的公开接口直接列寄存器值：减半为 `data=X, counter.x=K, work=0 → data=(halveMod q)^[K] X, counter.x=K, work=0`，恢复方向相反。求逆准备段 `inversePrepare_spec` 的后置条件明确为 `a=((X : ZMod q)⁻¹).val, temp=0, arithmetic.wires=0`，另保留 `InverseHistory` 中的第一阶段数据、计数与记录；`inverseRestore_spec` 要求保留这些历史并归还逆元，然后恢复初始数据、清零全部工作区。完整源码陈述见 [公开寄存器接口](docs/PROOF_STATUS.md#改-1-的公开寄存器接口) 与 [准备/恢复接口](docs/PROOF_STATUS.md#改-1-的准备与恢复接口)。

I5 的 `fieldInverse` 在 I4 内核前后添加 CX/X 装载与卸载，Toffoli 和测量数保持 **4,541,488 / 1,639,472**，完整静态线路为 **5,954**。外部输入增加 256 根线路；内核的 257 位输出被拆成 256 位公开输出与一根工作高位，后者由逆元范围证明为零。

M3 的 `pointCandidateCompute` 计算六次模减、三次模乘和一次求逆，非普通分支将除数设为 1。`pointCandidateClear` 按依赖逆序再次执行这些前向 XOR 模块；每段分别使用 **6,166,952 个 Toffoli、2,461,352 次测量**。两段都已证明输入坐标与普通分支标志保持，共享池归零；清理段还恢复所有候选寄存器为零。乘法、求逆与减法直接连接调用方寄存器，工作区分别映射到同一池的 1,827、5,699、1,287 位前缀。布局分配数为 9,813；实际池支持为5,670位，完整电路排除dx/dy/delta/yg四根填充最高位及池中的29根旧out线。

M3 完整 `pointAddOut` 对有限经典常量使用 **12,335,444 个 Toffoli、4,923,728 次测量、9,780 根实际静态线路**。`pointAddOut_support` 证明门列支持集恰好等于 `L.usedWires.toFinset`，再由全局互异条件得到基数；这不是最大同时存活线数。C=O 时构造期选择点复制分支：**0 个 Toffoli、0 次测量、1,026 根实际线路**（513 个 CX）。普通分支所需横坐标不等由相等检测标志推出，不向完整点加的调用者增加几何前提。空间为 O(n+N)，不声称资源最优。

M3 受控原地 `controlledPointAdd` 对有限 C 使用 **11,800,058 个 Toffoli、4,656,378 次测量、6,218 根实际静态线路**。两次除法保留求逆历史，只借已清零的工作区做受控累加；其余三个乘积完成原地坐标更新。输入分类和输出重算恢复七个标志，λ及全部工作位归零；覆盖O、互逆点、倍点、C=−C和控制false。C=O在构造期为空程序，三项资源均为零。`pointInPlaceFinite_wires` 与全局互异证明给出实际支持，公共布局仍分配9,817位。独立XOR点加接口继续保留。

基础层原语（重做计划 §1）：n 位原地加法 `addInPlace` 与减法 `subInPlace` 各用 n−1 个 Toffoli、n−1 次测量、3n 根线路（先擦进位再写和位，最高位不算进位）；受控常数加减不增加 Toffoli，受控寄存器加减另加两次 n 位受控复制；Gidney 比较器 `compareLt` / `compareLtConst` 用 n 个 Toffoli（受控 +1）、n 次测量、3n+2 根线路（受控版本为 3n+3）。求逆第二阶段已复用常数加减与受控比较器；其它原语供后续改动组合。

## 优化进度与下一步计划

改 2 C1 已实现普通/受控原地模加减的完整 Triple、目标外 frame 与同程序精确资源，入口为 `ModInPlaceWrappers.lean` 和 `ModInPlaceSubtract.lean`。源/目标宽 n+1，允许 A≤p、Z<p、0<p<2^n；工作区初末全零。四项 Toffoli/测量/实际线路分别为普通加 `(4n−1,4n−1,4n+4)`、普通减 `(6n−1,6n−1,4n+4)`、受控加 `(6n−1,4n−1,5n+5)`、受控减 `(8n−1,6n−1,5n+6)`（n>0）。C2 阶段曾证明无控制半倍与 Horner 内核（后者现已替换，旧文件待清理）。n=256 时，mulInto 为 523,776 Toffoli / 392,704 测量 / 1,540 线，mulClear 为 655,104 / 524,032 / 1,542；输入保持、累加器由零得到乘积或由该乘积清回零，全部工作位和相位恢复。D 已证明三个适配器并替换域乘法；旧倍数链布局已删除，该阶段完整受控点加降至 32,347,957 Toffoli / 17,585,440 测量 / 9,718 根实际线路。

改 1、改 2、改 3、改 4、改 5 已计入 Current status；改6a五个适配器和fieldMul已实现，原地点加改接也已实现。成本压缩按 [重做设计](docs/REWORK_PLAN.md) 分七项推进；目标数是按文档门列推导的预期值（标"研究预算"者未从已有门列推导），以实现后的 Lean 资源定理为准。依赖：先做基础层（原地加法器与原地模算术），改 1/2/4 只通过 Hoare triple 接口相互独立、可并行，改 5 可并行开发但集成依赖改 4，改 3 依赖改 1 与改 2。

| 项 | 内容 | 受控原地点加 Toffoli 目标 | 线路目标 | 负责 |
| --- | --- | ---: | ---: | --- |
| 改 1（已实现） | 求逆第二阶段改为内部寄存器上的受控原地模减半与逆序加倍，XOR 接口不变 | 57,258,805（该阶段已证） | 74,024（共享池由模乘决定） | Deutsch |
| 改 2（已实现） | Horner 内核与 XOR/加/减适配器；调用次数不变 | 32,347,957（该阶段已证） | 9,718 | Lamport |
| 改 3（已实现） | 除法中心原地更新：2 次除法内含 2 个乘积，另加 3 个乘积；输出侧标志清理 | 14,998,618（改3阶段已证） | 6,218 实际支持（已证） | Deutsch |
| 改 4（已实现） | 计数活动比较与记录段直接调用 Gidney 比较器 | 56,083,253（该阶段已证） | 74,024 | Deutsch |
| 改 5（已实现） | Kaliski轮测量清零检测、原地受控加减；等常量检测同步 | 52,914,997（改 2 前阶段值） | 74,024 | Deutsch |
| 改 6a（已实现） | 标准表示四位窗口Montgomery，全部模乘接入 | 11,800,058（已证） | 6,218（已证） | Lamport；6b待安排 |
| 改 7 | CCZ 修正，仅当改 6 采用测量反查表时需要 | — | — | 条件项 |

每项先提交设计 PR 描述（构造、逐步寄存器表、门数推导、证明义务、文件改动），复审确认后再写证明；公开定理陈述保持不变，只替换实现与资源数。

线路按实际门列支持计数。改 2 后共享池仍按求逆编号分配 5,699 位，模乘/模减/求逆的支持并集为 5,602 位；97 根旧 out 位没有门触及。该阶段受控点加的外部支持为4,116位，合计9,718；改3已进一步缩至6,218实际线，分配编号保持。

改 2 的构造与资源见 [实施设计](docs/REWORK_PLAN.md#12-改-2-实施设计已实现)。C1/C2/D 阶段实现六个模算术原语、Horner 内核与三个适配器（以下为历史阶段值）；XOR 模乘为 1,178,880 Toffoli / 916,736 测量 / 1,799 线，加/减适配器分别为 1,179,903/917,759 与 1,180,415/918,271，均为 1,799 线。D阶段集成保留4次求逆与12次模乘，按改5后程序重算为32,347,957 Toffoli；当前改3已减少调用次数。受控半倍仍留待实际调用需求。

改 4 首批计数比较器接入已实现，见 [实施说明 §13](docs/REWORK_PLAN.md#13-改-4-首批接入计数比较器已实现)：完整求逆省30,720 Toffoli/测量，当前资源已包含此收益；记录段直接受控比较也已实现，见 [§14](docs/REWORK_PLAN.md#14-改-4-后续记录段直接受控比较已实现)，每次求逆再省263,168 Toffoli/测量。

改 5 的具体设计见 [§15](docs/REWORK_PLAN.md#15-改-5-实施设计测量清零检测与原地受控加减已实现)：原地替换零检测并接入 Kaliski 原地受控加减，单轮已证3,629 Toffoli/1,056测量/1,847线；该阶段受控点加52,914,997 Toffoli/31,848,736测量/74,024线。不包含改2/3收益；原求逆池编号保留，实际工作支持5,442线。

改 3 的具体门列与寄存器表见 [§16](docs/REWORK_PLAN.md#16-改-3-实施设计除法中心的受控原地点加已实现)：总Triple、逐线保持、11,800,058 / 4,656,378的同门列计数和6,218线精确支持均已证明，已接入公共受控原地点加。D兼容布局仍分配9,817位，未触及位保持零。

改3的八个数学引理已证明，见[证明状态](docs/PROOF_STATUS.md#改-3-数学原地更新与输出侧清理条件)：涵盖输出侧标志、普通分支域等式和第二除数为零时的例外斜率。除法已完成完整规格、逐线保持与精确资源，见[除法证明状态](docs/PROOF_STATUS.md#改-3-除法保留求逆历史的受控累加)：加5,082,703 Toffoli / 1,912,399测量，减5,083,215 / 1,912,911，均6,210根实际支持线。原地点加本体已接入，见[完整证明](docs/PROOF_STATUS.md#改-3-原地点加本体与公开入口)。

## 每次交付的检查

每次创建或更新 PR 都逐项检查，并在 PR 描述里简述结果；可读性和设计必要性需要人工审阅，不能用构建通过代替。

- [ ] **Human readable**：公开定理直接表达前置条件、程序与结果；使用 `r = v`、命名布局、统一 `Nodup` 和中文说明。先展示零输出等常用形式，再提供组合所需的 XOR 形式；检查程序及测量语法是否容易读。
- [ ] **Overdesign**：每个新增类型、谓词、文件、工具都有当前用途；避免重复公开 API、全环境审计器和无需要的抽象。项目文档集中在 README、PROOF_STATUS、PROVENANCE；未实现的计划只放在 REWORK_PLAN（唯一来源，README 只留摘要表）。
- [ ] **状态真实**：逐项对照 README Current status、实际源码、公开定理和验证结果；契约不写成实现，数学群律不写成点加电路证明。
- [ ] **Lean 验证**：固定工具链与依赖，运行 `lake --wfail build` 和选定公开定理的传递 `#print axioms` 白名单，仅允许 `propext`、`Classical.choice`、`Quot.sound`。不添加小 case 测试、Python 对照或真值表验证。
- [ ] **语义与清理**：Triple 对任意初始相位及所有测量记录证明相位恢复、所需输入保持和工作位清零。即时 Z/CZ 修正不是自动正确；测量结果只能选择即时修正。清理必须有适用的不变量，不能直接反转带测量的程序。
- [ ] **同一条合法电路**：正确性与 Toffoli、测量、qubit 定理指向同一具体程序；门的控制与目标满足互异要求，不含重复控制 CCX。线路数按完整程序及修正分支的实际支持集计算，不冒充最大同时存活数；披露空间复杂度，不声称未经证明的最优性。
- [ ] **范围与完整性**：当前只做带符号基态分支模型，不加入量子态语义、桥或 Reference 树。最终点加必须覆盖无穷远、相反点和倍点等角落情形，C 是经典常量、R 是变量；模算术必要的位宽与取值范围前提仍应明确写出。一般测量分支不称为严格 monomial 矩阵，也不冒充完整量子态正确性。
- [ ] **可审阅证据与约定**：PROOF_STATUS 保留可读陈述、证明含义、同程序资源及公理证据；频道和项目文档用中文，复制数学代码保留来源与提交说明。仓库维持 private、Apache 2.0，除非另有明确决定。

只有 Dirac 合并：在同一头提交上 CI 通过、独立复审通过、README 与代码一致，且无当前暂停。Lamport 与 Deutsch 不合并；Dirac 遇到需要人类决定的不确定事项，应 @runzhou-tao 并等回复。暂停及解除都以最新明确指令为准，不把已解除的暂停继续当作阻塞。

## 程序与规格

常用的零输出模加直接写成：

```lean
theorem fieldAdd_zero_spec (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
    (X Y : Nat) (hX : X < p) (hY : Y < p) :
  {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} fieldAdd L
  {{ L.x = X, L.y = Y, L.out = ((X+Y)%p), L.work = 0 }}
```

`fieldSub_zero_spec` 同样给出模 p 的差；组合证明需要时，`fieldAdd_spec` / `fieldSub_spec` 支持任意输出初值的 XOR 更新。

模乘也先使用零输出形式：

```lean
theorem fieldMul_zero_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width = 256) (X Y : Nat) (hX : X < p) :
  {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} fieldMul L
  {{ L.x = X, L.y = Y, L.out = ((X*Y)%p), L.work = 0 }}
```

`L.Widths` 要求 x、out、倍数寄存器为 n+1 位，两份模算术工作区同宽，乘数 y 为 n 位；全布局用一个 `Nodup` 要求互异。X 必须小于 p，Y 只受寄存器位宽限制，不必另加 `Y < p`。组合用 `fieldMul_spec` 将输出写为 `O ^^^ ((X*Y)%p)`。两个累加器交替复用，只保留倍数链；测量顺序固定，乘数位只控制 CCX 复制。


非零输入求逆的零输出接口：

```lean
theorem fieldInverse_spec (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X : Nat) (hX0 : 0<X) (hX : X<p) :
  {{ L.x=X, L.out=0, L.work=0 }} fieldInverse L
  {{ L.x=X, L.out=((X : Fp)⁻¹).val, L.work=0 }}
```

`L.Widths` 列出外部 256 位输入/输出及 I4 内部位宽、512 对记录、十位计数器要求；`fieldInverse_xor_spec` 支持任意初值输出的 XOR 更新。`fieldInverse_contract` 证明这个具体程序满足 `inverseContract`，包括同一门列的三个资源数和线路包含关系。输入零明确排除。


```lean
def andComputeErase (a b anc : Wire) : Program := prog {
  CCX a b anc;
  if meas anc = 1 then CZ a b else skip
}

theorem andComputeErase_spec (a b anc : Wire) (hnd : [a, b, anc].Nodup) (A B : Bool) :
  {{ a = A, b = B, anc = false }} andComputeErase a b anc
  {{ a = A, b = B, anc = false }}
```

三线互异、辅助位初始为零时，数据与相位恢复；同一程序使用 1 个 Toffoli、1 次测量、3 根静态线路。测量结果只能选择即时 Z/CZ 修正，不能改变后续算术或测量流程。结论限于 monomial 语义模型：固定测量分支把每个基态映到单个带符号基态；一般测量分支不保证单射，因此不能称为严格的 monomial 矩阵。

```sh
lake exe cache get
scripts/verify.sh
```

验证包含 Lean 构建和公开定理的公理白名单检查，不包含测试。Lean 固定为 `v4.28.0`，Mathlib 固定为 `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。

- [公开定理与证明状态](docs/PROOF_STATUS.md)
- [来源与复现](docs/PROVENANCE.md)

Apache License 2.0；来源声明见 [NOTICE](NOTICE)。

改 6a 的具体门列设计见 [重做计划 §17](docs/REWORK_PLAN.md#montgomery-design)：包含标准表示转换与历史清理的 XOR适配器已证539,168 Toffoli / 271,904测量 / 2,596根实际线路，并已用于fieldMul；原地点加11,800,058/4,656,378/6,218也已完成集成与证明。

改6a已实现数学、查表和共享工作区的准备/恢复电路 P/Q。`montP_spec` 得到标准模积并保留两段历史，`montQ_spec` 消费历史并清空全部工作位；两者各为269,584 Toffoli / 135,952测量 / 2,339根实际线路（工作区1,827位），对全部测量记录保持相位及工作区外线路。入口为Arithmetic/MontPQ.lean、MontResources.lean。五个适配器已证明，fieldMul使用XOR版；普通加/减为540,191/272,927和540,703/273,439，均2,596线；受控加/减为540,703/272,927和541,215/273,439，均2,597线。原地点加改接已实现。
