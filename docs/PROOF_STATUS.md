# 公开定理与证明状态

M1、加减法、模 p 加减、模乘及完整 EEA 求逆 I1–I5 已合并。当前分支新增 M3 第一部分：共享布局、标志原语、安全除数、候选计算与清理；完整点输出选择与受控点加尚未实现。

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

## M2：保留输入的模乘

[MulLayout](../ECDSAAdd/Arithmetic/MultiplyLayout.lean) 给出 x、y、out、work 的命名接口。`L.Widths` 统一说明 x/out/每个倍数寄存器均为 n+1 位、两份模算术布局同宽、乘数 y 有 n 位；`L.wires.Nodup` 要求所有线路互异。

```lean
theorem modMul_zero_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q X Y : Nat) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) :
  {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} modMul L q
  {{ L.x = X, L.y = Y, L.out = ((X*Y)%q), L.work = 0 }}
```

`modMul_spec` 支持任意初值 O，输出为 `O ^^^ ((X*Y)%q)`。Y 可取 n 位能表示的任意自然数，不需 Y<q；X<q 保证每轮复制到模加工作区的值已经约化。q 是编译期常量，程序不存在依赖测量结果的算术分支。[FieldMultiply](../ECDSAAdd/Arithmetic/FieldMultiply.lean) 将 q 固定为 p、n 固定为 256，给出对应的零输出、任意输出与资源定理。

[Multiply](../ECDSAAdd/Arithmetic/Multiply.lean) 的每轮固定顺序为：

1. 用共用的加倍工作区，将 `(X+X)%q` XOR 写入下一倍数寄存器，再清空整份工作区。
2. 乘数位只控制逐位 CCX 复制，把当前倍数或零复制到累加布局的 y。用模加写入空累加器，再用模减清除旧累加器，最后清掉 y。
3. 交换两份累加器的角色，递归处理剩余乘数位；到底后把累加器复制到外部输出。
4. 依次撤销累加、清掉下一倍数。这里调用已证明的前向模减/模加与 XOR 程序，不反转测量指令。

`multiplyLoop_correct` 以任意初始累加值 Acc<q 归纳，得到输出 XOR `(Acc+X*Y)%q`；同时证明输出以外每根线恢复、任意初始相位恢复，且对所有测量记录成立。公开模乘取 Acc=0，整个 work 包含两份完整工作区和倍数链，均从零恢复为零。

设计只保留 n 个倍数值，不保留 n 份累加器历史，也不为每轮分配一份模加工作区。为保持一个统一递归步骤，最后一轮仍计算并清除下一倍数，即使它不再参与累加；下表完整计入该开销。这是空间 O(n²) 的首版正确性基线，未做末步裁剪或就地加倍/减半优化，不声称最优。

| 同一具体程序 | Toffoli | 测量 | 静态线路数 |
| --- | ---: | ---: | ---: |
| `modMul`，n>0 | n(44n+36) | 32n(n+1) | (n+18)(n+1)+n+4 |
| `fieldMul`，n=256 | 2,892,800 | 2,105,344 | 70,678 |

[MultiplyResources](../ECDSAAdd/Arithmetic/MultiplyResources.lean) 证明循环的门数和精确线路集合；`modMul_resources` 再由布局互异求支持集基数。每轮两次加倍各用 10n+8 个 Toffoli，两次受控累加/撤销各用 12n+10 个 Toffoli；末尾无控制复制不使用 Toffoli。每轮测量共 32(n+1) 次。静态线路来自两个外部 n+1 位寄存器、n 位乘数、n 个 n+1 位倍数寄存器和两份模加布局，各工作区为 8(n+1)+2 根。全部门控制/目标互异由统一布局的 `Nodup` 经子布局推导；受控复制的控制位与源和目标分离。没有通过添加虚门凑线路数，静态线路数也不是最大同时存活数。

[求逆契约](../ECDSAAdd/Arithmetic/InverseContract.lean) 声明 256 位寄存器、非零输入、逆元输出、清理/相位和资源要求；当前分支的 fieldInverse_contract 给出具体程序的满足证明，见 I5 节。

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

[Math/KaliskiRound](../ECDSAAdd/Math/KaliskiRound.lean) 给四分支编码 `(swap,subtract)`：u 偶为 00、v 偶为 10、都奇且 v<u 为 01、其余为 11；终止后也是 00，是否活动另外由计数关系确定。电路先由原 u/v 的奇偶和 v−u 的借位生成记录，随后立即清除比较差。归一化算术体交换两组数据、按记录减/加、按活动位移位，再交换回来；临时加法输出每次都移回固定目标并清空。

正轮先计数，再以“活动且新 v=0”翻转 done，最后比较 i<新 k 清空活动位。逆轮先用相同计数比较装入活动位，恢复旧 done，再恢复数据和计数，最后从恢复的数据重新计算记录并 XOR 清零。比较阈值 i+1 的范围包含第 512 轮边界，计数器按固定次序交换银行，即使空转轮也如此。没有以测量结果选择算术分支，也没有逆序执行带测量的程序；所有 Triple 对任意相位和任意测量记录证明相位恢复。

| 同一程序，数据宽度 w | Toffoli | 测量 | 静态线路（w≥2） |
| --- | ---: | ---: | ---: |
| `kaliskiRound L i` | 18w+43 | 6w+40 | 8w+48 |
| `kaliskiUnround L i` | 18w+43 | 6w+40 | 8w+48 |
| 两者各自在 w=257 时 | 4669 | 1582 | 2104 |

[RoundResources](../ECDSAAdd/Arithmetic/RoundResources.lean) 分解计数：记录为 2w+5 / 2w，算术体为 14w−2 / 4w，计数移动为 20 / 20，零检测为 2w / 0，活动比较为 20 / 20。[RoundWires](../ECDSAAdd/Arithmetic/RoundWires.lean) 证明两条程序的完整线路并集恰好为布局的集合，再由 Nodup 求基数；包括测量修正线路，没有按组件线路数相加。四份数据和四份工作寄存器共 8w 位，计数及控制线共 48 位。轮内空间 O(w)，记录为两位；未声称最优，也未将此单轮成本冒充整个求逆成本。

实现中的 RoundDataLayout 与字段值表用于同一组工作线的局部组合；RoundAuxValues 专门保留计数与控制位，公开 API 仍直接写寄存器断言。辅助模块分别处理比较、零检测、受控加减、分支记录和算术体，均用于上述两条程序；没有新增通用编译器、测试框架或全环境审计。I4 固定循环/第二阶段见下节；I5 外部输入装载与完整逆元契约见后节；点加电路仍待实现。

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

`inverseLoop_spec` 要求一个全布局 `L.wires.Nodup`、512 对记录位、十位计数器、256 个低位和 257 位第二阶段/输出寄存器，以及奇模数 q<2^256、0<a<q、q 与 a 互素。`inverseLoop_xor_spec` 支持任意输出 O，结果为 `O ^^^ kaliskiInverse q a 256`。`L.work` 包含空计数银行、第一阶段 scratch、整个记录带及第二阶段全部寄存器和算术区；输入的 u/v/r/s/k/done 恢复，工作区归零，相位对所有测量记录保持。输出的数学函数已经由 I1 证明为逆元；此处仍要求第一阶段输入已装载，外部 256 位求逆契约由 I5 封装提供。

电路固定执行以下顺序：[InverseCompute](../ECDSAAdd/Arithmetic/InverseCompute.lean) 的第一阶段记录循环、规范化取负、第二阶段减半循环、复制输出，再依次恢复第二阶段、清空取负结果和恢复第一阶段。没有逆序执行测量指令。

- [KaliskiLoopProof](../ECDSAAdd/Arithmetic/KaliskiLoopProof.lean) 把单轮与逆轮组合成固定长度循环。每轮独占两根记录线；终止后的轮保持 00，计数银行仍按静态顺序交换。逆向循环清除每一对记录。公开单轮的基准 swap/subtract 字段由记录带视图替换，不另占两根未使用线路。
- [NegativeInit](../ECDSAAdd/Arithmetic/NegativeInit.lean) 使用 I1 的 r<2q 范围，先约减 r，再取负，结果严格等于 `(-(r : ZMod q)).val`。`modAdd_bounded_spec` 仅要求两输入之和小于 2q，复用同一模加门列；没有假定终态 r<q，也没有使用错误的自然数 q−r 截断。
- [Halve](../ECDSAAdd/Arithmetic/Halve.lean) 在原值为奇数时加 q，然后右移；输出复制后以左移和同一加法清理。已载入奇模数的最低位提供移位控制，无需额外常一线路。[HalvingBijection](../ECDSAAdd/Math/HalvingBijection.lean) 证明模减半与模加倍在规范代表元上互逆。
- [HalvingLoopProof](../ECDSAAdd/Arithmetic/HalvingLoopProof.lean) 每轮比较 i<k，活动时减半，否则保持数值；两组数据寄存器交换角色。k 不递减，比较工作区和活动位每轮清零。固定 512 轮等于 I1 的 `halveFixed`，正逆循环均已证明。
- [InverseLoopProof](../ECDSAAdd/Arithmetic/InverseLoopProof.lean) 组合各段，证明复制输出后的完整反计算。[InverseLoopLayout](../ECDSAAdd/Arithmetic/InverseLoopLayout.lean) 让第二阶段使用第一阶段终点的当前 k 银行、空银行、比较工作区及活动位；用布局置换从同一个全局 Nodup 导出所有子布局互异性。

`ExternalMod` 的字段框架由已有倍增实现提取，约减、取负、倍增和减半实际共用。`PairFrame` 只跟踪两组可变寄存器，其余线路逐线保持，服务于条件选择和取负初始化；循环状态则明确区分记录与被借用的计数线路。这些辅助断言用于组合证明，公开规格仍直接列出寄存器。

令 N=512、w 为带额外高位的内部数据宽度。以下计数来自规格里的同一字面门列：

| 程序段 | Toffoli | 测量 |
| --- | ---: | ---: |
| 第一阶段正向或逆向 N 轮 | N(18w+43) | N(6w+40) |
| 一次规范化取负及临时值清理 | 30w−6 | 24w |
| 第二阶段正向或逆向 N 轮，含比较装入/清理 | N(36w+32) | N(20w+40) |
| 完整 `inverseLoop`，含复制后反计算 | 2N(54w+75)+60w−12 | 2N(26w+80)+48w |

第一阶段实际静态支持为 8w+46+2N：包含交替计数银行和全部 2N 根记录线。第二阶段新增三组 w 位数据/临时寄存器及 8w+2 位模算术区，共 11w+2；比较和计数线路已包含在第一阶段支持中。输出为 w 位，合计 **20w+48+2N**，没有把共享支持重复相加，也没有把线路数当成最大存活数。

[InverseLoopResources](../ECDSAAdd/Arithmetic/InverseLoopResources.lean) 证明完整程序的 `wires` 恰好等于 `L.wires.toFinset`，再用 Nodup 求基数。`inverseLoop_257_resources` 给出 **14,303,280 Toffoli、6,936,624 次测量、6,212 根静态线路**。该实现空间 O(w+N)，不保存第二阶段数值链；首版反复复用既有模算术核，没有声称门数或空间最优。计数包含所有测量修正分支触及的线路，但不包含 I5 封装增加的外部输入线路。

## I5：外部输入封装与逆元契约

[InverseSpec](../ECDSAAdd/Arithmetic/InverseSpec.lean) 的常用零输出规格为：

```lean
{{ L.x=X, L.out=0, L.work=0 }} fieldInverse L
{{ L.x=X, L.out=((X : Fp)⁻¹).val, L.work=0 }}
```

前提是 `L.wires.Nodup`、`L.Widths`、0<X<p。Widths 明确要求输入 256 位，内核低位数与模算术宽度 256，内核 a/b/temp/out 各 257 位，512 对记录和十位计数器；公开 out 为内核 out 的低 256 位。XOR 形式 `fieldInverse_xor_spec` 输出 `O ^^^ ((X : Fp)⁻¹).val`。断言对所有初始相位、所有测量结果成立，并由 `kaliski_inverse_p` 接上数学域逆元；零输入不在契约内。

`inverseLoad` 复制外部 x 到第一阶段 v 的低 256 位，并用 X 门载入 u=p、s=1；其余工作区初始为零。执行原 `inverseLoop` 后，`inverseUnload` 以同样的 XOR 门卸载常数和输入副本，外部 x 保持。v 的内部高位始终留在工作区；内核输出高位初末均为零，后置清零由逆元小于 p<2^256 及 XOR 范围证明，而非作为额外假设。六字段值表用于这三个装载寄存器的局部更新，公开定理仍直接使用寄存器断言。

[InverseResources](../ECDSAAdd/Arithmetic/InverseResources.lean) 证明：

| 同一个 `fieldInverse L` | 精确资源 |
| --- | --- |
| Toffoli | 14,303,280 |
| 测量 | 6,936,624 |
| 静态线路 | 6,468 |

CX/X 包装没有增加 Toffoli 或测量，外部 x 增加 256 根线路。`InverseLayout.wires_perm` 证明公开 x/out/work 与 x 加内核完整线路的置换；`fieldInverse_wires` 从实际门列支持集导出等式，再以 Nodup 计数，得到 256+6212=6468。内核输出高位仅重新归入工作区，没有重复计算。`fieldInverse_contract` 同时证明 `inverseContract L.x L.out L.work (fieldInverse L) 14303280 6936624 6468` 的正确性、三个资源等式和支持集包含关系。资源为已证内核的封装基线，不声称最优；没有新增测量或让测量结果选择算术。

## 公理披露

本分支 `scripts/verify.sh` 通过：`lake --wfail build` 完成 2018 项构建，以下 80 个公开定理的传递公理全部满足白名单。没有运行测试，也没有全环境审计。

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
'ECDSAAdd.Arithmetic.modMul_zero_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modMul_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.modMul_resources' depends on axioms: [propext, Classical.choice, Quot.sound]
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
'ECDSAAdd.kaliski_unstep_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_round_active' depends on axioms: [propext, Classical.choice, Quot.sound]
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
'ECDSAAdd.Arithmetic.halvingLoop_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halvingLoop_counts' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.halveXor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.negativeInit_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_invariant' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_terminates' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_register_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.halve_mod_correct' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.halveFixed_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.kaliski_inverse_p' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.p_prime' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.G_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.affineAdd_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
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
| `pointCandidateCompute` | 22,989,640 | 13,258,824 |
| `pointCandidateClear` | 22,989,640 | 13,258,824 |

`pointCandidate_counts` 使用已证算术模块的精确资源公式，包含安全除数的 256 个 CCX。常量字装卸、平方乘数复制使用 X/CX，不增加上述两种计数。

共享映射是实际布局构造，不是抽象存在前提：

- `poolSub`：输入、输出直接连接调用方，五个 257 位工作字和两根进位使用池前 1,287 位；`poolSub_work` 给出准确工作列表。
- `poolMul`：两份模算术区与 256 个倍数字使用池前 69,908 位；`poolMul_work` 给出准确工作列表。
- `poolInverse`：单轮共享区、512 对记录、模算术区及 a/b/temp、输出高位使用池前 5,956 位；`poolInverse_work_perm` 给出工作列表置换。占位记录字段在固定循环内由每轮独立记录替换，不另占工作线。
- `PointAddLayout.candidate_interfaces_nodup` 从唯一的全布局 `Nodup` 推出每次算术调用的接口互异；前缀映射据此满足已有内核的条件。平方使用独立的乘数副本，没有重复控制 CCX。

`PointAddLayout.allocated_length` 的 74,022 是布局字段分配数，不能作为候选程序的实际 qubit 定理。下一节给出完整点输出的精确支持集与总资源；受控原地版本尚未实现。本部分不声称资源最优，仍复用 O(n²) 空间模乘基线。

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
| C 有限 | 45,981,844 | 26,517,648 | 74,020 |
| C=O | 0 | 0 | 1,026 |

有限分支的计数为两段候选 2×22,989,640，加标志计算/清理 2×1,026，加输出复制 512；测量只有两段候选 2×13,258,824。常量写入和负控制包夹仅使用 X/CX。

`pointAddOut_support` 证明 `wires (pointAddOut L (.some hc)) = L.usedWires.toFinset`。`usedWires` 包括候选实际支持及边界输入有限位、其他标志和完整输出；与分配表相比，恰好没有 dx 和 yg 的填充最高位。模减法不写输出高位，两者也没有后续读取；其他高位通过模乘输入、模减输入或平方副本被真实触及。`PointAddLayout.usedWires_nodup` 与 `usedWires_length` 从同一个全局布局条件给出 74,020，包含全体共享池及测量修正线。空间仍为 O(n²+N)，不是最大同时存活数或最优性结论。

公开资源入口是 `pointAddOut_finite_resources` 和 `pointAddOut_zero_resources`，正确性和资源指向同一个 `pointAddOut` 定义。互异条件通过原有算术接口及新增输出/标志接口从 L.wires.Nodup 推出，候选乘法保持独立乘数副本，没有重复控制 CCX。

本次完整验证通过：`lake --wfail build` 完成 2,056 项，脚本选定的 109 个公开定理全部通过传递公理检查。新增入口覆盖完整规格、分类、标志清理、输出效果、候选/整段支持集和资源，白名单仍仅为 `propext`、`Classical.choice`、`Quot.sound`。没有测试、数值对照、真值表、额外公理或证明资源限制放宽。受控原地点加留在下一部分；本节不声称已经交付该程序。
