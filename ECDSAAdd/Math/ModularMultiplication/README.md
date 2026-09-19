# 模乘的数学递推

本模块证明逐位模乘和 Montgomery 窗口递推、范围、恢复及标准表示转换的数学关系。

## 文件目录

[HornerMultiply.lean](#hornermultiplylean)

这个文件证明逐位 Horner 模乘前缀的初值、递推、结果及恢复关系。

[Montgomery.lean](#montgomerylean)

这个文件定义四位 Montgomery 数学递推，证明精确约减、范围、不变量及结果转换。

[MontgomeryConversion.lean](#montgomeryconversionlean)

这个文件定义 Montgomery 基数和转换常量，证明两段计算得到标准模积。

## [HornerMultiply.lean](HornerMultiply.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def hornerValue (p X Y i : Nat) : Nat
```

第 i 位处理之前的乘积前缀；i=n 时为零，i=0 时为完整乘积。

```lean
theorem hornerValue_bound (p X Y i : Nat) (hp : 0<p)
```

证明了相应数值或范围条件：`hornerValue p X Y i<p`。

```lean
theorem hornerValue_start (p X Y n : Nat) (hY : Y<2^n)
```

证明了 `hornerValue p X Y n` 等于 `0`。

```lean
theorem hornerValue_finish (p X Y : Nat)
```

证明了 `hornerValue p X Y 0` 等于 `(X*Y)%p`。

```lean
theorem hornerValue_step (p X Y i : Nat)
```

证明了逐位 Horner：先将高位前缀加倍，再按当前位加 X。

```lean
theorem hornerValue_unstep (p X Y i : Nat) (hp : p%2=1) (hX : X<p)
```

证明了减去本位贡献再模减半，恢复上一前缀；不用倒放带测量的门列。

## [Montgomery.lean](Montgomery.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
theorem secp256k1_mod_sixteen
```

证明了secp256k1 的模数低四位为15，故四位Montgomery修正系数就是低四位本身。

```lean
def montgomeryStep (q a x d : Nat) : Nat
```

一轮四位约减，保留低位记录以便正向恢复。

```lean
theorem montgomery_divisible (q u : Nat) (hq : q%16=15)
```

证明了低位为15的奇模数满足精确整除；这里没有舍入误差。

```lean
theorem montgomeryStep_exact (q a x d : Nat) (hq : q%16=15)
```

证明了 `16*montgomeryStep q a x d` 等于 `a+d*x+((a+d*x)%16)*q`。

```lean
theorem montgomery_window_bound (q a x d : Nat)
    (ha : a<2*q) (hx : x<q) (hd : d<16)
```

证明了261位承接加数与约减项；本界也覆盖乘数的任意四位窗口。

```lean
theorem montgomeryStep_bound (q a x d : Nat)
    (ha : a<2*q) (hx : x<q) (hd : d<16)
```

证明了相应数值或范围条件：`montgomeryStep q a x d < 2*q`。

```lean
theorem montgomeryStep_restore (q a x d : Nat) (hq : q%16=15)
```

证明了反向窗口先恢复整除前的数，再减修正项；所得低四位恰可清历史。

```lean
theorem montgomery_normalize (q a : Nat) (ha : a<2*q)
```

证明了规范化一次足够；借位保留到反规范化阶段。

```lean
def montgomeryValue (q X Y : Nat) : Nat → Nat
```

按低位窗口逐轮处理乘数。

```lean
def montgomeryQuotient (q X Y : Nat) : Nat → Nat
```

各轮修正系数的数学累计值；电路中保存的是逐轮低四位。

```lean
theorem montgomeryValue_bound (q X Y i : Nat) (hX : X<q)
```

证明了相应数值或范围条件：`montgomeryValue q X Y i<2*q`。

```lean
theorem montgomeryValue_invariant (q X Y i : Nat) (hq : q%16=15)
```

证明了精确整数循环不变量，记录项没有被隐去。

```lean
theorem montgomeryValue_finish (q X Y k : Nat) (hq : q%16=15) (hY : Y<16^k)
```

证明了处理完全部窗口后乘数前缀就是整个输入。

```lean
theorem montgomery_standard_conversion {q : Nat} [Fact q.Prime]
    (x y r : ZMod q) (hr : r≠0)
```

证明了Montgomery中间值的标准表示转换，不向外部坐标暴露Montgomery表示。

## [MontgomeryConversion.lean](MontgomeryConversion.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def montgomeryRadix : Nat
```

64个四位窗口覆盖256位；常数转换乘数用标准余数表示。

```lean
def montgomeryConversion (q : Nat) : Nat
```

给出消去 Montgomery 缩放所需的经典转换常量 R² mod q。

```lean
theorem montgomeryRadix_eq
```

证明了 `montgomeryRadix` 等于 `2^256`。

```lean
theorem montgomeryConversion_bound (q : Nat) (hq : 0<q)
```

证明了相应数值或范围条件：`montgomeryConversion q<q`。

```lean
theorem montgomery_cast_relation (q X Y : Nat) (hq : q%16=15) (hY : Y<montgomeryRadix)
```

证明了 `((montgomeryValue q X Y 64%q : Nat) : ZMod q)*(montgomeryRadix : ZMod q)` 等于 `(X : ZMod q)*(Y : ZMod q)`。

```lean
theorem montgomery_two_stages (q X Y : Nat) [Fact q.Prime]
    (hq : q%16=15) (hqr : q<montgomeryRadix) (hY : Y<montgomeryRadix)
```

证明了两段Montgomery准备给出标准表示的乘积，不把表示转换成本藏在接口外。
