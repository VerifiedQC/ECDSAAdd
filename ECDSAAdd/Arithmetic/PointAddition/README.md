# 椭圆曲线点加

本模块实现 secp256k1 点与经典常量点相加的电路，包括 XOR 输出、受控原地更新、特殊点分支及辅助位清理。

## 文件目录

以下只列本文件证明的项目，均以对应定理的线路互异、位宽、数值范围和工作区初态等条件为前提。`_spec` 保证对任意测量结果满足后置断言并保持相位；未提及的线路是否保持，需看相应结论。

资源中 T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数；未列出的项不代表零，T=0 也不代表没有其他门。资源公式保留源码参数名，其中 Nat 减法按自然数截断。

[CandidatePool.lean](#candidatepoollean)

这个文件确定点加候选计算实际使用的共享池子集，并证明长度、包含及并集关系。

[ControlledPointAddSpec.lean](#controlledpointaddspeclean)

这个文件给出受控点加的完整公开规格，连接控制状态与最终点加结果。

- 规格：合法点 R、控制 b 和零工作区下，原地点变为 `if b then R+C else R`，控制保持，工作区恢复零；覆盖有限常量点和无穷远常量点。

[ControlledPointLayout.lean](#controlledpointlayoutlean)

这个文件定义受控点加的选择、输出和完整入口程序，区分 XOR 与原地路径。

[ControlledPointOutSpec.lean](#controlledpointoutspeclean)

这个文件定义受控 XOR 点加初态，并证明有限常量点的完整输出规格。

[ControlledPointOutput.lean](#controlledpointoutputlean)

这个文件证明受控输出选择的计算结果及其与核心寄存器的分离。

- 正确性：控制关闭不改输出，开启时把普通候选、倍点常量和无穷远输入对应常量点的选定编码异或到输出；输出之外的位及相位不变。该文件证明输出阶段，不单独证明完整点加。

[ControlledPointPorts.lean](#controlledpointportslean)

这个文件定义受控点加布局及各视图，证明线路互异和选择布局前提。

[ControlledPointResources.lean](#controlledpointresourceslean)

这个文件证明受控点加输出及完整程序的资源，分别处理有限常量和无穷远常量。

- 资源：`.some hc` 表示有限常量点；常量 0 表示无穷远点，不是有限点 (0,0)。

  - `controlledPointOutput L C`：T = `518`，M = `0`。
  - `controlledPointAddOut L (.some hc)`：T = `9321834`，M = `6147424`，Q = `9784`。
  - `controlledPointAdd L (.some hc)`：T = `8946186`，M = `5772554`，Q = `6218`。
  - `controlledPointAdd L 0`：T = `0`，M = `0`，Q = `0`。

[ControlledPointStages.lean](#controlledpointstageslean)

这个文件定义控制状态并证明受控点加各阶段的组合与保持关系。

[ControlledPointSupport.lean](#controlledpointsupportlean)

这个文件确定受控 XOR 点加实际使用的线路并证明其支持集。

[FieldFrame.lean](#fieldframelean)

这个文件将域减法、域乘法和求逆的规格提升为逐线状态保持结论。

- 正确性：域减法、乘法和非零输入求逆分别把相应结果异或到输出；每种操作都保持输出之外的所有基态位与相位。

[PointAddFrames.lean](#pointaddframeslean)

这个文件证明候选计算、标志和输出之间的线路分离及状态保持关系。

[PointAddLayout.lean](#pointaddlayoutlean)

这个文件定义点加输入、输出、候选寄存器及共享池布局，并给出位宽和分配长度。

[PointAddResources.lean](#pointaddresourceslean)

这个文件证明 XOR 点加在有限常量和无穷远常量情况下的精确资源。

- 资源：`.some hc` 表示有限常量点；常量 0 表示无穷远点，其分支仍需点复制线路。

  - `pointAddOut L (.some hc)`：T = `9321828`，M = `6147424`，Q = `9780`。
  - `pointAddOut L 0`：T = `0`，M = `0`，Q = `1026`。

[PointAddSpec.lean](#pointaddspeclean)

这个文件组合所有点加阶段，证明 XOR 输出和零输出的完整点群加法规格。

- 规格：将 R+C 的有限点标志与两个坐标分别异或到输出编码，保持输入 R 并恢复零工作区；输出初始编码无穷远点时，最终直接编码 R+C。

[PointAddStages.lean](#pointaddstageslean)

这个文件定义点加阶段状态，并证明候选计算与输出阶段的状态衔接。

[PointAddState.lean](#pointaddstatelean)

这个文件定义点加边界状态，并证明候选计算期间边界保持及初态转换。

[PointAddSupport.lean](#pointaddsupportlean)

这个文件证明完整 XOR 点加的实际支持集及线路数。

[PointCandidate.lean](#pointcandidatelean)

这个文件定义普通分支候选坐标的计算与清理程序，复用共享算术工作池。

[PointCandidateBlocks.lean](#pointcandidateblockslean)

这个文件证明候选计算中的常量减法与平方组合怎样更新寄存器。

[PointCandidateLayout.lean](#pointcandidatelayoutlean)

这个文件证明候选算术接口的输入长度、池前缀和线路互异性。

[PointCandidateProof.lean](#pointcandidateprooflean)

这个文件证明候选计算与按依赖顺序清理的完整寄存器结果。

- 规格：在 CandidateValues 断言下，compute 从输入 X、Y 和零候选区得到 candidateResult 指定的差值、逆元、斜率与候选坐标，clear 将它们清零；保持输入及普通分支标志。

[PointCandidateResources.lean](#pointcandidateresourceslean)

这个文件证明候选计算、清理及辅助常量减法与平方的门数和测量数。

- 资源：

  - `pointSubConstant L x out k`：T = `1284`，M = `1028`。
  - `pointSquare L`：T = `379424`，M = `379424`。
  - `pointCandidateCompute L cx cy` / `pointCandidateClear L cx cy`：T = `4660144`，M = `3073200`。

[PointCandidateSpec.lean](#pointcandidatespeclean)

这个文件把候选寄存器结果连接到域坐标公式，并给出计算和清理规格。

- 规格：逐寄存器给出候选计算与清理的前后值：compute 保留候选坐标及其差值、斜率、逆元等中间量，常量寄存器和共享池清零；clear 再清零全部候选中间量，输入和普通分支标志保持。

[PointCandidateState.lean](#pointcandidatestatelean)

这个文件定义候选寄存器字段与状态断言，并证明字段分离和状态更新。

[PointCandidateSteps.lean](#pointcandidatestepslean)

这个文件证明候选计算中的减法、复制、求逆、乘法和安全分母步骤。

[PointCandidateSupport.lean](#pointcandidatesupportlean)

这个文件确定候选计算涉及的算术支持和共享池子集，并证明完整支持。

[PointCandidateValues.lean](#pointcandidatevalueslean)

这个文件定义安全分母和候选坐标的数学值，证明非零性及普通分支公式。

[PointClassification.lean](#pointclassificationlean)

这个文件将合法点分类为普通、倍点等分支，并证明分类与点加结果的关系。

[PointConstantProof.lean](#pointconstantprooflean)

这个文件证明受控点常量写入对有限标志和坐标的作用。

- 正确性：控制开启时将点常量 C 的完整编码异或到目标，关闭则不变；目标外所有位与相位保持。

[PointCopyProof.lean](#pointcopyprooflean)

这个文件证明点复制与普通候选输出的坐标更新及布局前提。

- 正确性：点复制异或源点的有限标志和坐标；普通候选输出仅在 generic 开启时异或候选低 256 位坐标和有限标志。两者都保持输出外所有位与相位。

[PointEffect.lean](#pointeffectlean)

这个文件定义点输出的状态变化关系，并证明它的组合和逐字段更新性质。

[PointEncoding.lean](#pointencodinglean)

这个文件定义完整点编码及相等检测，证明编码范围、单射性和检测正确性。

- 正确性：只把 `控制 AND (R=C)` 异或到目标位，保持其他所有基态位与相位。

[PointFlagLayout.lean](#pointflaglayoutlean)

这个文件连接点坐标零检测布局，定义输入分类标志的计算与清理程序。

[PointFlagProof.lean](#pointflagprooflean)

这个文件证明点分类标志的计算、保持、往返恢复和清理。

- 正确性：比较端口只写目标相等标志；分类计算得到 equalX、equalNegY、generic、double 四位，清理将四位恢复为零，其他基态位与相位不变。

[PointFlagResources.lean](#pointflagresourceslean)

这个文件证明点分类标志程序的门数、测量数与实际支持。

- 资源：`pointFlagsCompute L cx cy` / `pointFlagsClear L cx cy`：T = `514`，M = `512`。

[PointFlagStages.lean](#pointflagstageslean)

这个文件连接点加初态、边界和分类标志，证明标志准备与清理阶段。

[PointFlags.lean](#pointflagslean)

这个文件定义从相等标志组合普通、倍点标志的门列，并证明结果和计数。

- 正确性：只将 `finite AND NOT equalX` 异或到 generic，将 `equalX AND NOT equalNegY` 异或到 double，其他基态位与相位不变。
- 资源：`pointBranchFlags f ex ey g d`：T = `2`，M = `0`。

[PointInPlaceBoundary.lean](#pointinplaceboundarylean)

这个文件定义原地点加的边界断言，并证明点、标志和算术状态的更新关系。

[PointInPlaceBoundarySteps.lean](#pointinplaceboundarystepslean)

这个文件把原地点加的检测与普通分支步骤接到边界断言。

[PointInPlaceClassification.lean](#pointinplaceclassificationlean)

这个文件定义受控原地点加的特殊与普通分支，证明分类及输出侧标志关系。

[PointInPlaceClearSlope.lean](#pointinplaceclearslopelean)

这个文件证明原地点加用更新后的坐标清除斜率，包括例外分母情况。

- 规格：在斜率与输出坐标满足给定关系的前提下，把斜率 A 清零，保持 X、Y、普通分支标志和两个为假的辅助标志。

[PointInPlaceConditions.lean](#pointinplaceconditionslean)

这个文件证明原地点加的零检测、商标志和斜率清理步骤。

[PointInPlaceConstant.lean](#pointinplaceconstantlean)

这个文件证明原地点加的受控常量加法及其目标外保持。

- 规格：控制 B 开启时将 k 模加到 Z，关闭时 Z 不变；装载常量的寄存器和工作区从零恢复为零，控制保持。
- 正确性：指定目标 r 变为 `(Z+(if B then k.val else 0)) mod p`，r 之外的所有基态位及相位不变。

[PointInPlaceCorners.lean](#pointinplacecornerslean)

这个文件证明无穷远、倍点和互逆点等特殊分支的原地写回。

[PointInPlaceCounts.lean](#pointinplacecountslean)

这个文件汇总原地点加辅助程序、普通分支和完整有限常量程序的资源计数。

- 资源：

  - `pointInPlaceConstantAdd L r k`：T = `1023`，M = `1023`。
  - `pointInPlaceNegate L`：T = `3838`，M = `2558`。
  - `pointInPlaceGeneric L cx cy lambdaStar`：T = `8943108`，M = `5769476`。
  - `pointInPlaceFinite L C cx cy`：T = `8946186`，M = `5772554`。

[PointInPlaceFiniteSpec.lean](#pointinplacefinitespeclean)

这个文件将分类、普通和特殊分支组合为有限常量点的原地点加规格。

- 规格：在 PointInPlaceBoundary 边界状态断言下，对有限常量点 C 原地执行受控 R+C，保留控制，最终各标志恢复为零。

[PointInPlaceFlagGates.lean](#pointinplaceflaggateslean)

这个文件证明原地点加普通分支标志及倍点使能标志的门列结果。

- 正确性：generic 异或外部控制与三个选择标志；double 异或 `控制 AND (cy≠−cy)`。每个门只修改其目标标志，其余基态位和相位不变。

[PointInPlaceFlagState.lean](#pointinplaceflagstatelean)

这个文件描述原地点加标志的状态更新，证明读值、清零及边界保持。

[PointInPlaceFlagSteps.lean](#pointinplaceflagstepslean)

这个文件证明原地点加对无穷远、倍点和互逆点的检测与标志组合步骤。

[PointInPlaceGeneric.lean](#pointinplacegenericlean)

这个文件分别证明普通分支启用和禁用时的原地坐标更新与工作位恢复。

[PointInPlaceGenericPoint.lean](#pointinplacegenericpointlean)

这个文件把普通分支的坐标计算结果连接到点群加法。

[PointInPlaceIntegration.lean](#pointinplaceintegrationlean)

这个文件将局部有限点规格扩展到完整工作区，证明最终点更新和全部工作位清理。

- 规格：完整寄存器规格为：控制 b 与点 R 保持约定编码，点更新为 `if b then R+C else R`，整个工作区从零恢复为零。

[PointInPlaceLayout.lean](#pointinplacelayoutlean)

这个文件定义原地点加共享求逆、除法、模乘等接口，并证明基本长度和位宽。

[PointInPlaceLayoutProof.lean](#pointinplacelayoutprooflean)

这个文件证明原地点加各算术视图的工作区借用、线路互异和接口前提。

[PointInPlaceNegate.lean](#pointinplacenegatelean)

这个文件证明原地点加中坐标取负的规格及目标外保持。

- 规格：普通分支标志 B 开启时把 A 变为 `(p−A) mod p`，否则保持 A；标志保持，辅助目标与工作区从零恢复为零。
- 正确性：横坐标在普通分支开启时变为 `(p−A) mod p`，关闭时不变；横坐标之外所有位与相位保持。

[PointInPlaceProduct.lean](#pointinplaceproductlean)

这个文件证明原地点加中乘积累加的结果和共享工作区恢复。

- 正确性：纵坐标分别变为 `(Y+(A·X mod p)) mod p` 或 `(Y+p−(A·X mod p)) mod p`；纵坐标之外所有位与相位保持。

[PointInPlaceProgram.lean](#pointinplaceprogramlean)

这个文件定义原地点加的常量操作、斜率清理、普通分支、特殊分支和完整门列。

[PointInPlaceResources.lean](#pointinplaceresourceslean)

这个文件证明受控原地点加实际使用线路互异，并给出精确线路数。

- 资源：`pointInPlaceFinite L C cx cy`：Q = `6218`。

[PointInPlaceSquare.lean](#pointinplacesquarelean)

这个文件证明通过复制斜率和模乘实现平方累减，并恢复临时副本。

- 规格：保留斜率 A，把目标 X 更新为 `(X+p−(A·A mod p)) mod p`，复制斜率用的寄存器与工作区从零恢复为零。
- 正确性：横坐标变为 `(X+p−(A² mod p)) mod p`，横坐标之外所有位与相位不变，包括恢复斜率副本和工作区。

[PointInPlaceState.lean](#pointinplacestatelean)

这个文件定义原地点加算术状态，证明借用区清零及各坐标和标志的局部更新。

[PointInPlaceSteps.lean](#pointinplacestepslean)

这个文件证明原地点加的坐标加法、乘积、取负、平方和除法各步状态变化。

[PointInPlaceSupport.lean](#pointinplacesupportlean)

这个文件证明原地点加普通分支的支持范围及范围外状态保持。

[PointInPlaceWires.lean](#pointinplacewireslean)

这个文件确定普通分支和完整有限常量原地点加的精确线路支持。

[PointOutput.lean](#pointoutputlean)

这个文件定义点常量写入、候选输出、点复制及完整 XOR 点加程序。

[PointOutputProof.lean](#pointoutputprooflean)

这个文件证明不同点分类分支合成后的输出编码结果。

- 正确性：负控制常量输出只在控制为假时异或点常量；完整输出阶段按普通、倍点、无穷远输入标志异或对应编码。输出外所有位和相位保持。

[PointOutputResources.lean](#pointoutputresourceslean)

这个文件证明点输出与复制等程序的门数、测量数和支持集。

- 资源：

  - `maskedPointConstant c r C` / `negativePointConstant c r C` / `pointCopy a b`：T = `0`，M = `0`。
  - `pointGenericOutput L` / `pointOutput L C`：T = `512`，M = `0`。

[PointSelectors.lean](#pointselectorslean)

这个文件证明外部控制与点分类组合后的输出选择标志及资源关系。

- 正确性：三个选择位分别异或外部控制与普通、倍点、输入无穷远条件的 AND；其余所有基态位与相位不变。
- 资源：`pointSelectors L`：T = `3`，M = `0`。

[SafeDivisor.lean](#safedivisorlean)

这个文件把非普通分支的除数安全地设为 1，并证明结果及资源。

- 正确性：目标异或普通分支的源值，非普通分支则异或 1；目标外所有位与相位不变。只有目标初始为零时，它才直接保存这个安全分母。
- 资源：`safeDivisor g src head tail`：T = `src.length`，M = `0`。

[SelectedPointOutput.lean](#selectedpointoutputlean)

这个文件证明按已计算选择标志写出点加结果的正确性与资源。

- 正确性：按三个选择位异或普通候选、倍点常量及无穷远输入对应常量点的编码，保持输出外所有位和相位。
- 资源：`selectedPointOutput L C`：T = `512`，M = `0`。

## [CandidatePool.lean](CandidatePool.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def usedBank (w : Nat → Wire) (a : Nat) : List Wire
```

求逆八线银行的实际七线支持；旧 out 在偏移5。

```lean
theorem usedBank_sublist (w : Nat → Wire) (a : Nat)
```

证明了 `(usedBank w a)` 是 `(wireBlock w a 8)` 的子列表，顺序与重复次数均兼容。

```lean
def candidatePool (w : Nat → Wire) : List Wire
```

模减使用前1827位，补回求逆前228个银行的旧out；余29个out仍不触及。

```lean
theorem candidatePool_length (w : Nat → Wire)
```

证明了寄存器或线路列表的长度关系：`(candidatePool w).length=5670`。

```lean
theorem candidatePool_sublist (w : Nat → Wire)
```

证明了 `(candidatePool w)` 是 `(wireBlock w 0 5699)` 的子列表，顺序与重复次数均兼容。

```lean
theorem block_prefix (w : Nat → Wire) (a b : Nat) (h : a≤b)
```

证明了 `(wireBlock w 0 a)` 是 `(wireBlock w 0 b)` 的子列表，顺序与重复次数均兼容。

```lean
theorem bank_prefix (w : Nat → Wire) (i : Nat) (hi : i<228)
```

证明了指定编号范围内工作块的实际用线都落在共享池前 1829 根线路内。

```lean
theorem candidatePool_union (w : Nat → Wire)
```

证明了 `(candidatePool w).toFinset` 等于 `(wireBlock w 0 1827).toFinset ∪ (poolInverseUsedWork w).toFinset`。

## [ControlledPointAddSpec.lean](ControlledPointAddSpec.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem controlledPointAddOut_ready (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (b : Bool) (R C : Point) (hc : C≠0) (OF : Bool) (OX OY : Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ControlledPointReady L b R OF OX OY) (controlledPointAddOut L C) (ControlledPointReady L b R (OF^^(b&&pointFinite (R+C))) (OX^^^(if b then pointX (R+C) else 0)) (OY^^^(if b then pointY (R+C) else 0)))`。

```lean
theorem controlledPointAdd_spec (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (b : Bool) (R C : Point)
```

证明了完整受控原地点加：任意合法点与经典常量，包括 O、互逆点和倍点。 控制位保持；临时点、算术工作区及三个选择位全部归零；所有测量记录下相位恢复。

## [ControlledPointLayout.lean](ControlledPointLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointSelectors (L : ControlledPointLayout) : Program
```

控制只进入三个最终输出标志，候选算术及测量序列不依赖控制值。

```lean
def selectedPointOutput (L : ControlledPointLayout) (C : Point) : Program
```

按已有的选择标志写出普通候选、倍点常量或常量点。

```lean
def controlledPointOutput (L : ControlledPointLayout) (C : Point) : Program
```

计算受控选择标志、写入点结果，再清除选择标志。

```lean
def controlledPointAddOut (L : ControlledPointLayout) (C : Point) : Program
```

控制为假的分支也计算并清理候选，只抑制最终输出。

```lean
def controlledPointAdd (L : ControlledPointLayout) (C : Point) : Program
```

除法中心原地点加；有限常量执行固定门列，C=O时构造为空。

## [ControlledPointOutSpec.lean](ControlledPointOutSpec.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def ControlledPointReady (L : ControlledPointLayout) (b : Bool) (R : Point)
    (OF : Bool) (OX OY : Nat) (s : BasisState) : Prop
```

同时规定核心点加初态和外部控制及选择位初态。

```lean
theorem controlledPointAddOut_finite_ready (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (b : Bool) (R : Point) (cx cy : Fp)
    (hc : curve.toAffine.Nonsingular cx cy) (OF : Bool) (OX OY : Nat)
```

证明了任意目标位串的受控 XOR 引理；原地程序只对有限常量调用此辅助程序。

## [ControlledPointOutput.lean](ControlledPointOutput.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem ControlledPointLayout.core_not_selectors (L : ControlledPointLayout) (hn : L.wires.Nodup)
    (w : Wire) (hw : w∈L.core.wires)
```

证明了 `w` 不属于 `L.selectors`，因此这根线与该区域分离。

```lean
theorem controlledPointOutput_correct (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (s : State) (m : List Bool)
    (hz : s.basis L.genericSelect=false ∧ s.basis L.doubleSelect=false ∧ s.basis L.infinitySelect=false)
```

证明了控制关闭时输出不变；控制开启时，按分类标志把普通候选、倍点常量和无穷远输入对应的常量点异或到输出，保持输出以外的状态并恢复相位。

## [ControlledPointPorts.lean](ControlledPointPorts.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure ControlledPointLayout
```

点加共用一套算术布局，额外四线为外部控制与三个最终输出选择位。 `ControlledPointLayout` 定义为 `core`、`control`、`genericSelect`、`doubleSelect`、`infinitySelect` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.ControlledPointLayout` 命名空间。

```lean
def point (L : ControlledPointLayout)
```

取出原地更新的点寄存器，对应 `L.core.input`。

```lean
def temporary (L : ControlledPointLayout)
```

取出临时点寄存器，对应 `L.core.output`。

```lean
def selectors (L : ControlledPointLayout)
```

取出`selectors` 对应的数据或线路，对应 `[L.genericSelect,L.doubleSelect,L.infinitySelect]`。

```lean
def extras (L : ControlledPointLayout)
```

取出`extras` 对应的数据或线路，对应 `L.control::L.selectors`。

```lean
def outWork (L : ControlledPointLayout)
```

取出`outWork` 对应的数据或线路，对应 `L.core.work++L.selectors`。

```lean
def work (L : ControlledPointLayout)
```

给出工作区，由 `PointAddLayout.pointWires L.temporary++L.outWork` 组成。

```lean
def wires (L : ControlledPointLayout)
```

给出布局的全部线路，由 `L.core.wires++L.extras` 组成。

```lean
def Widths (L : ControlledPointLayout)
```

规定该布局所需的寄存器位宽条件：`L.core.Widths`。

```lean
def selected (L : ControlledPointLayout) : PointAddLayout
```

构造受控输出的布局视图，复用现有寄存器和线路。

```lean
theorem core_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup)
```

证明了 `L.core.wires` 中的线路互不重复。

```lean
theorem selected_widths (L : ControlledPointLayout) (h : L.Widths)
```

证明了 `L.selected.Widths`，即相应布局满足所需位宽条件。

```lean
theorem selected_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup)
```

证明了 `L.selected.wires` 中的线路互不重复。

```lean
theorem extra_not_core (L : ControlledPointLayout) (hn : L.wires.Nodup) (w : Wire) (hw : w∈L.extras)
```

证明了 `w` 不属于 `L.core.wires`，因此这根线与该区域分离。

## [ControlledPointResources.lean](ControlledPointResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem controlledPointOutput_counts (L : ControlledPointLayout) (h : L.Widths) (C : Point)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (controlledPointOutput L C)=518 ∧ measurementCount (controlledPointOutput L C)=0`。

```lean
theorem controlledPointAddOut_finite_resources (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy)
```

证明了所列程序的精确资源关系：`toffoliCount (controlledPointAddOut L (.some hc))=9321834 ∧ measurementCount (controlledPointAddOut L (.some hc))=6147424 ∧ qubitCount (controlledPointAddOut L (.some hc))=9784`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem controlledPointAdd_finite_resources (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy)
```

证明了两次除法与五个乘积的同程序精确成本；线数来自实际支持等式。

```lean
theorem controlledPointAdd_zero_resources (L : ControlledPointLayout)
```

证明了C=O 在构造期为空程序，故实际门数、测量和线路集合均为空。

## [ControlledPointStages.lean](ControlledPointStages.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def PointControl (L : ControlledPointLayout) (b : Bool) (s : BasisState) : Prop
```

规定外部控制值，并要求三个输出选择标志为零。

```lean
theorem pointControl_frame (L : ControlledPointLayout) (hn : L.wires.Nodup) (b : Bool)
    {P Q : BasisState → Prop} {c : Program} (hc : Triple P c Q)
    (hw : wires c⊆L.core.wires.toFinset)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (fun s => P s ∧ PointControl L b s) c (fun s => Q s ∧ PointControl L b s)`。

```lean
theorem ControlledPointLayout.candidate_subset (L : ControlledPointLayout) (h : L.Widths)
```

证明了 `L.core.candidateUsed.toFinset` 包含的线路都在 `L.core.wires.toFinset` 中。

```lean
theorem ControlledPointLayout.flags_subset (L : ControlledPointLayout)
```

证明了 `(L.core.input.finite::L.core.input.x++L.core.input.y++L.core.flags++L.core.pool.take 256).toFinset` 包含的线路都在 `L.core.wires.toFinset` 中。

```lean
theorem controlledPointStage_output (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (b : Bool) (R : Point) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy)
    (OF : Bool) (OX OY : Nat)
```

证明了受控输出阶段仅在控制 b 开启时将 R+C 的点编码异或到输出，同时保持候选中间态及控制工作区断言。

## [ControlledPointSupport.lean](ControlledPointSupport.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def ControlledPointLayout.usedWires (L : ControlledPointLayout)
```

给出实际使用的线路，由 `L.core.usedWires++L.extras` 组成。

```lean
theorem ControlledPointLayout.used_subset (L : ControlledPointLayout) (h : L.Widths)
```

证明了 `L.core.usedWires.toFinset` 包含的线路都在 `L.core.wires.toFinset` 中。

```lean
theorem ControlledPointLayout.used_nodup (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
```

证明了 `L.usedWires` 中的线路互不重复。

```lean
theorem controlledPointAddOut_support (L : ControlledPointLayout) (h : L.Widths) (cx cy : Fp)
    (hc : curve.toAffine.Nonsingular cx cy)
```

证明了程序实际触及的线路集合：`wires (controlledPointAddOut L (.some hc))=L.usedWires.toFinset`。

## [FieldFrame.lean](FieldFrame.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem fieldSub_correct (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width=256)
    (s : State) (m : List Bool) (hx : regValue L.x s.basis<p)
    (hy : regValue L.y s.basis<p) (hz : regValue L.work s.basis=0)
```

证明了将两个输入在 secp256k1 域中的差异或到输出，保持输出外基态位与相位。

```lean
theorem fieldMul_correct (L : MontLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (s : State) (m : List Bool)
    (hx : regValue L.x s.basis<p) (hz : regValue L.work s.basis=0)
```

证明了将模乘的接口规格提升为逐线保持，以便复用共享工作区。

```lean
theorem fieldInverse_correct (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (s : State) (m : List Bool) (hx0 : 0<regValue L.x s.basis)
    (hx : regValue L.x s.basis<p) (hz : regValue L.work s.basis=0)
```

证明了求逆只改变输出位，全部借用工作位逐线恢复；定义域仍要求正的规范输入。

## [PointAddFrames.lean](PointAddFrames.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem PointAddLayout.reg_external_nodup (L : PointAddLayout) (hn : L.wires.Nodup)
    (f : CandidateField)
```

证明了 `(L.reg f++L.flags++PointAddLayout.pointWires L.output)` 中的线路互不重复。

```lean
theorem PointAddLayout.pool_external_nodup (L : PointAddLayout) (hn : L.wires.Nodup)
```

证明了 `(L.pool++L.flags++PointAddLayout.pointWires L.output)` 中的线路互不重复。

```lean
theorem CandidateValues.pointFlags {L : PointAddLayout} (hn : L.wires.Nodup)
    {v : CandidateField → Nat} {G : Bool} {s : BasisState} (hv : CandidateValues L v G s)
    (EX EY G' D : Bool)
```

证明了操作后满足对应的寄存器状态或保持断言：`CandidateValues L v G' (pointFlagState L s EX EY G' D)`。

```lean
theorem CandidateValues.pointOutput {L : PointAddLayout} (hn : L.wires.Nodup)
    {v : CandidateField → Nat} {G F : Bool} {X Y : Nat} {s t : State}
    (hv : CandidateValues L v G s.basis) (he : PointEffect L.output F X Y s t)
```

证明了操作后满足对应的寄存器状态或保持断言：`CandidateValues L v G t.basis`。

```lean
theorem PointBoundary.pointOutput {L : PointAddLayout} (hn : L.wires.Nodup)
    {F EX EY D OF A : Bool} {OX OY X Y : Nat} {s t : State}
    (hb : PointBoundary L F EX EY D OF OX OY s.basis) (he : PointEffect L.output A X Y s t)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointBoundary L F EX EY D (OF^^A) (OX^^^X) (OY^^^Y) t.basis`。

## [PointAddLayout.lean](PointAddLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure PointAddLayout
```

候选计算保留九个 257 位值，另借一个同宽寄存器装载常量或复制乘数。 除数和逆元只需 256 位；两个输入最高位独立保持零。 `PointAddLayout` 定义为 `input`、`output`、`dx`、`dy`、`slope`、`square`、`offset`、`candidateX`、`delta`、`product`、`candidateY`、`constant`、`divisor`、`inverse`、`inputXHigh`、`inputYHigh`、`equalX`、`equalNegY`、`generic`、`double`、`pool` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.PointAddLayout` 命名空间。

```lean
def words (L : PointAddLayout) : List (List Wire)
```

取出`words` 对应的数据或线路，对应 `[L.dx,L.dy,L.slope,L.square,L.offset,L.candidateX,L.delta,L.product,L.candidateY,L.constant]`。

```lean
def flags (L : PointAddLayout) : List Wire
```

取出`flags` 对应的数据或线路，对应 `[L.equalX,L.equalNegY,L.generic,L.double]`。

```lean
def pointWires (r : PointReg) : List Wire
```

列出点寄存器的有限点标志和两个坐标寄存器线路。

```lean
def work (L : PointAddLayout) : List Wire
```

给出工作区，由 `L.words.flatten++L.divisor++L.inverse++[L.inputXHigh,L.inputYHigh]++L.flags++L.pool` 组成。

```lean
def wires (L : PointAddLayout) : List Wire
```

给出布局的全部线路，由 `pointWires L.input++pointWires L.output++L.work` 组成。

```lean
structure Widths (L : PointAddLayout) : Prop
```

宽度是公开布局条件；工作池按求逆的现有分配前缀分配。 `Widths` 定义为 `inputX`、`inputY`、`outputX`、`outputY`、`words`、`divisor`、`inverse`、`pool` 各部分。

```lean
theorem allocated_length (L : PointAddLayout) (h : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.wires.length=9813`。

## [PointAddResources.lean](PointAddResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointAddOut_finite_resources (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy)
```

证明了有限常量的同程序精确资源，包含计算、输出、全部清理及测量修正支持。

```lean
theorem pointAddOut_zero_resources (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
```

证明了无穷远常量在构造期选择 513 个 CX，仅触及两个点寄存器。

## [PointAddSpec.lean](PointAddSpec.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointAddOut_finite_ready (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R : Point) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy)
    (OF : Bool) (OX OY : Nat)
```

证明了对给定有限常量点 C，完整点加程序将 R+C 的编码异或到输出，保持输入 R，并恢复工作区初态和相位。

```lean
theorem pointAddOut_zero_ready (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R : Point) (OF : Bool) (OX OY : Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointReady L R OF OX OY) (pointAddOut L 0) (PointReady L R (OF^^pointFinite R) (OX^^^pointX R) (OY^^^pointY R))`。

```lean
theorem pointAddOut_xor_spec (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R C : Point) (OF : Bool) (OX OY : Nat)
```

证明了任意目标位串的完整 XOR 规格。输入仅要求合法曲线点，不含横坐标或分支前提。

```lean
theorem pointAddOut_spec (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R C : Point)
```

证明了常用零输出形式：包括输入/常量/结果为 O、互逆点和倍点的全部情形。

## [PointAddStages.lean](PointAddStages.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def PointStage (L : PointAddLayout) (R : Point) (cx cy : Fp) (OF : Bool) (OX OY : Nat)
    (v : CandidateField → Nat) (s : BasisState) : Prop
```

输出前后相同的分类与候选寄存器状态。

```lean
theorem pointStage_candidate (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R : Point) (cx cy : Fp) (OF : Bool) (OX OY : Nat)
    (v v' : CandidateField → Nat) (c : Program) (hs : wires c=L.candidateUsed.toFinset)
    (hc : Triple (CandidateValues L v (pointGeneric R cx)) c
      (CandidateValues L v' (pointGeneric R cx)))
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointStage L R cx cy OF OX OY v) c (PointStage L R cx cy OF OX OY v')`。

```lean
theorem pointStage_output (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R : Point) (cx cy : Fp) (hc : curve.toAffine.Nonsingular cx cy)
    (OF : Bool) (OX OY : Nat)
```

证明了输出阶段把 R+C 的点编码异或到输出，同时保持点加中间态中的其他信息。

## [PointAddState.lean](PointAddState.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure PointBoundary (L : PointAddLayout) (F EX EY D OF : Bool) (OX OY : Nat)
    (s : BasisState) : Prop
```

算术候选段之外保留的边界值；普通标志包含在 CandidateValues 中。 `PointBoundary` 定义为 `finite`、`equalX`、`equalNegY`、`double`、`outFinite`、`outX`、`outY` 各部分。

```lean
def PointAddLayout.boundaryWires (L : PointAddLayout) : List Wire
```

给出该阶段的线路范围，由 `[L.input.finite,L.equalX,L.equalNegY,L.double]++PointAddLayout.pointWires L.output` 组成。

```lean
theorem PointAddLayout.candidate_boundary_nodup (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
```

证明了 `(L.candidateUsed++L.boundaryWires)` 中的线路互不重复。

```lean
theorem PointAddLayout.candidate_boundary_disjoint (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
```

证明了 `L.candidateUsed` 与 `L.boundaryWires` 没有共用线路。

```lean
theorem PointBoundary.congr {L : PointAddLayout} {F EX EY D OF : Bool} {OX OY : Nat}
    {s t : BasisState} (h : PointBoundary L F EX EY D OF OX OY s)
    (he : ∀ w∈L.boundaryWires,t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointBoundary L F EX EY D OF OX OY t`。

```lean
theorem pointCandidate_frame (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (c : Program) (hs : wires c=L.candidateUsed.toFinset)
    (F EX EY D OF : Bool) (OX OY : Nat) (s : State) (m : List Bool)
    (hb : PointBoundary L F EX EY D OF OX OY s.basis)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointBoundary L F EX EY D OF OX OY (run c m s).basis`。

```lean
theorem point_initial_values (L : PointAddLayout) (R : Point) (s : BasisState)
    (hi : Holds.holds s L.input R) (hz : regValue L.work s=0)
```

证明了点输入和工作区全零给出候选段的初态，包含输入的两个扩展最高位。

```lean
theorem point_initial_recover (L : PointAddLayout) (h : L.Widths) (R : Point) (G : Bool) (s : BasisState)
    (hv : CandidateValues L (candidateInitial (pointX R) (pointY R)) G s)
    (hf : s L.input.finite=pointFinite R) (hz : ∀ w∈L.flags,s w=false)
```

证明了恢复后的输入寄存器仍编码原点 R，点加工作区全为零。

## [PointAddSupport.lean](PointAddSupport.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def PointAddLayout.usedWires (L : PointAddLayout) : List Wire
```

有限常量分支实际触及的线路；dx/dy/delta/yg 的填充最高位不列入。

```lean
theorem PointAddLayout.usedWires_nodup (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
```

证明了 `L.usedWires` 中的线路互不重复。

```lean
theorem PointAddLayout.usedWires_length (L : PointAddLayout) (h : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.usedWires.length=9780`。

```lean
theorem pointAddOut_support (L : PointAddLayout) (h : L.Widths) (cx cy : Fp)
    (hc : curve.toAffine.Nonsingular cx cy)
```

证明了程序实际触及的线路集合：`wires (pointAddOut L (.some hc))=L.usedWires.toFinset`。

## [PointCandidate.lean](PointCandidate.lean)

以下声明位于 `ECDSAAdd.Arithmetic.PointAddLayout` 命名空间。

```lean
def poolWire (L : PointAddLayout) : Nat → Wire
```

按索引访问共享池中的线路编号。

```lean
def extendedX (L : PointAddLayout) : List Wire
```

给输入横坐标接上一根额外高位，供扩宽算术使用。

```lean
def extendedY (L : PointAddLayout) : List Wire
```

给输入纵坐标接上一根额外高位，供扩宽算术使用。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointSubConstant (L : PointAddLayout) (x out : List Wire) (k : Nat) : Program
```

常量工作字装载后立即卸载；输入输出直接连接模减法接口。

```lean
def pointSquare (L : PointAddLayout) : Program
```

平方使用独立乘数副本，避免重复控制线；复制前后不计 Toffoli。

```lean
def pointCandidateCompute (L : PointAddLayout) (cx cy : Fp) : Program
```

普通候选在每一条分支上计算。分支标志预先确定，安全除数保证求逆定义域。

```lean
def pointCandidateClear (L : PointAddLayout) (cx cy : Fp) : Program
```

按依赖的逆序重新执行前向 XOR 模块；没有反转测量程序或依赖测量结果选路。

## [PointCandidateBlocks.lean](PointCandidateBlocks.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem CandidateValues.subConstant (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a o : CandidateField)
    (ha : (L.reg a).length=257) (ho : (L.reg o).length=257)
    (haK : a≠.constant) (hoK : o≠.constant)
    (hn : (L.reg a++L.constant++L.reg o++L.pool).Nodup)
    (hA : v a<p) (hK : v .constant=0) (k : Nat) (hk : k<p)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (pointSubConstant L (L.reg a) (L.reg o) k) (CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G)`。

```lean
theorem CandidateValues.square (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool)
    (hn : (L.slope++L.constant.take 256++L.square++L.pool).Nodup)
    (hS : v .slope<p) (hK : v .constant=0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (pointSquare L) (CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G)`。

## [PointCandidateLayout.lean](PointCandidateLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic.PointAddLayout` 命名空间。

```lean
theorem pool_prefix (L : PointAddLayout) (h : L.Widths) (n : Nat) (hn : n≤5699)
```

证明了 `wireBlock L.poolWire 0 n` 等于 `L.pool.take n`。

```lean
theorem candidate_interfaces_nodup (L : PointAddLayout) (h : L.wires.Nodup)
```

证明了三种模块在使用池前缀前，只需验证接口加完整工作池互异。 此处一次列出候选计算所有调用的接口，避免为每段引入额外布局前提。

```lean
theorem extended_lengths (L : PointAddLayout) (h : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.extendedX.length=257 ∧ L.extendedY.length=257`。

```lean
theorem poolSub_nodup (L : PointAddLayout) (h : L.Widths) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=257) (ho : out.length=257)
    (hnd : (x++y++out++L.pool).Nodup)
```

证明了 `(Arithmetic.poolSub L.poolWire x y out).wires` 中的线路互不重复。

```lean
theorem poolMul_nodup (L : PointAddLayout) (h : L.Widths) (x y out : List Wire)
    (hnd : (x++y++out++L.pool).Nodup)
```

证明了 `(Arithmetic.poolMul L.poolWire x y out).wires` 中的线路互不重复。

```lean
theorem poolInverse_nodup (L : PointAddLayout) (h : L.Widths) (x out : List Wire)
    (ho : out.length=256) (hnd : (x++out++L.pool).Nodup)
```

证明了 `(Arithmetic.poolInverse L.poolWire x out).wires` 中的线路互不重复。

## [PointCandidateProof.lean](PointCandidateProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def candidateInitial (X Y : Nat) : CandidateField → Nat
```

规定候选计算初态中的输入坐标，其余候选字段为零。

```lean
def candidateResult (G : Bool) (X Y cx cy : Nat) : CandidateField → Nat
```

候选计算的逐寄存器后置值；每个模运算对应一个实际算术调用。

```lean
theorem difference_pos (X C : Nat) (hX : X<p) (hC : C<p) (hne : X≠C)
```

证明了相应数值或范围条件：`0<(X+p-C)%p`。

```lean
theorem pointCandidate_compute_spec (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (G : Bool) (X Y : Nat) (cx cy : Fp) (hX : X<p) (hY : Y<p)
    (hG : G=true → X≠cx.val)
```

证明了给定已经确定的普通分支标志，完整候选程序保留输入、标志及共享工作池。 仅普通分支要求两横坐标不同；其他分支仍然执行定义良好的候选计算。

```lean
theorem candidateClear_of_values (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (G : Bool) (X Y : Nat) (cx cy : Fp) (hX : X<p) (hY : Y<p)
    (hG : G=true → X≠cx.val)
    (DX DY DV IV SL SQ OF CX DE PR CY : Nat)
    (eDX : (X+p-cx.val)%p=DX) (eDY : (Y+p-cy.val)%p=DY)
    (eDiv : (if G then DX else 1)=DV) (eInv : ((DV : Fp)⁻¹).val=IV)
    (eSlope : (DY*IV)%p=SL) (eSquare : (SL*SL)%p=SQ) (eOffset : (SQ+p-X)%p=OF)
    (eX : (OF+p-cx.val)%p=CX) (eDelta : (X+p-CX)%p=DE)
    (eProduct : (DE*SL)%p=PR) (eY : (PR+p-Y)%p=CY)
```

证明了候选寄存器按依赖逆序清零，输入、普通分支标志和共享池保持。

```lean
theorem pointCandidate_clear_spec (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (G : Bool) (X Y : Nat) (cx cy : Fp) (hX : X<p) (hY : Y<p)
    (hG : G=true → X≠cx.val)
```

证明了同一组前向 XOR 模块按依赖逆序清零所有候选寄存器。

## [PointCandidateResources.lean](PointCandidateResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointSubConstant_counts (L : PointAddLayout) (h : L.Widths)
    (x out : List Wire) (hx : x.length=257) (ho : out.length=257)
    (hnd : (x++L.constant++out++L.pool).Nodup) (k : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointSubConstant L x out k)=1284 ∧ measurementCount (pointSubConstant L x out k)=1028`。

```lean
theorem pointSquare_counts (L : PointAddLayout) (h : L.Widths)
    (hnd : (L.slope++L.constant.take 256++L.square++L.pool).Nodup)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointSquare L)=379424 ∧ measurementCount (pointSquare L)=379424`。

```lean
theorem pointCandidate_counts (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (cx cy : Fp)
```

证明了候选计算和按依赖逆序清理调用相同的前向模块，因此门数和测量数相同。

## [PointCandidateSpec.lean](PointCandidateSpec.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem field_sub_val (x y : Fp)
```

证明了 `(x-y).val` 等于 `(x.val+p-y.val)%p`。

```lean
theorem field_sub_cast (x y : Fp)
```

证明了 `((x.val+p-y.val : Nat) : Fp)` 等于 `x-y`。

```lean
theorem candidateResult_coordinates (G : Bool) (x y cx cy : Fp)
```

证明了逐模块得到的自然数代表元与域上的候选公式一致。

```lean
theorem pointCandidate_zero_spec (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (G : Bool) (X Y : Nat) (cx cy : Fp) (hX : X<p) (hY : Y<p)
    (hG : G=true → X≠cx.val)
```

证明了先展示候选工作寄存器全零时的命名接口。

```lean
theorem pointCandidate_cleanup_spec (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (G : Bool) (X Y : Nat) (cx cy : Fp) (hX : X<p) (hY : Y<p)
    (hG : G=true → X≠cx.val)
```

证明了恢复所有候选零寄存器的命名接口。

## [PointCandidateState.lean](PointCandidateState.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
inductive CandidateField
```

候选步骤的寄存器名；输入坐标带独立的零最高位。 包括 `inputX`、`inputY`、`dx`、`dy`、`slope`、`square`、`offset`、`x`、`delta`、`product`、`y`、`constant`、`divisor`、`inverse`。

```lean
def PointAddLayout.reg (L : PointAddLayout) : CandidateField → List Wire
```

按字段标识选择对应的位或寄存器。

```lean
def CandidateValues (L : PointAddLayout) (v : CandidateField → Nat) (G : Bool) (st : BasisState) : Prop
```

同时约束候选寄存器值、清零的共享池以及普通分支控制值。

```lean
theorem PointAddLayout.reg_pool_nodup (L : PointAddLayout) (h : L.wires.Nodup)
    (f : CandidateField)
```

证明了 `(L.reg f++L.pool)` 中的线路互不重复。

```lean
theorem PointAddLayout.reg_disjoint (L : PointAddLayout) (h : L.wires.Nodup)
    (f g : CandidateField) (hfg : f≠g)
```

证明了 `(L.reg f)` 与 `(L.reg g)` 没有共用线路。

```lean
theorem PointAddLayout.generic_not_reg (L : PointAddLayout) (h : L.wires.Nodup)
    (f : CandidateField)
```

证明了 `L.generic` 不属于 `L.reg f`，因此这根线与该区域分离。

```lean
theorem CandidateValues.update (L : PointAddLayout) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (f : CandidateField) (N : Nat) (s t : BasisState)
    (hs : CandidateValues L v G s) (he : ∀ w∉L.reg f,t w=s w)
    (ho : regValue (L.reg f) t=N)
```

证明了操作后满足对应的寄存器状态或保持断言：`CandidateValues L (Function.update v f N) G t`。

## [PointCandidateSteps.lean](PointCandidateSteps.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pool_zero (L : PointAddLayout) (h : L.Widths) (st : BasisState)
    (hz : regValue L.pool st=0) (n : Nat) (hn : n≤5699)
```

证明了 `regValue (wireBlock L.poolWire 0 n) st` 等于 `0`。

```lean
theorem CandidateValues.sub (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a b o : CandidateField)
    (ha : (L.reg a).length=257) (hb : (L.reg b).length=257) (ho : (L.reg o).length=257)
    (hn : (L.reg a++L.reg b++L.reg o++L.pool).Nodup) (hA : v a<p) (hB : v b<p)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (fieldSub (poolSub L.poolWire (L.reg a) (L.reg b) (L.reg o))) (CandidateValues L (Function.update v o (v o ^^^ ((v a+p-v b)%p))) G)`。

```lean
theorem CandidateValues.constant (L : PointAddLayout) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (o : CandidateField) (k : Nat)
    (hk : k<2^(L.reg o).length)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (xorConstant (L.reg o) k) (CandidateValues L (Function.update v o (v o ^^^ k)) G)`。

```lean
theorem CandidateValues.copy (L : PointAddLayout) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a o : CandidateField) (hao : a≠o)
    (hlen : (L.reg a).length=(L.reg o).length)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (copyRegister none (L.reg a) (L.reg o)) (CandidateValues L (Function.update v o (v o ^^^ v a)) G)`。

```lean
theorem CandidateValues.inverse (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a o : CandidateField)
    (ha : (L.reg a).length=256) (ho : (L.reg o).length=256)
    (hn : (L.reg a++L.reg o++L.pool).Nodup) (hA0 : 0<v a) (hA : v a<p)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (fieldInverse (poolInverse L.poolWire (L.reg a) (L.reg o))) (CandidateValues L (Function.update v o (v o ^^^ ((v a : Fp)⁻¹).val)) G)`。

```lean
theorem CandidateValues.mul (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a b o : CandidateField)
    (ha : (L.reg a).length=257) (hb : 256≤(L.reg b).length) (ho : (L.reg o).length=257)
    (hn : (L.reg a++(L.reg b).take 256++L.reg o++L.pool).Nodup)
    (hA : v a<p) (hB : v b<2^256)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (fieldMul (poolMul L.poolWire (L.reg a) ((L.reg b).take 256) (L.reg o))) (CandidateValues L (Function.update v o (v o ^^^ ((v a*v b)%p))) G)`。

```lean
theorem CandidateValues.safe (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (hX : v .dx<2^256)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (CandidateValues L v G) (safeDivisor L.generic (L.dx.take 256) L.divisor.head! L.divisor.tail) (CandidateValues L (Function.update v .divisor (v .divisor ^^^ (if G then v .dx else 1))) G)`。

## [PointCandidateSupport.lean](PointCandidateSupport.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem ModLayout.active_interface (L : ModLayout)
```

证明了模减法只写低输出；最高位仅作为布局填充。

```lean
theorem poolSub_support (L : PointAddLayout) (h : L.Widths) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=257) (ho : out.length=257)
```

证明了程序实际触及的线路集合：`wires (fieldSub (poolSub L.poolWire x y out))= (x++y++out.take 256++L.pool.take 1287).toFinset`。

```lean
theorem poolMul_support (L : PointAddLayout) (h : L.Widths) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=256) (ho : out.length=257)
```

证明了程序实际触及的线路集合：`wires (fieldMul (poolMul L.poolWire x y out))=(x.take 256++y++out++L.pool.take 1827).toFinset`。

```lean
theorem poolInverse_support (L : PointAddLayout) (x out : List Wire)
    (hx : x.length=256) (ho : out.length=256)
```

证明了程序实际触及的线路集合：`wires (fieldInverse (poolInverse L.poolWire x out))= (x++out++poolInverseUsedWork L.poolWire).toFinset`。

```lean
theorem poolInverse_support_subset (L : PointAddLayout) (h : L.Widths) (x out : List Wire)
    (hx : x.length=256) (ho : out.length=256)
```

证明了 `wires (fieldInverse (poolInverse L.poolWire x out))` 包含的线路都在 `(x++out++L.pool.take 5699).toFinset` 中。

```lean
theorem pointSubConstant_support (L : PointAddLayout) (h : L.Widths)
    (x out : List Wire) (hx : x.length=257) (ho : out.length=257) (k : Nat)
```

证明了程序实际触及的线路集合：`wires (pointSubConstant L x out k)=(x++L.constant++out.take 256++L.pool.take 1287).toFinset`。

```lean
theorem pointSquare_support (L : PointAddLayout) (h : L.Widths)
```

证明了程序实际触及的线路集合：`wires (pointSquare L)=(L.slope++L.constant++L.square++L.pool.take 1827).toFinset`。

```lean
theorem safeDivisor_support (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire)
    (hl : src.length=(head::tail).length)
```

证明了程序实际触及的线路集合：`wires (safeDivisor g src head tail)=(g::src++head::tail).toFinset`。

```lean
theorem PointAddLayout.candidatePool_sublist (L : PointAddLayout) (h : L.Widths)
```

证明了 `(candidatePool L.poolWire)` 是 `L.pool` 的子列表，顺序与重复次数均兼容。

```lean
theorem PointAddLayout.pool_prefix_used (L : PointAddLayout) (h : L.Widths) (n : Nat) (hn : n≤1827)
```

证明了给定长度的工作池前缀包含于候选计算的实际用线中。

```lean
def PointAddLayout.candidateUsed (L : PointAddLayout) : List Wire
```

给出该阶段的线路范围，由 `L.extendedX++L.extendedY++L.dx.take 256++L.dy.take 256++L.slope++L.square++L.offset++ L.candidateX++L.delta.take 256++L.product++L.candidateY.take 256++L.constant++ L.divisor++L.inverse++[L.generic]++candidatePool L.poolWire` 组成。

```lean
theorem pointCandidate_support (L : PointAddLayout) (h : L.Widths) (cx cy : Fp)
```

证明了同一前向模块的计算与清理具有相同支持集；四根填充高位均不在其中。

## [PointCandidateValues.lean](PointCandidateValues.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointSafeDivisor (generic : Bool) (x cx : Fp) : Fp
```

无效的普通加法分支以 1 作除数，使求逆模块在所有分支上满足定义域。

```lean
structure PointCandidateValues
```

与电路中依次保留的候选寄存器一一对应。 `PointCandidateValues` 定义为 `dx`、`dy`、`divisor`、`inverse`、`slope`、`square`、`offset`、`x`、`delta`、`product`、`y` 各部分。

```lean
def pointCandidateValues (generic : Bool) (x y cx cy : Fp) : PointCandidateValues
```

给出横纵坐标差、安全分母、逆元、斜率及候选坐标等中间数学值。

```lean
theorem pointSafeDivisor_ne_zero (generic : Bool) (x cx : Fp)
    (h : generic=true → x≠cx)
```

证明了在普通分支输入满足前提时，安全分母非零；非普通分支使用的替代分母也非零。

```lean
theorem pointCandidateValues_generic (x y cx cy : Fp)
```

证明了普通分支的候选横纵坐标与 secp256k1 普通点加公式一致。

## [PointClassification.lean](PointClassification.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointFinite (R : Point) : Bool
```

点的规范编码；这些函数也可用于任意目标位串的 XOR 规格。

```lean
def pointX (R : Point) : Nat
```

读取合法点的横坐标自然数代表元，无穷远点取零。

```lean
def pointY (R : Point) : Nat
```

读取合法点的纵坐标自然数代表元，无穷远点取零。

```lean
def pointGeneric (R : Point) (cx : Fp) : Bool
```

判断输入是否为横坐标不同于常量点的有限点，即普通点加分支。

```lean
def pointDouble (R : Point) (cx cy : Fp) : Bool
```

判断输入是否进入同横坐标但非互逆的倍点分支。

```lean
theorem point_holds (r : PointReg) (R : Point) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`Holds.holds s r R ↔ s r.finite=pointFinite R ∧ regValue r.x s=pointX R ∧ regValue r.y s=pointY R`。

```lean
theorem point_coordinates_lt (R : Point)
```

证明了相应数值或范围条件：`pointX R<p ∧ pointY R<p`。

```lean
theorem pointGeneric_domain (R : Point) (cx : Fp) (h : pointGeneric R cx=true)
```

证明了普通点加分支意味着输入是有限点，且横坐标与常量点不同。

```lean
theorem point_classification (R : Point) (cx cy : Fp)
    (hc : curve.toAffine.Nonsingular cx cy)
```

证明了四个分支完全覆盖合法点。倍点常量允许为 O，不添加纵坐标非零前提。

```lean
theorem point_classification_xor (R : Point) (cx cy : Fp)
    (hc : curve.toAffine.Nonsingular cx cy)
```

证明了普通、倍点与无穷远输入各分支的编码贡献异或后，恰好得到 R+C 的完整点编码。

```lean
theorem candidateResult_xy_lt (G : Bool) (X Y : Nat) (cx cy : Fp) (hx : X<p) (hy : Y<p)
```

证明了相应数值或范围条件：`candidateResult G X Y cx.val cy.val .x<p ∧ candidateResult G X Y cx.val cy.val .y<p`。

## [PointConstantProof.lean](PointConstantProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointFinite_effect (c : Wire) (r : PointReg) (F : Bool)
    (hn : (PointAddLayout.pointWires r).Nodup) (s : State) (m : List Bool)
```

证明了受控常量操作只把控制位与 F 的 AND 异或到有限点标志，保持坐标与其他状态。

```lean
theorem maskedPointConstant_correct (c : Wire) (r : PointReg) (C : Point)
    (hn : (PointAddLayout.pointWires r).Nodup) (hc : c∉PointAddLayout.pointWires r)
    (hx : r.x.length=256) (hy : r.y.length=256) (s : State) (m : List Bool)
```

证明了控制开启时将常量点 C 的完整编码异或到目标，关闭时不改变目标；目标外状态与相位保持不变。

## [PointCopyProof.lean](PointCopyProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointCoordinates_effect (r : PointReg) (control : Option Wire) (xs ys : List Wire)
    (hn : (PointAddLayout.pointWires r).Nodup)
    (nx : (xs++r.x).Nodup) (ny : (ys++r.y).Nodup)
    (dx : xs.Disjoint (PointAddLayout.pointWires r))
    (dy : ys.Disjoint (PointAddLayout.pointWires r))
    (hc : ∀ c∈control,c∉PointAddLayout.pointWires r)
    (hx : xs.length=r.x.length) (hy : ys.length=r.y.length)
    (F : Bool) (s u : State) (e0 : PointEffect r F 0 0 s u) (m : List Bool)
```

证明了两个坐标复制模块的统一组合；有限位由前一段的具体门写入。

```lean
theorem PointAddLayout.output_interfaces (L : PointAddLayout) (hn : L.wires.Nodup)
```

证明了普通候选输出接口、点复制接口以及常量输出接口各自的线路均互不重复。

```lean
theorem pointGenericOutput_correct (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (s : State) (m : List Bool)
```

证明了普通分支开启时，将候选坐标低 256 位及有限点标志异或到输出，保持其他状态与相位。

```lean
theorem pointCopy_correct (a b : PointReg) (hn : (PointAddLayout.pointWires a++PointAddLayout.pointWires b).Nodup)
    (hx : a.x.length=b.x.length) (hy : a.y.length=b.y.length) (s : State) (m : List Bool)
```

证明了点复制将源点的有限标志和两个坐标异或到目标，保持目标之外的状态与相位。

## [PointEffect.lean](PointEffect.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure PointEffect (r : PointReg) (F : Bool) (X Y : Nat) (s t : State) : Prop
```

点输出的逐字段 XOR 和完整外部保持条件；目标无需编码曲线点。 `PointEffect` 定义为 `phase`、`outside`、`finite`、`x`、`y` 各部分。

```lean
theorem PointEffect.trans {r : PointReg} {F G : Bool} {X Y U V : Nat} {s t u : State}
    (h : PointEffect r F X Y s t) (k : PointEffect r G U V t u)
```

证明了连续两次点编码异或更新可合并：有限标志与两个坐标的更新量分别异或。

```lean
theorem PointEffect.of_finite (r : PointReg) (hn : (PointAddLayout.pointWires r).Nodup)
    (F : Bool) (s t : State) (hp : t.phase=s.phase)
    (he : ∀ w,w≠r.finite → t.basis w=s.basis w)
    (hv : t.basis r.finite=(s.basis r.finite ^^ F))
```

证明了只更新有限点标志且保持其余状态时，可得到仅标志分量非零的 PointEffect。

```lean
theorem PointEffect.of_x (r : PointReg) (hn : (PointAddLayout.pointWires r).Nodup)
    (X : Nat) (s t : State) (hp : t.phase=s.phase)
    (he : ∀ w∉r.x,t.basis w=s.basis w)
    (hv : regValue r.x t.basis=regValue r.x s.basis ^^^ X)
```

证明了只更新横坐标且保持其余状态时，可得到仅横坐标分量非零的 PointEffect。

```lean
theorem PointEffect.of_y (r : PointReg) (hn : (PointAddLayout.pointWires r).Nodup)
    (Y : Nat) (s t : State) (hp : t.phase=s.phase)
    (he : ∀ w∉r.y,t.basis w=s.basis w)
    (hv : regValue r.y t.basis=regValue r.y s.basis ^^^ Y)
```

证明了只更新纵坐标且保持其余状态时，可得到仅纵坐标分量非零的 PointEffect。

```lean
theorem PointEffect.reg {r : PointReg} {F : Bool} {X Y : Nat} {s t : State}
    (h : PointEffect r F X Y s t) (a : List Wire)
    (hd : a.Disjoint (PointAddLayout.pointWires r))
```

证明了外部坐标或标志可跨输出操作使用，输出本身允许为任意位串。

## [PointEncoding.lean](PointEncoding.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointCode (R : Point) : Nat
```

与finite::x++y一致的小端完整点编码，O编码为零。

```lean
theorem pointCode_lt (R : Point)
```

证明了相应数值或范围条件：`pointCode R<2^513`。

```lean
theorem pointCode_injective
```

证明了点编码是单射：编码相同的两个曲线点必然相同。

```lean
theorem pointCode_register (r : PointReg) (R : Point) (s : BasisState)
    (hx : r.x.length=256) (h : Holds.holds s r R)
```

证明了合法点在513位完整寄存器中的读取值。

```lean
def pointEqual (R C : Point) : Bool
```

规范编码上的可判定相等；在合法点上恰好是点相等。

```lean
theorem pointEqual_true_iff (R C : Point)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`pointEqual R C=true ↔ R=C`。

```lean
theorem equalPoint_correct (c t : Wire) (r : PointReg) (work : List Wire) (R C : Point)
    (hx : r.x.length=256) (hy : r.y.length=256) (hw : work.length=513)
    (hn : (c::t::PointAddLayout.pointWires r++work).Nodup)
    (s : State) (m : List Bool) (hp : Holds.holds s.basis r R) (hz : regValue work s.basis=0)
```

证明了全点相等检测可以区分O与所有有限点，不需坐标非零假设。

## [PointFlagLayout.lean](PointFlagLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def zeroPorts : List Wire → List Wire → List ZeroBit
```

零检测输入直接连接坐标，工作链借共享池的前缀。

```lean
theorem zeroPorts_maps (xs ws : List Wire) (h : xs.length=ws.length)
```

证明了零检测端口构造保持原输入线路列表与工作线路列表。

```lean
theorem zeroPorts_perm (xs ws : List Wire) (h : xs.length=ws.length)
```

证明了 `((zeroPorts xs ws).flatMap ZeroBit.wires)` 与 `(xs++ws)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
def PointAddLayout.zeroX (L : PointAddLayout)
```

把输入横坐标与共享池前 256 根线路配对，构造横坐标零检测布局。

```lean
def PointAddLayout.zeroY (L : PointAddLayout)
```

把输入纵坐标与共享池前 256 根线路配对，构造纵坐标零检测布局。

```lean
theorem PointAddLayout.flag_interfaces (L : PointAddLayout) (hn : L.wires.Nodup)
```

证明了所列线路的互异或分离条件：`(L.input.finite::L.equalX::L.input.x++L.pool.take 256).Nodup ∧ (L.input.finite::L.equalNegY::L.input.y++L.pool.take 256).Nodup ∧ [L.input.finite,L.equalX,L.equalNegY,L.generic,L.double].Nodup`。

```lean
def pointFlagsCompute (L : PointAddLayout) (cx cy : Fp) : Program
```

检测坐标相等关系，再计算普通与倍点分支标志。

```lean
def pointFlagsClear (L : PointAddLayout) (cx cy : Fp) : Program
```

撤销分支组合和坐标检测，将点分类标志清零。

## [PointFlagProof.lean](PointFlagProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem equalPorts_correct (c t : Wire) (src work : List Wire) (k : Nat)
    (hl : src.length=work.length) (hn : (c::t::src++work).Nodup)
    (hk : k<2^src.length) (s : State) (m : List Bool) (hz : regValue work s.basis=0)
```

证明了 `run (equalConstant c t (zeroPorts src work) k) m s` 等于 `⟨s.phase,writeBit s.basis t (s.basis t ^^ (s.basis c && decide (regValue src s.basis=k)))⟩`。

```lean
theorem PointAddLayout.flags_disjoint (L : PointAddLayout) (hn : L.wires.Nodup)
```

证明了四个标志与输入、输出、工作池等其余线路互异。

```lean
theorem flag_not_input_pool (L : PointAddLayout) (hn : L.wires.Nodup) (w : Wire)
    (hw : w∈L.flags)
```

证明了指定分类标志与输入有限标志、输入坐标及共享工作池均分离。

```lean
theorem regValue_write_away (r : List Wire) (s : BasisState) (w : Wire) (v : Bool)
    (hw : w∉r)
```

证明了 `regValue r (writeBit s w v)` 等于 `regValue r s`。

```lean
def pointFlagState (L : PointAddLayout) (s : BasisState) (ex ey g d : Bool) : BasisState
```

只更新输入点加的四个分类标志，描述标志计算后的基态。

```lean
theorem pointFlagsCompute_correct (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (cx cy : Fp) (s : State) (m : List Bool) (hz : regValue L.pool s.basis=0)
    (hf : ∀ w∈L.flags,s.basis w=false)
```

证明了检测链在每次调用后清零，四个分支标志之外每一根线都保持。

```lean
theorem equalPorts_cancel (c t : Wire) (src work : List Wire) (k : Nat)
    (hl : src.length=work.length) (hn : (c::t::src++work).Nodup)
    (hk : k<2^src.length) (s : State) (m : List Bool) (hz : regValue work s.basis=0)
```

证明了 `run (equalConstant c t (zeroPorts src work) k) m (run (equalConstant c t (zeroPorts src work) k) m s)` 等于 `s`。

```lean
theorem pointBranchFlags_cancel (f ex ey g d : Wire) (hn : [f,ex,ey,g,d].Nodup)
    (s : State) (m : List Bool)
```

证明了 `run (pointBranchFlags f ex ey g d) m (run (pointBranchFlags f ex ey g d) m s)` 等于 `s`。

```lean
theorem pointFlags_roundtrip (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (cx cy : Fp) (s : State) (m : List Bool) (hz : regValue L.pool s.basis=0)
```

证明了清理按模块逆序重算零检测，未倒放其测量工作链。

```lean
theorem pointFlagState_outside (L : PointAddLayout) (s : BasisState) (ex ey g d : Bool)
    (w : Wire) (hw : w∉L.flags)
```

证明了 `pointFlagState L s ex ey g d w` 等于 `s w`。

```lean
theorem pointFlagState_flags (L : PointAddLayout) (hn : L.flags.Nodup)
    (s : BasisState) (ex ey g d : Bool)
```

证明了操作后满足对应的寄存器状态或保持断言：`pointFlagState L s ex ey g d L.equalX=ex ∧ pointFlagState L s ex ey g d L.equalNegY=ey ∧ pointFlagState L s ex ey g d L.generic=g ∧ pointFlagState L s ex ey g d L.double=d`。

```lean
theorem pointFlagsClear_correct (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (cx cy : Fp) (s : State) (m : List Bool) (hz : regValue L.pool s.basis=0)
    (hex : s.basis L.equalX=(s.basis L.input.finite && decide (regValue L.input.x s.basis=cx.val)))
    (hey : s.basis L.equalNegY=(s.basis L.input.finite && decide (regValue L.input.y s.basis=(-cy).val)))
    (hg : s.basis L.generic=(s.basis L.input.finite && !s.basis L.equalX))
    (hd : s.basis L.double=(s.basis L.equalX && !s.basis L.equalNegY))
```

证明了 `run (pointFlagsClear L cx cy) m s` 等于 `⟨s.phase,pointFlagState L s.basis false false false false⟩`。

## [PointFlagResources.lean](PointFlagResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointBranchFlags_wires (f ex ey g d : Wire)
```

证明了程序实际触及的线路集合：`wires (pointBranchFlags f ex ey g d)=[f,ex,ey,g,d].toFinset`。

```lean
theorem pointFlags_counts (L : PointAddLayout) (h : L.Widths) (cx cy : Fp)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (pointFlagsCompute L cx cy)=514 ∧ measurementCount (pointFlagsCompute L cx cy)=512) ∧ (toffoliCount (pointFlagsClear L cx cy)=514 ∧ measurementCount (pointFlagsClear L cx cy)=512)`。

```lean
theorem pointFlags_support (L : PointAddLayout) (h : L.Widths) (cx cy : Fp)
```

证明了程序实际触及的线路集合：`wires (pointFlagsCompute L cx cy)= (L.input.finite::L.input.x++L.input.y++L.flags++L.pool.take 256).toFinset ∧ wires (pointFlagsClear L cx cy)= (L.input.finite::L.input.x++L.input.y++L.flags++L.pool.take 256).toFinset`。

## [PointFlagStages.lean](PointFlagStages.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def PointReady (L : PointAddLayout) (R : Point) (OF : Bool) (OX OY : Nat) (s : BasisState) : Prop
```

规定合法输入点、输出位串以及全零点加工作区的初态。

```lean
theorem PointBoundary.pointFlags {L : PointAddLayout} (hn : L.wires.Nodup)
    {F EX EY D OF : Bool} {OX OY : Nat} {s : BasisState}
    (hb : PointBoundary L F EX EY D OF OX OY s) (EX' EY' G' D' : Bool)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointBoundary L F EX' EY' D' OF OX OY (pointFlagState L s EX' EY' G' D')`。

```lean
theorem branch_generic (R : Point) (cx : Fp)
```

证明了 `(pointFinite R && !(pointFinite R && decide (pointX R` 等于 `cx.val)))=pointGeneric R cx`。

```lean
theorem branch_double (R : Point) (cx cy : Fp)
```

证明了 `((pointFinite R && decide (pointX R` 等于 `cx.val)) && !(pointFinite R && decide (pointY R=(-cy).val)))=pointDouble R cx cy`。

```lean
theorem pointStage_flags (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R : Point) (cx cy : Fp) (OF : Bool) (OX OY : Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointReady L R OF OX OY) (pointFlagsCompute L cx cy) (PointStage L R cx cy OF OX OY (candidateInitial (pointX R) (pointY R)))`。

```lean
theorem pointStage_clearFlags (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (R : Point) (cx cy : Fp) (OF : Bool) (OX OY : Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointStage L R cx cy OF OX OY (candidateInitial (pointX R) (pointY R))) (pointFlagsClear L cx cy) (PointReady L R OF OX OY)`。

## [PointFlags.lean](PointFlags.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointBranchFlags (finite equalX equalNegY generic double : Wire) : Program
```

两个相等标志之后，用负控制生成普通加法与倍点标志。

```lean
theorem pointBranchFlags_correct (f ex ey g d : Wire)
    (hnd : [f,ex,ey,g,d].Nodup) (s : State) (m : List Bool)
```

证明了 `run (pointBranchFlags f ex ey g d) m s` 等于 `⟨s.phase,writeBit (writeBit s.basis g (s.basis g ^^ (s.basis f && !s.basis ex))) d (s.basis d ^^ (s.basis ex && !s.basis ey))⟩`。

```lean
theorem pointBranchFlags_counts (f ex ey g d : Wire)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointBranchFlags f ex ey g d)=2 ∧ measurementCount (pointBranchFlags f ex ey g d)=0`。

## [PointInPlaceBoundary.lean](PointInPlaceBoundary.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure PointInPlaceBoundary (L : ControlledPointLayout) (R : Point) (b : Bool)
    (f : BasisState) (s : BasisState) : Prop
```

点加阶段边界：合法点、控制、七个标志以及归零的斜率/求逆区。 `PointInPlaceBoundary` 定义为 `point`、`control`、`flags`、`slope`、`clean` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.PointInPlaceBoundary` 命名空间。

```lean
theorem flag_away (hw : L.Widths) (hn : L.wires.Nodup) (q : Wire)
    (hq : q∈PointAddLayout.pointWires L.point++[L.control]++L.inPlaceSlope++L.inPlaceInverse.wires)
```

证明了 `q` 不属于 `L.inPlaceFlags`，因此这根线与该区域分离。

```lean
theorem withFlags (hw : L.Widths) (hn : L.wires.Nodup) (v : PointInPlaceBoundary L R b f s)
    (hh : ∀ q∈L.inPlaceFlags,t q=f' q) (he : ∀ q∉L.inPlaceFlags,t q=s q)
```

证明了仅更新七个标志时，点、控制和干净工作区保持。

```lean
theorem withPoint (hw : L.Widths) (hn : L.wires.Nodup) (v : PointInPlaceBoundary L R b f s)
    (hp : Holds.holds t L.point R') (he : ∀ q∉PointAddLayout.pointWires L.point,t q=s q)
```

证明了任意点坐标写回的外部保持会保留控制、标志和干净工作区。

```lean
theorem values (v : PointInPlaceBoundary L R b f s)
    (he : f L.core.equalX=false) (hq : f L.core.equalNegY=false)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointInPlaceValues L ((coordinates R).getD (0,0)).1 ((coordinates R).getD (0,0)).2 0 (f L.core.generic) false false s`。

## [PointInPlaceBoundarySteps.lean](PointInPlaceBoundarySteps.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointBoundary_equal (R C : Point) (b : Bool) (f : BasisState) (c t : Wire)
    (hc : c=L.control ∨ c∈L.inPlaceFlags) (ht : t∈L.inPlaceFlags) (hct : c≠t) (B : Bool)
    (hb : (if c=L.control then b else f c)=B)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceBoundary L R b f) (equalConstant c t L.inPlacePointZero (pointCode C)) (PointInPlaceBoundary L R b (writeBit f t (f t ^^ (B && pointEqual R C))))`。

```lean
theorem pointBoundary_genericFlag (R : Point) (b : Bool) (f : BasisState)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceBoundary L R b f) (pointInPlaceGenericFlag L) (PointInPlaceBoundary L R b (writeBit f L.core.generic ((((f L.core.generic ^^ b) ^^ f L.infinitySelect) ^^ f L.doubleSelect) ^^ f L.genericSelect)))`。

```lean
theorem pointBoundary_doubleEnable (R : Point) (b : Bool) (f : BasisState) (cy : Fp)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceBoundary L R b f) (pointInPlaceDoubleEnable L cy) (PointInPlaceBoundary L R b (writeBit f L.core.double (f L.core.double ^^ (b && decide (cy≠-cy)))))`。

```lean
theorem pointBoundary_generic (R : Point) (b : Bool) (f : BasisState) {cx cy : Fp}
    (hc : curve.toAffine.Nonsingular cx cy)
    (he : f L.core.equalX=false) (hq : f L.core.equalNegY=false)
    (hg : f L.core.generic=true → R≠0 ∧ R≠(.some hc : Point) ∧ R≠-(.some hc : Point))
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceBoundary L R b f) (pointInPlaceGeneric L cx cy (exceptionalSlope (.some hc))) (PointInPlaceBoundary L (if f L.core.generic then R+.some hc else R) b f)`。

## [PointInPlaceClassification.lean](PointInPlaceClassification.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def inPlaceInfinity (b : Bool) (R : Point) : Bool
```

三个角落位依次为O、启用的倍点和相反点；完整点编码用于检测。

```lean
def inPlaceDouble (b : Bool) (R C : Point) : Bool
```

判断控制启用、输入等于常量点且常量不自逆的倍点分支。

```lean
def inPlaceInversePoint (b : Bool) (R C : Point) : Bool
```

判断控制启用且输入等于常量点相反点的分支。

```lean
def inPlaceOrdinary (b : Bool) (R C : Point) : Bool
```

从控制与特殊点标志组合出普通原地点加分支。

```lean
theorem equal_simp [DecidableEq Point] (R C : Point)
```

证明了 `pointEqual R C` 等于 `decide (R=C)`。

```lean
theorem inPlaceOrdinary_true (b : Bool) (R C : Point) (hc : C≠0)
```

证明了XOR分类不重叠；C=-C时禁用倍点，所以也覆盖二阶点。

```lean
theorem inPlaceFlags_output (b : Bool) (R C : Point)
```

证明了输出侧检测重建原输入的三个角落位。

```lean
theorem inPlaceCorners_nat (b : Bool) (R C : Point) (hc : C≠0) (f : Point → Nat) (hf : f 0=0)
```

证明了三个角落的XOR写回，对任意零点编码为0的自然数字段成立。

```lean
theorem inPlaceCorners_bool (b : Bool) (R C : Point) (hc : C≠0) (f : Point → Bool) (hf : f 0=false)
```

证明了三个角落的XOR写回，对任意零点编码为0的布尔字段成立。

## [PointInPlaceClearSlope.lean](PointInPlaceClearSlope.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceClearSlope_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) (G : Bool) (hY : G=true → Y=A*X)
    (hk : G=true → X=0 → A=k) (hA : G=false → A=0)
```

证明了第二次除法与零除数例外共同清λ；e/q均由未变的x重算清除。

## [PointInPlaceConditions.lean](PointInPlaceConditions.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointStep_zero
```

证明了 `Triple (PointInPlaceValues L X Y A G E Q) (equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0) (PointInPlaceValues L X Y A G (E ^^ (G && decide (X` 等于 `0))) Q)`。

```lean
theorem pointStep_quotient
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) [.CX L.core.generic L.core.equalNegY,.CX L.core.equalX L.core.equalNegY] (PointInPlaceValues L X Y A G E ((Q ^^ G) ^^ E))`。

```lean
theorem pointStep_clearSlope (k : Fp) (hA : A=(if E then k else 0))
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) (maskedConstant L.core.equalX L.inPlaceSlope k.val) (PointInPlaceValues L X Y 0 G E Q)`。

## [PointInPlaceConstant.lean](PointInPlaceConstant.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem constant_mask (M : ModInPlaceLayout) (c : Wire) (k A Z : Nat) (B : Bool)
    (hn : (c::M.wires).Nodup) (hk : k<2^M.a.length)
```

证明了执行 `maskedConstant c M.a k` 时，寄存器初态满足 `c=B,M.a=A,M.z=Z,M.work=0` 就能得到 `c=B,M.a=(A ^^^ (if B then k else 0)),M.z=Z,M.work=0`，并恢复相位。

```lean
theorem constant_add (M : ModInPlaceLayout) (c : Wire) (A Z : Nat) (B : Bool)
    (hw : M.Widths 256) (hn : (c::M.wires).Nodup) (hA : A≤p) (hZ : Z<p)
```

证明了执行 `modAddInPlace M p` 时，寄存器初态满足 `c=B,M.a=A,M.z=Z,M.work=0` 就能得到 `c=B,M.a=A,M.z=(Z+A)%p,M.work=0`，并恢复相位。

```lean
theorem constant_program_spec (M : ModInPlaceLayout) (c : Wire) (k Z : Nat) (B : Bool)
    (hw : M.Widths 256) (hn : (c::M.wires).Nodup) (hk : k<p) (hZ : Z<p)
```

证明了掩码源在模加后仍保留，第二次CX序列将其清零。

```lean
theorem constant_program_frame (M : ModInPlaceLayout) (c : Wire) (k Z : Nat) (B : Bool)
    (hw : M.Widths 256) (hn : (c::M.wires).Nodup) (hk : k<p) (hZ : Z<p)
    (s : State) (m : List Bool) (hb : s.basis c=B) (ha : regValue M.a s.basis=0)
    (hz : regValue M.z s.basis=Z) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.z)
```

证明了 `(run (maskedConstant c M.a k ++ modAddInPlace M p ++ maskedConstant c M.a k) m s).basis q` 等于 `s.basis q`。

```lean
theorem pointInPlaceConstantAdd_correct (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (r : List Wire) (hr : r=L.point.x ∨ r=L.point.y)
    (k : Fp) (Z : Nat) (B : Bool) (hZ : Z<p) (s : State) (m : List Bool)
    (hb : s.basis L.core.generic=B) (hz : regValue r s.basis=Z)
    (hc : regValue L.inPlaceBorrow s.basis=0)
```

证明了常数加法在低256位上给出规范结果，源、目标高位及其余线路逐线恢复。

## [PointInPlaceCorners.lean](PointInPlaceCorners.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceCorners_effect (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (s : State) (m : List Bool)
```

证明了四次常量XOR的逐字段作用，对任意输入位串成立。

```lean
theorem pointBoundary_corners (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R C : Point) (hc : C≠0) (b : Bool) (f : BasisState)
    (ho : f L.infinitySelect=inPlaceInfinity b R)
    (hd : f L.doubleSelect=inPlaceDouble b R C)
    (hi : f L.genericSelect=inPlaceInversePoint b R C)
```

证明了输入分类确定的四次XOR将普通分支输出或角落输入统一写为受控平移结果。

## [PointInPlaceCounts.lean](PointInPlaceCounts.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceConstantAdd_counts (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (r : List Wire) (hr : r=L.point.x ∨ r=L.point.y) (k : Fp)
```

证明了常数掩码只含CX；每段成本完全来自同一模加核。

```lean
theorem pointInPlaceNegate_counts (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了T←−x、受控交换、T+=x的同门列计数。

```lean
theorem pointInPlaceGeneric_counts (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (cx cy lambdaStar : Fp)
```

证明了与§16逐门预算对应的普通分支精确门数；尚不替代其功能规格。

```lean
theorem pointInPlaceFinite_counts (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (C : Point) (cx cy : Fp)
```

证明了分类与输出清标志各做三次完整点检测；常量写回不含Toffoli。

## [PointInPlaceFiniteSpec.lean](PointInPlaceFiniteSpec.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceFinite_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool)
```

证明了有限常量的完整原地点加：包括输入分类、普通分支、角落写回和输出清标志。

## [PointInPlaceFlagGates.lean](PointInPlaceFlagGates.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem xorFour (b o d i g : Wire) (ho : o≠g) (hd : d≠g) (hi : i≠g)
    (s : State) (m : List Bool)
```

证明了 `run [.CX b g,.CX o g,.CX d g,.CX i g] m s` 等于 `⟨s.phase,writeBit s.basis g ((((s.basis g ^^ s.basis b) ^^ s.basis o) ^^ s.basis d) ^^ s.basis i)⟩`。

```lean
theorem pointInPlaceGenericFlag_correct (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (s : State) (m : List Bool)
```

证明了 `run (pointInPlaceGenericFlag L) m s` 等于 `⟨s.phase,writeBit s.basis L.core.generic ((((s.basis L.core.generic ^^ s.basis L.control) ^^ s.basis L.infinitySelect) ^^ s.basis L.doubleSelect) ^^ s.basis L.genericSelect)⟩`。

```lean
theorem pointInPlaceDoubleEnable_correct (L : ControlledPointLayout) (cy : Fp) (s : State) (m : List Bool)
```

证明了执行后相位恢复，并满足所列寄存器更新和其他线路保持关系：`run (pointInPlaceDoubleEnable L cy) m s= ⟨s.phase,writeBit s.basis L.core.double (s.basis L.core.double ^^ (s.basis L.control && decide (cy≠-cy)))⟩`。

## [PointInPlaceFlagState.lean](PointInPlaceFlagState.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def inPlaceFlagState (L : ControlledPointLayout) (O D I G H : Bool) : BasisState
```

按现有七个字段列出阶段标志；e/q在完整普通分支边界均零。

```lean
theorem flagState_read (o d i g e q h : Wire) (hn : [o,d,i,g,e,q,h].Nodup)
    (O D I G H : Bool)
```

证明了构造出的标志基态在五根指定线路上分别保存 O、D、I、G、H，另两根辅助标志为零。

```lean
theorem inPlaceFlagState_read (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (O D I G H : Bool)
```

证明了原地点加标志状态中，三个选择标志与两个核心分支标志具有指定值，两个相等检测标志为零。

```lean
theorem flagState_update (o d i g h : Wire) (hn : [o,d,i,g,h].Nodup)
    (O D I G H T : Bool)
```

证明了更新任一指定标志位，等价于用该位的新值重新构造标志状态，其余参数不变。

```lean
theorem inPlaceFlagState_update (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (O D I G H T : Bool)
```

证明了更新五个原地点加标志中的任意一个，等价于替换状态构造函数的对应参数。

```lean
theorem inPlaceFlagState_zero (L : ControlledPointLayout)
```

证明了 `inPlaceFlagState L false false false false false` 等于 `(fun _ => false)`。

```lean
theorem PointInPlaceBoundary.congrFlags {L : ControlledPointLayout} {R : Point} {b : Bool}
    {f f' s : BasisState} (v : PointInPlaceBoundary L R b f s)
    (hh : ∀ q∈L.inPlaceFlags,f q=f' q)
```

证明了相同七个位值描述同一阶段断言，不约束标志表之外的函数值。

## [PointInPlaceFlagSteps.lean](PointInPlaceFlagSteps.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointFlag_generic (R : Point) (b O D I G H : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceBoundary L R b (inPlaceFlagState L O D I G H)) (pointInPlaceGenericFlag L) (PointInPlaceBoundary L R b (inPlaceFlagState L O D I ((((G ^^ b) ^^ O) ^^ D) ^^ I) H))`。

```lean
theorem pointFlag_doubleEnable (R : Point) (b O D I G H : Bool) (cy : Fp)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceBoundary L R b (inPlaceFlagState L O D I G H)) (pointInPlaceDoubleEnable L cy) (PointInPlaceBoundary L R b (inPlaceFlagState L O D I G (H ^^ (b && decide (cy≠-cy)))))`。

```lean
theorem pointFlag_separation
```

证明了分类使用的三个目标均与控制互异；倍点使能也与其目标互异。

```lean
theorem pointFlag_equalO (R C : Point) (b O D I G H : Bool)
```

证明了将控制 b 与输入点等于 C 的判断结果做 AND，再异或到 O 标志；其他边界状态不变。

```lean
theorem pointFlag_equalD (R C : Point) (b O D I G H : Bool)
```

证明了将 H 标志与输入点等于 C 的判断结果做 AND，再异或到 D 标志；其他边界状态不变。

```lean
theorem pointFlag_equalI (R C : Point) (b O D I G H : Bool)
```

证明了将控制 b 与输入点等于 C 的判断结果做 AND，再异或到 I 标志；其他边界状态不变。

## [PointInPlaceGeneric.lean](PointInPlaceGeneric.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceGeneric_true (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp) (hX : X≠cx)
    (hk : cx-genericX X Y cx cy=0 → genericSlope X Y cx cy=k)
```

证明了普通分支为真时的原地公式；例外斜率条件由曲线点数学引理提供。

```lean
theorem pointInPlaceGeneric_false (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp)
```

证明了未选中的分支斜率始终为零，仍执行同一固定门列并恢复全部工作区。

## [PointInPlaceGenericPoint.lean](PointInPlaceGenericPoint.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceGeneric_point (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (G : Bool)
    (hg : G=true → R≠0 ∧ R≠(.some hc : Point) ∧ R≠-(.some hc : Point))
    (s : State) (m : List Bool) (hp : Holds.holds s.basis L.point R)
    (hv : PointInPlaceValues L ((coordinates R).getD (0,0)).1
      ((coordinates R).getD (0,0)).2 0 G false false s.basis)
```

证明了普通分支对合法点的语义；不选中时允许输入为O或任意角落点。

## [PointInPlaceIntegration.lean](PointInPlaceIntegration.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem boundary_frame_values (L : ControlledPointLayout) (P : Program)
    (hP : wires P⊆L.inPlaceUsedWires.toFinset) (R R' : Point) (b : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceBoundary L R b (fun _ => false) s.basis)
    (ho : PointInPlaceBoundary L R' b (fun _ => false) (run P m s).basis)
    (q : Wire) (hp : q∉PointAddLayout.pointWires L.point)
```

证明了 `(run P m s).basis q` 等于 `s.basis q`。

```lean
theorem pointInPlaceFinite_frame (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceBoundary L R b (fun _ => false) s.basis)
    (q : Wire) (hq : q∉PointAddLayout.pointWires L.point)
```

证明了 `(run (pointInPlaceFinite L (.some hc) cx cy) m s).basis q` 等于 `s.basis q`。

```lean
theorem boundary_work_subset (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `L.inPlaceSlope++L.inPlaceFlags++L.inPlaceInverse.wires` 包含的线路都在 `L.work` 中。

```lean
theorem work_not_point (L : ControlledPointLayout) (hn : L.wires.Nodup)
    (q : Wire) (hq : q∈L.work)
```

证明了 `q` 不属于 `PointAddLayout.pointWires L.point`，因此这根线与该区域分离。

```lean
theorem pointInPlaceFinite_full_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (R : Point) {cx cy : Fp} (hc : curve.toAffine.Nonsingular cx cy) (b : Bool)
```

证明了公共布局的全部分配工作位恢复为零，包括本实现未使用的旧银行。

## [PointInPlaceLayout.lean](PointInPlaceLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic.ControlledPointLayout` 命名空间。

```lean
def inPlaceFlags (L : ControlledPointLayout) : List Wire
```

§16的七位沿用旧字段：o/infinitySelect、d/doubleSelect、i/genericSelect， g/core.generic、e/core.equalX、q/core.equalNegY、h/core.double。

```lean
def inPlaceSlope (L : ControlledPointLayout) : List Wire
```

取出斜率寄存器，对应 `L.core.slope.take 256`。

```lean
def inPlaceInverse (L : ControlledPointLayout) : InverseLoopLayout
```

取出`inPlaceInverse` 对应的数据或线路，对应 `(poolInverse L.core.poolWire L.core.divisor L.core.inverse).inner`。

```lean
def inPlaceBorrow (L : ControlledPointLayout) : List Wire
```

取出可借用工作区，对应 `L.inPlaceInverse.temp++L.inPlaceInverse.arithmetic.wires`。

```lean
def inPlaceBit (L : ControlledPointLayout) (i : Nat) : Wire
```

取出`inPlaceBit` 对应的数据或线路，对应 `L.inPlaceBorrow.getD i L.control`。

```lean
def inPlaceUnary (L : ControlledPointLayout) (low : List Wire) (high : Wire) (k : Nat) : ModUnaryLayout
```

772位scratch按既有单目布局排列；三个视图共用同一借用区。

```lean
def inPlaceDivide (L : ControlledPointLayout) (c : Wire) (D E : List Wire) : DivideLayout
```

将指定控制、分母和分子接入共享求逆布局，以斜率寄存器为累加目标。

```lean
def inPlaceMultiply (L : ControlledPointLayout) : MontLayout
```

两个外部乘积共用B[2…1828]，B[0]/B[1]为输入/输出高位。

```lean
def inPlaceSquare (L : ControlledPointLayout) : MontLayout
```

平方只保留S=B[0…255]及两个扩展高位，工作区从258开始。

```lean
def inPlaceConstant (L : ControlledPointLayout) (r : List Wire) : ModInPlaceLayout
```

常数源占前257位，目标高位257，scratch从258开始。

```lean
def inPlaceNegate (L : ControlledPointLayout) : ModInPlaceLayout
```

受控取负以T=−x、交换、T+=x三步组合，T占借用区1…257。

```lean
def inPlacePointZero (L : ControlledPointLayout) : List ZeroBit
```

为整个点编码连接零检测工作区。

```lean
def inPlaceXZero (L : ControlledPointLayout) : List ZeroBit
```

为横坐标连接零检测工作区。

```lean
theorem inPlaceSlope_length (L : ControlledPointLayout) (hw : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.inPlaceSlope.length=256`。

```lean
theorem inPlaceDivide_widths (L : ControlledPointLayout) (hw : L.Widths)
    (c : Wire) (D E : List Wire) (hD : D.length=256) (hE : E.length=256)
```

证明了 `(L.inPlaceDivide c D E).Widths`，即相应布局满足所需位宽条件。

```lean
theorem inPlaceBorrow_length (L : ControlledPointLayout) (hw : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.inPlaceBorrow.length=2315`。

```lean
theorem inPlaceUnary_widths (L : ControlledPointLayout) (hw : L.Widths)
    (low : List Wire) (high : Wire) (k : Nat) (hl : low.length=256) (hk : k+772≤2315)
```

证明了 `(L.inPlaceUnary low high k).Widths 256`，即相应布局满足所需位宽条件。

```lean
theorem inPlaceMultiply_widths (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `L.inPlaceMultiply.Widths`，即相应布局满足所需位宽条件。

```lean
theorem inPlaceSquare_widths (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `L.inPlaceSquare.Widths`，即相应布局满足所需位宽条件。

## [PointInPlaceLayoutProof.lean](PointInPlaceLayoutProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic.ControlledPointLayout` 命名空间。

```lean
theorem inPlaceInverse_perm (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `L.inPlaceInverse.wires` 与 `(L.core.inverse++L.core.pool)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem inPlace_interfaces_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了公共布局中抽出的点、控制、斜率、七个标志与整个求逆布局互异。

```lean
theorem inPlaceBit_prefix (L : ControlledPointLayout) (hw : L.Widths) (i : Nat) (hi : i<2315)
```

证明了 `L.inPlaceBorrow.take i++[L.inPlaceBit i]` 等于 `L.inPlaceBorrow.take (i+1)`。

```lean
theorem inPlaceUnary_prefix (L : ControlledPointLayout) (hw : L.Widths)
    (low : List Wire) (high : Wire) (k : Nat) (hk : k+772≤2315)
```

证明了固定scratch占借用区的连续772位；与前面的存活值不重复。

```lean
theorem inPlaceBorrow_count (L : ControlledPointLayout) (q : Wire)
```

证明了相应数值或范围条件：`L.inPlaceBorrow.count q≤L.inPlaceInverse.wires.count q`。

```lean
theorem inPlaceDivide_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (c : Wire) (hc : c∈L.inPlaceFlags)
```

证明了 `(L.inPlaceDivide c L.point.x L.point.y).wires` 中的线路互不重复。

```lean
theorem inPlaceMultiply_borrow (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `[L.inPlaceBit 0,L.inPlaceBit 1]++L.inPlaceMultiply.work` 等于 `L.inPlaceBorrow.take 1829`。

```lean
theorem inPlaceMultiply_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了 `L.inPlaceMultiply.wires` 中的线路互不重复。

```lean
theorem inPlaceConstant_widths (L : ControlledPointLayout) (hw : L.Widths) (r : List Wire)
    (hr : r.length=256)
```

证明了 `(L.inPlaceConstant r).Widths 256`，即相应布局满足所需位宽条件。

```lean
theorem inPlaceNegate_widths (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `L.inPlaceNegate.Widths 256`，即相应布局满足所需位宽条件。

```lean
theorem inPlaceConstant_borrow (L : ControlledPointLayout) (hw : L.Widths) (r : List Wire)
```

证明了 `L.inPlaceBorrow.take 257++[L.inPlaceBit 257]++(L.inPlaceConstant r).work` 等于 `L.inPlaceBorrow.take 1030`。

```lean
theorem inPlaceConstant_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了所列线路的互异或分离条件：`(L.inPlaceConstant L.point.x).wires.Nodup ∧ (L.inPlaceConstant L.point.y).wires.Nodup`。

```lean
theorem inPlaceNegate_borrow (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `[L.inPlaceBit 0]++L.inPlaceNegate.z++L.inPlaceNegate.work` 等于 `L.inPlaceBorrow.take 1030`。

```lean
theorem inPlaceNegate_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了 `(L.core.generic::L.inPlaceNegate.wires)` 中的线路互不重复。

```lean
theorem inPlaceSquare_borrow (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `L.inPlaceSquare.y++[L.inPlaceBit 256,L.inPlaceBit 257]++L.inPlaceSquare.work` 等于 `L.inPlaceBorrow.take 2085`。

```lean
theorem inPlaceSquare_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了 `L.inPlaceSquare.wires` 中的线路互不重复。

```lean
theorem inPlacePointZero_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (c t : Wire) (hct : c≠t) (hc : c=L.control ∨ c∈L.inPlaceFlags) (ht : t∈L.inPlaceFlags)
```

证明了 `(c::t::PointAddLayout.pointWires L.point++L.inPlaceBorrow.take 513)` 中的线路互不重复。

## [PointInPlaceNegate.lean](PointInPlaceNegate.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem negate_swap (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A T : Nat) (B : Bool) (hA : A<p) (hT : T<p)
```

证明了执行 `swapRegisters L.core.generic L.point.x L.inPlaceNegate.low` 时，寄存器初态满足 `L.core.generic=B,L.inPlaceNegate.a=A,L.inPlaceNegate.z=T,L.inPlaceNegate.work=0` 就能得到 `L.core.generic=B,L.inPlaceNegate.a=(if B then T else A), L.inPlaceNegate.z=(if B then A else T),L.inPlaceNegate.work=0`，并恢复相位。

```lean
theorem pointInPlaceNegate_spec (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A : Nat) (B : Bool) (hA : A<p)
```

证明了规范取负的三阶段规格；关闭控制时仍执行固定门列并清理临时寄存器。

```lean
theorem pointInPlaceNegate_correct (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A : Nat) (B : Bool) (hA : A<p) (s : State) (m : List Bool)
    (hb : s.basis L.core.generic=B) (hx : regValue L.point.x s.basis=A)
    (hc : regValue L.inPlaceBorrow s.basis=0)
```

证明了取负后仅输入x的低位改变，临时差、高位与所有其它线路恢复。

## [PointInPlaceProduct.lean](PointInPlaceProduct.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceProduct_correct (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (A X Y : Nat) (hA : A<p) (hX : X<p) (hY : Y<p)
    (s : State) (m : List Bool) (ha : regValue L.inPlaceSlope s.basis=A)
    (hx : regValue L.point.x s.basis=X) (hy : regValue L.point.y s.basis=Y)
    (hz : regValue L.inPlaceBorrow s.basis=0)
```

证明了外部乘加/乘减只改当前y；两个扩展高位和全部借用位在边界归零。

## [PointInPlaceProgram.lean](PointInPlaceProgram.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointInPlaceConstantAdd (L : ControlledPointLayout) (r : List Wire) (k : Fp) : Program
```

受控常数模加：掩码源、无控制模加、清源。

```lean
def pointInPlaceNegate (L : ControlledPointLayout) : Program
```

规范取负，两个高位在调用边界均零。

```lean
def pointInPlaceClearSlope (L : ControlledPointLayout) (lambdaStar : Fp) : Program
```

从当前x/y重算斜率；零除数例外用编译期常量清除。

```lean
def pointInPlaceGeneric (L : ControlledPointLayout) (cx cy lambdaStar : Fp) : Program
```

§16.3十二步普通分支；λ在未启用分支始终为零，外部乘积无需外部控制。

```lean
def pointInPlaceGenericFlag (L : ControlledPointLayout) : Program
```

g=b XOR o XOR d XOR i；同一CX序列装载与清理。

```lean
def pointInPlaceDoubleEnable (L : ControlledPointLayout) (cy : Fp) : Program
```

h=b∧[cy≠−cy]，条件是编译期常量，不添加几何前提。

```lean
def pointInPlaceCorners (L : ControlledPointLayout) (C : Point) : Program
```

互斥角落的四次XOR：O→C、C→2C、−C→O。

```lean
def pointInPlaceFinite (L : ControlledPointLayout) (C : Point) (cx cy : Fp) : Program
```

输入分类、普通分支、三个互斥角落写回，再从输出清除分类位。

## [PointInPlaceResources.lean](PointInPlaceResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem ControlledPointLayout.inPlaceUsedWires_nodup (L : ControlledPointLayout)
    (hw : L.Widths) (hn : L.wires.Nodup)
```

证明了 `L.inPlaceUsedWires` 中的线路互不重复。

```lean
theorem pointInPlaceFinite_qubits (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (cx cy : Fp)
```

证明了6218来自同一门列的支持等式，未重排原9817位分配。

## [PointInPlaceSquare.lean](PointInPlaceSquare.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
abbrev squareAdapter (L : ControlledPointLayout) : MontLayout := L.inPlaceSquare
```

取出原地点加布局中的平方模乘视图。

```lean
theorem squareAdapter_widths (L : ControlledPointLayout) (hw : L.Widths)
```

证明了 `(squareAdapter L).Widths`，即相应布局满足所需位宽条件。

```lean
theorem squareAdapter_nodup (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
```

证明了 `(squareAdapter L).wires` 中的线路互不重复。

```lean
theorem square_copy (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A T X : Nat) (hA : A<p)
```

证明了执行 `copyRegister none L.inPlaceSlope L.inPlaceSquare.y` 时，寄存器初态满足 `(squareAdapter L).x=A,(squareAdapter L).y=T,(squareAdapter L).out=X,(squareAdapter L).work=0` 就能得到 `(squareAdapter L).x=A,(squareAdapter L).y=(T ^^^ A),(squareAdapter L).out=X,(squareAdapter L).work=0`，并恢复相位。

```lean
def squareProgram (L : ControlledPointLayout) : Program
```

复制斜率形成平方的第二乘数，执行模乘累减，再清除副本。

```lean
theorem square_program_spec (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A X : Nat) (hA : A<p) (hX : X<p)
```

证明了执行 `squareProgram L` 时，寄存器初态满足 `(squareAdapter L).x=A,(squareAdapter L).y=0,(squareAdapter L).out=X,(squareAdapter L).work=0` 就能得到 `(squareAdapter L).x=A,(squareAdapter L).y=0, (squareAdapter L).out=(X+p-(A*A)%p)%p,(squareAdapter L).work=0`，并恢复相位。

```lean
theorem square_program_frame (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A X : Nat) (hA : A<p) (hX : X<p) (s : State) (m : List Bool)
    (ha : regValue (squareAdapter L).x s.basis=A) (hy : regValue (squareAdapter L).y s.basis=0)
    (hx : regValue (squareAdapter L).out s.basis=X) (hc : regValue (squareAdapter L).work s.basis=0)
    (q : Wire) (hq : q∉(squareAdapter L).out)
```

证明了 `(run (squareProgram L) m s).basis q` 等于 `s.basis q`。

```lean
theorem pointInPlaceSquare_correct (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A X : Nat) (hA : A<p) (hX : X<p) (s : State) (m : List Bool)
    (ha : regValue L.inPlaceSlope s.basis=A) (hx : regValue L.point.x s.basis=X)
    (hc : regValue L.inPlaceBorrow s.basis=0)
```

证明了减平方块在边界只改变当前x，独立乘数S与Montgomery工作区全部归零。

## [PointInPlaceState.lean](PointInPlaceState.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure PointInPlaceValues (L : ControlledPointLayout) (X Y A : Fp) (G E Q : Bool)
    (s : BasisState) : Prop
```

普通分支边界的直接寄存器断言；求逆布局在这些边界完整清零。 `PointInPlaceValues` 定义为 `x`、`y`、`slope`、`generic`、`equal`、`quotient`、`clean` 各部分。

```lean
theorem state_nodup (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了 `(L.point.x++L.point.y++L.inPlaceSlope++[L.core.generic,L.core.equalX,L.core.equalNegY]++L.inPlaceInverse.wires)` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic.PointInPlaceValues` 命名空间。

```lean
theorem borrow (v : PointInPlaceValues L X Y A G E Q s)
```

证明了 `regValue L.inPlaceBorrow s` 等于 `0`。

```lean
theorem withX (hw : L.Widths) (hnd : L.wires.Nodup) (v : PointInPlaceValues L X Y A G E Q s)
    (hx : regValue L.point.x t=X'.val) (hf : ∀ q∉L.point.x,t q=s q)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointInPlaceValues L X' Y A G E Q t`。

```lean
theorem withY (hw : L.Widths) (hnd : L.wires.Nodup) (v : PointInPlaceValues L X Y A G E Q s)
    (hy : regValue L.point.y t=Y'.val) (hf : ∀ q∉L.point.y,t q=s q)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointInPlaceValues L X Y' A G E Q t`。

```lean
theorem withSlope (hw : L.Widths) (hnd : L.wires.Nodup) (v : PointInPlaceValues L X Y A G E Q s)
    (ha : regValue L.inPlaceSlope t=A'.val) (hf : ∀ q∉L.inPlaceSlope,t q=s q)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointInPlaceValues L X Y A' G E Q t`。

```lean
theorem withEqual {E' : Bool} (hw : L.Widths) (hnd : L.wires.Nodup) (v : PointInPlaceValues L X Y A G E Q s)
    (he : t L.core.equalX=E') (hf : ∀ q,q≠L.core.equalX → t q=s q)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointInPlaceValues L X Y A G E' Q t`。

```lean
theorem withQuotient {Q' : Bool} (hw : L.Widths) (hnd : L.wires.Nodup) (v : PointInPlaceValues L X Y A G E Q s)
    (he : t L.core.equalNegY=Q') (hf : ∀ q,q≠L.core.equalNegY → t q=s q)
```

证明了操作后满足对应的寄存器状态或保持断言：`PointInPlaceValues L X Y A G E Q' t`。

## [PointInPlaceSteps.lean](PointInPlaceSteps.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem sub_val (x y : Fp)
```

证明了 `(x-y).val` 等于 `(x.val+p-y.val)%p`。

```lean
theorem pointStep_addX (k : Fp)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) (pointInPlaceConstantAdd L L.point.x k) (PointInPlaceValues L (X+(if G then k else 0)) Y A G E Q)`。

```lean
theorem pointStep_addY (k : Fp)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) (pointInPlaceConstantAdd L L.point.y k) (PointInPlaceValues L X (Y+(if G then k else 0)) A G E Q)`。

```lean
theorem pointStep_product
```

证明了模乘累加与累减分别将纵坐标 Y 更新为 Y+A·X 和 Y−A·X，保持其他原地点加状态。

```lean
theorem pointStep_negate
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) (pointInPlaceNegate L) (PointInPlaceValues L (if G then -X else X) Y A G E Q)`。

```lean
theorem pointStep_square
```

证明了复制斜率、模乘累减及清理副本的组合将横坐标 X 更新为 X−A²，保持其他原地点加状态。

```lean
theorem pointStep_divideAdd (hX : G=true → X≠0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) (divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y)) (PointInPlaceValues L X Y (if G then A+Y/X else A) G E Q)`。

```lean
theorem pointStep_divideSub (hX : Q=true → X≠0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (PointInPlaceValues L X Y A G E Q) (divideSub (L.inPlaceDivide L.core.equalNegY L.point.x L.point.y)) (PointInPlaceValues L X Y (if Q then A-Y/X else A) G E Q)`。

## [PointInPlaceSupport.lean](PointInPlaceSupport.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def pointInPlaceCoreWires (L : ControlledPointLayout) : List Wire
```

普通分支的语法支持上界，仅计入实际使用的求逆核心。

```lean
theorem ControlledPointLayout.inPlaceBorrow_used_subset (L : ControlledPointLayout)
```

证明了 `L.inPlaceBorrow` 包含的线路都在 `L.inPlaceInverse.usedCoreWires` 中。

```lean
theorem modPrograms_not_mem (q c : Wire) (ng : q≠c) (M : ModInPlaceLayout) (hM : M.Widths 256) (hnM : q∉M.wires)
```

证明了指定外部线路 q 不被模加、模减及其受控版本使用。

```lean
theorem mont_not_mem (q : Wire) (M : MontLayout) (hw : M.Widths) (hn : q∉M.wires)
```

证明了指定外部线路 q 不被模乘累加和累减程序使用。

```lean
theorem zero_not_mem (L : ControlledPointLayout) (hw : L.Widths) (q : Wire)
    (ng : q≠L.core.generic) (ne : q≠L.core.equalX) (nx : q∉L.point.x)
    (ntake : ∀ n,q∉L.inPlaceBorrow.take n)
```

证明了 `q` 不属于 `wires (equalConstant L.core.generic L.core.equalX L.inPlaceXZero 0)`，因此这根线与该区域分离。

```lean
theorem divide_not_mem (L : ControlledPointLayout) (hw : L.Widths) (q : Wire)
    (nx : q∉L.point.x) (ny : q∉L.point.y) (na : q∉L.inPlaceSlope) (ni : q∉L.inPlaceInverse.usedCoreWires)
    (c : Wire) (nc : q≠c)
```

证明了指定外部线路 q 不被原地点加所用的除法累加和累减程序使用。

```lean
theorem views_not_mem (L : ControlledPointLayout) (hw : L.Widths) (q : Wire)
    (hnot : q∉(pointInPlaceCoreWires L).toFinset)
```

证明了指定外部线路与借用工作区、乘法、平方、取负视图分离；只要常量目标也排除 q，常量视图同样不使用 q。

```lean
theorem pointInPlaceGeneric_wires_subset (L : ControlledPointLayout) (hw : L.Widths)
    (cx cy k : Fp)
```

证明了 `wires (pointInPlaceGeneric L cx cy k)` 包含的线路都在 `(pointInPlaceCoreWires L).toFinset` 中。

```lean
theorem generic_frame_values (L : ControlledPointLayout) (P : Program)
    (hP : wires P ⊆ (pointInPlaceCoreWires L).toFinset)
    (X Y X' Y' : Fp) (G : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceValues L X Y 0 G false false s.basis)
    (ho : PointInPlaceValues L X' Y' 0 G false false (run P m s).basis)
    (q : Wire) (hx : q∉L.point.x) (hy : q∉L.point.y)
```

证明了已恢复的λ/e/q及求逆工作位与语法支持上界共同给出完整逐线保持。

```lean
theorem pointInPlaceGeneric_frame (L : ControlledPointLayout) (hw : L.Widths) (cx cy k : Fp)
    (X Y X' Y' : Fp) (G : Bool) (s : State) (m : List Bool)
    (hi : PointInPlaceValues L X Y 0 G false false s.basis)
    (ho : PointInPlaceValues L X' Y' 0 G false false (run (pointInPlaceGeneric L cx cy k) m s).basis)
    (q : Wire) (hx : q∉L.point.x) (hy : q∉L.point.y)
```

证明了 `(run (pointInPlaceGeneric L cx cy k) m s).basis q` 等于 `s.basis q`。

## [PointInPlaceWires.lean](PointInPlaceWires.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pointInPlaceGeneric_wires (L : ControlledPointLayout) (hw : L.Widths) (cx cy k : Fp)
```

证明了普通分支恰好触及坐标、斜率、g/e/q及求逆实际核心。

```lean
def ControlledPointLayout.inPlaceUsedWires (L : ControlledPointLayout) : List Wire
```

保留布局分配编号，但仅列实际执行门列的支持。

```lean
theorem equalPoint_wires (L : ControlledPointLayout) (hw : L.Widths) (c t : Wire) (C : Point)
```

证明了程序实际触及的线路集合：`wires (equalConstant c t L.inPlacePointZero (pointCode C))= (c::t::PointAddLayout.pointWires L.point++L.inPlaceBorrow.take 513).toFinset`。

```lean
theorem genericFlag_wires (L : ControlledPointLayout)
```

证明了程序实际触及的线路集合：`wires (pointInPlaceGenericFlag L)= [L.control,L.infinitySelect,L.doubleSelect,L.genericSelect,L.core.generic].toFinset`。

```lean
theorem pointInPlaceFinite_wires (L : ControlledPointLayout) (hw : L.Widths) (C : Point) (cx cy : Fp)
```

证明了有限常量点加的完整实际支持等式，包括条件false时仍执行的门列。

## [PointOutput.lean](PointOutput.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def maskedPointConstant (c : Wire) (r : PointReg) (C : Point) : Program
```

经典点编码只在非零常量位上施 CX。

```lean
def pointGenericOutput (L : PointAddLayout) : Program
```

普通结果按低 256 位复制，有限位直接异或分支标志。

```lean
def negativePointConstant (c : Wire) (r : PointReg) (C : Point) : Program
```

在控制位为假时将点常量异或到目标，并恢复控制位。

```lean
def pointOutput (L : PointAddLayout) (C : Point) : Program
```

三个互斥的输出贡献；互逆点不写入任何位。

```lean
def pointCopy (a b : PointReg) : Program
```

C=O 的构造期分支仅复制输入。

```lean
def pointAddOut (L : PointAddLayout) (C : Point) : Program
```

完整点加的具体门列。有限常量总是执行安全候选计算，然后选择结果并清理。

## [PointOutputProof.lean](PointOutputProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem negativePointConstant_correct (c : Wire) (r : PointReg) (C : Point)
    (hn : (PointAddLayout.pointWires r).Nodup) (hc : c∉PointAddLayout.pointWires r)
    (hx : r.x.length=256) (hy : r.y.length=256) (s : State) (m : List Bool)
```

证明了控制位为假时将常量点 C 的编码异或到目标，为真时不改变目标；控制位、其他状态与相位保持不变。

```lean
theorem pointOutput_correct (L : PointAddLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (s : State) (m : List Bool)
```

证明了按普通、倍点和无穷远输入标志，将相应候选或常量点的编码异或到输出，并保持其他状态与相位。

## [PointOutputResources.lean](PointOutputResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem maskedPointConstant_counts (c : Wire) (r : PointReg) (C : Point)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (maskedPointConstant c r C)=0 ∧ measurementCount (maskedPointConstant c r C)=0`。

```lean
theorem negativePointConstant_counts (c : Wire) (r : PointReg) (C : Point)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (negativePointConstant c r C)=0 ∧ measurementCount (negativePointConstant c r C)=0`。

```lean
theorem pointGenericOutput_counts (L : PointAddLayout) (h : L.Widths)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointGenericOutput L)=512 ∧ measurementCount (pointGenericOutput L)=0`。

```lean
theorem pointOutput_counts (L : PointAddLayout) (h : L.Widths) (C : Point)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointOutput L C)=512 ∧ measurementCount (pointOutput L C)=0`。

```lean
theorem pointCopy_counts (a b : PointReg) (hx : a.x.length=b.x.length) (hy : a.y.length=b.y.length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointCopy a b)=0 ∧ measurementCount (pointCopy a b)=0`。

```lean
theorem maskedPointConstant_support (c : Wire) (r : PointReg) (C : Point)
```

证明了 `wires (maskedPointConstant c r C)` 包含的线路都在 `(c::PointAddLayout.pointWires r).toFinset` 中。

```lean
theorem negativePointConstant_support (c : Wire) (r : PointReg) (C : Point)
```

证明了 `wires (negativePointConstant c r C)` 包含的线路都在 `(c::PointAddLayout.pointWires r).toFinset` 中。

```lean
theorem pointGenericOutput_support (L : PointAddLayout) (h : L.Widths)
```

证明了程序实际触及的线路集合：`wires (pointGenericOutput L)= (L.generic::L.candidateX.take 256++L.candidateY.take 256++PointAddLayout.pointWires L.output).toFinset`。

```lean
theorem pointCopy_support (a b : PointReg) (hx : a.x.length=256) (hy : a.y.length=256)
    (hx' : b.x.length=256) (hy' : b.y.length=256)
```

证明了程序实际触及的线路集合：`wires (pointCopy a b)=(PointAddLayout.pointWires a++PointAddLayout.pointWires b).toFinset`。

## [PointSelectors.lean](PointSelectors.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def selectorState (L : ControlledPointLayout) (s : BasisState) (G D O : Bool) : BasisState
```

描述三个受控输出选择标志更新后的基态。

```lean
theorem ControlledPointLayout.selector_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup)
```

证明了 `[L.control,L.core.generic,L.core.double,L.core.input.finite, L.genericSelect,L.doubleSelect,L.infinitySelect]` 中的线路互不重复。

```lean
theorem pointSelectors_correct (L : ControlledPointLayout) (hn : L.wires.Nodup)
    (s : State) (m : List Bool)
```

证明了三个输出选择位分别异或外部控制与普通、倍点、输入无穷远标志的 AND，其他基态位与相位不变。

```lean
theorem selectorState_outside (L : ControlledPointLayout) (s : BasisState) (G D O : Bool)
    (w : Wire) (hw : w∉L.selectors)
```

证明了 `selectorState L s G D O w` 等于 `s w`。

```lean
theorem selectorState_values (L : ControlledPointLayout) (hn : L.wires.Nodup)
    (s : BasisState) (G D O : Bool)
```

证明了操作后满足对应的寄存器状态或保持断言：`selectorState L s G D O L.genericSelect=G ∧ selectorState L s G D O L.doubleSelect=D ∧ selectorState L s G D O L.infinitySelect=O`。

```lean
theorem pointSelectors_counts (L : ControlledPointLayout)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (pointSelectors L)=3 ∧ measurementCount (pointSelectors L)=0`。

```lean
theorem pointSelectors_wires (L : ControlledPointLayout)
```

证明了程序实际触及的线路集合：`wires (pointSelectors L)=[L.control,L.core.generic,L.core.double,L.core.input.finite, L.genericSelect,L.doubleSelect,L.infinitySelect].toFinset`。

## [SafeDivisor.lean](SafeDivisor.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def safeDivisor (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire) : Program
```

按 XOR 写入 g ? X : 1；清零目标上得到安全除数。

```lean
theorem safeDivisor_correct (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire)
    (hlen : src.length=(head::tail).length) (hnd : (g::src++(head::tail)).Nodup)
    (s : State) (m : List Bool)
```

证明了普通分支开启时向目标异或源值，否则异或常量 1，保持目标外基态位与相位。

```lean
theorem safeDivisor_counts (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire)
    (hlen : src.length=(head::tail).length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (safeDivisor g src head tail)=src.length ∧ measurementCount (safeDivisor g src head tail)=0`。

## [SelectedPointOutput.lean](SelectedPointOutput.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem ControlledPointLayout.output_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup)
```

证明了 `(PointAddLayout.pointWires L.core.output)` 中的线路互不重复。

```lean
theorem ControlledPointLayout.extra_not_output (L : ControlledPointLayout) (hn : L.wires.Nodup)
    (w : Wire) (hw : w∈L.extras)
```

证明了 `w` 不属于 `PointAddLayout.pointWires L.core.output`，因此这根线与该区域分离。

```lean
theorem selectedPointOutput_counts (L : ControlledPointLayout) (h : L.Widths) (C : Point)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (selectedPointOutput L C)=512 ∧ measurementCount (selectedPointOutput L C)=0`。

```lean
theorem selectedPointOutput_correct (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (s : State) (m : List Bool)
```

证明了输出程序按三个选择标志分别异或普通候选、倍点常量和输入无穷远时的常量点，保持其他状态与相位。
