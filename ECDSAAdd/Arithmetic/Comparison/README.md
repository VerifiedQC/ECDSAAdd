# 大小比较

本模块比较寄存器或寄存器与常量的大小，将比较结果写入标志位，并证明辅助位与相位恢复。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Compare.lean](Compare.lean)

该文件将“小于”的判断异或到目标位。

x、y 是待比较的输入寄存器，初值为 X、Y；target 是结果标志，初值为 T；cin、carry 是进位输入和工作区。n 是 x 的位数，control 是可选控制 wire。常量版本的 K 是比较阈值，临时寄存器在源码中名为 T，不要与这里的目标初值 T 混淆。x、y、carry 均为 n 位，参与线路互异，cin 和 carry 初始为零。

`compareLt_spec`、`maskedCompareLt_spec` 和 `compareLt_correct` 证明：

```text
{ x=X, y=Y, target=T, cin=0, carry=0 }
compareLt control x y carry cin target
{ target=T ⊕ (C AND (X<Y)) }
```

没有控制位时 C=1，否则 C 为控制位的值。target 以外的 wire 和相位保持不变。

`compareLtConst_spec`、`maskedCompareLtConst_spec` 将 Y 换为常量 K，要求 K<2^n，装载 K 的临时寄存器初始及最终均为零。

`flipBelow_correct` 证明目标异或 `C AND NOT top`；`compareChain_correct` 证明目标异或 `C AND (X+Y+cin<2^n)`。两者都只改变目标位。

- 资源：control.isSome 表示有控制，control.toList.length 在无控制/有控制时分别为 0/1；线路数还需互异及等长条件。

  - `flipBelow control top t`：T = `(if control.isSome then 1 else 0)`，M = `0`。
  - `compareChain control x y carry cin target` / `compareLtConst control x y carry cin target K`：T = `y.length + (if control.isSome then 1 else 0)`，M = `y.length`。
  - `compareLt control x y carry cin target`：T = `y.length + (if control.isSome then 1 else 0)`，M = `y.length`，Q = `3 * y.length + 2 + control.toList.length`。
