# 求逆模块：怎样得到逆元，又把工作区清干净

本模块实现 Kaliski 模逆元电路，包括固定轮循环、缩放、结果输出和历史恢复，并提供相关布局与资源证明。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [Borrow.lean](Borrow.lean)

将 `i<K` 的判断异或到目标标志，保持计数 K，辅助寄存器、进位输入及工作位恢复零。

### counterActiveXor

实现约定：[counterActiveXor_spec](Borrow.lean#L12)。

适用前提：

- `target::L.wires` 中的 wire 互不相同。
- `L.width=10`。
- `i<512`。

```text
{ target=T, L.x=K, L.y=0, L.cin=false, L.carry=0 }
counterActiveXor L target i
{ target=(T XOR decide (i < K)), L.x=K, L.y=0, L.cin=false, L.carry=0 }
```

## [HalveInPlace.lean](HalveInPlace.lean)

在 `i<K` 时执行一次模减半或模倍增，否则数据 X 不变；计数 K 保持，工作区从零恢复为零。

### halveStep

实现约定：[halveStep_spec](HalveInPlace.lean#L491)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `q % 2 = 1`。
- `X < q`。
- `2*q ≤ 2^L.data.length`。
- `i < 512`。

```text
{ L.data=X, L.counter.x=K, L.work=0 }
halveStep L q i
{ L.data=(if i<K then halveMod q X else X), L.counter.x=K, L.work=0 }
```

### doubleStep

实现约定：[doubleStep_spec](HalveInPlace.lean#L501)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `q % 2 = 1`。
- `X < q`。
- `2*q ≤ 2^L.data.length`。
- `i < 512`。

```text
{ L.data=X, L.counter.x=K, L.work=0 }
doubleStep L q i
{ L.data=(if i<K then (2*X)%q else X), L.counter.x=K, L.work=0 }
```

## [HalvingLoop.lean](HalvingLoop.lean)

在 K 的规定范围内，512 个固定步骤恰好执行 K 次有效模减半；恢复程序从该结果还原 X，计数 K 保持且工作区恢复零。

### halveInPlace

实现约定：[halveInPlace_spec](HalvingLoop.lean#L52)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `q % 2 = 1`。
- `X < q`。
- `2*q ≤ 2^L.data.length`。
- `K ≤ 512`。

```text
{ L.data=X, L.counter.x=K, L.work=0 }
halveInPlace L q 0 512
{ L.data=(halveMod q)^[K] X, L.counter.x=K, L.work=0 }
```

### restoreInPlace

实现约定：[restoreInPlace_spec](HalvingLoop.lean#L63)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `q % 2 = 1`。
- `X < q`。
- `2*q ≤ 2^L.data.length`。
- `K ≤ 512`。

```text
{ L.data=(halveMod q)^[K] X, L.counter.x=K, L.work=0 }
restoreInPlace L q 0 512
{ L.data=X, L.counter.x=K, L.work=0 }
```

## [InverseLoopSpec.lean](InverseLoopSpec.lean)

从 Kaliski 初态准备逆元 `X⁻¹ mod q`，临时算术工作区清零，但保留 InverseHistory 供撤销；恢复程序还原初态。完整循环将逆元异或到 O（或写入零输出），同时恢复初始数据和工作区。

### inversePrepare

实现约定：[inversePrepare_spec](InverseLoopSpec.lean#L63)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.records.length=512`。
- `L.first.counter.width=10`。
- `L.first.low.length=256`。
- `L.arithmetic.width=256`。
- `L.a.length=257`。
- `L.temp.length=257`。
- `q<2^256`。
- `q%16=15`。
- `0<X`。
- `X<q`。
- `q.Coprime X`。

```text
{ L.first.u=q, L.first.v=X, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0 }
inverseCompute L q
{ L.a=((X : ZMod q)⁻¹).val, L.temp=0, L.arithmetic.wires=0, InverseHistory L q X s₁.basis }
```

### inverseRestore

实现约定：[inverseRestore_spec](InverseLoopSpec.lean#L78)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.records.length=512`。
- `L.first.counter.width=10`。
- `L.first.low.length=256`。
- `L.arithmetic.width=256`。
- `L.a.length=257`。
- `L.temp.length=257`。
- `q<2^256`。
- `q%16=15`。
- `0<X`。
- `X<q`。
- `q.Coprime X`。

```text
{ L.a=((X : ZMod q)⁻¹).val, L.temp=0, L.arithmetic.wires=0, InverseHistory L q X s₀.basis }
inverseUncompute L q
{ L.first.u=q, L.first.v=X, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0 }
```

### inverseLoop_xor

实现约定：[inverseLoop_xor_spec](InverseLoopSpec.lean#L94)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.records.length=512`。
- `L.first.counter.width=10`。
- `L.first.low.length=256`。
- `L.arithmetic.width=256`。
- `L.a.length=257`。
- `L.temp.length=257`。
- `L.out.length=257`。
- `q<2^256`。
- `q%16=15`。
- `0<a`。
- `a<q`。
- `q.Coprime a`。

```text
{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=O }
inverseLoop L q
{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=(O XOR
    kaliskiInverse q a 256) }
```

### inverseLoop

实现约定：[inverseLoop_spec](InverseLoopSpec.lean#L110)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.records.length=512`。
- `L.first.counter.width=10`。
- `L.first.low.length=256`。
- `L.arithmetic.width=256`。
- `L.a.length=257`。
- `L.temp.length=257`。
- `L.out.length=257`。
- `q<2^256`。
- `q%16=15`。
- `0<a`。
- `a<q`。
- `q.Coprime a`。

```text
{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0, L.out=0 }
inverseLoop L q
{ L.first.u=q, L.first.v=a, L.first.r=0, L.first.s=1, L.first.k=0, L.first.done=false, L.work=0,
    L.out=kaliskiInverse q a 256 }
```

## [InverseScale.lean](InverseScale.lean)

从逆元中间值 N、计数 K 及零历史/工作区出发，prepare 将 a 更新为 `montgomeryValue q (inverseScaleFactor q K) N 64 mod q`，保持 K，并保留原 N、商记录和规范化标志；工作区清零。restore 利用这些历史恢复 N、K，并清零历史/工作区。

### prepare

实现约定：[prepare_spec](InverseScale.lean#L291)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `q%16=15`。
- `q<2^256`。
- `N<q`。

```text
{ L.a=N,L.k=K,L.live=0,L.work=0 }
L.prepare q
{ L.Prepared q K N s₁.basis }
```

### restore

实现约定：[restore_spec](InverseScale.lean#L315)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `q%16=15`。
- `q<2^256`。
- `N<q`。

```text
{ L.Prepared q K N s₀.basis }
L.restore q
{ L.a=N,L.k=K,L.live=0,L.work=0 }
```

## [InverseSpec.lean](InverseSpec.lean)

非零域输入 X 与零工作区下，将 `((X : Fp)⁻¹).val` 异或到 O；零输出版本直接得到逆元，保持 X，工作区恢复零。

### fieldInverse_xor

实现约定：[fieldInverse_xor_spec](InverseSpec.lean#L58)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `0<X`。
- `X<p`。

```text
{ L.x=X,L.out=O,L.work=0 }
fieldInverse L
{ L.x=X,L.out=(O XOR ((X : Fp)⁻¹).val),L.work=0 }
```

### fieldInverse

实现约定：[fieldInverse_spec](InverseSpec.lean#L101)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- 布局满足位宽条件 `L.Widths`。
- `0<X`。
- `X<p`。

```text
{ L.x=X,L.out=0,L.work=0 }
fieldInverse L
{ L.x=X,L.out=((X : Fp)⁻¹).val,L.work=0 }
```

## [InverseTerminalConstants.lean](InverseTerminalConstants.lean)

终态寄存器 `(u=1,s=q)` 与 `(u=0,s=0)` 之间可双向转换。

### terminalConstants

实现约定：[terminalConstants_spec](InverseTerminalConstants.lean#L48)。

适用前提：

- `I.wires` 中的 wire 互不相同。
- `I.first.low.length=256`。
- `q<2^256`。

```text
{ I.middle.u=1,I.middle.s=q }
terminalConstants I q
{ I.middle.u=0,I.middle.s=0 }
```

```text
{ I.middle.u=0,I.middle.s=0 }
terminalConstants I q
{ I.middle.u=1,I.middle.s=q }
```

正确性由 [terminalConstants_correct](InverseTerminalConstants.lean#L11) 证明：

不触碰r、K、记录及其它工作位；此入口也描述相同门列的写回方向。

适用前提：

- `I.wires` 中的 wire 互不相同。
- `I.first.low.length=256`。
- `q<2^256`。

```text
{ 初始状态 = s₀ }
terminalConstants I q
{ s₁.phase=s₀.phase
  ∧ val₁(I.middle.u)=val₀(I.middle.u) XOR 1
  ∧ val₁(I.middle.s)=val₀(I.middle.s) XOR q
  ∧ (∀ w,w∉I.middle.u → w∉I.middle.s → s₁[w]=s₀[w]) }
```

## [KaliskiLoopProof.lean](KaliskiLoopProof.lean)

正向循环得到相同次数的数学 kaliskiStep 迭代及对应分支记录；反向从该记录恢复原状态并清零记录带。这是两个 Triple 前后状态结论，而非仅凭 `_correct` 后缀就能推出任意外部位保持。

### kaliskiLoop

正确性由 [kaliskiLoop_correct](KaliskiLoopProof.lean#L30) 证明：

固定长度正逆循环：每轮独占记录对，递归部分保留先前记录，逆向则全部清零。

适用前提：

- `L.tapeWires rs` 中的 wire 互不相同。
- `L.counter.width=10`。
- `2≤L.data.width`。
- `i+rs.length≤512`。
- `KRoundCount i z`。
- `KInvariant p a z`。
- `p<2^L.low.length`。
- `z.u<2^L.low.length`。
- `z.v<2^L.low.length`。

```text
{ LoopState L z s₀.basis ∧ TapeValues rs (List.replicate rs.length (false,false)) s₀.basis }
kaliskiLoop L i rs
{ LoopState (loopEndLayout L rs.length) ((kaliskiStep^[rs.length]) z) s₁.basis ∧ TapeValues rs (kaliskiCodes
    rs.length z) s₁.basis }
```

```text
{ LoopState (loopEndLayout L rs.length) ((kaliskiStep^[rs.length]) z) s₀.basis ∧ TapeValues rs (kaliskiCodes
    rs.length z) s₀.basis }
kaliskiUnloop L i rs
{ LoopState L z s₁.basis ∧ TapeValues rs (List.replicate rs.length (false,false)) s₁.basis }
```

## [MaskedAdder.lean](MaskedAdder.lean)

把旧值 A 与受控源 X 的和/差截断到位宽后写入初始为零的 out，同时将旧值寄存器清零；源 X、控制保持，掩码及进位工作区恢复零。

### maskedAdd

实现约定：[maskedAdd_spec](MaskedAdder.lean#L102)。

适用前提：

- `c::(src++L.wires)` 中的 wire 互不相同。
- `src.length=L.width`。

```text
{ src=X, c=C, L.x=A, L.y=0, L.cin=false, L.out=0, L.carry=0 }
maskedAdd L src c
{ src=X, c=C, L.x=0, L.y=0, L.cin=false, L.out=((A+(if C then X else 0))%2^L.width), L.carry=0 }
```

### maskedSub

实现约定：[maskedSub_spec](MaskedAdder.lean#L157)。

适用前提：

- `c::(src++L.wires)` 中的 wire 互不相同。
- `src.length=L.width`。

```text
{ src=X, c=C, L.x=A, L.y=0, L.cin=false, L.out=0, L.carry=0 }
maskedSub L src c
{ src=X, c=C, L.x=0, L.y=0, L.cin=false, L.out=((A+2^L.width-(if C then X else 0))%2^L.width), L.carry=0 }
```

## [NegativeEven.lean](NegativeEven.lean)

在定理给出的偶性与范围条件下，把 R 原地变为模 q 的负值，恢复程序还原 R；保留另一寄存器 Z，工作区恢复零。

### negativeEven

实现约定：[negativeEven_spec](NegativeEven.lean#L134)。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `q<2^n`。
- `q%2=1`。
- `0<R`。
- `R<2*q`。
- `R%2=0`。

```text
{ L.a=R,L.z=Z,L.work=0 }
negativeEven L q
{ L.a=(-(R : ZMod q)).val,L.z=Z,L.work=0 }
```

```text
{ L.a=(-(R : ZMod q)).val,L.z=Z,L.work=0 }
restoreNegativeEven L q
{ L.a=R,L.z=Z,L.work=0 }
```

正确性由 [negativeEven_correct](NegativeEven.lean#L117) 证明：

两个方向均保持目标外的每根线，并对任意测量记录恢复相位。

适用前提：

- 布局满足位宽条件 `L.Widths n`。
- `L.wires` 中的 wire 互不相同。
- `q<2^n`。
- `q%2=1`。
- `0<R`。
- `R<2*q`。
- `R%2=0`。

```text
{ 初始状态 = s₀ ∧ (val₀(L.work)=0) ∧ val₀(L.a)=R }
negativeEven L q
{ s₁.phase=s₀.phase
  ∧ val₁(L.a)=(-(R : ZMod q)).val
  ∧ (∀ w,w∉L.a→s₁[w]=s₀[w]) }
```

```text
{ 初始状态 = s₀ ∧ (val₀(L.work)=0) ∧ val₀(L.a)=(-(R : ZMod q)).val }
restoreNegativeEven L q
{ s₁.phase=s₀.phase
  ∧ val₁(L.a)=R
  ∧ (∀ w,w∉L.a→s₁[w]=s₀[w]) }
```

## [NegativeInit.lean](NegativeInit.lean)

目标异或 `(q−(X mod q)) mod q`，目标之外的所有基态位与相位不变，包括恢复临时工作区。

### negativeInit

正确性由 [negativeInit_correct](NegativeInit.lean#L10) 证明：

先将源值对 q 约减，再把其模负值异或到目标，保持目标外基态位与相位。

适用前提：

- `src ++ temp ++ dst ++ L.wires` 中的 wire 互不相同。
- `src.length=L.width+1`。
- `temp.length=L.width+1`。
- `dst.length=L.width+1`。
- `0<q`。
- `q<2^L.width`。

```text
{ 初始状态 = s₀ ∧ (val₀(src) < 2*q) ∧ (val₀(temp)=0) ∧ (val₀(L.wires)=0) }
negativeInit L q src temp dst
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉dst → s₁[w]=s₀[w])
  ∧ val₁(dst) = val₀(dst) XOR ((q-(val₀(src)%q))%q) }
```

## [NegativeInitResources.lean](NegativeInitResources.lean)

将源值 X 的模 q 负值异或到输出 O，保持源值，临时寄存器与模算术工作区从零恢复为零。

### negativeInit

实现约定：[negativeInit_spec](NegativeInitResources.lean#L32)。

适用前提：

- `src++temp++dst++L.wires` 中的 wire 互不相同。
- `src.length=L.width+1`。
- `temp.length=L.width+1`。
- `dst.length=L.width+1`。
- `0<q`。
- `q<2^L.width`。
- `X<2*q`。

```text
{ src=X, temp=0, dst=O, L.wires=0 }
negativeInit L q src temp dst
{ src=X, temp=0, dst=(O XOR (-(X : ZMod q)).val), L.wires=0 }
```

## [OneBitRoundSpec.lean](OneBitRoundSpec.lean)

正向得到数学状态 kaliskiStep z，把计数移至 kNext、旧 k 清零，只保留减法分支位，交换位与临时区清零；反向还原 z 并清零该分支记录。

### oneBitRound

实现约定：[oneBitRound_spec](OneBitRoundSpec.lean#L6)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.counter.width=10`。
- `i<512`。
- `KRoundCount i z`。
- `KInvariant p a z`。
- `p%2=1`。
- `p<2^L.low.length`。
- `z.u<2^L.low.length`。
- `z.v<2^L.low.length`。

```text
{ L.u=z.u, L.v=z.v, L.r=z.r, L.s=z.s, L.k=z.k, L.kNext=0, L.done=(decide (z.v=0)), L.swap=false,
    L.subtract=false, L.scratch=0 }
oneBitRound L i
{ L.u=(kaliskiStep z).u, L.v=(kaliskiStep z).v, L.r=(kaliskiStep z).r, L.s=(kaliskiStep z).s, L.k=0,
    L.kNext=(kaliskiStep z).k, L.done=(decide ((kaliskiStep z).v=0)), L.swap=false, L.subtract=(kaliskiCode
    z).2, L.scratch=0 }
```

### oneBitUnround

实现约定：[oneBitUnround_spec](OneBitRoundSpec.lean#L23)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.counter.width=10`。
- `i<512`。
- `KRoundCount i z`。
- `KInvariant p a z`。
- `p%2=1`。
- `p<2^L.low.length`。
- `z.u<2^L.low.length`。
- `z.v<2^L.low.length`。

```text
{ L.u=(kaliskiStep z).u, L.v=(kaliskiStep z).v, L.r=(kaliskiStep z).r, L.s=(kaliskiStep z).s, L.k=0,
    L.kNext=(kaliskiStep z).k, L.done=(decide ((kaliskiStep z).v=0)), L.swap=false, L.subtract=(kaliskiCode
    z).2, L.scratch=0 }
oneBitUnround L i
{ L.u=z.u, L.v=z.v, L.r=z.r, L.s=z.s, L.k=z.k, L.kNext=0, L.done=(decide (z.v=0)), L.swap=false,
    L.subtract=false, L.scratch=0 }
```

## [RecordRound.lean](RecordRound.lean)

根据活动标志、u/v 奇偶性及 v<u，分别异或交换和减法分支标志；数据和活动标志保持，奇偶比较临时位与进位工作区恢复零。

### recordRound

实现约定：[recordRound_spec](RecordRound.lean#L172)。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ L.u=U, L.v=V, L.active=A, L.swap=S, L.subtract=D, L.oddWork=false, L.bothWork=false, L.data.reg .carry=0,
    L.cin=false }
recordRound L
{ L.u=U, L.v=V, L.active=A, L.swap=(S XOR ((A AND decide (U%2≠0)) XOR (A AND decide (U%2≠0) AND decide (V%2≠0)
    AND decide (V<U)))), L.subtract=(D XOR (A AND decide (U%2≠0) AND decide (V%2≠0))), L.oddWork=false,
    L.bothWork=false, L.data.reg .carry=0, L.cin=false }
```

正确性由 [recordRound_correct](RecordRound.lean#L96) 证明：

只更新两个记录位，比较器恢复数据和进位；条件位在输入恢复后清零。

适用前提：

- `L.wires` 中的 wire 互不相同。

```text
{ 初始状态 = s₀ ∧ (s₀[L.oddWork]=false) ∧ (s₀[L.bothWork]=false) ∧ (s₀[L.cin]=false) ∧ (∀ w ∈ L.data.reg .carry,
    s₀[w]=false) }
recordRound L
{ s₁.phase=s₀.phase
  ∧ s₁[L.swap] = s₀[L.swap] XOR ((s₀[L.active] AND s₀[L.u.head!]) XOR (s₀[L.active] AND s₀[L.u.head!] AND
    s₀[L.v.head!] AND decide (val₀(L.v) < val₀(L.u))))
  ∧ s₁[L.subtract] = s₀[L.subtract] XOR (s₀[L.active] AND s₀[L.u.head!] AND s₀[L.v.head!])
  ∧ (∀ w, w ∉ {L.swap, L.subtract} → s₁[w] = s₀[w]) }
```

## [RoundSpec.lean](RoundSpec.lean)

正向把 z 更新为 kaliskiStep z，计数移至 kNext、旧 k 清零，保存交换与减法两位历史，临时区清零；反向利用记录恢复 z，并清零 kNext 和分支历史。

### kaliskiRound

实现约定：[kaliskiRound_spec](RoundSpec.lean#L29)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.counter.width=10`。
- `i<512`。
- `KRoundCount i z`。
- `KInvariant p a z`。
- `p<2^L.low.length`。
- `z.u<2^L.low.length`。
- `z.v<2^L.low.length`。

```text
{ L.u=z.u, L.v=z.v, L.r=z.r, L.s=z.s, L.k=z.k, L.kNext=0, L.done=(decide (z.v=0)), L.swap=false,
    L.subtract=false, L.scratch=0 }
kaliskiRound L i
{ L.u=(kaliskiStep z).u, L.v=(kaliskiStep z).v, L.r=(kaliskiStep z).r, L.s=(kaliskiStep z).s, L.k=0,
    L.kNext=(kaliskiStep z).k, L.done=(decide ((kaliskiStep z).v=0)), L.swap=(kaliskiCode z).1,
    L.subtract=(kaliskiCode z).2, L.scratch=0 }
```

### kaliskiUnround

实现约定：[kaliskiUnround_spec](RoundSpec.lean#L46)。

适用前提：

- `L.wires` 中的 wire 互不相同。
- `L.counter.width=10`。
- `i<512`。
- `KRoundCount i z`。
- `KInvariant p a z`。
- `p<2^L.low.length`。
- `z.u<2^L.low.length`。
- `z.v<2^L.low.length`。

```text
{ L.u=(kaliskiStep z).u, L.v=(kaliskiStep z).v, L.r=(kaliskiStep z).r, L.s=(kaliskiStep z).s, L.k=0,
    L.kNext=(kaliskiStep z).k, L.done=(decide ((kaliskiStep z).v=0)), L.swap=(kaliskiCode z).1,
    L.subtract=(kaliskiCode z).2, L.scratch=0 }
kaliskiUnround L i
{ L.u=z.u, L.v=z.v, L.r=z.r, L.s=z.s, L.k=z.k, L.kNext=0, L.done=(decide (z.v=0)), L.swap=false,
    L.subtract=false, L.scratch=0 }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [BorrowFrame.lean](BorrowFrame.lean)

- 资源：`counterActiveXor L target i`：T = `L.width`，M = `L.width`。

### [HalvingLoop.lean](HalvingLoop.lean)

- 资源：这里 n 是执行步骤数，不是寄存器位宽；数据位宽是 L.data.length。

  - `halveStep L q i` / `doubleStep L q i`：T = `3*L.data.length+20`，M = `2*L.data.length+19`。
  - `halveInPlace L q i n` / `restoreInPlace L q i n`：T = `n*(3*L.data.length+20)`，M = `n*(2*L.data.length+19)`。

### [InverseLoopResources.lean](InverseLoopResources.lean)

- 资源：公式形式与数值形式都在 512 条记录、10 位计数器、256 位低位输入与算术布局等前提下成立，不是任意位宽的通用资源定理。

  - `inverseLoop L q`（公式形式）：T = `1024*(12*L.first.data.width+31)+60*L.first.data.width-12+308744`，M = `1024*(6*L.first.data.width+28)+48*L.first.data.width+308744`，Q = `18*L.first.data.width+1072`。
  - `inverseLoop L q`（数值形式）：T = `3513912`，M = `1928760`，Q = `5698`。

### [InverseResources.lean](InverseResources.lean)

- 资源：

  - `inverseLoad L` / `inverseUnload L`：T = `0`，M = `0`。
  - `fieldInverse L`：T = `3513912`，M = `1928760`，Q = `5954`。

### [InverseScale.lean](InverseScale.lean)

- 资源：

  - `L.lookup q`：T = `1022`，M = `1022`。
  - `L.exchange`：T = `0`，M = `0`。
  - `L.prepare q` / `L.restore q`：T = `154372`，M = `154372`。

### [InverseTerminalConstants.lean](InverseTerminalConstants.lean)

- 资源：`terminalConstants I q`：T = `0`，M = `0`。

### [KaliskiLoopResources.lean](KaliskiLoopResources.lean)

- 资源：rs.length 是循环轮数；公式要求 10 位计数器，精确线路数还要求记录列表非空。 `kaliskiLoop L i rs` / `kaliskiUnloop L i rs`：T = `rs.length*(12*L.data.width+31)`，M = `rs.length*(6*L.data.width+28)`，Q = `7*L.data.width+46+2*rs.length`。

### [MaskedAdder.lean](MaskedAdder.lean)

- 资源：`maskedAdd L src c` / `maskedSub L src c`：T = `4*L.width`，M = `2*L.width`，Q = `5*L.width+2`。

### [NegativeEven.lean](NegativeEven.lean)

- 资源：n 是 Widths n 指定的低位数据位宽。

  - `negativeEven L q`：T = `3*n-1`，M = `3*n-1`。
  - `restoreNegativeEven L q`：T = `3*n`，M = `3*n`。

### [NegativeInitResources.lean](NegativeInitResources.lean)

- 资源：`negativeInit L q src temp dst`：T = `30*L.width+24`，M = `24*(L.width+1)`。

### [OneBitRoundResources.lean](OneBitRoundResources.lean)

- 资源：

  - `recoverSwap L`：T = `1`，M = `0`。
  - `oneBitRound L i` / `oneBitUnround L i`：T = `12*L.data.width+32`，M = `6*L.data.width+28`，Q = `7*L.data.width+48`。

### [RoundResources.lean](RoundResources.lean)

- 资源：

  - `swapRegisters c a b`：T = `a.length`，M = `0`。
  - `exchangeRegisters a b`：T = `0`，M = `0`。
  - `inplaceArithmetic L f g c neg`：T = `2*L.width-1`，M = `2*L.width-1`。
  - `kaliskiBodyProgram L a sw su` / `kaliskiUnbodyProgram L a sw su`：T = `10*L.width-4`，M = `4*L.width-2`。
  - `recordRound L`：T = `L.data.width+5`，M = `L.data.width`。
  - `kaliskiRound L i` / `kaliskiUnround L i`：T = `12*L.data.width+31`，M = `6*L.data.width+28`。

### [RoundSpec.lean](RoundSpec.lean)

- 资源：这里取 257 位轮数据和 10 位计数器。 `kaliskiRound L i` / `kaliskiUnround L i`：T = `3115`，M = `1570`，Q = `1847`。

### [RoundWires.lean](RoundWires.lean)

- 资源：

  - `recordRound L`：Q = `3*L.data.width+6`。
  - `kaliskiRound L i` / `kaliskiUnround L i`：Q = `7*L.data.width+48`。
