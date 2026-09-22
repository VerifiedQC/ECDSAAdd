# Framework

本模块定义电路的状态表示、允许的操作、执行规则，以及正确性和资源计数的证明工具。

## 文件目录

[Syntax.lean](#syntaxlean)

这个文件定义状态的表示和电路允许的操作。这里的状态是带正负相位的计算基态，不是一般叠加态。

[Semantics.lean](#semanticslean)

这个文件定义量子电路如何在上述状态表示下执行，并证明执行与相位修正的基本性质。

[Hoare.lean](#hoarelean)

这个文件定义如何陈述电路的正确性，并证明如何组合已有的正确性结论。

[Cost.lean](#costlean)

这个文件定义电路的资源计数和实际触及的线路，并证明电路拼接时的资源关系及外部线路保持性质。

## [Syntax.lean](Syntax.lean)

```lean
abbrev Wire := Nat
```

Wire 表示量子线路中的一根 wire，这里直接使用自然数 Nat 作为 wire 的编号。

```lean
abbrev BasisState := Wire → Bool
```

BasisState 表示一个计算基态（computational basis state）。

```lean
structure State
```

状态 State 定义为 phase 和 basis 两部分，phase 记录正负相位。

```lean
inductive Correction
```

允许的测量后修正（Correction）操作是 Z 和 CZ。

```lean
inductive Instr
```

电路中允许的操作包括 X、CX、CCX 和 X basis 上的测量。测量结果只选择即时 Z/CZ 修正，不改变后续电路。

```lean
abbrev Program := List Instr
```

Program 表示一个量子电路。

```lean
def measurementCount : Program → Nat
```

计算一个量子电路中测量的数量。

```lean
class CircuitDSL.ToProgram (α : Type) where
  toProgram : α → Program
```

统一电路语句的结果：Instr 的 instance 将一个门变成单元素指令列表，Program 的 instance 保留整段子电路。因此新 `prog` 可以用相同的 `CX(a,b)`、`majority(a,b,cin,carry)` 调用格式，按顺序加入门或子电路。

```lean
def CircuitDSL.emit {α : Type} [CircuitDSL.ToProgram α] (value : α) : Program
```

通过对应 instance 将 value 转成指令列表。新 `prog` 还支持局部 `let`、`for i in range(n)` 和 `for i in reversed(range(n))`；循环在生成电路时展开，并保留索引范围证明。原来的 `prog { CX a b; ... }` 写法不变。

## [Semantics.lean](Semantics.lean)

```lean
def writeBit (bits : BasisState) (w : Wire) (v : Bool) : BasisState
```

将计算基态中线路 w 的值改为 v，其他线路保持不变。

```lean
def correct : List Correction → State → State
```

对状态执行一组测量后相位修正。

```lean
def measureAndCorrect (t : Wire) (c₀ c₁ : List Correction) (m : Bool) (s : State) : State
```

根据测量结果 m 更新相位、清零目标线路 t，并执行对应的即时修正。

```lean
def run : Program → List Bool → State → State
```

给定测量结果记录和初始状态，执行电路并返回最终状态。

```lean
theorem correct_basis (cs : List Correction) (s : State)
```

证明了相位修正不改变任何 basis 位。

```lean
theorem run_take (p : Program) (m : List Bool) (s : State)
```

证明了 run p m s 实际上只会读取程序 p 所需要的前 measurementCount p 个测量结果；m 后面多出来的 Bool 完全不会影响运行结果。

```lean
theorem run_append (p q : Program) (m : List Bool) (s : State)
```

证明了执行拼接的电路 p ++ q，等价于先执行 p 再执行 q；测量结果记录按 p 的测量次数分成两段，分别供 p 和 q 使用。

## [Hoare.lean](Hoare.lean)

```lean
class Holds (α : Type) (β : Type) where
  holds : BasisState → α → β → Prop
```

Holds.holds st a b 给出命题：在计算基态 st 中，α 类型的寄存器 a 保存的值是否是 β 类型的 b。

```lean
def regValue (r : List Wire) (st : BasisState) : Nat
```

读取寄存器 r 保存的自然数，采用小端表示。

```lean
structure PointReg
```

点寄存器 PointReg 定义为有限点标志 finite 和两个坐标寄存器 x、y 三部分。

```lean
def Triple (P : BasisState → Prop) (c : Program) (Q : BasisState → Prop) : Prop
```

表示电路 c 在前置条件 P 成立时，执行后满足后置条件 Q 且相位恢复；要求对所有初始相位和所有测量结果成立。

以下三个定理位于 Triple 命名空间；P、P'、Q、Q'、R 是状态条件，c、d 是电路。

```lean
theorem seq (hc : Triple P c Q) (hd : Triple Q d R)
```

证明了前一段电路的后置条件满足后一段的前置条件时，可以将两段正确性证明组合起来，得到从 P 到 R 的保证。

```lean
theorem conseq (hP : ∀ s, P' s → P s) (hc : Triple P c Q)
    (hQ : ∀ s, Q s → Q' s)
```

证明了已有正确性结论允许加强前置条件、减弱后置条件：由 P' 推出 P、由 Q 推出 Q'，就能得到从 P' 到 Q' 的保证。

```lean
theorem frame (hc : Triple P c Q)
    (hR : ∀ s t, (∀ w, w ∉ wires c → s w = t w) → R s → R t)
```

证明了只依赖电路 c 未触及线路的额外条件 R，在执行后仍成立，因此可以同时加入前置条件和后置条件。

## [Cost.lean](Cost.lean)

```lean
def toffoliCount : Program → Nat
```

计算电路中的 Toffoli 门数量。

```lean
def correctionWires : List Correction → Finset Wire
```

给出一组测量后修正涉及的线路集合。

```lean
def Instr.wires : Instr → Finset Wire
```

给出一条指令涉及的线路集合；测量指令包含目标线路及两种结果对应的修正线路。

```lean
def wires : Program → Finset Wire
```

给出整个电路涉及的线路集合，共用线路只计入一次。

```lean
def qubitCount (p : Program) : Nat
```

计算电路 p 涉及的不同物理线路数量，不是最大同时存活的量子比特数。

```lean
theorem measurementCount_append (p q : Program)
```

证明了两段电路拼接后的测量数量等于两段各自测量数量之和。

```lean
theorem toffoliCount_append (p q : Program)
```

证明了两段电路拼接后的 Toffoli 门数量等于两段各自 Toffoli 门数量之和。

```lean
theorem wires_append (p q : Program)
```

证明了两段电路拼接后涉及的线路集合是两段各自线路集合的并集。

```lean
theorem run_preserves_outside (p : Program) (m : List Bool) (s : State) (w : Wire)
    (hw : w ∉ wires p)
```

证明了对任何测量结果记录 m，电路 p 都不会改变其线路集合以外的基态位 w。
