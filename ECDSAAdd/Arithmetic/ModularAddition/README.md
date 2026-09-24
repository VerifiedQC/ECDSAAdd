# 模加法

本模块实现模加法、模减法及其原地、受控和 XOR 输出接口，并证明范围、清理与资源结论。

下文 p、q 表示相应运算的模数；域运算中的 p 是 secp256k1 的素数模数，`Widths` 表示布局中各寄存器的位宽要求。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

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

该文件将模和或模差异或到输出。

算法入口是 `modAdd`、`modSub`。前者先算 total=x+y，再试减 q，通过借位选择 total 或 total−q；后者准备差与差+q 两个候选，再通过借位选择。选中结果 XOR 到 out 后，按依赖的逆序清除中间结果。

代码直接列出寄存器：`addXor/subXor(x, y, out, carry, cin)` 表示加减结果 XOR 到 out；`chooseXor(flag, whenZero, whenOne, out)` 明确两个选择方向。这里的 `let` 只给现有 wire 起名，不增加量子位；精确前提与结果见下方规格。

L 是模运算电路的寄存器布局。输入 L.x、L.y 的初值为 X、Y，输出 L.out 初始化为 O，工作区 L.work 初始化为 0。下文 x、y、out、work 是这些字段的简写；n 是布局的位宽 L.width。设 n=L.width，0<q<2^n，X、Y<q，布局线路互异。

`modAdd_spec`、`modSub_spec` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
modAdd L q ｜ modSub L q
{ x=X, y=Y, out=O ⊕ ((X+Y) mod q) ｜ O ⊕ ((X+q−Y) mod q), work=0 }
```

相位保持不变。`modAdd_bounded_spec` 将加法的输入限制放宽为 X+Y<2q。

## [ModularFrame.lean](ModularFrame.lean)

该文件加强 [Modular.lean](Modular.lean) 的正确性结论。

L 是模运算电路的寄存器布局。输入 L.x、L.y 的初值为 X、Y，输出 L.out 初始化为 O，工作区 L.work 初始化为 0。下文 x、y、out、work 是这些字段的简写；n 是布局的位宽 L.width。相同布局、输入范围和零工作区条件下，`modAdd_correct`、`modSub_correct` 证明：

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
