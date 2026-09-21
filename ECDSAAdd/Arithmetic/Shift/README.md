# 寄存器移位

本模块提供寄存器位的循环移动及受控形式，并证明在相应边界条件下的数值变化和恢复性质。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Rotate.lean](Rotate.lean)

该文件实现无控制循环移位。

r 是按低位到高位排列的 wire 列表，表示待移位寄存器，初值为 X；底层交换使用 a、b 两根 wire。r 内线路互异时，`rotateRight_spec`、`rotateLeft_spec` 证明：

```text
{ r=X, X 为偶数 }
rotateRight r
{ r=X/2 }

{ r=X, 2X<2^r.length }
rotateLeft r
{ r=2X }
```

相位保持不变；这些数值结论需要边界位条件，并不表示循环移位总等于整数除法或乘法。

`swapBits_correct` 证明底层两位交换确实互换 a、b 的值，其他 wire 和相位保持不变。

- 资源：`rotateRight r` / `rotateLeft r`：T = `0`，M = `0`。

## [Shift.lean](Shift.lean)

该文件实现受控交换与受控移位。

c 是控制 wire，初值为 C；a、b 是待交换的 wire，初值为 A、B。移位接口中的 r 是按低位到高位排列的 wire 列表，表示初值为 X 的寄存器。参与线路互异时，`cswap_spec` 和 `cswap_correct` 证明：

```text
{ c=C, a=A, b=B }
cswap c a b
{ a=if C then B else A, b=if C then A else B }
```

a、b 以外的 wire 和相位保持不变。

`shiftRight_spec`、`shiftLeft_spec` 分别证明：

```text
{ c=C, r=X }
shiftRight c r ｜ shiftLeft c r
{ c=C, r=if C then X/2 ｜ 2X else X }
```

右移在 C=1 时要求 X 为偶数；左移在 C=1 时要求 2X<2^r.length。两者保持相位。

- 资源：

  - `shiftRight c r` / `shiftLeft c r`：T = `r.length-1`，M = `0`，Q = `(if r.length<2 then 0 else r.length+1)`。
  - `cswap c a b`：T = `1`，M = `0`，Q = `3`。
