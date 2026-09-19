# 模乘

本模块通过 Montgomery 窗口运算实现标准表示的模乘及受控累加等接口，并证明结果、历史恢复和资源用量。

## 文件目录

[ConstDigit.lean](#constdigitlean)

这个文件证明常数 Montgomery 窗口内查表加减的数值和保持关系。

[ConstRounds.lean](#constroundslean)

这个文件证明常数 Montgomery 多轮计算与恢复对应数学递推。

[ConstStageSpec.lean](#conststagespeclean)

这个文件给出常数 Montgomery 整段准备与恢复的正确性规格。

[ConstWindow.lean](#constwindowlean)

这个文件证明单个常数 Montgomery 窗口的计算和恢复关系。

[FieldMultiply.lean](#fieldmultiplylean)

这个文件把标准模乘实例化到 secp256k1，证明零输出、XOR 输出及资源结论。

[MontAdapterFrame.lean](#montadapterframelean)

这个文件证明模乘输出适配器只改变指定输出，保留输入和恢复所需的准备态。

[MontAdapterLayout.lean](#montadapterlayoutlean)

这个文件连接模乘结果与输出工作区，定义 XOR、累加、累减及受控适配程序。

[MontAdapterResources.lean](#montadapterresourceslean)

这个文件证明各模乘输出适配器的门数、测量数、支持集和线路数。

[MontAdapterSpec.lean](#montadapterspeclean)

这个文件证明两段准备和恢复之间的输出更新，给出五种标准模乘适配器规格。

[MontBorrow.lean](#montborrowlean)

这个文件从连续借用空间构造 Montgomery 布局，并证明端口、位宽和线路互异性。

[MontConstant.lean](#montconstantlean)

这个文件证明 Montgomery 累加器与经典常量加减时的结果和状态保持。

[MontCounts.lean](#montcountslean)

这个文件证明 Montgomery 查询、窗口、轮次和规范化步骤的门数与测量数。

[MontDigit.lean](#montdigitlean)

这个文件证明变量 Montgomery 窗口的逐位受控加减与掩码清理。

[MontHistory.lean](#monthistorylean)

这个文件证明 Montgomery 商记录的读取、写入及恢复所需的数值关系。

[MontLayout.lean](#montlayoutlean)

这个文件定义两段 Montgomery 的共享工作区和独立历史，及完整准备、恢复程序。

[MontLookup.lean](#montlookuplean)

这个文件证明四位查表及其加减组合的结果、清理和保持性质。

[MontNormalize.lean](#montnormalizelean)

这个文件证明 Montgomery 最终约减到规范范围及其逆向恢复。

[MontPQ.lean](#montpqlean)

这个文件组合两段 Montgomery，证明得到普通模积并能按历史恢复工作区。

[MontPrepare.lean](#montpreparelean)

这个文件定义单段 Montgomery 的布局、窗口、规范化和准备恢复程序。

[MontReduce.lean](#montreducelean)

这个文件证明四位约减的商记录、模数修正、旋转与恢复步骤。

[MontResources.lean](#montresourceslean)

这个文件汇总两段 Montgomery 准备和恢复的精确资源。

[MontRotate.lean](#montrotatelean)

这个文件证明 Montgomery 约减使用的循环位移及高低位数值关系。

[MontRounds.lean](#montroundslean)

这个文件证明变量 Montgomery 多轮计算和恢复符合数学递推。

[MontStagePorts.lean](#montstageportslean)

这个文件证明单段 Montgomery 布局中各算术接口的位宽、互异性和保持范围。

[MontStageSpec.lean](#montstagespeclean)

这个文件给出变量 Montgomery 前缀及完整阶段的准备、恢复规格。

[MontWindow.lean](#montwindowlean)

这个文件证明变量 Montgomery 单个窗口的计算与恢复结果。

[MontWires.lean](#montwireslean)

这个文件证明 Montgomery 各步骤和完整两段程序的实际线路支持。

[MultiplyPorts.lean](#multiplyportslean)

这个文件将模乘输入输出接入调用方工作池，并证明端口对应、位宽和互异性。

## [ConstDigit.lean](ConstDigit.lean)

这个文件证明常数 Montgomery 窗口内查表加减的数值和保持关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem constDigit_correct (subtract : Bool) (L : MontStageLayout) (y : List Wire) (i K Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length) (hi : i<64) (hK : K<2^256)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y) (vw : regValue L.work s.basis=0)
```

证明了按第 i 个四位窗口查表，将常量 K 乘窗口值加到或减自累加器，结果对 2^261 取模；保持累加器外基态位与相位。

```lean
theorem constDigitAdd_correct (L : MontStageLayout) (y : List Wire) (i K Y A : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length) (hi : i<64) (hK : K<2^256)
    (hfit : A+16*K<2^261) (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=A) (vw : regValue L.work s.basis=0)
```

证明了在不溢出的前提下，常量窗口累加得到 A 加 K 乘当前窗口值，保持累加器外基态位与相位。

```lean
theorem constDigitSub_correct (L : MontStageLayout) (y : List Wire) (i K Y A : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length) (hi : i<64) (hK : K<2^256)
    (hfit : A+16*K<2^261) (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=A+K*((Y/16^i)%16)) (vw : regValue L.work s.basis=0)
```

证明了减去已加入的常量窗口贡献后恢复累加器原值 A，保持累加器外基态位与相位。

## [ConstRounds.lean](ConstRounds.lean)

这个文件证明常数 Montgomery 多轮计算与恢复对应数学递推。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem constPrepareRounds_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0) (vw : regValue L.work s.basis=0)
```

证明了k轮后，累加器和整条历史分别等于 a_k 与 Q_k。

```lean
theorem constRestoreRounds_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k)
    (vh : regValue L.history s.basis=montgomeryQuotient p X Y k) (vw : regValue L.work s.basis=0)
```

证明了以同一 a_k/Q_k 关系为前提逆序执行，清空累加器与整条历史。

## [ConstStageSpec.lean](ConstStageSpec.lean)

这个文件给出常数 Montgomery 整段准备与恢复的正确性规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem constPreparePrefix_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0)
```

证明了常数段公开准备契约：记录带与借位明确保留，临时工作区归零。

```lean
theorem constPreparePrefix_spec (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了常量 Montgomery 准备阶段执行 k 个窗口后，累加器保存规范化结果，历史保存商记录，标志记录规范化前结果是否小于 p；其他基态位及相位保持不变。

```lean
theorem constPrepare_correct (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0)
```

证明了常量 Montgomery 准备阶段执行 64 个窗口后，累加器保存规范化结果，历史保存商记录，标志记录规范化前结果是否小于 p；其他基态位及相位保持不变。

```lean
theorem constPrepare_spec (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了执行 `constPrepare L y p X` 时，寄存器初态满足 `y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0` 就能得到 `y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide (montgomeryValue p X Y 64<p),L.work=0`，并恢复相位。

```lean
theorem constRestorePrefix_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y k)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y k<p)) (vw : regValue L.work s.basis=0)
```

证明了常量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

```lean
theorem constRestorePrefix_spec (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了常量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

```lean
theorem constRestore_correct (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y 64%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y 64)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y 64<p)) (vw : regValue L.work s.basis=0)
```

证明了常量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

```lean
theorem constRestore_spec (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了执行 `constRestore L y p X` 时，寄存器初态满足 `y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide (montgomeryValue p X Y 64<p),L.work=0` 就能得到 `y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0`，并恢复相位。

## [ConstWindow.lean](ConstWindow.lean)

这个文件证明单个常数 Montgomery 窗口的计算和恢复关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem constMontWindow_correct (L : MontStageLayout) (y : List Wire) (p i X Y A H : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hi : i<64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hA : A<2*p) (hH : H<16^i)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=A) (vh : regValue L.history s.basis=H) (vw : regValue L.work s.basis=0)
```

证明了常数窗口同时推进累加器和四位历史整数；不把非零历史当作已清工作区。

```lean
theorem constMontRestoreWindow_correct (L : MontStageLayout) (y : List Wire) (p i X Y A H : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hi : i<64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hA : A<2*p) (hH : H<16^i)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryStep p A X ((Y/16^i)%16)) (vh : regValue L.history s.basis=H+16^i*((A+((Y/16^i)%16)*X)%16)) (vw : regValue L.work s.basis=0)
```

证明了恢复窗口以累加器与整条历史的精确关系为前提。

## [FieldMultiply.lean](FieldMultiply.lean)

这个文件把标准模乘实例化到 secp256k1，证明零输出、XOR 输出及资源结论。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def fieldMul (L : MontLayout) : Program
```

secp256k1 模乘：两段Montgomery标准模积、XOR输出与前向清理。

```lean
theorem fieldMul_spec (L : MontLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X Y O : Nat) (hX : X<p)
```

证明了任意输出 XOR 规格保持；乘数范围由 256 位寄存器自动给出。

```lean
theorem fieldMul_zero_spec (L : MontLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (X Y : Nat) (hX : X<p)
```

证明了执行 `fieldMul L` 时，寄存器初态满足 `L.x=X,L.y=Y,L.out=0,L.work=0` 就能得到 `L.x=X,L.y=Y,L.out=((X*Y)%p),L.work=0`，并恢复相位。

```lean
theorem fieldMul_resources (L : MontLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
```

证明了所列程序的精确资源关系：`toffoliCount (fieldMul L)=379424 ∧ measurementCount (fieldMul L)=379424 ∧ qubitCount (fieldMul L)=2596`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [MontAdapterFrame.lean](MontAdapterFrame.lean)

这个文件证明模乘输出适配器只改变指定输出，保留输入和恢复所需的准备态。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montFrame_values (M : MontLayout) (extra : List Wire) (P : Program) (s : State) (m : List Bool)
    (hs : wires P⊆(extra++M.wires).toFinset)
    (he : ∀q∈extra, (run P m s).basis q=s.basis q)
    (hx : regValue M.x (run P m s).basis=regValue M.x s.basis)
    (hy : regValue M.y (run P m s).basis=regValue M.y s.basis)
    (hc : regValue M.work (run P m s).basis=regValue M.work s.basis)
    (q : Wire) (hq : q∉M.out)
```

证明了 `(run P m s).basis q` 等于 `s.basis q`。

```lean
theorem montMulXor_frame (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (s : State) (m : List Bool)
    (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (ho : regValue M.out s.basis=O) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.out)
```

证明了 `(run (montMulXor M p) m s).basis q` 等于 `s.basis q`。

```lean
theorem montMulAdd_frame (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) (s : State) (m : List Bool)
    (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (ho : regValue M.out s.basis=O) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.out)
```

证明了 `(run (montMulAdd M p) m s).basis q` 等于 `s.basis q`。

```lean
theorem montMulSub_frame (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) (s : State) (m : List Bool)
    (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (ho : regValue M.out s.basis=O) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.out)
```

证明了 `(run (montMulSub M p) m s).basis q` 等于 `s.basis q`。

```lean
theorem montMulControlledAdd_frame (c : Wire) (B : Bool) (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) (s : State) (m : List Bool)
    (hb : s.basis c=B) (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (ho : regValue M.out s.basis=O) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.out)
```

证明了 `(run (montMulControlledAdd c M p) m s).basis q` 等于 `s.basis q`。

```lean
theorem montMulControlledSub_frame (c : Wire) (B : Bool) (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) (s : State) (m : List Bool)
    (hb : s.basis c=B) (hx : regValue M.x s.basis=X) (hy : regValue M.y s.basis=Y)
    (ho : regValue M.out s.basis=O) (hc : regValue M.work s.basis=0)
    (q : Wire) (hq : q∉M.out)
```

证明了 `(run (montMulControlledSub c M p) m s).basis q` 等于 `s.basis q`。

## [MontAdapterLayout.lean](MontAdapterLayout.lean)

这个文件连接模乘结果与输出工作区，定义 XOR、累加、累减及受控适配程序。

以下声明位于 `ECDSAAdd.Arithmetic.MontLayout` 命名空间。

```lean
def product (M : MontLayout) : List Wire
```

标准积的257位视图；中段借用共享区的前缀，历史保持存活。

```lean
def addView (M : MontLayout) : ModInPlaceLayout
```

构造模加减输出的布局视图，复用现有寄存器和线路。

```lean
theorem out_split (M : MontLayout) (hw : M.Widths)
```

证明了 `M.out.take 256++[M.out.getD 256 M.fZ]` 等于 `M.out`。

```lean
theorem add_ports (M : MontLayout) (hw : M.Widths)
```

证明了模加减视图把模乘结果作为源寄存器，把外部输出作为目标寄存器。

```lean
theorem add_widths (M : MontLayout) (hw : M.Widths)
```

证明了 `M.addView.Widths 256`，即相应布局满足所需位宽条件。

```lean
theorem add_work_sublist (M : MontLayout) (hw : M.Widths)
```

证明了 `M.addView.work` 是 `(M.first.table++M.first.carry++[M.first.cin]++M.first.mask++M.first.scratch)` 的子列表，顺序与重复次数均兼容。

```lean
theorem add_work_subset (M : MontLayout) (hw : M.Widths)
```

证明了 `M.addView.work` 包含的线路都在 `M.shared` 中。

```lean
theorem add_nodup (M : MontLayout) (hw : M.Widths) (hnd : M.wires.Nodup)
```

证明了 `M.addView.wires` 中的线路互不重复。

```lean
theorem out_disjoint (M : MontLayout) (hnd : M.wires.Nodup)
```

证明了 `(M.x++M.y++M.work)` 与 `M.out` 没有共用线路。

```lean
theorem product_value (M : MontLayout) (hw : M.Widths) (s : BasisState) (V : Nat)
    (hv : regValue M.z s=V) (hV : V<2^257)
```

证明了 `regValue M.product s` 等于 `V`。

```lean
theorem controlled_add_nodup (c : Wire) (M : MontLayout) (hw : M.Widths)
    (hnd : (c::M.wires).Nodup)
```

证明了 `(c::M.addView.wires)` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def montMulXor (M : MontLayout) (p : Nat) : Program
```

准备标准模积，将它异或到输出，再恢复模乘历史与工作区。

```lean
def montMulAdd (M : MontLayout) (p : Nat) : Program
```

准备标准模积，将它模加到输出，再恢复模乘历史与工作区。

```lean
def montMulSub (M : MontLayout) (p : Nat) : Program
```

准备标准模积，将它从输出中模减，再恢复模乘历史与工作区。

```lean
def montMulControlledAdd (c : Wire) (M : MontLayout) (p : Nat) : Program
```

准备标准模积，按控制位模加到输出，再恢复历史与工作区。

```lean
def montMulControlledSub (c : Wire) (M : MontLayout) (p : Nat) : Program
```

准备标准模积，按控制位从输出模减，再恢复历史与工作区。

## [MontAdapterResources.lean](MontAdapterResources.lean)

这个文件证明各模乘输出适配器的门数、测量数、支持集和线路数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montAdapter_counts (M : MontLayout) (p : Nat) (hw : M.Widths) (hnd : M.wires.Nodup)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montMulXor M p)=379424 ∧ measurementCount (montMulXor M p)=379424) ∧ (toffoliCount (montMulAdd M p)=380447 ∧ measurementCount (montMulAdd M p)=380447) ∧ (toffoliCount (montMulSub M p)=380959 ∧ measurementCount (montMulSub M p)=380959)`。

```lean
theorem montControlledAdapter_counts (c : Wire) (M : MontLayout) (p : Nat)
    (hw : M.Widths) (hnd : (c::M.wires).Nodup)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montMulControlledAdd c M p)=380959 ∧ measurementCount (montMulControlledAdd c M p)=380447) ∧ (toffoliCount (montMulControlledSub c M p)=381471 ∧ measurementCount (montMulControlledSub c M p)=380959)`。

```lean
theorem middle_union (S T O : Finset Wire) (hlo : O⊆T) (hup : T⊆S∪O)
```

证明了 `S∪T∪S` 等于 `S∪O`。

```lean
theorem montAdapter_wires (M : MontLayout) (p : Nat) (hw : M.Widths)
```

证明了三个中段都完整触及输出；其余线路均来自P/Q已有工作区。

```lean
theorem montControlledAdapter_wires (c : Wire) (M : MontLayout) (p : Nat) (hw : M.Widths)
```

证明了程序实际触及的线路集合：`wires (montMulControlledAdd c M p)=(c::M.x.take 256++M.y++M.out++M.work).toFinset ∧ wires (montMulControlledSub c M p)=(c::M.x.take 256++M.y++M.out++M.work).toFinset`。

```lean
theorem montAdapter_qubits (M : MontLayout) (p : Nat) (hw : M.Widths) (hnd : M.wires.Nodup)
```

证明了所列程序的精确资源关系：`qubitCount (montMulXor M p)=2596 ∧ qubitCount (montMulAdd M p)=2596 ∧ qubitCount (montMulSub M p)=2596`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem montControlledAdapter_qubits (c : Wire) (M : MontLayout) (p : Nat)
    (hw : M.Widths) (hnd : (c::M.wires).Nodup)
```

证明了所列程序的精确资源关系：`qubitCount (montMulControlledAdd c M p)=2597 ∧ qubitCount (montMulControlledSub c M p)=2597`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

## [MontAdapterSpec.lean](MontAdapterSpec.lean)

这个文件证明两段准备和恢复之间的输出更新，给出五种标准模乘适配器规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem pow256_lt_pow257
```

证明了相应数值或范围条件：`(2:Nat)^256<2^257`。

```lean
theorem prepared_preserved (M : MontLayout) (p X Y : Nat) (hnd : M.wires.Nodup)
    (s t : BasisState) (h : MontPrepared M p X Y s)
    (he : ∀w, w∉M.out → t w=s w)
```

证明了操作后满足对应的寄存器状态或保持断言：`MontPrepared M p X Y t`。

```lean
theorem montSandwich_spec (M : MontLayout) (p X Y O V : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (middle : Program)
    (hmid : ∀s m, MontPrepared M p X Y s.basis → regValue M.out s.basis=O →
      (run middle m s).phase=s.phase ∧
      (∀w, w∉M.out → (run middle m s).basis w=s.basis w) ∧
      regValue M.out (run middle m s).basis=V)
```

证明了中段只更新输出即可复用完整P/Q；此组合引理不增加程序或状态抽象。

```lean
theorem montMulXor_spec (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256)
```

证明了任意257位输出的标准模积XOR，全部历史由Q清空。

```lean
theorem montMulAdd_spec (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p)
```

证明了执行 `montMulAdd M p` 时，寄存器初态满足 `M.x=X,M.y=Y,M.out=O,M.work=0` 就能得到 `M.x=X,M.y=Y,M.out=(O+(X*Y)%p)%p,M.work=0`，并恢复相位。

```lean
theorem montMulSub_spec (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p)
```

证明了执行 `montMulSub M p` 时，寄存器初态满足 `M.x=X,M.y=Y,M.out=O,M.work=0` 就能得到 `M.x=X,M.y=Y,M.out=(O+p-(X*Y)%p)%p,M.work=0`，并恢复相位。

```lean
theorem montControlledSandwich_spec (c : Wire) (B : Bool) (M : MontLayout) (p X Y O V : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (middle : Program)
    (hmid : ∀s m, s.basis c=B → MontPrepared M p X Y s.basis → regValue M.out s.basis=O →
      (run middle m s).phase=s.phase ∧
      (∀w, w∉M.out → (run middle m s).basis w=s.basis w) ∧
      regValue M.out (run middle m s).basis=V)
```

证明了执行 `montP M p ++ middle ++ montQ M p` 时，寄存器初态满足 `c=B,M.x=X,M.y=Y,M.out=O,M.work=0` 就能得到 `c=B,M.x=X,M.y=Y,M.out=V,M.work=0`，并恢复相位。

```lean
theorem montMulControlledAdd_spec (c : Wire) (B : Bool) (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p)
```

证明了执行 `montMulControlledAdd c M p` 时，寄存器初态满足 `c=B,M.x=X,M.y=Y,M.out=O,M.work=0` 就能得到 `c=B,M.x=X,M.y=Y,M.out=(if B then (O+(X*Y)%p)%p else O),M.work=0`，并恢复相位。

```lean
theorem montMulControlledSub_spec (c : Wire) (B : Bool) (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p)
```

证明了执行 `montMulControlledSub c M p` 时，寄存器初态满足 `c=B,M.x=X,M.y=Y,M.out=O,M.work=0` 就能得到 `c=B,M.x=X,M.y=Y,M.out=(if B then (O+p-(X*Y)%p)%p else O),M.work=0`，并恢复相位。

## [MontBorrow.lean](MontBorrow.lean)

这个文件从连续借用空间构造 Montgomery 布局，并证明端口、位宽和线路互异性。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def borrowedMont (B : List Wire) (fallback : Wire) (k : Nat) (x y out : List Wire) : MontLayout
```

在已清零借用区的连续片段放置既有1827位Montgomery布局。

```lean
theorem borrowedMont_widths (B : List Wire) (fallback : Wire) (k : Nat) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=256) (ho : out.length=257)
```

证明了 `(borrowedMont B fallback k x y out).Widths`，即相应布局满足所需位宽条件。

```lean
theorem borrowedMont_prefix (B : List Wire) (fallback : Wire) (k : Nat) (x y out : List Wire)
    (hk : k+1827≤B.length)
```

证明了 `B.take k ++ (borrowedMont B fallback k x y out).work` 等于 `B.take (k+1827)`。

## [MontConstant.lean](MontConstant.lean)

这个文件证明 Montgomery 累加器与经典常量加减时的结果和状态保持。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montConstantUpdate_correct (subtract : Bool) (L : MontStageLayout) (K : Nat)
    (hnd : (L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : K<2^L.table.length) (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hca : regValue L.carry s.basis=0)
    (hci : s.basis L.cin=false)
```

证明了常量装载、加减及清理组合将 K 加到或减自累加器，并按寄存器位宽截断；保持累加器外基态位与相位。

```lean
theorem montConstantAdd_correct (L : MontStageLayout) (K : Nat)
    (hnd : (L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : K<2^L.table.length) (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hca : regValue L.carry s.basis=0)
    (hci : s.basis L.cin=false)
```

证明了执行后相位恢复，并满足所列寄存器更新和其他线路保持关系：`(run (montConstantAdd L K) m s).phase=s.phase ∧ (∀ w, w∉L.acc → (run (montConstantAdd L K) m s).basis w=s.basis w) ∧ regValue L.acc (run (montConstantAdd L K) m s).basis=(regValue L.acc s.basis+K)%2^L.acc.length`。

```lean
theorem montConstantSub_correct (L : MontStageLayout) (K : Nat)
    (hnd : (L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : K<2^L.table.length) (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hca : regValue L.carry s.basis=0)
    (hci : s.basis L.cin=false)
```

证明了累加器减去 K 后按位宽截断，累加器外基态位与相位保持不变。

## [MontCounts.lean](MontCounts.lean)

这个文件证明 Montgomery 查询、窗口、轮次和规范化步骤的门数与测量数。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montLookup_counts (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hw : L.Widths) (ha : addr.length=4)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (montLookup L addr K)=14 ∧ measurementCount (montLookup L addr K)=14`。

```lean
theorem montLookupUpdate_counts (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hw : L.Widths) (ha : addr.length=4)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montLookupAdd L addr K)=288 ∧ measurementCount (montLookupAdd L addr K)=288) ∧ (toffoliCount (montLookupSub L addr K)=288 ∧ measurementCount (montLookupSub L addr K)=288)`。

```lean
theorem montReduce_counts (L : MontStageLayout) (p i : Nat) (hw : L.Widths) (hi : i<64)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montReduce L p i)=288 ∧ measurementCount (montReduce L p i)=288) ∧ (toffoliCount (montRestoreReduce L p i)=288 ∧ measurementCount (montRestoreReduce L p i)=288)`。

```lean
theorem montNormalize_counts (L : MontStageLayout) (p : Nat) (hw : L.Widths)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montNormalize L p)=520 ∧ measurementCount (montNormalize L p)=520) ∧ (toffoliCount (montDenormalize L p)=520 ∧ measurementCount (montDenormalize L p)=520)`。

```lean
theorem montDigit_counts (L : MontStageLayout) (x y : List Wire) (i : Nat)
    (hw : L.Widths) (hx : 256≤x.length)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montAddDigit L x y i)=2084 ∧ measurementCount (montAddDigit L x y i)=2084) ∧ (toffoliCount (montSubDigit L x y i)=2084 ∧ measurementCount (montSubDigit L x y i)=2084)`。

```lean
theorem montWindow_counts (L : MontStageLayout) (x y : List Wire) (p i : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hi : i<64)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montWindow L x y p i)=2372 ∧ measurementCount (montWindow L x y p i)=2372) ∧ (toffoliCount (montRestoreWindow L x y p i)=2372 ∧ measurementCount (montRestoreWindow L x y p i)=2372)`。

```lean
theorem constWindow_counts (L : MontStageLayout) (y : List Wire) (p K i : Nat)
    (hw : L.Widths) (hy : 256≤y.length) (hi : i<64)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (constMontWindow L y p K i)=576 ∧ measurementCount (constMontWindow L y p K i)=576) ∧ (toffoliCount (constMontRestoreWindow L y p K i)=576 ∧ measurementCount (constMontRestoreWindow L y p K i)=576)`。

```lean
theorem montRounds_counts (L : MontStageLayout) (x y : List Wire) (p k : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hk : k≤64)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montPrepareRounds L x y p k)=2372*k ∧ measurementCount (montPrepareRounds L x y p k)=2372*k) ∧ (toffoliCount (montRestoreRounds L x y p k)=2372*k ∧ measurementCount (montRestoreRounds L x y p k)=2372*k)`。

```lean
theorem constRounds_counts (L : MontStageLayout) (y : List Wire) (p K k : Nat)
    (hw : L.Widths) (hy : 256≤y.length) (hk : k≤64)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (constPrepareRounds L y p K k)=576*k ∧ measurementCount (constPrepareRounds L y p K k)=576*k) ∧ (toffoliCount (constRestoreRounds L y p K k)=576*k ∧ measurementCount (constRestoreRounds L y p K k)=576*k)`。

```lean
theorem montStage_counts (L : MontStageLayout) (x y : List Wire) (p : Nat) (hw : L.Widths) (hx : 256≤x.length)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (montPrepare L x y p)=152328 ∧ measurementCount (montPrepare L x y p)=152328) ∧ (toffoliCount (montRestore L x y p)=152328 ∧ measurementCount (montRestore L x y p)=152328)`。

```lean
theorem constStage_counts (L : MontStageLayout) (y : List Wire) (p K : Nat) (hw : L.Widths) (hy : 256≤y.length)
```

证明了所列程序的门数或测量次数满足 `(toffoliCount (constPrepare L y p K)=37384 ∧ measurementCount (constPrepare L y p K)=37384) ∧ (toffoliCount (constRestore L y p K)=37384 ∧ measurementCount (constRestore L y p K)=37384)`。

```lean
theorem montPQ_counts (M : MontLayout) (p : Nat) (hw : M.Widths)
```

证明了P/Q 同一前向门列的精确计数，包含全部标准表示转换和恢复。

## [MontDigit.lean](MontDigit.lean)

这个文件证明变量 Montgomery 窗口的逐位受控加减与掩码清理。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem mont_bit_mem (r : List Wire) (i : Nat) (fallback : Wire) (hi : i<r.length)
```

证明了 `r.getD i fallback` 属于 `r`。

```lean
theorem mont_source_value (L : MontStageLayout) (x : List Wire) (j X : Nat)
    (hj : j≤5) (hp : L.pad.length=5) (hx : 256≤x.length) (hX : X<2^256)
    (s : BasisState) (hpad : regValue L.pad s=0) (hv : regValue x s=X)
```

证明了 `regValue (L.source x j) s` 等于 `2^j*X`。

```lean
theorem maskedDigit_correct (subtract : Bool) (c cin : Wire) (src mask acc carry : List Wire)
    (hnd : (c::cin::(src++mask++acc++carry)).Nodup)
    (hs : src.length=mask.length) (ht : mask.length=acc.length) (hc : carry.length+1=acc.length)
    (s : State) (m : List Bool) (hz : regValue mask s.basis=0)
    (hca : regValue carry s.basis=0) (hci : s.basis cin=false)
```

证明了控制开启时向累加器加上或减去源值，关闭时不改变累加器；结果按位宽截断，其他基态位与相位保持不变。

```lean
theorem montBit_correct (subtract : Bool) (L : MontStageLayout) (x y : List Wire)
    (i j X Y : Nat) (hj : j<4) (hi : 4*i+j<y.length)
    (hnd : (L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)).Nodup)
    (hx : 256≤x.length) (hpad : L.pad.length=5) (hm : L.mask.length=261)
    (hw : L.acc.length=261) (hc : L.carry.length=260) (hX : X<2^256)
    (s : State) (m : List Bool) (hvx : regValue x s.basis=X) (hvy : regValue y s.basis=Y)
    (hpz : regValue L.pad s.basis=0) (hmz : regValue L.mask s.basis=0)
    (hcz : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了按乘数的第 4i+j 位，向累加器加上或减去 X·2^j，结果对 2^261 取模；保持累加器外基态位与相位。

```lean
theorem mont_digit_step (Y i k : Nat)
```

证明了 `(Y/2^(4*i))%2^(k+1)` 等于 `(Y/2^(4*i))%2^k+2^k*((Y/2^(4*i+k))%2)`。

```lean
theorem mont_digit_fit (Y i k X U : Nat) (hk : k≤4) (hf : U+16*X<2^261)
```

证明了相应数值或范围条件：`U+X*((Y/2^(4*i))%2^k)<2^261`。

```lean
theorem montAddBits_correct (L : MontStageLayout) (x y : List Wire)
    (i k X Y U : Nat) (hk : k≤4) (hi : 4*i+4≤y.length)
    (hnd : (L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)).Nodup)
    (hx : 256≤x.length) (hpad : L.pad.length=5) (hm : L.mask.length=261)
    (hw : L.acc.length=261) (hc : L.carry.length=260) (hX : X<2^256) (hfit : U+16*X<2^261)
    (s : State) (m : List Bool) (hvx : regValue x s.basis=X) (hvy : regValue y s.basis=Y)
    (hva : regValue L.acc s.basis=U) (hpz : regValue L.pad s.basis=0) (hmz : regValue L.mask s.basis=0)
    (hcz : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了累加当前窗口前 k 位的乘积贡献后，累加器为 U + X·((Y / 2^(4i)) mod 2^k)，保持其他基态位与相位。

```lean
theorem montSubBits_correct (L : MontStageLayout) (x y : List Wire)
    (i k X Y U : Nat) (hk : k≤4) (hi : 4*i+4≤y.length)
    (hnd : (L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)).Nodup)
    (hx : 256≤x.length) (hpad : L.pad.length=5) (hm : L.mask.length=261)
    (hw : L.acc.length=261) (hc : L.carry.length=260) (hX : X<2^256) (hfit : U+16*X<2^261)
    (s : State) (m : List Bool) (hvx : regValue x s.basis=X) (hvy : regValue y s.basis=Y)
    (hva : regValue L.acc s.basis=U+X*((Y/2^(4*i))%2^k)) (hpz : regValue L.pad s.basis=0) (hmz : regValue L.mask s.basis=0)
    (hcz : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了逆序减去窗口前 k 位的乘积贡献后，累加器恢复 U，保持其他基态位与相位。

```lean
theorem montAddDigit_correct (L : MontStageLayout) (x y : List Wire)
    (i X Y U : Nat) (hi : 4*i+4≤y.length)
    (hnd : (L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)).Nodup)
    (hx : 256≤x.length) (hpad : L.pad.length=5) (hm : L.mask.length=261)
    (hw : L.acc.length=261) (hc : L.carry.length=260) (hX : X<2^256) (hfit : U+16*X<2^261)
    (s : State) (m : List Bool) (hvx : regValue x s.basis=X) (hvy : regValue y s.basis=Y)
    (hva : regValue L.acc s.basis=U) (hpz : regValue L.pad s.basis=0) (hmz : regValue L.mask s.basis=0)
    (hcz : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了变量窗口的四次受控Add，只改变累加器并清临时字。

```lean
theorem montSubDigit_correct (L : MontStageLayout) (x y : List Wire)
    (i X Y U : Nat) (hi : 4*i+4≤y.length)
    (hnd : (L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)).Nodup)
    (hx : 256≤x.length) (hpad : L.pad.length=5) (hm : L.mask.length=261)
    (hw : L.acc.length=261) (hc : L.carry.length=260) (hX : X<2^256) (hfit : U+16*X<2^261)
    (s : State) (m : List Bool) (hvx : regValue x s.basis=X) (hvy : regValue y s.basis=Y)
    (hva : regValue L.acc s.basis=U+X*((Y/16^i)%16)) (hpz : regValue L.pad s.basis=0) (hmz : regValue L.mask s.basis=0)
    (hcz : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了变量窗口的四次受控Sub，只改变累加器并清临时字。

## [MontHistory.lean](MontHistory.lean)

这个文件证明 Montgomery 商记录的读取、写入及恢复所需的数值关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem mont_drop_value (r : List Wire) (n : Nat) (hn : n≤r.length) (s : BasisState)
```

证明了 `regValue (r.drop n) s` 等于 `regValue r s/2^n`。

```lean
theorem mont_replace_value (r : List Wire) (n k : Nat) (hn : n+k≤r.length) (hnd : r.Nodup)
    (s t : BasisState) (hkeep : ∀ w∈r, w∉(r.drop n).take k → t w=s w)
```

证明了修改连续一段寄存器时，其余两段由逐线保持决定；历史按小端整数记录。

```lean
theorem montgomeryQuotient_bound (p X Y k : Nat)
```

证明了前 k 个四位记录的整数恰为已定义的修正系数 Q_k，始终装得下 k 个窗口。

## [MontLayout.lean](MontLayout.lean)

这个文件定义两段 Montgomery 的共享工作区和独立历史，及完整准备、恢复程序。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure MontLayout
```

两段只分配一份临时工作区，各自保存累加器、记录带和借位。 `MontLayout` 定义为 `x`、`y`、`out`、`first`、`z`、`hZ`、`fZ` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.MontLayout` 命名空间。

```lean
def a (M : MontLayout) : List Wire
```

取出`a` 对应的数据或线路，对应 `M.first.acc`。

```lean
def hA (M : MontLayout) : List Wire
```

取出第一段商记录，对应 `M.first.history`。

```lean
def fA (M : MontLayout) : Wire
```

取出第一段约减标志，对应 `M.first.flag`。

```lean
def shared (M : MontLayout) : List Wire
```

取出共享工作区，对应 `M.first.work`。

```lean
def second (M : MontLayout) : MontStageLayout
```

构造第二段 Montgomery的布局视图，复用现有寄存器和线路。

```lean
def activeA (M : MontLayout) : List Wire
```

给出第一段累加器及历史，由 `M.a++M.hA++[M.fA]` 组成。

```lean
def activeZ (M : MontLayout) : List Wire
```

给出第二段累加器及历史，由 `M.z++M.hZ++[M.fZ]` 组成。

```lean
def work (M : MontLayout) : List Wire
```

给出工作区，由 `M.activeA++M.activeZ++M.shared` 组成。

```lean
def wires (M : MontLayout) : List Wire
```

给出布局的全部线路，由 `M.x++M.y++M.out++M.work` 组成。

```lean
structure Widths (M : MontLayout) : Prop
```

位宽条件。 `Widths` 定义为 `x`、`y`、`out`、`first`、`z`、`hZ` 各部分。

```lean
theorem second_widths (M : MontLayout) (hw : M.Widths)
```

证明了 `M.second.Widths`，即相应布局满足所需位宽条件。

```lean
theorem first_nodup (M : MontLayout) (hnd : M.wires.Nodup)
```

证明了 `(M.x++M.y++M.first.wires)` 中的线路互不重复。

```lean
theorem second_nodup (M : MontLayout) (hnd : M.wires.Nodup)
```

证明了 `(M.a++M.second.wires)` 中的线路互不重复。

```lean
theorem first_disjoint (M : MontLayout) (hnd : M.wires.Nodup)
```

证明了 `(M.x++M.y++M.out++M.activeZ++M.shared)` 与 `M.activeA` 没有共用线路。

```lean
theorem second_disjoint (M : MontLayout) (hnd : M.wires.Nodup)
```

证明了 `(M.x++M.y++M.out++M.activeA++M.shared)` 与 `M.activeZ` 没有共用线路。

```lean
theorem work_clean (M : MontLayout) (s : BasisState) (h : regValue M.work s=0)
    (r : List Wire) (hr : r⊆M.work)
```

证明了 `regValue r s` 等于 `0`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure MontPrepared (M : MontLayout) (p X Y : Nat) (s : BasisState) : Prop
```

内部准备后的完整寄存器契约；历史与借位不是空工作位。 `MontPrepared` 定义为 `x`、`y`、`a`、`z`、`hA`、`hZ`、`fA`、`fZ`、`shared` 各部分。

```lean
def montP (M : MontLayout) (p : Nat) : Program
```

先准备变量 Montgomery 段，再准备常数转换段，得到标准模积并保留两段历史。

```lean
def montQ (M : MontLayout) (p : Nat) : Program
```

先恢复常数转换段，再恢复变量段，清除准备时保留的历史。

## [MontLookup.lean](MontLookup.lean)

这个文件证明四位查表及其加减组合的结果、清理和保持性质。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem subInPlace_frame (x y carry : List Wire) (cin : Wire)
    (hnd : (cin::(x++y++carry)).Nodup) (hx : x.length=y.length)
    (hc : carry.length+1=y.length) (s : State) (m : List Bool)
    (hcin : s.basis cin=false) (hcarry : regValue carry s.basis=0)
    (w : Wire) (hw : w∉y)
```

证明了减法也逐线保持目标以外所有位；清零进位仍由同一前向门列证明。

```lean
theorem montLookupUpdate_correct (subtract : Bool) (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hnd : (L.cin::(addr++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (ha : addr.length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : ∀ d<16, d*K<2^L.table.length)
    (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hsc : regValue L.scratch s.basis=0)
    (hca : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了查表加法以 addr 为只读输入，仅改变 acc；table/scratch/carry 全部回零。

```lean
theorem montLookupAdd_correct (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hnd : (L.cin::(addr++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (ha : addr.length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : ∀ d<16, d*K<2^L.table.length)
    (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hsc : regValue L.scratch s.basis=0)
    (hca : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了查表Add更新仅改变 acc，并清空查表和算术工作区。

```lean
theorem montLookupSub_correct (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hnd : (L.cin::(addr++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (ha : addr.length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : ∀ d<16, d*K<2^L.table.length)
    (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hsc : regValue L.scratch s.basis=0)
    (hca : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
```

证明了查表Sub更新仅改变 acc，并清空查表和算术工作区。

## [MontNormalize.lean](MontNormalize.lean)

这个文件证明 Montgomery 最终约减到规范范围及其逆向恢复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem maskedConstant_frame (subtract : Bool) (L : MontStageLayout) (K : Nat)
    (hnd : (L.flag::L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : K<2^L.table.length) (s : State) (m : List Bool)
    (hz : regValue L.table s.basis=0) (hca : regValue L.carry s.basis=0)
    (hci : s.basis L.cin=false)
```

证明了标志开启时向累加器加上或减去 K，关闭时累加器不变；结果按位宽截断，其他基态位与相位保持不变。

```lean
theorem montNormalize_arithmetic (p A : Nat) (hp : p<2^256) (hA : A<2*p)
```

证明了W=261 时，a<2p、p<2^256 保证减 p 的最高位恰为借位。

```lean
theorem montNormalize_correct (L : MontStageLayout) (p A : Nat)
    (hnd : (L.flag::L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hw : L.acc.length=261) (hp : p<2^256) (hA : A<2*p)
    (s : State) (m : List Bool) (ha : regValue L.acc s.basis=A)
    (hz : regValue L.table s.basis=0) (hca : regValue L.carry s.basis=0)
    (hci : s.basis L.cin=false) (hf : s.basis L.flag=false)
```

证明了保存借位的规范化：仅 acc/flag 改变，flag 记录 A<p，其他位逐线保持。

```lean
theorem montDenormalize_arithmetic (p A : Nat) (hp : p<2^256) (hA : A<2*p)
```

证明了相应数值或范围条件：`((A%p+2^261-(if A<p then p else 0))%2^261)=(A+2^261-p)%2^261 ∧ (((A+2^261-p)%2^261)+p)%2^261=A`。

```lean
theorem montDenormalize_correct (L : MontStageLayout) (p A : Nat)
    (hnd : (L.flag::L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hw : L.acc.length=261) (hp : p<2^256) (hA : A<2*p)
    (s : State) (m : List Bool) (ha : regValue L.acc s.basis=A%p)
    (hz : regValue L.table s.basis=0) (hca : regValue L.carry s.basis=0)
    (hci : s.basis L.cin=false) (hf : s.basis L.flag=decide (A<p))
```

证明了使用已保存借位恢复 A，并将 flag 清零；仍只改变 acc/flag。

## [MontPQ.lean](MontPQ.lean)

这个文件组合两段 Montgomery，证明得到普通模积并能按历史恢复工作区。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montP_correct (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (s : State) (m : List Bool)
    (vx : regValue M.x s.basis=X) (vy : regValue M.y s.basis=Y) (vw : regValue M.work s.basis=0)
```

证明了P 在一份共享工作区上依次准备变量段和常数转换段，保存两套历史。

```lean
theorem montQ_correct (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (s : State) (m : List Bool) (h : MontPrepared M p X Y s.basis)
```

证明了Q 按相反段序执行新的前向门列，消费两条历史并清空整个分配工作区。

```lean
theorem montP_spec (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hY : Y<2^256)
```

证明了P 的内部 Triple：输入为规范 X 和任意256位 Y，所有工作位从零开始。

```lean
theorem montQ_spec (M : MontLayout) (p X Y : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hY : Y<2^256)
```

证明了Q 只消费准备契约，不要求输出寄存器为零，供五个适配器共同复用。

## [MontPrepare.lean](MontPrepare.lean)

这个文件定义单段 Montgomery 的布局、窗口、规范化和准备恢复程序。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure MontStageLayout
```

一个 Montgomery 段；另一段复用 table/mask/carry/pad/scratch，保留各自 acc/history/flag。 `MontStageLayout` 定义为 `acc`、`history`、`flag`、`table`、`mask`、`carry`、`cin`、`pad`、`scratch` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.MontStageLayout` 命名空间。

```lean
def work (L : MontStageLayout) : List Wire
```

给出工作区，由 `L.table++L.mask++L.carry++[L.cin]++L.pad++L.scratch` 组成。

```lean
def wires (L : MontStageLayout) : List Wire
```

给出布局的全部线路，由 `L.acc++L.history++[L.flag]++L.work` 组成。

```lean
structure Widths (L : MontStageLayout) : Prop
```

位宽条件。 `Widths` 定义为 `acc`、`history`、`table`、`mask`、`carry`、`pad`、`scratch` 各部分。

```lean
def record (L : MontStageLayout) (i : Nat) : List Wire
```

窗口 i 的独立四位记录。

```lean
def source (L : MontStageLayout) (x : List Wire) (j : Nat) : List Wire
```

移位源只用 x 的低256位，五根互异的零 pad 各出现一次。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def montLookup (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program
```

四位列表查表入口；空地址的语法分支被长度前提排除。

```lean
def montLookupAdd (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program
```

查表值加进累加器，再用同一前向查表清空 table。

```lean
def montLookupSub (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program
```

查表装入常量倍数，从累加器减去该值，再清除查表寄存器。

```lean
def montReduce (L : MontStageLayout) (p i : Nat) : Program
```

保存约减系数，加入 m*p 后物理右旋四位。

```lean
def montRestoreReduce (L : MontStageLayout) (p i : Nat) : Program
```

左旋恢复和，减去记录的 m*p，随后由恢复的低四位清记录。

```lean
def montAddDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program
```

逐位加入一个变量四位窗口；控制值不改变门列。

```lean
def montSubDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program
```

按 j=3..0 执行前向减法，并非反转测量。

```lean
def montWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program
```

执行变量乘积窗口累加，随后完成四位 Montgomery 约减。

```lean
def montRestoreWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program
```

先恢复四位约减，再减去该变量窗口的贡献。

```lean
def constMontWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program
```

按当前四位地址查表累加常数倍数，再执行 Montgomery 约减。

```lean
def constMontRestoreWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program
```

恢复约减后，查表减去该常数窗口的贡献。

```lean
def montConstantAdd (L : MontStageLayout) (K : Nat) : Program
```

装入经典常量，加到累加器后清除常量寄存器。

```lean
def montConstantSub (L : MontStageLayout) (K : Nat) : Program
```

装入经典常量，从累加器减去后清除常量寄存器。

```lean
def montNormalize (L : MontStageLayout) (p : Nat) : Program
```

减 p 后保存借位，条件加回 p；保留 flag 到清理阶段。

```lean
def montDenormalize (L : MontStageLayout) (p : Nat) : Program
```

先按保留借位减 p，再清 flag、加 p，恢复未经约减的累加器。

```lean
def montPrepareRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) : Nat → Program
```

按递增窗口编号执行指定次数的变量 Montgomery 窗口。

```lean
def montRestoreRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) : Nat → Program
```

按反向窗口编号恢复指定次数的变量 Montgomery 窗口。

```lean
def constPrepareRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) : Nat → Program
```

按递增窗口编号执行指定次数的常数 Montgomery 窗口。

```lean
def constRestoreRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) : Nat → Program
```

按反向窗口编号恢复指定次数的常数 Montgomery 窗口。

```lean
def montPrepare (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program
```

执行 64 个变量窗口，再将累加器规范化为模数范围内的结果。

```lean
def montRestore (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program
```

先撤销最终规范化，再恢复 64 个变量窗口。

```lean
def constPrepare (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program
```

执行 64 个常数转换窗口，再规范化结果。

```lean
def constRestore (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program
```

先撤销最终规范化，再恢复 64 个常数转换窗口。

## [MontReduce.lean](MontReduce.lean)

这个文件证明四位约减的商记录、模数修正、旋转与恢复步骤。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem mont_low_value (r : List Wire) (n : Nat) (hn : n≤r.length) (s : BasisState)
```

证明了固定寄存器低位的数值，不依赖重命名或额外复制。

```lean
theorem montReduce_correct (L : MontStageLayout) (p i U : Nat)
    (hnd : (L.cin::(L.record i++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (hr : (L.record i).length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hw : L.acc.length=261) (hp : p%16=15)
    (hK : ∀ d<16, d*p<2^L.table.length) (hfit : U+(U%16)*p<2^261)
    (s : State) (m : List Bool) (ha : regValue L.acc s.basis=U)
    (hz : regValue L.table s.basis=0) (hsc : regValue L.scratch s.basis=0)
    (hca : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
    (hrec : regValue (L.record i) s.basis=0)
```

证明了单次约减记录低四位，查表加修正项，并实际右旋四位。

```lean
theorem montRestoreReduce_correct (L : MontStageLayout) (p i U : Nat)
    (hnd : (L.cin::(L.record i++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (hr : (L.record i).length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hw : L.acc.length=261) (hp : p%16=15)
    (hK : ∀ d<16, d*p<2^L.table.length) (hfit : U+(U%16)*p<2^261)
    (s : State) (m : List Bool) (ha : regValue L.acc s.basis=(U+(U%16)*p)/16)
    (hz : regValue L.table s.basis=0) (hsc : regValue L.scratch s.basis=0)
    (hca : regValue L.carry s.basis=0) (hci : s.basis L.cin=false)
    (hrec : regValue (L.record i) s.basis=U%16)
```

证明了逆序约减以保存的低四位为契约，恢复 U 后清记录。

## [MontResources.lean](MontResources.lean)

这个文件汇总两段 Montgomery 准备和恢复的精确资源。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem MontLayout.work_length (M : MontLayout) (hw : M.Widths)
```

证明了寄存器或线路列表的长度关系：`M.work.length=1827`。

```lean
theorem montPQ_resources (M : MontLayout) (p : Nat) (hw : M.Widths) (hnd : M.wires.Nodup)
```

证明了输出字不计入 P/Q 的实际支持；布局中的高位 X 也不计入。

## [MontRotate.lean](MontRotate.lean)

这个文件证明 Montgomery 约减使用的循环位移及高低位数值关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def rotateRightBits (r : List Wire) : Nat → Program
```

同一物理寄存器连续右旋 k 位；不改变寄存器视图。

```lean
def rotateLeftBits (r : List Wire) : Nat → Program
```

无测量相邻交换的左旋，用于恢复窗口约减前的数值。

```lean
theorem rotateBits_counts (r : List Wire) (k : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (rotateRightBits r k)=0 ∧ measurementCount (rotateRightBits r k)=0 ∧ toffoliCount (rotateLeftBits r k)=0 ∧ measurementCount (rotateLeftBits r k)=0`。

```lean
theorem rotateBits_frame (r : List Wire) (k : Nat) (s : State) (m : List Bool)
```

证明了左右循环移位均保持寄存器之外的基态位及相位。

```lean
theorem rotateRightBits_spec (r : List Wire) (k X : Nat) (hnd : r.Nodup)
    (hdiv : X%2^k=0)
```

证明了执行 `rotateRightBits r k` 时，寄存器初态满足 `r=X` 就能得到 `r=(X/2^k)`，并恢复相位。

```lean
theorem rotateLeftBits_spec (r : List Wire) (k X : Nat) (hnd : r.Nodup)
    (hfit : 2^k*X<2^r.length)
```

证明了执行 `rotateLeftBits r k` 时，寄存器初态满足 `r=X` 就能得到 `r=(2^k*X)`，并恢复相位。

## [MontRounds.lean](MontRounds.lean)

这个文件证明变量 Montgomery 多轮计算和恢复符合数学递推。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montPrepareRounds_correct (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0) (vw : regValue L.work s.basis=0)
```

证明了k轮后，累加器和整条历史分别等于 a_k 与 Q_k。

```lean
theorem montRestoreRounds_correct (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k)
    (vh : regValue L.history s.basis=montgomeryQuotient p X Y k) (vw : regValue L.work s.basis=0)
```

证明了以同一 a_k/Q_k 关系为前提逆序执行，清空累加器与整条历史。

## [MontStagePorts.lean](MontStagePorts.lean)

这个文件证明单段 Montgomery 布局中各算术接口的位宽、互异性和保持范围。

以下声明位于 `ECDSAAdd.Arithmetic.MontStageLayout` 命名空间。

```lean
theorem record_sublist (L : MontStageLayout) (i : Nat)
```

证明了 `(L.record i)` 是 `L.history` 的子列表，顺序与重复次数均兼容。

```lean
theorem record_length (L : MontStageLayout) (hw : L.Widths) (i : Nat) (hi : i<64)
```

证明了寄存器或线路列表的长度关系：`(L.record i).length=4`。

```lean
theorem digit_nodup (L : MontStageLayout) (x y : List Wire) (hnd : (x++y++L.wires).Nodup)
```

证明了 `(L.cin::(x++y++L.pad++L.mask++L.acc++L.carry))` 中的线路互不重复。

```lean
theorem reduce_nodup (L : MontStageLayout) (x y : List Wire) (i : Nat)
    (hnd : (x++y++L.wires).Nodup)
```

证明了 `(L.cin::(L.record i++L.table++L.acc++L.carry++L.scratch))` 中的线路互不重复。

```lean
theorem normalize_nodup (L : MontStageLayout) (x y : List Wire) (hnd : (x++y++L.wires).Nodup)
```

证明了 `(L.flag::L.cin::(L.table++L.acc++L.carry))` 中的线路互不重复。

```lean
theorem inputs_disjoint (L : MontStageLayout) (x y : List Wire) (hnd : (x++y++L.wires).Nodup)
```

证明了控制输入和临时工作区位于累加器与记录带以外。

```lean
theorem acc_disjoint (L : MontStageLayout) (x y : List Wire) (hnd : (x++y++L.wires).Nodup)
```

证明了 `(x++y++L.history++[L.flag]++L.work)` 与 `L.acc` 没有共用线路。

```lean
theorem history_nodup (L : MontStageLayout) (x y : List Wire) (hnd : (x++y++L.wires).Nodup)
```

证明了 `L.history` 中的线路互不重复。

```lean
theorem work_clean (L : MontStageLayout) (s : BasisState) (h : regValue L.work s=0)
    (r : List Wire) (hr : r⊆L.work)
```

证明了 `regValue r s` 等于 `0`。

```lean
theorem cin_clean (L : MontStageLayout) (s : BasisState) (h : regValue L.work s=0)
```

证明了 `s L.cin` 等于 `false`。

```lean
theorem stable_disjoint (L : MontStageLayout) (x y : List Wire) (hnd : (x++y++L.wires).Nodup)
```

证明了准备/恢复只允许 acc、history、flag 改变。

## [MontStageSpec.lean](MontStageSpec.lean)

这个文件给出变量 Montgomery 前缀及完整阶段的准备、恢复规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montPreparePrefix_correct (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0)
```

证明了变量段公开准备契约：记录带与借位明确保留，临时工作区归零。

```lean
theorem montPreparePrefix_spec (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了变量 Montgomery 准备阶段执行 k 个窗口后，累加器保存规范化结果，历史保存商记录，标志记录规范化前结果是否小于 p；其他基态位及相位保持不变。

```lean
theorem montPrepare_correct (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0)
```

证明了变量 Montgomery 准备阶段执行 64 个窗口后，累加器保存规范化结果，历史保存商记录，标志记录规范化前结果是否小于 p；其他基态位及相位保持不变。

```lean
theorem montPrepare_spec (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了执行 `montPrepare L x y p` 时，寄存器初态满足 `x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0` 就能得到 `x=X,y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide (montgomeryValue p X Y 64<p),L.work=0`，并恢复相位。

```lean
theorem montRestorePrefix_correct (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y k)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y k<p)) (vw : regValue L.work s.basis=0)
```

证明了变量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

```lean
theorem montRestorePrefix_spec (L : MontStageLayout) (x y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了变量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

```lean
theorem montRestore_correct (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y 64%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y 64)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y 64<p)) (vw : regValue L.work s.basis=0)
```

证明了变量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

```lean
theorem montRestore_spec (L : MontStageLayout) (x y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
```

证明了执行 `montRestore L x y p` 时，寄存器初态满足 `x=X,y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide (montgomeryValue p X Y 64<p),L.work=0` 就能得到 `x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0`，并恢复相位。

## [MontWindow.lean](MontWindow.lean)

这个文件证明变量 Montgomery 单个窗口的计算与恢复结果。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montWindow_correct (L : MontStageLayout) (x y : List Wire) (p i X Y A H : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hi : i<64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hA : A<2*p) (hH : H<16^i)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=A) (vh : regValue L.history s.basis=H) (vw : regValue L.work s.basis=0)
```

证明了变量窗口同时推进累加器和四位历史整数；不把非零历史当作已清工作区。

```lean
theorem montRestoreWindow_correct (L : MontStageLayout) (x y : List Wire) (p i X Y A H : Nat)
    (hw : L.Widths) (hnd : (x++y++L.wires).Nodup) (hx : 256≤x.length) (hy : 256≤y.length)
    (hi : i<64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) (hA : A<2*p) (hH : H<16^i)
    (s : State) (m : List Bool) (vx : regValue x s.basis=X) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryStep p A X ((Y/16^i)%16)) (vh : regValue L.history s.basis=H+16^i*((A+((Y/16^i)%16)*X)%16)) (vw : regValue L.work s.basis=0)
```

证明了恢复窗口以累加器与整条历史的精确关系为前提。

## [MontWires.lean](MontWires.lean)

这个文件证明 Montgomery 各步骤和完整两段程序的实际线路支持。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem montLookup_bounds (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hw : L.Widths) (ha : addr.length=4)
```

证明了查表必定触及地址和临时工作线，且不会触及地址、临时工作区与查表输出以外的线路。

```lean
theorem montLookupUpdate_wires (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hw : L.Widths) (ha : addr.length=4)
```

证明了程序实际触及的线路集合：`wires (montLookupAdd L addr K)=(L.cin::addr++L.scratch++L.table++L.acc++L.carry).toFinset ∧ wires (montLookupSub L addr K)=(L.cin::addr++L.scratch++L.table++L.acc++L.carry).toFinset`。

```lean
theorem rotateBits_wires_subset (r : List Wire) (k : Nat)
```

证明了左右循环移位都只操作给定寄存器中的线路。

```lean
theorem montReduce_wires (L : MontStageLayout) (p i : Nat) (hw : L.Widths) (hi : i<64)
```

证明了程序实际触及的线路集合：`wires (montReduce L p i)=(L.cin::L.record i++L.scratch++L.table++L.acc++L.carry).toFinset ∧ wires (montRestoreReduce L p i)=(L.cin::L.record i++L.scratch++L.table++L.acc++L.carry).toFinset`。

```lean
theorem mont_slice_map (r : List Wire) (start k : Nat) (fallback : Wire)
    (hk : start+k≤r.length)
```

证明了 `(List.range k).map (fun j` 等于 `> r.getD (start+j) fallback)=(r.drop start).take k`。

```lean
theorem mont_source_mem (L : MontStageLayout) (x : List Wire) (j : Nat) (w : Wire)
```

证明了两种条件等价，可在相应状态断言或数值条件之间转换：`w∈L.source x j ↔ w∈x.take 256 ∨ w∈L.pad`。

```lean
theorem montDigit_wires (L : MontStageLayout) (x y : List Wire) (i : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hi : 4*i+4≤y.length)
```

证明了四个受控加减的精确支持，包含实际使用的五根零扩展位。

```lean
theorem montWindow_wires (L : MontStageLayout) (x y : List Wire) (p i : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hy : 256≤y.length) (hi : i<64)
```

证明了程序实际触及的线路集合：`wires (montWindow L x y p i)=(x.take 256++(y.drop (4*i)).take 4++L.record i++L.acc++L.work).toFinset ∧ wires (montRestoreWindow L x y p i)=(x.take 256++(y.drop (4*i)).take 4++L.record i++L.acc++L.work).toFinset`。

```lean
theorem constWindow_wires (L : MontStageLayout) (y : List Wire) (p K i : Nat)
    (hw : L.Widths) (hy : 256≤y.length) (hi : i<64)
```

证明了程序实际触及的线路集合：`wires (constMontWindow L y p K i)=((y.drop (4*i)).take 4++L.record i++L.acc++L.table++L.carry++[L.cin]++L.scratch).toFinset ∧ wires (constMontRestoreWindow L y p K i)=((y.drop (4*i)).take 4++L.record i++L.acc++L.table++L.carry++[L.cin]++L.scratch).toFinset`。

```lean
theorem montRounds_wires (L : MontStageLayout) (x y : List Wire) (p k : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hy : 256≤y.length) (hk : k≤64)
```

证明了程序实际触及的线路集合：`wires (montPrepareRounds L x y p k)=(if k=0 then ∅ else (x.take 256++y.take (4*k)++L.history.take (4*k)++L.acc++L.work).toFinset) ∧ wires (montRestoreRounds L x y p k)=(if k=0 then ∅ else (x.take 256++y.take (4*k)++L.history.take (4*k)++L.acc++L.work).toFinset)`。

```lean
theorem constRounds_wires (L : MontStageLayout) (y : List Wire) (p K k : Nat)
    (hw : L.Widths) (hy : 256≤y.length) (hk : k≤64)
```

证明了程序实际触及的线路集合：`wires (constPrepareRounds L y p K k)=(if k=0 then ∅ else (y.take (4*k)++L.history.take (4*k)++L.acc++L.table++L.carry++[L.cin]++L.scratch).toFinset) ∧ wires (constRestoreRounds L y p K k)=(if k=0 then ∅ else (y.take (4*k)++L.history.take (4*k)++L.acc++L.table++L.carry++[L.cin]++L.scratch).toFinset)`。

```lean
theorem montConstant_wires (L : MontStageLayout) (p : Nat) (hw : L.Widths)
```

证明了程序实际触及的线路集合：`wires (montConstantAdd L p)=(L.cin::L.table++L.acc++L.carry).toFinset ∧ wires (montConstantSub L p)=(L.cin::L.table++L.acc++L.carry).toFinset`。

```lean
theorem normalize_support_union (S A B : Finset Wire) (f h : Wire)
    (hh : h∈S) (ha : A⊆insert f S) (hb : B⊆insert f S)
```

证明了在给定包含关系下，规范化所需线路集合可化简为原集合 S 加上标志线 f。

```lean
theorem montNormalize_wires (L : MontStageLayout) (p : Nat) (hw : L.Widths)
```

证明了程序实际触及的线路集合：`wires (montNormalize L p)=(L.flag::L.cin::L.table++L.acc++L.carry).toFinset ∧ wires (montDenormalize L p)=(L.flag::L.cin::L.table++L.acc++L.carry).toFinset`。

```lean
theorem montStage_wires (L : MontStageLayout) (x y : List Wire) (p : Nat)
    (hw : L.Widths) (hx : 256≤x.length) (hy : 256≤y.length)
```

证明了程序实际触及的线路集合：`wires (montPrepare L x y p)=(x.take 256++y.take 256++L.wires).toFinset ∧ wires (montRestore L x y p)=(x.take 256++y.take 256++L.wires).toFinset`。

```lean
theorem constStage_wires (L : MontStageLayout) (y : List Wire) (p K : Nat)
    (hw : L.Widths) (hy : 256≤y.length)
```

证明了程序实际触及的线路集合：`wires (constPrepare L y p K)=(y.take 256++L.acc++L.history++[L.flag]++L.table++L.carry++[L.cin]++L.scratch).toFinset ∧ wires (constRestore L y p K)=(y.take 256++L.acc++L.history++[L.flag]++L.table++L.carry++[L.cin]++L.scratch).toFinset`。

```lean
theorem montPQ_wires (M : MontLayout) (p : Nat) (hw : M.Widths)
```

证明了输出字和 X 的高位从未被 P/Q 触及；实际支持为两个输入低256位和全部工作区。

## [MultiplyPorts.lean](MultiplyPorts.lean)

这个文件将模乘输入输出接入调用方工作池，并证明端口对应、位宽和互异性。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def poolMul (w : Nat → Wire) (x y out : List Wire) : MontLayout
```

两段Montgomery与共享辅助区占池前1827位；历史在输出更新期间存活。

```lean
theorem poolMul_inputs (w : Nat → Wire) (x y out : List Wire)
```

证明了从工作池构造模乘布局保持调用方指定的 x、y、out 端口。

```lean
theorem poolMul_work (w : Nat → Wire) (x y out : List Wire)
```

证明了 `(poolMul w x y out).work` 等于 `wireBlock w 0 1827`。

```lean
theorem poolMul_widths (w : Nat → Wire) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=256) (ho : out.length=257)
```

证明了 `(poolMul w x y out).Widths`，即相应布局满足所需位宽条件。

```lean
theorem poolMul_nodup (w : Nat → Wire) (x y out : List Wire)
    (h : (x++y++out++wireBlock w 0 1827).Nodup)
```

证明了 `(poolMul w x y out).wires` 中的线路互不重复。
