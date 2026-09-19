# 除法累加

本模块通过准备逆元和受控模乘，将模除法结果加到或减出目标寄存器，并恢复求逆历史与工作区。

## 文件目录

以下只列本文件证明的项目，均以对应定理的线路互异、位宽、数值范围和工作区初态等条件为前提。`_spec` 保证对任意测量结果满足后置断言并保持相位；未提及的线路是否保持，需看相应结论。

资源中 T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数；未列出的项不代表零，T=0 也不代表没有其他门。资源公式保留源码参数名，其中 Nat 减法按自然数截断。

[Divide.lean](#dividelean)

这个文件定义除法布局、工作区借用、分母装载与卸载，以及受控除法累加和累减程序。

[DivideLayoutProof.lean](#dividelayoutprooflean)

这个文件证明除法与所借用模乘布局之间的工作区对应及线路互异性。

[DivideLoad.lean](#divideloadlean)

这个文件证明分母装载得到正确求逆初态，包括控制为假时使用安全分母 1。

[DivideProduct.lean](#divideproductlean)

这个文件证明使用已准备逆元执行受控乘积累加时的结果与非目标状态保持。

- 正确性：已准备乘数 X、Y 时，控制开启把 X·Y mod p 模加到或模减自累加器，关闭则累加器不变；累加器外所有位和相位不变。

[DivideResources.lean](#divideresourceslean)

这个文件证明分母装卸和完整除法程序的 Toffoli 门数及测量次数。

- 资源：

  - `divideLoad L` / `divideUnload L`：T = `256`，M = `0`。
  - `divideAdd L`：T = `3895383`，M = `2309207`。
  - `divideSub L`：T = `3895895`，M = `2309719`。

[DivideSpec.lean](#dividespeclean)

这个文件将装载、求逆、乘积和恢复组合成除法加减的完整规格与外部保持结论。

- 规格：分母满足相应非零条件、工作区初始为零时，控制开启将 `D⁻¹·E mod p` 加到或减自 Z，关闭则 Z 不变；保留控制、分母 D 和分子 E，并清零整个工作区。

[DivideState.lean](#dividestatelean)

这个文件连接除法与求逆的初态、中间态断言，并证明历史保持及装卸支持范围。

[DivideSupport.lean](#dividesupportlean)

这个文件确定除法实际使用的线路，证明支持集、互异性和精确线路数。

- 资源：`divideAdd L` / `divideSub L`：Q = `6210`。

## [Divide.lean](Divide.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure DivideLayout
```

除法保留分母/分子，只累加到 acc；inner 的历史保存到乘积清理后。 §16.2 的直接门列；完整规格、逐线保持和资源见 DivideSpec/DivideSupport。 `DivideLayout` 定义为 `control`、`denominator`、`numerator`、`acc`、`inner` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.DivideLayout` 命名空间。

```lean
def work (L : DivideLayout) : List Wire
```

给出工作区，由 `L.inner.wires` 组成。

```lean
def wires (L : DivideLayout) : List Wire
```

给出布局的全部线路，由 `L.control :: L.denominator ++ L.numerator ++ L.acc ++ L.work` 组成。

```lean
def inverseView (L : DivideLayout) : InverseLayout
```

构造外部求逆的布局视图，复用现有寄存器和线路。

```lean
structure Widths (L : DivideLayout) : Prop
```

位宽条件。 `Widths` 定义为 `inverse`、`numerator`、`acc` 各部分。

```lean
def borrow (L : DivideLayout) : List Wire
```

准备后明确为零的两段，排除仍存活的历史和逆元 a。

```lean
def borrowedBit (L : DivideLayout) (i : Nat) : Wire
```

按索引取出借用工作区的线路；位宽条件保证实际调用的索引有效。

```lean
def multiply (L : DivideLayout) : MontLayout
```

输出高位为B[0]，Montgomery工作区借用B[1…1827]。

```lean
def vLow (L : DivideLayout) : List Wire
```

取出输入副本低位，对应 `L.inverseView.vLow`。

```lean
def vBit (L : DivideLayout) : Wire
```

取出输入副本最低位，对应 `L.vLow.headD L.inner.first.high.v`。

```lean
theorem borrow_length (L : DivideLayout) (hw : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.borrow.length=2315`。

```lean
theorem multiply_widths (L : DivideLayout) (hw : L.Widths)
```

证明了 `L.multiply.Widths`，即相应布局满足所需位宽条件。

```lean
theorem vLow_length (L : DivideLayout) (hw : L.Widths)
```

证明了寄存器或线路列表的长度关系：`L.vLow.length=256`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def divideLoad (L : DivideLayout) : Program
```

将安全分母直接写入 Kaliski v：控制为假时写1，不另占Dsafe字。

```lean
def divideUnload (L : DivideLayout) : Program
```

恢复阶段归还同一分母后才能卸载；这里只反排无测量的装载门。

```lean
def divideAdd (L : DivideLayout) : Program
```

acc 加上受控分子/分母；准备、乘积清理、恢复均为显式前向程序。

```lean
def divideSub (L : DivideLayout) : Program
```

acc 减去受控分子/分母；只替换累加中段，不倒放带测量的除法。

## [DivideLayoutProof.lean](DivideLayoutProof.lean)

以下声明位于 `ECDSAAdd.Arithmetic.DivideLayout` 命名空间。

```lean
theorem multiply_borrow (L : DivideLayout) (hw : L.Widths)
```

证明了输出高位与乘法工作区恰为借用区前1828位。

```lean
theorem inner_nodup (L : DivideLayout) (hnd : L.wires.Nodup)
```

证明了 `L.inner.wires` 中的线路互不重复。

```lean
theorem multiply_nodup (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了 `(L.control :: L.multiply.wires)` 中的线路互不重复。

```lean
theorem inverse_nodup (L : DivideLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.control :: L.inverseView.wires)` 中的线路互不重复。

## [DivideLoad.lean](DivideLoad.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem controlled_inverse_constant (L : InverseLayout) (c : Wire)
    (hnd : (c::L.wires).Nodup) (v : InverseField → Nat) (B : Bool)
    (f : InverseField) (k : Nat) (hk : k<2^(L.reg f).length)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (fun st => InverseValues L v st ∧ st c=B) (xorConstant (L.reg f) k) (fun st => InverseValues L (Function.update v f (v f ^^^ k)) st ∧ st c=B)`。

```lean
theorem controlled_inverse_mask (L : InverseLayout) (c : Wire)
    (hnd : (c::L.wires).Nodup) (v : InverseField → Nat) (B : Bool)
    (f : InverseField) (k : Nat) (hk : k<2^(L.reg f).length)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (fun st => InverseValues L v st ∧ st c=B) (maskedConstant c (L.reg f) k) (fun st => InverseValues L (Function.update v f (v f ^^^ (if B then k else 0))) st ∧ st c=B)`。

```lean
theorem controlled_inverse_copy (L : InverseLayout) (c : Wire)
    (hnd : (c::L.wires).Nodup) (hw : L.Widths) (v : InverseField → Nat) (B : Bool)
```

证明了所列程序满足该前后状态规格并恢复相位：`Triple (fun st => InverseValues L v st ∧ st c=B) (copyRegister (some c) L.x L.vLow) (fun st => InverseValues L (Function.update v .v (v .v ^^^ (if B then v .x else 0))) st ∧ st c=B)`。

```lean
theorem constant_one_head (r : List Wire) (d c : Wire) (hne : r≠[])
```

证明了向非空寄存器异或常量 1 只需操作最低位：无控制时使用 X，有控制时使用 CX。

```lean
theorem divideLoad_values (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D : Nat) (B : Bool)
```

证明了装载后 v = D 或1；控制与外部分母保持，卸载归还全零初值。

## [DivideProduct.lean](DivideProduct.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem divideProduct_correct (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (X Y Z : Nat) (B : Bool) (hX : X<p) (hY : Y<2^256) (hZ : Z<p)
    (s : State) (m : List Bool) (hb : s.basis L.control=B)
    (hx : regValue L.inner.a s.basis=X) (hy : regValue L.numerator s.basis=Y)
    (hz : regValue L.acc s.basis=Z) (hc : regValue L.borrow s.basis=0)
```

证明了归还借用的输出高位后，乘积组合只修改256位acc；整个求逆历史逐线保持。

## [DivideResources.lean](DivideResources.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem divideLoad_counts (L : DivideLayout) (hw : L.Widths)
```

证明了直接装卸分母各256个受控复制门，不产生测量。

```lean
theorem divide_counts (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了同一除法门列的精确门数；支持集与公开 Triple 分别证明。

## [DivideSpec.lean](DivideSpec.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem divideInverse_values (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z S : Nat) (B : Bool) (hS0 : 0<S) (hS : S<p)
```

证明了求逆计算与撤销在初态和缩放中间态之间往返，同时保持外部控制、分母、分子、累加器及内部输出零值。

```lean
theorem divideLoad_extra (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool)
```

证明了装载将内部状态设为模数 p、有效分母（控制关闭时为 1）和常量 1；卸载恢复零值，两者保持外部输入、控制与累加器。

```lean
theorem divide_spec (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0)
```

证明了加减除法保留控制、分母、分子，清零全部工作位；只要求启用时分母非零。

```lean
theorem divideAdd_spec (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0)
```

证明了受控除法模加，输入保持且全部工作区清零。

```lean
theorem divideSub_spec (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0)
```

证明了受控除法模减，输入保持且全部工作区清零。

```lean
theorem divide_frame (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (D E Z : Nat) (B : Bool) (hD : D<p) (hE : E<p) (hZ : Z<p) (hD0 : B=true → D≠0)
    (s : State) (m : List Bool) (hb : s.basis L.control=B)
    (hd : regValue L.denominator s.basis=D) (he : regValue L.numerator s.basis=E)
    (hz : regValue L.acc s.basis=Z) (hc : regValue L.work s.basis=0)
    (q : Wire) (hq : q∉L.acc)
```

证明了除法只改变acc；所有输入、控制和工作位逐线恢复。

## [DivideState.lean](DivideState.lean)

以下声明位于 `ECDSAAdd.Arithmetic.DivideLayout` 命名空间。

```lean
theorem inverse_work_perm (L : DivideLayout)
```

证明了 `(L.inverseView.out++L.inverseView.work)` 与 `L.inner.wires` 只是排列顺序不同，保留相同线路及其出现次数。

```lean
theorem external_disjoint (L : DivideLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.control :: L.denominator++L.numerator++L.acc)` 与 `L.inner.wires` 没有共用线路。

```lean
theorem inner_not_acc (L : DivideLayout) (hnd : L.wires.Nodup) {q : Wire} (hq : q∈L.inner.wires)
```

证明了 `q` 不属于 `L.acc`，因此这根线与该区域分离。

```lean
theorem inverse_used_subset (L : DivideLayout)
```

证明了 `L.inner.usedCoreWires` 包含的线路都在 `L.inner.wires` 中。

```lean
theorem acc_disjoint_other (L : DivideLayout) (hnd : L.wires.Nodup)
```

证明了 `(L.control :: L.denominator++L.numerator++L.inner.wires)` 与 `L.acc` 没有共用线路。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem divideZero_iff (L : DivideLayout) (D : Nat) (s : BasisState)
```

证明了空工作区同时包含旧XOR输出银行，后者在新除法中始终保持零。

```lean
theorem divideReady_iff (L : DivideLayout) (hw : L.Widths) (D S : Nat)
    (hS0 : 0<S) (hS : S<2^256) (st : BasisState)
```

证明了外部分母D保持；实际送入求逆的S可为控制假分支使用的1。

```lean
theorem divideMiddle_congr (L : DivideLayout) (S A : Nat) (s t : BasisState)
    (h : InverseScaledMiddle L.inner p (kaliskiStep^[512] (kaliskiInit p S)) (kaliskiCodes 512 (kaliskiInit p S)) A s)
    (he : ∀ q∈L.inner.wires, t q=s q)
```

证明了所有求逆内部位保持时，准备段的历史与逆元断言保持。

```lean
theorem divideLoad_wires_subset (L : DivideLayout) (hw : L.Widths)
```

证明了装载和卸载只触及控制线与求逆视图中的线路。

## [DivideSupport.lean](DivideSupport.lean)

以下声明位于 `ECDSAAdd.Arithmetic.DivideLayout` 命名空间。

```lean
def usedWires (L : DivideLayout) : List Wire
```

给出实际使用的线路，由 `L.control :: L.denominator ++ L.numerator ++ L.acc ++ L.inner.usedCoreWires` 组成。

```lean
theorem multiply_used_subset (L : DivideLayout) (hw : L.Widths)
```

证明了 `L.multiply.wires` 包含的线路都在 `L.usedWires` 中。

```lean
theorem data_used_subset (L : DivideLayout) (f : RoundField) (hf : f≠.out)
```

证明了 `L.inner.first.data.reg f` 包含的线路都在 `L.inner.usedCoreWires` 中。

```lean
theorem vLow_used_subset (L : DivideLayout)
```

证明了 `L.vLow` 包含的线路都在 `L.inner.usedCoreWires` 中。

```lean
theorem usedWires_nodup (L : DivideLayout) (hnd : L.wires.Nodup)
```

证明了 `L.usedWires` 中的线路互不重复。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem divide_wires (L : DivideLayout) (hw : L.Widths)
```

证明了静态支持是三外部寄存器、控制及求逆的实际核心；不含旧XOR输出银行。

```lean
theorem divide_qubits (L : DivideLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
```

证明了精确6210根实际支持线；原分配布局及未执行的out银行不算作门列支持。
