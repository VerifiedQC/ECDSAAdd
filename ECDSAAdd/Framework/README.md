# Framework

这里定义电路的状态表示、允许的操作、执行规则，以及正确性和资源计数的证明。

## [Syntax.lean](Syntax.lean)

定义如何表示状态和允许的操作。这里的状态是带正负相位的计算基态，不是一般叠加态。

- Wire 表示量子线路中的一根 wire，以自然数作为编号。
- BasisState 表示一个计算基态（computational basis state）。
- State 由 phase 和 basis 两部分组成，phase 记录正负相位。
- 允许的测量后修正（Correction）是 Z 和 CZ。
- 电路允许的操作（Instr）包括 X、CX、CCX 和 X basis 上的测量。测量结果只决定即时修正，不改变后续电路。

## [Semantics.lean](Semantics.lean)

定义量子电路如何在上述状态表示下执行。

其中的定理证明：

- correct_basis：Z/CZ 相位修正不改变计算基态。
- run_take：多余的测量结果记录不影响执行。
- run_append：执行两段拼接的电路，等价于依次执行它们；测量记录按第一段的测量次数分配给两段。

## [Hoare.lean](Hoare.lean)

定义怎样陈述电路的正确性，以及怎样组合已有的正确性证明。

Holds 表达寄存器中保存的值。数值寄存器采用小端表示；点寄存器 PointReg 由有限点标志和两个坐标组成，无穷远点用全零表示。

Triple 表达“满足前置条件时，执行后满足后置条件且相位恢复”，要求对所有初始相位和所有测量结果成立。

其中的定理证明：

- Triple.seq：前一段的保证满足后一段的要求，就能得到两段组合后的保证。
- Triple.conseq：已有证明允许加强前置条件、减弱后置条件。
- Triple.frame：仅依赖电路未触及线路的额外条件，在执行后仍成立。

## [Cost.lean](Cost.lean)

定义电路的 Toffoli 数、实际线路支持，并证明资源的组合规则。线路数按整个电路触及的不同线路计算，包含两种测量修正分支，不是最大同时存活数。

其中的定理证明：

- measurementCount_append、toffoliCount_append：两段电路拼接后的测量数、Toffoli 数分别相加。
- wires_append：拼接后的线路支持是两段支持集的并集，共用线路不重复计算。
- run_preserves_outside：对任何测量结果，电路都不会改变其支持集以外的基态位。
