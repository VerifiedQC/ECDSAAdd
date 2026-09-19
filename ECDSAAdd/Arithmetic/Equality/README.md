# 相等检测

本模块检测寄存器是否为零或等于给定常量，并证明控制、输入和工作位的保持与恢复。

## 文件目录

[EqualConstant.lean](#equalconstantlean)

这个文件通过常量掩码和零检测判断寄存器是否等于常量，并证明结果及资源。

[ZeroControl.lean](#zerocontrollean)

这个文件定义受控零检测及测量清理，证明检测标志、输入保持和资源用量。

## [EqualConstant.lean](EqualConstant.lean)

这个文件通过常量掩码和零检测判断寄存器是否等于常量，并证明结果及资源。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem zeroBit_count (bs : List ZeroBit) (w : Wire)
```

证明了 `(bs.flatMap ZeroBit.wires).count w` 等于 `(bs.map ZeroBit.input).count w + (bs.map ZeroBit.work).count w`。

```lean
def equalConstant (control target : Wire) (bs : List ZeroBit) (k : Nat) : Program
```

保留输入，XOR 写入 control ∧ (input = k)；同一组零检测工作位前后均为零。

```lean
theorem equalConstant_correct (control target : Wire) (bs : List ZeroBit) (k : Nat)
    (hnd : (control::target::bs.flatMap ZeroBit.wires).Nodup) (hk : k<2^bs.length)
    (s : State) (m : List Bool) (hz : ∀ b∈bs,s.basis b.work=false)
```

证明了 `run (equalConstant control target bs k) m s` 等于 `⟨s.phase,writeBit s.basis target (s.basis target ^^ (s.basis control && decide (regValue (bs.map ZeroBit.input) s.basis=k)))⟩`。

```lean
theorem equalConstant_counts (control target : Wire) (bs : List ZeroBit) (k : Nat)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (equalConstant control target bs k)=bs.length ∧ measurementCount (equalConstant control target bs k)=bs.length`。

```lean
theorem equalConstant_wires (control target : Wire) (bs : List ZeroBit) (k : Nat)
```

证明了常量的取值不改变实际支持：零检测本身已经触及全部布局线。

## [ZeroControl.lean](ZeroControl.lean)

这个文件定义受控零检测及测量清理，证明检测标志、输入保持和资源用量。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure ZeroBit
```

每个被检测的输入位配一根可复用的零工作位。 `ZeroBit` 定义为 `input`、`work` 各部分。

```lean
def ZeroBit.wires (b : ZeroBit) : List Wire
```

给出布局的全部线路，由 `[b.input,b.work]` 组成。

```lean
def negAnd (c a t : Wire) : Program
```

把控制位与输入位的否定值做 AND，并异或到目标。

```lean
def negAndErase (c a t : Wire) : Program
```

在目标保存相应否定 AND 值时，用测量和即时修正清除目标。

```lean
def zeroControlled (c target : Wire) : List ZeroBit → Program
```

XOR 写入“控制为真且整段为零”；测量清理AND链并修正相位。

```lean
theorem negAnd_run (c a t : Wire) (hca : c≠a) (hat : a≠t)
    (s : State) (m : List Bool)
```

证明了 `run (negAnd c a t) m s` 等于 `⟨s.phase, writeBit s.basis t (s.basis t ^^ (s.basis c && !s.basis a))⟩`。

```lean
theorem negAndErase_run (c a t : Wire) (hca : c≠a) (hat : a≠t)
    (hct : c≠t) (s : State) (m : List Bool)
    (hq : s.basis t = (s.basis c && !s.basis a))
```

证明了 `run (negAndErase c a t) m s` 等于 `⟨s.phase, writeBit s.basis t false⟩`。

```lean
theorem zeroControlled_counts (c target : Wire) (bs : List ZeroBit)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (zeroControlled c target bs) = bs.length ∧ measurementCount (zeroControlled c target bs) = bs.length`。

```lean
theorem zeroControlled_correct (c target : Wire) (bs : List ZeroBit)
    (hnd : (c::target::bs.flatMap ZeroBit.wires).Nodup)
    (s : State) (m : List Bool) (hz : ∀ b∈bs, s.basis b.work=false)
```

证明了完整状态公式：只有目标翻转，包含所有借用工作位和控制位的恢复。

```lean
theorem zeroControlled_spec (c target : Wire) (bs : List ZeroBit)
    (hnd : (c::target::bs.flatMap ZeroBit.wires).Nodup) (C T : Bool) (X : Nat)
```

证明了输入为零时才按 c 翻转 target，输入和全部工作位保持。

```lean
theorem zeroControlled_wires (c target : Wire) (bs : List ZeroBit)
```

证明了程序实际触及的线路集合：`wires (zeroControlled c target bs) = (c::target::bs.flatMap ZeroBit.wires).toFinset`。

```lean
theorem zeroControlled_resources (c target : Wire) (bs : List ZeroBit)
    (hnd : (c::target::bs.flatMap ZeroBit.wires).Nodup)
```

证明了所列程序的精确资源关系：`toffoliCount (zeroControlled c target bs) = bs.length ∧ measurementCount (zeroControlled c target bs) = bs.length ∧ qubitCount (zeroControlled c target bs) = 2*bs.length+2`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。
