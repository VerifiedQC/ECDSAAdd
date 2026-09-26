# 求逆模块：怎样得到逆元，又把工作区清干净

本模块实现 Kaliski 模逆元电路，包括固定轮循环、缩放、结果输出和历史恢复，并提供相关布局与资源证明。

Kaliski 数据轮使用 `roundArithmeticContext` 固定 mask 和进位工作区；主体中的 `controlledSub subtract v u`、`controlledAdd subtract s r` 直接标出控制、源和目标。它们展开为原有测量清理的受控加减法，历史与辅助位寿命不变。

算法入口是 [InverseCompute.lean](InverseCompute.lean)：固定轮 Kaliski 循环 → 将 −r mod q 写入逆元寄存器 a → 按计数 k 缩放，得到逆元；`inverseUncompute` 按依赖逆序恢复。循环历史、计数和缩放历史要保留到恢复阶段，不能作为已清零工作区借用。

单轮在 [KaliskiRound.lean](KaliskiRound.lean) 中保存 swap/subtract 条件；[RoundBody.lean](RoundBody.lean) 直接列出 u、v、r、s，展示交换、u−=v、r+=s 和移位。条件由量子门计算，不是读取量子位后执行 Lean 的 if；对应的恢复程序负责清掉记录。[InverseScale.lean](InverseScale.lean) 明确标出查表因子、缩放结果和为恢复保留的原值。

下文 p、q 表示相应运算的模数；域运算中的 p 是 secp256k1 的素数模数，`Widths` 表示布局中各寄存器的位宽要求。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Borrow.lean](Borrow.lean)

该文件判断第 i 步是否仍在计数 K 的有效范围内。

L 是加减法电路的寄存器布局。L.x 保存计数 K，target 是结果标志，初始化为 T；i 是当前步骤编号，L.y、L.cin、L.carry 是零工作区。下文省略 L. 前缀。计数器为 10 位、i<512，参与线路互异时，`counterActiveXor_spec` 证明：

```text
{ x=K, target=T, y=0, cin=0, carry=0 }
counterActiveXor L target i
{ x=K, target=T ⊕ (i<K), y=0, cin=0, carry=0 }
```

相位保持不变。

## [HalveInPlace.lean](HalveInPlace.lean)

该文件按计数 K 决定是否执行一次模减半或模倍增。

L 是模减半电路的数据、计数器和工作区布局。L.data 是原地更新的数据寄存器，初值为 X；L.counter.x 保存有效步骤数 K，L.work 初始化为 0，q 是模数，i 是起始步骤编号。下文省略 L. 前缀。布局满足 L.Widths、线路互异，q 为奇数、X<q、2q≤2^L.data.length、i<512。

`halveStep_spec`、`doubleStep_spec` 证明：

```text
{ data=X, counter.x=K, work=0 }
halveStep L q i ｜ doubleStep L q i
{ data=if i<K then halveMod(q,X) ｜ (2X mod q) else X,
  counter.x=K, work=0 }
```

halveMod 在 X 为偶数时取 X/2，否则取 (X+q)/2；相位保持不变。

## [HalvingLoop.lean](HalvingLoop.lean)

该文件用 512 个固定步骤执行恰好 K 次模减半。

L 是模减半电路的数据、计数器和工作区布局。L.data 是原地更新的数据寄存器，初值为 X；L.counter.x 保存有效步骤数 K，L.work 初始化为 0，q 是模数，i 是起始步骤编号。下文省略 L. 前缀。沿用 [HalveInPlace.lean](HalveInPlace.lean) 的布局与模数条件，并要求 K≤512。

`halveInPlace_spec`、`restoreInPlace_spec` 证明：

```text
{ data=X, counter.x=K, work=0 }
halveInPlace L q 0 512
{ data=halveMod(q,·) 迭代 K 次后的 X, counter.x=K, work=0 }
```

`restoreInPlace L q 0 512` 从后置状态恢复 X；两个方向都保持相位。

- 资源：这里 n 是执行步骤数，不是寄存器位宽；数据位宽是 L.data.length。

  - `halveStep L q i` / `doubleStep L q i`：T = `3*L.data.length+20`，M = `2*L.data.length+19`。
  - `halveInPlace L q i n` / `restoreInPlace L q i n`：T = `n*(3*L.data.length+20)`，M = `n*(2*L.data.length+19)`。

## [InverseLoopSpec.lean](InverseLoopSpec.lean)

该文件实现求逆核心的准备、恢复及完整异或输出。

L 是求逆循环的数据、历史记录和工作区布局。L.first.u/v/r/s/k/done 是循环初态寄存器，L.a 暂存逆元，L.temp 和 L.arithmetic.wires 是算术工作区，L.out 是输出。X 是输入 L.first.v 的初值，q 是模数，O 是 L.out 的初值；下文初态中的 u/v/r/s/k/done 省略 L.first. 前缀。要求 0<X<q<2^256、q mod 16=15、gcd(q,X)=1；布局使用 512 条记录、10 位计数器、256 位低位输入与算术布局、257 位 a/temp/out，线路互异。

记初态 I 为 `(u=q,v=X,r=0,s=1,k=0,done=0,work=0)`。`inversePrepare_spec`、`inverseRestore_spec` 证明：

```text
{ I }
inverseCompute L q
{ a=X⁻¹ mod q, temp=0, arithmetic.wires=0, InverseHistory(L,q,X) }
```

`inverseUncompute L q` 利用 InverseHistory 恢复 I。准备阶段保留历史，不是所有工作位都已清零。

`inverseLoop_xor_spec` 证明完整流程：

```text
{ I, out=O }
inverseLoop L q
{ I, out=O ⊕ (X⁻¹ mod q) }
```

其中源码以 `kaliskiInverse q X 256` 表示该逆元。`inverseLoop_spec` 是 O=0 的情形；上述规格都保持相位。

## [InverseScale.lean](InverseScale.lean)

该文件对求逆中间值做尺度修正，并保存恢复所需的历史。

L 是求逆尺度修正电路的寄存器布局。L.a 保存待修正值 N，L.k 保存计数 K；L.live 保存恢复历史，L.work 是工作区，二者初始为 0，q 是模数。下文省略 L. 前缀。L.Widths、线路互异，N<q<2^256、q mod 16=15 时，`prepare_spec`、`restore_spec` 证明：

```text
{ a=N, k=K, live=0, work=0 }
L.prepare q
{ a=montgomeryValue(q,inverseScaleFactor(q,K),N,64) mod q,
  k=K, Prepared(L,q,K,N), work=0 }
```

Prepared 还保存原值 N、商记录和规范化标志。`L.restore q` 从这个状态恢复 N、K，并清零 live 和 work；相位保持不变。

- 资源：

  - `L.lookup q`：T = `1022`，M = `1022`。
  - `L.exchange`：T = `0`，M = `0`。
  - `L.prepare q` / `L.restore q`：T = `154372`，M = `154372`。

## [InverseSpec.lean](InverseSpec.lean)

该文件提供域求逆接口。

L 是域求逆电路的寄存器布局。L.x 是输入寄存器，初值为 X；L.out 是输出，初始化为 O，L.work 是零工作区。下文省略 L. 前缀。L.Widths、线路互异，0<X<p 时，`fieldInverse_xor_spec` 证明：

```text
{ x=X, out=O, work=0 }
fieldInverse L
{ x=X, out=O ⊕ (X⁻¹ mod p), work=0 }
```

`fieldInverse_spec` 是 O=0 的情形，输出直接得到逆元。相位保持不变。

## [InverseTerminalConstants.lean](InverseTerminalConstants.lean)

该文件清理或恢复求逆终态中的常量。

I 是求逆循环的数据、历史记录和工作区布局。I.middle.u、I.middle.s 是要清理或恢复的终态寄存器，初值分别记作 U、S；q 是模数，下文省略 I. 前缀。低位布局为 256 位、q<2^256、线路互异时，`terminalConstants_spec` 和 `terminalConstants_correct` 证明：

```text
{ middle.u=U, middle.s=S }
terminalConstants I q
{ middle.u=U ⊕ 1, middle.s=S ⊕ q }
```

因此 `(u=1,s=q)` 与 `(u=0,s=0)` 可以双向转换；这两组寄存器以外的 wire 和相位保持不变。

- 资源：`terminalConstants I q`：T = `0`，M = `0`。

## [KaliskiLoopProof.lean](KaliskiLoopProof.lean)

该文件证明多轮 Kaliski 电路等于数学迭代。

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。rs 是每轮分支记录的列表，n 是其长度；i 是起始轮编号，z 是初始数学状态（u、v、r、s、k），p 是模数，a 是原始求逆输入；tape 指 rs 对应的记录线路。令 n=rs.length，要求 i+n≤512、10 位计数器、数据宽度至少为 2、线路互异，初态满足 `KRoundCount i z`、`KInvariant p a z`，且 p、z.u、z.v 能放入低位寄存器。

`kaliskiLoop_correct` 证明：

```text
{ LoopState(L,z), tape=全零 }
kaliskiLoop L i rs
{ LoopState(loopEndLayout(L,n), kaliskiStep 迭代 n 次后的 z),
  tape=kaliskiCodes(n,z) }
```

`kaliskiUnloop L i rs` 从后置状态恢复 z 并清零记录带。两个方向都保持相位；这里证明的是这些状态断言，不额外声称任意外部 wire 的保持性。

## [MaskedAdder.lean](MaskedAdder.lean)

该文件把受控加减结果转移到新寄存器，并清零旧值。

L 是加减法电路的寄存器布局。src 是源寄存器，初值为 X；c 是控制位，初值为 C。L.x 保存旧值 A，L.out 是初始化为 0 的新输出，L.y、L.cin、L.carry 初始化为 0；n 是 L.width 指定的位宽，下文布局字段省略 L. 前缀。src 与布局等宽 n，参与线路互异，令 V=if C then X else 0。

`maskedAdd_spec`、`maskedSub_spec` 证明：

```text
{ src=X, c=C, x=A, out=0, y=0, cin=0, carry=0 }
maskedAdd L src c ｜ maskedSub L src c
{ src=X, c=C, x=0, out=(A+V) mod 2^n ｜ (A+2^n−V) mod 2^n,
  y=0, cin=0, carry=0 }
```

相位保持不变。

- 资源：`maskedAdd L src c` / `maskedSub L src c`：T = `4*L.width`，M = `2*L.width`，Q = `5*L.width+2`。

## [NegativeEven.lean](NegativeEven.lean)

该文件将偶数 R 原地变为其模负值，并可恢复。

L 是原地模加减电路的寄存器布局。L.a 是待更新寄存器，初值为 R；L.work 是零工作区，q 是模数，n 是布局的低位数据位宽。下文 a、work 省略 L. 前缀。L.Widths n、线路互异，q 为奇数、q<2^n、0<R<2q、R 为偶数时，`negativeEven_spec` 和 `negativeEven_correct` 证明：

```text
{ a=R, work=0 }
negativeEven L q
{ a=(−R) mod q }
```

`restoreNegativeEven L q` 从该模负值恢复 R。两个方向都保持 a 以外的 wire 和相位。

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `negativeEven L q`：T = `3*n-1`，M = `3*n-1`。
  - `restoreNegativeEven L q`：T = `3*n`，M = `3*n`。

## [NegativeInit.lean](NegativeInit.lean)

该文件将输入的模负值异或到目标。

L 是模运算电路的寄存器布局。src 是输入寄存器，初值为 X；dst 是输出，初始化为 O；temp 是零临时寄存器，L.wires 是零算术工作区。n 是布局的位宽 L.width，q 是模数。设 n=L.width，src、temp、dst 均为 n+1 位，线路互异，0<q<2^n、X<2q。

`negativeInit_correct` 证明：

```text
{ src=X, dst=O, temp=0, L.wires=0 }
negativeInit L q src temp dst
{ dst=O ⊕ ((q−(X mod q)) mod q) }
```

dst 以外的 wire 和相位保持不变。

## [NegativeInitResources.lean](NegativeInitResources.lean)

该文件给出模负值初始化的寄存器接口与资源。

L 是模运算电路的寄存器布局。src 是输入寄存器，初值为 X；dst 是输出，初始化为 O；temp 是零临时寄存器，L.wires 是零算术工作区。n 是布局的位宽 L.width，q 是模数。沿用 [NegativeInit.lean](NegativeInit.lean) 的条件，`negativeInit_spec` 证明：

```text
{ src=X, dst=O, temp=0, L.wires=0 }
negativeInit L q src temp dst
{ src=X, dst=O ⊕ ((−X) mod q), temp=0, L.wires=0 }
```

相位保持不变。

- 资源：`negativeInit L q src temp dst`：T = `30*L.width+24`，M = `24*(L.width+1)`。

## [OneBitRoundSpec.lean](OneBitRoundSpec.lean)

该文件证明一轮 Kaliski 运算及其恢复，只保留一位减法历史。

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。i 是轮编号，z 是初始数学状态（u、v、r、s、k），p 是模数，a 是原始求逆输入。L.kNext 保存下一轮计数，L.done 标记是否结束，L.swap/L.subtract 记录分支，L.scratch 是工作区；下文寄存器名省略 L. 前缀。要求 10 位计数器、i<512、线路互异，z 满足 `KRoundCount i z` 和 `KInvariant p a z`，p、z.u、z.v 能放入低位寄存器。此外 p 必须为奇数。

`oneBitRound_spec`、`oneBitUnround_spec` 证明：令 z′=kaliskiStep(z)，

```text
{ (u,v,r,s,k)=z, kNext=0, done=(z.v=0), swap=0, subtract=0, scratch=0 }
oneBitRound L i
{ (u,v,r,s)=z′ 的相应分量, k=0, kNext=z′.k, done=(z′.v=0),
  swap=0, subtract=kaliskiCode(z).2, scratch=0 }
```

`oneBitUnround L i` 从后置状态恢复 z，同时清零 kNext 和分支记录；两个方向都保持相位。

## [RecordRound.lean](RecordRound.lean)

该文件记录一轮 Kaliski 的交换和减法分支。

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。L.u、L.v 是输入寄存器，初值为 U、V；L.active 是活动标志，初值为 A；L.swap、L.subtract 是分支记录，初值为 S、D。临时工作区指 L.oddWork、L.bothWork、L.cin 和 L.data.reg .carry；下文省略 L. 前缀。线路互异、奇偶临时位与进位工作区为零时，`recordRound_spec` 和 `recordRound_correct` 证明：

```text
{ u=U, v=V, active=A, swap=S, subtract=D, 临时工作区=0 }
recordRound L
{ swap=S ⊕ (A AND odd(U)) ⊕ (A AND odd(U) AND odd(V) AND (V<U)),
  subtract=D ⊕ (A AND odd(U) AND odd(V)) }
```

swap、subtract 以外的 wire 和相位保持不变。

## [RoundSpec.lean](RoundSpec.lean)

该文件证明一轮 Kaliski 运算及其恢复，保留交换与减法两位历史。

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。i 是轮编号，z 是初始数学状态（u、v、r、s、k），p 是模数，a 是原始求逆输入。L.kNext 保存下一轮计数，L.done 标记是否结束，L.swap/L.subtract 记录分支，L.scratch 是工作区；下文寄存器名省略 L. 前缀。要求 10 位计数器、i<512、线路互异，z 满足 `KRoundCount i z` 和 `KInvariant p a z`，p、z.u、z.v 能放入低位寄存器。

`kaliskiRound_spec`、`kaliskiUnround_spec` 证明：令 z′=kaliskiStep(z)，

```text
{ (u,v,r,s,k)=z, kNext=0, done=(z.v=0), swap=0, subtract=0, scratch=0 }
kaliskiRound L i
{ (u,v,r,s)=z′ 的相应分量, k=0, kNext=z′.k, done=(z′.v=0),
  swap=kaliskiCode(z).1, subtract=kaliskiCode(z).2, scratch=0 }
```

`kaliskiUnround L i` 从后置状态恢复 z，同时清零 kNext 和分支记录；两个方向都保持相位。

- 资源：这里取 257 位轮数据和 10 位计数器。 `kaliskiRound L i` / `kaliskiUnround L i`：T = `3115`，M = `1570`，Q = `1847`。

## [BorrowFrame.lean](BorrowFrame.lean)

L 是加减法电路的寄存器布局。

- 资源：`counterActiveXor L target i`：T = `L.width`，M = `L.width`。

## [InverseLoopResources.lean](InverseLoopResources.lean)

L 是求逆循环的数据、历史记录和工作区布局。

- 资源：公式形式与数值形式都在 512 条记录、10 位计数器、256 位低位输入与算术布局等前提下成立，不是任意位宽的通用资源定理。

  - `inverseLoop L q`（公式形式）：T = `1024*(12*L.first.data.width+31)+60*L.first.data.width-12+308744`，M = `1024*(6*L.first.data.width+28)+48*L.first.data.width+308744`，Q = `18*L.first.data.width+1072`。
  - `inverseLoop L q`（数值形式）：T = `3513912`，M = `1928760`，Q = `5698`。

## [InverseResources.lean](InverseResources.lean)

L 是域求逆电路的寄存器布局。

- 资源：

  - `inverseLoad L` / `inverseUnload L`：T = `0`，M = `0`。
  - `fieldInverse L`：T = `3513912`，M = `1928760`，Q = `5954`。

## [KaliskiLoopResources.lean](KaliskiLoopResources.lean)

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。

- 资源：rs.length 是循环轮数；公式要求 10 位计数器，精确线路数还要求记录列表非空。 `kaliskiLoop L i rs` / `kaliskiUnloop L i rs`：T = `rs.length*(12*L.data.width+31)`，M = `rs.length*(6*L.data.width+28)`，Q = `7*L.data.width+46+2*rs.length`。

## [OneBitRoundResources.lean](OneBitRoundResources.lean)

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。

- 资源：

  - `recoverSwap L`：T = `1`，M = `0`。
  - `oneBitRound L i` / `oneBitUnround L i`：T = `12*L.data.width+32`，M = `6*L.data.width+28`，Q = `7*L.data.width+48`。

## [RoundResources.lean](RoundResources.lean)

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。

- 资源：

  - `swapRegisters c a b`：T = `a.length`，M = `0`。
  - `exchangeRegisters a b`：T = `0`，M = `0`。
  - `inplaceArithmetic L f g c neg`：T = `2*L.width-1`，M = `2*L.width-1`。
  - `kaliskiBodyProgram L a sw su` / `kaliskiUnbodyProgram L a sw su`：T = `10*L.width-4`，M = `4*L.width-2`。
  - `recordRound L`：T = `L.data.width+5`，M = `L.data.width`。
  - `kaliskiRound L i` / `kaliskiUnround L i`：T = `12*L.data.width+31`，M = `6*L.data.width+28`。

## [RoundWires.lean](RoundWires.lean)

L 是一轮 Kaliski 电路的数据、计数器、分支标志和工作区布局。

- 资源：

  - `recordRound L`：Q = `3*L.data.width+6`。
  - `kaliskiRound L i` / `kaliskiUnround L i`：Q = `7*L.data.width+48`。
