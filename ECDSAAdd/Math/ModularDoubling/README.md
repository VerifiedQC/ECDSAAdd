# 模减半与模倍增

本模块定义奇模数下的减半运算，证明范围、反复减半及模倍增与减半互逆。

## 文件目录

[HalvingBijection.lean](#halvingbijectionlean)

这个文件证明规范代表元上的模倍增和模减半互相撤销。

[ModularHalving.lean](#modularhalvinglean)

这个文件定义奇模数下的减半和固定轮迭代，证明范围、数值关系及奇偶标志。

## [HalvingBijection.lean](HalvingBijection.lean)

这个文件证明规范代表元上的模倍增和模减半互相撤销。

以下声明位于 `ECDSAAdd` 命名空间。

```lean
theorem double_halve_mod (p r : Nat) (hp : p%2=1) (hr : r<p)
```

证明了规范代表元上的模加倍撤销模减半。

```lean
theorem halve_double_mod (p r : Nat) (hp : p%2=1) (hr : r<p)
```

证明了规范代表元上的模减半撤销模加倍。

## [ModularHalving.lean](ModularHalving.lean)

这个文件定义奇模数下的减半和固定轮迭代，证明范围、数值关系及奇偶标志。

以下声明位于 `ECDSAAdd` 命名空间。

```lean
def halveMod (p r : Nat) : Nat
```

奇模数下的标准代表元减半；奇数先加 p，避免非整数除法。

```lean
theorem halve_mod_bound (p r : Nat) (hp : p%2 = 1) (hr : r < p)
```

证明了相应数值或范围条件：`halveMod p r < p`。

```lean
theorem halve_mod_correct (p r : Nat) (hp : p%2 = 1)
```

证明了不依赖 p 为素数：两倍减半结果与原数模 p 相等。

```lean
theorem halve_mod_iterate (p k r : Nat) (hp : p%2 = 1) (hr : r < p)
```

证明了相应数值或范围条件：`(halveMod p)^[k] r < p ∧ (((halveMod p)^[k] r : Nat) : ZMod p)*2^k = r`。

```lean
def halveFixed (p k : Nat) : Nat → Nat → Nat
```

第二阶段固定展开，保留 k；第 i 轮由经典索引 i<k 决定是否减半。

```lean
theorem halveFixed_eq (p k rounds r : Nat)
```

证明了 `halveFixed p k rounds r` 等于 `(halveMod p)^[min rounds k] r`。

```lean
theorem halveFixed_correct (p k rounds r : Nat) (hp : p%2 = 1) (hr : r<p) (hk : k≤rounds)
```

证明了k≤轮数时，恒等填充不改变 k 次模减半的结果。

```lean
theorem halveMod_eq (p r : Nat)
```

证明了减半门列的值：奇数先加 p 再右移。

```lean
theorem halve_parity (p r : Nat) (hp : p % 2 = 1) (hr : r < p)
```

证明了减半后由结果大小恢复原奇偶：r 奇 ⇔ 结果 ≥ (p+1)/2。

```lean
theorem double_flag (p r : Nat) (hp : p % 2 = 1) (hr : r < p)
```

证明了加倍门列的值与标志：r ≥ (p+1)/2 ⇔ 2r ≥ p；此时 2r mod p = 2r − p 且为奇数，否则 = 2r 为偶数。
