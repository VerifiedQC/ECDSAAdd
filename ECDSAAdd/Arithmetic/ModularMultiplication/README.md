# 模乘

本模块通过 Montgomery 窗口运算实现标准表示的模乘及受控累加等接口，并证明结果、历史恢复和资源用量。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [ConstDigit.lean](ConstDigit.lean)

按第 i 个四位窗口 d 累加或累减 K·d，通用结论按 261 位截断；不溢出时加法得到 A+K·d，匹配的减法恢复 A。只有累加器改变，相位不变。

### constDigit

正确性由 [constDigit_correct](ConstDigit.lean#L5) 证明：

按第 i 个四位窗口查表，将常量 K 乘窗口值加到或减自累加器，结果对 2^261 取模；保持累加器外基态位与相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `i<64`。
- `K<2^256`。

记 `circuit = if subtract then montLookupSub L ((y.drop (4*i)).take 4) K else montLookupAdd L ((y.drop (4*i)).take 4) K`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.work)=0) }
circuit
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(if subtract then (val₀(L.acc)+2^261-K*((Y/16^i)%16))%2^261 else
    (val₀(L.acc)+K*((Y/16^i)%16))%2^261) }
```

### constDigitAdd

正确性由 [constDigitAdd_correct](ConstDigit.lean#L45) 证明：

在不溢出的前提下，常量窗口累加得到 A 加 K 乘当前窗口值，保持累加器外基态位与相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `i<64`。
- `K<2^256`。
- `A+16*K<2^261`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=A) ∧ (val₀(L.work)=0) }
montLookupAdd L ((y.drop (4*i)).take 4) K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=A+K*((Y/16^i)%16) }
```

### constDigitSub

正确性由 [constDigitSub_correct](ConstDigit.lean#L58) 证明：

减去已加入的常量窗口贡献后恢复累加器原值 A，保持累加器外基态位与相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `i<64`。
- `K<2^256`。
- `A+16*K<2^261`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=A+K*((Y/16^i)%16)) ∧ (val₀(L.work)=0) }
montLookupSub L ((y.drop (4*i)).take 4) K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=A }
```

## [ConstRounds.lean](ConstRounds.lean)

正向 k 个常量窗口得到 `montgomeryValue p X Y k` 和 `montgomeryQuotient p X Y k`，逆向将累加器与历史清零；累加器和历史之外的所有位及相位保持。这里尚未执行最终模 p 规范化。

### constPrepareRounds

正确性由 [constPrepareRounds_correct](ConstRounds.lean#L6) 证明：

k轮后，累加器和整条历史分别等于 a_k 与 Q_k。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=0) ∧ (val₀(L.history)=0) ∧ (val₀(L.work)=0) }
constPrepareRounds L y p X k
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryValue p X Y k
  ∧ val₁(L.history)=montgomeryQuotient p X Y k }
```

### constRestoreRounds

正确性由 [constRestoreRounds_correct](ConstRounds.lean#L34) 证明：

以同一 a_k/Q_k 关系为前提逆序执行，清空累加器与整条历史。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryValue p X Y k) ∧ (val₀(L.history)=montgomeryQuotient p X Y
    k) ∧ (val₀(L.work)=0) }
constRestoreRounds L y p X k
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=0
  ∧ val₁(L.history)=0 }
```

## [ConstStageSpec.lean](ConstStageSpec.lean)

常量 Montgomery 阶段从零累加器、历史、标志及工作区出发，保存 k 个窗口后的 `montgomeryValue p X Y k mod p`、商记录和标志（规范化前的值小于 p 时为真）；完整版本 k=64。恢复阶段利用该历史将累加器、历史和标志清零，输入保持。

### constPreparePrefix

实现约定：[constPreparePrefix_spec](ConstStageSpec.lean#L43)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
(constPrepareRounds L y p X k ++ montNormalize L p)
{ y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k, L.flag=decide (montgomeryValue p X
    Y k<p),L.work=0 }
```

正确性由 [constPreparePrefix_correct](ConstStageSpec.lean#L6) 证明：

常数段公开准备契约：记录带与借位明确保留，临时工作区归零。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=0) ∧ (val₀(L.history)=0) ∧ (s₀[L.flag]=false) ∧ (val₀(L.work)=0) }
constPrepareRounds L y p X k ++ montNormalize L p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryValue p X Y k%p
  ∧ val₁(L.history)=montgomeryQuotient p X Y k
  ∧ s₁[L.flag]=decide (montgomeryValue p X Y k<p) }
```

### constPrepare

实现约定：[constPrepare_spec](ConstStageSpec.lean#L74)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
constPrepare L y p X
{ y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide (montgomeryValue p
    X Y 64<p),L.work=0 }
```

正确性由 [constPrepare_correct](ConstStageSpec.lean#L61) 证明：

常量 Montgomery 准备阶段执行 64 个窗口后，累加器保存规范化结果，历史保存商记录，标志记录规范化前结果是否小于 p；其他基态位及相位保持不变。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=0) ∧ (val₀(L.history)=0) ∧ (s₀[L.flag]=false) ∧ (val₀(L.work)=0) }
constPrepare L y p X
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryValue p X Y 64%p
  ∧ val₁(L.history)=montgomeryQuotient p X Y 64
  ∧ s₁[L.flag]=decide (montgomeryValue p X Y 64<p) }
```

### constRestorePrefix

实现约定：[constRestorePrefix_spec](ConstStageSpec.lean#L119)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k, L.flag=decide (montgomeryValue p X
    Y k<p),L.work=0 }
(montDenormalize L p ++ constRestoreRounds L y p X k)
{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
```

正确性由 [constRestorePrefix_correct](ConstStageSpec.lean#L83) 证明：

常量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryValue p X Y k%p) ∧ (val₀(L.history)=montgomeryQuotient p X
    Y k) ∧ (s₀[L.flag]=decide (montgomeryValue p X Y k<p)) ∧ (val₀(L.work)=0) }
montDenormalize L p ++ constRestoreRounds L y p X k
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=0
  ∧ val₁(L.history)=0
  ∧ s₁[L.flag]=false }
```

### constRestore

实现约定：[constRestore_spec](ConstStageSpec.lean#L150)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide (montgomeryValue p
    X Y 64<p),L.work=0 }
constRestore L y p X
{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
```

正确性由 [constRestore_correct](ConstStageSpec.lean#L137) 证明：

常量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryValue p X Y 64%p) ∧ (val₀(L.history)=montgomeryQuotient p X
    Y 64) ∧ (s₀[L.flag]=decide (montgomeryValue p X Y 64<p)) ∧ (val₀(L.work)=0) }
constRestore L y p X
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=0
  ∧ val₁(L.history)=0
  ∧ s₁[L.flag]=false }
```

## [ConstWindow.lean](ConstWindow.lean)

令 d 为乘数第 i 个四位窗口、U=A+X·d，单个常量窗口将累加器更新为 `(U+(U mod 16)·p)/16`，历史更新为 `H+16^i·(U mod 16)`；逆向恢复 A、H，累加器与历史之外的所有基态位和相位不变。

### constMontWindow

正确性由 [constMontWindow_correct](ConstWindow.lean#L6) 证明：

常数窗口同时推进累加器和四位历史整数；不把非零历史当作已清工作区。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `i<64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `A<2*p`。
- `H<16^i`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=A) ∧ (val₀(L.history)=H) ∧ (val₀(L.work)=0) }
constMontWindow L y p X i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryStep p A X ((Y/16^i)%16)
  ∧ val₁(L.history)= H+16^i*((A+((Y/16^i)%16)*X)%16) }
```

### constMontRestoreWindow

正确性由 [constMontRestoreWindow_correct](ConstWindow.lean#L68) 证明：

恢复窗口以累加器与整条历史的精确关系为前提。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `y++L.wires` 中的 wire 互不相同。
- `256≤y.length`。
- `i<64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `A<2*p`。
- `H<16^i`。

```text
{ 初始状态 = s₀ ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryStep p A X ((Y/16^i)%16)) ∧
    (val₀(L.history)=H+16^i*((A+((Y/16^i)%16)*X)%16)) ∧ (val₀(L.work)=0) }
constMontRestoreWindow L y p X i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=A
  ∧ val₁(L.history)=H }
```

## [FieldMultiply.lean](FieldMultiply.lean)

将 `X·Y mod p` 异或到 O，零输出版本直接得到域乘积；保持两输入，工作区从零恢复为零。

### fieldMul

实现约定：[fieldMul_spec](FieldMultiply.lean#L10)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `X<p`。

```text
{ L.x=X,L.y=Y,L.out=O,L.work=0 }
fieldMul L
{ L.x=X,L.y=Y,L.out=(O XOR ((X*Y)%p)),L.work=0 }
```

### fieldMul_zero

实现约定：[fieldMul_zero_spec](FieldMultiply.lean#L22)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `X<p`。

```text
{ L.x=X,L.y=Y,L.out=0,L.work=0 }
fieldMul L
{ L.x=X,L.y=Y,L.out=((X*Y)%p),L.work=0 }
```

## [MontAdapterSpec.lean](MontAdapterSpec.lean)

在准备—使用—恢复的组合中，将标准表示乘积 `X·Y mod p` 异或到 O，或模加到/模减自 O；受控加减仅在控制开启时更新。输入、控制保持，内部历史与工作区最终清零。

### montSandwich

实现约定：[montSandwich_spec](MontAdapterSpec.lean#L30)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。
- `∀s₀ m, MontPrepared M p X Y s₀.basis → val₀(M.out)=O → (run middle m s₀).phase=s₀.phase ∧ (∀w, w∉M.out → (run middle m s₀).basis w=s₀[w]) ∧ regValue M.out (run middle m s₀).basis=V`。

```text
{ M.x=X,M.y=Y,M.out=O,M.work=0 }
montP M p ++ middle ++ montQ M p
{ M.x=X,M.y=Y,M.out=V,M.work=0 }
```

### montMulXor

实现约定：[montMulXor_spec](MontAdapterSpec.lean#L65)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。

```text
{ M.x=X,M.y=Y,M.out=O,M.work=0 }
montMulXor M p
{ M.x=X,M.y=Y,M.out=(O XOR ((X*Y)%p)),M.work=0 }
```

### montMulAdd

实现约定：[montMulAdd_spec](MontAdapterSpec.lean#L85)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。
- `O<p`。

```text
{ M.x=X,M.y=Y,M.out=O,M.work=0 }
montMulAdd M p
{ M.x=X,M.y=Y,M.out=(O+(X*Y)%p)%p,M.work=0 }
```

### montMulSub

实现约定：[montMulSub_spec](MontAdapterSpec.lean#L107)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。
- `O<p`。

```text
{ M.x=X,M.y=Y,M.out=O,M.work=0 }
montMulSub M p
{ M.x=X,M.y=Y,M.out=(O+p-(X*Y)%p)%p,M.work=0 }
```

### montControlledSandwich

实现约定：[montControlledSandwich_spec](MontAdapterSpec.lean#L130)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `c::M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。
- `∀s₀ m, s₀[c]=B → MontPrepared M p X Y s₀.basis → val₀(M.out)=O → (run middle m s₀).phase=s₀.phase ∧ (∀w, w∉M.out → (run middle m s₀).basis w=s₀[w]) ∧ regValue M.out (run middle m s₀).basis=V`。

```text
{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }
montP M p ++ middle ++ montQ M p
{ c=B,M.x=X,M.y=Y,M.out=V,M.work=0 }
```

### montMulControlledAdd

实现约定：[montMulControlledAdd_spec](MontAdapterSpec.lean#L168)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `c::M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。
- `O<p`。

```text
{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }
montMulControlledAdd c M p
{ c=B,M.x=X,M.y=Y,M.out=(if B then (O+(X*Y)%p)%p else O),M.work=0 }
```

### montMulControlledSub

实现约定：[montMulControlledSub_spec](MontAdapterSpec.lean#L191)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `c::M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。
- `O<p`。

```text
{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }
montMulControlledSub c M p
{ c=B,M.x=X,M.y=Y,M.out=(if B then (O+p-(X*Y)%p)%p else O),M.work=0 }
```

## [MontConstant.lean](MontConstant.lean)

向累加器加上或减去经典常量 K，按累加器位宽截断；累加器之外的位及相位不变。

### montConstantUpdate

正确性由 [montConstantUpdate_correct](MontConstant.lean#L5) 证明：

常量装载、加减及清理组合将 K 加到或减自累加器，并按寄存器位宽截断；保持累加器外基态位与相位。

适用前提：

- `L.cin::(L.table++L.acc++L.carry)` 中的 wire 互不相同。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `K<2^L.table.length`。

记 `circuit = xorConstant L.table K ++ (if subtract then subInPlace L.table L.acc L.carry L.cin else addInPlace L.table L.acc L.carry L.cin) ++ xorConstant L.table K`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.table)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
circuit
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(if subtract then (val₀(L.acc)+2^L.acc.length-K)%2^L.acc.length else
    (val₀(L.acc)+K)%2^L.acc.length) }
```

### montConstantAdd

正确性由 [montConstantAdd_correct](MontConstant.lean#L74) 证明：

适用前提：

- `L.cin::(L.table++L.acc++L.carry)` 中的 wire 互不相同。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `K<2^L.table.length`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.table)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montConstantAdd L K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(val₀(L.acc)+K)%2^L.acc.length }
```

### montConstantSub

正确性由 [montConstantSub_correct](MontConstant.lean#L86) 证明：

累加器减去 K 后按位宽截断，累加器外基态位与相位保持不变。

适用前提：

- `L.cin::(L.table++L.acc++L.carry)` 中的 wire 互不相同。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `K<2^L.table.length`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.table)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montConstantSub L K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(val₀(L.acc)+2^L.acc.length-K)%2^L.acc.length }
```

## [MontDigit.lean](MontDigit.lean)

受控位贡献为 X·2^j 乘相应乘数位；累积窗口前 k 位得到 `U+X·((Y/2^(4i)) mod 2^k)`，完整四位窗口取 k=4，逆序减法恢复 U。通用受控加减按位宽截断，累加器外所有位与相位保持。

### maskedDigit

正确性由 [maskedDigit_correct](MontDigit.lean#L25) 证明：

控制开启时向累加器加上或减去源值，关闭时不改变累加器；结果按位宽截断，其他基态位与相位保持不变。

适用前提：

- `c::cin::(src++mask++acc++carry)` 中的 wire 互不相同。
- `src.length=mask.length`。
- `mask.length=acc.length`。
- `carry.length+1=acc.length`。

记 `circuit = if subtract then measuredMaskedSubInPlace c src mask acc carry cin else measuredMaskedAddInPlace c src mask acc carry cin`。

```text
{ 初始状态 = s₀ ∧ (val₀(mask)=0) ∧ (val₀(carry)=0) ∧ (s₀[cin]=false) }
circuit
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉acc → s₁[w]=s₀[w])
  ∧ val₁(acc)=(if subtract then (val₀(acc)+2^acc.length-(if s₀[c] then val₀(src) else 0))%2^acc.length else
    (val₀(acc)+(if s₀[c] then val₀(src) else 0))%2^acc.length) }
```

### montBit

正确性由 [montBit_correct](MontDigit.lean#L75) 证明：

按乘数的第 4i+j 位，向累加器加上或减去 X·2^j，结果对 2^261 取模；保持累加器外基态位与相位。

适用前提：

- `j<4`。
- `4*i+j<y.length`。
- `L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)` 中的 wire 互不相同。
- `256≤x.length`。
- `L.pad.length=5`。
- `L.mask.length=261`。
- `L.acc.length=261`。
- `L.carry.length=260`。
- `X<2^256`。

记 `c = y.getD (4*i+j) L.flag`；`circuit = if subtract then measuredMaskedSubInPlace c (L.source x j) L.mask L.acc L.carry L.cin else measuredMaskedAddInPlace c (L.source x j) L.mask L.acc L.carry L.cin`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.pad)=0) ∧ (val₀(L.mask)=0) ∧ (val₀(L.carry)=0) ∧
    (s₀[L.cin]=false) }
circuit
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(if subtract then (val₀(L.acc)+2^261-X*2^j*((Y/2^(4*i+j))%2))%2^261 else
    (val₀(L.acc)+X*2^j*((Y/2^(4*i+j))%2))%2^261) }
```

### montAddBits

正确性由 [montAddBits_correct](MontDigit.lean#L138) 证明：

累加当前窗口前 k 位的乘积贡献后，累加器为 U + X·((Y / 2^(4i)) mod 2^k)，保持其他基态位与相位。

适用前提：

- `k≤4`。
- `4*i+4≤y.length`。
- `L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)` 中的 wire 互不相同。
- `256≤x.length`。
- `L.pad.length=5`。
- `L.mask.length=261`。
- `L.acc.length=261`。
- `L.carry.length=260`。
- `X<2^256`。
- `U+16*X<2^261`。

记 `circuit = (List.range k).flatMap (fun j => measuredMaskedAddInPlace (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin)`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=U) ∧ (val₀(L.pad)=0) ∧ (val₀(L.mask)=0) ∧
    (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
circuit
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=U+X*((Y/2^(4*i))%2^k) }
```

### montSubBits

正确性由 [montSubBits_correct](MontDigit.lean#L188) 证明：

逆序减去窗口前 k 位的乘积贡献后，累加器恢复 U，保持其他基态位与相位。

适用前提：

- `k≤4`。
- `4*i+4≤y.length`。
- `L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)` 中的 wire 互不相同。
- `256≤x.length`。
- `L.pad.length=5`。
- `L.mask.length=261`。
- `L.acc.length=261`。
- `L.carry.length=260`。
- `X<2^256`。
- `U+16*X<2^261`。

记 `circuit = (List.range k).reverse.flatMap (fun j => measuredMaskedSubInPlace (y.getD (4*i+j) L.flag) (L.source x j) L.mask L.acc L.carry L.cin)`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=U+X*((Y/2^(4*i))%2^k)) ∧ (val₀(L.pad)=0) ∧
    (val₀(L.mask)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
circuit
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=U }
```

### montAddDigit

正确性由 [montAddDigit_correct](MontDigit.lean#L243) 证明：

变量窗口的四次受控Add，只改变累加器并清临时字。

适用前提：

- `4*i+4≤y.length`。
- `L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)` 中的 wire 互不相同。
- `256≤x.length`。
- `L.pad.length=5`。
- `L.mask.length=261`。
- `L.acc.length=261`。
- `L.carry.length=260`。
- `X<2^256`。
- `U+16*X<2^261`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=U) ∧ (val₀(L.pad)=0) ∧ (val₀(L.mask)=0) ∧
    (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montAddDigit L x y i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=U+X*((Y/16^i)%16) }
```

### montSubDigit

正确性由 [montSubDigit_correct](MontDigit.lean#L260) 证明：

变量窗口的四次受控Sub，只改变累加器并清临时字。

适用前提：

- `4*i+4≤y.length`。
- `L.cin::(x++y++L.pad++L.mask++L.acc++L.carry)` 中的 wire 互不相同。
- `256≤x.length`。
- `L.pad.length=5`。
- `L.mask.length=261`。
- `L.acc.length=261`。
- `L.carry.length=260`。
- `X<2^256`。
- `U+16*X<2^261`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=U+X*((Y/16^i)%16)) ∧ (val₀(L.pad)=0) ∧ (val₀(L.mask)=0)
    ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montSubDigit L x y i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=U }
```

## [MontLookup.lean](MontLookup.lean)

查表、加减、清表的组合将地址值乘 K 加到或减自累加器，并按位宽截断；累加器外所有位与相位不变。

### montLookupUpdate

正确性由 [montLookupUpdate_correct](MontLookup.lean#L24) 证明：

查表加法以 addr 为只读输入，仅改变 acc；table/scratch/carry 全部回零。

适用前提：

- `L.cin::(addr++L.table++L.acc++L.carry++L.scratch)` 中的 wire 互不相同。
- `addr.length=4`。
- `L.scratch.length=3`。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `∀ d<16, d*K<2^L.table.length`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.table)=0) ∧ (val₀(L.scratch)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montLookup L addr K ++ (if subtract then subInPlace L.table L.acc L.carry L.cin else addInPlace L.table L.acc
    L.carry L.cin) ++ montLookup L addr K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)= (if subtract then (val₀(L.acc) + 2^L.acc.length - val₀(addr)*K)%2^L.acc.length else
    (val₀(L.acc) + val₀(addr)*K)%2^L.acc.length) }
```

### montLookupAdd

正确性由 [montLookupAdd_correct](MontLookup.lean#L128) 证明：

查表Add更新仅改变 acc，并清空查表和算术工作区。

适用前提：

- `L.cin::(addr++L.table++L.acc++L.carry++L.scratch)` 中的 wire 互不相同。
- `addr.length=4`。
- `L.scratch.length=3`。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `∀ d<16, d*K<2^L.table.length`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.table)=0) ∧ (val₀(L.scratch)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montLookupAdd L addr K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(val₀(L.acc) + val₀(addr)*K)%2^L.acc.length }
```

### montLookupSub

正确性由 [montLookupSub_correct](MontLookup.lean#L143) 证明：

查表Sub更新仅改变 acc，并清空查表和算术工作区。

适用前提：

- `L.cin::(addr++L.table++L.acc++L.carry++L.scratch)` 中的 wire 互不相同。
- `addr.length=4`。
- `L.scratch.length=3`。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `∀ d<16, d*K<2^L.table.length`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.table)=0) ∧ (val₀(L.scratch)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) }
montLookupSub L addr K
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(val₀(L.acc) + 2^L.acc.length - val₀(addr)*K)%2^L.acc.length }
```

## [MontNormalize.lean](MontNormalize.lean)

规范化得到 A mod p，并把标志置为 A<p；反向利用该标志恢复 A、清零标志。累加器与标志之外的位及相位保持。

### montNormalize

正确性由 [montNormalize_correct](MontNormalize.lean#L84) 证明：

保存借位的规范化：仅 acc/flag 改变，flag 记录 A<p，其他位逐线保持。

适用前提：

- `L.flag::L.cin::(L.table++L.acc++L.carry)` 中的 wire 互不相同。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `L.acc.length=261`。
- `p<2^256`。
- `A<2*p`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.acc)=A) ∧ (val₀(L.table)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) ∧ (s₀[L.flag]=false)
    }
montNormalize L p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=A%p
  ∧ s₁[L.flag]=decide (A<p) }
```

### montDenormalize

正确性由 [montDenormalize_correct](MontNormalize.lean#L177) 证明：

使用已保存借位恢复 A，并将 flag 清零；仍只改变 acc/flag。

适用前提：

- `L.flag::L.cin::(L.table++L.acc++L.carry)` 中的 wire 互不相同。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `L.acc.length=261`。
- `p<2^256`。
- `A<2*p`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.acc)=A%p) ∧ (val₀(L.table)=0) ∧ (val₀(L.carry)=0) ∧ (s₀[L.cin]=false) ∧
    (s₀[L.flag]=decide (A<p)) }
montDenormalize L p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=A
  ∧ s₁[L.flag]=false }
```

## [MontPQ.lean](MontPQ.lean)

montP 从两输入和零工作区得到 MontPrepared，包含标准模积及两段恢复历史；montQ 从该中间态恢复两输入和全零工作区。准备本身不清空历史。

### montP

实现约定：[montP_spec](MontPQ.lean#L152)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。

```text
{ val₀(M.x)=X ∧ val₀(M.y)=Y ∧ val₀(M.work)=0 }
montP M p
{ MontPrepared M p X Y s₁.basis }
```

正确性由 [montP_correct](MontPQ.lean#L6) 证明：

P 在一份共享工作区上依次准备变量段和常数转换段，保存两套历史。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。

```text
{ 初始状态 = s₀ ∧ (val₀(M.x)=X) ∧ (val₀(M.y)=Y) ∧ (val₀(M.work)=0) }
montP M p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉M.work → s₁[w]=s₀[w])
  ∧ MontPrepared M p X Y s₁.basis }
```

### montQ

实现约定：[montQ_spec](MontPQ.lean#L161)。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。

```text
{ MontPrepared M p X Y s₀.basis }
montQ M p
{ val₁(M.x)=X ∧ val₁(M.y)=Y ∧ val₁(M.work)=0 }
```

正确性由 [montQ_correct](MontPQ.lean#L77) 证明：

Q 按相反段序执行新的前向门列，消费两条历史并清空整个分配工作区。

适用前提：

- `p.Prime`。
- 布局满足位宽条件 `M.Widths`。
- `M.wires` 中的 wire 互不相同。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `Y<2^256`。

```text
{ 初始状态 = s₀ ∧ (MontPrepared M p X Y s₀.basis) }
montQ M p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉M.work → s₁[w]=s₀[w])
  ∧ val₁(M.x)=X
  ∧ val₁(M.y)=Y
  ∧ val₁(M.work)=0 }
```

## [MontReduce.lean](MontReduce.lean)

一次四位约减将 U 变为 `(U+(U mod 16)·p)/16`，记录 U mod 16；恢复得到 U 并清零该记录，累加器和当前记录外的位及相位不变。

### montReduce

正确性由 [montReduce_correct](MontReduce.lean#L15) 证明：

单次约减记录低四位，查表加修正项，并实际右旋四位。

适用前提：

- `L.cin::(L.record i++L.table++L.acc++L.carry++L.scratch)` 中的 wire 互不相同。
- `(L.record i).length=4`。
- `L.scratch.length=3`。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `L.acc.length=261`。
- `p%16=15`。
- `∀ d<16, d*p<2^L.table.length`。
- `U+(U%16)*p<2^261`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.acc)=U) ∧ (val₀(L.table)=0) ∧ (val₀(L.scratch)=0) ∧ (val₀(L.carry)=0) ∧
    (s₀[L.cin]=false) ∧ (val₀(L.record i)=0) }
montReduce L p i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.record i → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=(U+(U%16)*p)/16
  ∧ val₁(L.record i)=U%16 }
```

### montRestoreReduce

正确性由 [montRestoreReduce_correct](MontReduce.lean#L80) 证明：

逆序约减以保存的低四位为契约，恢复 U 后清记录。

适用前提：

- `L.cin::(L.record i++L.table++L.acc++L.carry++L.scratch)` 中的 wire 互不相同。
- `(L.record i).length=4`。
- `L.scratch.length=3`。
- `L.table.length=L.acc.length`。
- `L.carry.length+1=L.acc.length`。
- `L.acc.length=261`。
- `p%16=15`。
- `∀ d<16, d*p<2^L.table.length`。
- `U+(U%16)*p<2^261`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.acc)=(U+(U%16)*p)/16) ∧ (val₀(L.table)=0) ∧ (val₀(L.scratch)=0) ∧ (val₀(L.carry)=0) ∧
    (s₀[L.cin]=false) ∧ (val₀(L.record i)=U%16) }
montRestoreReduce L p i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.record i → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=U
  ∧ val₁(L.record i)=0 }
```

## [MontRotate.lean](MontRotate.lean)

满足低 k 位为零时，右循环移位 k 位的读值为 `X/2^k`；满足高位空间足够时，左循环移位 k 位的读值为 `2^k·X`。

### rotateRightBits

实现约定：[rotateRightBits_spec](MontRotate.lean#L40)。

适用前提：

- `r` 中的 wire 互不相同。
- `X%2^k=0`。

```text
{ r=X }
rotateRightBits r k
{ r=(X/2^k) }
```

### rotateLeftBits

实现约定：[rotateLeftBits_spec](MontRotate.lean#L55)。

适用前提：

- `r` 中的 wire 互不相同。
- `2^k*X<2^r.length`。

```text
{ r=X }
rotateLeftBits r k
{ r=(2^k*X) }
```

## [MontRounds.lean](MontRounds.lean)

正向 k 个变量窗口得到 `montgomeryValue p X Y k` 和 `montgomeryQuotient p X Y k`，逆向将累加器与历史清零；累加器和历史之外的所有位及相位保持。这里尚未执行最终模 p 规范化。

### montPrepareRounds

正确性由 [montPrepareRounds_correct](MontRounds.lean#L6) 证明：

k轮后，累加器和整条历史分别等于 a_k 与 Q_k。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=0) ∧ (val₀(L.history)=0) ∧ (val₀(L.work)=0) }
montPrepareRounds L x y p k
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryValue p X Y k
  ∧ val₁(L.history)=montgomeryQuotient p X Y k }
```

### montRestoreRounds

正确性由 [montRestoreRounds_correct](MontRounds.lean#L35) 证明：

以同一 a_k/Q_k 关系为前提逆序执行，清空累加器与整条历史。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryValue p X Y k) ∧
    (val₀(L.history)=montgomeryQuotient p X Y k) ∧ (val₀(L.work)=0) }
montRestoreRounds L x y p k
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=0
  ∧ val₁(L.history)=0 }
```

## [MontStageSpec.lean](MontStageSpec.lean)

变量 Montgomery 阶段从零累加器、历史、标志及工作区出发，保存 k 个窗口后的 `montgomeryValue p X Y k mod p`、商记录和标志（规范化前的值小于 p 时为真）；完整版本 k=64。恢复阶段利用该历史将累加器、历史和标志清零，输入保持。

### montPreparePrefix

实现约定：[montPreparePrefix_spec](MontStageSpec.lean#L43)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
(montPrepareRounds L x y p k ++ montNormalize L p)
{ x=X,y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k, L.flag=decide (montgomeryValue
    p X Y k<p),L.work=0 }
```

正确性由 [montPreparePrefix_correct](MontStageSpec.lean#L6) 证明：

变量段公开准备契约：记录带与借位明确保留，临时工作区归零。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=0) ∧ (val₀(L.history)=0) ∧ (s₀[L.flag]=false) ∧
    (val₀(L.work)=0) }
montPrepareRounds L x y p k ++ montNormalize L p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryValue p X Y k%p
  ∧ val₁(L.history)=montgomeryQuotient p X Y k
  ∧ s₁[L.flag]=decide (montgomeryValue p X Y k<p) }
```

### montPrepare

实现约定：[montPrepare_spec](MontStageSpec.lean#L75)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
montPrepare L x y p
{ x=X,y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide
    (montgomeryValue p X Y 64<p),L.work=0 }
```

正确性由 [montPrepare_correct](MontStageSpec.lean#L62) 证明：

变量 Montgomery 准备阶段执行 64 个窗口后，累加器保存规范化结果，历史保存商记录，标志记录规范化前结果是否小于 p；其他基态位及相位保持不变。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=0) ∧ (val₀(L.history)=0) ∧ (s₀[L.flag]=false) ∧
    (val₀(L.work)=0) }
montPrepare L x y p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryValue p X Y 64%p
  ∧ val₁(L.history)=montgomeryQuotient p X Y 64
  ∧ s₁[L.flag]=decide (montgomeryValue p X Y 64<p) }
```

### montRestorePrefix

实现约定：[montRestorePrefix_spec](MontStageSpec.lean#L120)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ x=X,y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k, L.flag=decide (montgomeryValue
    p X Y k<p),L.work=0 }
(montDenormalize L p ++ montRestoreRounds L x y p k)
{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
```

正确性由 [montRestorePrefix_correct](MontStageSpec.lean#L84) 证明：

变量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `k≤64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryValue p X Y k%p) ∧
    (val₀(L.history)=montgomeryQuotient p X Y k) ∧ (s₀[L.flag]=decide (montgomeryValue p X Y k<p)) ∧
    (val₀(L.work)=0) }
montDenormalize L p ++ montRestoreRounds L x y p k
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=0
  ∧ val₁(L.history)=0
  ∧ s₁[L.flag]=false }
```

### montRestore

实现约定：[montRestore_spec](MontStageSpec.lean#L152)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ x=X,y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64, L.flag=decide
    (montgomeryValue p X Y 64<p),L.work=0 }
montRestore L x y p
{ x=X,y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }
```

正确性由 [montRestore_correct](MontStageSpec.lean#L139) 证明：

变量 Montgomery 恢复阶段利用对应历史撤销计算，将累加器、历史与规范化标志清零，保持其他基态位及相位。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryValue p X Y 64%p) ∧
    (val₀(L.history)=montgomeryQuotient p X Y 64) ∧ (s₀[L.flag]=decide (montgomeryValue p X Y 64<p)) ∧
    (val₀(L.work)=0) }
montRestore L x y p
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → w≠L.flag → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=0
  ∧ val₁(L.history)=0
  ∧ s₁[L.flag]=false }
```

## [MontWindow.lean](MontWindow.lean)

令 d 为乘数第 i 个四位窗口、U=A+X·d，单个变量窗口将累加器更新为 `(U+(U mod 16)·p)/16`，历史更新为 `H+16^i·(U mod 16)`；逆向恢复 A、H，累加器与历史之外的所有基态位和相位不变。

### montWindow

正确性由 [montWindow_correct](MontWindow.lean#L6) 证明：

变量窗口同时推进累加器和四位历史整数；不把非零历史当作已清工作区。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `i<64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `A<2*p`。
- `H<16^i`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=A) ∧ (val₀(L.history)=H) ∧ (val₀(L.work)=0) }
montWindow L x y p i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=montgomeryStep p A X ((Y/16^i)%16)
  ∧ val₁(L.history)= H+16^i*((A+((Y/16^i)%16)*X)%16) }
```

### montRestoreWindow

正确性由 [montRestoreWindow_correct](MontWindow.lean#L71) 证明：

恢复窗口以累加器与整条历史的精确关系为前提。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `x++y++L.wires` 中的 wire 互不相同。
- `256≤x.length`。
- `256≤y.length`。
- `i<64`。
- `p<2^256`。
- `p%16=15`。
- `X<p`。
- `A<2*p`。
- `H<16^i`。

```text
{ 初始状态 = s₀ ∧ (val₀(x)=X) ∧ (val₀(y)=Y) ∧ (val₀(L.acc)=montgomeryStep p A X ((Y/16^i)%16)) ∧
    (val₀(L.history)=H+16^i*((A+((Y/16^i)%16)*X)%16)) ∧ (val₀(L.work)=0) }
montRestoreWindow L x y p i
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉L.acc → w∉L.history → s₁[w]=s₀[w])
  ∧ val₁(L.acc)=A
  ∧ val₁(L.history)=H }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [FieldMultiply.lean](FieldMultiply.lean)

- 资源：`fieldMul L`：T = `379424`，M = `379424`，Q = `2596`。

### [MontAdapterResources.lean](MontAdapterResources.lean)

- 资源：

  - `montMulXor M p`：T = `379424`，M = `379424`，Q = `2596`。
  - `montMulAdd M p`：T = `380447`，M = `380447`，Q = `2596`。
  - `montMulSub M p`：T = `380959`，M = `380959`，Q = `2596`。
  - `montMulControlledAdd c M p`：T = `380959`，M = `380447`，Q = `2597`。
  - `montMulControlledSub c M p`：T = `381471`，M = `380959`，Q = `2597`。

### [MontCounts.lean](MontCounts.lean)

- 资源：使用 MontStageLayout.Widths / MontLayout.Widths 规定的固定布局；查表地址为 4 位，轮数 k≤64，完整阶段为 64 个窗口。

  - `montLookup L addr K`：T = `14`，M = `14`。
  - `montLookupAdd L addr K` / `montLookupSub L addr K` / `montReduce L p i` / `montRestoreReduce L p i`：T = `288`，M = `288`。
  - `montNormalize L p` / `montDenormalize L p`：T = `520`，M = `520`。
  - `montAddDigit L x y i` / `montSubDigit L x y i`：T = `2084`，M = `2084`。
  - `montWindow L x y p i` / `montRestoreWindow L x y p i`：T = `2372`，M = `2372`。
  - `constMontWindow L y p K i` / `constMontRestoreWindow L y p K i`：T = `576`，M = `576`。
  - `montPrepareRounds L x y p k` / `montRestoreRounds L x y p k`：T = `2372*k`，M = `2372*k`。
  - `constPrepareRounds L y p K k` / `constRestoreRounds L y p K k`：T = `576*k`，M = `576*k`。
  - `montPrepare L x y p` / `montRestore L x y p`：T = `152328`，M = `152328`。
  - `constPrepare L y p K` / `constRestore L y p K`：T = `37384`，M = `37384`。
  - `montP M p` / `montQ M p`：T = `189712`，M = `189712`。

### [MontResources.lean](MontResources.lean)

- 资源：`montP M p` / `montQ M p`：T = `189712`，M = `189712`，Q = `2339`。

### [MontRotate.lean](MontRotate.lean)

- 资源：`rotateRightBits r k` / `rotateLeftBits r k`：T = `0`，M = `0`。
