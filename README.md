# ECDSAAdd

在 Lean 中证明 Bitcoin/secp256k1 点加程序的 monomial 行为与资源计数。

## Current status

本节描述当前分支实际包含的代码。M1 与 M2 加减法基础已经合并；当前分支新增任意输出 XOR 接口、命名布局，以及编译期常量模数的模加减（含 secp256k1 模 p 实例）。CI、独立复审与合并状态以相应 PR 记录为准。

| 范围 | 当前状态 | 代码入口 |
| --- | --- | --- |
| Bitcoin 数学基础 | 已证明 p 的素性、群与 G 的相关性质、完整 affine 群律规格；没有群阶证明 | [Math](ECDSAAdd/Math) |
| 程序与语义 | 已实现 X/CX/CCX、测量及即时 Z/CZ 修正、monomial 执行和静态资源计数 | [Framework](ECDSAAdd/Framework) |
| Hoare 规格 | 已实现寄存器断言与程序语法糖，证明 seq/conseq/frame | [Hoare.lean](ECDSAAdd/Framework/Hoare.lean) |
| AND 测量反计算 | 已证明完整状态恢复，以及 1 Toffoli、1 次测量、3 根静态线路 | [And.lean](ECDSAAdd/Circuit/And.lean) |
| M2 加减法基础 | 已证明任意位宽加减法与任意初值输出 XOR 接口、同程序前向清理；输入、相位和工作位恢复 | [Layout.lean](ECDSAAdd/Arithmetic/Layout.lean) |
| 模 p 加减 | 已证明保留输入、任意初值输出 XOR、全部工作位清零，以及同程序精确资源公式 | [FieldAddSub.lean](ECDSAAdd/Arithmetic/FieldAddSub.lean) |
| 模乘 | 尚未实现 | — |
| 求逆 | 已定义非零输入、相位/清理及资源契约；具体程序与契约满足证明尚未实现 | [InverseContract.lean](ECDSAAdd/Arithmetic/InverseContract.lean) |
| 点加电路 | 尚未实现，包括受控点加与角落情形的电路证明 | — |

每次创建或更新 PR 前，逐项核对本节与实际源码、公开定理和验证结果；状态变化时在同一 PR 更新 README。后续计划不计入已实现范围。

n 位加法和减法均使用 n 个 Toffoli、n 次测量；非空加法与减法均使用 4n+1 根静态线路。用 n+1 位加法保留完整结果时，资源为 n+1 个 Toffoli、n+1 次测量、4n+5 根线路。n 位常量模数的模加减各用 6(n+1) 个 Toffoli、4(n+1) 次测量、8(n+1)+2 根线路；secp256k1 实例分别为 1542、1028、2058。每项计数都针对规格中的同一个程序，详见 [证明状态](docs/PROOF_STATUS.md)。

## 程序与规格

```lean
def andComputeErase (a b anc : Wire) : Program := prog {
  CCX a b anc;
  if meas anc = 1 then CZ a b else skip
}

theorem andComputeErase_spec (a b anc : Wire) (hnd : [a, b, anc].Nodup) (A B : Bool) :
  {{ a = A, b = B, anc = false }} andComputeErase a b anc
  {{ a = A, b = B, anc = false }}
```

三线互异、辅助位初始为零时，数据与相位恢复；同一程序使用 1 个 Toffoli、1 次测量、3 根静态线路。测量结果只能选择即时 Z/CZ 修正，不能改变后续算术或测量流程。结论限于 monomial 语义模型：固定测量分支把每个基态映到单个带符号基态；一般测量分支不保证单射，因此不能称为严格的 monomial 矩阵。

```sh
lake exe cache get
scripts/verify.sh
```

验证包含 Lean 构建和公开定理的公理白名单检查，不包含测试。Lean 固定为 `v4.28.0`，Mathlib 固定为 `fadcf92bfcfe7575bbdf04c6f83ab3ada53e3d42`。

- [公开定理与证明状态](docs/PROOF_STATUS.md)
- [来源与复现](docs/PROVENANCE.md)

Apache License 2.0；来源声明见 [NOTICE](NOTICE)。
