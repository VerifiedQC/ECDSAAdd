# 模加法

本模块实现模加法、模减法及其原地、受控和 XOR 输出接口，并证明范围、清理与资源结论。

## 当前可读入口

- [Modular.lean](#modularlean)：原函数按“准备借位、共享选择并清理”两步写出，每步同一行指定实现和证明。
- [Certified.lean](#certifiedlean)：保留整块计算的认证入口及原地模加核入口。

## [Certified.lean](Certified.lean)

入口：`modAddOn`、`modSubOn`、`modAddCore`，均在 `ECDSAAdd.Arithmetic.Certified` 命名空间下。

原位宽/互异、模数与输入范围、零工作区条件保留。XOR 输出允许非零初值。`modAddOn x y out q W` 的接口不变，正文已改为行内 `using/by` 的两阶段算法；这里的认证入口仍用 `ModLayout` 绑定接线。

每个块返回带 `requires/ensures/correct` 的 `CheckedProgram`；`.circuit` 与对应旧实现完全相同，所以下文各文件的资源结论原样适用。这里只指定一次整块实现，不另行编译块内表达式。旧接口继续供现有调用链使用；详细语义见 [Framework](../../Framework/README.md#当前入口显式实现与证明2026-10-06)。

## 后端算法与原规格


算法主体先读 [Modular.lean](Modular.lean) 的 `modAddOn/modSubOn` 和 [ModInPlace.lean](ModInPlace.lean) 的 `modAddCore`。前两者直接接收 x/y/out/q，以比较和两个 `if` 块表示约减；`if` 是量子受控执行，不测量条件。total/modulus/diff 和进位位移到工作区配方 W。旧 `modAdd/modSub` 保留为布局兼容入口，原规格与资源不变。

模加减现在按“数学分支证明＋实际电路连接”验证，供人阅读的证明不展开门列。这里只认证这两个具体配方，不是已全部迁入通用 `arith` 编译器。语法边界见 [Framework](../../Framework/README.md#现有算法中的算术表达式)。

原函数不再通过 `modReductionContext` 选择实现。准备步骤计算一次共享候选与借位，结束块复用候选并清理；其 `Ready` 接口包含候选值、原输入、输出初值、零进位链和实际 borrow 的含义。换错算法、工作区、实现、证明或源表达式会被拒绝。`modAddCore` 的内部仍沿用原配方；其认证入口只迁移了行内格式。位宽、互异、零工作区条件仍需满足。

下文 p、q 表示相应运算的模数；域运算中的 p 是 secp256k1 的素数模数，`Widths` 表示布局中各寄存器的位宽要求。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## 算法与证明示范目录

- [Modular.lean](#modularlean)：保留可读算法，将分支证明与实际电路连接成最终模加减规格。
- [ModularAlgorithm.lean](#modularalgorithmlean)：用可执行的英文证明分情况讨论，证明选出的数分别是模和、模差。
- [ModularBackend.lean](#modularbackendlean)：证明实际电路实现这些分支，并恢复输入、相位与工作区；只读算法时可跳过。
- [ModularTranslation.lean](#modulartranslationlean)：定义两个阶段必须遵守的状态接口，检查源码及实现/证明的对应关系。
- [ModularFrame.lean](#modularframelean)：证明任意测量记录下的最终结果，以及输出之外每根 wire 都保持。
- [LanguageExample.lean](#languageexamplelean)：用赋值形式写两次模加，证明更换实现后规格不变，并核对工作区复用和资源。
- [LanguageAdapter.lean](#languageadapterlean)：把现有直接模加接入 n 位逻辑寄存器接口。
- [LanguageControlledAdapter.lean](#languagecontrolledadapterlean)：将固定使能的受控模加接入同一接口，检验不同电路的可替换性。

## [LanguageExample.lean](LanguageExample.lean)

读算法时只需看这段；`x`、`y` 是三位寄存器，`q=7`。配置 `arithmetic` 默认选择 `direct`，将现有电路与工作区接好：

```lean
def algorithm : Request 3 := arith using arithmetic {
  y = (x + y) mod q;
  y = (x + y) mod q;
}
```

`correct` 证明，对于任意 X、Y<7 和任意测量记录：

```text
{ x=X, y=Y, work=0 }
algorithm 的编译电路
{ x=X, y=(X + (X+Y) mod 7) mod 7, work=0 }
```

相位恢复，y 之外的所有 wire 保持。两次调用复用同一工作区，包括隐藏的扩展高位。`compiles` 证明实际编译结果就是这个定理验证的电路。

只将配置的 `defaultImplementation` 改为 `"masked"`，`maskedAlgorithm` 就用另一套电路实现完全相同的算法。也可以只覆盖第二句：

```lean
def mixedAlgorithm : Request 3 := arith using arithmetic {
  y = (x + y) mod q;
  y = (x + y) mod q using masked;
}
```

`masked_correct`、`mixed_correct` 证明相同的数值公式，工作区按各实现的要求扩展；通用算法证明 `twice_spec` 不变。`implementations_differ` 证明两种实现不是相同门列。`masked` 较贵，只用于检验替换机制，不推荐作为资源优化。

三种电路分别有精确资源定理；Q 取线路并集，不能把两次调用的线路数相加：

| 两次调用的实现 | T | M | Q |
| --- | ---: | ---: | ---: |
| direct / direct | 22 | 22 | 16 |
| masked / masked | 34 | 22 | 20 |
| direct / masked | 28 | 22 | 21 |

完整语言规则见 [Framework README](../../Framework/README.md#高层算术语言第一版)。仅编译成功不代表输入范围、零工作区已成立；示范中的 `verified` / `mixedVerified` 显式完成这些证明义务。

## [LanguageAdapter.lean](LanguageAdapter.lean)

`direct_correct` 把 `modAddCore` 的 n+1 位物理接口接到 n 位逻辑寄存器 x、y。额外的源高位、目标高位属于 work，不要求读者把输入写成 n+1 位。

布局互异、0<q<2^n、X,Y<q 时，证明：

```text
{ x=X, y=Y, work=0 }
direct 的电路
{ x=X, y=(X+Y) mod q, work=0 }
```

相位恢复，y 之外每根 wire 保持，包括两个高位；中间和不会先按 n 位截断。`direct` 连同证明及资源一起注册为可选实现。

- 单次资源：T=M=`4n-1`，Q=`4n+4`。
- `direct_twice_resources`：相同布局调用两次，T=M=`2*(4n-1)`，Q 仍为 `4n+4`。

## [LanguageControlledAdapter.lean](LanguageControlledAdapter.lean)

`enabledAdd_correct`、`controlled_correct` 证明：额外使能位初始为 0，先 X 到 1，运行已有 `controlledModAdd`，再 X 回 0，可实现与 direct 相同的原地模加规格。

```text
{ x=X, y=Y, work=0 }
viaControlled 的电路
{ x=X, y=(X+Y) mod q, work=0 }
```

要求 0<q<2^n、X,Y<q、接线互异；work 包含 mask 和 enable。相位恢复，目标以外逐线保持。没有给任意带测量的程序逐门套控制；这是对一个已经证明的受控模加的明确适配，也不表示认证 `arith` 已支持量子条件块。

- 单次资源：T=`6n-1`，M=`4n-1`；静态支持集合随实现一并给出并证明，两次 X 门不增加 Toffoli 或测量数。三位示范的单次 Q=20，共用同一布局两次仍为 20。

## [Accumulate.lean](Accumulate.lean)

该文件将模加结果写入新寄存器，同时清零旧的第一个输入。

L 是模运算电路的寄存器布局。L.x、L.y 是输入寄存器，初值为 A、B；L.out 是新输出，L.work 是工作区，均初始化为 0。n 是 L.width 指定的位宽，q 是模数；下文省略 L. 前缀。设 n=L.width，0<q<2^n，A、B<q，布局线路互异。

`accumulate_spec`、`unaccumulate_spec` 证明以下正向与恢复过程：

```text
{ x=A, y=B, out=0, work=0 }
accumulate L q
{ x=0, y=B, out=(A+B) mod q, work=0 }
```

`unaccumulate L q` 从后置状态恢复前置状态；两个方向都保持相位。

- 资源：`accumulate L q` / `unaccumulate L q`：T = `10*L.width+8`，M = `8*(L.width+1)`，Q = `8*(L.width+1)+2`。

## [FieldAddSub.lean](FieldAddSub.lean)

该文件实现 256 位域加减法，X、Y<p，布局线路互异。

L 是模运算电路的寄存器布局。输入 L.x、L.y 的初值为 X、Y，输出 L.out 初始化为 O，工作区 L.work 初始化为 0。下文 x、y、out、work 是这些字段的简写；n 是布局的位宽 L.width。`fieldAdd_spec`、`fieldSub_spec` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
fieldAdd L ｜ fieldSub L
{ x=X, y=Y, out=O ⊕ ((X+Y) mod p) ｜ O ⊕ ((X+p−Y) mod p), work=0 }
```

相位保持不变。`fieldAdd_zero_spec`、`fieldSub_zero_spec` 是 O=0 的情形，输出直接保存域加减结果。

- 资源：`fieldAdd L` / `fieldSub L`：T = `1284`，M = `1028`，Q = `2057`。

## [ModInPlace.lean](ModInPlace.lean)

该文件实现原地模加核心。

L 是原地模加核心的寄存器布局。L.a、L.z 是算术寄存器，初值为 A、Z；L.work 是零工作区。n 是布局的低位数据位宽，`L.Widths n` 表示各寄存器满足该位宽要求；下文 a、z、work 省略 L. 前缀。L.Widths n、线路互异，0<p<2^n、A≤p、Z<p 时，`modAddCore_spec` 证明：

```text
{ a=A, z=Z, work=0 }
modAddCore L p
{ a=A, z=(A+Z) mod p, work=0 }
```

相位保持不变。这里允许 A=p。

- 资源：n 是 Widths n 指定的低位数据位宽。 `modAddCore L p`：T = `4*n-1`，M = `4*n-1`，Q = `4*n+4`。

## [ModInPlaceCopy.lean](ModInPlaceCopy.lean)

该文件证明低 n 位的受控复制。

src 是源寄存器，初值为 X；dst 是目标，初值为 V；c 是控制 wire，初值为 C；n 是要复制的低位位数。src、dst 至少有 n 位，X、V<2^n，控制与两寄存器线路互异。

`copyLow_correct` 证明：

```text
{ c=C, src=X, dst=V }
copyRegister (some c) (src.take n) (dst.take n)
{ dst=V ⊕ (if C then X else 0) }
```

dst 的低 n 位以外的 wire 和相位保持不变。

## [ModInPlaceNegate.lean](ModInPlaceNegate.lean)

该文件将 A 原地变为自然数 p−A。

L 是原地模加减电路的寄存器布局。L.a、L.z 是算术寄存器，初值为 A、Z；L.work 是零工作区。n 是布局的低位数据位宽，`L.Widths n` 表示各寄存器满足该位宽要求；下文 a、z、work 省略 L. 前缀。L.Widths n、线路互异，A≤p<2^n 时，`negRaw_spec` 和 `negRaw_correct` 证明：

```text
{ a=A, work=0 }
negRaw L p
{ a=p−A }
```

a 以外的 wire 和相位保持不变。这里没有再对 p 取模，因此 A=0 时结果是 p，不是 0。

- 资源：n 是 Widths n 指定的低位数据位宽。 `negRaw L p`：T = `n`，M = `n`。

## [ModInPlaceSubtract.lean](ModInPlaceSubtract.lean)

该文件实现原地模减及其受控版本。

L 是原地模加减电路的寄存器布局。L.a、L.z 是算术寄存器，初值为 A、Z；L.work 是零工作区。n 是布局的低位数据位宽，`L.Widths n` 表示各寄存器满足该位宽要求；下文 a、z、work 省略 L. 前缀。L.Widths n、参与线路互异，0<p<2^n、A≤p、Z<p 时，`modSubInPlace_spec`、`controlledModSub_spec` 证明：

```text
{ a=A, z=Z, work=0 }
modSubInPlace L p
{ a=A, z=(Z+p−A) mod p, work=0 }
```

受控版本只在控制为 1 时执行上述更新，否则 z 不变；控制和相位保持不变。

`negRaw_control_spec` 证明中间取负步骤 `{a=A, z=Z, work=0} negRaw {a=p−A, z=Z, work=0}` 也保持外部控制。

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `modSubInPlace L p`：T = `6*n-1`，M = `6*n-1`，Q = `4*n+4`。
  - `controlledModSub c L p`：T = `8*n-1`，M = `6*n-1`，Q = `5*n+6`。

## [ModInPlaceWrappers.lean](ModInPlaceWrappers.lean)

该文件提供原地模加及其受控接口。

L 是原地模加减电路的寄存器布局。L.a、L.z 是算术寄存器，初值为 A、Z；L.work 是零工作区。n 是布局的低位数据位宽，`L.Widths n` 表示各寄存器满足该位宽要求；下文 a、z、work 省略 L. 前缀。L.Widths n、参与线路互异，0<p<2^n、A≤p、Z<p 时，`modAddInPlace_spec`、`controlledModAdd_spec` 证明：

```text
{ a=A, z=Z, work=0 }
modAddInPlace L p
{ a=A, z=(Z+A) mod p, work=0 }
```

受控版本只在控制为 1 时更新 z，否则保持 z；控制和相位保持不变。

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `modAddInPlace L p`：T = `4*n-1`，M = `4*n-1`，Q = `4*n+4`。
  - `controlledModAdd c L p`：T = `6*n-1`，M = `4*n-1`，Q = `5*n+5`。

## [Modular.lean](Modular.lean)

`modAddOn`：比较 `x+y<q`，成立时 XOR x+y，否则 XOR x+y−q。`modSubOn`：比较 x<y，成立时 XOR x−y+q，否则 XOR x−y。这里是逐基态的量子条件，不测量。两个特殊 let/分支模板由后端整体展开，不能当成支持任意表达式的一般比较器。

`modAddOn_spec`、`modSubOn_spec` 给出上述分支公式；`modAddOn_mod_spec`、`modSubOn_mod_spec` 再使用数学分支证明，得到模运算规格。旧 `modAdd_spec/modSub_spec` 现在由这两个新证明推出，不再反过来为新接口提供结论。

L 是模运算电路的寄存器布局。输入 L.x、L.y 的初值为 X、Y，输出 L.out 初始化为 O，工作区 L.work 初始化为 0。下文 x、y、out、work 是这些字段的简写；n 是布局的位宽 L.width。设 n=L.width，0<q<2^n，X、Y<q，布局线路互异。

`modAddOn_mod_spec`、`modSubOn_mod_spec` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
modAddOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
｜ modSubOn L.x L.y (L.lowReg .out) q L.reductionWorkspace
{ x=X, y=Y, out=O ⊕ ((X+Y) mod q) ｜ O ⊕ ((X+q−Y) mod q), work=0 }
```

相位保持不变。公式中的 out 指 L.out 的完整读值；电路只写低 n 位，原有输出高位保持。`modAdd_bounded_spec` 将加法的输入限制放宽为 X+Y<2q。

模加最终证明的主体只有三步：

```lean
have hSum : X + Y < 2*q := by omega
have branches := modAddOn_refines L hnd q hq0 hq X Y O hSum
simpa only [ModReductionAlgorithm.addResult_correct X Y q hSum] using branches
```

第一步检查只减一次 q 的条件；第二步取得实际电路的分支效果；第三步用下面的算法定理把结果改写为模和。模减采用同样结构。进位和反计算只在后端证明一次。

## [ModularAlgorithm.lean](ModularAlgorithm.lean)

X、Y 是寄存器中的数，q 是模数。这里不出现 wire、布局或测量。

两个算法证明使用 `Proof`、`We split on`、`From [...] ... we get` 等固定英文句式，直接写出分支结果、范围和取模结论。它们是由 Lean 逐步检查的证明代码，不是注释；句式及两条取模规则见 [ProofLanguage](../../Framework/README.md#prooflanguagelean)。辅助范围引理与电路后端仍保留原 tactic 写法，本次只改这两个供人阅读的证明。

`addResult_correct` 证明：令 S=X+Y，要求 S<2q。S<q 时保留 S；否则减去 q，得到的 S−q 仍在 [0,q)。两个分支都得到 S mod q。

`subResult_correct` 证明：要求 X,Y<q。X<Y 时，数学差加回 q 得到 X+q−Y；否则保留 X−Y。两个分支都得到 (X+q−Y) mod q。这里不能把借位分支写成自然数截断减法 `(X-Y)+q`。

这些分支结果与实际 `prog` 的联系由后端定理证明，不是只证明一个与电路无关的数值函数。

## [ModularTranslation.lean](ModularTranslation.lean)

`modAddPrepare_correct/modSubPrepare_correct` 证明从零工作区得到相应候选和正确的借位位；输出原值允许任意 O。

`modAddSelectAndClear_correct/modSubSelectAndClear_correct` 以同一 `Ready` 为前提，证明 XOR 分支结果并恢复全部工作区。`reductionProgram_correct` 以 Hoare 顺序组合连接两段，相位恢复对所有测量记录成立。

资源没有增加：两段连接后的完整门列与旧配方相等，仍为 T=5n+4、M=4(n+1)、Q=8n+9。

## [ModularBackend.lean](ModularBackend.lean)

在相同布局、数值范围和零工作区条件下，`ModReductionBackend.add_refines/sub_refines` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
实际模加配方 ｜ 实际模减配方
{ x=X, y=Y, out=O ⊕ addResult X Y q ｜ O ⊕ subResult X Y q, work=0 }
```

相位恢复。中间和与差使用 n+1 位，borrow 复用差的最高位；[Reduction.lean](Reduction.lean) 中的 `addReduction_branches/subReduction_branches` 证明这个最高位正好表示源码中的比较，并将选中的补码候选转换成上述分支结果。

装载、算候选、选择、清理的顺序及门列不变。后端不引用最终模加减规格，也不依赖 `addResult_correct/subResult_correct` 的取模结论；最终规格由它与算法证明组合得到。

## [ModularFrame.lean](ModularFrame.lean)

L 是模运算电路的寄存器布局。输入 L.x、L.y 的初值为 X、Y，输出 L.out 初始化为 O，工作区 L.work 初始化为 0。下文 x、y、out、work 是这些字段的简写；n 是布局的位宽 L.width。相同布局、输入范围和零工作区条件下，`modAddOn_correct`、`modSubOn_correct`（以及旧接口的 `modAdd_correct/modSub_correct`）证明：

```text
{ x=X, y=Y, out=O, work=0 }
modAdd L q ｜ modSub L q
{ out=O ⊕ ((X+Y) mod q) ｜ O ⊕ ((X+q−Y) mod q) }
```

out 以外的所有 wire 和相位保持不变。`modAdd_bounded_correct` 同样允许 X+Y<2q，而不要求两个输入分别小于 q。

## [UnaryMod.lean](UnaryMod.lean)

该文件将约减或模取负的结果异或到输出。

L 是模运算电路的寄存器布局。src 是输入寄存器，初值为 X；dst 是输出，初始化为 O。n 是算术布局的位宽 L.width，q 是模数；L.wires 是该布局中的全部工作线路，初始化为 0。设 n=L.width，src、dst 均为 n+1 位，参与线路互异，0<q<2^n。

`reduceXor_spec` 要求 X<2q，`negateXor_spec` 要求 X<q，分别证明：

```text
{ src=X, dst=O, L.wires=0 }
reduceXor ｜ negateXor
{ src=X, dst=O ⊕ (X mod q) ｜ O ⊕ ((q−X) mod q), L.wires=0 }
```

相位保持不变。

## [UnaryModResources.lean](UnaryModResources.lean)

该文件证明一元模运算只改变输出，并给出资源用量。

L 是模运算电路的寄存器布局。src 是输入寄存器，初值为 X；dst 是输出，初始化为 O。n 是算术布局的位宽 L.width，q 是模数；L.wires 是该布局中的全部工作线路，初始化为 0。沿用 [UnaryMod.lean](UnaryMod.lean) 的位宽、范围和零工作区条件，`reduceXor_correct`、`negateXor_correct` 证明：

```text
{ src=X, dst=O, L.wires=0 }
reduceXor ｜ negateXor
{ dst=O ⊕ (X mod q) ｜ O ⊕ ((q−X) mod q) }
```

dst 以外的 wire 和相位保持不变。

- 资源：`unaryModXor L f operation src dst`：T = `2*toffoliCount operation`，M = `2*measurementCount operation`。

## [ModularResources.lean](ModularResources.lean)

L 是模运算电路的寄存器布局。

- 资源：`modAdd L q` / `modSub L q`：T = `5 * L.width + 4`，M = `4 * (L.width + 1)`，Q = `8 * L.width + 9`。
