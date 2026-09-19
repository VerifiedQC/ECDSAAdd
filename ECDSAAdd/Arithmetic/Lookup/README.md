# 经典表查询

本模块按量子寄存器中的地址查询经典常量表，将结果异或到输出，并证明查询正确性及工作位清理。

## 文件目录

[Lookup.lean](#lookuplean)

这个文件定义经典表的受控查询，证明四位和十位地址接口的正确性、清理及资源性质。

## [Lookup.lean](Lookup.lean)

这个文件定义经典表的受控查询，证明四位和十位地址接口的正确性、清理及资源性质。

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def lookupWalk (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat) : Program
```

正分支返回后，以CX切到负分支；子树共用后续scratch，最后清负AND。

```lean
theorem eraseNegative_run (a b q : Wire) (hab : a≠b) (hbq : b≠q) (haq : a≠q)
    (s : State) (m : List Bool) (hq : s.basis q=(s.basis a && !s.basis b))
```

证明了 `run [X b,measureX q [] [CZ a b],X b] m s` 等于 `⟨s.phase,writeBit s.basis q false⟩`。

```lean
theorem lookupWalk_correct (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hlen : scratch.length=controls.length)
    (ht : ∀ d<2^controls.length, table d<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false)
```

证明了控制 a 开启时，将地址对应的表值异或到目标；关闭时目标不变，目标外基态位与相位保持不变。

```lean
def lookup (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat) : Program
```

无外部控制：a本身使能第一半表，翻转a使能第二半表，末尾还原。

```lean
theorem lookup_correct_length (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hlen : scratch.length=controls.length)
    (ht : ∀ j<2^(controls.length+1), table j<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false)
```

证明了查表保持地址与目标外所有线路，对全部测量记录恢复相位。

```lean
theorem lookup_correct (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (ht : ∀ j<16, table j<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false)
```

证明了将完整地址对应的表值异或到目标寄存器，保持目标外基态位与相位。

```lean
theorem lookup_spec (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (ht : ∀ j<16, table j<2^target.length) (D T : Nat)
```

证明了公开寄存器接口；工作辅助位初末均为零。

```lean
theorem lookupWalk_counts (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hlen : scratch.length=controls.length)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (lookupWalk a controls scratch target table)=2^controls.length-1 ∧ measurementCount (lookupWalk a controls scratch target table)=2^controls.length-1`。

```lean
theorem lookup_counts (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hc : controls.length=3) (hs : scratch.length=3)
```

证明了两半表各七个前缀AND；加载与重跑清理都是同一14/14门列。

```lean
theorem lookupWalk_wires_subset (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
```

证明了 `wires (lookupWalk a controls scratch target table)` 包含的线路都在 `(a::controls++scratch++target).toFinset` 中。

```lean
theorem lookup_core_wires (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hc : controls.length=3) (hs : scratch.length=3)
```

证明了与表项无关，单迭代门列触及全部地址和三根scratch。

```lean
theorem lookup_wires_subset (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
```

证明了目标中恒零的表列不一定触及；只承诺实际支持的包含关系。

```lean
theorem lookup_frame (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (ht : ∀ j<16, table j<2^target.length)
    (s : State) (m : List Bool) (hz : regValue scratch s.basis=0) (w : Wire) (hw : w∉target)
```

证明了比支持集更强的frame：所有目标外线路（包括控制与scratch）初末相同。

```lean
theorem lookupWalk_core (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hlen : scratch.length=controls.length)
```

证明了 `(controls++scratch).toFinset` 包含的线路都在 `wires (lookupWalk a controls scratch target table)` 中。

```lean
theorem lookup10_core_wires (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hc : controls.length=9) (hs : scratch.length=9)
```

证明了十位地址和九根scratch均在实际支持内，与表值无关。

```lean
theorem lookup10_correct (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=9) (hs : scratch.length=9)
    (ht : ∀ j<1024, table j<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false)
```

证明了十位计数查表：同一递归门列，九根scratch。

```lean
theorem lookup10_spec (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=9) (hs : scratch.length=9)
    (ht : ∀ j<1024, table j<2^target.length) (D T : Nat)
```

证明了执行 `lookup a controls scratch target table` 时，寄存器初态满足 `(a::controls) = D, target = T, scratch = 0` 就能得到 `(a::controls) = D, target = (T ^^^ table D), scratch = 0`，并恢复相位。

```lean
theorem lookup10_counts (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hc : controls.length=9) (hs : scratch.length=9)
```

证明了所列程序的门数或测量次数满足 `toffoliCount (lookup a controls scratch target table)=1022 ∧ measurementCount (lookup a controls scratch target table)=1022`。

```lean
theorem lookup10_frame (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=9) (hs : scratch.length=9)
    (ht : ∀ j<1024, table j<2^target.length)
    (s : State) (m : List Bool) (hz : regValue scratch s.basis=0) (w : Wire) (hw : w∉target)
```

证明了 `(run (lookup a controls scratch target table) m s).basis w` 等于 `s.basis w`。
