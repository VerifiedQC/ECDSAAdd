# 模逆元的数学证明

本模块证明 Kaliski 求逆的状态不变量、终止性、恢复关系和缩放正确性，为求逆电路提供数学依据。

## 文件目录

[InverseScaleFactor.lean](#inversescalefactorlean)

这个文件定义计数驱动的逆元缩放因子，证明单段 Montgomery 缩放得到普通逆元。

[Kaliski.lean](#kaliskilean)

这个文件定义 Kaliski 数学状态和迭代，证明不变量、固定轮终止及寄存器范围。

[KaliskiInverse.lean](#kaliskiinverselean)

这个文件连接 Kaliski 终态和减半缩放，证明模逆元结果及 secp256k1 实例。

[KaliskiOneBit.lean](#kaliskionebitlean)

这个文件证明可以由更新后的系数奇偶重建 Kaliski 的交换分支。

[KaliskiRound.lean](#kaliskiroundlean)

这个文件定义 Kaliski 分支编码和逆向恢复，证明计数活动性、单轮分解及范围。

[KaliskiTerminal.lean](#kaliskiterminallean)

这个文件证明 Kaliski 终态的常量、范围和偶性，以及利用这些条件的取负恢复等式。

## [InverseScaleFactor.lean](InverseScaleFactor.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def inverseScaleFactor (q K : Nat) : Nat
```

把Montgomery的R补偿直接编入K查表项；表对所有自然数K有定义。

```lean
theorem inverseScaleFactor_bound (q K : Nat) (hq : 0<q)
```

证明了相应数值或范围条件：`inverseScaleFactor q K<q`。

```lean
theorem inverseScaleFactor_relation (q K : Nat) (ho : q%2=1)
```

证明了只要求奇数，不把一般模数偷换成素数域。

```lean
theorem montgomery_inverseScaleFactor (q K N : Nat) (hq : q%16=15)
    (hN : N<montgomeryRadix)
```

证明了一段变量Montgomery就得到普通表示的缩放值，无第二段转换。

```lean
theorem inverseScaleFactor_halving (q K rounds N : Nat) (ho : q%2=1)
    (hN : N<q) (hK : K≤rounds)
```

证明了固定减半与表因子给出同一规范值，含K=0和K=rounds。

```lean
theorem kaliski_scale_count (q X : Nat) (hq : q<2^256) (hx0 : 0<X)
    (hx : X<q) (hcop : q.Coprime X)
```

证明了第一阶段末计数适合十位查表；完整范围含512。

```lean
theorem kaliski_montgomery_scale (q X : Nat) (hq16 : q%16=15) (hq : q<2^256)
    (hx0 : 0<X) (hx : X<q) (hcop : q.Coprime X)
```

证明了与原求逆数学陈述对接；新因子加单段Montgomery返回域逆元。

## [Kaliski.lean](Kaliski.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
structure KState
```

Kaliski 第一阶段的自然数状态；k 只计入尚未终止的轮。 `KState` 定义为 `u`、`v`、`r`、`s`、`k` 各部分。

```lean
def kaliskiInit (p a : Nat) : KState
```

构造 Kaliski 初始状态 (p,a,0,1,0)。

```lean
def kaliskiStep (z : KState) : KState
```

v=0 后恒等；终止轮本身仍更新系数并增加 k。

```lean
def KInvariant (p a : Nat) (z : KState) : Prop
```

整数等式控制系数大小；两条模等式给出缩放后的逆元。

```lean
theorem kaliski_init_invariant (p a : Nat) (hp : 0 < p) (ha : p.Coprime a)
```

证明了 Kaliski 初始状态满足求逆不变量。

```lean
theorem half_eq (u : Nat) (h : u % 2 = 0)
```

证明了 `2*(u/2)` 等于 `u`。

```lean
theorem half_coprime_left (u v : Nat) (he : u % 2 = 0) (h : u.Coprime v)
```

证明了在给定偶数及互素条件下，左操作数减半后仍与右操作数互素。

```lean
theorem kaliski_invariant (p a : Nat) (z : KState) (h : KInvariant p a z)
```

证明了四种更新都保持整数、互素及缩放逆元不变量。

```lean
theorem kaliski_product_halves (z : KState)
```

证明了包括终止后的恒等轮：乘积为零时不等式仍成立。

```lean
theorem kaliski_iterate_invariant (p a t : Nat) (z : KState) (h : KInvariant p a z)
```

证明了任意给定次数的 Kaliski 迭代保持求逆不变量。

```lean
theorem kaliski_product_bound (t : Nat) (z : KState)
```

证明了相应数值或范围条件：`2^t * ((kaliskiStep^[t] z).u*(kaliskiStep^[t] z).v) ≤ z.u*z.v`。

```lean
theorem kaliski_count_bound (t : Nat) (z : KState)
```

证明了计数器包括终止轮，恒等填充不再增加。

```lean
theorem kaliski_terminates (p a n : Nat) (hp0 : 0 < p) (ha0 : 0 < a)
    (hp : p < 2^n) (ha : a < 2^n) (hcop : p.Coprime a)
```

证明了初始 p、a 都小于 2^n 时，固定 2n 轮后 v=0 且 u=1。

```lean
theorem kaliski_coefficient_bounds (p a t : Nat) (hp0 : 0 < p) (hcop : p.Coprime a)
```

证明了活动轮的 r<p；终止轮允许把 r 加倍到接近 2p。

```lean
theorem kaliski_register_bounds (p a t : Nat) (hp0 : 0<p) (hcop : p.Coprime a)
```

证明了给后续寄存器布局使用的统一范围：r 需要容纳小于 2p 的值。

## [KaliskiInverse.lean](KaliskiInverse.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def kaliskiInverse (p a n : Nat) : Nat
```

数学层的固定轮数求逆函数，尚非可逆电路。负号先取模 p 的标准代表元。

```lean
theorem kaliski_correct (p a n : Nat) (hpodd : p%2 = 1) (hp : p < 2^n)
    (ha0 : 0<a) (ha : a < 2^n) (hcop : p.Coprime a)
```

证明了对任意奇模数及与它互素的非零输入，第一阶段和固定减半阶段得到逆元。

```lean
theorem kaliski_inverse_p (a : Nat) (ha0 : 0<a) (ha : a<p)
```

证明了secp256k1 的数学求逆特例；fieldInverse 的电路规格通过本定理对接域逆元。

## [KaliskiOneBit.lean](KaliskiOneBit.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
theorem kaliski_swap_from_r (p a : Nat) (z : KState)
    (hinv : KInvariant p a z) (hodd : p%2=1)
```

证明了奇数模数下，更新后的系数奇偶决定交换分支；终止后的恒等轮由活动位排除。

## [KaliskiRound.lean](KaliskiRound.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def kaliskiCode (z : KState) : Bool × Bool
```

完整两位记录：(是否交换 u/v 与 r/s，是否需要减法)。终止后取 00。

```lean
def KRoundCount (i : Nat) (z : KState) : Prop
```

固定轮号 i 的可达计数关系：尚未终止时 k=i，终止后 k≤i。

```lean
theorem kaliski_round_count_init (p a : Nat)
```

证明了 Kaliski 初态满足轮号为零时的计数约束。

```lean
theorem kaliski_round_count_step (i : Nat) (z : KState) (h : KRoundCount i z)
```

证明了执行一次 Kaliski 步骤后，轮计数约束由 i 推进到 i+1。

```lean
theorem kaliski_round_active (i : Nat) (z : KState) (h : KRoundCount i z)
```

证明了正轮结束后由 i<k 判定本轮是否活动，无需再保存第三个记录位。

```lean
def kaliskiUnstep (i : Nat) (code : Bool × Bool) (z : KState) : KState
```

逆轮用固定 i、更新后的 k 和保存的两位分支，不能重新读取已变化的奇偶位。

```lean
theorem kaliski_unstep_step (i : Nat) (z : KState) (h : KRoundCount i z)
```

证明了两位记录加计数足够恢复完整旧状态，包括终止轮与后续恒等轮。

```lean
def kaliskiSwap (b : Bool) (z : KState) : KState
```

两组寄存器同步交换，把四种情形归一成对 u/r 的一次减/加。

```lean
def kaliskiBody (active : Bool) (code : Bool × Bool) (z : KState) : KState
```

记录驱动的统一算术体。活动位单独控制移位与计数，00 不等于“不活动”。

```lean
theorem kaliski_body_step (z : KState)
```

证明了使用当前状态计算出的活动标志和分支编码执行轮主体，等价于数学定义的 kaliskiStep。

```lean
theorem kaliski_body_bounds (p a n : Nat) (z : KState) (hi : KInvariant p a z)
    (hv : z.v≠0) (hp : p<2^n)
```

证明了正轮活动时，统一体的减法不下溢且结果为偶数；加法与左移均装得进 n+1 位。

```lean
theorem kaliski_code_bits (z : KState)
```

证明了电路的两个 XOR 记录函数就是数学层的四分支编码。

## [KaliskiTerminal.lean](KaliskiTerminal.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
theorem kaliski_terminal_even (q a t : Nat)
```

证明了v首次归零的分支将r加倍；其后的恒等轮保持偶数。

```lean
theorem kaliski_terminal_values (q a n : Nat) (hq1 : 1<q) (ho : q%2=1)
    (hq : q<2^n) (ha0 : 0<a) (ha : a<q) (hcop : q.Coprime a)
```

证明了终态常量可清零出借，r保留可逆取负所需的正偶范围。

```lean
theorem negative_even_value (q R : Nat) (hR : 0<R)
    (hb : R<2*q) (he : R%2=0)
```

证明了正偶系数先除2，再取负加倍；规范值保留完整系数的可恢复性。

```lean
theorem negative_even_restore (q R : Nat) (ho : q%2=1) (hR : 0<R)
    (hb : R<2*q) (he : R%2=0)
```

证明了模减半、取负再左旋精确恢复原始R，而非仅恢复R mod q。
