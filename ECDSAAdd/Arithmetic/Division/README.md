# 除法累加

本模块通过准备逆元和受控模乘，将模除法结果加到或减出目标寄存器，并恢复求逆历史与工作区。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [DivideProduct.lean](DivideProduct.lean)

该文件证明除法中“已准备逆元后的乘积累加”正确。X<p、Y<2^256、Z<p，布局满足 L.Widths 且线路互异，借用工作区为零。

`divideProduct_correct` 证明，令 V=(X·Y) mod p：

```text
{ control=B, inner.a=X, numerator=Y, acc=Z, borrow=0 }
montMulControlledAdd ｜ montMulControlledSub
{ acc=if B then (Z+V) mod p ｜ (Z+p−V) mod p else Z }
```

acc 以外的 wire 和相位保持不变。这一步假定乘数 X 已经准备好，不单独负责求逆。

## [DivideResources.lean](DivideResources.lean)

- 资源：

  - `divideLoad L` / `divideUnload L`：T = `256`，M = `0`。
  - `divideAdd L`：T = `3895383`，M = `2309207`。
  - `divideSub L`：T = `3895895`，M = `2309719`。

## [DivideSpec.lean](DivideSpec.lean)

该文件实现受控模除法的累加与累减。D、E、Z<p，控制 B=1 时要求 D≠0，令 V=(D⁻¹·E) mod p。

`divideAdd_spec`、`divideSub_spec`（共同由 `divide_spec` 证明）给出：

```text
{ control=B, denominator=D, numerator=E, acc=Z, work=0 }
divideAdd L ｜ divideSub L
{ acc=if B then (Z+V) mod p ｜ (Z+p−V) mod p else Z,
  control=B, denominator=D, numerator=E, work=0 }
```

布局满足 L.Widths、线路互异时，这些结论对任意测量结果成立，并保持相位。

## [DivideSupport.lean](DivideSupport.lean)

- 资源：`divideAdd L` / `divideSub L`：Q = `6210`。
