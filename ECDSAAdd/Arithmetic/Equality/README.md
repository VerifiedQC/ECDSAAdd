# 相等检测

本模块检测寄存器是否为零或等于给定常量，并证明控制、输入和工作位的保持与恢复。

## 文件目录

以下只列本文件证明的项目，均以对应定理的线路互异、位宽、数值范围和工作区初态等条件为前提。`_spec` 保证对任意测量结果满足后置断言并保持相位；未提及的线路是否保持，需看相应结论。

资源中 T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数；未列出的项不代表零，T=0 也不代表没有其他门。资源公式保留源码参数名，其中 Nat 减法按自然数截断。

[EqualConstant.lean](#equalconstantlean)

这个文件通过常量掩码和零检测判断寄存器是否等于常量，并证明结果及资源。

- 正确性：仅把 `控制 AND (输入值=k)` 异或到目标位，其余基态位与相位完全不变。
- 资源：`equalConstant control target bs k`：T = `bs.length`，M = `bs.length`。

[ZeroControl.lean](#zerocontrollean)

这个文件定义受控零检测及测量清理，证明检测标志、输入保持和资源用量。

- 规格：工作区初始为零时，将 `C AND (X=0)` 异或到目标 T，保持输入 X 与控制 C，并恢复零工作区。
- 正确性：仅把 `控制 AND 所有输入位为零` 异或到目标位，其余基态位与相位完全不变。
- 资源：`zeroControlled c target bs`：T = `bs.length`，M = `bs.length`，Q = `2*bs.length+2`。

## [EqualConstant.lean](EqualConstant.lean)

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
