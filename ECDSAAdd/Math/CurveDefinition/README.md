# secp256k1 数学对象

本模块定义 secp256k1 的域、曲线、点与生成元，并证明生成元及坐标的基本性质；不证明曲线群阶。

## 文件目录

[BitcoinCurve.lean](#bitcoincurvelean)

这个文件定义 secp256k1 的数学对象，证明生成元的坐标、曲线方程和非奇异性。

## [BitcoinCurve.lean](BitcoinCurve.lean)

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def p : ℕ
```

定义 secp256k1 的域模数 p = 2^256 − 2^32 − 977。

```lean
def curveA : ℕ
```

定义 secp256k1 曲线方程中的系数 a = 0。

```lean
def curveB : ℕ
```

定义 secp256k1 曲线方程中的系数 b = 7。

```lean
abbrev Fp := ZMod p
```

表示 secp256k1 使用的模 p 有限域。

```lean
def order : Nat
```

定义 secp256k1 标准群阶常量 n；这里只给出常量，不证明曲线点数等于 n。

以下声明位于 `ECDSAAdd.Secp256k1` 命名空间。

```lean
def generatorX : Nat
```

给出标准生成元横坐标的自然数表示。

```lean
def generatorY : Nat
```

给出标准生成元纵坐标的自然数表示。

```lean
def curve : WeierstrassCurve Fp
```

定义有限域 Fp 上的 secp256k1 曲线 y² = x³ + 7。

```lean
abbrev Point := curve.toAffine.Point
```

表示 secp256k1 曲线点的数学类型，包括无穷远点。

```lean
theorem generatorX_lt_p
```

证明了生成元横坐标的自然数表示小于 p。

```lean
theorem generatorY_lt_p
```

证明了生成元纵坐标的自然数表示小于 p。

```lean
theorem generatorX_val
```

证明了将生成元横坐标转为域元素后再取标准代表元，仍得到原自然数坐标。

```lean
theorem generatorY_val
```

证明了将生成元纵坐标转为域元素后再取标准代表元，仍得到原自然数坐标。

```lean
theorem curve_discriminant_ne_zero
```

证明了 secp256k1 曲线判别式在 Fp 中非零。

```lean
theorem generator_equation
```

证明了标准生成元坐标满足 secp256k1 曲线方程。

```lean
theorem generator_nonsingular
```

证明了标准生成元是非奇异仿射点。

```lean
def G : Point
```

将标准生成元定义为 Point 类型的曲线点。

```lean
def coordinates : Point → Option (Fp × Fp)
```

读取有限点的横纵坐标，无穷远点返回 none。

```lean
theorem coordinates_zero
```

证明了 `coordinates (0 : Point)` 等于 `none`。

```lean
theorem coordinates_some {x y : Fp} (h : curve.toAffine.Nonsingular x y)
```

证明了 `coordinates (.some h)` 等于 `some (x, y)`。

```lean
theorem coordinates_G
```

证明了读取 G 得到的正是标准生成元坐标。

```lean
theorem G_ne_zero
```

证明了标准生成元不是无穷远点。
