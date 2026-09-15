# 模加倍

本模块在一个寄存器上执行 `Z → 2Z mod p`，并提供逆向的模减半。模减半对奇数输入先加奇模数再除二，不是直接丢掉最低位。

## 契约

[ModDouble.lean](ModDouble.lean) 的 `dblInPlace_spec` 与 [ModHalf.lean](ModHalf.lean) 的 `halfInPlace_spec` 共用 `ModUnaryLayout`：低 n 位加一个高位组成目标，另有明确的工作区。要求 `p%2=1`、`p<2^n`、`Z<p`、位宽正确、全布局互异和工作区为零。

执行后只更新目标，工作区与相位恢复。减半结果为 `halveMod p Z`：偶数取 `Z/2`，奇数取 `(Z+p)/2`。两个结果都是规范模值。

## 算法与证明

加倍先左旋得到扩宽的 `2Z`，试减 `p`，必要时加回。由于 `p` 为奇数，最终结果的奇偶可以重建之前是否约减，从而擦除借位标志。

减半先记录输入奇偶，奇数时加 `p`，使被移位的数为偶数，再右旋。结果是否达到 `(p+1)/2` 恰好识别原来的奇偶，比较后可以清掉该标志。关键在于 `Z<p` 保证两段值域不重叠。

程序在 [ModUnary.lean](ModUnary.lean)，两个方向的阶段证明在 `ModDouble/ModHalf`。数学依据为 [ModularHalving.lean](../../Math/ModularDoubling/ModularHalving.lean) 与 [HalvingBijection.lean](../../Math/ModularDoubling/HalvingBijection.lean)。`ModUnaryResources` 给出逐线保持和同程序资源。

## 依赖与维护

复用 [ModularAddition](../ModularAddition/README.md) 的布局与原地算术，以及 [Shift](../Shift/README.md) 的无控制旋转。`mask/flag` 等分配字段在不同方向可能没有实际访问，不能按分配长度代替支持集。

当前求逆的主路径已改用 Montgomery 缩放；本模块仍供其他已证组件使用。旧计数驱动的受控减半循环是求逆的历史组件，随 [ModularInverse](../ModularInverse/README.md) 保存，不能与这里的无控制接口混淆。在仓库根目录运行 `scripts/verify.sh`。
