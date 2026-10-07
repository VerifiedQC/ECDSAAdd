# 模加倍

本模块实现奇模数下的原地倍增和减半，并证明它们的结果、工作位清理及资源用量。

## 当前可读入口

- [ModUnary.lean](#modunarylean)：直接阅读原 `dblInPlace/halfInPlace` 的倍增、试减、受控回补及减半，每个算术步骤行内指定实现和证明。
- [Certified.lean](#certifiedlean)：保留整段模倍增的认证接口。

## [Certified.lean](Certified.lean)

入口：`dblInPlace`，均在 `ECDSAAdd.Arithmetic.Certified` 命名空间下。

写成 `U.z = (const(2) * U.z) mod p`，证书保留奇模数、位宽、输入范围和工作区清零条件。

每个块返回带 `requires/ensures/correct` 的 `CheckedProgram`；`.circuit` 与对应旧实现完全相同，所以下文各文件的资源结论原样适用。这里只指定一次整块实现，不另行编译块内表达式。旧接口继续供现有调用链使用；详细语义见 [Framework](../../Framework/README.md#当前入口显式实现与证明2026-10-06)。

## 后端算法与原规格


[ModUnary.lean](ModUnary.lean) 的 `dblInPlace/halfInPlace` 已使用原地加减与受控 `if` 表达式。旋转写为 `target = const(2) * target` 或 `target = target / const(2)`，后面明确使用 `rotateLeft/Right` 及其证明；不溢出、可整除等调用条件仍由完整规格证明。

`dblInPlace` 的试减显式写出 `mod (2^(n+1))`，n 为低位数据位宽；常数寄存器的装载和清理在指定实现中。借位、奇偶位仍保留为逻辑标志，清理规则不变。

每个注解都检查源公式与实际实现的 Hoare 定理相符；各步前提如何衔接、最终相位和工作区恢复，仍由本模块完整定理承担。语法边界见 [Framework](../../Framework/README.md#当前入口显式实现与证明2026-10-06)。

零常数/进位工作区在 `using` 指定的实现中接线，不再依靠 `prog using` 默认选择。`maskedAddConstLow` 明确只更新低 n 位；它与全宽加常数使用不同长度的辅助位，接线见同文件配置。

算法入口在 [ModUnary.lean](ModUnary.lean)。`dblInPlace` 先左移得到两倍，再试减 p、按借位加回 p，利用 p 为奇数清理借位；`halfInPlace` 先记录最低位，奇数时加 p，再右移减半，最后用输出重算并清除奇偶记录。代码中的 target 是被更新的寄存器，borrow/wasOdd 是需要恢复为零的标志位。

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
