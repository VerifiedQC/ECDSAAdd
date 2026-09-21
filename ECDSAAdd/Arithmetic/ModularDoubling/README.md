# 模加倍

本模块实现奇模数下的原地倍增和减半，并证明它们的结果、工作位清理及资源用量。

下文 p、q 表示相应运算的模数；域运算中的 p 是 secp256k1 的素数模数，`Widths` 表示布局中各寄存器的位宽要求。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [ModDouble.lean](ModDouble.lean)

该文件实现原地模倍增。

U 是模倍增与模减半电路的寄存器布局。U.z 是原地更新的寄存器，初值为 Z，U.work 是零工作区；n 是布局的低位数据位宽，`U.Widths n` 表示对应的位宽要求。下文 z、work 省略 U. 前缀。U.Widths n、线路互异，p 为奇数、p<2^n、Z<p 时，`dblInPlace_spec` 证明：

```text
{ z=Z, work=0 }
dblInPlace U p
{ z=(2Z) mod p, work=0 }
```

相位保持不变。

## [ModHalf.lean](ModHalf.lean)

该文件实现原地模减半。

U 是模倍增与模减半电路的寄存器布局。U.z 是原地更新的寄存器，初值为 Z，U.work 是零工作区；n 是布局的低位数据位宽，`U.Widths n` 表示对应的位宽要求。下文 z、work 省略 U. 前缀。U.Widths n、线路互异，p 为奇数、p<2^n、Z<p 时，`halfInPlace_spec` 证明：

```text
{ z=Z, work=0 }
halfInPlace U p
{ z=if Z 为偶数 then Z/2 else (Z+p)/2, work=0 }
```

这就是 `halveMod p Z`，相位保持不变。

## [ModUnary.lean](ModUnary.lean)

U 是模倍增与模减半电路的寄存器布局。

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `dblInPlace U p`：T = `2*n-1`，M = `2*n-1`。
  - `halfInPlace U p`：T = `2*n`，M = `2*n`。

## [ModUnaryResources.lean](ModUnaryResources.lean)

U 是模倍增与模减半电路的寄存器布局。

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `dblInPlace U p`：T = `2*n-1`，M = `2*n-1`，Q = `3*n+3`。
  - `halfInPlace U p`：T = `2*n`，M = `2*n`，Q = `3*n+4`。
