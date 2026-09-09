# 公开定理与证明状态

M1 的本地机械检查已通过；独立审阅和 hosted CI 状态以对应提交的记录为准。M2–M4 尚未实现，当前不能宣称点加电路已经完成。

受检源码提交：`e042a90f46ab2cc6c26541fdee8d0235286a9048`。本页及证据文件随后以文档提交加入，不改变受检 Lean 程序或证明。审阅时仍以最终交付提交为准。

## M1 主要定理（Lean `#check` 原文）

```text
ECDSAAdd.andComputeErase_correct (a b anc : ECDSAAdd.Wire) (_hab : a ≠ b) (ha : a ≠ anc) (hb : b ≠ anc)
  (s : ECDSAAdd.State) (hclean : s.basis anc = false) (m : ECDSAAdd.Outcomes (ECDSAAdd.andComputeErase a b anc)) :
  ECDSAAdd.run (ECDSAAdd.andComputeErase a b anc) m s = s
ECDSAAdd.andComputeErase_toffoliCount (a b anc : ECDSAAdd.Wire) :
  ECDSAAdd.toffoliCount (ECDSAAdd.andComputeErase a b anc) = 1
ECDSAAdd.andComputeErase_measurementCount (a b anc : ECDSAAdd.Wire) :
  ECDSAAdd.measurementCount (ECDSAAdd.andComputeErase a b anc) = 1
ECDSAAdd.andComputeErase_qubitCount (a b anc : ECDSAAdd.Wire) (hab : a ≠ b) (ha : a ≠ anc) (hb : b ≠ anc) :
  ECDSAAdd.qubitCount (ECDSAAdd.andComputeErase a b anc) = 3
```

[源码与中文 docstring](../ECDSAAdd/Circuit/And.lean) · [逐项假设说明与符号推导](witness/M1/WITNESS.md)

正确性定理量化任意 `State` 和任意测量结果。只要求三线互异、辅助位初始为零；结论是整个状态恢复。资源定理引用同一个 `andComputeErase` 程序。`qubitCount` 是静态支持集基数。

## 其他已检查结论

- `measurementCount_append`、`toffoliCount_append`：静态计数对顺序连接相加。
- `run_append`：正确拆分测量记录后的执行组合。
- `correct_basis`：相位修正不改变任何 basis 位。
- `wires_append`：顺序组合的线路集合取并集。
- `run_preserves_outside`：任意记录下，集合外线路不变。
- `andComputeErase_wellFormed`：M1 的门及修正线路合法。
- `Secp256k1.p_prime`、`G_ne_zero`、`affineAdd_correct`：Bitcoin 数学基础与完整群律规格；不是点加电路的实现证明。

## 公理披露原文

```text
'ECDSAAdd.andComputeErase_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.andComputeErase_wellFormed' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.andComputeErase_toffoliCount' depends on axioms: [propext]
'ECDSAAdd.andComputeErase_measurementCount' does not depend on any axioms
'ECDSAAdd.andComputeErase_qubitCount' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.run_append' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.run_preserves_outside' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.p_prime' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.G_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.affineAdd_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
```

另运行独立的全量 `axiom-audit`，固定工具提交 `46024e005996495c65ef609368e11ab39c4222e3`，检查 ECDSAAdd 所属全部 **477 个声明**；均只依赖允许集合 `propext`、`Classical.choice`、`Quot.sound`。源码闭包和分层检查覆盖 **8/8 模块**。未添加测试。

## 复现与耗时

```sh
lake exe cache get
scripts/verify.sh
```

Lean `v4.28.0`；Mathlib `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。在 Mac-mini-Office 上移走本项目 `.lake/build` 后，完整验证耗时 **21.91 秒**；保留相同版本的依赖构建缓存和审计工具缓存。这不是包含下载的完全冷启动耗时。

[验证输出](witness/M1/verification.txt) · [计时记录](witness/M1/timing.json) · [来源说明](PROVENANCE.md)
