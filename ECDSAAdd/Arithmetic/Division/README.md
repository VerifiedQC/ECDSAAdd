# 除法累加

本模块通过准备逆元和受控模乘，将模除法结果加到或减出目标寄存器，并恢复求逆历史与工作区。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [DivideProduct.lean](DivideProduct.lean)

已准备乘数 X、Y 时，控制开启把 X·Y mod p 模加到或模减自累加器，关闭则累加器不变；累加器外所有位和相位不变。

### divideProduct

正确性由 [divideProduct_correct](DivideProduct.lean#L7) 证明：

归还借用的输出高位后，乘积组合只修改256位acc；整个求逆历史逐线保持。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `X<p`。
- `Y<2^256`。
- `Z<p`。

```text
{ 初始状态 = s₀ ∧ (s₀[L.control]=B) ∧ (val₀(L.inner.a)=X) ∧ (val₀(L.numerator)=Y) ∧ (val₀(L.acc)=Z) ∧
    (val₀(L.borrow)=0) }
montMulControlledAdd L.control L.multiply p
{ s₁.phase=s₀.phase
  ∧ val₁(L.acc)= (if B then (Z+(X*Y)%p)%p else Z)
  ∧ (∀ q∉L.acc, s₁[q]=s₀[q]) }
```

```text
{ 初始状态 = s₀ ∧ (s₀[L.control]=B) ∧ (val₀(L.inner.a)=X) ∧ (val₀(L.numerator)=Y) ∧ (val₀(L.acc)=Z) ∧
    (val₀(L.borrow)=0) }
montMulControlledSub L.control L.multiply p
{ s₁.phase=s₀.phase
  ∧ val₁(L.acc)= (if B then (Z+p-(X*Y)%p)%p else Z)
  ∧ (∀ q∉L.acc, s₁[q]=s₀[q]) }
```

## [DivideSpec.lean](DivideSpec.lean)

分母满足相应非零条件、工作区初始为零时，控制开启将 `D⁻¹·E mod p` 加到或减自 Z，关闭则 Z 不变；保留控制、分母 D 和分子 E，并清零整个工作区。

### divide

实现约定：[divide_spec](DivideSpec.lean#L83)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `D<p`。
- `E<p`。
- `Z<p`。
- `B=true → D≠0`。

```text
{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }
divideAdd L
{ L.control=B,L.denominator=D,L.numerator=E, L.acc=(if B then (Z+(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0 }
```

```text
{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }
divideSub L
{ L.control=B,L.denominator=D,L.numerator=E, L.acc=(if B then (Z+p-(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0
    }
```

### divideAdd

实现约定：[divideAdd_spec](DivideSpec.lean#L187)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `D<p`。
- `E<p`。
- `Z<p`。
- `B=true → D≠0`。

```text
{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }
divideAdd L
{ L.control=B,L.denominator=D,L.numerator=E, L.acc=(if B then (Z+(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0 }
```

### divideSub

实现约定：[divideSub_spec](DivideSpec.lean#L195)。

适用前提：

- 布局满足位宽条件 `L.Widths`。
- `L.wires` 中的 wire 互不相同。
- `D<p`。
- `E<p`。
- `Z<p`。
- `B=true → D≠0`。

```text
{ L.control=B,L.denominator=D,L.numerator=E,L.acc=Z,L.work=0 }
divideSub L
{ L.control=B,L.denominator=D,L.numerator=E, L.acc=(if B then (Z+p-(((D : Fp)⁻¹).val*E)%p)%p else Z),L.work=0
    }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [DivideResources.lean](DivideResources.lean)

- 资源：

  - `divideLoad L` / `divideUnload L`：T = `256`，M = `0`。
  - `divideAdd L`：T = `3895383`，M = `2309207`。
  - `divideSub L`：T = `3895895`，M = `2309719`。

### [DivideSupport.lean](DivideSupport.lean)

- 资源：`divideAdd L` / `divideSub L`：Q = `6210`。
