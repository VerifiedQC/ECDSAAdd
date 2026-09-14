# 公开定理与证明状态

M1、加减法、模 p 加减、模乘、完整 EEA 求逆 I1–I5 及 M3 三部分（候选计算、完整经典常量点加、受控原地点加）的基线已合并到 main。改1/2/3/4/5已实现，包括原地求逆、Horner模乘和除法中心点加，以下状态与资源对应当前提交；其余成本压缩计划见 [重做设计](REWORK_PLAN.md)。

验证包含 `lake --wfail build` 和选定公开定理的传递公理白名单；没有测试。CI、独立复审和合并状态以当前 PR 为准。

## M1

```lean
theorem andComputeErase_spec (a b anc : Wire) (hnd : [a, b, anc].Nodup) (A B : Bool) :
  {{ a = A, b = B, anc = false }} andComputeErase a b anc
  {{ a = A, b = B, anc = false }}
```

三线互异、辅助位为零时，AND 计算与测量反计算恢复整个状态；`andComputeErase_correct` 保留完整状态等式。
同一个程序的 Toffoli 数为 1、测量数为 1、静态线路数为 3；静态线路数不是最大同时存活数。
固定测量分支把每个基态映到单个带符号基态，但一般不保证单射；“monomial 语义”是此模型的名称，不表示任意分支是严格 monomial 矩阵。结论仅涉及此模型；数学层的 `affineAdd_correct` 是群律规格，不是点加电路实现证明。

## 判断的含义

```lean
def Triple (P : BasisState → Prop) (c : Program) (Q : BasisState → Prop) : Prop :=
  ∀ (s : State) (m : List Bool), P s.basis →
    (run c m s).phase = s.phase ∧ Q (run c m s).basis
```

测量记录不足时补 false，多余时忽略；全称量化覆盖所有记录。相位恢复需要证明，不由即时修正的语法自动保证。`Triple.seq`、`conseq`、`frame` 分别证明顺序组合、前后置条件推导、外部线路断言保持。

断言里的顶层 `r = v` 经 `Holds` 读取寄存器：Wire 读 Bool、线路列表按小端读 Nat、PointReg 读有限点标志与坐标（无穷远点全零）。其他命题原样保留，必要时可用隐式状态名 `st`。[判断与表示定义](../ECDSAAdd/Framework/Hoare.lean) · [程序和定理源码](../ECDSAAdd/Circuit/And.lean)

## `#check` 原文

```text
ECDSAAdd.andComputeErase_spec (a b anc : ECDSAAdd.Wire) (hnd : [a, b, anc].Nodup) (A B : Bool) :
  ECDSAAdd.Triple
    (fun st => (ECDSAAdd.Holds.holds st a A ∧ ECDSAAdd.Holds.holds st b B) ∧ ECDSAAdd.Holds.holds st anc false)
    (ECDSAAdd.andComputeErase a b anc) fun st =>
    (ECDSAAdd.Holds.holds st a A ∧ ECDSAAdd.Holds.holds st b B) ∧ ECDSAAdd.Holds.holds st anc false
```

## M2：命名布局与 XOR 加减法

[AdderLayout](../ECDSAAdd/Arithmetic/Layout.lean) 按位保存 x、y、out、carry 四根线，派生寄存器和位宽；`L.wires.Nodup` 统一要求布局互异。公开规格支持任意输出初值 O：

```lean
theorem add_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) (C : Bool) :
  {{ L.x = X, L.y = Y, L.cin = C, L.out = O, L.carry = 0 }} add L
  {{ L.x = X, L.y = Y, L.cin = C,
     L.out = (O ^^^ ((X + Y + C.toNat) % 2^L.width)), L.carry = 0 }}

theorem sub_spec (L : AdderLayout) (hnd : L.wires.Nodup) (X Y O : Nat) :
  {{ L.x = X, L.y = Y, L.cin = false, L.out = O, L.carry = 0 }} sub L
  {{ L.x = X, L.y = Y, L.cin = false,
     L.out = (O ^^^ ((X + 2^L.width - Y) % 2^L.width)), L.carry = 0 }}
```

底层 `rippleAdder_xor_correct`、`rippleSubtractor_xor_correct` 还证明所有非输出线路恢复。旧零输出规格保留为特例；`rippleAdder_wide_spec` 保留最高位，给出未截断的和。`add_erase_spec`、`sub_erase_spec` 证明已计算的值可以再次运行同一个前向程序清零；`add_twice_spec` 证明两次调用恢复任意 O。没有反转带测量的程序。

## M2：常量模数与模 p 加减法

[ModLayout](../ECDSAAdd/Arithmetic/ModularLayout.lean) 包含 n 个低位和一个额外高位。每位有 x、y、total、modulus、diff、out、carrySum、carryDiff 八根线，另有两个输入进位线；所有互异条件仍只有 `L.wires.Nodup`。全部物理寄存器宽度为 n+1，输入小于 q 保证输入高位为零；输出初值 O 可以任意。

[公开规格](../ECDSAAdd/Arithmetic/Modular.lean)：

```lean
theorem modAdd_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
  {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modAdd L q
  {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0 }}

theorem modSub_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q) :
  {{ L.x = X, L.y = Y, L.out = O, L.work = 0 }} modSub L q
  {{ L.x = X, L.y = Y, L.out = (O ^^^ ((X+q-Y)%q)), L.work = 0 }}
```

q 是编译期经典常量，X、Y 是变量寄存器值。模加先计算完整和 T，再计算候选差 D=(T−q) mod 2^(n+1)；D 的高位选择 T 或 D。模减先计算 D=(X−Y) mod 2^(n+1)，再计算候选 D+q；同一高位选择相应结果。[Reduction](../ECDSAAdd/Arithmetic/Reduction.lean) 证明这些选择等于所需模运算。

选择器只覆盖低 n 位：每位先 `CX no out; CX yes no; CCX flag no out; CX yes no`，用一个 Toffoli 后恢复 no。总布局证明选择位与低位输入、输出分离，不出现重复控制位的 CCX。所选结果小于 q < 2^n，因此输出高位不施门，原有高位保持；这仍满足完整 n+1 位寄存器的任意初值 XOR 规格。

选择器把结果 XOR 到 out；随后保持来源寄存器不变，按前向 XOR 程序依次清理候选、其来源与常量寄存器。选择位直接使用 diff 的高位，并随整个 diff 一起归零；没有单独测量或直接擦除这个高阶布尔函数。测量只发生在已有进位清理子程序中。所有 Triple 均要求对任意初始相位和测量记录恢复相位。

[FieldAddSub](../ECDSAAdd/Arithmetic/FieldAddSub.lean) 将 q 取为 secp256k1 的 p，要求 `L.width = 256`，并证明模数的正性与位宽界；`fieldAdd_spec`、`fieldSub_spec` 给出上述两式的模 p 特例。零输出推论 `fieldAdd_zero_spec`、`fieldSub_zero_spec` 直接给出模加减结果，是 README 首条算术规格。这是保留输入的 XOR 算术，不是就地更新接口。

| 同一具体程序 | Toffoli | 测量 | 静态线路数（布局互异） |
| --- | ---: | ---: | ---: |
| `fullAdder` | 1 | 0 | 5 |
| `eraseCarry` | 0 | 1 | 4 |
| `notRegister`，n 位 | 0 | 0 | n |
| `add` / `rippleAdder`，n 位 | n | n | n>0 时 4n+1；n=0 时 0 |
| `rippleAdder`，n+1 位完整结果 | n+1 | n+1 | 4n+5 |
| `sub` / `rippleSubtractor`，n 位 | n | n | 4n+1 |
| `modAdd` / `modSub`，n=L.width | 5n+4 | 4(n+1) | 8n+9 |
| `fieldAdd` / `fieldSub`，n=256 | 1284 | 1028 | 2057 |

[ModularResources](../ECDSAAdd/Arithmetic/ModularResources.lean) 对完整程序证明计数和线路集合等式，实际支持集 `L.activeWires` 排除不施门的 `out_high`（布局本身仍要求其互异）。5n+4 = 4(n+1) 次算术 Toffoli + n 次选择 Toffoli；常量零位不施门，资源计算没有通过额外虚门填充。线路数是程序静态支持集的基数，不是最大同时存活数，也未声称资源最优。

## M2：保留输入的模乘（改6a已替换）

[MontAdapterLayout](../ECDSAAdd/Arithmetic/MontAdapterLayout.lean) 复用MontLayout：x/out宽257、y宽256，工作区1827位，要求完整wires.Nodup。五个适配器均为P、中段输出更新、Q；输入和全部工作区恢复，支持普通XOR/加/减与受控加/减。

```lean
{{ L.x=X,L.y=Y,L.out=O,L.work=0 }} fieldMul L
{{ L.x=X,L.y=Y,L.out=(O ^^^ ((X*Y)%p)),L.work=0 }}
```

X<p，Y为任意256位值；XOR允许任意257位O，模加减另需O<p。fieldMul_spec的数值契约保持；五项Triple/frame对所有测量记录恢复相位。Horner电路与旧MulAdapter专用文件已删除，数学和仍复用的半倍原语保留。

| 同一程序 | Toffoli | 测量 | 实际静态线路 |
| --- | ---: | ---: | ---: |
| montMulXor / fieldMul | 379,424 | 379,424 | 2,596 |
| montMulAdd | 380,447 | 380,447 | 2,596 |
| montMulSub | 380,959 | 380,959 | 2,596 |
| montMulControlledAdd | 380,959 | 380,447 | 2,597 |
| montMulControlledSub | 381,471 | 380,959 | 2,597 |

MontAdapterResources证明同一程序的精确支持等式、门数和基数；不把分配数当实际支持。

## I1：EEA 求逆的数学证明

[Kaliski](../ECDSAAdd/Math/Kaliski.lean) 定义自然数状态 `u,v,r,s,k`，初值为 `p,a,0,1,0`。`v=0` 后状态恒等，否则依次选择 u 偶、v 偶、都奇且 u>v、其余情形；活动轮更新系数并增加 k，终止轮本身也计数。`kaliski_invariant` 证明每轮保持：

- `u*s + v*r = p`，且 u、s 为正；
- `gcd(u,v)=1`；
- 在 ZMod p 中，`a*r = -u*2^k`、`a*s = v*2^k`。

`kaliski_product_halves` 给出 `2*(u'*v') ≤ u*v`。归纳得到 `2^t*(u_t*v_t) ≤ p*a`，由 p、a 都小于 `2^n` 可知 2n 轮后的乘积为零；u 始终为正且互素，因此 v=0、u=1。无需输入相关的循环长度。

```lean
theorem kaliski_terminates (p a n : Nat) (hp0 : 0 < p) (ha0 : 0 < a)
    (hp : p < 2^n) (ha : a < 2^n) (hcop : p.Coprime a) :
  (kaliskiStep^[2*n] (kaliskiInit p a)).v = 0 ∧
  (kaliskiStep^[2*n] (kaliskiInit p a)).u = 1 ∧
  (kaliskiStep^[2*n] (kaliskiInit p a)).k ≤ 2*n
```

`kaliski_register_bounds` 还证明任意 t 轮后的 u≤p、v≤a、r<2p、s≤p、k≤t。对 n=256，本次按已经证明的 k≤512 上界采用 10 位计数器规划；没有声称 512 必然可达。终态 r 不一定小于 p，第二阶段从 ZMod p 中 `-r` 的标准自然数代表元开始，不能直接使用自然数的截断减法 p−r。

[ModularHalving](../ECDSAAdd/Math/ModularHalving.lean) 将偶数 r 减半、奇数 r 先加 p 再减半。对奇 p，证明两倍结果等于原值（模 p），且输入 r<p 时输出仍小于 p。`halveFixed` 保留 k，用固定索引 i<k 选择减半或恒等；固定轮数不少于 k 时，证明它等于恰好 k 次减半，避免耗尽计数器后丢失逆过程的信息。

[KaliskiInverse](../ECDSAAdd/Math/KaliskiInverse.lean) 组合两个阶段，证明任意奇模数与互素非零输入的逆元等式，并实例化到 secp256k1：

```lean
theorem kaliski_inverse_p (a : Nat) (ha0 : 0<a) (ha : a<p) :
  kaliskiInverse p a 256 = ((a : Fp)⁻¹).val
```

以上都是数学函数与等式，没有定义求逆 `Program`，没有声明求逆电路的 Triple、相位恢复、工作位清理或资源计数。I2 原语及 I3 单轮如下；I4 循环与第二阶段的程序证明另见下节；I5 契约实例见后节。该边界与 README 状态表一致；不把 I1 写成完整求逆交付。

## I2：受控移位与 10 位计数

[Shift](../ECDSAAdd/Arithmetic/Shift.lean) 将 CSWAP 分解为 `CX b a; CCX c a b; CX b a`。统一的 `(c::r).Nodup` 保证控制与所有目标互异。左右网络是相反顺序的相邻 CSWAP；`shiftRight_left_cancel` 证明先左后右恢复完整状态。只重排无测量的交换门。

```lean
theorem shiftRight_spec (c : Wire) (r : List Wire) (hnd : (c::r).Nodup)
    (C : Bool) (X : Nat) (heven : C = true → X%2 = 0) :
  {{ c=C, r=X }} shiftRight c r {{ c=C, r=(if C then X/2 else X) }}

theorem shiftLeft_spec (c : Wire) (r : List Wire) (hnd : (c::r).Nodup)
    (C : Bool) (X : Nat) (hfit : C = true → 2*X < 2^r.length) :
  {{ c=C, r=X }} shiftLeft c r {{ c=C, r=(if C then 2*X else X) }}
```

网络实际是循环移位；右移的偶数条件保证最低位为零，左移条件保证最高位不溢出。没有丢弃非零位。控制为假时值不变，空/单线寄存器也包含在定理中。

[Counter](../ECDSAAdd/Arithmetic/Counter.lean) 复用 `AdderLayout`，不另建布局类型：cin 是控制，x 是旧值，out 初始为空，y/carry 为零工作区。

```lean
theorem counterInc_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K : Nat) (C : Bool) :
  {{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }} counterInc L
  {{ L.x=0, L.y=0, L.cin=C, L.out=((K+C.toNat)%1024), L.carry=0 }}
```

`counterDec_spec` 同形，结果为 `(K+1024-C.toNat)%1024`。两者都将结果移入 out 并清空 x；下轮用 `L.swapCounter` 交换角色。C=false 时逻辑值不变，但物理寄存器仍交换，不声称整个状态恒等。I1 证明 k≤512，所以采用 10 位；当前接口是模 1024 运算，后续循环必须用范围不变量说明不会产生不希望的回绕。

组合用 `counterIncXor_spec` / `counterDecXor_spec` 保留 x、将结果 XOR 到任意初值 O。增量复用 add；减量先翻转 cin/y，再 add，最后恢复 cin/y。常用清理形式由增量写出、对调来源/输出后的减量清除旧值（或反过来）组成；没有反转测量程序。全部 Triple 对任意初始相位和所有记录恢复相位，测量仍仅用于现有加法器的进位清理。

| 同一具体程序 | Toffoli | 测量 | 静态线路数 |
| --- | ---: | ---: | ---: |
| `cswap` | 1 | 0 | 3 |
| `shiftRight` / `shiftLeft`，w 位 | max(w−1,0) | 0 | w≥2 时 w+1，否则 0 |
| `counterIncXor` / `counterDecXor`，10 位 | 10 | 10 | 41 |
| `counterInc` / `counterDec`，10 位 | 20 | 20 | 41 |

资源由相同程序的门列表和实际线路集合计算；两次计数调用共享同一 41 根线路。未增加测量分支控制算术，未引入量子态语义，I2 本身不声明完整求逆电路已完成。

## I3：完整单轮与逆轮

[RoundSpec](../ECDSAAdd/Arithmetic/RoundSpec.lean) 的公开规格使用同一个命名布局与统一的 `L.wires.Nodup`。四份数据为 u/v/r/s，k 与 kNext 是两份十位计数银行，swap/subtract 是本轮仅有的两位历史记录；scratch 包含共享算术区、零检测区、活动位和其他辅助位。

```lean
{{ L.u=z.u, L.v=z.v, L.r=z.r, L.s=z.s, L.k=z.k, L.kNext=0,
   L.done=(decide (z.v=0)), L.swap=false, L.subtract=false, L.scratch=0 }}
  kaliskiRound L i
{{ L.u=(kaliskiStep z).u, L.v=(kaliskiStep z).v,
   L.r=(kaliskiStep z).r, L.s=(kaliskiStep z).s,
   L.k=0, L.kNext=(kaliskiStep z).k, L.done=(decide ((kaliskiStep z).v=0)),
   L.swap=(kaliskiCode z).1, L.subtract=(kaliskiCode z).2, L.scratch=0 }}
```

`kaliskiUnround_spec` 以此后置条件为前置条件，恢复全部旧值，清除两位记录与 scratch。两者要求 i<512、十位计数器、I1 的 KInvariant，以及 u/v/p 小于 `2^L.low.length`。I4 去掉了冗余的公开 r 范围参数：正轮从输入寄存器读值导出；逆轮活动时由不变量导出旧 r<p，空转时由输入的新 r 等于旧 r 导出。数据宽度 w 等于低位数加一；这些范围保证比较借位、受控减法和移位有正确整数含义。`KRoundCount i z` 表示 k≤i，且 v≠0 时 k=i，保证计数不回绕，并给出本轮活动当且仅当 i<更新后的 k。

[Math/KaliskiRound](../ECDSAAdd/Math/KaliskiRound.lean) 给四分支编码 `(swap,subtract)`：u 偶为 00、v 偶为 10、都奇且 v<u 为 01、其余为 11；终止后也是 00，是否活动另外由计数关系确定。电路先由原 u/v 的奇偶和 v−u 的借位生成记录，随后立即清除比较差。归一化算术体交换两组数据、按记录减/加、按活动位移位，再交换回来；加减直接更新目标，掩码在每次调用末尾由测量清空。

正轮先计数，再以“活动且新 v=0”翻转 done，最后比较 i<新 k 清空活动位。逆轮先用相同计数比较装入活动位，恢复旧 done，再恢复数据和计数，最后从恢复的数据重新计算记录并 XOR 清零。比较阈值 i+1 的范围包含第 512 轮边界，计数器按固定次序交换银行，即使空转轮也如此。没有以测量结果选择算术分支，也没有逆序执行带测量的程序；所有 Triple 对任意相位和任意测量记录证明相位恢复。

| 同一程序，数据宽度 w | Toffoli | 测量 | 静态线路（w≥2） |
| --- | ---: | ---: | ---: |
| `kaliskiRound L i` | 12w+31 | 6w+28 | 7w+48 |
| `kaliskiUnround L i` | 12w+31 | 6w+28 | 7w+48 |
| 两者各自在 w=257 时 | 3115 | 1570 | 1847 |

[RoundResources](../ECDSAAdd/Arithmetic/RoundResources.lean) 分解计数：记录为 w+5 / w（受控比较 w+1，条件计算/清理 4），算术体为 10w−4 / (4w−2)，计数移动为 20 / 20，零检测为 w / w，活动比较为 10 / 10。[RoundWires](../ECDSAAdd/Arithmetic/RoundWires.lean) 证明两条程序的完整线路并集恰好为布局的集合，再由 Nodup 求基数；包括测量修正线路，没有按组件线路数相加。四份数据和三份实际使用的工作寄存器共 7w 位，计数及控制线共 48 位。轮内空间 O(w)，记录为两位；未声称最优，也未将此单轮成本冒充整个求逆成本。

实现中的 RoundDataLayout 与字段值表用于同一组工作线的局部组合；RoundAuxValues 专门保留计数与控制位，公开 API 仍直接写寄存器断言。辅助模块分别处理比较、零检测、受控加减、分支记录和算术体，均用于上述两条程序；没有新增通用编译器、测试框架或全环境审计。I4 固定循环/第二阶段见下节；I5 外部输入装载与完整逆元契约见后节；点加电路证明见后面的 M3 章节。

## I4：固定循环、第二阶段与反计算

[InverseLoopSpec](../ECDSAAdd/Arithmetic/InverseLoopSpec.lean) 先给出已初始化寄存器的常用零输出形式：

```lean
{{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1,
   L.first.k=0, L.first.done=false, L.work=0, L.out=0 }}
  inverseLoop L q
{{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1,
   L.first.k=0, L.first.done=false, L.work=0,
   L.out=kaliskiInverse q a 256 }}
```

`inverseLoop_spec` 要求一个全布局 `L.wires.Nodup`、512 对记录位、十位计数器、256 个低位和 257 位第二阶段/输出寄存器，以及模数 q%16=15、q<2^256、0<a<q、q 与 a 互素。`inverseLoop_xor_spec` 支持任意输出 O，结果为 `O ^^^ kaliskiInverse q a 256`。`L.work` 包含空计数银行、第一阶段 scratch、整个记录带及第二阶段全部寄存器和算术区；输入的 u/v/r/s/k/done 恢复，工作区归零，相位对所有测量记录保持。输出的数学函数已经由 I1 证明为逆元；此处仍要求第一阶段输入已装载，外部 256 位求逆契约由 I5 封装提供。

电路固定执行以下顺序：[InverseCompute](../ECDSAAdd/Arithmetic/InverseCompute.lean) 的第一阶段记录循环、规范化取负、十位查表与单段Montgomery缩放、复制输出，再依次恢复缩放、清空取负结果和恢复第一阶段。没有逆序执行测量指令。

- [KaliskiLoopProof](../ECDSAAdd/Arithmetic/KaliskiLoopProof.lean) 把单轮与逆轮组合成固定长度循环。每轮独占两根记录线；终止后的轮保持 00，计数银行仍按静态顺序交换。逆向循环清除每一对记录。公开单轮的基准 swap/subtract 字段由记录带视图替换，不另占两根未使用线路。
- [NegativeInit](../ECDSAAdd/Arithmetic/NegativeInit.lean) 使用 I1 的 r<2q 范围，先约减 r，再取负，结果严格等于 `(-(r : ZMod q)).val`。`modAdd_bounded_spec` 仅要求两输入之和小于 2q，复用同一模加门列；没有假定终态 r<q，也没有使用错误的自然数 q−r 截断。
- [InverseScale](../ECDSAAdd/Arithmetic/InverseScale.lean) 的准备/恢复各用两次十位查表、单段Montgomery及三次CX交换。因子F_q(K)=R·2^{-K}，变量段直接返回规范逆元，不另做常数转换。y保存N，carry低256位保存商、顶位保存借位，zero仍全零；factor和共享工作区在中段前清零。恢复段重新得到旧轮工作区全零断言。
- [InverseScaleState](../ECDSAAdd/Arithmetic/InverseScaleState.lean) 显式列出上述历史值，证明使用段保持K与全部历史后可恢复。内部求逆定理由任意奇数q收窄为q%16=15，Montgomery段固定256位；fieldInverse_spec及完整点加规格逐字不变。旧独立半倍原语保留，求逆中只使用新的缩放门列。
- [InverseLoopProof](../ECDSAAdd/Arithmetic/InverseLoopProof.lean) 组合各段，证明复制输出后的完整反计算。[InverseLoopLayout](../ECDSAAdd/Arithmetic/InverseLoopLayout.lean) 保留第一阶段终点的当前k银行和计数工作区；缩放借用视图见InverseScaleBorrow；用布局置换从同一个全局 Nodup 导出所有子布局互异性。

`ExternalMod` 的字段框架由已有倍增实现提取，约减、取负与倍增实际共用。`PairFrame` 只跟踪两组可变寄存器，其余线路逐线保持，服务于条件选择和取负初始化；循环状态则明确区分记录与被借用的计数线路。这些辅助断言用于组合证明，公开规格仍直接列出寄存器。

令N=512、w=257（256位数据加高位）。以下计数来自规格里的同一字面门列：

| 程序段 | Toffoli | 测量 |
| --- | ---: | ---: |
| 第一阶段正向或逆向 N 轮 | N(12w+31) | N(6w+28) |
| 一次规范化取负及临时值清理 | 30w−6 | 24w |
| 一次缩放准备或恢复，含两次查表 | 154,372 | 154,372 |
| 完整 `inverseLoop`，含复制后反计算 | 2N(12w+31)+60w−12+308,744 | 2N(6w+28)+48w+308,744 |

第一阶段实际静态支持为 7w+46+2N：包含交替计数银行和全部 2N 根记录线。取负初始化及第二阶段共用 a、temp 两组 w 位寄存器及 8w+2 位模算术区，共 10w+2；缩放的1054位共享工作区借自其中，518位历史借自原轮实际支持中的y/zero/carry；K仍在旧计数银行，不另加线路。输出为 w 位，合计 **18w+48+2N**，没有把共享支持重复相加，也没有把线路数当成最大存活数。

[InverseLoopResources](../ECDSAAdd/Arithmetic/InverseLoopResources.lean) 证明完整程序的 `wires` 恰好等于 `L.usedWires.toFinset`，再用 Nodup 求基数。`inverseLoop_257_resources` 给出 **3,513,912 Toffoli、1,928,760 次测量、5,698 根静态线路**。该实现空间 O(w+N)，不保存第二阶段数值链；改11已替换原地减半循环，未声称门数或空间最优。计数包含所有测量修正分支触及的线路，但不包含 I5 封装增加的外部输入线路。

## I5：外部输入封装与逆元契约

[InverseSpec](../ECDSAAdd/Arithmetic/InverseSpec.lean) 的常用零输出规格为：

```lean
{{ L.x=X, L.out=0, L.work=0 }} fieldInverse L
{{ L.x=X, L.out=((X : Fp)⁻¹).val, L.work=0 }}
```

前提是 `L.wires.Nodup`、`L.Widths`、0<X<p。Widths 明确要求输入 256 位，内核低位数与模算术宽度 256，内核 a/temp/out 各 257 位，512 对记录和十位计数器；公开 out 为内核 out 的低 256 位。XOR 形式 `fieldInverse_xor_spec` 输出 `O ^^^ ((X : Fp)⁻¹).val`。断言对所有初始相位、所有测量结果成立，并由 `kaliski_inverse_p` 接上数学域逆元；零输入不在契约内。

`inverseLoad` 复制外部 x 到第一阶段 v 的低 256 位，并用 X 门载入 u=p、s=1；其余工作区初始为零。执行原 `inverseLoop` 后，`inverseUnload` 以同样的 XOR 门卸载常数和输入副本，外部 x 保持。v 的内部高位始终留在工作区；内核输出高位初末均为零，后置清零由逆元小于 p<2^256 及 XOR 范围证明，而非作为额外假设。六字段值表用于这三个装载寄存器的局部更新，公开定理仍直接使用寄存器断言。

[InverseResources](../ECDSAAdd/Arithmetic/InverseResources.lean) 证明：

| 同一个 `fieldInverse L` | 精确资源 |
| --- | --- |
| Toffoli | 3,513,912 |
| 测量 | 1,928,760 |
| 静态线路 | 5,954 |

CX/X 包装没有增加 Toffoli 或测量，外部 x 增加 256 根线路。`InverseLayout.wires_perm` 证明公开 x/out/work 与 x 加内核完整线路的置换；`fieldInverse_wires` 从实际门列支持集导出等式，实际支持改用InverseLayout.usedWires（x加内核usedWires），再以其Nodup计数，得到256+5698=5954。内核输出高位仅重新归入工作区，没有重复计算。`fieldInverse_contract` 同时证明 `inverseContract L.x L.out L.work (fieldInverse L) 4541488 1639472 5954` 的正确性、三个资源等式和支持集包含关系。资源为已证内核的封装基线，不声称最优；没有新增测量或让测量结果选择算术。

## 公理披露

本分支 `scripts/verify.sh` 通过：`lake --wfail build` 完成2140项构建，以下284个公开入口的传递公理全部满足白名单。没有运行测试，也没有全环境审计。

```text
'ECDSAAdd.andComputeErase_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.andComputeErase_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.andComputeErase_toffoliCount' depends on axioms: [propext]
'ECDSAAdd.andComputeErase_measurementCount' depends on axioms: [propext]
'ECDSAAdd.andComputeErase_qubitCount' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Triple.seq' depends on axioms: [propext]
'ECDSAAdd.Triple.conseq' does not depend on any axioms
'ECDSAAdd.Triple.frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fullAdder_spec' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.eraseCarry_spec' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.notRegister_spec' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.add_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.sub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.add_erase_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.sub_erase_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.add_twice_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.add_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.sub_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modSub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modAdd_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modSub_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldAdd_zero_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldSub_zero_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldSub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldAdd_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldSub_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldMul_zero_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldMul_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldMul_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.cswap_spec' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.cswap_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.shiftRight_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.shiftLeft_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.shiftRight_left_cancel' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.shift_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.counterIncXor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.counterDecXor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.counterXor_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.counterInc_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.counterDec_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.counter_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.addInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.subInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.addInPlace_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedAddConst_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedSubConst_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedAddInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedSubInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.zeroControlled_correct' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.zeroControlled_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.zeroControlled_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedInPlace_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedInPlace_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.poolInverse_used_perm' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.poolInverseUsedWork_length' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.compareLt_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedCompareLt_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.compareLtConst_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedCompareLtConst_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.compareLt_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modAddInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modAddInPlace_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modAddInPlace_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modSubInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modSubInPlace_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modSubInPlace_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledModAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledModAdd_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledModAdd_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledModSub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledModSub_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledModSub_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rotateRight_spec' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.rotateLeft_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rotate_frame' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.rotate_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rotate_counts' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.halfInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.dblInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modUnary_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modUnary_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modUnary_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.candidatePool_union' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.candidatePool_length' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.halveMod_eq' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.halve_parity' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.double_flag' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_unstep_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_round_active' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.recordRound_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.recordRound_preserves' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.recordRound_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.recordRound_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.recordRound_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiRound_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiUnround_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiRound_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiRound_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiRound_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiRound_257_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldInverse_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldInverse_xor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldInverse_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldInverse_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fieldInverse_contract' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inverseLoop_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inverseLoop_xor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inverseLoop_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inverseLoop_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inverseLoop_257_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiLoop_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.kaliskiLoop_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveStep_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.doubleStep_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.restoreInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveStep_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveInPlace_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveStep_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveInPlace_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inversePrepare_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.inverseRestore_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.negativeInit_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.equalConstant_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.equalConstant_counts' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.equalConstant_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointBranchFlags_correct' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.pointBranchFlags_counts' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.safeDivisor_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.safeDivisor_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.PointAddLayout.allocated_length' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.poolSub_work' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.poolMul_work' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.poolInverse_work_perm' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.PointAddLayout.candidate_interfaces_nodup' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.pointCandidate_zero_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointCandidate_cleanup_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointCandidate_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.candidateResult_coordinates' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointCandidateValues_generic' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.maskedConstant_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.point_classification' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointFlagsCompute_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointFlagsClear_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointFlags_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointCandidate_support' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointOutput_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointAddOut_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointAddOut_xor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointAddOut_support' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointAddOut_finite_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointAddOut_zero_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointSelectors_correct' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointOutput_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointAddOut_finite_ready' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointAddOut_support' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointAddOut_finite_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointAdd_finite_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.controlledPointAdd_zero_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_terminates' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_register_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.halve_mod_correct' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.halveFixed_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_inverse_p' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomeryStep_exact' depends on axioms: [propext]
'ECDSAAdd.montgomeryStep_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomeryStep_restore' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.montgomery_normalize' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.montgomeryValue_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomeryValue_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomeryValue_finish' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomery_standard_conversion' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup_wires_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.p_prime' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.G_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.affineAdd_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.sameX_iff_eq_or_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.ordinary_point_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.doubling_enabled_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.translated_point_flags' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.generic_inplace_values' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.second_denominator_zero_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.exceptional_slope_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.slope_from_output' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divideLoad_values' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divideProduct_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divideAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divideSub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divide_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divide_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divide_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.divide_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointCode_injective' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceNegate_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceSquare_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceClearSlope_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceGeneric_point' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceCorners_effect' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceFinite_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceFinite_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceFinite_full_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceFinite_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceFinite_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.pointInPlaceFinite_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomery_two_stages' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rotateRightBits_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rotateLeftBits_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montNormalize_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montDenormalize_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montPrepare_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montRestore_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.constPrepare_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.constRestore_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montP_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montQ_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montP_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montQ_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montPQ_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montPQ_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montPQ_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulXor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulSub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulControlledAdd_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulControlledSub_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulXor_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulAdd_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulSub_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulControlledAdd_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montMulControlledSub_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montAdapter_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montControlledAdapter_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montAdapter_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montControlledAdapter_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montAdapter_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.montControlledAdapter_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.eraseMask_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedAddInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedSubInPlace_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedAddInPlace_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedSubInPlace_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedInPlace_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedInPlace_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.measuredMaskedInPlace_qubits' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup10_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup10_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup10_core_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.lookup10_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.inverseScaleFactor_bound' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.inverseScaleFactor_relation' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.montgomery_inverseScaleFactor' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.inverseScaleFactor_halving' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_scale_count' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_montgomery_scale' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaleLayout.prepare_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaleLayout.restore_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaleLayout.prepare_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaleLayout.restore_frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaleLayout.wires_subset' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaleLayout.counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseLoopLayout.scaling_widths' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseLoopLayout.scaling_work' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseLoopLayout.scaling_live' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseLoopLayout.scaling_nodup' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseLoopLayout.scaleLive_subset' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.inverseScaling_values' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseScaledMiddle.congr' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.InverseLoopLayout.scaling_fields' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_terminal_even' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.kaliski_terminal_values' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.negative_even_value' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.negative_even_restore' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.negativeEven_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.negativeEven_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.negativeEven_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.negativeEven_wires' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## M3 第一部分：共享工作池与候选计算

公开零工作寄存器规格如下。`candidateResult` 按六减、三乘、一次求逆的次序列出各寄存器的自然数代表元；X/Y 是规范坐标值，G 是预先确定的普通分支标志。本节不是完整点加规格，尚不执行最终点输出选择。

```lean
theorem pointCandidate_zero_spec (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (G : Bool) (X Y : Nat) (cx cy : Fp) (hX : X<p) (hY : Y<p)
    (hG : G=true → X≠cx.val) :
    let V := candidateResult G X Y cx.val cy.val
    {{ L.extendedX=X, L.extendedY=Y, L.dx=0, L.dy=0,
       L.slope=0, L.square=0, L.offset=0, L.candidateX=0,
       L.delta=0, L.product=0, L.candidateY=0, L.constant=0,
       L.divisor=0, L.inverse=0, L.pool=0, L.generic=G }} pointCandidateCompute L cx cy
    {{ L.extendedX=X, L.extendedY=Y, L.dx=V .dx, L.dy=V .dy,
       L.slope=V .slope, L.square=V .square, L.offset=V .offset, L.candidateX=V .x,
       L.delta=V .delta, L.product=V .product, L.candidateY=V .y, L.constant=0,
       L.divisor=V .divisor, L.inverse=V .inverse, L.pool=0, L.generic=G }}
```

`pointCandidate_cleanup_spec` 交换这里的前后状态，使用 `pointCandidateClear` 恢复 dx、dy、斜率、平方、中间差、候选坐标、乘积、常量字、除数和逆元全部为零。输入坐标、G 和共享池保持；两个 Triple 均对所有初始相位和测量记录证明相位恢复。清理复用前向 XOR 模块，不反转含测量的门列。内部 `CandidateValues` 是十四个命名寄存器的值表，支持逐段组合；公开接口仍直接使用 `L.dx=...` 等寄存器断言。

`candidateResult_coordinates` 证明输出代表元等于域上的 `pointCandidateValues` 坐标；`pointCandidateValues_generic` 将 G=true 时的候选与既有 `genericX/genericY` 公式对应。G=true 只要求横坐标不同，以保证普通除法非零；G=false 的除数固定为 1，因此没有对零求逆。完整点加现已由角落分类推导这个内部前提，不向最终调用者暴露几何排除条件；见下一节。

| 同一具体程序 | Toffoli | 测量 |
| --- | ---: | ---: |
| `pointCandidateCompute` | 4,660,144 | 3,073,200 |
| `pointCandidateClear` | 4,660,144 | 3,073,200 |

`pointCandidate_counts` 使用已证算术模块的精确资源公式，包含安全除数的 256 个 CCX。常量字装卸、平方乘数复制使用 X/CX，不增加上述两种计数。

共享映射是实际布局构造，不是抽象存在前提：

- `poolSub`：输入、输出直接连接调用方，五个 257 位工作字和两根进位使用池前 1,287 位；`poolSub_work` 给出准确工作列表。
- `poolMul`：两段Montgomery历史与共享辅助区使用池前1,827位；`poolMul_work` 给出准确工作列表。
- `poolInverse`：单轮共享区、512 对记录、模算术区及 a/temp、输出高位使用池前 5,699 位；`poolInverse_work_perm` 给出工作列表置换。占位记录字段在固定循环内由每轮独立记录替换，不另占工作线。
- `PointAddLayout.candidate_interfaces_nodup` 从唯一的全布局 `Nodup` 推出每次算术调用的接口互异；前缀映射据此满足已有内核的条件。平方使用独立的乘数副本，没有重复控制 CCX。

`PointAddLayout.allocated_length` 的 9,813 是布局字段分配数，不能作为候选程序的实际 qubit 定理。下一节给出完整点输出的精确支持集与总资源；受控原地版本见第三部分。本部分不声称资源最优，已接入 O(n) 空间 Montgomery 模乘。

标志辅助程序也有独立状态证明：`equalConstant_correct` 按 XOR 写入 control∧(输入=k)，恢复输入及零检测工作线；其成本为 2n 个 CCX、零测量，支持集由 `equalConstant_wires` 精确给出。`pointBranchFlags_correct` 用两个负控制 CCX 生成 generic/double 标志，其他线路保持。`safeDivisor_correct` 对任意目标初值 XOR 写入 G?X:1，便于同程序再次清零。这些原语在下一节的完整点分类和最终选择中组合。

验证脚本增加上述公开零工作规格、清理规格、资源、布局映射及数学对应关系的传递公理检查；只允许 `propext`、`Classical.choice`、`Quot.sound`。没有数值测试、真值表或额外公理。


## M3 第二部分：完整经典常量点加

`pointAddOut` 是具体电路，C 是构造时给定的合法曲线点，R 是寄存器中的变量点。公开常用规格：

```lean
theorem pointAddOut_spec (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R C : Point) :
  {{ L.input=R,L.output=(0 : Point),L.work=0 }} pointAddOut L C
  {{ L.input=R,L.output=(R+C),L.work=0 }}
```

组合规格不要求输出位串编码曲线点。有限位 OF 与两个自然数寄存器值 OX/OY 可以是任意初值，位宽由寄存器本身决定：

```lean
theorem pointAddOut_xor_spec (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R C : Point) (OF : Bool) (OX OY : Nat) :
  {{ L.input=R,L.output.finite=OF,L.output.x=OX,L.output.y=OY,L.work=0 }} pointAddOut L C
  {{ L.input=R,L.output.finite=(OF^^pointFinite (R+C)),
     L.output.x=(OX^^^pointX (R+C)),L.output.y=(OY^^^pointY (R+C)),L.work=0 }}
```

`pointFinite/pointX/pointY` 读取规范编码；O 的三者为 false/0/0。所有 Triple 对任意初始相位及测量记录成立，证明相位恢复、输入不变、全部工作位清零。没有 hG、横坐标不同、纵坐标非零或结果有限等额外公开前提。

有限 C=(cx,cy) 时，`zeroPorts` 直接连接输入坐标并借共享池前 256 位作零检测链。ex=finite∧(x=cx)，ey=finite∧(y=−cy)，g=finite∧¬ex，d=ex∧¬ey。`point_classification` 证明输入 O 选 C，g 选普通公式，ex∧ey 选 O，d 选经典 2C。最后一种情形由曲线性质推出 R=C，允许 2C=O，不依赖额外群阶证明。分类推出 g=true 时横坐标不同，因此候选求逆对每条分支都有非零输入。

输出依次异或 g 控制的两个候选低坐标及有限位、d 控制的 2C、¬finite 控制的 C。`PointEffect` 在组合证明中记录三字段 XOR、相位及目标之外的逐线保持；`PointBoundary` 保留候选段外的标志和输出值。候选计算及清理使用同一组前向 XOR 模块；最后重算标志并清空它们，未倒放测量程序。C=O 在构造期直接选择 `pointCopy`。

| 同一 `pointAddOut` 门列 | Toffoli | 测量 | 实际静态线路 |
| --- | ---: | ---: | ---: |
| C 有限 | 9,321,828 | 6,147,424 | 9,780 |
| C=O | 0 | 0 | 1,026 |

有限分支的计数为两段候选 2×4,660,144，加标志计算/清理 2×514，加输出复制 512；测量为两段候选 2×3,073,200 加两次标志检测 2×512。常量写入和负控制包夹仅使用 X/CX。

`pointAddOut_support`证明实际支持等于L.usedWires.toFinset。相比布局分配，排除dx/dy/delta/yg四根填充高位和池中29根旧out：dy/delta由模减写低256位，后续Montgomery源也只读低256位；平方副本仍触及slope全字。usedWires_nodup与usedWires_length给出9,780，其中实际池支持5,670。该数来自静态门列并集，不是最大同时存活数。

公开资源入口是 `pointAddOut_finite_resources` 和 `pointAddOut_zero_resources`，正确性和资源指向同一个 `pointAddOut` 定义。互异条件通过原有算术接口及新增输出/标志接口从 L.wires.Nodup 推出，候选乘法保持独立乘数副本，没有重复控制 CCX。

本次完整验证通过：`lake --wfail build` 完成 2,056 项，脚本选定的 109 个公开定理全部通过传递公理检查。新增入口覆盖完整规格、分类、标志清理、输出效果、候选/整段支持集和资源，白名单仍仅为 `propext`、`Classical.choice`、`Quot.sound`。没有测试、数值对照、真值表、额外公理或证明资源限制放宽。受控原地点加的后续实现见第三部分。


## M3 第三部分：完整受控原地点加

```lean
theorem controlledPointAdd_spec (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (b : Bool) (R C : Point) :
  {{ L.control=b,L.point=R,L.work=0 }} controlledPointAdd L C
  {{ L.control=b,L.point=(if b then R+C else R),L.work=0 }}
```

`L.core` 复用完整点加布局；`L.point` 是输入点，`L.temporary` 是临时输出点。`L.work` 包括临时点的 513 位、全部算术工作区及三个输出选择位。唯一全局 `Nodup` 同时约束原布局、外部控制位和三个选择位；宽度条件复用已证完整点加。公开规格没有横坐标不同、非零纵坐标或结果有限等几何前提，覆盖 R/C/结果为 O、互逆点、倍点和控制为假。

有限C的原地程序执行完整点相等检测，生成O、启用的倍点、相反点及普通分支标志；普通分支用两次保留历史的除法和另外三个乘积直接更新坐标。第二除数为零时用λ*清斜率，角落分支用四次常量XOR写回；从输出重算分类，再清全部七个标志。C=−C时禁用倍点标志，最终规格没有新增几何前提。

| 同一具体程序 | Toffoli | 测量 | 实际静态线路 |
| --- | ---: | ---: | ---: |
| 有限 C 的独立 `controlledPointAddOut` | 16,173,722 | 8,792,720 | 9,718 |
| 有限 C 的 `controlledPointAdd` | 8,946,186 | 5,772,554 | 6,218 |
| C=O 的 `controlledPointAdd` | 0 | 0 | 0 |

`controlledPointAdd_finite_resources`复用相同`pointInPlaceFinite`门列的计数与支持定理。实际支持为点513位、控制1位、斜率256位、七个标志和求逆核心5,441位；借用区已在核心内，不重复计数。公共布局仍分配9,817位，未用银行通过frame保持零。空间为O(n+N)，不称为最大同时存活数或最优结果。

独立XOR接口`controlledPointAddOut`仍保留，原地程序不再调用两次XOR加点交换；只服务旧组合的ControlledPointPair及装载/擦除组合已删除。所有Triple对任意相位和测量记录成立，平方有独立乘数副本，子视图均由全局Nodup证明互异。完整验证及实际公理输出见本文件公理块；本批新增说明见末尾改3节。


## 基础层：原地加减法器、受控加减与 Gidney 比较器

重做计划（[REWORK_PLAN](REWORK_PLAN.md) §1.1–§1.3、§5）的共用原语。接口直接用线路列表，宽度相等作为长度前提，互异条件是一个 `Nodup`；每条程序给 Triple、输出以外逐线保持（`_correct`）和同程序资源。改 1 的求逆第二阶段已复用原地常数加减与受控比较器；改 2 将继续组合这些原语。

[InPlaceAdder](../ECDSAAdd/Arithmetic/InPlaceAdder.lean) 的 `majority` 是现有 `fullAdder` 的前六门：进位异或写入 carry，三个输入恢复，不写和位。`addInPlace` 每位先算进位、递归处理高位，再用现有 `eraseCarry` 擦除本位进位——此时 x、y、cin 仍是原值，`eraseCarry_spec` 的前提逐字成立——最后用两个 CX 把和位写回 y；最高位只写和位、不算进位，进位链比位宽少一根。

```lean
theorem addInPlace_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) (C : Bool) :
  {{ x = X, y = Y, cin = C, carry = 0 }} addInPlace x y carry cin
  {{ x = X, y = ((X + Y + C.toNat) % 2^y.length), cin = C, carry = 0 }}

theorem subInPlace_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) :
  {{ x = X, y = Y, cin = false, carry = 0 }} subInPlace x y carry cin
  {{ x = X, y = ((Y + 2^y.length - X) % 2^y.length), cin = false, carry = 0 }}
```

`subInPlace` 是"按位取反 y、加 x、再取反"，恒等式 ¬(¬Y + X) = Y − X (mod 2^n)。受控常数加减 `maskedAddConst` / `maskedSubConst`：零寄存器 T 受 c 控制装入 K（`maskedConstant`），原地加/减到 y，再同样受控清 T；受控寄存器加减 `maskedAddInPlace` / `maskedSubInPlace`：t ← c·src（受控复制），原地加/减到 y，再清 t。四条规格的形状相同：

```lean
theorem maskedAddConst_spec (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (Y : Nat) :
  {{ c = C, T = 0, y = Y, cin = false, carry = 0 }} maskedAddConst c T y carry cin K
  {{ c = C, T = 0, y = ((Y + (if C then K else 0)) % 2^y.length), cin = false, carry = 0 }}

theorem maskedAddInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat) :
  {{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }} maskedAddInPlace c src t y carry cin
  {{ c = C, src = S, t = 0, y = ((Y + (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }}
```

减法版把 `Y + …` 换成 `Y + 2^y.length − …`。控制为假时加数为零、y 不变，T/t 装入又清除的都是零。

[Compare](../ECDSAAdd/Arithmetic/Compare.lean) 是 Gidney 2018 的比较器：`compareChain` 每位用 `majority` 算进位、递归到最高位，递归到底时 cin 就是最高进位，用 `flipBelow` 读出（无控制：`X target; CX top target`；受控：`CX c target; CCX c top target`），再按相反顺序用现有 `eraseCarry` 擦除进位链；三个输入寄存器全程不变。`compareLt` 先把 y 按位取反、cin 置 1，链算的是 x + ¬y + 1，最高进位 = [x ≥ y]，所以 target 得到 [x < y]；`compareLtConst` 把常量装进零寄存器 T 再比较、再卸载。

```lean
theorem compareLt_spec (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length = y.length) (X Y : Nat) (T : Bool) :
  {{ x = X, y = Y, carry = 0, cin = false, target = T }} compareLt none x y carry cin target
  {{ x = X, y = Y, carry = 0, cin = false, target = (T ^^ decide (X < Y)) }}

theorem compareLtConst_spec (x T carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ T ++ carry)).Nodup) (hx : x.length = T.length)
    (hc : carry.length = T.length) (K : Nat) (hK : K < 2^T.length) (X : Nat) (B : Bool) :
  {{ x = X, T = 0, carry = 0, cin = false, target = B }} compareLtConst none x T carry cin target K
  {{ x = X, T = 0, carry = 0, cin = false, target = (B ^^ decide (X < K)) }}
```

受控版 `maskedCompareLt_spec` / `maskedCompareLtConst_spec` 多一个 `c = C` 断言，结果为 `T ^^ (C && decide (X < Y))`。比较器需要 n 根进位线（最高进位是结果），加法器只需 n−1 根。

[ModularHalving](../ECDSAAdd/Math/ModularHalving.lean) 新增三条纯数学引理，供改 1 的减半/加倍轮清标志：`halveMod_eq`（减半门列的值：奇数先加 p 再右移）、`halve_parity`（p 奇、r<p 时 r 奇 ⇔ (p+1)/2 ≤ halveMod p r）、`double_flag`（(p+1)/2 ≤ r ⇔ p ≤ 2r；此时 2r mod p = 2r − p 且为奇数，否则 = 2r 为偶数）。

| 同一具体程序，n = y.length | Toffoli | 测量 | 静态线路数（布局互异） |
| --- | ---: | ---: | ---: |
| `majority` | 1 | 0 | 4 |
| `addInPlace` / `subInPlace` | n−1 | n−1 | 3n |
| `maskedAddConst` / `maskedSubConst` | n−1 | n−1 | ≤ 3n + 1（T 计入；K=0 时不触及控制位，实际为 3n） |
| `maskedAddInPlace` / `maskedSubInPlace` | 3n−1 | n−1 | 4n + 1 |
| `compareLt` 无控制 / 受控 | n / n+1 | n | 3n+2 / 3n+3 |
| `compareLtConst` 无控制 / 受控 | n / n+1 | n | 3n+2 / 3n+3 |

`addInPlace_resources` 与 `compareLt_resources` 给出加减法器和比较器的三项资源；受控变体的计数由其组成部分的计数直接相加（受控复制每次 n 个 CCX），没有单独的资源定理。与现有 `rippleAdder`（n / n / 4n+1）相比，原地加法省去输出寄存器和最高位进位；与已删除的旧 `borrowXor`（2n / 2n）相比，比较器省一半。线路数是静态支持集的基数，不是最大同时存活数；这些是原语，不声称任何上层成本。

基础层验证通过：`lake --wfail build` 完成 2,069 项；脚本选定的 133 个公开定理全部通过传递公理检查，白名单仍仅为 `propext`、`Classical.choice`、`Quot.sound`。新增 15 个入口覆盖加减法器规格与资源、四条受控加减规格、四条比较器规格与资源、三条减半/加倍引理。没有测试、数值对照、真值表、额外公理或证明资源限制放宽。

## 改 1 的公开寄存器接口

下面是源码公开定理的前后条件。省略的共同参数只包括全局 Nodup、位宽与范围：q 为奇数，X<q，2q 能装入 data，完整512轮规格要求 K≤512；单轮仅要求 i<512。`(halveMod q)^[K] X` 表示对 X 做 K 次模减半。

```lean
-- halveStep_spec
{{ L.data=X, L.counter.x=K, L.work=0 }} halveStep L q i
{{ L.data=(if i<K then halveMod q X else X), L.counter.x=K, L.work=0 }}

-- doubleStep_spec
{{ L.data=X, L.counter.x=K, L.work=0 }} doubleStep L q i
{{ L.data=(if i<K then (2*X)%q else X), L.counter.x=K, L.work=0 }}

-- halveInPlace_spec
{{ L.data=X, L.counter.x=K, L.work=0 }} halveInPlace L q 0 512
{{ L.data=(halveMod q)^[K] X, L.counter.x=K, L.work=0 }}

-- restoreInPlace_spec
{{ L.data=(halveMod q)^[K] X, L.counter.x=K, L.work=0 }} restoreInPlace L q 0 512
{{ L.data=X, L.counter.x=K, L.work=0 }}
```

`HalvingLayout.work` 包含 active、flag、cin、constant、整条 carry、计数银行的 y/out/carry 与 compareCin；不包含 data 和计数输入 counter.x。原来的 `HalvingValues` 规格改名为 `_values`，只用于内部组合；公理检查使用上面的寄存器入口。未调用的 `HalvingLayout.count_le` 已删除。

## 改 1 的准备与恢复接口

`inversePrepare_spec` / `inverseRestore_spec` 直接写出 a 中得到数学逆元。共同前提是全局 Nodup、512 轮、10 位计数器、256 位 q、257 位内部数据，以及 q 奇、0<X<q、q 与 X 互素；secp256k1 的 p 自动满足相应模数条件。

```lean
-- inversePrepare_spec
{{ L.first.u=q, L.first.v=X, L.first.r=0, L.first.s=1,
   L.first.k=0, L.first.done=false, L.work=0 }} inverseCompute L q
{{ L.a=((X : ZMod q)⁻¹).val, L.temp=0, L.arithmetic.wires=0,
   InverseHistory L q X st }}

-- inverseRestore_spec
{{ L.a=((X : ZMod q)⁻¹).val, L.temp=0, L.arithmetic.wires=0,
   InverseHistory L q X st }} inverseUncompute L q
{{ L.first.u=q, L.first.v=X, L.first.r=0, L.first.s=1,
   L.first.k=0, L.first.done=false, L.work=0 }}
```

`InverseHistory` 只是既有第一阶段断言的命名组合，不含 a、temp 或模算术区，也没有新增状态框架。它完整保存输入 X 对应的 u/v/r/s、记录带、计数 k、计数工作区清零和 active=false；定义通过原有 `InverseRest` 与 `HalvingCounter` 给出精确状态，恢复段不能仅凭 a 的逆元值忽略历史。`inverseCompute_values` 仍作内部组合依据；新入口再用 `kaliski_correct` 将算法迭代结果改写为数学逆元。

后续 divide 可以在这对准备/恢复接口之间使用逆元，但须保持 `InverseHistory`，归还 a 中的同一逆元，清零 temp 与模算术区后才能恢复。公开 `fieldInverse_spec` / `fieldInverse_xor_spec` 的陈述与资源不变。

原地轮的资源均为 `3w+20` Toffoli、`2w+19` 次测量；w=257 时为 791/533，512 轮单向为 404,992/272,896。`halveStep_wires` 与 `halveInPlace_wires` 从门列给出精确支持集；求逆借用 `ModLayout.reg .modulus`、`.carrySum`、`cinSum/cinDiff`，全局 Nodup 推出所有子程序的互异条件。


### 改 4 首批：计数活动比较

`counterActiveXor L target i` 直接执行 `compareLtConst ... (i+1)` 再 X target；公开 Triple 只列 target/x/y/cin/carry，仅要求十位和 i<512，K 的取值由寄存器自然限制。out 的任意初值由 frame 逐线保持。旧 borrowXor/constantBorrowXor 及专用转发证明已删除；记录段随后由一次受控比较替代两次减法，CaseRecord 与 subtraction_high 均已删除。

活动比较十位成本从20/20降至10/10，完整求逆3072次调用共省30,720 Toffoli/测量。半倍实际支持为 HalvingLayout.usedWires，排除 counter.out；完整求逆仍使用该银行做 counterInc/Dec，故其5,955根内部静态线路不变。recordRound 的门列与成本未改。


### 改 4 记录段直接受控比较

`recordRound_spec` 直接列出 u/v/active、任意初值的 swap/subtract，以及清零的 oddWork/bothWork/carry/cin；不再要求有符号差范围。条件位先保存，`compareLt (some bothWork)` 直接将 `[v<u]` XOR 到 swap，比较完全恢复 u/v 后再清条件。`recordRound_correct` 对所有测量记录保持相位，`recordRound_preserves` 保证除两个记录位外逐线保持，y/out 可有任意初值。同一个前向门列支持恢复旧输入后的记录清理。

`recordRound_counts` 为w+5 Toffoli/w测量；`recordRound_wires` 的精确支持是u/v/carry加六根控制、记录与cin线，完整轮仍为8w+48线。CaseRecord、caseLayout及私有 subtraction_high 已删除。记录段状态适配层去掉无用范围前提，公开正逆轮、求逆与点加功能陈述保持。每次完整求逆减少263,168 Toffoli/测量，已计入本文件和README的当前值。

### 改 2 C1：原地模加减

`ModInPlaceLayout` 的 a/z/constant/mask 宽 n+1，carry 宽 n，另有 cin/flag；z=low++[high]，low 宽 n。work=constant++carry++[cin]++mask++[flag]。普通接口要求 L.wires.Nodup，受控接口要求 (c::L.wires).Nodup；共同数值前提为 0<p<2^n、A≤p、Z<p。

```lean
{{ L.a=A,L.z=Z,L.work=0 }} modAddInPlace L p
{{ L.a=A,L.z=((Z+A)%p),L.work=0 }}
{{ L.a=A,L.z=Z,L.work=0 }} modSubInPlace L p
{{ L.a=A,L.z=((Z+p-A)%p),L.work=0 }}
{{ c=B,L.a=A,L.z=Z,L.work=0 }} controlledModAdd c L p
{{ c=B,L.a=A,L.z=(if B then (Z+A)%p else Z),L.work=0 }}
{{ c=B,L.a=A,L.z=Z,L.work=0 }} controlledModSub c L p
{{ c=B,L.a=A,L.z=(if B then (Z+p-A)%p else Z),L.work=0 }}
```

四个 `_spec` 对所有初始相位和测量记录成立；各 `_frame` 保持 z 外每根物理位。模加核 work 仅含 constant/carry/cin，受控复制后的活跃 mask 是核源，不与核工作区重叠。源可等于 p，使模减在 A=0 时经过临时 p；`negRaw` 两次前向取负恢复源，无需反转测量。半倍与 Horner 内核见下文 C2；域乘法已在 D 接入。

| 同一程序（n>0） | Toffoli | 测量 | 实际线路 |
| --- | ---: | ---: | ---: |
| modAddInPlace | 4n−1 | 4n−1 | 4n+4 |
| modSubInPlace | 6n−1 | 6n−1 | 4n+4 |
| controlledModAdd | 6n−1 | 4n−1 | 5n+5 |
| controlledModSub | 8n−1 | 6n−1 | 5n+6 |

线路数由门列支持集等式及全局 Nodup 求基数：普通加减不触及 mask/flag，受控加不触及源高位/flag，受控减取反源高位但不触及 flag。全为 O(n) 静态支持，未声称最优。数学约减、低位受控复制、核四阶段、外层加法、取负、减法组合按用途拆入同名辅助文件。未改现有域乘法、求逆与点加接口或成本。


### 改 5：零检测测量清理与轮内原地受控加减（改 2 接入前阶段值）

zeroControlled 保留原名及 Triple，负AND链在递归读出后以 X/measureX(CZ)/X 擦除；对全部测量记录恢复相位，输入、控制和工作位恢复，任意初始目标按XOR写入。空输入仍为CX。资源变为n/n/2n+2，equalConstant与点加标志共用此实现；标志compute/clear各514 Toffoli/512测量。safeDivisor没有零检测，256/0不变。

inplaceArithmetic 复用已有 maskedAddInPlace/SubInPlace，src=g、临时字=y、目标=f、进位为carry.take(w−1)。各3w−1/w−1；删除旧masked中转与out交换及已无调用的RoundFrame.exchange，RoundFrame.inplace不再要求out初值为零。公开正逆轮、逆元和点加功能陈述保持。

单轮14w+31/4w+28，w=257时3629/1056/1847；完整逆循环4,541,488/1,639,472/5,698，外层求逆同门数/5,954线。RoundDataLayout、轮、循环和逆元的usedWires均由同一门列精确支持证明；原分配布局与编号保持。poolInverseUsedWork显式跳过10+8i（0≤i≤256），长度5442；poolInverse_used_perm及poolInverse_support给出精确接线，不用分配5699冒充实际支持。

候选各13,227,848/7,961,672；pointAddOut为26,457,236/15,924,368/74,020；controlledPointAdd为52,914,997/31,848,736/74,024。共享模乘池仍覆盖全部原池，故点加实际线数不变。公开公理检查增加零检测正确性/规格/资源、原地受控算术计数/支持、池置换/长度七项；完整脚本164项，无测试、新公理或证明资源放宽。

### 改 2 C2：无控制半倍与 Horner 内核（历史阶段，Horner电路现已替换，旧文件已清理）

`ModUnaryLayout` 的 z=low++[high]，low 宽 n，constant/mask 宽 n+1，carry 宽 n，另有 cin/flag；work=constant++carry++[cin]++mask++[flag]。`MulInPlaceLayout` 在此基础上加入 x（n+1 位）、y（n 位），acc 借用 unary.z，work 不含 acc。各自要求完整 wires.Nodup；子视图不重新分配线路。数值前提为 p%2=1、p<2^n，半倍另需 Z<p；Horner 需 X<p、Y<2^n，不要求 Y<p。

```lean
{{ U.z=Z,U.work=0 }} dblInPlace U p
{{ U.z=((2*Z)%p),U.work=0 }}
{{ U.z=Z,U.work=0 }} halfInPlace U p
{{ U.z=(halveMod p Z),U.work=0 }}
{{ M.x=X,M.y=Y,M.acc=0,M.work=0 }} mulInto M p
{{ M.x=X,M.y=Y,M.acc=((X*Y)%p),M.work=0 }}
{{ M.x=X,M.y=Y,M.acc=((X*Y)%p),M.work=0 }} mulClear M p
{{ M.x=X,M.y=Y,M.acc=0,M.work=0 }}
```

以上四个 `_spec` 对任意初始相位和测量记录成立。`modUnary_frame`、`mulInto_frame`、`mulClear_frame` 保持目标外每根线路。物理旋转由三 CX 相邻交换组成，布局不随轮次改变；加倍以结果奇偶清借位，减半以结果与 (p+1)/2 比较清原奇偶。Horner 用 H_i=(X*(Y/2^i))%p 的正逆递推组合；清理是前向减法与减半，未倒放测量。接口只承诺零累加器/对应乘积，未声称任意初值乘加。

| 同一程序（n>0） | Toffoli | 测量 | 实际静态线路 |
| --- | ---: | ---: | ---: |
| dblInPlace | 2n−1 | 2n−1 | 3n+3 |
| halfInPlace | 2n | 2n | 3n+4 |
| mulInto | n(8n−2) | n(6n−2) | 6n+4 |
| mulClear | n(10n−1) | n(8n−1) | 6n+6 |

n=256 的内核分别为 523,776/392,704/1,540 与 655,104/524,032/1,542。`modUnary_wires` 排除从未触及的 mask；加倍还排除 flag。`mulInPlace_wires` 前向排除 x[n] 与 flag，清理触及完整布局；逐轮控制覆盖 y 的每一位。qubitCount 由这些等式及 Nodup 得出，是 O(n) 静态支持，不是最大同时存活数或最优性声明。

本批复用 C1 的两个内部阶段引理（`modAddCore_reduce`/`modAddCore_addback` 改为可跨文件引用，陈述和证明未变）。C2 阶段未改旧 fieldMul、求逆、点加门列或成本；D 已完成适配器与池布局迁移，见 M2 节。验证新增 16 个公开入口，覆盖旋转、半倍和内核的规格、frame、支持与资源；公理披露见上方本次实际输出。

### 改 2 D：三个适配器与域乘法接入

`mulXor_spec` 对任意输出 O，`mulAdd_spec` / `mulSub_spec` 对 O<p，均保留 x/y、恢复相位并清零 F.work（含临时积）。对应 frame 保持 out 外每根位；p 奇、p<2^n、X<p、Y<2^n。三个资源分别为 1,178,880/916,736、1,179,903/917,759、1,180,415/918,271，均为 1,799 根静态线。未增加受控乘加接口；上层若采用受控中段，需另证其组合。

D阶段（改6a前）的`poolMul`使用前1,029位，保持求逆 5,699 位池前缀编号。`candidatePool_union` 证明实际池支持恰好是模减前 1,287 位与求逆支持的并集；前 160 个旧 out 位置由模减触及，剩余 97 位仍不触及。`candidatePool_sublist` 证明它是分配池的子列表，`candidatePool_length` 给出 5,602，由全局 Nodup 得出精确支持基数。完整点加排除另外两根填充高位：普通点加 9,714，受控加外部控制/三个选择位后 9,718；分配数分别为 9,813/9,817，不混同实际线数。

D阶段保留四次求逆与十二次 XOR 模乘，阶段 Toffoli 总计为 `4×4,541,488 + 12×1,178,880 + 35,445 = 32,347,957`，测量 17,585,440。历史 §12 的 37,493 额外项在改 5 的相等检测替换后已减少 2,048，故从同程序资源重新推导，没有沿用历史常数。完整功能规格及所有点加角落分支保持。

删除已无引用的 MultiplyLayout、MultiplyResources、Multiply、Double、MaskedAccumulate 五个文件，保留求逆/基础层仍使用的 Accumulate 和 ModularXorSteps。公开验证移除三个旧 modMul 入口，增加十个适配器/池支持入口；采用当前源码的实际公理输出，无测试、新公理、native_decide 或证明资源放宽。


### 改 3 数学：原地更新与输出侧清理条件

[Math/PointInPlace.lean](../ECDSAAdd/Math/PointInPlace.lean) 已证明八个入口，服务 REWORK_PLAN §16 的具体清理步骤。这八个入口证明群律与域等式，已由下文原地点加电路复用。

| 入口 | 已证含义 |
| --- | --- |
| `sameX_iff_eq_or_neg` | 两个有限合法点同横坐标，当且仅当相同或互为相反点 |
| `ordinary_point_iff` | 普通分支恰好排除 O、C、−C |
| `doubling_enabled_iff` | cy≠−cy 当且仅当 C≠−C；不添加没有二阶点的假设 |
| `translated_point_flags` | b 控制平移后的三个输出谓词，分别等价于输入 O、启用的 C、−C；b=false 时全假 |
| `generic_inplace_values` | 依次清 y、得到 cx−x₃、重建 y₃ 的三条域等式 |
| `second_denominator_zero_iff` | 普通分支内 cx−x₃=0 当且仅当 R=−2C |
| `exceptional_slope_eq` | 此时斜率等于 `exceptionalSlope C`，可供后续常量 XOR 清理 |
| `slope_from_output` | 第二除数非零时 `(y₃+cy)/(cx−x₃)=λ` |

例外斜率直接用现有 `coordinates` 与 `genericSlope` 定义，R*=O 时坐标按已有编码取零。等式只在普通分支可达例外上使用；没有增加 R≠±C、cy≠0 或 C+C≠O 的最终接口前提。三个输出标志的陈述显式包含外部控制，以及倍点启用条件 C≠−C。证明为本项目的代数推导，未增加状态框架、测试或公理。


### 改 3 除法：保留求逆历史的受控累加

`DivideLayout` 含控制、三个256位寄存器（denominator、numerator、acc）和一个现有 `InverseLoopLayout`。work 为 inner 的完整分配线路，包含未执行的旧XOR输出银行；统一 Widths 与 wires.Nodup。两个入口允许任意规范初始累加器，只在控制为真时要求分母非零：

```text
D<p, E<p, Z<p, B=true → D≠0
{{ control=B, denominator=D, numerator=E, acc=Z, work=0 }} divideAdd L
{{ control=B, denominator=D, numerator=E,
   acc=(if B then (Z+inv(D)*E)%p else Z), work=0 }}
{{ control=B, denominator=D, numerator=E, acc=Z, work=0 }} divideSub L
{{ control=B, denominator=D, numerator=E,
   acc=(if B then (Z+p-(inv(D)*E)%p)%p else Z), work=0 }}
```

这里 inv(D) 是 `((D : Fp)⁻¹).val`。`divideAdd_spec` / `divideSub_spec` 对全部初始相位与测量记录成立；`divide_frame` 保持 acc 外每根位。控制假时分母可以为零，内部改用1，仍执行全部准备/乘积/恢复门列。

装载把安全分母直接写入v，准备段得到a与存活历史；乘法仅借temp++arithmetic共2315位中的前1828位。`multiply_borrow` 证明该段恰为输出高位加乘法工作区；全局Nodup推出所有控制/输入/输出/工作位互异。受控累加后前向montQ清理两段历史与工作区，规范输出范围归还借用高位零；`divideProduct_correct` 由此证明整个求逆内部状态逐线保持。恢复使用原 `InverseMiddle` 断言和前向 inverseUncompute，最后卸载u/s/v。未复制逆元，未倒放测量，未建立回调式求逆框架。

| 同一程序 | Toffoli | 测量 | 实际静态线路 |
| --- | ---: | ---: | ---: |
| divideAdd | 3,895,383 | 2,309,207 | 6,210 |
| divideSub | 3,895,895 | 2,309,719 | 6,210 |

`divide_wires` 给出控制、三个外部寄存器与inner.usedCoreWires的精确支持等式；后者5441位，合计1+3×256+5441=6210。`divide_qubits` 从该等式及Nodup得出基数，不把未使用的旧输出银行算入实际支持，也不声称最大同时存活数。门数由相同字面门列的原语计数相加，包含两遍受控分母复制。

除法批文件按现有用途分为布局/直接门列、布局互异、装卸、乘积阶段、状态边界、完整规格与frame、计数与支持；该批只新增除法文件，点加本体在后续批接入。原地点加本体及§16总体8,946,186/5,772,554/6218已在本批实现，见下节。

### 改 3 原地点加本体与公开入口

`controlledPointAdd_spec`的输入输出陈述保持原样，有限分支已改用`pointInPlaceFinite`。`PointInPlaceValues`直接列普通阶段的x/y/λ/g/e/q及干净求逆区；`PointInPlaceBoundary`直接列合法点、控制、七个标志及干净工作区。二者分别服务算术和整点阶段组合，没有添加通用状态框架。

`pointInPlaceGeneric_point`证明普通分支选中时R→R+C，未选中时R保持；`pointInPlaceCorners_effect`给出四次XOR的逐字段效果；`pointInPlaceFinite_spec`组合输入分类、普通分支、角落写回及输出清标志。`pointInPlaceFinite_frame`保持点外全部位，`pointInPlaceFinite_full_spec`恢复公共布局所有工作位，含未使用的旧银行。

平方先复制λ到独立S，执行montMulSub，再清S，最后加3cx；常数加法会复用S区域，故必须采用这个顺序。montQ不读取点x，调整不改变算术与计数。两次除法只借准备后为零的temp/arithmetic；历史在恢复前完整保留。控制false执行同一固定门列，C=O构造为空；不增加R≠±C、cy≠0或C+C≠O前提。

资源定理指向同一有限程序：8,946,186 Toffoli、5,772,554测量、6,218实际线。`pointInPlaceGeneric_wires`和`pointInPlaceFinite_wires`证明双向支持，`inPlaceUsedWires_nodup`由原全局互异导出基数；保留9,817分配编号。新增12个审计入口覆盖关键阶段、完整语义/frame和三种资源；无测试、新公理、native_decide、linter抑制或证明限制放宽。
## 改6a第一批：数学与查表（历史48/48阶段，改7现已替换）

`Math/Montgomery.lean` 已证明低四位为15的模数下精确整除、单轮界、恢复关系、规范化与整数循环不变量，及ZMod中的标准表示转换等式。secp256k1的p%16=15由Lean内核计算确认，修正表简化为m*p。电路循环P/Q已在后续批次实现，见末节。

`Arithmetic/Lookup.lean` 提供四位地址、16项经典表的XOR查表；`lookup_spec`直接给地址D、目标T、scratch=0的前后值，保持全部目标外线路和相位，覆盖所有测量记录。每项三层AND与反向测量CZ清理，固定16项（包括零表项），`lookup_counts`证明48 Toffoli/48测量；`lookup_wires_subset`只给支持上界，不声称任意表都触及全部目标位。没有CCZ、原生求值公理或测试。

完整verify通过2114项构建、227条实际公理输出（上方逐行收录），新增12个公开检查入口。第一批时域乘法和点加门列/资源不变；适配器已在下述第三批实现。


## 改6a第二批：两段准备/恢复 P/Q（改7前历史阶段）

`MontPrepare.lean` 给出实际门列，`MontStageSpec.lean` 与 `ConstStageSpec.lean` 分别证明变量/常数64轮及规范化、反规范化和恢复的完整Triple。每轮保留四位修正系数，完整历史值由montgomeryQuotient描述；Q先撤规范化，再按逆窗口顺序执行前向减法/旋转/查表清理。证明覆盖全部测量记录。

`MontgomeryConversion.lean` 的montgomery_two_stages证明第二段将Montgomery结果转为标准余数。`MontLayout.lean` 构造共享辅助区并定义显式MontPrepared契约；`montP_spec` 从零工作区得到Z=(XY)%p和两段规范化历史，`montQ_spec` 消费同一历史并清空全部工作区。`montP_correct`/`montQ_correct`还证明相位及工作区外每根线路保持。前提为素数p、p<2^256、p%16=15、X<p、Y<2^256、给定寄存器宽度和全布局Nodup；输出字不要求为零。

`MontCounts.lean`逐门组合证明变量窗口3,484/1,396，常数窗口712/712，规范化或撤销520/520；变量准备/恢复223,496/89,864，常数准备/恢复46,088/46,088。`montPQ_counts`证明P/Q各269,584 Toffoli与135,952测量；`montPQ_wires`证明支持恰为X低256位、Y和全部工作区，`montPQ_resources`据Nodup得到2,339根实际线，工作区为1,827位。输出字和X高位未计入支持。

第二批结束时五个适配器与集成尚未实现；第三批结果见下。原地点加接入见第四批记录。

本批完整scripts/verify.sh退出0：2,136项构建、243条公开入口公理输出；新增16项，实际输出逐行收录于上方，仅依赖propext、Classical.choice、Quot.sound。

## 改6a第三批：五个适配器与fieldMul（改7前历史阶段）

MontAdapterLayout为输出中段借用table前257位、carry前256位、mask前257位、cin和已清零的一个scratch；§17.4原写255根carry是宽度笔误，已按C1完整257位模加核修正为256根，仍在既有260根内，不增加工作位或门数。MontAdapterSpec证明XOR、模加、模减、受控模加、受控模减的完整Triple；中段只改out并保持MontPrepared，Q因此清空全部历史。MontAdapterFrame逐项证明out外每根线路保持。受控false仍执行P/Q，但输出不变，控制位保持。

同一门列的Toffoli/测量：XOR539,168/271,904，加540,191/272,927，减540,703/273,439，受控加540,703/272,927，受控减541,215/273,439。普通三项支持等于x.take256++y++out++work，由Nodup得2,596线；受控两项另含c，共2,597线。

fieldMul改用MontLayout与montMulXor，保留任意初值输出的数值契约；固定宽度结构删除了旧width=256重复参数。poolMul工作列表恰为wireBlock前1,827位。候选实际池为该前缀与求逆支持并集，candidatePool_length证明5,670位；两根额外未读输入高位dy/delta从支持移除。候选各6,166,952/2,461,352，独立pointAddOut为12,335,444/4,923,728/9,780，controlledPointAddOut为12,335,450/4,923,728/9,784。

第三批时原地点加仍使用Horner；第四批已完成最后五个乘积的迁移；旧电路已在清理批删除，见下。

第三批完整 scripts/verify.sh 退出0：2,140项构建、259条公开入口公理输出；新增16项，以上公理块为本次实际输出，仅依赖propext、Classical.choice、Quot.sound。

## 改6a第四批：除法与受控原地点加集成（改7前历史阶段）

DivideLayout公开字段/Widths、divideAdd/Sub_spec、divide_frame及controlledPointAdd_spec陈述保持。内部multiply改为MontLayout；B[0]为输出高位，B[1:1828]为工作区。逆元与求逆历史均由frame保持，全部借用位归零后才执行inverseUncompute。divideAdd/Sub门数从5,722,415/5,722,927降至5,082,703/5,083,215，测量为1,912,399/1,912,911；usedCoreWires与6,210实际线保持，因为B全部包含于求逆已有支持。

外部乘积工作区为B[2:1829]；平方保留S=B[0:256]，输入/输出高位256/257，工作区B[258:2085]。复制λ→S、montMulSub(λ,S,x)、清S完成后才执行+3cx；常数加复用S线路，顺序与frame证明共同保证生命周期。旧t和inPlaceSquareSub视图删除。

同一完整controlledPointAdd有限分支为11,800,058 Toffoli、4,656,378测量、6,218实际线；C=O三项零。第四批曾保留旧Horner四文件、MulAdapter三文件与对应公理入口，收尾批已删除；数学HornerMultiply仍为Montgomery数学的依赖，半倍原语保留。

第四批完整scripts/verify.sh退出0：2,141项构建、259条公理输出，与上方本次实际输出一致；当时保留旧Horner公开入口，收尾批删除项见下。

## 改6a收尾：删除无调用者电路（改7前历史阶段）

删除HornerLayout/Steps/Spec/Resources、MulAdapterLayout/Spec/Resources、PointSwap八个文件，以及ControlledPointLayout中的controlledPointSwap。regValue_bit陈述与证明逐字迁移、仅改所在文件至Registers；MontDigit与MontNormalize继续使用，HornerMultiply数学及半倍原语保留。

verify.sh删除15个旧入口：mulInto_spec、mulClear_spec、mulInto_frame、mulClear_frame、mulInPlace_wires、mulInPlace_resources、mulXor_spec、mulAdd_spec、mulSub_spec、mulXor_frame、mulAddSub_frame、mulAdapter_wires、mulAdapter_counts、mulAdapter_resources、controlledPointSwap_correct。当时保留244个入口，点加资源为11,800,058/4,656,378/6,218；后续改7更新见下。

收尾批完整scripts/verify.sh退出0：2,133项构建、244条公理输出；上方公理块现更新为改7实际输出，白名单保持。


### 改7方案1：14门单迭代查表（改8前阶段资源）

`Lookup.lean`私有lookupWalk递归共享三根scratch：计算正AND、执行正子树、CX切换负AND、执行负子树，以X包夹CZ测量清负AND。无外部控制时a0直接使能两半表，每半7个AND，lookup_counts证明14 Toffoli/14测量。lookup_spec陈述与先前逐字相同，仍允许任意旧目标；lookup_correct/frame覆盖所有测量记录的相位与逐线保持。lookup_core_wires证明地址/scratch必触及，lookup_wires_subset限制其余支持；MontWires重接上下界，所有上层精确支持及线数重证。

同一门列P/Q各256,528/122,896/2,339；XOR模乘513,056/245,792/2,596；普通加514,079/246,815，普通减514,591/247,327，受控加514,591/246,815，受控减515,103/247,327，受控2,597线。两次除法分别5,056,591/1,886,287和5,057,103/1,886,799，均6,210线。完整controlledPointAdd为11,669,498/4,525,818/6,218；C=O空程序。旧pointAddOut12,178,772/4,767,056/9,780，controlledPointAddOut12,178,778/4,767,056/9,784。

完整scripts/verify.sh退出0，2,133构建项、244条实际公理输出；审计入口不变，上方公理块为本次实际输出，只依赖既有三白名单。未新增测试、公理、native_decide或放宽证明限制。Framework不变，方案2的逐位测量清表未实现，数字仍为设计预算。公开点加规格逐字保持。


## 改8第一批：测量清掩码的受控原地加减

`MeasuredMaskedAdder.lean` 提供 `measuredMaskedAddInPlace_spec` / `measuredMaskedSubInPlace_spec`，与旧规格的前提和后置相同，只换程序名。`eraseMask_correct` 以掩码等于c AND src为前提，对全部测量记录证明相位恢复、目标外逐线保持与掩码归零；`eraseMask_eq_copy`说明在此合法输入上与旧CCX清理恢复相同完整状态。独立frame进一步保持完整加减目标y以外的全部位。

同一门列的精确计数为2W−1 CCX、2W−1测量、4W+1实际线；W=261为521/521/1045。无新语义、无CCZ、无测试、新公理或证明资源放宽。InPlaceAdder三个内部来源保持引理改为可复用的具名引理，其陈述/证明主体未变；旧受控程序与规格保持。原语批当时尚未接入Montgomery窗口，阶段点加为11,669,498/4,525,818/6,218。

完整scripts/verify.sh退出0：2,134项构建、252条实际公理输出，新增8个入口。上方公理块为本次实际输出，只依赖propext、Classical.choice、Quot.sound（部分定理无公理）。

## 改8第二批：Montgomery变量窗口集成

MontPrepare的变量窗口已改用measuredMaskedAdd/SubInPlace；MontDigit组合相同的前后置，MontWires与资源支持等式重证，公开模乘、除法和点加Triple保持。Lookup、常数窗口及求逆门列不变。变量窗口2,372/2,372，变量准备或恢复152,328/152,328，常数准备或恢复仍37,384/37,384；P/Q各189,712/189,712。

五个适配器XOR、加、减、受控加、受控减分别379,424/379,424、380,447/380,447、380,959/380,959、380,959/380,447、381,471/380,959。支持仍2,596或2,597线。完整controlledPointAdd为11,001,338/5,193,978/6,218；相对改7少668,160 Toffoli、多668,160测量。前节改7及原语批数字保留为阶段记录。

本批完整scripts/verify.sh退出0：2134项构建、252条实际公理输出，与上方公理块逐行一致，仅白名单三项；无新增检查入口、测试、公理或证明资源放宽。

## 改10：Kaliski受控加减测量清掩码

RoundFrame.inplaceArithmetic的两个程序分支接入measuredMaskedAdd/SubInPlace；正/恢复轮各调用两次，完整Triple、源与目标外保持和工作区归零条件保持。RoundWires精确支持等式重证，旧原语及Montgomery、第二阶段门列不变。

完整轮12w+31 Toffoli /6w+28测量，w=257为3,115/1,570/1,847。inverseLoop通式1024(15w+51)+60w−12 /1024(8w+47)+48w，实例4,015,152/2,165,808/5,698；fieldInverse同门数与测量、5,954线。两次除法4,396,623/2,546,255和4,397,135/2,546,767；完整点加9,948,666/6,246,650/6,218，所有几何分支与公开规格保持。上述改7/8资源记录是历史阶段值。

本批完整scripts/verify.sh退出0：2134项构建、252条实际公理，上方公理块与本次输出逐行一致。无新增入口、测试、公理或证明资源放宽。


### 改11第一批：十位查表与缩放数学（阶段记录）

`lookup10_spec` / `lookup10_frame`证明十位地址、任意旧XOR目标和九根零scratch的完整Triple与逐线保持，对全部测量记录恢复相位。`lookup10_counts`为同一lookup门列的1,022 Toffoli/1,022测量；`lookup10_core_wires`覆盖十位地址与九根scratch，目标的恒零表列不计为必触线。原一般支持上界继续适用。原四位六个公开定理陈述及lookup/lookupWalk门列逐字未变，正确性主体提为私有长度引理复用。

`InverseScaleFactor.lean`证明因子界、F_q(K)·2^K=R、一段Montgomery缩放、与固定减半一致、K≤512及Kaliski逆元对接；只用模数中2为单位，不要求q为素数。新对接引理要求q%16=15。**内部求逆定理由任意奇数q收窄为q%16=15当时留待接入批处理；本批完成时旧求逆门列和规格尚未替换。** 本批当时fieldInverse和点加资源不变，§22组合缩放电路尚待证明。

完整scripts/verify.sh退出0：2,135项构建、262条实际公理输出（新增10个入口）；上方公理块逐行取自本批日志，只依赖既有三白名单。无测试、新公理、CCZ或证明限制放宽。


### 改11第二批：缩放准备/恢复与具体借用（阶段记录）

`InverseScaleLayout.prepare_spec`与`restore_spec`组合两次查表、Montgomery变量段和三次CX复制交换，覆盖全部测量记录。准备保留a=M、acc=N、256位约减商和借位；恢复后a=N、历史与工作位全零。两条frame保持a与显式历史之外的所有位。每个方向精确154,372 Toffoli/154,372测量，完整缩放308,744/308,744；没有使用montP的额外常数转换。

`InverseScaleBorrow`在现有InverseLoopLayout上构造视图：518位历史来自round.y、zero低4位及carry，工作区等于(temp++arithmetic.wires).take1054。Widths和全局Nodup已证明，历史包含于原轮工作区；门列支持上界指向同一布局。未声称独立缩放的所有分配位均被触及，最终求逆支持等式留给接入批。

前提q%16=15、q<2^256、N<q；不要求q为素数或额外K范围。本批当时旧inverseCompute/Uncompute和内部一般奇数规格尚未替换，fieldInverse与点加资源保持改10基线。内部求逆定理由任意奇数q收窄为q%16=15已在下方接入批明确记录。

完整scripts/verify.sh退出0：2,137项构建、273条实际公理输出（新增11个入口）；上方公理块逐行取自本批日志。无新公理、测试、CCZ或证明限制放宽。


### 改11第三批：求逆、除法与完整点加接入

inverseCompute/Uncompute现只调用缩放prepare/restore，旧求逆半倍适配证明已删除。InverseScaledMiddle与InverseHistory显式记录y=N、carry商/借位以及其余轮寄存器、K与记录带。中段复制或受控模乘保持整个求逆核心；恢复缩放后y/carry/zero重新全零，再清N并执行Kaliski逆循环。Prepared按N=(−z.r).val连接kaliski_montgomery_scale。

**内部求逆定理由任意奇数q收窄为q%16=15，内部低位与Montgomery算术宽度固定256。** secp256k1满足此条件，fieldInverse_spec、fieldInverse_xor_spec、divideAdd/Sub_spec及完整controlledPointAdd_spec陈述逐字不变；仍覆盖控制false、C=O与全部合法点分支。

| 同一程序 | Toffoli | 测量 | 实际支持线 |
| --- | ---: | ---: | ---: |
| inverseLoop | 3,513,912 | 1,928,760 | 5,698 |
| fieldInverse | 3,513,912 | 1,928,760 | 5,954 |
| divideAdd | 3,895,383 | 2,309,207 | 6,210 |
| divideSub | 3,895,895 | 2,309,719 | 6,210 |
| pointAddOut，有限C | 9,321,828 | 6,147,424 | 9,780 |
| controlledPointAdd，有限C | 8,946,186 | 5,772,554 | 6,218 |

相对改10，每次求逆少501,240 Toffoli/237,048测量，完整点加少1,002,480/474,096。支持上界由scaling_used_subset；下界由保留的Kaliski循环与negativeInit覆盖原usedCoreWires，所有最终线路计数由同程序支持等式与Nodup导出，未重排分配编号。

完整scripts/verify.sh退出0：2,138构建项、276条实际公理输出（新增3个入口），与上方公理块逐行一致。无新公理、测试、CCZ、native_decide、linter抑制或证明限制放宽。


### D1 第一批：终态与原地取负（已证明，尚未接入求逆）

`kaliski_terminal_values` 给出奇模数、正输入、互素前提下的终态u/v/s=1/0/q和正偶r<2q；`negative_even_value`与`negative_even_restore`证明先除2再取负加倍、以及模减半取负再乘2的精确双向恢复。

`negativeEven_spec`含正向/恢复两个寄存器Triple，旧目标z保持，work初末零；`negativeEven_correct`同时给任意记录的相位和目标a外逐线保持。`negativeEven_counts`为3n−1/3n−1及3n/3n；`negativeEven_wires`给同程序支持，恢复额外触及flag。n=256合计1535 Toffoli/测量。

完整scripts/verify.sh退出0：2140构建项、284条实际公理输出（新增8入口），上方公理块与日志逐行一致。顺带修正公理披露段残留的旧2133/244计数。仅使用现有白名单，无新公理、测试、限制放宽或linter抑制；求逆、除法与点加门列未变，资源仍为改11已证值。
