# Addition

本模块提供固定位宽的二进制加减法、受控加减法和计数器，并证明计算结果、工作位清理及资源用量。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零。

## [FullAdder.lean](FullAdder.lean)

该文件实现量子 full adder。

输入 wire a、b、cin 的初值分别为 A、B、C；out 保存和位，carry 保存进位。当 out 和 carry 初始化为 0 时，电路计算：

```text
out   = A ⊕ B ⊕ C
carry = (A AND B) ⊕ (A AND C) ⊕ (B AND C)
```

`fullAdder_spec` 给出这一接口。`fullAdder_correct` 证明：对于任意初始状态 s 和预先提供的测量结果 m，假设 a、b、cin、out、carry 是五根互不相同的 wire，令 A=s[a]、B=s[b]、C=s[cin]，运行

```text
s' = run (fullAdder a b cin out carry) m s
```

之后有：

```text
s'[out]   = s[out] ⊕ A ⊕ B ⊕ C
s'[carry] = s[carry] ⊕ (A AND B) ⊕ (A AND C) ⊕ (B AND C)
s'.phase  = s.phase
```

其他 wire 的值保持不变。因此，正确性也覆盖 out、carry 初值不为零的情况。

`eraseCarry_spec` 和 `eraseCarry_correct` 证明进位清理：当 carry 保存上述进位，且不与 a、b、cin 重叠时，对任意测量结果，

```text
{ carry=carryBit(A,B,C) }
eraseCarry a b cin carry
{ carry=0 }
```

相位及其他 wire 保持不变；其中 `eraseCarry_spec` 的接口还要求三根输入线彼此不同。

资源：`fullAdder` 为 T=1、M=0、Q=5；`eraseCarry` 为 T=0、M=1、Q=4。Q 的计数要求对应线路互异。

## [RippleAdder.lean](RippleAdder.lean)

该文件实现 n 位加法器。

n 是逐位加法单元列表 bs 的长度。下文 x、y、out、carry 分别指 `bs.map AddBit.x`、`bs.map AddBit.y`、`bs.map AddBit.out`、`bs.map AddBit.carry`。给定输入 x、y 和进位输入 cin，其初值分别为 X、Y、C；输出 out 初始化为 O，进位工作区 carry 初始化为 0。

`rippleAdder_xor_spec` 和 `rippleAdder_xor_correct` 证明：布局中的线路互异时，对任意测量结果，

```text
{ x=X, y=Y, cin=C, out=O, carry=0 }
rippleAdder bs cin
{ out=O ⊕ ((X+Y+C) mod 2^n) }
```

输出寄存器以外的 wire 和相位保持不变，因此输入保留、进位工作区仍为零。

`rippleAdder_spec`、`rippleAdder_correct` 是 O=0 的情形，直接得到截断和。

`rippleAdder_wide_spec` 证明：在输入寄存器 x、y 的最高位各补一位 0，使它们从 n 位扩为 n+1 位，保存的值仍为 X、Y（X、Y<2^n）；输出 out 和进位工作区 carry 也各扩为 n+1 位，并全部初始化为 0。源码用 `bs ++ [high]` 表示扩宽后的逐位单元列表，新增单元 high 包含这四根高位 wire。运行后，out 保存完整的 X+Y+C，最高位可以接住原 n 位加法溢出的进位，因此不再截断。

资源：T=n、M=n；n>0 时 Q=4n+1，n=0 时 Q=0。扩宽版本按扩宽后的位数计数。

## [Subtractor.lean](Subtractor.lean)

该文件实现 n 位减法器。

n 是逐位加法单元列表 bs 的长度；x、y、out、carry 分别是 bs 中各单元的同名字段组成的寄存器。输入 x、y 的初值为 X、Y，输出 out 初始化为 O，进位输入 cin 与进位工作区 carry 初始化为 0。

`rippleSubtractor_xor_spec` 和 `rippleSubtractor_xor_correct` 证明：线路互异，cin 和进位工作区初始为零时，对任意测量结果，

```text
{ x=X, y=Y, cin=0, out=O, carry=0 }
rippleSubtractor bs cin
{ out=O ⊕ ((X+2^n−Y) mod 2^n) }
```

输出以外的 wire 和相位保持不变。`rippleSubtractor_spec` 是 O=0 的情形，输出直接保存截断差。

资源：T=n、M=n、Q=4n+1。空布局仍使用 cin，因此 n=0 时 Q=1。

## [Layout.lean](Layout.lean)

该文件为加减法提供统一寄存器接口。

L 是加减法电路的寄存器布局。n 是布局 L 的位宽 L.width，也就是逐位单元列表 L.bits 的长度。输入 L.x、L.y 的初值为 X、Y，进位输入 L.cin 的初值为 C；输出 L.out 初始化为 O，工作区 L.carry 初始化为 0。下文 x、y、cin、out、carry 是这些字段的简写。

`add_spec`、`sub_spec` 证明：L.wires 互异、进位工作区初始为零时，

```text
{ x=X, y=Y, cin=C, out=O, carry=0 }
add L
{ x=X, y=Y, cin=C, out=O ⊕ ((X+Y+C) mod 2^n), carry=0 }

{ x=X, y=Y, cin=0, out=O, carry=0 }
sub L
{ x=X, y=Y, cin=0, out=O ⊕ ((X+2^n−Y) mod 2^n), carry=0 }
```

这些规格对任意测量结果保持相位。`add_erase_spec`、`sub_erase_spec` 证明再次异或同一结果可以清零输出；`add_twice_spec` 证明连续执行两次 add 恢复原输出。

资源：add、sub 均为 T=n、M=n。add 在 n=0 时 Q=0，否则 Q=4n+1；sub 始终 Q=4n+1。

## [InPlaceAdder.lean](InPlaceAdder.lean)

该文件实现直接更新 y 的加减法。

`addInPlace` 采用 `prog` 循环写法：先从低位到高位计算进位，再写最高和位，最后从高位到低位清除进位并写回其余和位。`c := [cin] ++ carry` 只是把现有进位线路排成列表，不增加 wire。合法布局下已证明它生成的指令列表与原递归版逐项相同；递归定义仅作为私有证明参考。函数保留原参数接口，位宽不匹配时返回空电路，以下规格只适用于合法布局。

x 是加数寄存器，y 是原地更新的目标，cin 是进位输入，carry 是进位工作区；初值分别记作 X、Y、C、0，n 是 x 的位数。受控版本的控制 wire 为 c，初值记作 B；src 是源寄存器，初值为 S，t 是寄存器版本的临时掩码；常量版本中该临时寄存器名为 T。x、y 均为 n 位，carry 有 n−1 位，所有参与线路互异。

`addInPlace_spec` 和 `addInPlace_correct` 证明：carry 初始为零时，对任意测量结果，

```text
{ x=X, y=Y, cin=C, carry=0 }
addInPlace x y carry cin
{ y=(X+Y+C) mod 2^n }
```

y 之外的 wire 和相位保持不变。`subInPlace_spec` 给出 cin=0 时的减法：y 变为 `(Y+2^n−X) mod 2^n`，x、cin 和零进位工作区保持，相位恢复。

受控版本只在控制 c 的值 B=1 时加减。对于位宽匹配、线路互异的布局，`maskedAddConst_spec`、`maskedSubConst_spec` 处理常量 K<2^n；`maskedAddInPlace_spec`、`maskedSubInPlace_spec` 处理源寄存器值 S。令 V 为控制开启时的 K 或 S，否则为零。下面写寄存器版本；常量版本将 t 换为源码中的 T：

```text
{ c=B, y=Y, t=0, cin=0, carry=0 }
受控加法 / 受控减法
{ y=(Y+V) mod 2^n / y=(Y+2^n−V) mod 2^n,
  t=0, cin=0, carry=0 }
```

控制与源保持，相位恢复。用于组合的 `maskedCopyWithFrame_spec` 证明受控复制只向临时寄存器异或源值；`addInPlaceWithSource_spec`、`subInPlaceWithSource_spec` 证明用临时值加减 y 时，外部源与控制保持。

另有 `majority_correct`：a、b、cin、carry 四线互异时，只把 `carryBit(A,B,C)` 异或到 carry，其他 wire 与相位不变。

资源（n≥1）：普通加减均为 T=n−1、M=n−1、Q=3n；受控寄存器加减均为 T=3n−1、M=n−1。本文件未给出后者的精确 Q。

## [MeasuredMaskedAdder.lean](MeasuredMaskedAdder.lean)

该文件用测量清除受控加减法的临时掩码。

c 是控制 wire，src 是源寄存器，初值分别为 B、S；eraseMask 的 dst 是待清理的掩码寄存器。加减版本用 t 存放掩码，y 是原地更新的目标，初值为 Y；cin、carry 是进位输入和工作区，n 是 src 的位数。

`eraseMask_correct` 证明：src 与 dst 等长，且控制、源、目标线路互异时，对任意测量结果，

```text
{ c=B, src=S, dst=(if B then S else 0) }
eraseMask c src dst
{ dst=0 }
```

dst 以外的 wire 和相位保持不变。`eraseMask_frame_spec` 将此结论用于加法器的临时寄存器，同时保留 y、cin 和进位工作区。

`measuredMaskedAddInPlace_spec`、`measuredMaskedSubInPlace_spec` 证明：src、t、y 均为 n 位，carry 有 n−1 位，线路互异时，令 V 为 B=1 时的源值 S，否则为零，

```text
{ c=B, src=S, t=0, y=Y, cin=0, carry=0 }
measuredMaskedAddInPlace / measuredMaskedSubInPlace
{ c=B, src=S, t=0,
  y=(Y+V) mod 2^n / y=(Y+2^n−V) mod 2^n, cin=0, carry=0 }
```

这些规格对任意测量结果恢复相位。

资源：eraseMask 为 T=0、M=dst.length；测量版受控加减均为 T=2n−1、M=2n−1、Q=4n+1（n≥1）。

## [Counter.lean](Counter.lean)

该文件实现 10 位受控加一、减一计数器，要求布局线路互异。

L 是加减法电路的寄存器布局。L.x 保存旧计数 K，L.cin 保存是否加减一的控制值 C；L.out 初始化为 O（转移版本为 0），L.y 和 L.carry 初始化为 0。下文 x、cin、out、y、carry 是这些字段的简写。令

```text
K₊ = (K+C) mod 1024
K₋ = (K+1024−C) mod 1024
```

`counterIncXor_spec`、`counterDecXor_spec` 证明保留旧计数的 XOR 版本：

```text
{ x=K, cin=C, out=O, y=0, carry=0 }
counterIncXor L / counterDecXor L
{ x=K, cin=C, out=O⊕K₊ / out=O⊕K₋, y=0, carry=0 }
```

`counterInc_spec`、`counterDec_spec` 证明将新计数写入零输出、同时清零旧计数的版本：

```text
{ x=K, cin=C, out=0, y=0, carry=0 }
counterInc L / counterDec L
{ x=0, cin=C, out=K₊ / out=K₋, y=0, carry=0 }
```

以上规格均对任意测量结果保持相位。辅助定理 `counterFlip_spec` 证明翻转 y 和 cin 时，x、out 与零进位工作区保持。

资源：XOR 加一/减一均为 T=10、M=10、Q=41；转移并清旧值的版本均为 T=20、M=20、Q=41。
