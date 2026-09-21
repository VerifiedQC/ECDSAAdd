# 经典表查询

本模块按量子寄存器中的地址查询经典常量表，将结果异或到输出，并证明查询正确性及工作位清理。

下文 ⊕ 表示 XOR，位值写作 0/1；`r=X` 表示寄存器 r 保存 X。`{前置条件} 程序 {后置条件}` 对任意满足前提的初始状态和预先给定的测量结果成立；`｜` 按顺序分隔不同程序及其对应结果。

资源 T、M、Q 分别为 Toffoli 门数、测量次数、不同物理线路数，未列出的项不代表零；T=0 不表示没有其他门。资源沿用对应定理的位宽和线路条件，Nat 减法按自然数截断。

## [Lookup.lean](Lookup.lean)

该文件将经典查找表的值异或到目标寄存器。地址 D 为 4 位或 10 位，对应 3 位或 9 位零工作区；表值须能放入目标寄存器，参与线路互异。

`lookup_spec`、`lookup_correct` 证明 4 位版本，`lookup10_spec`、`lookup10_correct` 证明 10 位版本：

```text
{ address=D, target=T, scratch=0 }
lookup a controls scratch target table
{ target=T ⊕ table(D) }
```

target 以外的 wire 和相位保持不变。

`lookupWalk_correct` 是内部受控版本：地址为 controls，scratch 与 controls 等长；根控制 a=1 时异或表值，a=0 时不改目标。

- 资源：

  - `lookupWalk a controls scratch target table`：T = `2^controls.length-1`，M = `2^controls.length-1`。
  - `lookup a controls scratch target table`（4 位地址）：T = `14`，M = `14`。
  - `lookup a controls scratch target table`（10 位地址）：T = `1022`，M = `1022`。
