# 模加倍

本模块实现奇模数下的原地倍增和减半，并证明它们的结果、工作位清理及资源用量。

## 文件目录

[ModDouble.lean](#moddoublelean)

这个文件证明原地模倍增的旋转、约减和清理步骤，汇总为完整规格。

[ModHalf.lean](#modhalflean)

这个文件证明原地模减半的奇偶处理、加模数、旋转和标志清理。

[ModUnary.lean](#modunarylean)

这个文件定义模倍增与减半的布局和程序，并证明基本布局条件及资源关系。

[ModUnaryResources.lean](#modunaryresourceslean)

这个文件证明模倍增、减半的目标外保持及精确资源用量。

## [ModDouble.lean](ModDouble.lean)

这个文件证明原地模倍增的旋转、约减和清理步骤，汇总为完整规格。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem double_rotate (U : ModUnaryLayout) (n Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hfit : 2*Z<2^(n+1))
```

证明了执行 `rotateLeft U.z` 时，寄存器初态满足 `U.mask=0,U.z=Z,U.core.work=0` 就能得到 `U.mask=0,U.z=(2*Z),U.core.work=0`，并恢复相位。

```lean
theorem double_finish (U : ModUnaryLayout) (n R : Nat) (B : Bool)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hn : 0<n)
    (hB : B= !decide (R%2=1))
```

证明了执行 `[.X U.high,.CX U.bit U.high]` 时，寄存器初态满足 `U.mask=0,U.low=R,U.high=B,U.core.work=0` 就能得到 `U.mask=0,U.z=R,U.core.work=0`，并恢复相位。

```lean
theorem double_core (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.core.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p)
```

证明了执行 `dblInPlace U p` 时，寄存器初态满足 `U.mask=0,U.z=Z,U.core.work=0` 就能得到 `U.mask=0,U.z=(2*Z)%p,U.core.work=0`，并恢复相位。

```lean
theorem dblInPlace_spec (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p)
```

证明了规范模加倍；借位从结果奇偶清除，外层 mask/flag 均归零。

## [ModHalf.lean](ModHalf.lean)

这个文件证明原地模减半的奇偶处理、加模数、旋转和标志清理。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem half_parity (U : ModUnaryLayout) (n Z : Nat)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hn : 0<n)
```

证明了执行 `[.CX U.bit U.flag]` 时，寄存器初态满足 `U.z=Z,U.work=0` 就能得到 `U.z=Z,U.core.work=0,U.mask=0,U.flag=decide (Z%2=1)`，并恢复相位。

```lean
theorem half_add (U : ModUnaryLayout) (n p Z : Nat) (B : Bool)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hp : p<2^(n+1))
```

证明了执行 `maskedAddConst U.flag U.constant U.z U.carry U.cin p` 时，寄存器初态满足 `U.z=Z,U.core.work=0,U.mask=0,U.flag=B` 就能得到 `U.z=((Z+(if B then p else 0))%2^(n+1)),U.core.work=0,U.mask=0,U.flag=B`，并恢复相位。

```lean
theorem half_rotate (U : ModUnaryLayout) (Z : Nat) (B : Bool)
    (hnd : U.wires.Nodup) (heven : Z%2=0)
```

证明了执行 `rotateRight U.z` 时，寄存器初态满足 `U.z=Z,U.core.work=0,U.mask=0,U.flag=B` 就能得到 `U.z=(Z/2),U.core.work=0,U.mask=0,U.flag=B`，并恢复相位。

```lean
theorem constCompare_frame (x T carry : List Wire) (cin target : Wire)
    (hnd : (target::cin::x++T++carry).Nodup) (hx : x.length=T.length) (hc : carry.length=T.length)
    (K : Nat) (hK : K<2^T.length) (s : State) (m : List Bool)
    (hT : regValue T s.basis=0) (hC : regValue carry s.basis=0) (hcin : s.basis cin=false)
```

证明了常数比较恢复全部非目标位；由已证寄存器规格与精确支持集推出。

```lean
theorem half_finish (U : ModUnaryLayout) (n R K : Nat) (B : Bool)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hR : R<2^n) (hK : K<2^n)
    (hB : B= !decide (R<K))
```

证明了执行 `(compareLtConst none U.low (U.constant.take U.low.length) U.carry U.cin U.flag K ++ [.X U.flag])` 时，寄存器初态满足 `U.z=R,U.core.work=0,U.mask=0,U.flag=B` 就能得到 `U.z=R,U.work=0`，并恢复相位。

```lean
theorem halfInPlace_spec (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p)
```

证明了规范模减半，所有 scratch 清零；奇偶由结果大小恢复并擦除。

## [ModUnary.lean](ModUnary.lean)

这个文件定义模倍增与减半的布局和程序，并证明基本布局条件及资源关系。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure ModUnaryLayout
```

单目模算术借用同一目标与 scratch；mask 在半倍期间保持零。 `ModUnaryLayout` 定义为 `low`、`high`、`constant`、`carry`、`cin`、`mask`、`flag` 各部分。

以下声明位于 `ECDSAAdd.Arithmetic.ModUnaryLayout` 命名空间。

```lean
def z (U : ModUnaryLayout) : List Wire
```

取出包含额外高位的目标寄存器，对应 `U.low++[U.high]`。

```lean
def core (U : ModUnaryLayout) : ModAddCoreLayout
```

构造底层模加的布局视图，复用现有寄存器和线路。

```lean
def work (U : ModUnaryLayout) : List Wire
```

给出工作区，由 `U.core.work++U.mask++[U.flag]` 组成。

```lean
def wires (U : ModUnaryLayout) : List Wire
```

给出布局的全部线路，由 `U.z++U.work` 组成。

```lean
def bit (U : ModUnaryLayout) : Wire
```

合法位宽下 low 非空；回退值仅使构造对所有布局有定义。

```lean
structure Widths (U : ModUnaryLayout) (n : Nat) : Prop
```

位宽条件。 `Widths` 定义为 `low`、`constant`、`carry`、`mask` 各部分。

```lean
theorem core_widths (U : ModUnaryLayout) (n : Nat) (hw : U.Widths n)
```

证明了 `U.core.Widths n`，即相应布局满足所需位宽条件。

```lean
theorem core_nodup (U : ModUnaryLayout) (hnd : U.wires.Nodup)
```

证明了 `U.core.wires` 中的线路互不重复。

```lean
theorem bit_mem (U : ModUnaryLayout) (n : Nat) (hw : U.Widths n) (hn : 0<n)
```

证明了 `U.bit` 属于 `U.low`。

```lean
theorem bit_value (U : ModUnaryLayout) (n : Nat) (hw : U.Widths n) (hn : 0<n) (s : BasisState)
```

证明了 `(s U.bit).toNat` 等于 `regValue U.z s%2`。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def dblInPlace (U : ModUnaryLayout) (p : Nat) : Program
```

左旋得到 2Z，试减 p、借位低位加回，最后由结果奇偶清借位。

```lean
def halfInPlace (U : ModUnaryLayout) (p : Nat) : Program
```

保存奇偶，奇数加 p 后右旋，由减半结果与 (p+1)/2 比较清奇偶位。

```lean
theorem modUnary_counts (U : ModUnaryLayout) (n p : Nat) (hw : U.Widths n) (hn : 0<n)
```

证明了半倍门列均复用 scratch，不增加量子控制或历史寄存器。

```lean
theorem modUnary_wires (U : ModUnaryLayout) (n p : Nat) (hw : U.Widths n) (hn : 0<n)
```

证明了资源按实际支持计：加倍不触及 mask/flag，减半不触及 mask。

## [ModUnaryResources.lean](ModUnaryResources.lean)

这个文件证明模倍增、减半的目标外保持及精确资源用量。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem modUnary_frame (U : ModUnaryLayout) (n p Z : Nat)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hp : p%2=1) (hpn : p<2^n) (hZ : Z<p)
    (s : State) (m : List Bool) (hz : regValue U.z s.basis=Z) (hc : regValue U.work s.basis=0)
    (q : Wire) (hq : q∉U.z)
```

证明了半倍都只更新目标；scratch 的所有物理位与未借用线路保持。

```lean
theorem modUnary_resources (U : ModUnaryLayout) (n p : Nat)
    (hw : U.Widths n) (hnd : U.wires.Nodup) (hn : 0<n)
```

证明了所列程序的精确资源关系：`toffoliCount (dblInPlace U p)=2*n-1 ∧ measurementCount (dblInPlace U p)=2*n-1 ∧ qubitCount (dblInPlace U p)=3*n+3 ∧ toffoliCount (halfInPlace U p)=2*n ∧ measurementCount (halfInPlace U p)=2*n ∧ qubitCount (halfInPlace U p)=3*n+4`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。
