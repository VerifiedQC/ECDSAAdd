# 点加的数学公式

本模块证明 secp256k1 的坐标点加公式与群加法一致，并提供原地坐标更新及输出侧清理所需的等式。

## 文件目录

[AffineFormula.lean](#affineformulalean)

这个文件定义普通点加、倍点和完整分情况坐标公式，证明它们与曲线群加法一致。

[PointInPlace.lean](#pointinplacelean)

这个文件证明原地点加的分类、坐标更新及从输出恢复斜率所需的数学关系。

## [AffineFormula.lean](AffineFormula.lean)

这个文件定义普通点加、倍点和完整分情况坐标公式，证明它们与曲线群加法一致。

以下声明位于 `ECDSAAdd.Secp256k1` 命名空间。

```lean
theorem negY_eq_neg (x y : Fp)
```

证明了 `curve.toAffine.negY x y` 等于 `-y`。

```lean
def genericNumerator (y₁ y₂ : Fp) : Fp
```

计算普通点加斜率的分子，即纵坐标差。

```lean
def genericDenominator (x₁ x₂ : Fp) : Fp
```

计算普通点加斜率的分母，即横坐标差。

```lean
def genericSlope (x₁ y₁ x₂ y₂ : Fp) : Fp
```

计算普通点加斜率。

```lean
def genericX (x₁ y₁ x₂ y₂ : Fp) : Fp
```

根据普通点加斜率计算结果横坐标。

```lean
def genericY (x₁ y₁ x₂ y₂ : Fp) : Fp
```

根据普通点加斜率和结果横坐标计算结果纵坐标。

```lean
def doubleNumerator (x : Fp) : Fp
```

计算倍点斜率的分子 3x²。

```lean
def doubleDenominator (y : Fp) : Fp
```

计算倍点斜率的分母 2y。

```lean
def doubleSlope (x y : Fp) : Fp
```

计算倍点斜率。

```lean
def doubleX (x y : Fp) : Fp
```

根据倍点斜率计算结果横坐标。

```lean
def doubleY (x y : Fp) : Fp
```

根据倍点斜率和结果横坐标计算结果纵坐标。

```lean
theorem genericDenominator_ne_zero
    {x₁ x₂ : Fp}
    (hx : x₁ ≠ x₂)
```

证明了横坐标不同的普通点加分母非零。

```lean
theorem doubleDenominator_ne_zero
    {y : Fp}
    (hy : y ≠ -y)
```

证明了满足倍点前提时，倍点分母 2y 非零。

```lean
theorem genericSlope_eq_mathlib
    {x₁ y₁ x₂ y₂ : Fp}
    (hx : x₁ ≠ x₂)
```

证明了 `genericSlope x₁ y₁ x₂ y₂` 等于 `curve.toAffine.slope x₁ x₂ y₁ y₂`。

```lean
theorem genericX_eq_mathlib
    {x₁ y₁ x₂ y₂ : Fp}
    (hx : x₁ ≠ x₂)
```

证明了 `genericX x₁ y₁ x₂ y₂` 等于 `curve.toAffine.addX x₁ x₂ (curve.toAffine.slope x₁ x₂ y₁ y₂)`。

```lean
theorem genericY_eq_mathlib
    {x₁ y₁ x₂ y₂ : Fp}
    (hx : x₁ ≠ x₂)
```

证明了 `genericY x₁ y₁ x₂ y₂` 等于 `curve.toAffine.addY x₁ x₂ y₁ (curve.toAffine.slope x₁ x₂ y₁ y₂)`。

```lean
theorem doubleSlope_eq_mathlib
    {x y : Fp}
    (hy : y ≠ -y)
```

证明了 `doubleSlope x y` 等于 `curve.toAffine.slope x x y y`。

```lean
theorem doubleX_eq_mathlib
    {x y : Fp}
    (hy : y ≠ -y)
```

证明了 `doubleX x y` 等于 `curve.toAffine.addX x x (curve.toAffine.slope x x y y)`。

```lean
theorem doubleY_eq_mathlib
    {x y : Fp}
    (hy : y ≠ -y)
```

证明了 `doubleY x y` 等于 `curve.toAffine.addY x x y (curve.toAffine.slope x x y y)`。

```lean
theorem generic_nonsingular
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ ≠ x₂)
```

证明了普通点加公式得到的坐标构成曲线上的非奇异点。

```lean
def genericAdd
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ ≠ x₂) :
    Point
```

将普通点加公式产生的非奇异坐标构造成曲线点。

```lean
theorem genericAdd_correct
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ ≠ x₂)
```

证明了 `genericAdd h₁ h₂ hx` 等于 `(.some h₁ : Point) + (.some h₂ : Point)`。

```lean
theorem double_nonsingular
    {x y : Fp}
    (h : curve.toAffine.Nonsingular x y)
    (hy : y ≠ -y)
```

证明了倍点公式得到的坐标构成曲线上的非奇异点。

```lean
def doublePoint
    {x y : Fp}
    (h : curve.toAffine.Nonsingular x y)
    (hy : y ≠ -y) :
    Point
```

将倍点公式产生的非奇异坐标构造成曲线点。

```lean
theorem doublePoint_correct
    {x y : Fp}
    (h : curve.toAffine.Nonsingular x y)
    (hy : y ≠ -y)
```

证明了 `doublePoint h hy` 等于 `(.some h : Point) + (.some h : Point)`。

```lean
theorem inverseAdd_correct
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ = x₂)
    (hy : y₁ = -y₂)
```

证明了 `(.some h₁ : Point) + (.some h₂ : Point)` 等于 `0`。

```lean
theorem y_eq_of_x_eq_of_not_inverse
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ = x₂)
    (hinv : y₁ ≠ -y₂)
```

证明了 `y₁` 等于 `y₂`。

```lean
theorem self_not_inverse_of_x_eq_of_not_inverse
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ = x₂)
    (hinv : y₁ ≠ -y₂)
```

证明了两个给定点横坐标相同且不互为相反点时，第一点也不等于自身的相反点。

```lean
def affineAdd : Point → Point → Point
```

按无穷远、普通点、互逆点和倍点情况计算完整点加结果。

```lean
theorem affineAdd_zero_left (P : Point)
```

证明了 `affineAdd 0 P` 等于 `P`。

```lean
theorem affineAdd_zero_right (P : Point)
```

证明了 `affineAdd P 0` 等于 `P`。

```lean
theorem affineAdd_inverse
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ = x₂)
    (hinv : y₁ = -y₂)
```

证明了 `affineAdd (.some h₁) (.some h₂)` 等于 `0`。

```lean
theorem affineAdd_generic
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ ≠ x₂)
```

证明了 `affineAdd (.some h₁) (.some h₂)` 等于 `genericAdd h₁ h₂ hx`。

```lean
theorem affineAdd_doubling
    {x₁ y₁ x₂ y₂ : Fp}
    (h₁ : curve.toAffine.Nonsingular x₁ y₁)
    (h₂ : curve.toAffine.Nonsingular x₂ y₂)
    (hx : x₁ = x₂)
    (hinv : y₁ ≠ -y₂)
```

证明了 `affineAdd (.some h₁) (.some h₂)` 等于 `(.some h₁ : Point) + (.some h₂ : Point)`。

```lean
theorem affineAdd_correct (P Q : Point)
```

证明了 `affineAdd P Q` 等于 `P + Q`。

## [PointInPlace.lean](PointInPlace.lean)

这个文件证明原地点加的分类、坐标更新及从输出恢复斜率所需的数学关系。

以下声明位于 `ECDSAAdd.Secp256k1` 命名空间。

```lean
theorem sameX_iff_eq_or_neg {x y cx cy : Fp}
    (hr : curve.toAffine.Nonsingular x y) (hc : curve.toAffine.Nonsingular cx cy)
```

证明了有限曲线点同横坐标，当且仅当两点相同或互为相反点。

```lean
theorem ordinary_point_iff (R : Point) {cx cy : Fp}
    (hc : curve.toAffine.Nonsingular cx cy)
```

证明了普通分支恰好排除 O、C、−C；不要求 C 与 −C 不同。

```lean
theorem doubling_enabled_iff {cx cy : Fp}
    (hc : curve.toAffine.Nonsingular cx cy)
```

证明了构造期纵坐标条件正好识别 C 与 −C 是否不同；退化时禁用倍点标志。

```lean
theorem translated_point_flags (R C : Point) (b : Bool)
```

证明了输出侧重算输入的三个角落标志；控制为 false 时每个谓词仍为假。

```lean
theorem generic_inplace_values (x y cx cy : Fp) (hx : x≠cx)
```

证明了12 步原地流程中的三个域等式：清 y、更新 x、重建 y。

```lean
theorem second_denominator_zero_iff {x y cx cy : Fp}
    (hr : curve.toAffine.Nonsingular x y) (hc : curve.toAffine.Nonsingular cx cy)
    (hx : x≠cx)
```

证明了第二个除数为零只会发生在输入 −2C；该结论以普通分支为前提。

```lean
def exceptionalSlope (C : Point) : Fp
```

例外斜率是编译期常量；O 的坐标按现有编码取零，使定义全域成立。

```lean
theorem exceptional_slope_eq {x y cx cy : Fp}
    (hr : curve.toAffine.Nonsingular x y) (hc : curve.toAffine.Nonsingular cx cy)
    (hx : x≠cx) (hz : cx-genericX x y cx cy=0)
```

证明了例外分支下该常量就是当前斜率，可由受控常量 XOR 清零。

```lean
theorem slope_from_output (x y cx cy : Fp) (hx : x≠cx)
    (hd : cx-genericX x y cx cy≠0)
```

证明了第二除数非零时，从当前 y 与 x 重算斜率；供减法清理 λ。
