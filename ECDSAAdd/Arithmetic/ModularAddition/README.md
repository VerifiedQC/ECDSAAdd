# 模加法

本模块实现模加法、模减法及其原地、受控和 XOR 输出接口，并证明范围、清理与资源结论。

## 文件目录

[Accumulate.lean](#accumulatelean)

这个文件通过交换布局角色组合前向模加减，实现结果累加、撤销及旧寄存器清理。

[ExternalMod.lean](#externalmodlean)

这个文件证明外部寄存器与内部模算术寄存器之间的复制、清零及互不干扰性质。

[FieldAddSub.lean](#fieldaddsublean)

这个文件将通用模加减实例化到 secp256k1，给出零输出、XOR 输出及资源规格。

[ModInPlace.lean](#modinplacelean)

这个文件定义原地模加内核及其布局，逐段证明约减、借位清理、正确性和资源用量。

[ModInPlaceCopy.lean](#modinplacecopylean)

这个文件证明受控复制低位寄存器时，数值更新与其他状态的保持。

[ModInPlaceNegate.lean](#modinplacenegatelean)

这个文件定义原始取负程序，证明各步骤、数值结果、状态保持及成本。

[ModInPlaceSubtract.lean](#modinplacesubtractlean)

这个文件定义普通和受控原地模减法，并证明规格、目标外保持及资源用量。

[ModInPlaceWrappers.lean](#modinplacewrapperslean)

这个文件封装普通和受控原地模加法，证明掩码清理、规格及资源用量。

[Modular.lean](#modularlean)

这个文件定义 XOR 输出模加减程序，并给出寄存器值和完整程序规格。

[ModularFrame.lean](#modularframelean)

这个文件证明模加减只更新输出，并建立布局覆盖和状态断言保持关系。

[ModularLayout.lean](#modularlayoutlean)

这个文件定义模加减的字段和寄存器布局，并证明加法器、选择器视图的长度与线路关系。

[ModularPorts.lean](#modularportslean)

这个文件将调用方输入输出和工作区连接为模加减布局，并证明端口、位宽和工作区对应。

[ModularResources.lean](#modularresourceslean)

这个文件确定模加减的实际线路支持，并证明门数、测量数和线路数。

[ModularSteps.lean](#modularstepslean)

这个文件定义模算术寄存器断言，并证明常量、加法、减法和选择步骤怎样更新这些断言。

[ModularXorSteps.lean](#modularxorstepslean)

这个文件证明模加减组合过程中允许已有输出值的 XOR 状态更新。

[PoolLayout.lean](#poollayoutlean)

这个文件从连续工作池构造模算术布局，并证明编号区间、位宽和总线路对应。

[Reduction.lean](#reductionlean)

这个文件证明寄存器高低位读取及模加减一次约减所需的数值等式。

[SubtractPorts.lean](#subtractportslean)

这个文件把减法端口接入共享工作池，并证明输入、工作区、位宽和线路互异性。

[UnaryMod.lean](#unarymodlean)

这个文件组合装载、模算术和卸载，提供约减及取负的 XOR 输出接口。

[UnaryModResources.lean](#unarymodresourceslean)

这个文件证明一元模运算的支持范围、计数，以及输出外状态保持。

## [Accumulate.lean](Accumulate.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def ModBit.swapXOut (b : ModBit) : ModBit
```

交换单个位布局中输入 x 和输出 out 的角色，不执行物理交换。

```lean
def ModLayout.swapXOut (L : ModLayout) : ModLayout
```

交换两个累加器的角色；工作寄存器保持同一份。

```lean
theorem ModLayout.swap_width (L : ModLayout)
```

证明了 `L.swapXOut.width` 等于 `L.width`。

```lean
theorem ModLayout.swap_x (L : ModLayout)
```

证明了 `L.swapXOut.x` 等于 `L.out`。

```lean
theorem ModLayout.swap_out (L : ModLayout)
```

证明了 `L.swapXOut.out` 等于 `L.x`。

```lean
theorem ModLayout.swap_y (L : ModLayout)
```

证明了 `L.swapXOut.y` 等于 `L.y`。

```lean
theorem ModLayout.swap_work (L : ModLayout)
```

证明了 `L.swapXOut.work` 等于 `L.work`。

```lean
theorem ModLayout.swap_perm (L : ModLayout)
```

证明了 `L.swapXOut.wires` 与 `L.wires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem ModLayout.swap_nodup (L : ModLayout) (hnd : L.wires.Nodup)
```

证明了 `L.swapXOut.wires` 中的线路互不重复。

```lean
theorem modular_sum_sub (A B q : Nat) (hA : A < q) (hB : B < q)
```

证明了 `(((A+B)%q)+q-B)%q` 等于 `A`。

```lean
def accumulate (L : ModLayout) (q : Nat) : Program
```

将和写入空累加器，再通过模减把旧累加器清零；下一步交换角色复用。

```lean
def unaccumulate (L : ModLayout) (q : Nat) : Program
```

撤销一次累加也只调用已证明的前向程序，不反转测量指令。

```lean
theorem accumulate_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (A B : Nat) (hA : A < q) (hB : B < q)
```

证明了执行 `accumulate L q` 时，寄存器初态满足 `L.x = A, L.y = B, L.out = 0, L.work = 0` 就能得到 `L.x = 0, L.y = B, L.out = ((A+B)%q), L.work = 0`，并恢复相位。

```lean
theorem unaccumulate_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (A B : Nat) (hA : A < q) (hB : B < q)
```

证明了执行 `unaccumulate L q` 时，寄存器初态满足 `L.x = 0, L.y = B, L.out = ((A+B)%q), L.work = 0` 就能得到 `L.x = A, L.y = B, L.out = 0, L.work = 0`，并恢复相位。

```lean
theorem both_active_wires (L : ModLayout)
```

证明了 `L.activeWires.toFinset ∪ L.swapXOut.activeWires.toFinset` 等于 `L.wires.toFinset`。

```lean
theorem accumulate_wires (L : ModLayout) (q : Nat)
```

证明了程序实际触及的线路集合：`wires (accumulate L q) = L.wires.toFinset`。

```lean
theorem unaccumulate_wires (L : ModLayout) (q : Nat)
```

证明了程序实际触及的线路集合：`wires (unaccumulate L q) = L.wires.toFinset`。

```lean
theorem accumulate_resources (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
```

证明了所列程序的精确资源关系：`toffoliCount (accumulate L q) = 10*L.width+8 ∧ measurementCount (accumulate L q) = 8*(L.width+1) ∧ qubitCount (accumulate L q) = 8*(L.width+1)+2`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem unaccumulate_resources (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
```

证明了所列程序的精确资源关系：`toffoliCount (unaccumulate L q) = 10*L.width+8 ∧ measurementCount (unaccumulate L q) = 8*(L.width+1) ∧ qubitCount (unaccumulate L q) = 8*(L.width+1)+2`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [ExternalMod.lean](ExternalMod.lean)

以下声明位于 `ECDSAAdd.Arithmetic.ExternalMod` 命名空间。

```lean
def Values (L : ModLayout) (src dst : List Wire) (X O : Nat)
    (v : ModField → Nat) (st : BasisState) : Prop
```

同时约束外部源、目标和内部模算术寄存器的值。

```lean
theorem external_disjoint (src dst : List Wire) (L : ModLayout)
    (hnd : (src ++ dst ++ L.wires).Nodup)
```

证明了 `src.Disjoint L.wires ∧ dst` 与 `L.wires` 没有共用线路。

```lean
theorem field_subset (L : ModLayout) (f : ModField)
```

证明了 `L.reg f` 包含的线路都在 `L.wires` 中。

```lean
theorem copy_into (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hlen : src.length = L.width+1)
    (X O : Nat) (v : ModField → Nat) (f : ModField)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L src dst X O v) (copyRegister none src (L.reg f)) (Values L src dst X O (Function.update v f (v f ^^^ X)))`。

```lean
theorem copy_out (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hlen : dst.length = L.width+1)
    (X O : Nat) (v : ModField → Nat)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L src dst X O v) (copyRegister none L.out dst) (Values L src dst X (O ^^^ v .out) v)`。

```lean
theorem work_zero (L : ModLayout) (v : ModField → Nat) (st : BasisState)
    (hv : ModValues L v st)
    (hc : ∀ f, f ≠ .x → f ≠ .y → f ≠ .out → v f = 0)
```

证明了 `regValue L.work st` 等于 `0`。

```lean
theorem zeros_iff (L : ModLayout) (st : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`ModValues L (fun _ => 0) st ↔ regValue L.wires st = 0`。

## [FieldAddSub.lean](FieldAddSub.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def fieldAdd (L : ModLayout) : Program
```

secp256k1 的模数作为编译期常量；257 位布局保留候选差的符号信息。

```lean
def fieldSub (L : ModLayout) : Program
```

在 secp256k1 模数 p 下执行 XOR 输出模减法。

```lean
theorem modulus_pos
```

证明了相应数值或范围条件：`0 < p`。

```lean
theorem modulus_bound
```

证明了相应数值或范围条件：`p < 2^256`。

```lean
theorem fieldAdd_spec (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
    (X Y O : Nat) (hX : X < p) (hY : Y < p)
```

证明了执行 `fieldAdd L` 时，寄存器初态满足 `L.x = X, L.y = Y, L.out = O, L.work = 0` 就能得到 `L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%p)), L.work = 0`，并恢复相位。

```lean
theorem fieldSub_spec (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
    (X Y O : Nat) (hX : X < p) (hY : Y < p)
```

证明了执行 `fieldSub L` 时，寄存器初态满足 `L.x = X, L.y = Y, L.out = O, L.work = 0` 就能得到 `L.x = X, L.y = Y, L.out = (O ^^^ ((X+p-Y)%p)), L.work = 0`，并恢复相位。

```lean
theorem fieldAdd_zero_spec (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
    (X Y : Nat) (hX : X < p) (hY : Y < p)
```

证明了零输出的常用形式：直接得到模 p 的和。

```lean
theorem fieldSub_zero_spec (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
    (X Y : Nat) (hX : X < p) (hY : Y < p)
```

证明了执行 `fieldSub L` 时，寄存器初态满足 `L.x = X, L.y = Y, L.out = 0, L.work = 0` 就能得到 `L.x = X, L.y = Y, L.out = ((X+p-Y)%p), L.work = 0`，并恢复相位。

```lean
theorem fieldAdd_resources (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
```

证明了所列程序的精确资源关系：`toffoliCount (fieldAdd L) = 1284 ∧ measurementCount (fieldAdd L) = 1028 ∧ qubitCount (fieldAdd L) = 2057`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem fieldSub_resources (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
```

证明了所列程序的精确资源关系：`toffoliCount (fieldSub L) = 1284 ∧ measurementCount (fieldSub L) = 1028 ∧ qubitCount (fieldSub L) = 2057`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [ModInPlace.lean](ModInPlace.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure ModAddCoreLayout
```

模加核的固定线路：最高位借作约减标志；mask/flag 属于外层，不放入核工作区。 `ModAddCoreLayout` 定义为 `a`、`low`、`high`、`constant`、`carry`、`cin` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.ModAddCoreLayout` 命名空间。

```lean
def z (L : ModAddCoreLayout) : List Wire
```

取出包含额外高位的目标寄存器，对应 `L.low ++ [L.high]`。

```lean
def work (L : ModAddCoreLayout) : List Wire
```

给出工作区，由 `L.constant ++ L.carry ++ [L.cin]` 组成。

```lean
def wires (L : ModAddCoreLayout) : List Wire
```

给出布局的全部线路，由 `L.a ++ L.z ++ L.work` 组成。

```lean
structure Widths (L : ModAddCoreLayout) (n : Nat) : Prop
```

低位 n 根，扩宽数据与常数 n+1 根，完整进位链 n 根。 `Widths` 定义为 `a`、`low`、`constant`、`carry` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def modAddCore (L : ModAddCoreLayout) (p : Nat) : Program
```

四个可辨认阶段：计算扩宽和、试减 p、借位时低位加回 p、由结果与源比较清借位。 constant/carry/cin 初末零；核源可以是外层已装载的 mask，不能提前清该源。

```lean
theorem modAddCore_counts (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0 < n)
```

证明了同一核门列的计数，不把尚未证明的正确性或支持集作为假设。

```lean
theorem modAddCore_sum (L : ModAddCoreLayout) (n A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup)
```

证明了第一阶段只改变扩宽目标；其余寄存器逐线保持。

```lean
theorem modAddCore_load (L : ModAddCoreLayout) (hnd : L.wires.Nodup)
    (A Z T p : Nat) (hp : p < 2^L.constant.length)
```

证明了常数装卸只改变常数字；将源、目标和进位零条件显式带过。

```lean
theorem modAddCore_subtract (L : ModAddCoreLayout) (n A Z p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup)
```

证明了用常数字做扩宽减法，原源 a 不在门列支持中。

```lean
theorem modAddCore_reduce (L : ModAddCoreLayout) (n A Z p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : p < 2^(n+1))
```

证明了第二阶段：装 p、扩宽减 p、卸 p；整体恢复全部核工作位。

```lean
theorem modAddCore_addback (L : ModAddCoreLayout) (n A Z p : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hn : 0<n) (hp : p<2^n)
```

证明了第三阶段：只向低位加回 p；借位与原源保持，借用的常数/进位前缀归零。

```lean
theorem regValue_take_mod (r : List Wire) (n : Nat) (hn : n ≤ r.length)
    (s : BasisState)
```

证明了 `regValue (r.take n) s` 等于 `regValue r s % 2^n`。

```lean
theorem modAddCore_finish (L : ModAddCoreLayout) (n A R : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hA : A<2^n)
    (hB : B = !decide (R<A))
```

证明了最后比较只翻转最高位；在正确的借位前提下清零，不改低位、源和工作区。

```lean
theorem modAddCore_spec (L : ModAddCoreLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p)
```

证明了扩展源 A≤p 的完整模加：保留源、规范化目标、全部核工作位归零，并恢复相位。

```lean
theorem modAddCore_wires (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n)
```

证明了核的实际支持恰为源、目标、常数字及进位工作线；没有隐含的 mask/flag。

```lean
theorem modAddCore_frame (L : ModAddCoreLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z)
```

证明了完整核规格与支持集共同推出目标之外逐线保持，包括借用视图外的控制和掩码。

```lean
theorem modAddCore_resources (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hn : 0<n)
```

证明了同一模加核程序的精确门数、测量数与实际静态线路数。

## [ModInPlaceCopy.lean](ModInPlaceCopy.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem copyLow_correct (c : Wire) (src dst : List Wire) (n X V : Nat)
    (hs : n≤src.length) (hd : n≤dst.length) (hnd : (c::src++dst).Nodup)
    (hX : X<2^n) (hV : V<2^n) (s : State) (m : List Bool)
    (hx : regValue src s.basis=X) (hv : regValue dst s.basis=V)
```

证明了只复制低 n 位；规范输入与掩码的未复制高位保持零，输出仍按完整寄存器读取。

## [ModInPlaceNegate.lean](ModInPlaceNegate.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def negRaw (L : ModInPlaceLayout) (p : Nat) : Program
```

扩宽源取补后加 p+1；0 暂时映为 p，不归一化，第二次调用恢复原值。

```lean
theorem negRaw_nodup (L : ModInPlaceLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.cin::L.constant++L.a++L.carry)` 中的线路互不重复。

```lean
theorem negRaw_not (L : ModInPlaceLayout) (hnd : L.wires.Nodup) (A : Nat)
```

证明了执行 `notRegister L.a` 时，寄存器初态满足 `L.a=A,L.constant=0,L.carry=0,L.cin=false` 就能得到 `L.a=(2^L.a.length-1-A),L.constant=0,L.carry=0,L.cin=false`，并恢复相位。

```lean
theorem negRaw_load (L : ModInPlaceLayout) (hnd : L.wires.Nodup) (A T k : Nat)
    (hk : k<2^L.constant.length)
```

证明了执行 `xorConstant L.constant k` 时，寄存器初态满足 `L.a=A,L.constant=T,L.carry=0,L.cin=false` 就能得到 `L.a=A,L.constant=(T^^^k),L.carry=0,L.cin=false`，并恢复相位。

```lean
theorem negRaw_add (L : ModInPlaceLayout) (n A k : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup)
```

证明了执行 `addInPlace L.constant L.a L.carry L.cin` 时，寄存器初态满足 `L.a=A,L.constant=k,L.carry=0,L.cin=false` 就能得到 `L.a=((k+A)%2^(n+1)),L.constant=k,L.carry=0,L.cin=false`，并恢复相位。

```lean
theorem negRaw_core (L : ModInPlaceLayout) (n p A : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hpn : p<2^n) (hA : A≤p)
```

证明了执行 `negRaw L p` 时，寄存器初态满足 `L.a=A,L.constant=0,L.carry=0,L.cin=false` 就能得到 `L.a=(p-A),L.constant=0,L.carry=0,L.cin=false`，并恢复相位。

```lean
theorem negRaw_wires (L : ModInPlaceLayout) (n p : Nat) (hw : L.Widths n)
```

证明了程序实际触及的线路集合：`wires (negRaw L p)=(L.a++L.toModAddCoreLayout.work).toFinset`。

```lean
theorem negRaw_correct (L : ModInPlaceLayout) (n p A : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hpn : p<2^n) (hA : A≤p)
    (s : State) (m : List Bool) (ha : regValue L.a s.basis=A)
    (hc : regValue L.work s.basis=0)
```

证明了扩宽取负保持全部源外位，恢复常数与进位；允许输入等于 p。

```lean
theorem negRaw_spec (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hpn : p<2^n) (hA : A≤p)
```

证明了公开取负规格供模减组合使用；所有目标与工作区保持。

```lean
theorem negRaw_counts (L : ModInPlaceLayout) (n p : Nat) (hw : L.Widths n)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (negRaw L p)=n ∧ measurementCount (negRaw L p)=n`。

## [ModInPlaceSubtract.lean](ModInPlaceSubtract.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def modSubInPlace (L : ModInPlaceLayout) (p : Nat) : Program
```

源扩宽取负、模加、再取负恢复；临时 p 是合法的核输入。

```lean
def controlledModSub (c : Wire) (L : ModInPlaceLayout) (p : Nat) : Program
```

两次源取负无条件执行，只有模加受控；控制为零时目标保持。

```lean
theorem modSubInPlace_spec (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p)
```

证明了执行 `modSubInPlace L p` 时，寄存器初态满足 `L.a=A,L.z=Z,L.work=0` 就能得到 `L.a=A,L.z=((Z+p-A)%p),L.work=0`，并恢复相位。

```lean
theorem negRaw_control_spec (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hpn : p<2^n) (hA : A≤p)
```

证明了执行 `negRaw L p` 时，寄存器初态满足 `c=B,L.a=A,L.z=Z,L.work=0` 就能得到 `c=B,L.a=(p-A),L.z=Z,L.work=0`，并恢复相位。

```lean
theorem controlledModSub_spec (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p)
```

证明了执行 `controlledModSub c L p` 时，寄存器初态满足 `c=B,L.a=A,L.z=Z,L.work=0` 就能得到 `c=B,L.a=A,L.z=(if B then (Z+p-A)%p else Z),L.work=0`，并恢复相位。

```lean
theorem modSubInPlace_wires (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n)
```

证明了程序实际触及的线路集合：`wires (modSubInPlace L p)=L.toModAddCoreLayout.wires.toFinset`。

```lean
theorem controlledModSub_wires (c : Wire) (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n)
```

证明了程序实际触及的线路集合：`wires (controlledModSub c L p)=(c::L.a++L.maskedCore.wires).toFinset`。

```lean
theorem modSubInPlace_frame (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z)
```

证明了 `(run (modSubInPlace L p) m s).basis q` 等于 `s.basis q`。

```lean
theorem controlledModSub_frame (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (hb : s.basis c=B) (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z)
```

证明了 `(run (controlledModSub c L p) m s).basis q` 等于 `s.basis q`。

```lean
theorem modSubInPlace_resources (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hn : 0<n)
```

证明了所列程序的精确资源关系：`toffoliCount (modSubInPlace L p)=6*n-1 ∧ measurementCount (modSubInPlace L p)=6*n-1 ∧ qubitCount (modSubInPlace L p)=4*n+4`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem controlledModSub_resources (c : Wire) (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hn : 0<n)
```

证明了所列程序的精确资源关系：`toffoliCount (controlledModSub c L p)=8*n-1 ∧ measurementCount (controlledModSub c L p)=6*n-1 ∧ qubitCount (controlledModSub c L p)=5*n+6`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [ModInPlaceWrappers.lean](ModInPlaceWrappers.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure ModInPlaceLayout extends ModAddCoreLayout
```

外层模算术布局：核工作区之外的 mask 用于受控源，flag 留给单目半倍。 子视图只借用线路，不把 mask 重复加入核工作区。 `ModInPlaceLayout` 定义为 `mask`、`flag` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.ModInPlaceLayout` 命名空间。

```lean
def z (L : ModInPlaceLayout) : List Wire
```

取出包含额外高位的目标寄存器，对应 `L.toModAddCoreLayout.z`。

```lean
def work (L : ModInPlaceLayout) : List Wire
```

给出工作区，由 `L.toModAddCoreLayout.work ++ L.mask ++ [L.flag]` 组成。

```lean
def wires (L : ModInPlaceLayout) : List Wire
```

给出布局的全部线路，由 `L.a ++ L.z ++ L.work` 组成。

```lean
structure Widths (L : ModInPlaceLayout) (n : Nat) : Prop
```

位宽条件。 `Widths` 定义为 `core`、`mask` 各部分。

```lean
def maskedCore (L : ModInPlaceLayout) : ModAddCoreLayout
```

mask 存活时作为源；constant/carry/cin 是唯一核工作区。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def modAddInPlace (L : ModInPlaceLayout) (p : Nat) : Program
```

普通模加直接调用核，未使用的 mask/flag 保持零。

```lean
def controlledModAdd (c : Wire) (L : ModInPlaceLayout) (p : Nat) : Program
```

装载受控源，计算模和，再清源掩码；mask 必须存活到核比较清借位之后。

```lean
theorem outer_core_nodup (L : ModInPlaceLayout) (hnd : L.wires.Nodup)
```

证明了 `L.toModAddCoreLayout.wires` 中的线路互不重复。

```lean
theorem modAddInPlace_spec (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p)
```

证明了公开模加允许临时源等于 p，所有外层工作线初末为零。

```lean
theorem modAddInPlace_frame (L : ModInPlaceLayout) (n p A Z : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z)
```

证明了公共模加不改变目标之外的任何物理位。

```lean
theorem modAddInPlace_resources (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : L.wires.Nodup) (hn : 0<n)
```

证明了所列程序的精确资源关系：`toffoliCount (modAddInPlace L p)=4*n-1 ∧ measurementCount (modAddInPlace L p)=4*n-1 ∧ qubitCount (modAddInPlace L p)=4*n+4`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem outer_mask_copy (c : Wire) (L : ModInPlaceLayout) (n p A Z V : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : p<2^n) (hA : A≤p) (hV : V<2^n)
```

证明了执行 `copyRegister (some c) (L.a.take L.low.length) (L.mask.take L.low.length)` 时，寄存器初态满足 `c=B, L.a=A, L.z=Z, L.mask=V, L.toModAddCoreLayout.work=0, L.flag=false` 就能得到 `c=B, L.a=A, L.z=Z, L.mask=(V ^^^ (if B then A else 0)), L.toModAddCoreLayout.work=0, L.flag=false`，并恢复相位。

```lean
theorem outer_mask_core (c : Wire) (L : ModInPlaceLayout) (n p A Z V : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hV : V≤p) (hZ : Z<p)
```

证明了执行 `modAddCore L.maskedCore p` 时，寄存器初态满足 `c=B, L.a=A, L.z=Z, L.mask=V, L.toModAddCoreLayout.work=0, L.flag=false` 就能得到 `c=B, L.a=A, L.z=(Z+V)%p, L.mask=V, L.toModAddCoreLayout.work=0, L.flag=false`，并恢复相位。

```lean
theorem controlledModAdd_spec (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p)
```

证明了控制保持，源保持；掩码只在两个复制阶段之间存活，最终所有外层工作线归零。

```lean
theorem controlledModAdd_wires (c : Wire) (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0<n)
```

证明了实际支持不含源高位与 flag；mask 高位由核接入。

```lean
theorem controlledModAdd_frame (c : Wire) (L : ModInPlaceLayout) (n p A Z : Nat) (B : Bool)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hp : 0<p) (hpn : p<2^n)
    (hA : A≤p) (hZ : Z<p) (s : State) (m : List Bool)
    (hb : s.basis c=B) (ha : regValue L.a s.basis=A) (hz : regValue L.z s.basis=Z)
    (hc : regValue L.work s.basis=0) (q : Wire) (hq : q∉L.z)
```

证明了 `(run (controlledModAdd c L p) m s).basis q` 等于 `s.basis q`。

```lean
theorem controlledModAdd_resources (c : Wire) (L : ModInPlaceLayout) (n p : Nat)
    (hw : L.Widths n) (hnd : (c::L.wires).Nodup) (hn : 0<n)
```

证明了所列程序的精确资源关系：`toffoliCount (controlledModAdd c L p)=6*n-1 ∧ measurementCount (controlledModAdd c L p)=4*n-1 ∧ qubitCount (controlledModAdd c L p)=5*n+5`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [Modular.lean](Modular.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def modAdd (L : ModLayout) (q : Nat) : Program
```

保留输入的模加 XOR：载入 q，计算和与候选差，选择后按前向 XOR 清理。

```lean
def modSub (L : ModLayout) (q : Nat) : Program
```

保留输入的模减 XOR：借位时选择加回 q 的候选，随后清理全部工作寄存器。

```lean
def ModValues.clean (X Y O : Nat) : ModField → Nat
```

指定输入 x、y 和输出的值，并把其余模算术字段设为零。

```lean
theorem ModValues.clean_iff (L : ModLayout) (X Y O : Nat) (st : BasisState)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`ModValues L (ModValues.clean X Y O) st ↔ (((regValue L.x st = X ∧ regValue L.y st = Y) ∧ regValue L.out st = O) ∧ regValue L.work st = 0)`。

```lean
theorem modAdd_bounded_values (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ModValues L (ModValues.clean X Y O)) (modAdd L q) (ModValues L (ModValues.clean X Y (O ^^^ ((X+Y)%q))))`。

```lean
theorem modAdd_bounded_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hXY : X + Y < 2*q)
```

证明了模 q 加法：任意初值输出按位 XOR 更新，输入、相位和全部工作线恢复。 q 是编译期常量，X、Y 是寄存器中的变量；额外高位只属于实现布局。

```lean
theorem modAdd_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q)
```

证明了执行 `modAdd L q` 时，寄存器初态满足 `L.x = X, L.y = Y, L.out = O, L.work = 0` 就能得到 `L.x = X, L.y = Y, L.out = (O ^^^ ((X+Y)%q)), L.work = 0`，并恢复相位。

```lean
theorem modSub_values (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ModValues L (ModValues.clean X Y O)) (modSub L q) (ModValues L (ModValues.clean X Y (O ^^^ ((X+q-Y)%q))))`。

```lean
theorem modSub_spec (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hX : X < q) (hY : Y < q)
```

证明了模 q 减法：任意初值输出按位 XOR 更新，借位选择线随候选差一起清理。

## [ModularFrame.lean](ModularFrame.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem ModLayout.interface_perm (L : ModLayout)
```

证明了按寄存器分组与按位分组包含同一组线路。

```lean
theorem ModLayout.active_subset (L : ModLayout)
```

证明了 `L.activeWires` 包含的线路都在 `L.wires` 中。

```lean
theorem ModLayout.cover (L : ModLayout) {w : Wire} (hw : w ∈ L.wires)
```

证明了 `w` 属于 `L.x ∨ w ∈ L.y ∨ w ∈ L.out ∨ w ∈ L.work`。

```lean
theorem ModLayout.preserve_nonoutput (L : ModLayout) (s t : BasisState)
    (hx : regValue L.x t = regValue L.x s) (hy : regValue L.y t = regValue L.y s)
    (hw : regValue L.work t = regValue L.work s)
    (he : ∀ w, w ∉ L.wires → t w = s w)
```

证明了将寄存器保持提升成逐线保持，供更大的电路在外部寄存器上组合。

```lean
theorem modAdd_bounded_correct (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (s : State) (m : List Bool)
    (hXY : regValue L.x s.basis + regValue L.y s.basis < 2*q)
    (hwork : regValue L.work s.basis = 0)
```

证明了在给定数值范围条件下，将两个输入之和模 q 的结果异或到输出，保持输出外基态位与相位。

```lean
theorem modAdd_correct (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (s : State) (m : List Bool)
    (hX : regValue L.x s.basis < q) (hY : regValue L.y s.basis < q)
    (hwork : regValue L.work s.basis = 0)
```

证明了将两个输入之和模 q 的结果异或到输出，保持输出外基态位与相位。

```lean
theorem modSub_correct (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (s : State) (m : List Bool)
    (hX : regValue L.x s.basis < q) (hY : regValue L.y s.basis < q)
    (hwork : regValue L.work s.basis = 0)
```

证明了将两个输入之差模 q 的结果异或到输出，保持输出外基态位与相位。

```lean
theorem ModValues.congr (L : ModLayout) (v : ModField → Nat) (s t : BasisState)
    (he : ∀ w ∈ L.wires, t w = s w) (hv : ModValues L v s)
```

证明了操作后满足对应的寄存器状态或保持断言：`ModValues L v t`。

```lean
theorem modActive_output (L : ModLayout)
```

证明了 `L.activeWires.toFinset ∪ L.out.toFinset` 等于 `L.wires.toFinset`。

## [ModularLayout.lean](ModularLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
inductive ModField
```

两个输入、和、模数、候选差、输出，以及两组进位工作线。 包括 `x`、`y`、`total`、`modulus`、`diff`、`out`、`carrySum`、`carryDiff`。

```lean
structure ModBit
```

模加减的逐位布局 `ModBit` 定义为输入位 `x`、`y`，中间和、模数及差值位 `total`、`modulus`、`diff`，输出位 `out`，以及两组进位位 `carrySum`、`carryDiff`。

```lean
def ModBit.get (b : ModBit) : ModField → Wire
```

按字段标识选择对应的位或寄存器。

```lean
def ModBit.all (b : ModBit) : List Wire
```

列出该布局包含的各条线路。

```lean
structure ModLayout
```

high 是额外的最高位，候选差的这个位直接用于选择，不另存 flag。 `ModLayout` 定义为 `low`、`high`、`cinSum`、`cinDiff` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.ModLayout` 命名空间。

```lean
def bits (L : ModLayout) : List ModBit
```

取出全部逐位布局，对应 `L.low ++ [L.high]`。

```lean
def width (L : ModLayout) : Nat
```

取出位宽，对应 `L.low.length`。

```lean
def reg (L : ModLayout) (f : ModField) : List Wire
```

按字段标识选择对应的位或寄存器。

```lean
def lowReg (L : ModLayout) (f : ModField) : List Wire
```

按字段标识提取对应的低位寄存器。

```lean
def x (L : ModLayout) : List Wire
```

取出输入 x，对应 `L.reg .x`。

```lean
def y (L : ModLayout) : List Wire
```

取出输入 y，对应 `L.reg .y`。

```lean
def out (L : ModLayout) : List Wire
```

取出输出寄存器，对应 `L.reg .out`。

```lean
def work (L : ModLayout) : List Wire
```

给出工作区，由 `L.reg .total ++ L.reg .modulus ++ L.reg .diff ++ L.reg .carrySum ++ L.reg .carryDiff ++ [L.cinSum, L.cinDiff]` 组成。

```lean
def wires (L : ModLayout) : List Wire
```

给出布局的全部线路，由 `L.cinSum :: L.cinDiff :: L.bits.flatMap ModBit.all` 组成。

```lean
def adder (L : ModLayout) (a b target carry : ModField) (cin : Wire) : AdderLayout
```

构造加法器的布局视图，复用现有寄存器和线路。

```lean
def selector (L : ModLayout) : List SelectBit
```

构造选择器的布局视图，复用现有寄存器和线路。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem get_mem (b : ModBit) (f : ModField)
```

证明了 `b.get f` 属于 `b.all`。

```lean
theorem get_ne (b : ModBit) (hb : b.all.Nodup) (f g : ModField) (hfg : f ≠ g)
```

证明了在字段线路互异的前提下，不同字段对应不同线路。

```lean
theorem select_blocks_nodup (bs : List ModBit) (h : (bs.flatMap ModBit.all).Nodup)
    (f : ModBit → List Wire) (hsub : ∀ b, f b ⊆ b.all)
    (hlocal : ∀ b, b.all.Nodup → (f b).Nodup)
```

证明了 `(bs.flatMap f)` 中的线路互不重复。

```lean
theorem field_disjoint (bs : List ModBit) (h : (bs.flatMap ModBit.all).Nodup)
    (f g : ModField) (hfg : f ≠ g)
```

证明了 `(bs.map (fun b => b.get f))` 与 `(bs.map (fun b => b.get g))` 没有共用线路。

```lean
theorem ModLayout.reg_length (L : ModLayout) (f : ModField)
```

证明了寄存器或线路列表的长度关系：`(L.reg f).length = L.width + 1`。

```lean
theorem ModLayout.reg_mem (L : ModLayout) (f : ModField) {w : Wire} (hw : w ∈ L.reg f)
```

证明了 `w` 属于 `L.bits.flatMap ModBit.all`。

```lean
theorem ModLayout.reg_nodup (L : ModLayout) (hnd : L.wires.Nodup) (f : ModField)
```

证明了 `(L.reg f)` 中的线路互不重复。

```lean
theorem ModLayout.reg_disjoint (L : ModLayout) (hnd : L.wires.Nodup)
    (f g : ModField) (hfg : f ≠ g)
```

证明了 `(L.reg f)` 与 `(L.reg g)` 没有共用线路。

```lean
theorem ModLayout.cinSum_not_reg (L : ModLayout) (hnd : L.wires.Nodup) (f : ModField)
```

证明了 `L.cinSum` 不属于 `L.reg f`，因此这根线与该区域分离。

```lean
theorem ModLayout.cinDiff_not_reg (L : ModLayout) (hnd : L.wires.Nodup) (f : ModField)
```

证明了 `L.cinDiff` 不属于 `L.reg f`，因此这根线与该区域分离。

```lean
theorem addWires_map (bs : List ModBit) (a b target carry : ModField)
```

证明了 `addWires (bs.map (fun bit` 等于 `> AddBit.mk (bit.get a) (bit.get b) (bit.get target) (bit.get carry))) = bs.flatMap (fun bit => [bit.get a, bit.get b, bit.get target, bit.get carry])`。

```lean
theorem ModLayout.adder_nodup (L : ModLayout) (hnd : L.wires.Nodup)
    (a b target carry : ModField) (hf : [a, b, target, carry].Nodup)
    (cin : Wire) (hc : cin = L.cinSum ∨ cin = L.cinDiff)
```

证明了任取互异的四类线路组成加法器，其线路互异从总布局导出。

```lean
theorem ModLayout.adder_x (L : ModLayout) (a b target carry : ModField) (cin : Wire)
```

证明了 `(L.adder a b target carry cin).x` 等于 `L.reg a`。

```lean
theorem ModLayout.adder_y (L : ModLayout) (a b target carry : ModField) (cin : Wire)
```

证明了 `(L.adder a b target carry cin).y` 等于 `L.reg b`。

```lean
theorem ModLayout.adder_out (L : ModLayout) (a b target carry : ModField) (cin : Wire)
```

证明了 `(L.adder a b target carry cin).out` 等于 `L.reg target`。

```lean
theorem ModLayout.adder_carry (L : ModLayout) (a b target carry : ModField) (cin : Wire)
```

证明了 `(L.adder a b target carry cin).carry` 等于 `L.reg carry`。

```lean
theorem ModLayout.adder_width (L : ModLayout) (a b target carry : ModField) (cin : Wire)
```

证明了 `(L.adder a b target carry cin).width` 等于 `L.width + 1`。

```lean
theorem ModLayout.selector_no (L : ModLayout)
```

证明了 `L.selector.map SelectBit.no` 等于 `L.lowReg .diff`。

```lean
theorem ModLayout.selector_yes (L : ModLayout)
```

证明了 `L.selector.map SelectBit.yes` 等于 `L.lowReg .total`。

```lean
theorem ModLayout.selector_out (L : ModLayout)
```

证明了 `L.selector.map SelectBit.out` 等于 `L.lowReg .out`。

```lean
theorem selectWires_map (bs : List ModBit)
```

证明了 `selectWires (bs.map (fun b` 等于 `> SelectBit.mk b.diff b.total b.out)) = bs.flatMap (fun b => [b.diff, b.total, b.out])`。

```lean
theorem ModLayout.selector_nodup (L : ModLayout) (hnd : L.wires.Nodup)
```

证明了 `(selectWires L.selector)` 中的线路互不重复。

```lean
theorem ModLayout.high_diff_mem (L : ModLayout)
```

证明了 `L.high.diff` 属于 `L.reg .diff`。

```lean
theorem ModLayout.flag_not_output (L : ModLayout) (hnd : L.wires.Nodup)
```

证明了 `L.high.diff` 不属于 `L.selector.map SelectBit.out`，因此这根线与该区域分离。

```lean
theorem ModLayout.reg_eq (L : ModLayout) (f : ModField)
```

证明了 `L.reg f` 等于 `L.lowReg f ++ [L.high.get f]`。

```lean
theorem ModLayout.lowReg_subset (L : ModLayout) (f : ModField)
```

证明了 `L.lowReg f` 包含的线路都在 `L.reg f` 中。

```lean
theorem ModLayout.flag_not_selector (L : ModLayout) (hnd : L.wires.Nodup)
```

证明了选择位来自额外高位，不与任何低位门的输入或输出重合。

## [ModularPorts.lean](ModularPorts.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def modPortBit {n : Nat} (x y out : Fin (n+1) → Wire)
    (work : Fin 5 → Fin (n+1) → Wire) (i : Fin (n+1)) : ModBit
```

模加减直接使用调用方的输入输出位；工作区分成五个同宽寄存器和两根进位线。

```lean
def modPorts {n : Nat} (x y out : Fin (n+1) → Wire)
    (work : Fin 5 → Fin (n+1) → Wire) (cinSum cinDiff : Wire) : ModLayout
```

将调用方输入输出、五组工作寄存器和两根进位线组成模加减布局。

```lean
theorem modPorts_width {n : Nat} (x y out : Fin (n+1) → Wire)
    (work : Fin 5 → Fin (n+1) → Wire) (a b : Wire)
```

证明了 `(modPorts x y out work a b).width` 等于 `n`。

```lean
theorem modPorts_bits {n : Nat} (x y out : Fin (n+1) → Wire)
    (work : Fin 5 → Fin (n+1) → Wire) (a b : Wire)
```

证明了 `(modPorts x y out work a b).bits` 等于 `List.ofFn (modPortBit x y out work)`。

```lean
theorem modPorts_inputs {n : Nat} (x y out : Fin (n+1) → Wire)
    (work : Fin 5 → Fin (n+1) → Wire) (a b : Wire)
```

证明了端口构造后的 x、y、out 分别就是调用方给出的三个输入输出列表。

```lean
theorem modPorts_work {n : Nat} (x y out : Fin (n+1) → Wire)
    (work : Fin 5 → Fin (n+1) → Wire) (a b : Wire)
```

证明了 `(modPorts x y out work a b).work` 等于 `List.ofFn (work 0)++List.ofFn (work 1)++List.ofFn (work 2)++ List.ofFn (work 3)++List.ofFn (work 4)++[a,b]`。

## [ModularResources.lean](ModularResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem modAdder_mem (L : ModLayout) (a b t c : ModField) (cin w : Wire)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`w ∈ wires (add (L.adder a b t c cin)) ↔ w = cin ∨ w ∈ L.reg a ∨ w ∈ L.reg b ∨ w ∈ L.reg t ∨ w ∈ L.reg c`。

```lean
theorem sub_mem (L : ModLayout) (a b t c : ModField) (cin w : Wire)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`w ∈ wires (sub (L.adder a b t c cin)) ↔ w = cin ∨ w ∈ L.reg a ∨ w ∈ L.reg b ∨ w ∈ L.reg t ∨ w ∈ L.reg c`。

```lean
def ModLayout.activeWires (L : ModLayout) : List Wire
```

实际支持集不含永远不触碰的输出高位。

```lean
theorem select_mem (L : ModLayout) (w : Wire)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`w ∈ wires (selectXor L.selector L.high.diff) ↔ (L.low ≠ [] ∧ w = L.high.diff) ∨ w ∈ L.lowReg .diff ∨ w ∈ L.lowReg .total ∨ w ∈ L.lowReg .out`。

```lean
theorem layout_mem (L : ModLayout) (w : Wire)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`w ∈ L.activeWires ↔ w = L.cinSum ∨ w = L.cinDiff ∨ w ∈ L.reg .x ∨ w ∈ L.reg .y ∨ w ∈ L.reg .total ∨ w ∈ L.reg .modulus ∨ w ∈ L.reg .diff ∨ w ∈ L.lowReg .out ∨ w ∈ L.reg .carrySum ∨ w ∈ L.reg .carryDiff`。

```lean
theorem active_nodup (L : ModLayout) (hnd : L.wires.Nodup)
```

证明了 `L.activeWires` 中的线路互不重复。

```lean
theorem modAdd_wires (L : ModLayout) (q : Nat)
```

证明了程序实际触及的线路集合：`wires (modAdd L q) = L.activeWires.toFinset`。

```lean
theorem modSub_wires (L : ModLayout) (q : Nat)
```

证明了程序实际触及的线路集合：`wires (modSub L q) = L.activeWires.toFinset`。

```lean
theorem layout_length (L : ModLayout)
```

证明了寄存器或线路列表的长度关系：`L.activeWires.length = 8 * L.width + 9`。

```lean
theorem modAdd_resources (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
```

证明了四次 (n+1) 位算术和 n 位单 Toffoli 选择；输出高位不施门。

```lean
theorem modSub_resources (L : ModLayout) (hnd : L.wires.Nodup) (q : Nat)
```

证明了所列程序的精确资源关系：`toffoliCount (modSub L q) = 5 * L.width + 4 ∧ measurementCount (modSub L q) = 4 * (L.width + 1) ∧ qubitCount (modSub L q) = 8 * L.width + 9`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [ModularSteps.lean](ModularSteps.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def ModValues (L : ModLayout) (v : ModField → Nat) (st : BasisState) : Prop
```

组合证明的内部状态断言：八组寄存器的读值和两根零输入进位线。

```lean
theorem ModValues.update (L : ModLayout) (hnd : L.wires.Nodup) (v : ModField → Nat)
    (target : ModField) (z : Nat) (s t : BasisState) (hv : ModValues L v s)
    (he : ∀ w, w ∉ L.reg target → t w = s w) (hz : regValue (L.reg target) t = z)
```

证明了操作后满足对应的寄存器状态或保持断言：`ModValues L (Function.update v target z) t`。

```lean
theorem constant_modValues (L : ModLayout) (hnd : L.wires.Nodup) (v : ModField → Nat)
    (target : ModField) (k : Nat) (hk : k < 2^(L.width+1))
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ModValues L v) (xorConstant (L.reg target) k) (ModValues L (Function.update v target (v target ^^^ k)))`。

```lean
theorem add_modValues (L : ModLayout) (hnd : L.wires.Nodup) (v : ModField → Nat)
    (a b target carry : ModField) (hf : [a, b, target, carry].Nodup)
    (cin : Wire) (hcin : cin = L.cinSum ∨ cin = L.cinDiff) (hcarry : v carry = 0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ModValues L v) (add (L.adder a b target carry cin)) (ModValues L (Function.update v target (v target ^^^ ((v a + v b) % 2^(L.width+1)))))`。

```lean
theorem sub_modValues (L : ModLayout) (hnd : L.wires.Nodup) (v : ModField → Nat)
    (a b target carry : ModField) (hf : [a, b, target, carry].Nodup)
    (cin : Wire) (hcin : cin = L.cinSum ∨ cin = L.cinDiff) (hcarry : v carry = 0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ModValues L v) (sub (L.adder a b target carry cin)) (ModValues L (Function.update v target (v target ^^^ ((v a + 2^(L.width+1) - v b) % 2^(L.width+1)))))`。

```lean
theorem select_modValues (L : ModLayout) (hnd : L.wires.Nodup) (v : ModField → Nat)
    (hbound : (if 2^L.width ≤ v .diff then v .total else v .diff) < 2^L.width)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (ModValues L v) (selectXor L.selector L.high.diff) (ModValues L (Function.update v .out (v .out ^^^ (if 2^L.width ≤ v .diff then v .total else v .diff))))`。

## [ModularXorSteps.lean](ModularXorSteps.lean)

以下声明位于 `ECDSAAdd.Arithmetic.ExternalMod` 命名空间。

```lean
theorem mod_add (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O q : Nat) (v : ModField → Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (hxy : v .x + v .y < 2*q)
    (hc : ∀ f, f ≠ .x → f ≠ .y → f ≠ .out → v f = 0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L src dst X O v) (modAdd L q) (Values L src dst X O (Function.update v .out (v .out ^^^ ((v .x+v .y)%q))))`。

```lean
theorem mod_sub (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O q : Nat) (v : ModField → Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (hx : v .x < q) (hy : v .y < q)
    (hc : ∀ f, f ≠ .x → f ≠ .y → f ≠ .out → v f = 0)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (Values L src dst X O v) (modSub L q) (Values L src dst X O (Function.update v .out (v .out ^^^ ((v .x+q-v .y)%q))))`。

## [PoolLayout.lean](PoolLayout.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def wireBlock (w : Nat → Wire) (start count : Nat) : List Wire
```

工作池的连续切片。w 把池内偏移映射到调用方线路。

```lean
theorem wireBlock_append (w : Nat → Wire) (start a b : Nat)
```

证明了 `wireBlock w start a++wireBlock w (start+a) b` 等于 `wireBlock w start (a+b)`。

```lean
theorem wireBlock_length (w : Nat → Wire) (start count : Nat)
```

证明了寄存器或线路列表的长度关系：`(wireBlock w start count).length=count`。

```lean
theorem wireBlock_flatMap (w : Nat → Wire) (start width count : Nat)
```

证明了 `((List.range count).flatMap (fun i` 等于 `> wireBlock w (start+width*i) width))= wireBlock w start (width*count)`。

```lean
def poolModBit (w : Nat → Wire) (start : Nat) : ModBit
```

从工作池的连续八个编号构造一位模算术布局。

```lean
def poolMod (w : Nat → Wire) (start width : Nat) : ModLayout
```

从工作池构造指定宽度的模算术布局，包含额外高位和两根进位线。

```lean
theorem poolMod_bits (w : Nat → Wire) (start width : Nat)
```

证明了 `(poolMod w start width).bits` 等于 `(List.range (width+1)).map (fun i => poolModBit w (start+2+8*i))`。

```lean
theorem poolMod_width (w : Nat → Wire) (start width : Nat)
```

证明了 `(poolMod w start width).width` 等于 `width`。

```lean
theorem poolModBit_wires (w : Nat → Wire) (start : Nat)
```

证明了 `(poolModBit w start).all` 等于 `wireBlock w start 8`。

```lean
theorem poolMod_wires (w : Nat → Wire) (start width : Nat)
```

证明了 `(poolMod w start width).wires` 等于 `wireBlock w start (2+8*(width+1))`。

## [Reduction.lean](Reduction.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem regValue_append (lo hi : List Wire) (s : BasisState)
```

证明了小端拼接：高段的权重是低段位宽对应的 2 的幂。

```lean
theorem regValue_highBit (lo : List Wire) (high : Wire) (s : BasisState)
```

证明了最高位为 1 恰好表示整个寄存器读值不小于该位的权重。

```lean
theorem regValue_low (lo : List Wire) (hi : Wire) (s : BasisState)
```

证明了寄存器或线路列表的长度关系：`regValue lo s = regValue (lo ++ [hi]) s % 2^lo.length`。

```lean
theorem xor_low_add (n a h r : Nat) (ha : a < 2^n) (hr : r < 2^n)
```

证明了XOR 一个低 n 位的值不会改变更高位。

```lean
theorem addReduction (t q n : Nat) (hq0 : 0 < q) (hq : q < 2^n) (ht : t < 2*q)
```

证明了t<2q 时，一次减 q 加上候选选择就得到 t mod q。 额外高位为 1 表示减法发生借位，应保留原和 t。

```lean
theorem subReduction (X Y q n : Nat) (hq0 : 0 < q) (hq : q < 2^n)
    (hX : X < q) (hY : Y < q)
```

证明了X,Y<q 时，借位的差加回 q；未借位则直接保留差。

## [SubtractPorts.lean](SubtractPorts.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem indexedWord_eq (r : List Wire) (n : Nat) (h : r.length=n)
```

证明了 `List.ofFn (fun i : Fin n` 等于 `> r.getD i 0)=r`。

```lean
theorem block_ofFn (w : Nat → Wire) (start n : Nat)
```

证明了 `List.ofFn (fun i : Fin n` 等于 `> w (start+i))=wireBlock w start n`。

```lean
def poolSub (w : Nat → Wire) (x y out : List Wire) : ModLayout
```

模减法直接连接调用方寄存器，五个工作字及两根进位共用池的前 1287 位。

```lean
theorem poolSub_inputs (w : Nat → Wire) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=257) (ho : out.length=257)
```

证明了从工作池构造减法器不会改变调用方指定的 x、y、out 端口。

```lean
theorem poolSub_work (w : Nat → Wire) (x y out : List Wire)
```

证明了 `(poolSub w x y out).work` 等于 `wireBlock w 0 1287`。

```lean
theorem poolSub_width (w : Nat → Wire) (x y out : List Wire)
```

证明了 `(poolSub w x y out).width` 等于 `256`。

```lean
theorem poolSub_nodup (w : Nat → Wire) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=257) (ho : out.length=257)
    (h : (x++y++out++wireBlock w 0 1287).Nodup)
```

证明了 `(poolSub w x y out).wires` 中的线路互不重复。

## [UnaryMod.lean](UnaryMod.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def unaryModXor (L : ModLayout) (f : ModField) (operation : Program) (src dst : List Wire) : Program
```

载入一组外部输入，复制模运算结果后以同一 XOR 程序清理。

```lean
def reduceXor (L : ModLayout) (q : Nat) (src dst : List Wire) : Program
```

将输入对模数约减后的结果异或到外部输出。

```lean
def negateXor (L : ModLayout) (q : Nat) (src dst : List Wire) : Program
```

将输入的模取负结果异或到外部输出。

```lean
theorem unary_values (L : ModLayout) (f : ModField) (hf : f ≠ .out)
    (operation : Program) (src dst : List Wire) (hnd : (src ++ dst ++ L.wires).Nodup)
    (hs : src.length=L.width+1) (hd : dst.length=L.width+1) (X O R : Nat)
    (hop : ∀ B Z, Triple (Values L src dst X B (Function.update (Function.update (fun _ => 0) f X) .out Z))
      operation (Values L src dst X B (Function.update (Function.update (fun _ => 0) f X) .out (Z ^^^ R))))
```

证明了 `Triple (Values L src dst X O (fun _` 等于 `> 0)) (unaryModXor L f operation src dst) (Values L src dst X (O ^^^ R) (fun _ => 0))`。

```lean
theorem reduceXor_spec (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length=L.width+1)
    (hd : dst.length=L.width+1) (q X O : Nat) (hq0 : 0<q) (hq : q<2^L.width) (hx : X<2*q)
```

证明了执行 `reduceXor L q src dst` 时，寄存器初态满足 `src=X, dst=O, L.wires=0` 就能得到 `src=X, dst=(O ^^^ (X%q)), L.wires=0`，并恢复相位。

```lean
theorem negateXor_spec (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length=L.width+1)
    (hd : dst.length=L.width+1) (q X O : Nat) (hq0 : 0<q) (hq : q<2^L.width) (hx : X<q)
```

证明了执行 `negateXor L q src dst` 时，寄存器初态满足 `src=X, dst=O, L.wires=0` 就能得到 `src=X, dst=(O ^^^ ((q-X)%q)), L.wires=0`，并恢复相位。

## [UnaryModResources.lean](UnaryModResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem unaryModXor_wires (L : ModLayout) (f : ModField) (operation : Program)
    (hop : wires operation = L.activeWires.toFinset) (src dst : List Wire)
    (hs : src.length=L.width+1) (hd : dst.length=L.width+1)
```

证明了程序实际触及的线路集合：`wires (unaryModXor L f operation src dst) = (src ++ dst ++ L.wires).toFinset`。

```lean
theorem unaryModXor_counts (L : ModLayout) (f : ModField) (operation : Program)
    (src dst : List Wire) (hs : src.length=L.width+1) (hd : dst.length=L.width+1)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (unaryModXor L f operation src dst)=2*toffoliCount operation ∧ measurementCount (unaryModXor L f operation src dst)=2*measurementCount operation`。

```lean
theorem reduceXor_wires (L : ModLayout) (src dst : List Wire) (q : Nat)
    (hs : src.length=L.width+1) (hd : dst.length=L.width+1)
```

证明了程序实际触及的线路集合：`wires (reduceXor L q src dst)=(src++dst++L.wires).toFinset`。

```lean
theorem negateXor_wires (L : ModLayout) (src dst : List Wire) (q : Nat)
    (hs : src.length=L.width+1) (hd : dst.length=L.width+1)
```

证明了程序实际触及的线路集合：`wires (negateXor L q src dst)=(src++dst++L.wires).toFinset`。

```lean
theorem reduceXor_correct (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q : Nat) (hq0 : 0 < q) (hq : q < 2^L.width)
    (s : State) (m : List Bool) (hX : regValue src s.basis < 2*q)
    (hw : regValue L.wires s.basis = 0)
```

证明了将源值对 q 取模后异或到目标，保持目标外基态位与相位。

```lean
theorem negateXor_correct (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q : Nat) (hq0 : 0 < q) (hq : q < 2^L.width)
    (s : State) (m : List Bool) (hX : regValue src s.basis < q)
    (hw : regValue L.wires s.basis = 0)
```

证明了将源值模 q 的负值异或到目标，保持目标外基态位与相位。
