# 项目地图

项目在 Lean 中构造 secp256k1 点加电路，证明计算结果、工作位清零、相位恢复及资源计数。最终入口 `controlledPointAdd` 在控制为真时将点 R 更新为 R+C，否则保留 R；C 是构造电路时已知的经典常量点。

## 阅读方式

先选功能，只读该目录的 README，理解输入输出、前提、算法和证明思路。调用模块时核对公开定理；修改实现时再展开相关 Lean 文件。README 是唯一的人类阅读入口，不是正确性的替代证据，也不意味着维护者永远不用读代码。

模加减的首个分层证明示范：先读 [Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean) 的算法和 `*_mod_spec`，再读 [ModularAlgorithm.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModularAlgorithm.lean) 的两个分支证明。[ModularBackend.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModularBackend.lean) 保存接线、补码候选与工作区恢复的证明，修改实现时才需深入。旧规格现在由新分层证明推出；两个原 `prog` 主体及实际电路不变。

`ModularAlgorithm.lean` 的两个算法证明现采用受控英文：分情况、列中间结论、引用取模规则。句式实现集中在 [ProofLanguage.lean](../ECDSAAdd/Framework/ProofLanguage.lean)，不把底层 tactic 暴露在算法证明正文中；范围辅助引理暂不改写。

Arithmetic 的 201 个 Lean 文件已归入以下 14 个功能目录，每目录恰有一份 README，不另设重复的 docs/modules 说明。加法与其逆操作、受控和 XOR 等接口变体放在同一功能模块，不使用 Primitives 或 Modular 作为杂项模块。

算法正文统一用 `if c { ... };` 表示量子受控执行，不测量 c；`if (c XOR 1)` 对应 c=0。它与旧 `control` 写法生成相同门列，旧写法仍兼容。具体支持范围见 [Framework](../ECDSAAdd/Framework/README.md#现有算法中的算术表达式)。

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
| [ModularAddition](../ECDSAAdd/Arithmetic/ModularAddition/README.md) | 模加与模减，以及高层语言适配示范 | 25 |
| [ModularDoubling](../ECDSAAdd/Arithmetic/ModularDoubling/README.md) | 模倍增与模减半 | 4 |
| [ModularMultiplication](../ECDSAAdd/Arithmetic/ModularMultiplication/README.md) | 标准表示模乘及累加、受控接口 | 28 |
| [ModularInverse](../ECDSAAdd/Arithmetic/ModularInverse/README.md) | 求逆及保留历史的准备/恢复接口 | 47 |
| [Division](../ECDSAAdd/Arithmetic/Division/README.md) | 模除法结果的受控累加或累减 | 8 |
| [PointAddition](../ECDSAAdd/Arithmetic/PointAddition/README.md) | 加经典常量曲线点，包括 XOR 和受控原地接口 | 69 |

布局、程序、辅助 lemma、规格和资源证明随所属功能归档。其余三个目录也已按功能整理；同名数学模块解释数值结论，Arithmetic 模块解释电路实现与状态恢复，两者不是重复说明。全库 ECDSAAdd 下共 226 个 Lean 文件；Arithmetic、Math、Circuit 按功能分目录，Framework 的八个文件集中说明。

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

只读一份 [Framework/README.md](../ECDSAAdd/Framework/README.md)。Syntax、Semantics、Hoare、Cost 保留原有底层语义；ArithmeticLanguage、ArithmeticCompiler、ArithmeticSyntax 分别提供高层操作、带证明的实现选择与编译、可读表达式；ProofLanguage 提供受控英文证明句式。八个文件直接放在 Framework 下，不再拆分子模块。通用语言层不导入具体 Arithmetic 电路，具体适配器放在对应算术模块。

### 当前关键算法：表达式与隐藏工作区（2026-10-05）

本轮进一步改写 21 个原程序定义，复查其余地图入口。读算法时先看下表；工作寄存器装载、临时副本、借位接线和恢复移入有名配方，旧调用接口保留。细节见 [Framework 的配方说明](../ECDSAAdd/Framework/README.md#隐藏工作区的配方与作用域2026-10-05)。

| 文件 | 本轮入口与变化 |
| --- | --- |
| [Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean) | `modAdd/modSub` 接入 `modAddOn/modSubOn x y out q W`：比较＋两个受控表达式；total/modulus/diff 在后端 |
| [ModInPlace.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlace.lean) | `modAddCore` 直接减经典常数 |
| [ModUnary.lean](../ECDSAAdd/Arithmetic/ModularDoubling/ModUnary.lean) | `dblInPlace` 直接减经典常数 |
| [MontPrepare.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontPrepare.lean) | `montLookupAdd/Sub` 使用临时查表值作用域；`montConstantAdd/Sub` 直接加减常数 |
| [MontAdapterLayout.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontAdapterLayout.lean) | `montMulXor`、`montMulAdd/Sub`、`montMulControlledAdd/Sub` 使用 `with product := (x * y) mod p` |
| [InverseCompute.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseCompute.lean) | `inverseLoop` 在 inverse 作用域中写出 XOR 输出，结束后恢复 Kaliski 初态 |
| [Divide.lean](../ECDSAAdd/Arithmetic/Division/Divide.lean) | `divideAdd/Sub` 使用安全逆元作用域，隐藏装载、卸载和历史恢复 |
| [PointCandidate.lean](../ECDSAAdd/Arithmetic/PointAddition/PointCandidate.lean) | `pointSubConstant`、`pointSquare` 直接写常数差、平方，隐藏常数和副本 |
| [PointInPlaceProgram.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceProgram.lean) | `pointInPlaceConstantAdd` 直接写受控常数模加；`pointInPlaceGeneric` 直接写 slope²；`pointInPlaceClearSlope` 使用独立判零作用域 |

`with` 是准备—使用—恢复的配方展开，不是自动重置；任意块体的安全性仍须证明。模乘与求逆历史保留到作用域结束。跨 compute/clear 使用的候选点数据、逐轮记录、奇偶/借位等逻辑状态继续显式保留。`halfInPlace`、Kaliski 数据轮、Montgomery 窗口/恢复循环、基本门级函数已能直接读出算法，本轮不重复包装。

普通寄存器 XOR 允许不等宽，目标宽度决定截取；短源等价补零。一般互补分支只有等宽时使用选择优化，否则保留两个独立受控操作；新 `copyRegister_fit_correct`、`chooseXorFitted_controls_equiv` 证明其语义。模加减专用配方仍共用 n+1 位中间量及原选择器，避免先截断溢出位。

范围边界：只接入明确的模加/模减比较模板、有限算术配方及临时值作用域；不宣称已有任意表达式树编译、自动分配、别名分析或通用受控程序。比较模板不匹配时报错。认证 `arith` 的能力仍为下一节所述第一版；生产配方由新旧门列连接、原有公开定理及新增分支规格验证。

### 高层语言阅读入口（2026-10-03）

先读 [ModularAddition/README.md 的示范](../ECDSAAdd/Arithmetic/ModularAddition/README.md#languageexamplelean)，再看 `LanguageExample.lean` 的 `algorithm` / `mixedAlgorithm` 两个代码块。`arith` 保存高层操作，旧 `prog` 仍构造门列；第一版仅支持 `y = (x + y) mod q [using 名称];`。默认配置和逐句选择均已实现，不会自动选择最快实现。

`QReg[n]` 引用 n 根小端物理线，额外高位放入显式工作区。接线实现连同正确性和资源证明注册；同名、同操作的重复注册按列表中第一项解析，不匹配的寄存器或模数不会静默回退。编译成功只表示找到了接线实现，输入范围和零工作区仍须通过 `Ready` 证明；`Verified` 把这些义务与高层规格一起封装为完整 Triple。

当前有直接模加和固定 enable=1 的受控模加适配，两者真实门列不同；第二种用于验证替换机制，不是性能优化。三位、模 7、连续两次模加的资源为 direct/direct：22/22/16，masked/masked：34/22/20，direct/masked：28/22/21（Toffoli/测量/实际静态线路）。生产函数的表达式改写见下一节；未将整个点加搬入认证 Code，原资源不变。

认证 `arith` 尚未接入一般赋值、模减、表达式树、循环、量子条件块、自动分配和优化；现有 monomial 分支模型的证明范围不变。与一般量子信道语义的连接不在本阶段内。

### 生产函数的表达式改写（2026-10-03）

本轮直接改写 6 个模块中 33 个原有程序定义，不另留示范版。它们保留 `Program` 接口，在 `prog using` 中使用 `+=`、`-=`、`^=`、模赋值与受控块（现在写为 `if c { … };`）；工作区仍显式绑定在 Context 中。先读下表的算法主体，再按需看配置和证明。

| 文件 | 已改写的原函数 |
| --- | --- |
| [Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean) | `modAdd`、`modSub` |
| [ModInPlace.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlace.lean) | `modAddCore` |
| [ModUnary.lean](../ECDSAAdd/Arithmetic/ModularDoubling/ModUnary.lean) | `dblInPlace`、`halfInPlace` |
| [MontPrepare.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontPrepare.lean) | `montLookupAdd/Sub`、`montReduce/RestoreReduce`、`montAddDigit/SubDigit`、`montConstantAdd/Sub`、`montNormalize/Denormalize` |
| [MontAdapterLayout.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontAdapterLayout.lean) | `montMulXor`、`montMulAdd/Sub`、`montMulControlledAdd/Sub` |
| [RoundBody.lean](../ECDSAAdd/Arithmetic/ModularInverse/RoundBody.lean) | `kaliskiBodyProgram`、`kaliskiUnbodyProgram` |
| [Divide.lean](../ECDSAAdd/Arithmetic/Division/Divide.lean) | `divideLoad/Unload`、`divideAdd/Sub` |
| [PointCandidate.lean](../ECDSAAdd/Arithmetic/PointAddition/PointCandidate.lean) | `pointSubConstant`、`pointSquare`、`pointCandidateCompute/Clear` |
| [PointInPlaceProgram.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceProgram.lean) | `pointInPlaceConstantAdd`、`pointInPlaceNegate`、`pointInPlaceGeneric` |

这是构造层记法迁移：`using` 在此处绑定具体函数，不是自动认证任意实现；原 `_spec` / `_correct`、门列连接和资源证明继续负责验证。不要把它误记为所有操作都已进入 `ArithmeticLanguage.Code` / `Verified`。写法和边界见 [Framework README](../ECDSAAdd/Framework/README.md#现有算法中的算术表达式)。

`rippleAdder`、`addInPlace`、比较/判等/选择、交换/移位和查表的清晰门级主体不重复包装；`montWindow`、准备/恢复循环、`inverseCompute/Uncompute` 等保留已有顺序调用；`pointInPlaceClearSlope` 保留已确认的独立判零与 `CCsub/CCXor` 双控制。没有把循环移位无条件写成整数乘除，也没有用赋零代替反计算。

## Circuit：测量 AND 模块

[Circuit](../ECDSAAdd/Circuit/README.md) 包含 And.lean，证明 AND 计算后测量清理能够恢复完整状态，并给出同程序资源。Circuit 当前只有一个 Lean 文件，因此 And.lean 与 README.md 直接放在 Circuit 下。

各功能目录只有一份 README，作为人类阅读入口；进入源码只用于核对精确规格或修改证明。现有 Math/ModularAddition 仍依赖 Arithmetic 的 Reduction，Hoare 仍依赖曲线定义，本次未强行重排实际依赖层次。

## 理解上层组合

模乘使用 Montgomery 计算和输出适配器。求逆使用 Kaliski 循环，并调用 Montgomery 缩放消去逆元的缩放因子。除法准备逆元、保留恢复历史、借用已清零工作区做乘积累加，再恢复。点加组合这些算术接口与曲线数学，并覆盖特殊点分支。

需要查看算法时，优先读下列程序定义即可，不必从头读完证明文件。这些主体使用 `prog` 的顺序调用或循环；递归查表保留树形结构。此表也是持续维护的改写清单，不依赖聊天记录。

算法主体直接列出输入/输出寄存器，较复杂布局旁注明连接关系；行内注释说明数值更新、选择方向和清理目的。普通 `let` 只组织已有 wire；新的比较 let 是整块配方记法，`with` 临时值绑定后端工作位，均不自动分配新量子位。`Xor` 接口把结果异或到目标，不能当成覆盖赋值；写成“中间量=结果”的注释以规格要求的零初值为前提。

`prog` 中直接门统一写作 `X target;`、`CX control target;`、`CCX a b target;`，子电路也支持 `addXor x y total;` 这样的普通 Lean 调用。通过文件级 `open Instr` 省略门名的前缀；旧括号式调用仍兼容。

辅助接线较多的主体使用 `prog using (...Context L) { ... }`：数据源、目标与必要控制仍在调用处出现，进位链、零进位、mask、工作池等在Context 配置中绑定一次。仅给用途不直观的 `let` 别名加注释；算法阅读可先跳过 Context 的接线实现。它只做构造期展开，不分配 qubit、不自动推断可复用工作位；底层完整参数接口仍保留。例如 modAdd/modSub 内的 `total ^= (x + y)` 使用零 cinSum 和 carrySum，不能据此删掉普通 addXor 的非零进位功能。

已采用配置的入口包括模加减/原地模加、模倍增/减半、Montgomery 段内加减、Kaliski 数据轮、除法乘积累加/累减，以及点加候选和斜率清理。复制、选择、交换、移位等原本清楚的门级循环不额外包一层配置。

斜率清理不再用 x 表示条件，也不把 generic 掺入 xIsZero：`zeroTest point.x xIsZero` 得到独立的 `[point.x=0]`；`CCsub generic (xIsZero XOR 1) slope (point.y / point.x)` 在非零分支减去模 p 的商，`CCXor generic xIsZero slope lambdaStar` 在为零分支 XOR 例外斜率。之后再次判零以清除 xIsZero。控制位置的 `XOR 1` 表示负控制，不修改条件位；除法表达式只描述寄存器操作，不无条件求商。配置复用原有工作位来合并两个控制、调用 divideSub 或 maskedConstant、清零临时控制。generic=0 时最终状态不变，但仍会执行计算与清理。此版实际门列有所变化：Toffoli 增加 4，测量及静态线路数不变；正确性和资源须按新门列验证。

### 显式受控操作（2026-09-27）

重要算法的量子条件分支使用 `CXor 控制 目标 源`、`CConst 控制 目标 常数`、`CPointXor 控制 目标 常量点`；后者异或点编码，不是点加。`(c XOR 1)` 表示 c=0 的负控制，不是测量或修改 c 的语句。普通受控原地加减写为 `CAdd/CSub 控制 目标 源`，常量加减写为 `CAddConst/CSubConst 控制 目标 常数`；低位常量加法用 `CAddConstLow`。这些调用仍使用原有具体算术电路及已绑定的辅助接线，不是给任意 Program 逐门套控制。

此阶段把无借位/有借位分支写成两个受控块（现在写作 `if`），等宽时合并为每位一个 Toffoli 的选择器。2026-10-05 又将模加减提升为完整表达式模板，见上方当前入口；一般 `modArithmeticContext` 的合并改为 `chooseXorFitted`，不等宽时禁止共同 zip。线路互异仍是语义证明的前提，不是任意别名下都合法的优化。

已检查表中 14 个模块：RegisterXor 的原值/函数值选择，Comparison 的负控制读出，ModularAddition 的借位选择与回补，ModularDoubling 的奇偶/借位回补，ModularMultiplication 的受控累加/约减，ModularInverse 的活动标志与数据轮，Division 的安全分母，PointAddition 的候选分母、点编码输出与特殊分支均采用显式控制。Lookup 的叶子为受控常量 XOR，递归树保留显式条件工作位及测量清理。Addition、Selection 的已清楚门级主体，以及 Swap/Shift 和已显式带控制的 Equality 不额外包装。按经典常量、列表长度、接线种类构造电路的 if/match 保留，不伪装成量子判断。

这轮保留资源用量；除 divideUnload 将末尾的 `CX; X` 改为等价的 `X; CX` 负控制展开外，其余被改写主体通过指令列表相等性核对。卸载重排保留控制/目标互异条件下的完整状态效果，并同步验证其原有规格。负控制点编码的底层仍可通过暂时 X 控制位再恢复来实现；“XOR 1”本身不是一条 X 指令，不代表所有底层实现都没有 X 门。

### 当前注释规则（2026-09-27）

以 [Modular.lean 的 modAdd](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean) 为精简示范；同一风格已应用于下表的重要算法入口及直接相关的程序辅助函数，覆盖 14 个模块中的 26 个 Lean 文件。该注释精简阶段不改程序、证明或各层 README 的写法；后续受控语法改写见上一节。以下规则替代此前“每个参数、每个 let 都解释”的要求。

- 函数开头只写计算结果、必要数值条件，以及 n 等不明确符号的含义；不固定添加“参数”段，不重复完整规格。
- `let x := L.x` 这类直观别名不注释。中间量只写用途，如“用于保存 x+y”“用于保存 total-q”；标志位要写清 0/1 各表示什么。
- 调用旁用短公式说明计算，避免相邻注释重复同一件事。已说明计算内容的重复调用可只写“清零 diff”，不再展开异或和补码细节。
- 位宽、线路互异、零工作区、相位及保持性质的完整要求以 `_spec` / `_correct` 和模块 README 为准；精简注释不等于删除这些要求。

这些文档保存的是约定摘要，不是逐轮对话全文。阶段记录见 [整理报告](READABILITY_REPORT.md)，旧版代码与注释见 Git 提交历史；`git log -p -- docs/MODULES.md` 可查看本规则的修改过程。

注释中寄存器名出现在算式时表示其保存的值，控制位作数值使用时取 0/1；`^=` 表示按位 XOR，`←` 表示覆盖更新，`(a−b) mod q` 表示模减法而非 Lean `Nat` 的截断减法。ket 写法只简记本项目计算基态分支模型中的输入输出，省略的工作位及相位条件仍需满足，不声称新增了一般量子态语义。

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
| ModularAddition | [ModInPlace.lean](../ECDSAAdd/Arithmetic/ModularAddition/ModInPlace.lean)：`modAddCore`；[Modular.lean](../ECDSAAdd/Arithmetic/ModularAddition/Modular.lean)：`modAddOn`、`modSubOn`（旧入口 `modAdd/modSub`） |
| ModularDoubling | [ModUnary.lean](../ECDSAAdd/Arithmetic/ModularDoubling/ModUnary.lean)：`dblInPlace`、`halfInPlace` |
| ModularMultiplication | [MontPrepare.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontPrepare.lean)：`montWindow`、`montPrepareRounds`、`montPrepare` 及对应恢复程序；[MontLayout.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontLayout.lean)：`montMulCompute/montMulUncompute`（兼容旧名 `montP/montQ`）；[MontAdapterLayout.lean](../ECDSAAdd/Arithmetic/ModularMultiplication/MontAdapterLayout.lean)：输出适配器 |
| ModularInverse | [InverseCompute.lean](../ECDSAAdd/Arithmetic/ModularInverse/InverseCompute.lean)：`inverseLoop`、`inverseCompute`、`inverseUncompute`；[KaliskiLoop.lean](../ECDSAAdd/Arithmetic/ModularInverse/KaliskiLoop.lean)：`kaliskiLoop`、`kaliskiUnloop`；单轮见 [KaliskiRound.lean](../ECDSAAdd/Arithmetic/ModularInverse/KaliskiRound.lean) 和 [RoundBody.lean](../ECDSAAdd/Arithmetic/ModularInverse/RoundBody.lean) |
| Division | [Divide.lean](../ECDSAAdd/Arithmetic/Division/Divide.lean)：`divideAdd`、`divideSub` 及装载/恢复程序 |
| PointAddition | [PointCandidate.lean](../ECDSAAdd/Arithmetic/PointAddition/PointCandidate.lean)：`pointCandidateCompute/pointCandidateClear`；[PointInPlaceProgram.lean](../ECDSAAdd/Arithmetic/PointAddition/PointInPlaceProgram.lean)：`pointInPlaceGeneric`、`pointInPlaceClearSlope`、`pointInPlaceFinite`；XOR 输出接口见 [PointOutput.lean](../ECDSAAdd/Arithmetic/PointAddition/PointOutput.lean)：`pointAddOut` |

循环在构造电路时展开，不依赖运行时量子位的值。反向清理调用显式恢复子程序，不反转子程序内部的门或测量。定义后的 `_program`、`_cons`、`_succ` 等引理连接可读程序与归纳证明，可在理解算法时跳过。

此前已逐项复查上述入口：保留已经直观的 Addition 主体及复制、选择、交换、移位；比较、判等、查表补充关键条件和清理说明；模加减、倍增/减半、模乘、求逆、除法和点加显式化寄存器与算术步骤。此前的纯可读性改写保持指令列表及资源结论不变；后续斜率独立判零属于上述明确记录的电路调整。

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

用户已授权：以后每轮改写完成并通过验证后，自动提交并推送到 GitHub 的 `new-temp`，无需再次询问。只提交本轮相关改动，不强推、不覆盖其他人的修改；验证失败或远端冲突时先处理并说明，`new` 仍须最终验收后才集成。

仓库根目录运行 `scripts/verify.sh`：完整 `lake --wfail build`，运行 `tests/ProgSyntax.lean`、`tests/ReadablePrograms.lean`、`tests/ReadableLoops.lean` 中的语法与指令等价性检查，`tests/ModularReadable.lean` 中显式寄存器接口的回归检查，`tests/ContextPrograms.lean` 中配置作用域、条件取反及展开等价性检查，以及 `tests/ControlledPrograms.lean` 中显式控制、选择优化及拒绝误合并的检查，然后检查脚本选定公开定理的传递公理依赖，只允许 propext、Classical.choice、Quot.sound。不以数值测试替代证明。

当前证明与资源证据见 [PROOF_STATUS](PROOF_STATUS.md)，算法历史见 [REWORK_PLAN](REWORK_PLAN.md)，来源见 [PROVENANCE](PROVENANCE.md)，整理范围和验收记录见 [READABILITY_REPORT](READABILITY_REPORT.md)。
