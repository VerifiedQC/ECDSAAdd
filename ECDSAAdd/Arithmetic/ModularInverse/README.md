# 求逆模块：怎样得到逆元，又把工作区清干净

本模块实现 Kaliski 模逆元电路，包括固定轮循环、缩放、结果输出和历史恢复，并提供相关布局与资源证明。

## 文件目录

[Borrow.lean](#borrowlean)

这个文件用计数比较计算某轮是否活动，并证明控制标志的 XOR 更新。

[BorrowFrame.lean](#borrowframelean)

这个文件证明活动计数比较的线路支持、非目标保持和资源计数。

[HalveInPlace.lean](#halveinplacelean)

这个文件定义按轮号受控的模减半与逆向倍增步骤，证明状态更新和计数保持。

[HalvingLoop.lean](#halvinglooplean)

这个文件组合固定轮数的减半与恢复过程，证明与数学迭代一致及相应资源。

[InverseCompactLayout.lean](#inversecompactlayoutlean)

这个文件划分求逆紧凑布局中的数据、计数和可借用空间，证明长度、分区与互异性。

[InverseCompactViews.lean](#inversecompactviewslean)

这个文件在紧凑借用区上构造缩放和取负视图，并证明位宽、支持划分及互异性。

[InverseCompute.lean](#inversecomputelean)

这个文件组合 Kaliski、取负和缩放，定义求逆准备、恢复及 XOR 输出循环并证明中间值。

[InverseContract.lean](#inversecontractlean)

这个文件定义外部逆元电路应满足的正确性及资源契约；契约本身不是实现。

[InverseLayout.lean](#inverselayoutlean)

这个文件定义外部求逆布局、输入装卸和完整求逆程序，并连接外部与内部线路。

[InverseLoad.lean](#inverseloadlean)

这个文件定义外部求逆寄存器断言，证明常量和输入装载如何建立求逆初态。

[InverseLoopLayout.lean](#inverselooplayoutlean)

这个文件定义求逆循环及阶段布局，证明循环终态视图和数据、工作区的划分关系。

[InverseLoopProof.lean](#inverseloopprooflean)

这个文件证明复制逆元到输出后仍可恢复历史，得到完整求逆循环的数值结论。

[InverseLoopResources.lean](#inverseloopresourceslean)

这个文件证明求逆循环的一般及 257 位实例的门数、测量数和线路数。

[InverseLoopSpec.lean](#inverseloopspeclean)

这个文件将求逆内部断言改写为直接寄存器条件，给出准备、恢复及 XOR/零输出规格。

[InverseLoopState.lean](#inverseloopstatelean)

这个文件定义求逆历史、中间结果与计数状态断言，并证明保持和展开关系。

[InverseLoopSupport.lean](#inverseloopsupportlean)

这个文件确定求逆循环实际触及的线路，证明各阶段支持范围及完整支持集。

[InverseMiddle.lean](#inversemiddlelean)

这个文件证明求逆第一阶段后的规范化取负更新及其布局安全性。

[InversePorts.lean](#inverseportslean)

这个文件把求逆的轮、计数和内部工作区接到调用方池中，并证明位宽和线路对应。

[InverseResources.lean](#inverseresourceslean)

这个文件证明外部求逆的装卸成本、实际支持、精确资源及契约满足性。

[InverseScale.lean](#inversescalelean)

这个文件定义计数查表与单段 Montgomery 缩放，证明准备、恢复、历史和共享工作区条件。

[InverseScaleBorrow.lean](#inversescaleborrowlean)

这个文件从求逆循环中划分缩放借用区和存活历史，证明布局长度、对应及互异性。

[InverseScaleState.lean](#inversescalestatelean)

这个文件连接缩放前后的求逆寄存器状态，证明缩放与恢复时历史和其他字段的保持。

[InverseSpec.lean](#inversespeclean)

这个文件将内部求逆结论接到外部寄存器，证明完整逆元的 XOR 输出和零输出规格。

[InverseTerminalConstants.lean](#inverseterminalconstantslean)

这个文件利用 Kaliski 终态已知常量构造清理程序，并证明恢复及资源性质。

[KaliskiLoop.lean](#kaliskilooplean)

这个文件定义带记录带的 Kaliski 正向循环和恢复循环，以及终态布局和分支历史。

[KaliskiLoopProof.lean](#kaliskiloopprooflean)

这个文件按轮组合单轮证明，得到整个 Kaliski 循环及恢复的状态结论。

[KaliskiLoopResources.lean](#kaliskiloopresourceslean)

这个文件证明 Kaliski 循环的门数、测量数及实际线路支持和线路数。

[KaliskiLoopState.lean](#kaliskiloopstatelean)

这个文件连接循环边界与单轮状态断言，并证明记录带在正轮和恢复轮中的更新。

[KaliskiRound.lean](#kaliskiroundlean)

这个文件定义 Kaliski 单轮布局、活动控制、记录和正反轮程序，并证明所用视图的安全性。

[KaliskiRoundProof.lean](#kaliskiroundprooflean)

这个文件组合算术体、计数和状态标志，证明 Kaliski 单轮及恢复轮的完整状态更新。

[MaskedAdder.lean](#maskedadderlean)

这个文件通过双寄存器布局实现受控加减和旧数据清理，证明接口、保持和资源。

[NegativeEven.lean](#negativeevenlean)

这个文件利用正偶数范围实现取负与恢复，并证明结果、状态保持及资源。

[NegativeInit.lean](#negativeinitlean)

这个文件构造求逆终态系数的规范化取负程序，并证明执行结果。

[NegativeInitResources.lean](#negativeinitresourceslean)

这个文件给出规范化取负的数值规格、线路支持及门数与测量数。

[OneBitRound.lean](#onebitroundlean)

这个文件定义只保留一位分支记录的轮程序及交换标志重建，并证明重建步骤。

[OneBitRoundProof.lean](#onebitroundprooflean)

这个文件证明一位记录正轮和恢复轮的完整状态关系。

[OneBitRoundResources.lean](#onebitroundresourceslean)

这个文件证明一位记录轮的门数、测量数、支持范围及线路数。

[OneBitRoundSpec.lean](#onebitroundspeclean)

这个文件将一位记录轮的内部状态结论写成公开程序规格。

[RecordRound.lean](#recordroundlean)

这个文件证明 Kaliski 分支比较与记录程序的结果、非目标保持及布局前提。

[RoundBody.lean](#roundbodylean)

这个文件定义 Kaliski 单轮的算术体与恢复算术体，并证明寄存器更新和控制保持。

[RoundControls.lean](#roundcontrolslean)

这个文件证明单轮活动性、完成标志和计数比较的状态更新。

[RoundFrame.lean](#roundframelean)

这个文件定义单轮数据保持关系，并证明移位、交换、加减和复制如何更新指定寄存器。

[RoundLayout.lean](#roundlayoutlean)

这个文件定义 Kaliski 数据字段和逐位布局，连接加法、移位及零检测视图。

[RoundResources.lean](#roundresourceslean)

这个文件证明 Kaliski 单轮各段及完整正反轮的 Toffoli 和测量计数。

[RoundSpec.lean](#roundspeclean)

这个文件将 Kaliski 单轮的完整状态结论整理为前后寄存器规格。

[RoundState.lean](#roundstatelean)

这个文件定义 Kaliski 单轮的寄存器状态，并证明局部操作后的状态保持和重组。

[RoundWires.lean](#roundwireslean)

这个文件确定单轮实际使用的线路，并证明算术体、正反轮的支持和线路数。

## [Borrow.lean](Borrow.lean)

这个文件用计数比较计算某轮是否活动，并证明控制标志的 XOR 更新。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def counterActiveXor (L : AdderLayout) (target : Wire) (i : Nat) : Program
```

将 [i<k] XOR 到 target：装载阈值 i+1 并比较，清比较工作区后翻转结果。 不访问计数器另一银行 out。

```lean
theorem counterActiveXor_spec (L : AdderLayout) (target : Wire)
    (hnd : (target::L.wires).Nodup) (hw : L.width=10)
    (K i : Nat) (T : Bool) (hi : i<512)
```

证明了执行 `counterActiveXor L target i` 时，寄存器初态满足 `target=T, L.x=K, L.y=0, L.cin=false, L.carry=0` 就能得到 `target=(T ^^ decide (i < K)), L.x=K, L.y=0, L.cin=false, L.carry=0`，并恢复相位。

## [BorrowFrame.lean](BorrowFrame.lean)

这个文件证明活动计数比较的线路支持、非目标保持和资源计数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem counterActiveXor_wires (L : AdderLayout) (target : Wire) (i : Nat)
```

证明了实际支持集不含未访问的另一计数银行 out。

```lean
theorem counterActiveXor_frame (L : AdderLayout) (target : Wire)
    (hnd : (target::L.wires).Nodup) (hw : L.width=10)
    (i K : Nat) (hi : i<512) (T : Bool) (s : State) (m : List Bool)
    (ht : s.basis target=T) (hx : regValue L.x s.basis=K) (hy : regValue L.y s.basis=0)
    (hc : s.basis L.cin=false) (hcarry : regValue L.carry s.basis=0)
```

证明了活动比较只翻转 target；其它线路（包括 out）逐线保持。

```lean
theorem counterActiveXor_counts (L : AdderLayout) (target : Wire) (i : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (counterActiveXor L target i)=L.width ∧ measurementCount (counterActiveXor L target i)=L.width`。

## [HalveInPlace.lean](HalveInPlace.lean)

这个文件定义按轮号受控的模减半与逆向倍增步骤，证明状态更新和计数保持。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure HalvingLayout
```

求逆第二阶段的原地减半/加倍布局：data 上原地操作；常数字、进位链（chain 给加法器， chain ++ [top] 给比较器）、cin 与标志借自模算术工作区；active 与计数银行沿用第一阶段。 `HalvingLayout` 定义为 `data`、`constant`、`chain`、`top`、`cin`、`flag`、`active`、`counterLow`、`counterHigh`、`compareCin` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.HalvingLayout` 命名空间。

```lean
def counter (L : HalvingLayout) : AdderLayout
```

取出`counter` 对应的数据或线路，对应 `⟨L.counterLow ++ [L.counterHigh], L.compareCin⟩`。

```lean
def carry (L : HalvingLayout) : List Wire
```

取出进位工作寄存器，对应 `L.chain ++ [L.top]`。

```lean
def wires (L : HalvingLayout) : List Wire
```

给出布局的全部线路，由 `L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires)` 组成。

```lean
def work (L : HalvingLayout) : List Wire
```

轮与轮之间为零的全部工作线。

```lean
theorem carry_length (L : HalvingLayout)
```

证明了寄存器或线路列表的长度关系：`L.carry.length = L.chain.length + 1`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def HalvingCounter (L : AdderLayout) (K : Nat) (s : BasisState) : Prop
```

计数输入和值域不变；比较工作区为空。

```lean
theorem HalvingCounter.congr (L : AdderLayout) (K : Nat) (s t : BasisState)
    (h : HalvingCounter L K s) (he : ∀ w ∈ L.wires, t w = s w)
```

证明了保持该断言涉及的线路值，就能将减半计数状态断言从原基态转移到新基态。

```lean
def halveStep (L : HalvingLayout) (q i : Nat) : Program
```

一轮受控原地模减半：active ^= [i<k]；flag ← active ∧ data₀；data += flag·q； 受控右移；flag ^= active；flag ^= active ∧ [data < (q+1)/2]；active ^= [i<k]。

```lean
def doubleStep (L : HalvingLayout) (q i : Nat) : Program
```

一轮受控原地模加倍，以独立前向门列恢复减半前的数据。

```lean
structure HalvingValues (L : HalvingLayout) (K X : Nat) (F A : Bool) (st : BasisState) : Prop
```

轮内各步之间的状态：data 值、flag、active、计数输入 k；其余工作线为零。 `HalvingValues` 定义为 `data`、`flag`、`active`、`cin`、`constant`、`chain`、`top`、`counter` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.HalvingLayout` 命名空间。

```lean
structure Widths (L : HalvingLayout) : Prop
```

位宽条件：常数字与 data 同宽，加法进位链少一位，计数器十位。 `Widths` 定义为 `constant`、`chain`、`counter` 各部分。

```lean
theorem data_ne_nil (L : HalvingLayout) (hw : L.Widths)
```

证明了满足位宽条件的数据寄存器非空。

```lean
theorem counter_nodup (L : HalvingLayout) (hnd : L.wires.Nodup)
```

证明了由全局互异条件推出各子程序需要的互异条件与不重叠事实。

```lean
theorem addConst_nodup (L : HalvingLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.flag :: L.cin :: (L.constant ++ L.data ++ L.chain))` 中的线路互不重复。

```lean
theorem compare_nodup (L : HalvingLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.active :: L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry))` 中的线路互不重复。

```lean
theorem shift_nodup (L : HalvingLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.active :: L.data)` 中的线路互不重复。

```lean
theorem not_active (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire)
    (hw : w ∈ L.flag :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires))
```

证明了不在某些寄存器里：把两处出现变成计数 ≥ 2 的矛盾。

```lean
theorem not_flag (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire)
    (hw : w ∈ L.active :: L.cin :: (L.data ++ L.constant ++ L.carry ++ L.counter.wires))
```

证明了指定数据线路与减半标志线不同。

```lean
theorem not_data (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire)
    (hw : w ∈ L.active :: L.flag :: L.cin :: (L.constant ++ L.carry ++ L.counter.wires))
```

证明了 `w` 不属于 `L.data`，因此这根线与该区域分离。

```lean
theorem counter_outside (L : HalvingLayout) (hnd : L.wires.Nodup) (w : Wire) (hw : w ∈ L.counter.wires)
```

证明了计数器线路与轮内其他线路不重叠。

```lean
theorem carry_zero (L : HalvingLayout) (st : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`regValue L.carry st = 0 ↔ regValue L.chain st = 0 ∧ st L.top = false`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem step_active (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (i K X : Nat) (F A : Bool) (hi : i < 512)
```

证明了第 1、7 步：比较 i<k，翻转 active；计数与比较工作区逐线恢复。

```lean
theorem step_parity (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (K X : Nat) (F A : Bool)
```

证明了第 2 步（减半）/ 第 6 步（加倍）：flag ^= active ∧ data 最低位。

```lean
theorem step_flip (L : HalvingLayout) (hnd : L.wires.Nodup) (K X : Nat) (F A : Bool)
```

证明了第 5 步（减半）/ 第 3 步（加倍）：flag ^= active。

```lean
theorem step_shiftRight (L : HalvingLayout) (hnd : L.wires.Nodup) (K X : Nat) (F A : Bool)
    (heven : A = true → X % 2 = 0)
```

证明了受控右移：active 为真且 data 为偶数时精确减半。

```lean
theorem step_shiftLeft (L : HalvingLayout) (hnd : L.wires.Nodup) (K X : Nat) (F A : Bool)
    (hfit : A = true → 2 * X < 2^L.data.length)
```

证明了受控左移：active 为真且两倍仍装得下时精确加倍。

```lean
theorem step_addConst (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K X : Nat) (F A : Bool) (hq : q < 2^L.constant.length)
```

证明了第 3 步（减半）：data += flag·q，常数字与进位链回零。

```lean
theorem step_subConst (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K X : Nat) (F A : Bool) (hq : q < 2^L.constant.length)
```

证明了第 4 步（加倍）：data −= flag·q。

```lean
theorem step_compare (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (Kc K X : Nat) (F A : Bool) (hKc : Kc < 2^L.constant.length)
```

证明了第 6 步（减半）/ 第 2 步（加倍）：flag ^= active ∧ [data < Kc]，比较器工作区回零。

```lean
theorem halveStep_values (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q i K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hi : i < 512)
```

证明了完整减半轮：只改写 data，全部借用工作线清零，计数 K 保持。

```lean
theorem doubleStep_values (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q i K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hi : i < 512)
```

证明了完整加倍轮：显式前向门列撤销减半，不倒放测量。

```lean
theorem HalvingValues.iff (L : HalvingLayout) (K X : Nat) (s : BasisState)
```

证明了轮边界的内部断言恰好是数据、计数寄存器的值及全部工作线清零。

```lean
theorem halveStep_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q i K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hi : i < 512)
```

证明了第 i 轮：i<k 时原地模减半，否则保持；k 不变且全部工作线清零。

```lean
theorem doubleStep_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q i K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hi : i < 512)
```

证明了第 i 个恢复轮：i<k 时原地模加倍，否则保持；k 不变且全部工作线清零。

## [HalvingLoop.lean](HalvingLoop.lean)

这个文件组合固定轮数的减半与恢复过程，证明与数学迭代一致及相应资源。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def halveInPlace (L : HalvingLayout) (q i : Nat) : Nat → Program
```

固定轮数前向减半，每轮仍执行同一字面门列。 从轮号 i 起执行 n 轮；先执行当前轮，再递增轮号。仅 i<k 的轮改变数据。

```lean
def restoreInPlace (L : HalvingLayout) (q i : Nat) : Nat → Program
```

恢复从 i 起的 n 轮：先恢复后续轮，再恢复当前轮，故轮号顺序与减半相反。

```lean
def halvingValue (q K i : Nat) : Nat → Nat → Nat
```

描述从轮号 i 开始的减半结果，仅在轮号小于 K 时执行有效模减半。

```lean
theorem halveInPlace_values (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K i n X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hn : i+n ≤ 512)
```

证明了固定次数减半得到 halvingValue 指定的结果，恢复程序将其还原为 X；两者保持计数 K，清零活动与辅助标志，并恢复相位。

```lean
theorem halvingValue_eq (q K i n X : Nat)
```

证明了 `halvingValue q K i n X` 等于 `(halveMod q)^[min n (K-i)] X`。

```lean
theorem halveInPlace_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hK : K ≤ 512)
```

证明了固定 512 轮执行恰好 K 次模减半；保留计数，工作区清零。

```lean
theorem restoreInPlace_spec (L : HalvingLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (q K X : Nat) (hq : q % 2 = 1) (hX : X < q)
    (hfit : 2*q ≤ 2^L.data.length) (hK : K ≤ 512)
```

证明了显式前向加倍门列撤销 K 次模减半；计数不变，工作区清零。

```lean
theorem halveStep_counts (L : HalvingLayout) (hw : L.Widths) (q i : Nat)
```

证明了两种轮的门数相同：3n+40 Toffoli、2n+39 次测量。

```lean
theorem halveInPlace_counts (L : HalvingLayout) (hw : L.Widths) (q i n : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (halveInPlace L q i n) = n*(3*L.data.length+20) ∧ measurementCount (halveInPlace L q i n) = n*(2*L.data.length+19) ∧ toffoliCount (restoreInPlace L q i n) = n*(3*L.data.length+20) ∧ measurementCount (restoreInPlace L q i n) = n*(2*L.data.length+19)`。

```lean
def HalvingLayout.usedWires (L : HalvingLayout) : List Wire
```

减半门列使用的线路；计数器另一银行 out 不参与活动比较。

```lean
theorem HalvingLayout.usedWires_subset (L : HalvingLayout)
```

证明了 `L.usedWires` 包含的线路都在 `L.wires` 中。

```lean
theorem halveStep_wires (L : HalvingLayout) (hw : L.Widths) (q i : Nat)
```

证明了程序实际触及的线路集合：`wires (halveStep L q i) = L.usedWires.toFinset ∧ wires (doubleStep L q i) = L.usedWires.toFinset`。

```lean
theorem halveInPlace_wires (L : HalvingLayout) (hw : L.Widths) (q i n : Nat)
```

证明了程序实际触及的线路集合：`wires (halveInPlace L q i n) = (if n=0 then ∅ else L.usedWires.toFinset) ∧ wires (restoreInPlace L q i n) = (if n=0 then ∅ else L.usedWires.toFinset)`。

## [InverseCompactLayout.lean](InverseCompactLayout.lean)

这个文件划分求逆紧凑布局中的数据、计数和可借用空间，证明长度、分区与互异性。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
def compactBank (I : InverseLoopLayout) : List Wire
```

原银行只保留实际借用的804位，编号不变。

```lean
def compactBorrow (I : InverseLoopLayout) : List Wire
```

正循环结束后清u/s常量，v已经零；排除r和518位缩放历史。

```lean
def idleBorrow (I : InverseLoopLayout) : List Wire
```

求逆未存活时的外层点运算工作区；完全不借记录带。

```lean
def compactCoreWires (I : InverseLoopLayout) : List Wire
```

D1目标支持列表；第一阶段记录保持两位版本。

```lean
theorem data_length (I : InverseLoopLayout) (hl : I.first.low.length=256) (f : RoundField)
```

证明了寄存器或线路列表的长度关系：`(I.middle.data.reg f).length=257`。

```lean
theorem bank_length (I : InverseLoopLayout) (hm : I.arithmetic.width=256)
```

证明了寄存器或线路列表的长度关系：`I.compactBank.length=804`。

```lean
theorem compactBorrow_length (I : InverseLoopLayout) (hl : I.first.low.length=256)
    (hm : I.arithmetic.width=256)
```

证明了寄存器或线路列表的长度关系：`I.compactBorrow.length=1828`。

```lean
theorem idleBorrow_length (I : InverseLoopLayout) (hl : I.first.low.length=256)
    (hm : I.arithmetic.width=256)
```

证明了寄存器或线路列表的长度关系：`I.idleBorrow.length=2603`。

```lean
theorem data_count (D : RoundDataLayout) (w : Wire)
```

证明了某根线在所有逐位布局展开后的出现次数，等于它在八个字段列表中出现次数之和。

```lean
theorem compact_partition (I : InverseLoopLayout)
```

证明了r、存活历史与借用区构成同一组数据线，zero的低4/高253位不重叠。

```lean
theorem idle_count (I : InverseLoopLayout) (w : Wire)
```

证明了相应数值或范围条件：`I.idleBorrow.count w ≤ I.middle.data.wires.count w+I.arithmetic.wires.count w`。

```lean
theorem idleBorrow_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
```

证明了 `I.idleBorrow` 中的线路互不重复。

```lean
theorem compact_parts_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
```

证明了 `(I.middle.r++I.scaleLive++I.compactBorrow)` 中的线路互不重复。

```lean
theorem counter_count (L : AdderLayout) (w : Wire)
```

证明了相应数值或范围条件：`L.x.count w≤L.wires.count w`。

```lean
theorem compact_inputs_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
```

证明了加入K后仍全局互异，供缩放查表与所有中段组合使用。

```lean
theorem idleBorrow_subset_wires (I : InverseLoopLayout)
```

证明了外层借用只使用原求逆布局已有线路，便于传递全局frame。

```lean
theorem compactCore_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
```

证明了 `I.compactCoreWires` 中的线路互不重复。

```lean
theorem compactCore_length (I : InverseLoopLayout) (hn : I.records.length=512)
    (hk : I.first.counter.width=10) (hl : I.first.low.length=256) (hm : I.arithmetic.width=256)
```

证明了列表长度是未来点加支持证明的账本；尚不声明任何程序的qubitCount。

```lean
theorem compact_middle_perm (I : InverseLoopLayout)
```

证明了 `I.middle.usedSharedWires` 与 `I.first.usedSharedWires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem compact_reg_mem (I : InverseLoopLayout) (f : RoundField) (hf : f≠.out)
    {w : Wire} (hw : w∈I.middle.data.reg f)
```

证明了 `w` 属于 `I.compactCoreWires`。

```lean
theorem idleBorrow_subset (I : InverseLoopLayout)
```

证明了外层借用P包含于D1支持目标，旧记录swap尾部从未被借回。

```lean
theorem compactBorrow_subset (I : InverseLoopLayout)
```

证明了 `I.compactBorrow` 包含的线路都在 `I.compactCoreWires` 中。

## [InverseCompactViews.lean](InverseCompactViews.lean)

这个文件在紧凑借用区上构造缩放和取负视图，并证明位宽、支持划分及互异性。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
def compactScaling (I : InverseLoopLayout) : InverseScaleLayout
```

§22的固定借用视图；getD的默认位仅使坏布局上的定义全域成立。

```lean
theorem compactScaling_widths (I : InverseLoopLayout) (ha : I.middle.r.length=257)
    (hm : I.arithmetic.width=256)
    (hl : I.first.low.length=256) (hk : I.first.counter.width=10)
```

证明了 `I.compactScaling.Widths`，即相应布局满足所需位宽条件。

```lean
theorem one_slice (B : List Wire) (fallback : Wire) (n : Nat) (hn : n<B.length)
```

证明了 `(B.drop n).take 1` 等于 `[B.getD n fallback]`。

```lean
theorem compactScaling_work (I : InverseLoopLayout) (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了 `I.compactScaling.work` 等于 `I.compactBorrow.take 1054`。

```lean
theorem compactScaling_live (I : InverseLoopLayout) (hl : I.first.low.length=256)
```

证明了 `I.compactScaling.live` 等于 `I.scaleLive`。

```lean
theorem compactScaling_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了 `I.compactScaling.wires` 中的线路互不重复。

```lean
def compactNeg (I : InverseLoopLayout) : ModInPlaceLayout
```

原地取负的真实源为r，未触及的目标/mask也在同一B中取互异切片。

```lean
theorem compactNeg_widths (I : InverseLoopLayout)
    (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了 `I.compactNeg.Widths 256`，即相应布局满足所需位宽条件。

```lean
theorem compactNeg_target (I : InverseLoopLayout)
    (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了 `I.compactNeg.z` 等于 `(I.compactBorrow.drop 514).take 257`。

```lean
theorem compactNeg_partition (I : InverseLoopLayout)
    (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了取负视图只是r与B前1029位的置换，绝不借入K或记录。

```lean
theorem compactNeg_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了 `I.compactNeg.wires` 中的线路互不重复。

## [InverseCompute.lean](InverseCompute.lean)

这个文件组合 Kaliski、取负和缩放，定义求逆准备、恢复及 XOR 输出循环并证明中间值。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def inverseCompute (L : InverseLoopLayout) (q : Nat) : Program
```

准备逆元；第一阶段的数据与记录带保留，供结果使用后恢复。

```lean
def inverseUncompute (L : InverseLoopLayout) (q : Nat) : Program
```

逆元使用后的恢复；各段均执行显式前向门列，不倒放测量。

```lean
def inverseLoop (L : InverseLoopLayout) (q : Nat) : Program
```

准备逆元，将其异或到输出，再恢复内部状态和历史。

```lean
def InverseInitial (L : InverseLoopLayout) (q a : Nat) (s : BasisState) : Prop
```

规定 Kaliski 初态、全零分支记录和求逆额外工作区初态。

```lean
theorem InverseExtra.congr (L : InverseLoopLayout) (A : Nat) (s t : BasisState)
    (h : InverseExtra L A s) (he : ∀ w∈L.extra,t w=s w)
```

证明了保持相关线路值时，逆元额外工作区的状态断言仍成立。

```lean
theorem inverseFirst_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (q a : Nat) (hq0 : 0<q) (hq : q<2^L.first.low.length) (ha : a<q) (hcop : q.Coprime a)
```

证明了第一阶段执行 512 轮 Kaliski 迭代并记录分支历史，撤销阶段从该中间态恢复求逆初态。

```lean
theorem inverseCompute_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257)
    (q a : Nat) (hq : q<2^256) (ho : q%16=15) (hx : a<q) (hcop : q.Coprime a)
```

证明了计算从求逆初态得到 512 轮 Kaliski 迭代后的缩放中间态，并保留分支历史；撤销程序将这个中间态恢复为初态。

## [InverseContract.lean](InverseContract.lean)

这个文件定义外部逆元电路应满足的正确性及资源契约；契约本身不是实现。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def inverseContract (x out work : List Wire) (c : Program)
    (toffolis measurements qubits : Nat) : Prop
```

secp256k1 求逆的接口要求；具体实现及满足证明见 fieldInverse_contract。 输入明确排除零，两个数值寄存器均为 256 位；工作位清零、相位恢复。 资源等式和线路包含关系约束同一个程序。

## [InverseLayout.lean](InverseLayout.lean)

这个文件定义外部求逆布局、输入装卸和完整求逆程序，并连接外部与内部线路。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure InverseLayout
```

外部输入另占 256 位；内核输出的末位作为工作位，公开输出取其低 256 位。 `InverseLayout` 定义为 `inner`、`x` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLayout` 命名空间。

```lean
def out (L : InverseLayout) : List Wire
```

取出输出寄存器，对应 `L.inner.out.take 256`。

```lean
def vLow (L : InverseLayout) : List Wire
```

取出输入副本低位，对应 `L.inner.first.low.map RoundBit.v`。

```lean
def rest (L : InverseLayout) : List Wire
```

取出`rest` 对应的数据或线路，对应 `L.inner.first.r ++ L.inner.first.k ++ [L.inner.first.done] ++ L.inner.work ++ [L.inner.first.high.v] ++ L.inner.out.drop 256`。

```lean
def work (L : InverseLayout) : List Wire
```

给出工作区，由 `L.inner.first.u ++ L.vLow ++ L.inner.first.s ++ L.rest` 组成。

```lean
def wires (L : InverseLayout) : List Wire
```

给出布局的全部线路，由 `L.x ++ L.out ++ L.work` 组成。

```lean
structure Widths (L : InverseLayout) : Prop
```

位宽条件。 `Widths` 定义为 `input`、`records`、`counter`、`low`、`arithmetic`、`a`、`temp`、`output` 各部分。

```lean
theorem v_split (L : InverseLayout)
```

证明了 `L.inner.first.v` 等于 `L.vLow++[L.inner.first.high.v]`。

```lean
theorem data_count (bs : List RoundBit) (w : Wire)
```

证明了某根线在所有逐位布局展开后的出现次数，等于它在八个字段列表中出现次数之和。

```lean
theorem counter_count (bs : List AddBit) (w : Wire)
```

证明了 `(addWires bs).count w` 等于 `(bs.map AddBit.x).count w + (bs.map AddBit.y).count w + (bs.map AddBit.out).count w + (bs.map AddBit.carry).count w`。

```lean
theorem wires_perm (L : InverseLayout)
```

证明了 `L.wires` 与 `(L.x++L.inner.wires)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem inner_nodup (L : InverseLayout) (hnd : L.wires.Nodup)
```

证明了 `L.inner.wires` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def inverseLoad (L : InverseLayout) : Program
```

装入外部输入及常数；卸载使用同样的 XOR 门，按相反次序执行。

```lean
def inverseUnload (L : InverseLayout) : Program
```

撤销外部求逆的常量与输入副本装载，清理内部寄存器。

```lean
def fieldInverse (L : InverseLayout) : Program
```

secp256k1 非零输入的具体求逆电路。

## [InverseLoad.lean](InverseLoad.lean)

这个文件定义外部求逆寄存器断言，证明常量和输入装载如何建立求逆初态。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
inductive InverseField
```

装载证明使用的六个不交寄存器；rest 包括输入与输出的内部高位。 包括 `x`、`u`、`v`、`s`、`out`、`rest`。

```lean
def InverseLayout.reg (L : InverseLayout) : InverseField → List Wire
```

按字段标识选择对应的位或寄存器。

```lean
def InverseValues (L : InverseLayout) (v : InverseField → Nat) (st : BasisState) : Prop
```

同时规定外部求逆布局各命名字段的寄存器值。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLayout` 命名空间。

```lean
theorem reg_count (L : InverseLayout) (f : InverseField) (w : Wire)
```

证明了相应数值或范围条件：`(L.reg f).count w ≤ L.wires.count w`。

```lean
theorem reg_nodup (L : InverseLayout) (hnd : L.wires.Nodup) (f : InverseField)
```

证明了 `(L.reg f)` 中的线路互不重复。

```lean
theorem reg_disjoint (L : InverseLayout) (hnd : L.wires.Nodup) (f g : InverseField) (hne : f≠g)
```

证明了 `(L.reg f)` 与 `(L.reg g)` 没有共用线路。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem InverseValues.update (L : InverseLayout) (hnd : L.wires.Nodup)
    (v : InverseField → Nat) (f : InverseField) (V : Nat) (s t : BasisState)
    (hv : InverseValues L v s) (he : ∀ w,w∉L.reg f → t w=s w)
    (hz : regValue (L.reg f) t=V)
```

证明了操作后满足对应的寄存器状态或保持断言：`InverseValues L (Function.update v f V) t`。

```lean
theorem inverseConstant_values (L : InverseLayout) (hnd : L.wires.Nodup)
    (v : InverseField → Nat) (f : InverseField) (k : Nat) (hk : k<2^(L.reg f).length)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (InverseValues L v) (xorConstant (L.reg f) k) (InverseValues L (Function.update v f (v f ^^^ k)))`。

```lean
theorem inverseInput_values (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (v : InverseField → Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (InverseValues L v) (copyRegister none L.x L.vLow) (InverseValues L (Function.update v .v (v .v ^^^ v .x)))`。

```lean
def inverseValues (X U V S O : Nat) : InverseField → Nat
```

指定求逆输入、中间数据和输出的值，并要求其余字段为零。

```lean
theorem inverseLoad_values (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X O : Nat)
```

证明了装载把内部三个数据值从零设为 p、X、1，卸载再清零；两者保持外部输入 X 和输出 O，并恢复相位。

## [InverseLoopLayout.lean](InverseLoopLayout.lean)

这个文件定义求逆循环及阶段布局，证明循环终态视图和数据、工作区的划分关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem loopEnd_shared_perm (L : KaliskiRoundLayout) (n : Nat)
```

证明了 `(loopEndLayout L n).sharedWires` 与 `L.sharedWires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem loopEnd_data (L : KaliskiRoundLayout) (n : Nat)
```

证明了 `(loopEndLayout L n).data` 等于 `L.data`。

```lean
theorem loopEnd_counter_width (L : KaliskiRoundLayout) (n : Nat)
```

证明了 `(loopEndLayout L n).counter.width` 等于 `L.counter.width`。

```lean
structure InverseLoopLayout
```

I4 使用已初始化的第一阶段寄存器；第二阶段复用其计数比较线路。 `InverseLoopLayout` 定义为 `first`、`records`、`arithmetic`、`a`、`temp`、`out` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
def middle (L : InverseLoopLayout) : KaliskiRoundLayout
```

构造循环终态的布局视图，复用现有寄存器和线路。

```lean
def halving (L : InverseLoopLayout) : HalvingLayout
```

构造减半计数的布局视图，复用现有寄存器和线路。

```lean
def extra (L : InverseLoopLayout) : List Wire
```

取出`extra` 对应的数据或线路，对应 `L.a++L.temp++L.arithmetic.wires`。

```lean
def wires (L : InverseLoopLayout) : List Wire
```

给出布局的全部线路，由 `L.first.tapeWires L.records++L.extra++L.out` 组成。

```lean
def phaseWires (L : InverseLoopLayout) : List Wire
```

给出当前缩放阶段线路，由 `L.extra ++ [L.middle.compareCin] ++ L.middle.counter.wires` 组成。

```lean
theorem middle_perm (L : InverseLoopLayout)
```

证明了 `(L.middle.tapeWires L.records)` 与 `(L.first.tapeWires L.records)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem middle_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.middle.tapeWires L.records)` 中的线路互不重复。

```lean
theorem phase_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup)
```

证明了 `L.phaseWires` 中的线路互不重复。

```lean
theorem first_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.first.tapeWires L.records)` 中的线路互不重复。

```lean
def restWires (L : InverseLoopLayout) : List Wire
```

给出必须保持的历史线路，由 `L.records.flatMap RoundRecord.wires ++ [L.middle.done,L.middle.oddWork,L.middle.bothWork] ++ L.middle.data.wires` 组成。

```lean
theorem rest_phase_perm (L : InverseLoopLayout)
```

证明了 `(L.restWires ++ L.phaseWires ++ L.out)` 与 `L.wires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem rest_phase_disjoint (L : InverseLoopLayout) (hnd : L.wires.Nodup)
```

证明了 `L.restWires` 与 `L.phaseWires` 没有共用线路。

## [InverseLoopProof.lean](InverseLoopProof.lean)

这个文件证明复制逆元到输出后仍可恢复历史，得到完整求逆循环的数值结论。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem InversePhase.congr (L : InverseLoopLayout) (K A : Nat)
    (s t : BasisState) (h : InversePhase L K A s) (he : ∀ w∈L.phaseWires,t w=s w)
```

证明了保持缩放阶段相关线路值时，该阶段状态断言仍成立。

```lean
theorem InverseScaledMiddle.congr (L : InverseLoopLayout) (q : Nat) (z : KState)
    (cs : List (Bool×Bool)) (N : Nat) (s t : BasisState) (h : InverseScaledMiddle L q z cs N s)
    (he : ∀ w∈L.coreWires,t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`InverseScaledMiddle L q z cs N t`。

```lean
theorem inverseCopy_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hlen : L.a.length=L.out.length) (q : Nat) (z : KState) (cs : List (Bool×Bool)) (N O : Nat)
```

证明了将缩放后的逆元异或到输出 O，同时保持缩放中间态及其历史，并恢复相位。

```lean
theorem inverseLoop_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a O : Nat) (hq : q<2^256) (ho : q%16=15) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a)
```

证明了保留初始化数据，XOR写入规范逆元，再清除全部第一阶段与缩放历史。

## [InverseLoopResources.lean](InverseLoopResources.lean)

这个文件证明求逆循环的一般及 257 位实例的门数、测量数和线路数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem inverseLoop_resources (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10) (hd : 2≤L.first.data.width)
    (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (hout : L.out.length=L.arithmetic.width+1)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256) (q : Nat)
```

证明了同一字面门列的精确资源；w 为带额外高位的数据宽度；512正/逆轮加一次缩放准备/恢复。

```lean
theorem inverseLoop_257_resources (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257) (q : Nat)
```

证明了257 位内部数据、512 轮的当前实现；计数银行、1024 根记录线和第二阶段工作区均计入。

## [InverseLoopSpec.lean](InverseLoopSpec.lean)

这个文件将求逆内部断言改写为直接寄存器条件，给出准备、恢复及 XOR/零输出规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem LoopState.iff (L : KaliskiRoundLayout) (z : KState) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`LoopState L z s ↔ (((((((regValue L.u s=z.u ∧ regValue L.v s=z.v) ∧ regValue L.r s=z.r) ∧ regValue L.s s=z.s) ∧ regValue L.k s=z.k) ∧ regValue L.kNext s=0) ∧ s L.done=decide (z.v=0)) ∧ regValue L.scratch s=0)`。

```lean
theorem TapeValues.zero_iff (rs : List RoundRecord) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`TapeValues rs (List.replicate rs.length (false,false)) s ↔ regValue (rs.flatMap RoundRecord.wires) s=0`。

```lean
def InverseLoopLayout.work (L : InverseLoopLayout) : List Wire
```

给出工作区，由 `L.first.kNext++L.first.scratch++L.records.flatMap RoundRecord.wires++L.extra` 组成。

```lean
theorem InverseExtra.zero_iff (L : InverseLoopLayout) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`InverseExtra L 0 s ↔ regValue L.extra s=0`。

```lean
theorem InverseInitial.iff (L : InverseLoopLayout) (q a : Nat) (ha : 0<a) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`InverseInitial L q a s ↔ ((((((regValue L.first.u s=q ∧ regValue L.first.v s=a) ∧ regValue L.first.r s=0) ∧ regValue L.first.s s=1) ∧ regValue L.first.k s=0) ∧ s L.first.done=false) ∧ regValue L.work s=0)`。

```lean
def InverseHistory (L : InverseLoopLayout) (q X : Nat) (s : BasisState) : Prop
```

保存第一阶段数据/记录、量子计数与缩放历史：y=N、carry为商和借位。 不包含a、temp和模算术区；使用段必须同时保持这些显式历史值。

```lean
theorem inverseScaled_history_iff (L : InverseLoopLayout) (q X : Nat) (s : BasisState)
```

证明了缩放中间态等价于：逆元寄存器保存缩放计算结果，临时寄存器与算术工作区为零，并满足完整求逆历史断言。

```lean
theorem inversePrepare_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257)
    (q X : Nat) (hq : q<2^256) (ho : q%16=15) (hX0 : 0<X) (hX : X<q) (hcop : q.Coprime X)
```

证明了准备逆元，同时保留第一阶段和缩放历史，借用区为空。

```lean
theorem inverseRestore_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257)
    (q X : Nat) (hq : q<2^256) (ho : q%16=15) (hX0 : 0<X) (hX : X<q) (hcop : q.Coprime X)
```

证明了使用段保持完整历史后，恢复所有第一阶段初值并清空缩放历史。

```lean
theorem inverseLoop_xor_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a O : Nat) (hq : q<2^256) (ho : q%16=15) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a)
```

证明了任意输出的 XOR 形式；第一阶段已经载入 q、a、0、1，完整工作区初末均为零。

```lean
theorem inverseLoop_spec (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hlow : L.first.low.length=256) (harith : L.arithmetic.width=256)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hout : L.out.length=257)
    (q a : Nat) (hq : q<2^256) (ho : q%16=15) (hx0 : 0<a) (hx : a<q) (hcop : q.Coprime a)
```

证明了常用零输出形式。fieldInverse 负责把外部输入装入这里要求的已初始化寄存器。

## [InverseLoopState.lean](InverseLoopState.lean)

这个文件定义求逆历史、中间结果与计数状态断言，并证明保持和展开关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def InverseRest (L : InverseLoopLayout) (z : KState) (cs : List (Bool×Bool)) (s : BasisState) : Prop
```

第二阶段不会修改的数据、分支记录和第一阶段状态位。

```lean
def InverseExtra (L : InverseLoopLayout) (A : Nat) (s : BasisState) : Prop
```

规定逆元寄存器保存 A，临时寄存器和模算术工作区为零。

```lean
def InversePhase (L : InverseLoopLayout) (K A : Nat) (s : BasisState) : Prop
```

规定缩放阶段的逆元、计数和活动位状态，以及可借用工作区为零。

```lean
def InverseMiddle (L : InverseLoopLayout) (z : KState) (cs : List (Bool×Bool)) (A : Nat) (s : BasisState) : Prop
```

组合第一阶段历史和当前逆元缩放阶段的寄存器状态。

```lean
theorem InverseRest.congr (L : InverseLoopLayout) (z : KState) (cs : List (Bool×Bool))
    (s t : BasisState) (h : InverseRest L z cs s) (he : ∀ w∈L.restWires, t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`InverseRest L z cs t`。

```lean
theorem InverseMiddle.iff (L : InverseLoopLayout) (z : KState) (cs : List (Bool×Bool))
    (A : Nat) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`InverseMiddle L z cs A s ↔ LoopState L.middle z s ∧ TapeValues L.records cs s ∧ InverseExtra L A s`。

## [InverseLoopSupport.lean](InverseLoopSupport.lean)

这个文件确定求逆循环实际触及的线路，证明各阶段支持范围及完整支持集。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
def coreWires (L : InverseLoopLayout) : List Wire
```

给出该阶段的线路范围，由 `L.first.tapeWires L.records++L.extra` 组成。

```lean
theorem core_perm (L : InverseLoopLayout)
```

证明了 `(L.restWires++L.phaseWires)` 与 `L.coreWires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem phase_subset (L : InverseLoopLayout)
```

证明了 `L.phaseWires` 包含的线路都在 `L.coreWires` 中。

```lean
theorem rest_subset (L : InverseLoopLayout)
```

证明了 `L.restWires` 包含的线路都在 `L.coreWires` 中。

```lean
def usedCoreWires (L : InverseLoopLayout) : List Wire
```

给出该阶段的线路范围，由 `L.first.usedTapeWires L.records++L.extra` 组成。

```lean
def usedWires (L : InverseLoopLayout) : List Wire
```

给出实际使用的线路，由 `L.usedCoreWires++L.out` 组成。

```lean
theorem usedCoreWires_sublist (L : InverseLoopLayout)
```

证明了 `L.usedCoreWires` 是 `L.coreWires` 的子列表，顺序与重复次数均兼容。

```lean
theorem usedWires_sublist (L : InverseLoopLayout)
```

证明了 `L.usedWires` 是 `L.wires` 的子列表，顺序与重复次数均兼容。

```lean
theorem middle_used_perm (L : InverseLoopLayout)
```

证明了 `L.middle.usedSharedWires` 与 `L.first.usedSharedWires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem phase_used_subset (L : InverseLoopLayout)
```

证明了 `L.phaseWires` 包含的线路都在 `L.usedCoreWires` 中。

```lean
theorem negative_subset (L : InverseLoopLayout)
```

证明了 `L.middle.r++L.temp++L.a++L.arithmetic.wires` 包含的线路都在 `L.usedCoreWires` 中。

```lean
theorem first_negative_union (L : InverseLoopLayout)
```

证明了 `(L.first.usedTapeWires L.records).toFinset ∪ (L.middle.r++L.temp++L.a++L.arithmetic.wires).toFinset` 等于 `L.usedCoreWires.toFinset`。

```lean
theorem scaling_used_subset (L : InverseLoopLayout) (ht : L.temp.length=257)
    (hm : L.arithmetic.width=256) (hl : L.first.low.length=256)
```

证明了新缩放只触及原求逆实际支持中的数据、计数和借用区。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem inverseCompute_wires (L : InverseLoopLayout)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hd : 2≤L.first.data.width) (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256) (q : Nat)
```

证明了程序实际触及的线路集合：`wires (inverseCompute L q)=L.usedCoreWires.toFinset ∧ wires (inverseUncompute L q)=L.usedCoreWires.toFinset`。

```lean
theorem inverseLoop_wires (L : InverseLoopLayout)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hd : 2≤L.first.data.width) (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1) (ho : L.out.length=L.arithmetic.width+1)
    (hl : L.first.low.length=256) (hm : L.arithmetic.width=256) (q : Nat)
```

证明了程序实际触及的线路集合：`wires (inverseLoop L q)=L.usedWires.toFinset`。

## [InverseMiddle.lean](InverseMiddle.lean)

这个文件证明求逆第一阶段后的规范化取负更新及其布局安全性。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
theorem a_mem_phase (L : InverseLoopLayout) {w : Wire} (hw : w∈L.a)
```

证明了 `w` 属于 `L.phaseWires`。

```lean
theorem negative_nodup (L : InverseLoopLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.middle.r++L.temp++L.a++L.arithmetic.wires)` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem InverseMiddle.update_a (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (z : KState) (cs : List (Bool×Bool)) (A Z : Nat) (s t : BasisState)
    (h : InverseMiddle L z cs A s) (he : ∀ w, w∉L.a → t w=s w) (hz : regValue L.a t=Z)
```

证明了操作后满足对应的寄存器状态或保持断言：`InverseMiddle L z cs Z t`。

```lean
theorem inverseNegative_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hw : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1) (ht : L.temp.length=L.arithmetic.width+1)
    (q : Nat) (z : KState) (cs : List (Bool×Bool)) (A : Nat)
    (hq0 : 0<q) (hq : q<2^L.arithmetic.width) (hr : z.r<2*q)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (InverseMiddle L z cs A) (negativeInit L.arithmetic q L.middle.r L.temp L.a) (InverseMiddle L z cs (A ^^^ (-(z.r : ZMod q)).val))`。

## [InversePorts.lean](InversePorts.lean)

这个文件把求逆的轮、计数和内部工作区接到调用方池中，并证明位宽和线路对应。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def poolRoundBit (w : Nat → Wire) (start : Nat) : RoundBit
```

从工作池的连续八根线构造一位 Kaliski 数据布局。

```lean
def poolAddBit (w : Nat → Wire) (start : Nat) : AddBit
```

从工作池的连续四根线构造一位加法器布局。

```lean
def poolFirstRound (w : Nat → Wire) : KaliskiRoundLayout
```

基础轮的两根记录占位字段不会执行；每轮由 records 中的独立线路替换。

```lean
def poolInverse (w : Nat → Wire) (x out : List Wire) : InverseLayout
```

现有求逆模块的 5699 根工作线映射到同一个模乘工作池的前缀。

```lean
theorem poolInverse_widths (w : Nat → Wire) (x out : List Wire)
    (hx : x.length=256) (ho : out.length=256)
```

证明了 `(poolInverse w x out).Widths`，即相应布局满足所需位宽条件。

```lean
theorem poolInverse_inputs (w : Nat → Wire) (x out : List Wire) (ho : out.length=256)
```

证明了从工作池构造求逆布局保持调用方指定的输入和输出端口。

```lean
theorem poolRoundBit_wires (w : Nat → Wire) (start : Nat)
```

证明了 `(poolRoundBit w start).wires` 等于 `wireBlock w start 8`。

```lean
theorem poolAddBit_wires (w : Nat → Wire) (start : Nat)
```

证明了 `addWires [poolAddBit w start]` 等于 `wireBlock w start 4`。

```lean
theorem addWires_flatMap (bs : List AddBit)
```

证明了 `addWires bs` 等于 `bs.flatMap (fun b => addWires [b])`。

```lean
theorem poolFirstRound_shared (w : Nat → Wire)
```

证明了 `(poolFirstRound w).sharedWires` 等于 `wireBlock w 0 2102`。

```lean
theorem poolInverse_inner_perm (w : Nat → Wire) (x out : List Wire)
```

证明了 `(poolInverse w x out).inner.wires` 与 `(out++wireBlock w 0 5699)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem poolInverse_work_perm (w : Nat → Wire) (x out : List Wire) (ho : out.length=256)
```

证明了 `(poolInverse w x out).work` 与 `(wireBlock w 0 5699)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
def poolInverseUsedWork (w : Nat → Wire) : List Wire
```

保留原池编号，跳过每个八线银行中的旧out位置10+8i。

```lean
theorem poolInverseUsedWork_length (w : Nat → Wire)
```

证明了寄存器或线路列表的长度关系：`(poolInverseUsedWork w).length=5442`。

```lean
theorem poolInverse_used_perm (w : Nat → Wire) (x out : List Wire)
```

证明了 `(poolInverse w x out).usedWires` 与 `(x++out++poolInverseUsedWork w)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem poolInverse_nodup (w : Nat → Wire) (x out : List Wire) (ho : out.length=256)
    (h : (x++out++wireBlock w 0 5699).Nodup)
```

证明了 `(poolInverse w x out).wires` 中的线路互不重复。

## [InverseResources.lean](InverseResources.lean)

这个文件证明外部求逆的装卸成本、实际支持、精确资源及契约满足性。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem inverseLoad_counts (L : InverseLayout) (hw : L.Widths)
```

证明了装载/卸载的 CX/X 门不增加 Toffoli 或测量。

```lean
def InverseLayout.usedWires (L : InverseLayout) : List Wire
```

给出实际使用的线路，由 `L.x++L.inner.usedWires` 组成。

```lean
theorem InverseLayout.usedWires_nodup (L : InverseLayout) (hn : L.wires.Nodup)
```

证明了 `L.usedWires` 中的线路互不重复。

```lean
theorem InverseLayout.usedWires_subset (L : InverseLayout)
```

证明了 `L.usedWires` 包含的线路都在 `L.wires` 中。

```lean
theorem fieldInverse_wires (L : InverseLayout) (hw : L.Widths)
```

证明了实际门列不触及第一阶段out银行；原分配工作区保持不变。

```lean
theorem fieldInverse_resources (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
```

证明了外部 256 位输入增加 256 根线路；原内核的输出高位仍计入工作区。

```lean
theorem fieldInverse_contract (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
```

证明了求逆接口的具体实现证明；正确性、精确资源和支持集均指向 fieldInverse L。

## [InverseScale.lean](InverseScale.lean)

这个文件定义计数查表与单段 Montgomery 缩放，证明准备、恢复、历史和共享工作区条件。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure InverseScaleLayout
```

一次计数缩放的实际寄存器视图；不拥有额外分配。 `InverseScaleLayout` 定义为 `a`、`k`、`factor`、`stage`、`extraScratch` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.InverseScaleLayout` 命名空间。

```lean
def scratch (L : InverseScaleLayout) : List Wire
```

给出临时工作区，由 `L.stage.scratch++L.extraScratch` 组成。

```lean
def work (L : InverseScaleLayout) : List Wire
```

给出工作区，由 `L.factor++L.stage.work++L.extraScratch` 组成。

```lean
def live (L : InverseScaleLayout) : List Wire
```

给出恢复前必须保留的线路，由 `L.stage.acc++L.stage.history++[L.stage.flag]` 组成。

```lean
def wires (L : InverseScaleLayout) : List Wire
```

给出布局的全部线路，由 `L.a++L.k++L.live++L.work` 组成。

```lean
structure Widths (L : InverseScaleLayout) : Prop
```

位宽条件。 `Widths` 定义为 `a`、`k`、`factor`、`stage`、`extraScratch` 各部分。

```lean
def lookup (L : InverseScaleLayout) (q : Nat) : Program
```

根据计数寄存器查询逆元缩放因子，并将结果异或到因子寄存器。

```lean
def exchange (L : InverseScaleLayout) : Program
```

三次无控制CX复制交换a与累加器低257位；高4位保持。

```lean
def prepare (L : InverseScaleLayout) (q : Nat) : Program
```

通过查表、Montgomery 计算和交换准备缩放后的逆元，清除临时查表数据并保留恢复历史。

```lean
def restore (L : InverseScaleLayout) (q : Nat) : Program
```

利用保留历史撤销缩放，并清理临时查表寄存器。

```lean
def Prepared (L : InverseScaleLayout) (q K N : Nat) (s : BasisState) : Prop
```

使用逆元期间仅保留N、Montgomery商和借位，所有借用工作区为空。

```lean
def Values (L : InverseScaleLayout) (A K Z H C : Nat) (F : Bool) (s : BasisState) : Prop
```

每个门列边界的寄存器值；最后的零断言不包含factor。

```lean
theorem reordered (L : InverseScaleLayout) (hn : L.wires.Nodup)
```

证明了 `((L.a++L.k++L.live++L.stage.work++L.extraScratch)++L.factor)` 中的线路互不重复。

```lean
theorem lookup_nodup (L : InverseScaleLayout) (hn : L.wires.Nodup)
```

证明了 `(L.k++L.scratch++L.factor)` 中的线路互不重复。

```lean
theorem stage_nodup (L : InverseScaleLayout) (hn : L.wires.Nodup)
```

证明了 `(L.factor++L.a.take 256++L.stage.wires)` 中的线路互不重复。

```lean
theorem lookup_step (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : 0<q) (hb : q<2^256) (A K Z H C : Nat) (F : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L A K Z H C F) (L.lookup q) (Values L A K Z H (C ^^^ inverseScaleFactor q K) F)`。

```lean
theorem exchange_lists (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (a++b).Nodup) (s : State) (m : List Bool)
```

证明了三次寄存器异或复制交换两组寄存器的值，保持两组寄存器外的基态位与相位。

```lean
theorem low_value (r : List Wire) (n V : Nat) (s : BasisState)
    (hn : n≤r.length) (hv : regValue r s=V) (hV : V<2^n)
```

证明了寄存器值能够装入低 n 位时，低位读数仍为 V，剩余高位全为零。

```lean
theorem exchange_step (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (A K Z H C : Nat) (F : Bool) (hZ : Z<2^257)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L A K Z H C F) L.exchange (Values L Z K A H C F)`。

```lean
theorem stage_keep (L : InverseScaleLayout) (hn : L.wires.Nodup) (s t : BasisState)
    (hf : ∀ w,w∉L.stage.acc → w∉L.stage.history → w≠L.stage.flag → t w=s w)
    (r : List Wire) (hr : r ⊆ L.a++L.k++L.factor++L.stage.work++L.extraScratch)
```

证明了 `regValue r t` 等于 `regValue r s`。

```lean
theorem mont_prepare_step (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (N K C : Nat) (hN : N<q) (hC : C<q)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L N K 0 0 C false) (montPrepare L.stage L.factor (L.a.take 256) q) (Values L N K (montgomeryValue q C N 64%q) (montgomeryQuotient q C N 64) C (decide (montgomeryValue q C N 64<q)))`。

```lean
theorem mont_restore_step (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (N K C : Nat) (hN : N<q) (hC : C<q)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L N K (montgomeryValue q C N 64%q) (montgomeryQuotient q C N 64) C (decide (montgomeryValue q C N 64<q))) (montRestore L.stage L.factor (L.a.take 256) q) (Values L N K 0 0 C false)`。

```lean
theorem prepared_iff (L : InverseScaleLayout) (q K N : Nat) (s : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`L.Prepared q K N s ↔ Values L (montgomeryValue q (inverseScaleFactor q K) N 64%q) K N (montgomeryQuotient q (inverseScaleFactor q K) N 64) 0 (decide (montgomeryValue q (inverseScaleFactor q K) N 64<q)) s`。

```lean
theorem prepare_spec (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (N K : Nat) (hN : N<q)
```

证明了初始a=N，结果a为标准表示的N·2^{-K}；只保留显式历史，借用区全零。

```lean
theorem restore_spec (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (N K : Nat) (hN : N<q)
```

证明了使用段保持Prepared后，同一前向恢复门列还原N并清全部历史。

```lean
theorem lookup_subset (L : InverseScaleLayout) (hw : L.Widths) (q : Nat)
```

证明了 `ECDSAAdd.wires (L.lookup q)` 包含的线路都在 `L.wires.toFinset` 中。

```lean
theorem stage_subset (L : InverseScaleLayout)
```

证明了 `(L.factor.take 256++(L.a.take 256).take 256++L.stage.wires).toFinset` 包含的线路都在 `L.wires.toFinset` 中。

```lean
theorem exchange_subset (L : InverseScaleLayout) (hw : L.Widths)
```

证明了 `ECDSAAdd.wires L.exchange` 包含的线路都在 `L.wires.toFinset` 中。

```lean
theorem wires_subset (L : InverseScaleLayout) (hw : L.Widths) (q : Nat)
```

证明了新门列只触及此具体视图；最终求逆支持由旧core覆盖另行组合。

```lean
theorem prepare_frame (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (N K : Nat) (hN : N<q)
    (s : State) (m : List Bool)
    (h : ((regValue L.a s.basis=N ∧ regValue L.k s.basis=K) ∧ regValue L.live s.basis=0) ∧ regValue L.work s.basis=0)
    (w : Wire) (ha : w∉L.a) (hl : w∉L.live)
```

证明了准备只改变a与显式历史；其它位包括借用工作区初末相同。

```lean
theorem restore_frame (L : InverseScaleLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (N K : Nat) (hN : N<q)
    (s : State) (m : List Bool) (h : L.Prepared q K N s.basis)
    (w : Wire) (ha : w∉L.a) (hl : w∉L.live)
```

证明了使用段保留历史后，恢复只改变a与显式历史，其余线路保持。

```lean
theorem lookup_counts (L : InverseScaleLayout) (q : Nat) (hw : L.Widths)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (L.lookup q)=1022 ∧ measurementCount (L.lookup q)=1022`。

```lean
theorem exchange_counts (L : InverseScaleLayout) (hw : L.Widths)
```

证明了所列程序的门数或测量次数满足 `toffoliCount L.exchange=0 ∧ measurementCount L.exchange=0`。

```lean
theorem counts (L : InverseScaleLayout) (q : Nat) (hw : L.Widths)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (L.prepare q)=154372 ∧ measurementCount (L.prepare q)=154372) ∧ (toffoliCount (L.restore q)=154372 ∧ measurementCount (L.restore q)=154372)`。

## [InverseScaleBorrow.lean](InverseScaleBorrow.lean)

这个文件从求逆循环中划分缩放借用区和存活历史，证明布局长度、对应及互异性。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
def scaleBorrow (I : InverseLoopLayout) : List Wire
```

两次Kaliski循环之间可借用的零工作区，不含a或记录带。

```lean
def scaleLive (I : InverseLoopLayout) : List Wire
```

历史按y、zero低4位、carry排列；不使用已退出支持集的out。

```lean
def scaling (I : InverseLoopLayout) : InverseScaleLayout
```

§22的固定借用视图；getD的默认位仅使坏布局上的定义全域成立。

```lean
theorem scaleBorrow_length (I : InverseLoopLayout) (ht : I.temp.length=257)
    (ha : I.arithmetic.width=256)
```

证明了寄存器或线路列表的长度关系：`I.scaleBorrow.length=2315`。

```lean
theorem scaleLive_length (I : InverseLoopLayout) (hl : I.first.low.length=256)
```

证明了寄存器或线路列表的长度关系：`I.scaleLive.length=518`。

```lean
theorem scaling_widths (I : InverseLoopLayout) (ha : I.a.length=257)
    (ht : I.temp.length=257) (hm : I.arithmetic.width=256)
    (hl : I.first.low.length=256) (hk : I.first.counter.width=10)
```

证明了 `I.scaling.Widths`，即相应布局满足所需位宽条件。

```lean
theorem one_slice (B : List Wire) (fallback : Wire) (n : Nat) (hn : n<B.length)
```

证明了 `(B.drop n).take 1` 等于 `[B.getD n fallback]`。

```lean
theorem scaling_work (I : InverseLoopLayout) (ht : I.temp.length=257)
    (hm : I.arithmetic.width=256)
```

证明了 `I.scaling.work` 等于 `I.scaleBorrow.take 1054`。

```lean
theorem scaling_live (I : InverseLoopLayout) (hl : I.first.low.length=256)
```

证明了 `I.scaling.live` 等于 `I.scaleLive`。

```lean
theorem live_count (D : RoundDataLayout) (w : Wire)
```

证明了相应数值或范围条件：`(D.reg .y).count w+(D.reg .zero).count w+(D.reg .carry).count w≤D.wires.count w`。

```lean
theorem counter_count (L : AdderLayout) (w : Wire)
```

证明了相应数值或范围条件：`L.x.count w≤L.wires.count w`。

```lean
theorem scaling_nodup (I : InverseLoopLayout) (ha : I.wires.Nodup)
    (ht : I.temp.length=257) (hm : I.arithmetic.width=256) (hl : I.first.low.length=256)
```

证明了 `I.scaling.wires` 中的线路互不重复。

```lean
theorem scaleLive_subset (I : InverseLoopLayout)
```

证明了历史只借用原轮工作位，因而正轮结束的零断言足以初始化缩放。

## [InverseScaleState.lean](InverseScaleState.lean)

这个文件连接缩放前后的求逆寄存器状态，证明缩放与恢复时历史和其他字段的保持。

以下声明位于 `ECDSAAdd.Arithmetic.InverseLoopLayout` 命名空间。

```lean
theorem scaling_fields (I : InverseLoopLayout) (hl : I.first.low.length=256)
```

证明了缩放累加器复用中间态 y 寄存器与四根零工作位，缩放历史和标志复用中间态进位寄存器。

```lean
def scaledRoundValues (q : Nat) (z : KState) (N : Nat) : RoundField → Nat
```

缩放期间y保存N，carry保存约减商与借位；其余轮字段保持原值。

```lean
def ScaledRest (I : InverseLoopLayout) (q : Nat) (z : KState) (cs : List (Bool×Bool)) (N : Nat)
    (s : BasisState) : Prop
```

缩放历史只占y与carry，zero低4位因N<2^256仍为零。

```lean
theorem live_data (I : InverseLoopLayout) (hl : I.first.low.length=256)
```

证明了 `I.scaling.live` 包含的线路都在 `I.middle.data.wires` 中。

```lean
theorem data_not_a (I : InverseLoopLayout) (hn : I.wires.Nodup)
    {w : Wire} (h : w∈I.middle.data.wires)
```

证明了 `w` 不属于 `I.a`，因此这根线与该区域分离。

```lean
theorem data_phase (I : InverseLoopLayout) (hn : I.wires.Nodup)
```

证明了 `I.middle.data.wires` 与 `I.phaseWires` 没有共用线路。

```lean
theorem data_nodup (I : InverseLoopLayout) (hn : I.wires.Nodup)
```

证明了 `I.middle.data.wires` 中的线路互不重复。

```lean
theorem keep_field (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (s t : BasisState)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
    (f : RoundField) (hy : f≠.y) (hc : f≠.carry) (hz : f≠.zero)
```

证明了 `regValue (I.middle.data.reg f) t` 等于 `regValue (I.middle.data.reg f) s`。

```lean
theorem keep_zero_tail (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (s t : BasisState)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
```

证明了 `regValue ((I.middle.data.reg .zero).drop 4) t` 等于 `regValue ((I.middle.data.reg .zero).drop 4) s`。

```lean
theorem scaled_data (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (q : Nat) (z : KState) (N : Nat) (hN : N<2^256)
    (s t : BasisState) (h : RoundValues I.middle.data (roundDataValues z) s)
    (hp : I.scaling.Prepared q z.k N t)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundValues I.middle.data (scaledRoundValues q z N) t`。

```lean
theorem keep_flags (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (s t : BasisState)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
    {w : Wire} (hw : w∈I.records.flatMap RoundRecord.wires++[I.middle.done,I.middle.oddWork,I.middle.bothWork])
```

证明了 `t w` 等于 `s w`。

```lean
theorem phase_update (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (K A Z : Nat) (s t : BasisState)
    (h : InversePhase I K A s) (hz : regValue I.a t=Z)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
```

证明了按前提更新逆元值后，缩放阶段断言中的计数 K 保持不变，逆元值变为 Z。

```lean
theorem restored_data (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (q : Nat) (z : KState) (N : Nat)
    (s t : BasisState) (h : RoundValues I.middle.data (scaledRoundValues q z N) s)
    (hz : regValue I.scaling.live t=0)
    (he : ∀ w,w∉I.a → w∉I.scaling.live → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundValues I.middle.data (roundDataValues z) t`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def InverseScaledMiddle (L : InverseLoopLayout) (q : Nat) (z : KState)
    (cs : List (Bool×Bool)) (N : Nat) (s : BasisState) : Prop
```

使用逆元期间的完整边界：轮历史含N/约减商/借位，a保存规范缩放结果，B为空。

```lean
theorem InverseScaledMiddle.prepared (L : InverseLoopLayout)
    (hl : L.first.low.length=256) (ht : L.temp.length=257) (hm : L.arithmetic.width=256)
    (q : Nat) (z : KState) (cs : List (Bool×Bool)) (N : Nat) (s : BasisState)
    (h : InverseScaledMiddle L q z cs N s)
```

证明了操作后满足对应的寄存器状态或保持断言：`L.scaling.Prepared q z.k N s`。

```lean
theorem inverseScaling_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hl : L.first.low.length=256) (hw : L.first.counter.width=10)
    (ha : L.a.length=257) (ht : L.temp.length=257) (hm : L.arithmetic.width=256)
    (q : Nat) (hq : q%16=15) (hb : q<2^256) (z : KState) (cs : List (Bool×Bool))
    (N : Nat) (hN : N<q)
```

证明了将缩放模块接到Kaliski边界；完整历史以y=N和carry商/借位明确表示。

## [InverseSpec.lean](InverseSpec.lean)

这个文件将内部求逆结论接到外部寄存器，证明完整逆元的 XOR 输出和零输出规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem regValue_low_iff (lo hi : List Wire) (st : BasisState) (V : Nat) (hV : V<2^lo.length)
```

证明了规范值放在低段时，额外高段恰好为零。

```lean
theorem inverseValues_iff (L : InverseLayout) (X U V S O : Nat) (st : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`InverseValues L (inverseValues X U V S O) st ↔ regValue L.x st=X ∧ regValue L.inner.first.u st=U ∧ regValue L.vLow st=V ∧ regValue L.inner.first.s st=S ∧ regValue L.out st=O ∧ regValue L.rest st=0`。

```lean
theorem inverseReady_iff (L : InverseLayout) (hw : L.Widths) (X O : Nat)
    (hX0 : 0<X) (hX : X<2^256) (hO : O<2^256) (st : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`InverseValues L (inverseValues X p X 1 O) st ↔ (InverseInitial L.inner p X st ∧ regValue L.inner.out st=O) ∧ regValue L.x st=X`。

```lean
theorem inverseZero_iff (L : InverseLayout) (X O : Nat) (st : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`InverseValues L (inverseValues X 0 0 0 O) st ↔ (regValue L.x st=X ∧ regValue L.out st=O) ∧ regValue L.work st=0`。

```lean
theorem fieldInverse_xor_spec (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X O : Nat) (hX0 : 0<X) (hX : X<p)
```

证明了非零 secp256k1 输入的通用 XOR 输出形式，外部输入保留，全部内部线路清零。

```lean
theorem fieldInverse_spec (L : InverseLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X : Nat) (hX0 : 0<X) (hX : X<p)
```

证明了常用零输出求逆规格。

## [InverseTerminalConstants.lean](InverseTerminalConstants.lean)

这个文件利用 Kaliski 终态已知常量构造清理程序，并证明恢复及资源性质。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def terminalConstants (I : InverseLoopLayout) (q : Nat) : Program
```

终态u=1、s=q时清常量；同一无测量门列在逆轮前写回。

```lean
theorem terminalConstants_correct (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (q : Nat) (hq : q<2^256) (s : State) (m : List Bool)
```

证明了不触碰r、K、记录及其它工作位；此入口也描述相同门列的写回方向。

```lean
theorem terminalConstants_spec (I : InverseLoopLayout) (hn : I.wires.Nodup)
    (hl : I.first.low.length=256) (q : Nat) (hq : q<2^256)
```

证明了清除与写回u/s都不依赖r、历史或测量记录的取值。

```lean
theorem terminalConstants_resources (I : InverseLoopLayout) (q : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (terminalConstants I q)=0 ∧ measurementCount (terminalConstants I q)=0 ∧ wires (terminalConstants I q)⊆(I.middle.u++I.middle.s).toFinset`。

## [KaliskiLoop.lean](KaliskiLoop.lean)

这个文件定义带记录带的 Kaliski 正向循环和恢复循环，以及终态布局和分支历史。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure RoundRecord
```

每轮独占两根历史线路；数据与计数工作区逐轮复用。 `RoundRecord` 定义为 `swap`、`subtract` 各部分。

```lean
def RoundRecord.wires (r : RoundRecord) : List Wire
```

给出布局的全部线路，由 `[r.swap,r.subtract]` 组成。

以下声明位于 `ECDSAAdd.Arithmetic.KaliskiRoundLayout` 命名空间。

```lean
def withRecord (L : KaliskiRoundLayout) (r : RoundRecord) : KaliskiRoundLayout
```

让单轮布局使用指定记录中的交换位和减法位。

```lean
def sharedWires (L : KaliskiRoundLayout) : List Wire
```

给出该阶段的线路范围，由 `[L.done,L.oddWork,L.bothWork,L.compareCin]++L.data.wires++L.counter.wires` 组成。

```lean
def tapeWires (L : KaliskiRoundLayout) (rs : List RoundRecord) : List Wire
```

给出该阶段的线路范围，由 `rs.flatMap RoundRecord.wires++L.sharedWires` 组成。

```lean
theorem withRecord_perm (L : KaliskiRoundLayout) (r : RoundRecord)
```

证明了 `(L.withRecord r).wires` 与 `(r.wires++L.sharedWires)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem swapCounter_data (L : KaliskiRoundLayout)
```

证明了 `L.swapCounter.data` 等于 `L.data`。

```lean
theorem swapCounter_counter (L : KaliskiRoundLayout)
```

证明了 `L.swapCounter.counter` 等于 `L.counter.swapCounter`。

```lean
theorem shared_swap_perm (L : KaliskiRoundLayout)
```

证明了 `L.swapCounter.sharedWires` 与 `L.sharedWires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem withRecord_nodup (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup)
```

证明了 `(L.withRecord r).wires` 中的线路互不重复。

```lean
theorem tail_nodup (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup)
```

证明了 `(L.swapCounter.tapeWires rs)` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def kaliskiLoop (L : KaliskiRoundLayout) (i : Nat) : List RoundRecord → Program
```

固定门列按记录带长度展开；银行交替与 i 都由程序构造决定。

```lean
def kaliskiUnloop (L : KaliskiRoundLayout) (i : Nat) : List RoundRecord → Program
```

先恢复后面的轮，再以前向逆轮清除当前两位记录。

```lean
def loopEndLayout (L : KaliskiRoundLayout) : Nat → KaliskiRoundLayout
```

按固定轮数交替交换计数寄存器角色，得到循环结束时的布局视图。

```lean
def kaliskiCodes : Nat → KState → List (Bool×Bool)
```

按数学 Kaliski 迭代顺序列出每轮需要保存的分支编码。

```lean
def TapeValues : List RoundRecord → List (Bool×Bool) → BasisState → Prop
```

两位记录按轮保存精确布尔值，不由已更新数据重新猜测。

```lean
theorem TapeValues.congr (rs : List RoundRecord) (cs : List (Bool×Bool)) (s t : BasisState)
    (h : TapeValues rs cs s) (he : ∀ w, w∈rs.flatMap RoundRecord.wires → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`TapeValues rs cs t`。

## [KaliskiLoopProof.lean](KaliskiLoopProof.lean)

这个文件按轮组合单轮证明，得到整个 Kaliski 循环及恢复的状态结论。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem partition_nodup (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup)
```

证明了 `(r.wires++L.swapCounter.tapeWires rs)` 中的线路互不重复。

```lean
theorem record_rest_disjoint (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup)
```

证明了 `(rs.flatMap RoundRecord.wires)` 与 `(L.withRecord r).wires` 没有共用线路。

```lean
theorem step_uv (z : KState)
```

证明了相应数值或范围条件：`(kaliskiStep z).u≤z.u ∧ (kaliskiStep z).v≤z.v`。

```lean
theorem kaliskiLoop_correct (L : KaliskiRoundLayout) (rs : List RoundRecord) (i p a : Nat) (z : KState)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) (hd : 2≤L.data.width)
    (hlen : i+rs.length≤512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了固定长度正逆循环：每轮独占记录对，递归部分保留先前记录，逆向则全部清零。

## [KaliskiLoopResources.lean](KaliskiLoopResources.lean)

这个文件证明 Kaliski 循环的门数、测量数及实际线路支持和线路数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def KaliskiRoundLayout.usedSharedWires (L : KaliskiRoundLayout) : List Wire
```

给出该阶段的线路范围，由 `[L.done,L.oddWork,L.bothWork,L.compareCin]++L.data.usedWires++L.counter.wires` 组成。

```lean
def KaliskiRoundLayout.usedTapeWires (L : KaliskiRoundLayout) (rs : List RoundRecord) : List Wire
```

给出该阶段的线路范围，由 `rs.flatMap RoundRecord.wires++L.usedSharedWires` 组成。

```lean
theorem KaliskiRoundLayout.usedTapeWires_sublist (L : KaliskiRoundLayout) (rs : List RoundRecord)
```

证明了 `(L.usedTapeWires rs)` 是 `(L.tapeWires rs)` 的子列表，顺序与重复次数均兼容。

```lean
theorem usedRecord_perm (L : KaliskiRoundLayout) (r : RoundRecord)
```

证明了 `(L.withRecord r).usedWires` 与 `(r.wires++L.usedSharedWires)` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem usedShared_swap (L : KaliskiRoundLayout)
```

证明了 `L.swapCounter.usedSharedWires` 与 `L.usedSharedWires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem kaliskiLoop_counts (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (kaliskiLoop L i rs)=rs.length*(12*L.data.width+31) ∧ measurementCount (kaliskiLoop L i rs)=rs.length*(6*L.data.width+28) ∧ toffoliCount (kaliskiUnloop L i rs)=rs.length*(12*L.data.width+31) ∧ measurementCount (kaliskiUnloop L i rs)=rs.length*(6*L.data.width+28)`。

```lean
theorem kaliskiLoop_wires (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hw : L.counter.width=10) (hd : 2≤L.data.width)
```

证明了空循环没有线路；非空循环恰好使用共享布局和整个两位记录带。

```lean
theorem kaliskiLoop_qubits (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) (hd : 2≤L.data.width) (hne : rs≠[])
```

证明了所列程序的精确资源关系：`qubitCount (kaliskiLoop L i rs)=7*L.data.width+46+2*rs.length ∧ qubitCount (kaliskiUnloop L i rs)=7*L.data.width+46+2*rs.length`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [KaliskiLoopState.lean](KaliskiLoopState.lean)

这个文件连接循环边界与单轮状态断言，并证明记录带在正轮和恢复轮中的更新。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure LoopState (L : KaliskiRoundLayout) (z : KState) (st : BasisState) : Prop
```

第一阶段的共享状态；两位历史记录单独由 TapeValues 描述。 `LoopState` 定义为 `data`、`k`、`next`、`y`、`carry`、`active`、`done`、`odd`、`both`、`cin` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.LoopState` 命名空间。

```lean
theorem round_before (L : KaliskiRoundLayout) (r : RoundRecord) (z : KState) (S T : Bool)
    (st : BasisState) (h : LoopState L z st) (hs : st r.swap=S) (ht : st r.subtract=T)
```

证明了 `RoundState (L.withRecord r) z z.k 0 false (decide (z.v` 等于 `0)) S T st`。

```lean
theorem of_round_before (L : KaliskiRoundLayout) (r : RoundRecord) (z : KState) (S T : Bool)
    (st : BasisState) (h : RoundState (L.withRecord r) z z.k 0 false (decide (z.v=0)) S T st)
```

证明了操作后满足对应的寄存器状态或保持断言：`LoopState L z st`。

```lean
theorem round_after (L : KaliskiRoundLayout) (r : RoundRecord) (z : KState) (S T : Bool)
    (st : BasisState) (h : LoopState L.swapCounter z st) (hs : st r.swap=S) (ht : st r.subtract=T)
```

证明了 `RoundState (L.withRecord r) z 0 z.k false (decide (z.v` 等于 `0)) S T st`。

```lean
theorem of_round_after (L : KaliskiRoundLayout) (r : RoundRecord) (z : KState) (S T : Bool)
    (st : BasisState) (h : RoundState (L.withRecord r) z 0 z.k false (decide (z.v=0)) S T st)
```

证明了操作后满足对应的寄存器状态或保持断言：`LoopState L.swapCounter z st`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem kaliskiRound_tape (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) (hw : L.counter.width=10)
    (i p a : Nat) (z : KState) (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了一轮在共享状态与当前记录对上的接口；便于固定长度归纳。

```lean
theorem kaliskiUnround_tape (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) (hw : L.counter.width=10)
    (i p a : Nat) (z : KState) (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了单轮撤销恢复上一轮状态，并将该轮保存的交换与减法记录清零。

## [KaliskiRound.lean](KaliskiRound.lean)

这个文件定义 Kaliski 单轮布局、活动控制、记录和正反轮程序，并证明所用视图的安全性。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure KaliskiRoundLayout
```

单轮布局：数据、共享工作区、双银行计数器、两位记录与常数个控制工作位。 `KaliskiRoundLayout` 定义为 `low`、`high`、`cin`、`counterLow`、`counterHigh`、`active`、`compareCin`、`done`、`swap`、`subtract`、`oddWork`、`bothWork` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.KaliskiRoundLayout` 命名空间。

```lean
def data (L : KaliskiRoundLayout) : RoundDataLayout
```

取出`data` 对应的数据或线路，对应 `⟨L.low++[L.high],L.cin⟩`。

```lean
def counter (L : KaliskiRoundLayout) : AdderLayout
```

取出`counter` 对应的数据或线路，对应 `⟨L.counterLow++[L.counterHigh],L.active⟩`。

```lean
def comparator (L : KaliskiRoundLayout) : AdderLayout
```

更新后的 k 在 counter.out；比较借用旧的空银行，cin 单独保持为零。

```lean
def u (L : KaliskiRoundLayout) : List Wire
```

取出`u` 对应的数据或线路，对应 `L.data.u`。

```lean
def v (L : KaliskiRoundLayout) : List Wire
```

取出`v` 对应的数据或线路，对应 `L.data.v`。

```lean
def r (L : KaliskiRoundLayout) : List Wire
```

取出`r` 对应的数据或线路，对应 `L.data.r`。

```lean
def s (L : KaliskiRoundLayout) : List Wire
```

取出`s` 对应的数据或线路，对应 `L.data.s`。

```lean
def k (L : KaliskiRoundLayout) : List Wire
```

取出当前计数寄存器，对应 `L.counter.x`。

```lean
def kNext (L : KaliskiRoundLayout) : List Wire
```

取出下一计数寄存器，对应 `L.counter.out`。

```lean
def scratch (L : KaliskiRoundLayout) : List Wire
```

给出临时工作区，由 `L.data.work ++ L.counter.y ++ L.counter.carry ++ [L.active,L.compareCin,L.oddWork,L.bothWork]` 组成。

```lean
def wires (L : KaliskiRoundLayout) : List Wire
```

给出布局的全部线路，由 `[L.done,L.swap,L.subtract,L.oddWork,L.bothWork,L.compareCin] ++ L.data.wires ++ L.counter.wires` 组成。

```lean
def swapCounter (L : KaliskiRoundLayout) : KaliskiRoundLayout
```

下一轮仅交换计数器两份银行的角色；数据及算术工作区保持相同位置。

```lean
def controls (L : KaliskiRoundLayout) : List Wire
```

列出单轮 Kaliski 电路使用的七根控制与辅助标志线。

```lean
theorem data_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `L.data.wires` 中的线路互不重复。

```lean
theorem counter_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `L.counter.wires` 中的线路互不重复。

```lean
theorem controls_data_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.controls++L.data.wires)` 中的线路互不重复。

```lean
theorem control_not_data (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (c : Wire) (hc : c∈L.controls)
```

证明了 `c` 不属于 `L.data.wires`，因此这根线与该区域分离。

```lean
theorem comparator_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.active::L.comparator.wires)` 中的线路互不重复。

```lean
theorem comparator_fields (L : KaliskiRoundLayout)
```

证明了计数比较器的两个比较端口、辅助寄存器、进位线和位宽与单轮布局中的对应字段一致。

```lean
theorem data_reg_length (L : KaliskiRoundLayout) (f : RoundField)
```

证明了寄存器或线路列表的长度关系：`(L.data.reg f).length=L.low.length+1`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem regValue_headBit (r : List Wire) (hn : r≠[]) (s : BasisState)
```

证明了非空小端寄存器的最低位等于读值的奇偶位。

```lean
def recordRound (L : KaliskiRoundLayout) : Program
```

先保存奇偶条件，直接把受控比较 XOR 到记录位，再清条件；不生成差寄存器。

```lean
def loadActive (L : KaliskiRoundLayout) : Program
```

只翻转活动辅助位，既用于装入 !done，也用于恢复 done 后的清理。

```lean
def roundActiveXor (L : KaliskiRoundLayout) (i : Nat) : Program
```

通过比较计数和轮号，将活动性异或到活动标志。

```lean
def kaliskiRound (L : KaliskiRoundLayout) (i : Nat) : Program
```

终止轮先更新并计数，再改变 done；最后用 i<新 k 清理活动工作位。

```lean
def kaliskiUnround (L : KaliskiRoundLayout) (i : Nat) : Program
```

逆轮先由新 k 恢复活动位和旧 done，再恢复数据/计数，最后清两位记录。

## [KaliskiRoundProof.lean](KaliskiRoundProof.lean)

这个文件组合算术体、计数和状态标志，证明 Kaliski 单轮及恢复轮的完整状态更新。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem round_body_bounds (L : KaliskiRoundLayout) (p a : Nat) (z : KState)
    (hi : KInvariant p a z) (hp : p<2^L.low.length)
    (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length) (hr : z.r<2^L.data.width)
```

证明了轮主体的减法不下溢、加法和倍增不溢出，并且活动轮中待减半的值为偶数。

```lean
theorem step_counter (z : KState)
```

证明了 Kaliski 步骤仅在 v 非零时将计数 k 加一。

```lean
theorem step_done (z : KState)
```

证明了原完成标志与本轮新完成条件的异或，等于下一状态的 v 为零这一条件。

```lean
theorem kaliskiRound_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (hr : z.r<2^L.data.width)
```

证明了一轮完整正向规格：更新四份数据和计数，保存两位分支，恢复所有工作区。 范围条件来自 I1 的可达状态界；计数更新包含使 v 首次为零的终止轮。

```lean
theorem kaliskiUnround_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (hr : z.r<2^L.data.width)
```

证明了一轮完整逆向规格：由更新后 k 恢复活动性，清除保存的两位记录并恢复旧状态。

## [MaskedAdder.lean](MaskedAdder.lean)

这个文件通过双寄存器布局实现受控加减和旧数据清理，证明接口、保持和资源。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def maskedAdd (L : AdderLayout) (src : List Wire) (c : Wire) : Program
```

将受控来源临时复制进 y；算术与测量顺序不依赖控制值。

```lean
def maskedSub (L : AdderLayout) (src : List Wire) (c : Wire) : Program
```

受控装入减数，计算减法并清旧计数寄存器，最后清除临时掩码。

```lean
theorem AdderLayout.interface_perm (L : AdderLayout)
```

证明了 `(((L.x ++ L.y) ++ L.out) ++ (L.cin::L.carry))` 与 `L.wires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem AdderLayout.reg_subset (L : AdderLayout)
```

证明了加法器的 x、y、out、carry 寄存器均包含在其完整线路列表中。

```lean
theorem sub_wires (L : AdderLayout)
```

证明了程序实际触及的线路集合：`wires (sub L) = L.wires.toFinset`。

```lean
theorem add_wires (L : AdderLayout)
```

证明了 `wires (add L)` 包含的线路都在 `L.wires.toFinset` 中。

```lean
def MaskedValues (L : AdderLayout) (src : List Wire) (c : Wire)
    (X : Nat) (C : Bool) (A B O : Nat) (st : BasisState) : Prop
```

规定受控加减的输入、控制、两组计数寄存器及零工作区状态。

```lean
theorem mask_copy (L : AdderLayout) (src : List Wire) (c : Wire)
    (hnd : (c::(src++L.wires)).Nodup) (hlen : src.length = L.width)
    (X : Nat) (C : Bool) (A B O : Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (MaskedValues L src c X C A B O) (copyRegister (some c) src L.y) (MaskedValues L src c X C A (B ^^^ (if C then X else 0)) O)`。

```lean
theorem inside (L : AdderLayout) (src : List Wire) (c : Wire)
    (hnd : (c::(src++L.wires)).Nodup) (X : Nat) (C : Bool)
    (A B O A' B' O' : Nat) (p : Program) (hw : wires p ⊆ L.wires.toFinset)
    (hp : {{ L.x=A, L.y=B, L.cin=false, L.out=O, L.carry=0 }} p
      {{ L.x=A', L.y=B', L.cin=false, L.out=O', L.carry=0 }})
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (MaskedValues L src c X C A B O) p (MaskedValues L src c X C A' B' O')`。

```lean
theorem maskedAdd_spec (L : AdderLayout) (src : List Wire) (c : Wire)
    (hnd : (c::(src++L.wires)).Nodup) (hlen : src.length=L.width)
    (X A : Nat) (C : Bool)
```

证明了将受控加法结果移入空 out，清空旧 x，恢复来源、控制及全部工作位。

```lean
theorem modular_sub_sum (A B q : Nat) (ha : A<q) (hb : B<q)
```

证明了 `(((A+q-B)%q)+B)%q` 等于 `A`。

```lean
theorem maskedSub_spec (L : AdderLayout) (src : List Wire) (c : Wire)
    (hnd : (c::(src++L.wires)).Nodup) (hlen : src.length=L.width)
    (X A : Nat) (C : Bool)
```

证明了将受控减法结果移入空 out，清空旧 x，恢复来源、控制及全部工作位。

```lean
theorem maskedAdder_wires (L : AdderLayout) (src : List Wire) (c : Wire)
    (hlen : src.length=L.width) (hpos : 0<L.width)
```

证明了两种前向算术共用相同工作区；活动控制也计入真实线路集合。

```lean
theorem maskedAdder_resources (L : AdderLayout) (src : List Wire) (c : Wire)
    (hnd : (c::(src++L.wires)).Nodup) (hlen : src.length=L.width) (hpos : 0<L.width)
```

证明了所列程序的精确资源关系：`toffoliCount (maskedAdd L src c) = 4*L.width ∧ measurementCount (maskedAdd L src c) = 2*L.width ∧ qubitCount (maskedAdd L src c) = 5*L.width+2 ∧ toffoliCount (maskedSub L src c) = 4*L.width ∧ measurementCount (maskedSub L src c) = 2*L.width ∧ qubitCount (maskedSub L src c) = 5*L.width+2`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem AdderLayout.masked_frame (L : AdderLayout) (src : List Wire) (c : Wire)
    (s t : BasisState) (hsrc : regValue src t=regValue src s) (hc : t c=s c)
    (hy : regValue L.y t=regValue L.y s) (hcin : t L.cin=s L.cin)
    (hcarry : regValue L.carry t=regValue L.carry s)
    (he : ∀ w, w∉c::(src++L.wires) → t w=s w)
```

证明了将受控累加的寄存器保持结论提升为逐线保持，供单轮组合。

## [NegativeEven.lean](NegativeEven.lean)

这个文件利用正偶数范围实现取负与恢复，并证明结果、状态保持及资源。

以下声明位于 `ECDSAAdd.Arithmetic.ModInPlaceLayout` 命名空间。

```lean
def sourceUnary (L : ModInPlaceLayout) : ModUnaryLayout
```

半倍只借源a和现有scratch；原目标z在整个取负阶段保持。

```lean
theorem sourceUnary_target (L : ModInPlaceLayout) (n : Nat) (hw : L.Widths n)
```

证明了 `L.sourceUnary.z` 等于 `L.a`。

```lean
theorem sourceUnary_work (L : ModInPlaceLayout)
```

证明了 `L.sourceUnary.work` 等于 `L.work`。

```lean
theorem sourceUnary_widths (L : ModInPlaceLayout) (n : Nat) (hw : L.Widths n)
```

证明了 `L.sourceUnary.Widths n`，即相应布局满足所需位宽条件。

```lean
theorem sourceUnary_nodup (L : ModInPlaceLayout) (n : Nat) (hw : L.Widths n)
    (hn : L.wires.Nodup)
```

证明了 `L.sourceUnary.wires` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def negativeEven (L : ModInPlaceLayout) (q : Nat) : Program
```

正偶r先除2、取负、规范模加倍；不丢失约减分支。

```lean
def restoreNegativeEven (L : ModInPlaceLayout) (q : Nat) : Program
```

显式前向恢复；不逆转任何测量门。

```lean
theorem negativeEven_values (L : ModInPlaceLayout) (n q R : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hq : q<2^n) (ho : q%2=1)
    (hR : 0<R) (hb : R<2*q) (he : R%2=0) (base : BasisState)
    (hwork : regValue L.work base=0)
```

证明了取负程序将 R 变为模 q 的负值，恢复程序再得到 R；两者保持目标寄存器之外的基态位并恢复相位。

```lean
theorem negativeEven_correct (L : ModInPlaceLayout) (n q R : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hq : q<2^n) (ho : q%2=1)
    (hR : 0<R) (hb : R<2*q) (he : R%2=0) (s : State) (m : List Bool)
    (hwork : regValue L.work s.basis=0)
```

证明了两个方向均保持目标外的每根线，并对任意测量记录恢复相位。

```lean
theorem negativeEven_spec (L : ModInPlaceLayout) (n q R Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hq : q<2^n) (ho : q%2=1)
    (hR : 0<R) (hb : R<2*q) (he : R%2=0)
```

证明了供求逆组合的双向寄存器规格：原目标z保持，工作位全部清零。

```lean
theorem negativeEven_counts (L : ModInPlaceLayout) (n q : Nat)
    (hw : L.Widths n) (hn : 0<n)
```

证明了旋转无T/M；取负n、模加倍2n−1、模减半2n。

```lean
theorem negativeEven_wires (L : ModInPlaceLayout) (n q : Nat)
    (hw : L.Widths n) (hn : 0<n)
```

证明了与规格同一程序的精确支持；恢复多触及一个减半标志。

## [NegativeInit.lean](NegativeInit.lean)

这个文件构造求逆终态系数的规范化取负程序，并证明执行结果。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def negativeInit (L : ModLayout) (q : Nat) (src temp dst : List Wire) : Program
```

r 允许大于模数：先规范化，再取负；两次约减之间的临时值最终归零。

```lean
theorem negativeInit_correct (L : ModLayout) (q : Nat) (src temp dst : List Wire)
    (hnd : (src ++ temp ++ dst ++ L.wires).Nodup)
    (hs : src.length=L.width+1) (ht : temp.length=L.width+1) (hd : dst.length=L.width+1)
    (hq0 : 0<q) (hq : q<2^L.width) (s : State) (m : List Bool)
    (hx : regValue src s.basis < 2*q) (hT : regValue temp s.basis=0)
    (hW : regValue L.wires s.basis=0)
```

证明了先将源值对 q 约减，再把其模负值异或到目标，保持目标外基态位与相位。

## [NegativeInitResources.lean](NegativeInitResources.lean)

这个文件给出规范化取负的数值规格、线路支持及门数与测量数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem negativeInit_value (q R : Nat) (hq : 0<q)
```

证明了 `(q-(R%q))%q` 等于 `(-(R : ZMod q)).val`。

```lean
theorem negativeInit_wires (L : ModLayout) (q : Nat) (src temp dst : List Wire)
    (hs : src.length=L.width+1) (ht : temp.length=L.width+1) (hd : dst.length=L.width+1)
```

证明了程序实际触及的线路集合：`wires (negativeInit L q src temp dst)=(src++temp++dst++L.wires).toFinset`。

```lean
theorem negativeInit_counts (L : ModLayout) (q : Nat) (src temp dst : List Wire)
    (hnd : L.wires.Nodup) (hs : src.length=L.width+1)
    (ht : temp.length=L.width+1) (hd : dst.length=L.width+1)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (negativeInit L q src temp dst)=30*L.width+24 ∧ measurementCount (negativeInit L q src temp dst)=24*(L.width+1)`。

```lean
theorem negativeInit_spec (L : ModLayout) (q : Nat) (src temp dst : List Wire)
    (hnd : (src++temp++dst++L.wires).Nodup)
    (hs : src.length=L.width+1) (ht : temp.length=L.width+1) (hd : dst.length=L.width+1)
    (X O : Nat) (hq0 : 0<q) (hq : q<2^L.width) (hx : X<2*q)
```

证明了执行 `negativeInit L q src temp dst` 时，寄存器初态满足 `src=X, temp=0, dst=O, L.wires=0` 就能得到 `src=X, temp=0, dst=(O ^^^ (-(X : ZMod q)).val), L.wires=0`，并恢复相位。

## [OneBitRound.lean](OneBitRound.lean)

这个文件定义只保留一位分支记录的轮程序及交换标志重建，并证明重建步骤。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def recoverSwap (L : KaliskiRoundLayout) : Program
```

按更新后的 r 最低位异或交换分支，不改变活动位或数据。

```lean
def oneBitRound (L : KaliskiRoundLayout) (i : Nat) : Program
```

一位历史正轮，交换条件只在本轮内存活。

```lean
def oneBitUnround (L : KaliskiRoundLayout) (i : Nat) : Program
```

恢复交换条件后调用既有逆算术，最后清除减法历史。

```lean
theorem swap_update (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T S' : Bool) (s t : BasisState)
    (h : RoundState L z K N A D S T s) (hs : t L.swap=S')
    (he : ∀ w, w≠L.swap → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundState L z K N A D S' T t`。

```lean
theorem recoverSwap_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T : Bool)
```

证明了两门恢复器只更新 swap，覆盖任意记录位初值。

## [OneBitRoundProof.lean](OneBitRoundProof.lean)

这个文件证明一位记录正轮和恢复轮的完整状态关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem oneBitRound_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z) (hodd : p%2=1)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (hr : z.r<2^L.data.width)
```

证明了一轮完整正向规格：更新四份数据和计数，只保存减法分支，恢复所有工作区。 范围条件来自 I1 的可达状态界；计数更新包含使 v 首次为零的终止轮。

```lean
theorem oneBitUnround_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z) (hodd : p%2=1)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (hr : z.r<2^L.data.width)
```

证明了一轮完整逆向规格：由更新后 k 恢复活动性，重算交换条件并清除减法记录并恢复旧状态。

## [OneBitRoundResources.lean](OneBitRoundResources.lean)

这个文件证明一位记录轮的门数、测量数、支持范围及线路数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem recoverSwap_counts (L : KaliskiRoundLayout)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (recoverSwap L)=1 ∧ measurementCount (recoverSwap L)=0`。

```lean
theorem oneBitRound_counts (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i : Nat)
```

证明了共享临时位的擦除/恢复每方向只增加一个CCX。

```lean
theorem recoverSwap_wires_subset (L : KaliskiRoundLayout)
```

证明了 `wires (recoverSwap L)` 包含的线路都在 `L.usedWires.toFinset` 中。

```lean
theorem oneBitRound_wires (L : KaliskiRoundLayout) (hw : L.counter.width=10)
    (hd : 2≤L.data.width) (i : Nat)
```

证明了单轮精确支持不变；线数收益由循环复用同一交换临时位获得。

```lean
theorem oneBitRound_preserves (L : KaliskiRoundLayout) (hw : L.counter.width=10)
    (hd : 2≤L.data.width) (i : Nat) (s : State) (m : List Bool) (q : Wire)
    (hq : q∉L.usedWires)
```

证明了一位轮计算及其撤销都保持指定外部线路 q 的值。

```lean
theorem oneBitRound_qubits (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (hd : 2≤L.data.width) (i : Nat)
```

证明了所列程序的精确资源关系：`qubitCount (oneBitRound L i)=7*L.data.width+48 ∧ qubitCount (oneBitUnround L i)=7*L.data.width+48`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [OneBitRoundSpec.lean](OneBitRoundSpec.lean)

这个文件将一位记录轮的内部状态结论写成公开程序规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem oneBitRound_spec (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z) (hodd : p%2=1)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了公开正轮规格：更新四份数据、计数与减法记录，交换临时位和共享工作区归零。

```lean
theorem oneBitUnround_spec (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z) (hodd : p%2=1)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了公开逆轮规格：恢复旧数据/计数/done，清除减法历史和全部工作区。

## [RecordRound.lean](RecordRound.lean)

这个文件证明 Kaliski 分支比较与记录程序的结果、非目标保持及布局前提。

以下声明位于 `ECDSAAdd.Arithmetic.KaliskiRoundLayout` 命名空间。

```lean
theorem head_mem (L : KaliskiRoundLayout) (f : RoundField)
```

证明了 `(L.data.reg f).head!` 属于 `L.data.reg f`。

```lean
theorem record_compare_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了比较所用子视图从全局互异条件导出。

```lean
theorem record_controls_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `[L.active,L.u.head!,L.v.head!,L.swap,L.subtract,L.oddWork,L.bothWork]` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem RoundFrame.write_external (L : RoundDataLayout) (v : RoundField→Nat)
    (base st : BasisState) (c : Wire) (b : Bool) (hc : c∉L.wires)
    (h : RoundFrame L v base st)
```

证明了外部记录位更新后，数据布局与其余外部状态仍由同一 frame 精确描述。

```lean
theorem recordRound_correct (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (s : State) (m : List Bool) (ho : s.basis L.oddWork=false) (hb : s.basis L.bothWork=false)
    (hcin : s.basis L.cin=false) (hcarry : ∀ w ∈ L.data.reg .carry, s.basis w=false)
```

证明了只更新两个记录位，比较器恢复数据和进位；条件位在输入恢复后清零。

```lean
theorem recordRound_preserves (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (s : State) (m : List Bool) (ho : s.basis L.oddWork=false) (hb : s.basis L.bothWork=false)
    (hcin : s.basis L.cin=false) (hcarry : ∀ w ∈ L.data.reg .carry, s.basis w=false)
    (w : Wire) (hs : w≠L.swap) (hd : w≠L.subtract)
```

证明了记录输出之外逐线保持，包括初值任意的 y/out。

```lean
theorem recordRound_spec (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (U V : Nat) (A S D : Bool)
```

证明了任意旧记录的 XOR 契约，无有符号差范围前提；工作位恢复为零。

```lean
def recordState (L : KaliskiRoundLayout) (z : KState) (base : BasisState) : BasisState
```

XOR 两位记录；同一个函数用于初次记录与恢复旧数据后的清理。

```lean
theorem recordRound_frame (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (base : BasisState)
    (ha : base L.active=decide (z.v≠0))
    (ho : base L.oddWork=false) (hb : base L.bothWork=false)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L.data (roundDataValues z) base) (recordRound L) (RoundFrame L.data (roundDataValues z) (recordState L z base))`。

## [RoundBody.lean](RoundBody.lean)

这个文件定义 Kaliski 单轮的算术体与恢复算术体，并证明寄存器更新和控制保持。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def roundDataValues (z : KState) : RoundField → Nat
```

数据寄存器承载 u/v/r/s，其他字段均为本轮清零的工作区；k 由独立计数器处理。

```lean
theorem data_updates (z : KState) (X : Nat)
```

证明了更新数值映射中的 u、r 或 s，等价于先更新 Kaliski 状态中的对应字段再读取数值映射。

```lean
def swapDataPairs (L : RoundDataLayout) (c : Wire) : Program
```

按控制位同时交换 u/v 与 r/s 两对数据寄存器。

```lean
theorem swap_pairs_frame (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (z : KState) (base : BasisState)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L (roundDataValues z) base) (swapDataPairs L c) (RoundFrame L (roundDataValues (kaliskiSwap (base c) z)) base)`。

```lean
def kaliskiBodyProgram (L : RoundDataLayout) (active swap subtract : Wire) : Program
```

四分支统一为交换、减/加、移位和交换回来；控制值不改变门或测量的顺序。

```lean
def kaliskiUnbodyProgram (L : RoundDataLayout) (active swap subtract : Wire) : Program
```

逆体使用前向加减与反向交换网络；不逆序执行任何测量指令。

```lean
theorem control_nodup (L : RoundDataLayout) (cs : List Wire)
    (hnd : (cs++L.wires).Nodup) (c : Wire) (hc : c∈cs)
```

证明了 `(c::L.wires)` 中的线路互不重复。

```lean
theorem kaliskiBodyProgram_frame (L : RoundDataLayout) (active swap subtract : Wire)
    (hnd : ([active,swap,subtract]++L.wires).Nodup) (hpos : 0<L.width)
    (z : KState) (base : BasisState)
    (hU : (kaliskiSwap (base swap) z).u<2^L.width)
    (hsub : (if base subtract then (kaliskiSwap (base swap) z).v else 0)≤(kaliskiSwap (base swap) z).u)
    (hR : (kaliskiSwap (base swap) z).r+(if base subtract then (kaliskiSwap (base swap) z).s else 0)<2^L.width)
    (heven : base active=true → ((kaliskiSwap (base swap) z).u-
      (if base subtract then (kaliskiSwap (base swap) z).v else 0))%2=0)
    (hfit : base active=true → 2*(kaliskiSwap (base swap) z).s<2^L.width)
```

证明了统一正体的布局级证明；范围条件正好来自 I1 的整数不变量。

```lean
theorem kaliskiUnbodyProgram_frame (L : RoundDataLayout) (active swap subtract : Wire)
    (hnd : ([active,swap,subtract]++L.wires).Nodup) (hpos : 0<L.width)
    (z : KState) (base : BasisState)
    (hU : (kaliskiSwap (base swap) z).u<2^L.width)
    (hsub : (if base subtract then (kaliskiSwap (base swap) z).v else 0)≤(kaliskiSwap (base swap) z).u)
    (hR : (kaliskiSwap (base swap) z).r+(if base subtract then (kaliskiSwap (base swap) z).s else 0)<2^L.width)
    (heven : base active=true → ((kaliskiSwap (base swap) z).u-
      (if base subtract then (kaliskiSwap (base swap) z).v else 0))%2=0)
```

证明了对应逆体恢复正体前的四份数据与工作区，始终读保存的分支位。

## [RoundControls.lean](RoundControls.lean)

这个文件证明单轮活动性、完成标志和计数比较的状态更新。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem counter_regs_not_active (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `L.active` 不属于 `L.k++L.kNext++L.counter.y++L.counter.carry`，因此这根线与该区域分离。

```lean
theorem flags_update (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T A' D' : Bool) (s t : BasisState)
    (h : RoundState L z K N A D S T s) (ha : t L.active=A') (hd : t L.done=D')
    (he : ∀ w, w≠L.active → w≠L.done → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundState L z K N A' D' S T t`。

```lean
theorem loadActive_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundState L z K N A D S T) (loadActive L) (RoundState L z K N (A ^^ !D) D S T)`。

```lean
theorem KaliskiRoundLayout.zero_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.active::L.done::(L.data.zeroBits .v).flatMap ZeroBit.wires)` 中的线路互不重复。

```lean
theorem zeroDone_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T : Bool)
```

证明了 `Triple (RoundState L z K N A D S T) (zeroControlled L.active L.done (L.data.zeroBits .v)) (RoundState L z K N A (D ^^ (A && decide (z.v` 等于 `0))) S T)`。

```lean
theorem roundActiveXor_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (z : KState) (K i : Nat) (hi : i<512) (A D S T : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundState L z 0 K A D S T) (roundActiveXor L i) (RoundState L z 0 K (A ^^ decide (i < K)) D S T)`。

## [RoundFrame.lean](RoundFrame.lean)

这个文件定义单轮数据保持关系，并证明移位、交换、加减和复制如何更新指定寄存器。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def RoundFrame (L : RoundDataLayout) (v : RoundField → Nat) (base : BasisState)
    (st : BasisState) : Prop
```

组合轮内操作时同时保留整个布局外部的状态，而非只列出少数控制位。

```lean
def inplaceArithmetic (L : RoundDataLayout) (f g : RoundField) (c : Wire) (negative : Bool) : Program
```

复用原地受控加减，y和低位进位链清零，out不再被触及。

以下声明位于 `ECDSAAdd.Arithmetic.RoundFrame` 命名空间。

```lean
theorem lift_one (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f : RoundField) (X : Nat) (p : Program)
    (hp : Triple (RoundFrame L v base) p (fun st => regValue (L.reg f) st=X))
    (he : ∀ (s : State) (m : List Bool), ∀ w, w∉L.reg f → (run p m s).basis w=s.basis w)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) p (RoundFrame L (Function.update v f X) base)`。

```lean
theorem shift_right (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (v : RoundField → Nat) (base : BasisState) (f : RoundField)
    (heven : base c=true → v f%2=0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) (shiftRight c (L.reg f)) (RoundFrame L (Function.update v f (if base c then v f/2 else v f)) base)`。

```lean
theorem shift_left (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (v : RoundField → Nat) (base : BasisState) (f : RoundField)
    (hfit : base c=true → 2*v f<2^L.width)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) (shiftLeft c (L.reg f)) (RoundFrame L (Function.update v f (if base c then 2*v f else v f)) base)`。

```lean
theorem lift_two (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f g : RoundField) (X Y : Nat) (p : Program)
    (hp : Triple (RoundFrame L v base) p (fun st => regValue (L.reg f) st=X ∧ regValue (L.reg g) st=Y))
    (he : ∀ (s : State) (m : List Bool), RoundFrame L v base s.basis →
      ∀ w, w∉L.reg f → w∉L.reg g → (run p m s).basis w=s.basis w)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) p (RoundFrame L (Function.update (Function.update v f X) g Y) base)`。

```lean
theorem swap (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (v : RoundField → Nat) (base : BasisState) (f g : RoundField) (hne : f≠g)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) (swapRegisters c (L.reg f) (L.reg g)) (RoundFrame L (Function.update (Function.update v f (if base c then v g else v f)) g (if base c then v f else v g)) base)`。

```lean
theorem inplace (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (hpos : 0<L.width) (v : RoundField → Nat) (base : BasisState)
    (f g : RoundField) (hf : RoundDataLayout.DataField f) (hg : RoundDataLayout.DataField g) (hne : f≠g)
    (hy : v .y=0) (hcarry : v .carry=0) (negative : Bool)
```

证明了受控原地算术只更新字段 f：按控制值加上或减去字段 g，并对 2^width 取模，其他字段及外围状态保持不变。

```lean
theorem copy (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f g : RoundField) (hne : f≠g)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) (copyRegister none (L.reg f) (L.reg g)) (RoundFrame L (Function.update v g (v g ^^^ v f)) base)`。

```lean
theorem subtract (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f : RoundField) (hf : RoundDataLayout.DataField f) (hcarry : v .carry=0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundFrame L v base) (sub (L.adder f)) (RoundFrame L (Function.update v .out (v .out ^^^ ((v f+2^L.width-v .y)%2^L.width))) base)`。

## [RoundLayout.lean](RoundLayout.lean)

这个文件定义 Kaliski 数据字段和逐位布局，连接加法、移位及零检测视图。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
inductive RoundField
```

四份 EEA 数据与一份共用算术/零检测工作区。 包括 `u`、`v`、`r`、`s`、`y`、`out`、`carry`、`zero`。

```lean
structure RoundBit
```

Kaliski 轮数据的逐位布局 `RoundBit` 定义为四个数据位 `u`、`v`、`r`、`s`，以及算术和零检测工作位 `y`、`out`、`carry`、`zero`。

```lean
def RoundBit.get (b : RoundBit) : RoundField → Wire
```

按字段标识选择对应的位或寄存器。

```lean
def RoundBit.wires (b : RoundBit) : List Wire
```

给出布局的全部线路，由 `[b.u,b.v,b.r,b.s,b.y,b.out,b.carry,b.zero]` 组成。

```lean
structure RoundDataLayout
```

Kaliski 轮数据布局 `RoundDataLayout` 定义为逐位布局列表 `bits` 和输入进位线 `cin` 两部分。

以下声明位于 `ECDSAAdd.Arithmetic.RoundDataLayout` 命名空间。

```lean
def width (L : RoundDataLayout) : Nat
```

取出位宽，对应 `L.bits.length`。

```lean
def reg (L : RoundDataLayout) (f : RoundField) : List Wire
```

按字段标识选择对应的位或寄存器。

```lean
def u (L : RoundDataLayout) : List Wire
```

取出`u` 对应的数据或线路，对应 `L.reg .u`。

```lean
def v (L : RoundDataLayout) : List Wire
```

取出`v` 对应的数据或线路，对应 `L.reg .v`。

```lean
def r (L : RoundDataLayout) : List Wire
```

取出`r` 对应的数据或线路，对应 `L.reg .r`。

```lean
def s (L : RoundDataLayout) : List Wire
```

取出`s` 对应的数据或线路，对应 `L.reg .s`。

```lean
def work (L : RoundDataLayout) : List Wire
```

给出工作区，由 `L.cin :: (L.reg .y ++ L.reg .out ++ L.reg .carry ++ L.reg .zero)` 组成。

```lean
def wires (L : RoundDataLayout) : List Wire
```

给出布局的全部线路，由 `L.cin :: L.bits.flatMap RoundBit.wires` 组成。

```lean
def adder (L : RoundDataLayout) (f : RoundField) : AdderLayout
```

只更换加法器的数据来源，y/out/carry 始终是同一组物理工作线。

```lean
def zeroBits (L : RoundDataLayout) (f : RoundField) : List ZeroBit
```

把所选数据字段与各位的零检测工作线配对，构造零检测布局。

```lean
theorem reg_length (L : RoundDataLayout) (f : RoundField)
```

证明了寄存器或线路列表的长度关系：`(L.reg f).length=L.width`。

```lean
theorem reg_mem (L : RoundDataLayout) (f : RoundField) {w : Wire} (h : w∈L.reg f)
```

证明了 `w` 属于 `L.wires`。

```lean
theorem reg_count (L : RoundDataLayout) (f : RoundField) (w : Wire)
```

证明了相应数值或范围条件：`(L.reg f).count w ≤ L.wires.count w`。

```lean
theorem pair_count (L : RoundDataLayout) (f g : RoundField) (hne : f≠g) (w : Wire)
```

证明了相应数值或范围条件：`(L.reg f).count w + (L.reg g).count w ≤ L.wires.count w`。

```lean
theorem reg_nodup (L : RoundDataLayout) (hnd : L.wires.Nodup) (f : RoundField)
```

证明了 `(L.reg f)` 中的线路互不重复。

```lean
theorem reg_disjoint (L : RoundDataLayout) (hnd : L.wires.Nodup) (f g : RoundField) (hne : f≠g)
```

证明了 `(L.reg f)` 与 `(L.reg g)` 没有共用线路。

```lean
theorem cin_not_mem (L : RoundDataLayout) (hnd : L.wires.Nodup) (f : RoundField)
```

证明了 `L.cin` 不属于 `L.reg f`，因此这根线与该区域分离。

```lean
theorem adder_fields (L : RoundDataLayout) (f : RoundField)
```

证明了加法器视图的输入来自所选字段，其余端口、进位线和位宽与父布局对应字段一致。

```lean
def DataField (f : RoundField) : Prop
```

算术目标只能是四份数据之一，不能与临时寄存器重叠。

```lean
theorem adder_count (L : RoundDataLayout) (f : RoundField) (hf : DataField f) (w : Wire)
```

证明了相应数值或范围条件：`(L.adder f).wires.count w ≤ L.wires.count w`。

```lean
theorem adder_nodup (L : RoundDataLayout) (hnd : L.wires.Nodup) (f : RoundField) (hf : DataField f)
```

证明了 `(L.adder f).wires` 中的线路互不重复。

```lean
theorem source_adder_count (L : RoundDataLayout) (f g : RoundField)
    (hf : DataField f) (hg : DataField g) (hne : f≠g) (w : Wire)
```

证明了相应数值或范围条件：`(L.reg g ++ (L.adder f).wires).count w ≤ L.wires.count w`。

```lean
theorem source_adder_nodup (L : RoundDataLayout) (hnd : L.wires.Nodup) (f g : RoundField)
    (hf : DataField f) (hg : DataField g) (hne : f≠g)
```

证明了 `(L.reg g ++ (L.adder f).wires)` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def RoundValues (L : RoundDataLayout) (v : RoundField → Nat) (st : BasisState) : Prop
```

寄存器值表用于组合局部更新；cin 始终是零工作位。

```lean
theorem RoundValues.update (L : RoundDataLayout) (hnd : L.wires.Nodup)
    (v : RoundField → Nat) (f : RoundField) (X : Nat) (s t : BasisState)
    (hv : RoundValues L v s) (he : ∀ w, w∉L.reg f → t w=s w)
    (hx : regValue (L.reg f) t=X)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundValues L (Function.update v f X) t`。

```lean
theorem RoundValues.update_two (L : RoundDataLayout) (hnd : L.wires.Nodup)
    (v : RoundField → Nat) (f g : RoundField) (X Y : Nat) (s t : BasisState)
    (hv : RoundValues L v s) (he : ∀ w, w∉L.reg f → w∉L.reg g → t w=s w)
    (hx : regValue (L.reg f) t=X) (hy : regValue (L.reg g) t=Y)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundValues L (Function.update (Function.update v f X) g Y) t`。

## [RoundResources.lean](RoundResources.lean)

这个文件证明 Kaliski 单轮各段及完整正反轮的 Toffoli 和测量计数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem swap_counts (c : Wire) (a b : List Wire) (hlen : a.length=b.length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (swapRegisters c a b)=a.length ∧ measurementCount (swapRegisters c a b)=0 ∧ toffoliCount (exchangeRegisters a b)=0 ∧ measurementCount (exchangeRegisters a b)=0`。

```lean
theorem inplace_counts (L : RoundDataLayout) (f g : RoundField) (c : Wire)
    (neg : Bool) (hw : 0<L.width)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (inplaceArithmetic L f g c neg)=2*L.width-1 ∧ measurementCount (inplaceArithmetic L f g c neg)=2*L.width-1`。

```lean
theorem body_counts (L : RoundDataLayout) (a sw su : Wire) (hw : 0<L.width)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (kaliskiBodyProgram L a sw su)=10*L.width-4 ∧ measurementCount (kaliskiBodyProgram L a sw su)=4*L.width-2 ∧ toffoliCount (kaliskiUnbodyProgram L a sw su)=10*L.width-4 ∧ measurementCount (kaliskiUnbodyProgram L a sw su)=4*L.width-2`。

```lean
theorem recordRound_counts (L : KaliskiRoundLayout)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (recordRound L)=L.data.width+5 ∧ measurementCount (recordRound L)=L.data.width`。

```lean
theorem kaliskiRound_counts (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (hw : L.counter.width=10) (i : Nat)
```

证明了正逆轮使用相同次数的 CCX 与测量；每轮复用数据宽度 w 的算术工作区。

## [RoundSpec.lean](RoundSpec.lean)

这个文件将 Kaliski 单轮的完整状态结论整理为前后寄存器规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem scratch_zero_iff (L : KaliskiRoundLayout) (st : BasisState)
```

证明了整个临时工作区为零，等价于数据及计数辅助寄存器、进位位和各临时控制标志分别为零。

```lean
theorem roundState_iff (L : KaliskiRoundLayout) (z : KState) (K N : Nat) (D S T : Bool) (st : BasisState)
```

证明了轮状态断言等价于逐项约束 u、v、r、s、两个计数寄存器、完成与分支标志，并要求临时工作区为零。

```lean
theorem kaliskiRound_spec (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了公开正轮规格：四份数据、计数与两位记录一并更新，共享工作区归零。

```lean
theorem kaliskiUnround_spec (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
```

证明了公开逆轮规格：恢复旧数据/计数/done，清除两位历史记录和全部工作区。

```lean
theorem kaliskiRound_257_resources (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (hd : L.data.width=257) (i : Nat)
```

证明了secp256k1 使用 257 位数据/工作寄存器；这里仅计一轮，不是完整逆元成本。

## [RoundState.lean](RoundState.lean)

这个文件定义 Kaliski 单轮的寄存器状态，并证明局部操作后的状态保持和重组。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure RoundAuxValues (L : KaliskiRoundLayout) (K N : Nat) (A D S T : Bool)
    (st : BasisState) : Prop
```

数据布局外的计数器与控制位；四个工作项始终为零。 `RoundAuxValues` 定义为 `k`、`next`、`y`、`carry`、`active`、`done`、`swap`、`subtract`、`odd`、`both`、`cin` 各部分。

```lean
def RoundState (L : KaliskiRoundLayout) (z : KState) (K N : Nat) (A D S T : Bool)
    (st : BasisState) : Prop
```

完整单轮断言，区分计数器的两份物理银行与记录位。

以下声明位于 `ECDSAAdd.Arithmetic.KaliskiRoundLayout` 命名空间。

```lean
theorem counter_not_data (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (w : Wire) (hw : w∈L.counter.wires)
```

证明了 `w` 不属于 `L.data.wires`，因此这根线与该区域分离。

```lean
theorem controls_counter_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了 `([L.done,L.swap,L.subtract,L.oddWork,L.bothWork,L.compareCin]++L.counter.wires)` 中的线路互不重复。

```lean
theorem control_not_counter (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (c : Wire)
    (hc : c∈[L.done,L.swap,L.subtract,L.oddWork,L.bothWork,L.compareCin])
```

证明了 `c` 不属于 `L.counter.wires`，因此这根线与该区域分离。

以下声明位于 `ECDSAAdd.Arithmetic.RoundAuxValues` 命名空间。

```lean
theorem congr (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (K N : Nat) (A D S T : Bool)
    (s t : BasisState) (h : RoundAuxValues L K N A D S T s)
    (he : ∀ w, w∉L.data.wires → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundAuxValues L K N A D S T t`。

```lean
theorem record (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (z : KState)
    (K N : Nat) (A D S T : Bool) (st : BasisState) (h : RoundAuxValues L K N A D S T st)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundAuxValues L K N A D (S ^^ (kaliskiCode z).1) (T ^^ (kaliskiCode z).2) (recordState L z st)`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem recordRound_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (z : KState)
    (K N : Nat) (D S T : Bool)
```

证明了记录前后的完整单轮状态，允许任意旧记录以支持逆轮清理。

```lean
theorem kaliskiBodyProgram_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T : Bool)
    (hU : (kaliskiSwap (S) z).u<2^L.data.width)
    (hsub : (if T then (kaliskiSwap (S) z).v else 0)≤(kaliskiSwap (S) z).u)
    (hR : (kaliskiSwap (S) z).r+(if T then (kaliskiSwap (S) z).s else 0)<2^L.data.width)
    (heven : A=true → ((kaliskiSwap (S) z).u-
      (if T then (kaliskiSwap (S) z).v else 0))%2=0)
    (hfit : A=true → 2*(kaliskiSwap (S) z).s<2^L.data.width)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundState L (z) K N A D S T) (kaliskiBodyProgram L.data L.active L.swap L.subtract) (RoundState L (kaliskiBody A (S,T) z) K N A D S T)`。

```lean
theorem kaliskiUnbodyProgram_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N : Nat) (A D S T : Bool)
    (hU : (kaliskiSwap (S) z).u<2^L.data.width)
    (hsub : (if T then (kaliskiSwap (S) z).v else 0)≤(kaliskiSwap (S) z).u)
    (hR : (kaliskiSwap (S) z).r+(if T then (kaliskiSwap (S) z).s else 0)<2^L.data.width)
    (heven : A=true → ((kaliskiSwap (S) z).u-
      (if T then (kaliskiSwap (S) z).v else 0))%2=0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundState L (kaliskiBody A (S,T) z) K N A D S T) (kaliskiUnbodyProgram L.data L.active L.swap L.subtract) (RoundState L (z) K N A D S T)`。

```lean
theorem counter_update (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (z : KState) (K N K' N' : Nat) (A D S T : Bool) (s t : BasisState)
    (h : RoundState L z K N A D S T s)
    (hk : regValue L.k t=K') (hn : regValue L.kNext t=N')
    (hy : regValue L.counter.y t=0) (hcarry : regValue L.counter.carry t=0)
    (ha : t L.active=A) (he : ∀ w, w∉L.counter.wires → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`RoundState L z K' N' A D S T t`。

```lean
theorem counterInc_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (hw : L.counter.width=10)
    (z : KState) (K : Nat) (A D S T : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundState L z K 0 A D S T) (counterInc L.counter) (RoundState L z 0 ((K+A.toNat)%1024) A D S T)`。

```lean
theorem counterDec_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (hw : L.counter.width=10)
    (z : KState) (K : Nat) (A D S T : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (RoundState L z 0 K A D S T) (counterDec L.counter.swapCounter) (RoundState L z ((K+1024-A.toNat)%1024) 0 A D S T)`。

## [RoundWires.lean](RoundWires.lean)

这个文件确定单轮实际使用的线路，并证明算术体、正反轮的支持和线路数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def RoundBit.usedWires (b : RoundBit) : List Wire
```

实际接线不含旧out银行；分配布局仍保留原编号。

```lean
def RoundDataLayout.usedWires (L : RoundDataLayout) : List Wire
```

给出实际使用的线路，由 `L.cin :: L.bits.flatMap RoundBit.usedWires` 组成。

```lean
def KaliskiRoundLayout.usedWires (L : KaliskiRoundLayout) : List Wire
```

给出实际使用的线路，由 `[L.done,L.swap,L.subtract,L.oddWork,L.bothWork,L.compareCin] ++ L.data.usedWires ++ L.counter.wires` 组成。

```lean
theorem RoundDataLayout.usedWires_sublist (L : RoundDataLayout)
```

证明了 `L.usedWires` 是 `L.wires` 的子列表，顺序与重复次数均兼容。

```lean
theorem RoundDataLayout.reg_used_mem (L : RoundDataLayout) (f : RoundField) (hf : f≠.out)
    {w : Wire} (hw : w∈L.reg f)
```

证明了 `w` 属于 `L.usedWires`。

```lean
theorem KaliskiRoundLayout.usedWires_sublist (L : KaliskiRoundLayout)
```

证明了 `L.usedWires` 是 `L.wires` 的子列表，顺序与重复次数均兼容。

```lean
theorem swap_wires (c : Wire) (a b : List Wire) (hlen : a.length=b.length) (hpos : 0<a.length)
```

证明了程序实际触及的线路集合：`wires (swapRegisters c a b)=(c::(a++b)).toFinset ∧ wires (exchangeRegisters a b)=(a++b).toFinset`。

```lean
theorem inplace_wires (L : RoundDataLayout) (f g : RoundField) (c : Wire) (neg : Bool)
    (hw : 0<L.width)
```

证明了程序实际触及的线路集合：`wires (inplaceArithmetic L f g c neg)= (c::L.cin::(L.reg g++L.reg .y++L.reg f++(L.reg .carry).take (L.width-1))).toFinset`。

```lean
def bodyWires (L : RoundDataLayout) (a sw su : Wire) : Finset Wire
```

给出该阶段的线路范围，由 `([a,sw,su,L.cin]++L.u++L.v++L.r++L.s++L.reg .y++(L.reg .carry).take (L.width-1)).toFinset` 组成。

```lean
theorem body_wires (L : RoundDataLayout) (a sw su : Wire) (hw : 2≤L.width)
```

证明了程序实际触及的线路集合：`wires (kaliskiBodyProgram L a sw su)=bodyWires L a sw su ∧ wires (kaliskiUnbodyProgram L a sw su)=bodyWires L a sw su`。

```lean
theorem data_interface (L : RoundDataLayout)
```

证明了 `L.usedWires.toFinset` 等于 `(L.cin::(L.u++L.v++L.r++L.s++L.reg .y++L.reg .carry++L.reg .zero)).toFinset`。

```lean
theorem zero_interface (L : RoundDataLayout)
```

证明了 `((L.zeroBits .v).flatMap ZeroBit.wires).toFinset` 等于 `(L.v++L.reg .zero).toFinset`。

```lean
theorem recordRound_wires (L : KaliskiRoundLayout)
```

证明了记录段只接触两份输入、进位链及六个控制/记录位。

```lean
theorem recordRound_qubits (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
```

证明了所列程序的精确资源关系：`qubitCount (recordRound L)=3*L.data.width+6`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem activity_wires (L : KaliskiRoundLayout) (i : Nat)
```

证明了程序实际触及的线路集合：`wires (roundActiveXor L i)=(L.active::L.compareCin:: (L.comparator.x++L.comparator.y++L.comparator.carry)).toFinset`。

```lean
theorem kaliskiRound_wires (L : KaliskiRoundLayout) (hw : L.counter.width=10)
    (hd : 2≤L.data.width) (i : Nat)
```

证明了静态线路并集恰好等于单轮布局，包括共享工作线而非“最大同时存活”估计。

```lean
theorem kaliskiRound_qubits (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (hd : 2≤L.data.width) (i : Nat)
```

证明了7w 数据/工作线路、双银行十位计数器及常数个控制位的精确总数。
