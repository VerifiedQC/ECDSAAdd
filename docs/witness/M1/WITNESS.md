# M1：AND 计算与测量反计算

阅读主入口：[实际程序和公开定理](../../../ECDSAAdd/Circuit/And.lean)。完整 Lean 定理签名和公理披露见 [PROOF_STATUS.md](../../PROOF_STATUS.md)。

## 被证明的程序

```lean
def andComputeErase (a b anc : Wire) : Program :=
  [.gate (.CCX a b anc), .measureX anc [] [.CZ a b]]
```

这就是 `run` 执行和资源函数计数的同一个程序，没有另写参考实现。

## 正确性陈述

```lean
theorem andComputeErase_correct (a b anc : Wire)
    (_hab : a ≠ b) (ha : a ≠ anc) (hb : b ≠ anc)
    (s : State) (hclean : s.basis anc = false)
    (m : Outcomes (andComputeErase a b anc)) :
    run (andComputeErase a b anc) m s = s
```

- a、b、anc 是三根具体线路。三个不等式说明它们互不重叠，支持合法的 CCX/CZ 实现。a≠b 对该布尔恢复等式是冗余的，但保留为与线路合法性一致的公开条件；`andComputeErase_wellFormed` 实际使用全部三个条件。
- s 是完整的初始符号相位和位串，没有假设数据位或外部线路清零，也没有假设初始相位为 false。
- `hclean` 只要求 anc 初始为 false。
- m 是任意测量结果；长度在类型中固定为一次测量，不筛除结果 0 或 1。
- 结论 `= s` 直接保证相位、两根数据线、辅助线和每根外部线路都恢复。不是仅输出正确、允许垃圾保留的结论。

## 为什么恢复

设原始数据位为 A、B，原始相位为 S，测量结果为 M。

1. CCX 令 anc 从 0 变成 `A && B`，不改变 A、B、S。
2. X 测量/清零令相位变成 `S XOR (M && (A && B))`，anc 变为 0。
3. M 为 0 时无需修正；M 为 1 时 CZ 增加相位 `A && B`。因此修正贡献恰为 `M && (A && B)`。
4. 同一布尔项异或两次消去，相位回到 S；所有其他位不变。

Lean 证明直接展开该程序的语义，按测量结果作完备分类，并用布尔恒等式和函数更新等式完成全称证明。这里没有执行测试或有限样例作为正确性依据。

## 同一程序的资源定理

- `andComputeErase_toffoliCount`：恰好 1 个 Toffoli，即列表中的 CCX。
- `andComputeErase_measurementCount`：恰好 1 次测量。
- `andComputeErase_wires`：线路集合是 `{a,b,anc}`，包括测量与 CZ 修正。
- `andComputeErase_qubitCount`：三个标签互异时，集合基数恰好为 3。

经典测量结果存储不计作物理量子线路。这个数是程序的静态支持集，不是执行期间最大存活数的优化结论。

## 组合基础与边界

`run_append` 说明把这段放入大程序时如何拆分测量记录并传递完整状态；`run_preserves_outside` 给出通用外部线路保持结论。它们和 M1 都只属于 monomial 模型，不声称与完整量子态语义的对应。

M2–M4 仍待实现；M1 通过不表示模算术或点加已经完成。
