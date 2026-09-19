# 条件选择

本模块根据控制位在两组输入中选择一个值，将它异或到输出，并证明输入保持与资源性质。

## 文件目录

以下只列本文件证明的项目，均以对应定理的线路互异、位宽、数值范围和工作区初态等条件为前提。`_spec` 保证对任意测量结果满足后置断言并保持相位；未提及的线路是否保持，需看相应结论。

资源中 T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数；未列出的项不代表零，T=0 也不代表没有其他门。资源公式保留源码参数名，其中 Nat 减法按自然数截断。

[Select.lean](#selectlean)

这个文件定义受控二选一的 XOR 输出电路，证明选择结果和资源。

- 正确性：单个位与整寄存器都将 `if flag then yes else no` 异或到输出，输出之外所有基态位与相位不变。
- 资源：`selectXor bs flag`：T = `bs.length`，M = `0`。

## [Select.lean](Select.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
structure SelectBit
```

两个候选值与输出位，均按小端排列。 `SelectBit` 定义为 `no`、`yes`、`out` 各部分。

```lean
def selectWires : List SelectBit → List Wire
```

列出该布局包含的各条线路。

```lean
def selectXor : List SelectBit → Wire → Program
```

输出异或 (if flag then yes else no)。暂时将 yes XOR 到 no， 用一个 Toffoli 选择差值，再还原 no；选择位必须在这三组线路之外。

```lean
theorem mem_selectWires {bs : List SelectBit} {b : SelectBit} (hb : b ∈ bs)
```

证明了每个逐位选择布局的 no、yes、out 都在选择器的线路列表中。

```lean
theorem selectStep_correct (a b out flag : Wire)
    (ha : a ≠ out) (hb : b ≠ out) (hab : a ≠ b) (hf : flag ≠ out) (hfa : flag ≠ a)
    (s : State) (m : List Bool)
```

证明了 `run (prog { Instr.CX a out; Instr.CX b a; Instr.CCX flag a out; Instr.CX b a }) m s` 等于 `⟨s.phase, writeBit s.basis out (s.basis out ^^ (if s.basis flag then s.basis b else s.basis a))⟩`。

```lean
theorem selectXor_correct (bs : List SelectBit) (flag : Wire)
    (hnd : (selectWires bs).Nodup) (hflag : flag ∉ selectWires bs)
    (s : State) (m : List Bool)
```

证明了两个输入寄存器和选择位保持，任意输出初值按选择结果 XOR 更新。

```lean
theorem selectXor_counts (bs : List SelectBit) (flag : Wire)
```

证明了每位一次 Toffoli，整个选择没有测量。

```lean
theorem selectXor_wires (b : SelectBit) (bs : List SelectBit) (flag : Wire)
```

证明了非空选择的支持集是输入、输出线路与选择位的并集。
