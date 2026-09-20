# 经典表查询

本模块按量子寄存器中的地址查询经典常量表，将结果异或到输出，并证明查询正确性及工作位清理。

这里只介绍 `_spec` 与 `_correct` 定理，资源统一列在末尾。下文 `{前置条件} 程序 {后置条件}` 是 Hoare triple 的可读写法：对任意初始状态和任意预先给定的测量结果都成立，并保持相位。所有三元组都以各项列出的适用前提为条件。

`s₀`、`s₁` 分别表示运行前后完整状态；`s₀[w]` 是初始位值，`val₀(r)` 是初始寄存器读值，后缀 ₁ 同理。普通断言中的 `r=X` 按寄存器类型读取位、整数或点；XOR 是异或。命名状态断言沿用源码，不自动意味着未提及的线路也保持不变。

## [Lookup.lean](Lookup.lean)

4 位和 10 位地址的规格均为：地址 D 不变，目标从 T 变为 `T XOR table(D)`，临时工作区从零恢复为零。

### lookupWalk

正确性由 [lookupWalk_correct](Lookup.lean#L29) 证明：

控制 a 开启时，将地址对应的表值异或到目标；关闭时目标不变，目标外基态位与相位保持不变。

适用前提：

- `a::(controls++scratch++target)` 中的 wire 互不相同。
- `scratch.length=controls.length`。
- `∀ d<2^controls.length, table d<2^target.length`。

```text
{ 初始状态 = s₀ ∧ (∀ w∈scratch, s₀[w]=false) }
lookupWalk a controls scratch target table
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉target → s₁[w]=s₀[w])
  ∧ val₁(target) = val₀(target) XOR (if s₀[a] then table (val₀(controls)) else 0) }
```

### lookup

实现约定：[lookup_spec](Lookup.lean#L229)。

适用前提：

- `a::(controls++scratch++target)` 中的 wire 互不相同。
- `controls.length=3`。
- `scratch.length=3`。
- `∀ j<16, table j<2^target.length`。

```text
{ (a::controls) = D, target = T, scratch = 0 }
lookup a controls scratch target table
{ (a::controls) = D, target = (T XOR table D), scratch = 0 }
```

正确性由 [lookup_correct](Lookup.lean#L216) 证明：

将完整地址对应的表值异或到目标寄存器，保持目标外基态位与相位。

适用前提：

- `a::(controls++scratch++target)` 中的 wire 互不相同。
- `controls.length=3`。
- `scratch.length=3`。
- `∀ j<16, table j<2^target.length`。

```text
{ 初始状态 = s₀ ∧ (∀ w∈scratch, s₀[w]=false) }
lookup a controls scratch target table
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉target → s₁[w]=s₀[w])
  ∧ val₁(target) = val₀(target) XOR table (val₀(a::controls)) }
```

### lookup10

实现约定：[lookup10_spec](Lookup.lean#L371)。

适用前提：

- `a::(controls++scratch++target)` 中的 wire 互不相同。
- `controls.length=9`。
- `scratch.length=9`。
- `∀ j<1024, table j<2^target.length`。

```text
{ (a::controls) = D, target = T, scratch = 0 }
lookup a controls scratch target table
{ (a::controls) = D, target = (T XOR table D), scratch = 0 }
```

正确性由 [lookup10_correct](Lookup.lean#L358) 证明：

十位计数查表：同一递归门列，九根scratch。

适用前提：

- `a::(controls++scratch++target)` 中的 wire 互不相同。
- `controls.length=9`。
- `scratch.length=9`。
- `∀ j<1024, table j<2^target.length`。

```text
{ 初始状态 = s₀ ∧ (∀ w∈scratch, s₀[w]=false) }
lookup a controls scratch target table
{ s₁.phase=s₀.phase
  ∧ (∀ w, w∉target → s₁[w]=s₀[w])
  ∧ val₁(target) = val₀(target) XOR table (val₀(a::controls)) }
```

## 资源用量

T 为 Toffoli 门数，M 为测量次数，Q 为实际使用的不同物理线路数。以下保持原有计数及适用条件；未列出的项不是零，T=0 不代表没有其他门。公式中的 Nat 减法按自然数截断。

### [Lookup.lean](Lookup.lean)

- 资源：

  - `lookupWalk a controls scratch target table`：T = `2^controls.length-1`，M = `2^controls.length-1`。
  - `lookup a controls scratch target table`（4 位地址）：T = `14`，M = `14`。
  - `lookup a controls scratch target table`（10 位地址）：T = `1022`，M = `1022`。
