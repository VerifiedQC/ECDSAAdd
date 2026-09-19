# 模加减的数值与清理等式

本模块证明原地模加减所需的约减、取负及借位清理等式。

## 文件目录

[ModInPlace.lean](#modinplacelean)

这个文件证明原地模加减中低位约减、借位清理及取负恢复所需的数值等式。

## [ModInPlace.lean](ModInPlace.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
theorem modAddCore_cleanup (A Z p : Nat) (hA : A ≤ p) (hZ : Z < p)
```

证明了扩展源范围允许 A=p；一次约减后与源比较，恰好恢复减 p 时的借位。

```lean
theorem modAddCore_low (t p n : Nat) (hp : 0 < p) (hpn : p < 2^n)
    (ht : t < 2*p)
```

证明了扩宽减 p 后，仅向低 n 位加回 p 即可约减；最高位暂时保留借位供比较清理。

```lean
theorem negRaw_range_restore (A p : Nat) (hA : A ≤ p)
```

证明了取负源包装中的 p−A 仍在扩展源范围内，第二次取负恢复原源。

```lean
theorem modSubCore_value (A Z p : Nat) (hA : A ≤ p)
```

证明了将扩展源 p−A 加到规范目标上，就是自然数表示的模减。
