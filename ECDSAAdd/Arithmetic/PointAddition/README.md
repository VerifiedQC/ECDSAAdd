# 椭圆曲线点加

本模块实现 secp256k1 点与经典常量点相加的电路，包括 XOR 输出、受控原地更新、特殊点分支及辅助位清理。

下文 p、q 表示相应运算的模数；域运算中的 p 是 secp256k1 的素数模数，`Widths` 表示布局中各寄存器的位宽要求。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [ControlledPointAddSpec.lean](ControlledPointAddSpec.lean)

该文件给出完整的受控原地点加接口。

L 是受控原地点加电路的寄存器布局。输入点寄存器 L.point 保存 R，控制位 L.control 的初值为 b，L.work 初始化为 0；C 是要加上的经典点常量，cx、cy 是有限点 C 的坐标。下文 point、control、work 省略 L. 前缀。布局满足 L.Widths、线路互异，R、C 为曲线上的合法点时，`controlledPointAdd_spec` 证明：

```text
{ control=b, point=R, work=0 }
controlledPointAdd L C
{ control=b, point=if b then R+C else R, work=0 }
```

相位保持不变；C 可以是有限点，也可以是无穷远点。

## [ControlledPointOutput.lean](ControlledPointOutput.lean)

该文件给输出阶段加上外部控制。

L 是受控原地点加电路的寄存器布局。L.control 是控制位，初值为 B；L.core.output 是输出点寄存器，编码初始化为 O；选择位指 L.genericSelect、L.doubleSelect、L.infinitySelect，C 是经典点常量。下文 control、output 对应这两个源码字段。L.Widths、线路互异，三个选择位初始为零；令 V 为 [PointOutputProof.lean](PointOutputProof.lean) 中三个分支贡献的异或。

`controlledPointOutput_correct` 证明：

```text
{ control=B, output 的编码=O, 选择位=0 }
controlledPointOutput L C
{ output 的编码=O ⊕ (if B then V else 0) }
```

output 以外的 wire 和相位保持不变，因此选择位恢复零。

## [FieldFrame.lean](FieldFrame.lean)

该文件证明点加所调用的域运算只改变输出。

L 是对应域运算的寄存器布局。L.x、L.y 是输入寄存器，初值为 X、Y；L.out 是输出，初始化为 O，L.work 初始化为 0。下文省略 L. 前缀。布局满足对应位宽条件、线路互异、工作区初始为零时，`fieldSub_correct`、`fieldMul_correct`、`fieldInverse_correct` 证明：

```text
{ x=X, y=Y, out=O, work=0 }
fieldSub ｜ fieldMul
{ out=O ⊕ ((X+p−Y) mod p) ｜ O ⊕ ((X·Y) mod p) }

{ x=X, out=O, work=0 }
fieldInverse
{ out=O ⊕ (X⁻¹ mod p) }
```

减法要求 X、Y<p，乘法要求 X<p，求逆要求 0<X<p。各操作都保持 out 以外的 wire 和相位。

## [PointAddSpec.lean](PointAddSpec.lean)

该文件将点加结果异或到独立输出。

L 是独立输出点加电路的寄存器布局。L.input 保存输入点 R，L.output 是输出点寄存器，编码初始化为 O；L.work 初始化为 0，C 是要加上的经典点常量。下文省略 L. 前缀。L.Widths、线路互异，R、C 为合法点时，`pointAddOut_xor_spec` 证明：

```text
{ input=R, output 的编码=O, work=0 }
pointAddOut L C
{ input=R, output 的编码=O ⊕ encode(R+C), work=0 }
```

encode 包含有限点标志与两个坐标，⊕ 对三部分分别异或。`pointAddOut_spec` 是输出初始编码无穷远点的情形，最终直接编码 R+C；相位保持不变。这里的点 0 是无穷远点，不是仿射坐标 (0,0)。

## [PointCandidateProof.lean](PointCandidateProof.lean)

该文件证明普通点加分支的候选计算与清理。

L 是独立输出点加电路的寄存器布局。输入寄存器 L.extendedX、L.extendedY 的初值为 X、Y，L.generic 的初值 G 表示是否选择普通分支；cx、cy 是常量点的坐标，L.pool 是共享工作区。下文省略 L. 前缀；“输入”指 extendedX、extendedY。L.Widths、线路互异，X、Y<p；普通分支 G=1 时要求 X≠cx。

`pointCandidate_compute_spec`、`pointCandidate_clear_spec` 证明：

```text
{ 输入=(X,Y), generic=G, 候选区=0, pool=0 }
pointCandidateCompute L cx cy
{ 输入=(X,Y), generic=G, 候选区=candidateResult(G,X,Y,cx,cy), pool=0 }
```

candidateResult 保存差值、斜率、逆元与候选坐标。令 d=if G then X−cx else 1，域中的计算为 `λ=(Y−cy)/d`、`x′=λ²−X−cx`、`y′=(X−x′)λ−Y`；各结果保存为 [0,p) 中的整数。

`pointCandidateClear L cx cy` 清零所有候选中间量，保留输入和 G；两个方向都保持相位。这里只证明候选计算，不包含完整分支选择。

## [PointCandidateSpec.lean](PointCandidateSpec.lean)

该文件把候选计算的结果展开成各寄存器的接口。

L 是独立输出点加电路的寄存器布局。输入寄存器 L.extendedX、L.extendedY 的初值为 X、Y，L.generic 的初值 G 表示是否选择普通分支；cx、cy 是常量点的坐标，L.pool 是共享工作区。下文省略 L. 前缀；“输入”指 extendedX、extendedY。沿用 [PointCandidateProof.lean](PointCandidateProof.lean) 的条件，令 V=candidateResult(G,X,Y,cx,cy)。

`pointCandidate_zero_spec`、`pointCandidate_cleanup_spec` 证明：

```text
{ extendedX=X, extendedY=Y, generic=G, 候选中间量=0, constant=0, pool=0 }
pointCandidateCompute L cx cy
{ extendedX=X, extendedY=Y, generic=G, 候选中间量=V, constant=0, pool=0 }
```

候选中间量包括 dx、dy、slope、square、offset、candidateX、delta、product、candidateY、divisor、inverse。`pointCandidateClear` 将它们清零；输入、G 和相位保持不变。

## [PointConstantProof.lean](PointConstantProof.lean)

该文件将点常量受控异或到目标。

r 是目标点寄存器，编码初始化为 O；c 是控制 wire，初值为 B；C 是经典点常量。目标两坐标各 256 位，目标线路互异、控制不与目标重叠。

`maskedPointConstant_correct` 证明：

```text
{ c=B, r 的编码=O }
maskedPointConstant c r C
{ r 的编码=O ⊕ (if B then encode(C) else 全零编码) }
```

异或分别作用于有限点标志和两个坐标；r 以外的 wire 和相位保持不变。

## [PointCopyProof.lean](PointCopyProof.lean)

该文件证明点复制与普通候选输出。

L 是独立输出点加电路的寄存器布局。a、b 是源点与目标点寄存器，编码初值为 A、O。候选输出接口使用 L.generic 作为控制，L.candidateX、L.candidateY 作为候选坐标，L.output 作为输出；下文省略 L. 前缀。两点寄存器的对应坐标等宽、线路互异时，`pointCopy_correct` 证明：

```text
{ a 的编码=A, b 的编码=O }
pointCopy a b
{ b 的编码=O ⊕ A }
```

`pointGenericOutput_correct` 在 L.Widths、线路互异时证明：generic=1 就将 `(1,candidateX 的低256位,candidateY 的低256位)` 异或到 output，否则不改 output。两种操作都保持输出以外的 wire 和相位。

## [PointEncoding.lean](PointEncoding.lean)

该文件证明点相等检测。

r 是输入点寄存器，保存 R；C 是用于比较的经典点常量，c 是控制 wire，初值为 B，t 是目标 wire，初值为 T；work 是零工作区。点坐标各 256 位，work 为 513 位，参与线路互异，r 编码合法点 R。

`equalPoint_correct` 证明：

```text
{ c=B, r=R, t=T, work=0 }
equalConstant（对点编码与 pointCode(C) 比较）
{ t=T ⊕ (B AND (R=C)) }
```

t 以外的 wire 和相位保持不变。

## [PointFlagProof.lean](PointFlagProof.lean)

该文件证明点加分支标志的计算与清理。

L 是独立输出点加电路的寄存器布局。L.input.finite 是输入有限点标志，初值为 F，L.input.x、L.input.y 保存输入坐标 X、Y；cx、cy 是常量点坐标，L.flags 是分支标志列表，L.pool 是零工作区。下文其余字段省略 L. 前缀。L.Widths、线路互异，令 F 为输入有限点标志，输入坐标为 X、Y。

`pointFlagsCompute_correct`、`pointFlagsClear_correct` 证明：

```text
{ flags=0, pool=0 }
pointFlagsCompute L cx cy
{ equalX=F AND (X=cx), equalNegY=F AND (Y=−cy),
  generic=F AND NOT equalX, double=equalX AND NOT equalNegY }
```

这里 −cy 是域中的取负。`pointFlagsClear` 将这些正确的标志清零；flags 以外的 wire 和相位保持不变。

`equalPorts_correct` 是底层比较：等宽 src/work、参与线路互异、k 能放入 src、work=0 时，仅将 `控制 AND (src=k)` 异或到目标。

## [PointFlags.lean](PointFlags.lean)

该文件由有限点与相等标志生成两个分支标志。源码参数 f、ex、ey 分别是有限点、横坐标相等、纵坐标互为负数的标志；g、d 是普通分支与倍点分支标志。它们的初值依次记作 F、EX、EY、G、D。五根线路互异时，`pointBranchFlags_correct` 证明：

```text
{ f=F, ex=EX, ey=EY, g=G, d=D }
pointBranchFlags f ex ey g d
{ g=G ⊕ (F AND NOT EX), d=D ⊕ (EX AND NOT EY) }
```

g、d 以外的 wire 和相位保持不变。

- 资源：`pointBranchFlags f ex ey g d`：T = `2`，M = `0`。

## [PointInPlaceClearSlope.lean](PointInPlaceClearSlope.lean)

该文件在原地点加结束前清零斜率。

L 是受控原地点加电路的寄存器布局。L.point.x、L.point.y 保存域值 X、Y，L.inPlaceSlope 保存斜率 A，L.core.generic 保存分支值 G；k 是在 X=0 分支使用的斜率常量。L.Widths、线路互异；G=1 时要求 Y=A·X，且 X=0 时 A=k；G=0 时要求 A=0。

`pointInPlaceClearSlope_spec` 证明以下域值关系：

```text
{ PointInPlaceValues(L,X,Y,A,G,0,0) }
pointInPlaceClearSlope L k
{ PointInPlaceValues(L,X,Y,0,G,0,0) }
```

即清零斜率 A，保留 X、Y、普通分支标志 G 和两个为零的辅助标志；相位保持不变。

## [PointInPlaceConstant.lean](PointInPlaceConstant.lean)

该文件受控地向点坐标加常量。

L 是受控原地点加电路的寄存器布局。r 是选中的坐标寄存器，初值为 Z；L.core.generic 是控制位，初值为 B，k 是域常量，L.inPlaceBorrow 是零借用工作区。下文 generic 简写 L.core.generic，inPlaceBorrow 简写 L.inPlaceBorrow。L.Widths、线路互异，r 为横坐标或纵坐标，Z<p。

`pointInPlaceConstantAdd_correct` 证明：

```text
{ generic=B, r=Z, inPlaceBorrow=0 }
pointInPlaceConstantAdd L r k
{ r=(Z+(if B then k.val else 0)) mod p }
```

r 以外的 wire 和相位保持不变。`constant_program_spec` 证明其内部“装载常量—模加—清除常量”过程，装载寄存器和工作区均从零恢复到零。

## [PointInPlaceFiniteSpec.lean](PointInPlaceFiniteSpec.lean)

该文件证明对有限常量点 C 的受控原地点加。

L 是受控原地点加电路的寄存器布局。输入点寄存器 L.point 保存 R，控制位 L.control 的初值为 b，L.work 初始化为 0；C 是要加上的经典点常量，cx、cy 是有限点 C 的坐标。下文 point、control、work 省略 L. 前缀。L.Widths、线路互异，C=(cx,cy) 满足曲线非奇异条件。

`pointInPlaceFinite_spec` 证明：

```text
{ PointInPlaceBoundary(L,R,b,全零标志) }
pointInPlaceFinite L C cx cy
{ PointInPlaceBoundary(L,if b then R+C else R,b,全零标志) }
```

控制和相位保持不变，边界断言中的各辅助标志恢复为零。

## [PointInPlaceFlagGates.lean](PointInPlaceFlagGates.lean)

该文件证明原地点加使用的两个标志更新。

L 是受控原地点加电路的寄存器布局。L.core.generic 是待更新标志，初值为 G；L.control 的初值为 B，L.infinitySelect、L.doubleSelect、L.genericSelect 的初值为 I、D、S。下文 generic 简写 L.core.generic，其余字段省略 L.；cy 是常量点的纵坐标。`pointInPlaceGenericFlag_correct` 在 L.Widths、线路互异时证明：

```text
{ generic=G, control=B, infinitySelect=I, doubleSelect=D, genericSelect=S }
pointInPlaceGenericFlag L
{ generic=G ⊕ B ⊕ I ⊕ D ⊕ S }
```

`pointInPlaceDoubleEnable_correct` 证明 double 异或 `control AND (cy≠−cy)`。每个操作只改变自己的目标标志，其他 wire 和相位保持不变。

## [PointInPlaceIntegration.lean](PointInPlaceIntegration.lean)

该文件将有限常量点加的边界证明接到完整寄存器接口。

L 是受控原地点加电路的寄存器布局。输入点寄存器 L.point 保存 R，控制位 L.control 的初值为 b，L.work 初始化为 0；C 是要加上的经典点常量，cx、cy 是有限点 C 的坐标。下文 point、control、work 省略 L. 前缀。L.Widths、线路互异，C=(cx,cy) 为曲线上的非奇异有限点时，`pointInPlaceFinite_full_spec` 证明：

```text
{ control=b, point=R, work=0 }
pointInPlaceFinite L C cx cy
{ control=b, point=if b then R+C else R, work=0 }
```

相位保持不变；这里清零的是整个工作区。

## [PointInPlaceNegate.lean](PointInPlaceNegate.lean)

该文件受控地对横坐标取模负值。

L 是受控原地点加电路的寄存器布局。L.point.x 是横坐标寄存器，初值为 A；L.core.generic 是控制位，初值为 B，L.inPlaceBorrow 初始化为 0。下文 generic 简写 L.core.generic，其余字段省略 L. 前缀。L.Widths、线路互异、A<p 时，`pointInPlaceNegate_spec` 和 `pointInPlaceNegate_correct` 证明：

```text
{ generic=B, point.x=A, inPlaceBorrow=0 }
pointInPlaceNegate L
{ point.x=if B then (p−A) mod p else A }
```

point.x 以外的 wire 和相位保持不变；规格中的辅助目标和工作区均恢复零。

## [PointInPlaceProduct.lean](PointInPlaceProduct.lean)

该文件向纵坐标累加或累减“斜率×横坐标”。

L 是受控原地点加电路的寄存器布局。L.inPlaceSlope 保存斜率 A，L.point.x、L.point.y 保存坐标 X、Y，L.inPlaceBorrow 初始化为 0。下文省略 L. 前缀。L.Widths、线路互异，A、X、Y<p 时，`pointInPlaceProduct_correct` 证明：

```text
{ inPlaceSlope=A, point.x=X, point.y=Y, inPlaceBorrow=0 }
montMulAdd L.inPlaceMultiply p ｜ montMulSub L.inPlaceMultiply p
{ point.y=(Y+(A·X mod p)) mod p ｜ (Y+p−(A·X mod p)) mod p }
```

point.y 以外的 wire 和相位保持不变。

## [PointInPlaceSquare.lean](PointInPlaceSquare.lean)

该文件从横坐标减去斜率平方。

L 是受控原地点加电路的寄存器布局。L.inPlaceSlope 保存斜率 A，L.point.x 保存待更新横坐标 X，L.inPlaceBorrow 初始化为 0。下文省略 L. 前缀。L.Widths、线路互异，A、X<p 时，`square_program_spec` 和 `pointInPlaceSquare_correct` 证明：

```text
{ inPlaceSlope=A, point.x=X, inPlaceBorrow=0 }
复制斜率 ++ montMulSub L.inPlaceSquare p ++ 清除斜率副本
{ point.x=(X+p−(A² mod p)) mod p }
```

point.x 以外的 wire 和相位保持不变，包括斜率副本与工作区的恢复。

## [PointOutputProof.lean](PointOutputProof.lean)

该文件把各分支的编码异或到输出。

L 是独立输出点加电路的寄存器布局。L.output 是输出点寄存器，编码初始化为 O；L.generic、L.double、L.input.finite 的初值为 G、D、F，C 是经典点常量。下文省略 L. 前缀。L.Widths、线路互异，令 E 为普通候选编码 `(1,candidateX 的低256位,candidateY 的低256位)`。

`pointOutput_correct` 证明：

```text
{ output 的编码=O, generic=G, double=D, input.finite=F }
pointOutput L C
{ output 的编码=O ⊕ (if G then E else 0)
                    ⊕ (if D then encode(C+C) else 0)
                    ⊕ (if NOT F then encode(C) else 0) }
```

output 以外的 wire 和相位保持不变。这是输出阶段的结论，须配合分支标志与候选计算才能得到完整点加。

`negativePointConstant_correct` 证明负控制常量输出：目标坐标各 256 位、线路互异且控制不与目标重叠时，仅在控制为 0 时异或 encode(C)，目标外的 wire 与相位保持。

## [PointSelectors.lean](PointSelectors.lean)

该文件把外部控制合入三个分支选择位。

L 是受控原地点加电路的寄存器布局。L.control 是外部控制位，初值为 B；L.core.generic、L.core.double、L.core.input.finite 的初值为 G、D、F。三个输出选择位 L.genericSelect、L.doubleSelect、L.infinitySelect 初始化为 Sg、Sd、Si；下文对应省略 L.core. 或 L. 前缀。线路互异时，`pointSelectors_correct` 证明：

```text
{ control=B, generic=G, double=D, input.finite=F,
  genericSelect=Sg, doubleSelect=Sd, infinitySelect=Si }
pointSelectors L
{ genericSelect=Sg ⊕ (B AND G), doubleSelect=Sd ⊕ (B AND D),
  infinitySelect=Si ⊕ (B AND NOT F) }
```

三个选择位以外的 wire 和相位保持不变。

- 资源：`pointSelectors L`：T = `3`，M = `0`。

## [SafeDivisor.lean](SafeDivisor.lean)

该文件在普通分支选用输入分母，在其他分支选用 1。

g 是普通分支控制位，初值为 G；src 是源寄存器，初值为 X；head 是目标的最低位，tail 是其余位，目标 head::tail 初始化为 O。src 与目标等宽、参与线路互异时，`safeDivisor_correct` 证明：

```text
{ g=G, src=X, target=O }
safeDivisor g src head tail
{ target=O ⊕ (if G then X else 1) }
```

target=head::tail；其余 wire 和相位保持不变。只有 O=0 时，目标才直接保存所选分母。

- 资源：`safeDivisor g src head tail`：T = `src.length`，M = `0`。

## [SelectedPointOutput.lean](SelectedPointOutput.lean)

该文件按三个选择位写入点输出。

L 是受控原地点加电路的寄存器布局。L.core.output 是输出点寄存器，编码初始化为 O；L.genericSelect、L.doubleSelect、L.infinitySelect 是三个选择位，初值为 G、D、I；C 是经典点常量。下文 output 简写 L.core.output，选择位省略 L. 前缀。L.Widths、线路互异，令 E 为普通候选的有限标志与低 256 位坐标编码。

`selectedPointOutput_correct` 证明：

```text
{ output 的编码=O, genericSelect=G, doubleSelect=D, infinitySelect=I }
selectedPointOutput L C
{ output 的编码=O ⊕ (if G then E else 0)
                    ⊕ (if D then encode(C+C) else 0)
                    ⊕ (if I then encode(C) else 0) }
```

output 以外的 wire 和相位保持不变；这里证明选定编码的异或，不单独证明完整点加。

- 资源：`selectedPointOutput L C`：T = `512`，M = `0`。

## [ControlledPointResources.lean](ControlledPointResources.lean)

L 是受控原地点加电路的寄存器布局。

- 资源：`.some hc` 表示有限常量点；常量 0 表示无穷远点，不是有限点 (0,0)。

  - `controlledPointOutput L C`：T = `518`，M = `0`。
  - `controlledPointAddOut L (.some hc)`：T = `9321834`，M = `6147424`，Q = `9784`。
  - `controlledPointAdd L (.some hc)`：T = `8946186`，M = `5772554`，Q = `6218`。
  - `controlledPointAdd L 0`：T = `0`，M = `0`，Q = `0`。

## [PointAddResources.lean](PointAddResources.lean)

L 是独立输出点加电路的寄存器布局。

- 资源：`.some hc` 表示有限常量点；常量 0 表示无穷远点，其分支仍需点复制线路。

  - `pointAddOut L (.some hc)`：T = `9321828`，M = `6147424`，Q = `9780`。
  - `pointAddOut L 0`：T = `0`，M = `0`，Q = `1026`。

## [PointCandidateResources.lean](PointCandidateResources.lean)

L 是独立输出点加电路的寄存器布局。

- 资源：

  - `pointSubConstant L x out k`：T = `1284`，M = `1028`。
  - `pointSquare L`：T = `379424`，M = `379424`。
  - `pointCandidateCompute L cx cy` / `pointCandidateClear L cx cy`：T = `4660144`，M = `3073200`。

## [PointFlagResources.lean](PointFlagResources.lean)

L 是独立输出点加电路的寄存器布局。

- 资源：`pointFlagsCompute L cx cy` / `pointFlagsClear L cx cy`：T = `514`，M = `512`。

## [PointInPlaceCounts.lean](PointInPlaceCounts.lean)

L 是受控原地点加电路的寄存器布局。

- 资源：

  - `pointInPlaceConstantAdd L r k`：T = `1023`，M = `1023`。
  - `pointInPlaceNegate L`：T = `3838`，M = `2558`。
  - `pointInPlaceGeneric L cx cy lambdaStar`：T = `8943108`，M = `5769476`。
  - `pointInPlaceFinite L C cx cy`：T = `8946186`，M = `5772554`。

## [PointInPlaceResources.lean](PointInPlaceResources.lean)

L 是受控原地点加电路的寄存器布局。

- 资源：`pointInPlaceFinite L C cx cy`：Q = `6218`。

## [PointOutputResources.lean](PointOutputResources.lean)

L 是独立输出点加电路的寄存器布局。

- 资源：

  - `maskedPointConstant c r C` / `negativePointConstant c r C` / `pointCopy a b`：T = `0`，M = `0`。
  - `pointGenericOutput L` / `pointOutput L C`：T = `512`，M = `0`。
