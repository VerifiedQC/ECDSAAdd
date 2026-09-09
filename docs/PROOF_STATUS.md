# 公开定理与证明状态

M1、加减法、模 p 加减和模乘已合并。EEA 求逆数学证明 I1 也已合并，当前分支新增 I2 移位和计数原语；具体求逆电路和点加电路尚未实现，求逆电路仍仅有契约。

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

[求逆契约](../ECDSAAdd/Arithmetic/InverseContract.lean) 仅声明 256 位寄存器、非零输入、逆元输出、清理/相位和资源要求；没有完整求逆程序或契约满足定理。

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

以上都是数学函数与等式，没有定义求逆 `Program`，没有声明求逆电路的 Triple、相位恢复、工作位清理或资源计数。I2 原语及 I3 单轮如下；I4 循环与第二阶段、I5 契约实例仍需实现和证明。该边界与 README 状态表一致；不把 I1 写成完整求逆交付。

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

`kaliskiUnround_spec` 以此后置条件为前置条件，恢复全部旧值，清除两位记录与 scratch。两者要求 i<512、十位计数器、I1 的 KInvariant，以及 u/v/p 小于 `2^L.low.length`、r 小于 `2^L.data.width`。数据宽度 w 等于低位数加一；这些范围保证比较借位、受控减法和移位有正确整数含义。`KRoundCount i z` 表示 k≤i，且 v≠0 时 k=i，保证计数不回绕，并给出本轮活动当且仅当 i<更新后的 k。

[Math/KaliskiRound](../ECDSAAdd/Math/KaliskiRound.lean) 给四分支编码 `(swap,subtract)`：u 偶为 00、v 偶为 10、都奇且 v<u 为 01、其余为 11；终止后也是 00，是否活动另外由计数关系确定。电路先由原 u/v 的奇偶和 v−u 的借位生成记录，随后立即清除比较差。归一化算术体交换两组数据、按记录减/加、按活动位移位，再交换回来；临时加法输出每次都移回固定目标并清空。

正轮先计数，再以“活动且新 v=0”翻转 done，最后比较 i<新 k 清空活动位。逆轮先用相同计数比较装入活动位，恢复旧 done，再恢复数据和计数，最后从恢复的数据重新计算记录并 XOR 清零。比较阈值 i+1 的范围包含第 512 轮边界，计数器按固定次序交换银行，即使空转轮也如此。没有以测量结果选择算术分支，也没有逆序执行带测量的程序；所有 Triple 对任意相位和任意测量记录证明相位恢复。

| 同一程序，数据宽度 w | Toffoli | 测量 | 静态线路（w≥2） |
| --- | ---: | ---: | ---: |
| `kaliskiRound L i` | 18w+43 | 6w+40 | 8w+48 |
| `kaliskiUnround L i` | 18w+43 | 6w+40 | 8w+48 |
| 两者各自在 w=257 时 | 4669 | 1582 | 2104 |

[RoundResources](../ECDSAAdd/Arithmetic/RoundResources.lean) 分解计数：记录为 2w+5 / 2w，算术体为 14w−2 / 4w，计数移动为 20 / 20，零检测为 2w / 0，活动比较为 20 / 20。[RoundWires](../ECDSAAdd/Arithmetic/RoundWires.lean) 证明两条程序的完整线路并集恰好为布局的集合，再由 Nodup 求基数；包括测量修正线路，没有按组件线路数相加。四份数据和四份工作寄存器共 8w 位，计数及控制线共 48 位。轮内空间 O(w)，记录为两位；未声称最优，也未将此单轮成本冒充整个求逆成本。

实现中的 RoundDataLayout 与字段值表用于同一组工作线的局部组合；RoundAuxValues 专门保留计数与控制位，公开 API 仍直接写寄存器断言。辅助模块分别处理比较、零检测、受控加减、分支记录和算术体，均用于上述两条程序；没有新增通用编译器、测试框架或全环境审计。尚未实现 I4 固定循环/第二阶段与 I5 完整逆元契约，也没有点加电路。

## 公理披露

`lake --wfail build` 与以下公开定理的传递公理白名单检查通过；没有运行测试，也没有全环境审计。

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
