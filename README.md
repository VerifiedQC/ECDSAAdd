# ECDSAAdd

在 Lean 中证明 Bitcoin/secp256k1 点加程序的 monomial 行为与资源计数。

## Current status

本节描述当前分支实际包含的代码。M1、加减法、模 p 加减及模乘已经合并；当前分支新增 EEA 求逆的数学证明（I1），包括固定轮数终止、寄存器范围和 secp256k1 逆元等式。CI、独立复审与合并状态以相应 PR 记录为准。

| 范围 | 当前状态 | 代码入口 |
| --- | --- | --- |
| Bitcoin 数学基础 | 已证明 p 的素性、群与 G 的相关性质、完整 affine 群律规格；没有群阶证明 | [Math](ECDSAAdd/Math) |
| 程序与语义 | 已实现 X/CX/CCX、测量及即时 Z/CZ 修正、monomial 执行和静态资源计数 | [Framework](ECDSAAdd/Framework) |
| Hoare 规格 | 已实现寄存器断言与程序语法糖，证明 seq/conseq/frame | [Hoare.lean](ECDSAAdd/Framework/Hoare.lean) |
| AND 测量反计算 | 已证明完整状态恢复，以及 1 Toffoli、1 次测量、3 根静态线路 | [And.lean](ECDSAAdd/Circuit/And.lean) |
| M2 加减法基础 | 已证明任意位宽加减法与任意初值输出 XOR 接口、同程序前向清理；输入、相位和工作位恢复 | [Layout.lean](ECDSAAdd/Arithmetic/Layout.lean) |
| 模 p 加减 | 已证明保留输入、任意初值输出 XOR、全部工作位清零，以及同程序精确资源公式 | [FieldAddSub.lean](ECDSAAdd/Arithmetic/FieldAddSub.lean) |
| 模乘 | 已证明保留输入、输出 XOR、完整清理及资源公式；首版保留倍数链，空间 O(n²) | [FieldMultiply.lean](ECDSAAdd/Arithmetic/FieldMultiply.lean) |
| EEA 求逆数学 | 已证明 Kaliski 不变量、2n 轮终止、范围、固定减半与逆元等式；不是电路证明 | [KaliskiInverse.lean](ECDSAAdd/Math/KaliskiInverse.lean) |
| 求逆电路 | 已定义非零输入、相位/清理及资源契约；具体程序与契约满足证明尚未实现 | [InverseContract.lean](ECDSAAdd/Arithmetic/InverseContract.lean) |
| 点加电路 | 尚未实现，包括受控点加与角落情形的电路证明 | — |

每次创建或更新 PR 前，逐项核对本节与实际源码、公开定理和验证结果；状态变化时在同一 PR 更新 README。后续计划不计入已实现范围。

n 位加法和减法均使用 n 个 Toffoli、n 次测量；非空加法与减法均使用 4n+1 根静态线路。用 n+1 位加法保留完整结果时，资源为 n+1 个 Toffoli、n+1 次测量、4n+5 根线路。n 位常量模数的模加减各用 5n+4 个 Toffoli、4(n+1) 次测量、8n+9 根线路；secp256k1 实例分别为 1284、1028、2057。模乘使用 n(44n+36) 个 Toffoli、32n(n+1) 次测量、(n+18)(n+1)+n+4 根静态线路；p 实例为 2,892,800、2,105,344、70,678。模乘空间为 O(n²)，是复用模加减的正确性基线，未声称资源最优。每项计数都针对规格中的同一个程序，详见 [证明状态](docs/PROOF_STATUS.md)。

## 每次交付的检查

每次创建或更新 PR 都逐项检查，并在 PR 描述里简述结果；可读性和设计必要性需要人工审阅，不能用构建通过代替。

- [ ] **Human readable**：公开定理直接表达前置条件、程序与结果；使用 `r = v`、命名布局、统一 `Nodup` 和中文说明。先展示零输出等常用形式，再提供组合所需的 XOR 形式；检查程序及测量语法是否容易读。
- [ ] **Overdesign**：每个新增类型、谓词、文件、工具都有当前用途；避免重复公开 API、全环境审计器和无需要的抽象。项目文档集中在 README、PROOF_STATUS、PROVENANCE。
- [ ] **状态真实**：逐项对照 README Current status、实际源码、公开定理和验证结果；契约不写成实现，数学群律不写成点加电路证明。
- [ ] **Lean 验证**：固定工具链与依赖，运行 `lake --wfail build` 和选定公开定理的传递 `#print axioms` 白名单，仅允许 `propext`、`Classical.choice`、`Quot.sound`。不添加小 case 测试、Python 对照或真值表验证。
- [ ] **语义与清理**：Triple 对任意初始相位及所有测量记录证明相位恢复、所需输入保持和工作位清零。即时 Z/CZ 修正不是自动正确；测量结果只能选择即时修正。清理必须有适用的不变量，不能直接反转带测量的程序。
- [ ] **同一条合法电路**：正确性与 Toffoli、测量、qubit 定理指向同一具体程序；门的控制与目标满足互异要求，不含重复控制 CCX。线路数按完整程序及修正分支的实际支持集计算，不冒充最大同时存活数；披露空间复杂度，不声称未经证明的最优性。
- [ ] **范围与完整性**：当前只做带符号基态分支模型，不加入量子态语义、桥或 Reference 树。最终点加必须覆盖无穷远、相反点和倍点等角落情形，C 是经典常量、R 是变量；模算术必要的位宽与取值范围前提仍应明确写出。一般测量分支不称为严格 monomial 矩阵，也不冒充完整量子态正确性。
- [ ] **可审阅证据与约定**：PROOF_STATUS 保留可读陈述、证明含义、同程序资源及公理证据；频道和项目文档用中文，复制数学代码保留来源与提交说明。仓库维持 private、Apache 2.0，除非另有明确决定。

只有 Dirac 合并：在同一头提交上 CI 通过、独立复审通过、README 与代码一致，且无当前暂停。Lamport 不合并；Dirac 遇到需要人类决定的不确定事项，应 @runzhou-tao 并等回复。暂停及解除都以最新明确指令为准，不把已解除的暂停继续当作阻塞。

## 程序与规格

常用的零输出模加直接写成：

```lean
theorem fieldAdd_zero_spec (L : ModLayout) (hnd : L.wires.Nodup) (hw : L.width = 256)
    (X Y : Nat) (hX : X < p) (hY : Y < p) :
  {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} fieldAdd L
  {{ L.x = X, L.y = Y, L.out = ((X+Y)%p), L.work = 0 }}
```

`fieldSub_zero_spec` 同样给出模 p 的差；组合证明需要时，`fieldAdd_spec` / `fieldSub_spec` 支持任意输出初值的 XOR 更新。

模乘也先使用零输出形式：

```lean
theorem fieldMul_zero_spec (L : MulLayout) (hnd : L.wires.Nodup) (hw : L.Widths)
    (hn : L.width = 256) (X Y : Nat) (hX : X < p) :
  {{ L.x = X, L.y = Y, L.out = 0, L.work = 0 }} fieldMul L
  {{ L.x = X, L.y = Y, L.out = ((X*Y)%p), L.work = 0 }}
```

`L.Widths` 要求 x、out、倍数寄存器为 n+1 位，两份模算术工作区同宽，乘数 y 为 n 位；全布局用一个 `Nodup` 要求互异。X 必须小于 p，Y 只受寄存器位宽限制，不必另加 `Y < p`。组合用 `fieldMul_spec` 将输出写为 `O ^^^ ((X*Y)%p)`。两个累加器交替复用，只保留倍数链；测量顺序固定，乘数位只控制 CCX 复制。


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
