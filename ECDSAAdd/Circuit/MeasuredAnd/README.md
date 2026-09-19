# AND 计算与测量清理

本模块计算 AND 辅助位后用测量与即时修正将其清零，证明完整状态恢复及同程序资源。

## 文件目录

[And.lean](#andlean)

这个文件定义 AND 计算后立即测量清理的电路，证明完整状态恢复及资源用量。

## [And.lean](And.lean)

这个文件定义 AND 计算后立即测量清理的电路，证明完整状态恢复及资源用量。

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def andComputeErase (a b anc : Wire) : Program
```

AND 计算后立即测量反计算：结果 1 时做 CZ，结果 0 时不修正。

```lean
theorem andComputeErase_correct (a b anc : Wire)
    (ha : a ≠ anc) (hb : b ≠ anc) (s : State) (hclean : s.basis anc = false)
    (m : List Bool)
```

证明了辅助位初始为零时，程序恢复整个状态，包括相位和所有外部线路。

```lean
theorem andComputeErase_spec (a b anc : Wire) (hnd : [a, b, anc].Nodup) (A B : Bool)
```

证明了三线互异：任意 A、B 的 AND 计算与测量反计算保持数据，辅助位归零。 Triple 的定义还保证初始相位恢复，并覆盖所有测量结果。

```lean
theorem andComputeErase_toffoliCount (a b anc : Wire)
```

证明了同一程序恰好使用一个 Toffoli。

```lean
theorem andComputeErase_measurementCount (a b anc : Wire)
```

证明了同一程序恰好测量一次。

```lean
theorem andComputeErase_wires (a b anc : Wire)
```

证明了程序实际触及的线路集合：`wires (andComputeErase a b anc) = {a, b, anc}`。

```lean
theorem andComputeErase_qubitCount (a b anc : Wire) (hnd : [a, b, anc].Nodup)
```

证明了三线互异时，静态物理线路数恰好为 3。
