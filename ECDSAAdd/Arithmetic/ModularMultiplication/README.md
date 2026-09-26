# 模乘

本模块通过 Montgomery 窗口运算实现标准表示的模乘及受控累加等接口，并证明结果、历史恢复和资源用量。

`MontPrepare.lean` 内的加减步骤用 `montArithmeticContext` 绑定 mask、table 和进位工作区；如 `controlledAdd bit shiftedX L.acc` 明确表示受 bit 控制的累加。历史位仍显式保留到对应恢复步骤，不由配置自动清理。

算法从 [MontPrepare.lean](MontPrepare.lean) 的 `montWindow` 读起：向 acc 加入 x 乘以当前四位数 d，记录 m=acc mod 16，再令 acc=(acc+m·p)/16。m 保存在 history 中，恢复时先乘回 16、减去 m·p，再清除记录。

[MontLayout.lean](MontLayout.lean) 的 `montMulCompute`（原名 `montP`）串联两次 Montgomery 阶段：先得 x·y/R，再乘 R² 并除 R，得到标准模积，R=2^256。`montMulUncompute`（原名 `montQ`）负责恢复。[MontAdapterLayout.lean](MontAdapterLayout.lean) 的输出接口统一是“计算模积 → XOR/加减到 out → 恢复”；历史在恢复前保留，只有 shared 工作区可在输出阶段借用。

下文 p、q 表示相应运算的模数；域运算中的 p 是 secp256k1 的素数模数，`Widths` 表示布局中各寄存器的位宽要求。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [ConstDigit.lean](ConstDigit.lean)

该文件累加或累减一个四位窗口的常量乘积。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。y 是输入乘数寄存器，初值为 Y；K 是经典常量乘数。L.acc 是累加器，初值为 A，L.work 是零工作区；i 是四位窗口编号。下文 acc、history、work 等布局字段省略 L. 前缀。布局满足 L.Widths、线路互异，y 至少 256 位，i<64、K<2^256，令 d=(Y/16^i) mod 16。

`constDigit_correct` 证明：

```text
{ y=Y, acc=A, work=0 }
montLookupAdd ｜ montLookupSub（地址为 y 的第 i 个四位窗口）
{ acc=(A+K·d) mod 2^261 ｜ (A+2^261−K·d) mod 2^261 }
```

acc 以外的 wire 和相位保持不变。`constDigitAdd_correct`、`constDigitSub_correct` 进一步证明：A+16K<2^261 时，加法得到不截断的 A+K·d，匹配的减法恢复 A。

## [ConstRounds.lean](ConstRounds.lean)

该文件证明连续 k 个常量乘法窗口。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。y 是输入乘数寄存器，初值为 Y；X 是经典常量乘数。L.acc 是累加器，L.history 保存约减记录，L.work 是零工作区；k 是处理的四位窗口数，p 是模数。下文 acc、history、work 等布局字段省略 L. 前缀。L.Widths、参与线路互异，y 至少 256 位，X<p<2^256、p mod 16=15，k≤64。

`constPrepareRounds_correct`、`constRestoreRounds_correct` 证明：

```text
{ y=Y, acc=0, history=0, work=0 }（X 为常量乘数）
constPrepareRounds（k 个窗口）
{ acc=montgomeryValue(p,X,Y,k), history=montgomeryQuotient(p,X,Y,k) }
```

`constRestoreRounds` 恢复 acc=0、history=0。acc、history 以外的 wire 和相位保持不变；这里尚未执行最终模 p 规范化。

## [ConstStageSpec.lean](ConstStageSpec.lean)

该文件证明完整常量 Montgomery 阶段：64 个窗口后再做规范化。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。y 是输入乘数寄存器，初值为 Y；X 是经典常量乘数。L.acc 是累加器，L.history 保存约减记录，L.flag 保存规范化标志，L.work 是零工作区；k 是处理的四位窗口数，p 是模数。下文 acc、history、work 等布局字段省略 L. 前缀。L.Widths、参与线路互异，y 至少 256 位，X<p<2^256、p mod 16=15，令 V=montgomeryValue(p,X,Y,64)、H=montgomeryQuotient(p,X,Y,64)。

`constPrepare_spec`、`constPrepare_correct` 与 `constRestore_spec`、`constRestore_correct` 证明：

```text
{ y=Y, acc=0, history=0, flag=0, work=0 }（X 为常量乘数）
constPrepare
{ acc=V mod p, history=H, flag=(V<p) }
```

`constRestore` 从后置状态恢复 acc、history、flag 全零。acc、history、flag 以外的 wire 和相位保持不变。

`constPreparePrefix_spec`、`constPreparePrefix_correct`、`constRestorePrefix_spec`、`constRestorePrefix_correct` 给出相同的前缀结论，只需将 64 换为 k≤64。历史在准备后保留，到恢复阶段才清零。

## [ConstWindow.lean](ConstWindow.lean)

该文件证明一个常量乘法窗口。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。y 是输入乘数寄存器，初值为 Y；X 是经典常量乘数。L.acc 是累加器，初值为 A；L.history 保存约减记录，初值为 H；L.work 是零工作区，i 是四位窗口编号，p 是模数。下文 acc、history、work 等布局字段省略 L. 前缀。L.Widths、参与线路互异，y 至少 256 位，X<p<2^256、p mod 16=15，i<64、A<2p、H<16^i，令 d=(Y/16^i) mod 16、U=A+X·d。

`constMontWindow_correct`、`constMontRestoreWindow_correct` 证明：

```text
{ y=Y, acc=A, history=H, work=0 }（X 为常量乘数）
constMontWindow
{ acc=(U+(U mod 16)·p)/16, history=H+16^i·(U mod 16) }
```

`constMontRestoreWindow` 恢复 A、H；acc、history 以外的 wire 和相位保持不变。

## [FieldMultiply.lean](FieldMultiply.lean)

该文件提供域乘法接口。

L 是完整模乘电路的输入、输出和工作区布局。L.x、L.y 是输入寄存器，初值为 X、Y；L.out 是输出，初始化为 O；L.work 是初始化为 0 的内部工作区。下文 x、y、out、work 省略 L. 前缀。L.Widths、线路互异，X<p 时，`fieldMul_spec` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
fieldMul L
{ x=X, y=Y, out=O ⊕ ((X·Y) mod p), work=0 }
```

Y 由 256 位寄存器承载，不必额外要求 Y<p。`fieldMul_zero_spec` 是 O=0 的情形；相位保持不变。

- 资源：`fieldMul L`：T = `379424`，M = `379424`，Q = `2596`。

## [MontAdapterSpec.lean](MontAdapterSpec.lean)

该文件将 Montgomery 准备与恢复封装成标准模乘接口。

M 是完整模乘电路的输入、输出和工作区布局。M.x、M.y 是输入寄存器，初值为 X、Y；M.out 是输出，初始化为 O；M.work 是初始化为 0 的内部工作区。下文 x、y、out、work 省略 M. 前缀。M.Widths、参与线路互异，p 为素数、p<2^256、p mod 16=15，X<p、Y<2^256。令 V=(X·Y) mod p。

`montMulXor_spec`、`montMulAdd_spec`、`montMulSub_spec` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
montMulXor ｜ montMulAdd ｜ montMulSub
{ x=X, y=Y, out=O ⊕ V ｜ (O+V) mod p ｜ (O+p−V) mod p, work=0 }
```

加减版本还要求 O<p。`montMulControlledAdd_spec`、`montMulControlledSub_spec` 只在控制为 1 时做对应模加减，否则 out 保持 O；控制保持。

`montSandwich_spec`、`montControlledSandwich_spec` 证明共同的组合规则：若中间程序已被证明只修改 out、保持相位，那么 `montP ++ middle ++ montQ` 保留输入并清零全部内部历史和工作区。以上结论都保持相位。

## [MontConstant.lean](MontConstant.lean)

该文件向累加器加减常量。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。L.acc 是累加器，初值为 A；L.table 暂存常量 K，L.carry 和 L.cin 是进位工作区，均初始化为 0。n 是累加器的位数；下文省略 L. 前缀。acc、table 均为 n 位，carry 为 n−1 位，参与线路互异，K<2^n。

`montConstantUpdate_correct`、`montConstantAdd_correct`、`montConstantSub_correct` 证明：

```text
{ acc=A, table=0, carry=0, cin=0 }
montConstantAdd L K ｜ montConstantSub L K
{ acc=(A+K) mod 2^n ｜ (A+2^n−K) mod 2^n }
```

acc 以外的 wire 和相位保持不变。

## [MontDigit.lean](MontDigit.lean)

该文件累加一个四位窗口的变量乘积。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。x、y 是输入乘数寄存器，初值分别为 X、Y。L.acc 是累加器，初值为 U；L.mask 是掩码，L.pad 是补高位，L.carry、L.cin 是进位工作区，均初始化为 0；i 是窗口编号，k 是该窗口内处理的位数。下文 acc、history、work 等布局字段省略 L. 前缀。使用 261 位 acc/mask、260 位 carry、5 位 pad；x 至少 256 位，y 包含所需窗口，参与线路互异。令 d=(Y/16^i) mod 16，X<2^256、U+16X<2^261。

`montAddDigit_correct`、`montSubDigit_correct` 证明：

```text
{ x=X, y=Y, acc=U, pad=0, mask=0, carry=0, cin=0 }
montAddDigit L x y i
{ acc=U+X·d }
```

`montSubDigit L x y i` 从 U+X·d 恢复 U。acc 以外的 wire 和相位保持不变。

`montAddBits_correct`、`montSubBits_correct` 是只处理窗口前 k≤4 位的版本，贡献为 `X·((Y/2^(4i)) mod 2^k)`。`montBit_correct` 给出单个位的贡献 `X·2^j·((Y/2^(4i+j)) mod 2)`；`maskedDigit_correct` 给出一般受控加减。后两者按累加器位宽截断，也只改变 acc。

## [MontLookup.lean](MontLookup.lean)

该文件通过查表累加或累减 K 倍的四位地址值。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。addr 是地址寄存器，初值为 D，K 是常量乘数；L.acc 是累加器，初值为 A；L.table 暂存查表结果，L.scratch、L.carry、L.cin 是零工作区，n 是累加器的位数。下文布局字段省略 L. 前缀。addr 为 4 位、scratch 为 3 位，acc/table 为 n 位、carry 为 n−1 位，参与线路互异，所有 d<16 都满足 dK<2^n。

`montLookupUpdate_correct`、`montLookupAdd_correct`、`montLookupSub_correct` 证明：

```text
{ addr=D, acc=A, table=0, scratch=0, carry=0, cin=0 }
montLookupAdd L addr K ｜ montLookupSub L addr K
{ acc=(A+D·K) mod 2^n ｜ (A+2^n−D·K) mod 2^n }
```

acc 以外的 wire 和相位保持不变。

## [MontNormalize.lean](MontNormalize.lean)

该文件将累加器规范化到 [0,p)，并保留恢复标志。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。L.acc 是累加器，初值为 A；L.flag 保存恢复标志，L.table、L.carry、L.cin 是工作区，均初始化为 0；p 是模数。下文省略 L. 前缀。acc/table 为 261 位、carry 为 260 位，线路互异，p<2^256、A<2p。

`montNormalize_correct`、`montDenormalize_correct` 证明：

```text
{ acc=A, flag=0, table=0, carry=0, cin=0 }
montNormalize L p
{ acc=A mod p, flag=(A<p) }
```

`montDenormalize L p` 利用该标志恢复 A 并清零 flag。acc、flag 以外的 wire 和相位保持不变。

## [MontPQ.lean](MontPQ.lean)

该文件准备标准表示的模乘积，并在使用后恢复工作区。

M 是完整模乘电路的输入、输出和工作区布局。M.x、M.y 是输入寄存器，初值为 X、Y；M.out 是供后续使用的输出寄存器；M.work 是初始化为 0 的内部工作区。下文 x、y、out、work 省略 M. 前缀。M.Widths、线路互异，p 为素数、p<2^256、p mod 16=15，X<p、Y<2^256。

`montP_spec`、`montP_correct` 与 `montQ_spec`、`montQ_correct` 证明：

```text
{ x=X, y=Y, work=0 }
montP M p
{ MontPrepared(M,p,X,Y) }
```

MontPrepared 保存标准模积 (X·Y) mod p 及两段恢复历史；`montQ M p` 从该状态恢复 x=X、y=Y、work=0。两个阶段都保持 work 以外的 wire 和相位。准备完成不等于历史已清零。

## [MontReduce.lean](MontReduce.lean)

该文件执行一次四位 Montgomery 约减并记录低四位。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。L.acc 是累加器，初值为 U；L.record i 是第 i 个窗口的记录寄存器，初始为 0；L.table、L.scratch、L.carry、L.cin 是零工作区，p 是模数。下文省略 L. 前缀。acc/table 为 261 位、carry 为 260 位、record 为 4 位、scratch 为 3 位，参与线路互异；p mod 16=15，所有 d<16 满足 dp<2^261，且 U+(U mod 16)p<2^261。

`montReduce_correct`、`montRestoreReduce_correct` 证明：

```text
{ acc=U, record(i)=0, table=0, scratch=0, carry=0, cin=0 }
montReduce L p i
{ acc=(U+(U mod 16)·p)/16, record(i)=U mod 16 }
```

`montRestoreReduce L p i` 恢复 U 并清零这条记录。acc 和当前记录以外的 wire 与相位保持不变。

## [MontRotate.lean](MontRotate.lean)

该文件将循环移位用于乘除 2^k。

r 是按低位到高位排列的 wire 列表，表示待移位寄存器，初值为 X；k 是移位位数。r 内线路互异时，`rotateRightBits_spec`、`rotateLeftBits_spec` 证明：

```text
{ r=X, X mod 2^k=0 }
rotateRightBits r k
{ r=X/2^k }

{ r=X, 2^k·X<2^r.length }
rotateLeftBits r k
{ r=2^k·X }
```

相位保持不变。

- 资源：`rotateRightBits r k` / `rotateLeftBits r k`：T = `0`，M = `0`。

## [MontRounds.lean](MontRounds.lean)

该文件证明连续 k 个变量乘法窗口。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。x、y 是输入乘数寄存器，初值分别为 X、Y。L.acc 是累加器，L.history 保存约减记录，L.work 是零工作区；k 是处理的四位窗口数，p 是模数。下文 acc、history、work 等布局字段省略 L. 前缀。L.Widths、参与线路互异，x、y 至少 256 位，X<p<2^256、p mod 16=15，k≤64。

`montPrepareRounds_correct`、`montRestoreRounds_correct` 证明：

```text
{ x=X, y=Y, acc=0, history=0, work=0 }
montPrepareRounds（k 个窗口）
{ acc=montgomeryValue(p,X,Y,k), history=montgomeryQuotient(p,X,Y,k) }
```

`montRestoreRounds` 恢复 acc=0、history=0。acc、history 以外的 wire 和相位保持不变；这里尚未执行最终模 p 规范化。

## [MontStageSpec.lean](MontStageSpec.lean)

该文件证明完整变量 Montgomery 阶段：64 个窗口后再做规范化。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。x、y 是输入乘数寄存器，初值分别为 X、Y。L.acc 是累加器，L.history 保存约减记录，L.flag 保存规范化标志，L.work 是零工作区；k 是处理的四位窗口数，p 是模数。下文 acc、history、work 等布局字段省略 L. 前缀。L.Widths、参与线路互异，x、y 至少 256 位，X<p<2^256、p mod 16=15，令 V=montgomeryValue(p,X,Y,64)、H=montgomeryQuotient(p,X,Y,64)。

`montPrepare_spec`、`montPrepare_correct` 与 `montRestore_spec`、`montRestore_correct` 证明：

```text
{ x=X, y=Y, acc=0, history=0, flag=0, work=0 }
montPrepare
{ acc=V mod p, history=H, flag=(V<p) }
```

`montRestore` 从后置状态恢复 acc、history、flag 全零。acc、history、flag 以外的 wire 和相位保持不变。

`montPreparePrefix_spec`、`montPreparePrefix_correct`、`montRestorePrefix_spec`、`montRestorePrefix_correct` 给出相同的前缀结论，只需将 64 换为 k≤64。历史在准备后保留，到恢复阶段才清零。

## [MontWindow.lean](MontWindow.lean)

该文件证明一个变量乘法窗口。

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局。x、y 是输入乘数寄存器，初值分别为 X、Y。L.acc 是累加器，初值为 A；L.history 保存约减记录，初值为 H；L.work 是零工作区，i 是四位窗口编号，p 是模数。下文 acc、history、work 等布局字段省略 L. 前缀。L.Widths、参与线路互异，x、y 至少 256 位，X<p<2^256、p mod 16=15，i<64、A<2p、H<16^i，令 d=(Y/16^i) mod 16、U=A+X·d。

`montWindow_correct`、`montRestoreWindow_correct` 证明：

```text
{ x=X, y=Y, acc=A, history=H, work=0 }
montWindow
{ acc=(U+(U mod 16)·p)/16, history=H+16^i·(U mod 16) }
```

`montRestoreWindow` 恢复 A、H；acc、history 以外的 wire 和相位保持不变。

## [MontAdapterResources.lean](MontAdapterResources.lean)

M 是完整模乘电路的输入、输出和工作区布局。

- 资源：

  - `montMulXor M p`：T = `379424`，M = `379424`，Q = `2596`。
  - `montMulAdd M p`：T = `380447`，M = `380447`，Q = `2596`。
  - `montMulSub M p`：T = `380959`，M = `380959`，Q = `2596`。
  - `montMulControlledAdd c M p`：T = `380959`，M = `380447`，Q = `2597`。
  - `montMulControlledSub c M p`：T = `381471`，M = `380959`，Q = `2597`。

## [MontCounts.lean](MontCounts.lean)

L 是单个 Montgomery 阶段的累加器、历史记录和工作区布局；M 是完整模乘电路的输入、输出和工作区布局。

- 资源：使用 MontStageLayout.Widths / MontLayout.Widths 规定的固定布局；查表地址为 4 位，轮数 k≤64，完整阶段为 64 个窗口。

  - `montLookup L addr K`：T = `14`，M = `14`。
  - `montLookupAdd L addr K` / `montLookupSub L addr K` / `montReduce L p i` / `montRestoreReduce L p i`：T = `288`，M = `288`。
  - `montNormalize L p` / `montDenormalize L p`：T = `520`，M = `520`。
  - `montAddDigit L x y i` / `montSubDigit L x y i`：T = `2084`，M = `2084`。
  - `montWindow L x y p i` / `montRestoreWindow L x y p i`：T = `2372`，M = `2372`。
  - `constMontWindow L y p K i` / `constMontRestoreWindow L y p K i`：T = `576`，M = `576`。
  - `montPrepareRounds L x y p k` / `montRestoreRounds L x y p k`：T = `2372*k`，M = `2372*k`。
  - `constPrepareRounds L y p K k` / `constRestoreRounds L y p K k`：T = `576*k`，M = `576*k`。
  - `montPrepare L x y p` / `montRestore L x y p`：T = `152328`，M = `152328`。
  - `constPrepare L y p K` / `constRestore L y p K`：T = `37384`，M = `37384`。
  - `montP M p` / `montQ M p`：T = `189712`，M = `189712`。

## [MontResources.lean](MontResources.lean)

M 是完整模乘电路的输入、输出和工作区布局。

- 资源：`montP M p` / `montQ M p`：T = `189712`，M = `189712`，Q = `2339`。
