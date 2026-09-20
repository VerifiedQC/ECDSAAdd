# 模加倍

本模块实现奇模数下的原地倍增和减半，并证明它们的结果、工作位清理及资源用量。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [ModDouble.lean](ModDouble.lean)

奇模数和规定范围下，将 Z 更新为 `2Z mod p`，工作区从零恢复为零。

### dblInPlace

实现约定：[dblInPlace_spec](ModDouble.lean#L125)。

适用前提：

- 布局满足位宽条件 `U.Widths n`。
- `U.wires` 中的 wire 互不相同。
- `p%2=1`。
- `p<2^n`。
- `Z<p`。

```text
{ U.z=Z,U.work=0 }
dblInPlace U p
{ U.z=(2*Z)%p,U.work=0 }
```

## [ModHalf.lean](ModHalf.lean)

奇模数和规定范围下，将 Z 更新为 `halveMod p Z`：偶数除以 2，奇数先加 p 再除以 2；工作区从零恢复为零。

### halfInPlace

实现约定：[halfInPlace_spec](ModHalf.lean#L184)。

适用前提：

- 布局满足位宽条件 `U.Widths n`。
- `U.wires` 中的 wire 互不相同。
- `p%2=1`。
- `p<2^n`。
- `Z<p`。

```text
{ U.z=Z,U.work=0 }
halfInPlace U p
{ U.z=halveMod p Z,U.work=0 }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [ModUnary.lean](ModUnary.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `dblInPlace U p`：T = `2*n-1`，M = `2*n-1`。
  - `halfInPlace U p`：T = `2*n`，M = `2*n`。

### [ModUnaryResources.lean](ModUnaryResources.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `dblInPlace U p`：T = `2*n-1`，M = `2*n-1`，Q = `3*n+3`。
  - `halfInPlace U p`：T = `2*n`，M = `2*n`，Q = `3*n+4`。
