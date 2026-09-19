# 寄存器交换

本模块交换两个寄存器的内容，提供受控和无控制形式，并证明状态变化和资源用量。

## 文件目录

以下只列本文件证明的项目，均以对应定理的线路互异、位宽、数值范围和工作区初态等条件为前提。`_spec` 保证对任意测量结果满足后置断言并保持相位；未提及的线路是否保持，需看相应结论。

资源中 T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数；未列出的项不代表零，T=0 也不代表没有其他门。资源公式保留源码参数名，其中 Nat 减法按自然数截断。

[SwapRegisters.lean](#swapregisterslean)

这个文件定义普通和受控寄存器交换，证明交换结果、状态保持及资源。

- 规格：受控交换在 C 为真时交换 A、B，否则保留原值，控制不变；无控制交换直接互换两寄存器。
- 正确性：受控交换后两寄存器读值符合控制选择，两组寄存器外的所有基态位及相位不变。
- 资源：

  - `swapRegisters c a b`：T = `a.length`，M = `0`，Q = `(if a.isEmpty then 0 else 2*a.length+1)`。
  - `exchangeRegisters a b`：T = `0`，M = `0`，Q = `2*a.length`。

## [SwapRegisters.lean](SwapRegisters.lean)

以下声明位于 `ECDSAAdd.Arithmetic` 命名空间。

```lean
def swapRegisters (c : Wire) (a b : List Wire) : Program
```

向量形式 Fredkin 分解；每对位使用两次 CX 和一次 CCX。

```lean
theorem copy_back (c : Wire) (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (c::(a++b)).Nodup) (C : Bool) (A B : Nat)
```

证明了执行 `copyRegister none b a` 时，寄存器初态满足 `c=C, a=A, b=B` 就能得到 `c=C, a=(A ^^^ B), b=B`，并恢复相位。

```lean
theorem swapRegisters_spec (c : Wire) (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (c::(a++b)).Nodup) (C : Bool) (A B : Nat)
```

证明了寄存器长度相同且全部互异；控制为真时交换，否则保持两者。

```lean
theorem swapRegisters_resources (c : Wire) (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (c::(a++b)).Nodup)
```

证明了所列程序的精确资源关系：`toffoliCount (swapRegisters c a b) = a.length ∧ measurementCount (swapRegisters c a b) = 0 ∧ qubitCount (swapRegisters c a b) = (if a.isEmpty then 0 else 2*a.length+1)`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
def exchangeRegisters (a b : List Wire) : Program
```

无控制交换不需要 Toffoli，用于把新值移回固定的寄存器位置。

```lean
theorem exchangeRegisters_spec (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (a++b).Nodup) (A B : Nat)
```

证明了执行 `exchangeRegisters a b` 时，寄存器初态满足 `a=A, b=B` 就能得到 `a=B, b=A`，并恢复相位。

```lean
theorem exchangeRegisters_resources (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (a++b).Nodup)
```

证明了所列程序的精确资源关系：`toffoliCount (exchangeRegisters a b)=0 ∧ measurementCount (exchangeRegisters a b)=0 ∧ qubitCount (exchangeRegisters a b)=2*a.length`。其中门数和测量数对应同一程序，qubitCount 按不同物理线路计数。

```lean
theorem swapRegisters_wires (c : Wire) (a b : List Wire) (hlen : a.length=b.length)
```

证明了 `wires (swapRegisters c a b)` 包含的线路都在 `(c::(a++b)).toFinset` 中。

```lean
theorem exchangeRegisters_wires (a b : List Wire) (hlen : a.length=b.length)
```

证明了 `wires (exchangeRegisters a b)` 包含的线路都在 `(a++b).toFinset` 中。

```lean
theorem swapRegisters_correct (c : Wire) (a b : List Wire) (hlen : a.length=b.length)
    (hnd : (c::(a++b)).Nodup) (s : State) (m : List Bool)
```

证明了两个目标寄存器以外逐线保持，包括控制线。
