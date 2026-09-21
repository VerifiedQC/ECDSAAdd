# 寄存器 XOR

本模块提供寄存器、常量及受控值的按位异或操作，并证明寄存器读值、输入保持和资源性质。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [ConditionalXor.lean](ConditionalXor.lean)

该文件在原值 X 与函数值 F(X) 之间选择，再异或到目标。假设 kernel 已被证明只将 F(X) 异或到 temp、保持其他 wire 和相位；src、temp、dst 等宽，参与线路互异，X<q。

`conditionalXor_correct` 证明：

```text
{ c=C, src=X, dst=O, temp=0, work=0 }
conditionalXor kernel c src temp dst
{ dst=O ⊕ (if C then F(X) else X) }
```

dst 以外的 wire 和相位保持不变。控制为 0 时异或的是 X，并非什么都不做。

- 资源：`conditionalXor kernel c src temp dst`：T = `2*toffoliCount kernel + 2*dst.length`，M = `2*measurementCount kernel`。

## [Constant.lean](Constant.lean)

该文件将常量 k 异或到寄存器。r 内线路互异、k<2^r.length 时，`xorConstant_spec` 和 `xorConstant_correct` 证明：

```text
{ r=X }
xorConstant r k
{ r=X ⊕ k }
```

r 以外的 wire 和相位保持不变。

- 资源：`xorConstant r k`：T = `0`，M = `0`。

## [Copy.lean](Copy.lean)

该文件将源寄存器异或到目标，不要求目标初始为零。src、dst 等宽且线路互异，控制不与 dst 重叠。

`copyRegister_spec`、`maskedCopy_spec` 和 `copyRegister_correct` 证明：

```text
{ src=X, dst=O }
copyRegister control src dst
{ dst=O ⊕ (if C then X else 0) }
```

没有控制位时 C=1，否则 C 为控制位的值；受控规格还要求控制与 src 不重叠。dst 以外的 wire 和相位保持不变。

- 资源：`copyRegister control src dst`：T = `(if control.isSome then src.length else 0)`，M = `0`，Q = `(if src.isEmpty then 0 else 2*src.length+control.toList.length)`。

## [MaskedConstant.lean](MaskedConstant.lean)

该文件实现受控常量异或。r 内线路互异，控制不在 r 中，k<2^r.length 时，`maskedConstant_correct` 证明：

```text
{ c=C, r=X }
maskedConstant c r k
{ r=X ⊕ (if C then k else 0) }
```

r 以外的 wire 和相位保持不变。

- 资源：`maskedConstant c r k`：T = `0`，M = `0`。

## [Registers.lean](Registers.lean)

该文件实现寄存器逐位取反。n=r.length，r 内线路互异时，`notRegister_spec` 和 `notRegister_correct` 证明：

```text
{ r=X }
notRegister r
{ r=2^n−1−X }
```

r 以外的 wire 和相位保持不变。

- 资源：`notRegister r`：T = `0`，M = `0`，Q = `r.length`。
