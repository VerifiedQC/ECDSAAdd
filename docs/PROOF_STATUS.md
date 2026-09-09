# 公开定理与证明状态

M1 已复审并合并。当前分支的 M2 加减法基础已通过本地 `scripts/verify.sh`；M2 的模 p 加减、模乘与具体求逆，以及点加电路尚未实现。求逆仅有接口要求，不存在已证明满足它的程序。

受检源码提交：`4dc34517347cf5756edc3247fbe2ae5860a587a0`。本页随后仅补入此哈希；最终交付的 Lean 源码与验证脚本相同。验证包括 Lean 构建与公开定理公理白名单；没有测试。

## M1

```lean
theorem andComputeErase_spec (a b anc : Wire) (hnd : [a, b, anc].Nodup) (A B : Bool) :
  {{ a = A, b = B, anc = false }} andComputeErase a b anc
  {{ a = A, b = B, anc = false }}
```

三线互异、辅助位为零时，AND 计算与测量反计算恢复整个状态；`andComputeErase_correct` 保留完整状态等式。
同一个程序的 Toffoli 数为 1、测量数为 1、静态线路数为 3；静态线路数不是最大同时存活数。
结论仅涉及 monomial 模型；数学层的 `affineAdd_correct` 是群律规格，不是点加电路实现证明。

## 判断的含义

```lean
def Triple (P : BasisState → Prop) (c : Program) (Q : BasisState → Prop) : Prop :=
  ∀ (s : State) (m : List Bool), P s.basis →
    (run c m s).phase = s.phase ∧ Q (run c m s).basis
```

测量记录不足时补 false，多余时忽略；全称量化覆盖所有记录。相位恢复需要证明，不由即时修正的语法自动保证。`Triple.seq`、`conseq`、`frame` 分别证明顺序组合、前后置条件推导、外部线路断言保持。

断言里的顶层 `r = v` 经 `Holds` 读取寄存器：Wire 读 Bool、线路列表按小端读 Nat、PointReg 读有限点标志与坐标（无穷远点全零）。其他命题原样保留，必要时可用隐式状态名 `st`。[判断与表示定义](../ECDSAAdd/Framework/Hoare.lean) · [程序和定理源码](../ECDSAAdd/Circuit/And.lean)

## `#check` 原文

```text
ECDSAAdd.andComputeErase_spec (a b anc : ECDSAAdd.Wire) (hnd : [a, b, anc].Nodup) (A B : Bool) :
  ECDSAAdd.Triple
    (fun st => (ECDSAAdd.Holds.holds st a A ∧ ECDSAAdd.Holds.holds st b B) ∧ ECDSAAdd.Holds.holds st anc false)
    (ECDSAAdd.andComputeErase a b anc) fun st =>
    (ECDSAAdd.Holds.holds st a A ∧ ECDSAAdd.Holds.holds st b B) ∧ ECDSAAdd.Holds.holds st anc false
```

## M2：加减法基础

[加法源码](../ECDSAAdd/Arithmetic/RippleAdder.lean) 中 `bs` 按小端排列，每一项含 x、y、out、carry 四根线；`cin :: addWires bs` 的 Nodup 要求全部线路互异。

```lean
theorem rippleAdder_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y : Nat) (C : Bool) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = (0 : Nat), bs.map AddBit.carry = (0 : Nat) }} rippleAdder bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = ((X + Y + C.toNat) % 2^bs.length),
       bs.map AddBit.carry = (0 : Nat) }}
```

每位先计算和位/进位、递归处理高位，最后测量清理当前进位。`rippleAdder_correct` 同时证明所有非输出线路恢复，包含输入、输入进位与工作线。`rippleAdder_wide_spec` 在布局末尾增加一位，要求 X、Y 小于原位宽的容量，直接给出 `out = X + Y + C.toNat`；最高输出位保留。

[减法源码](../ECDSAAdd/Arithmetic/Subtractor.lean) 用两层 X 包住同一加法器，实现补码相加并恢复 Y 和输入进位工作线：

```lean
theorem rippleSubtractor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y : Nat) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = (0 : Nat), bs.map AddBit.carry = (0 : Nat) }} rippleSubtractor bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = false,
       bs.map AddBit.out = ((X + 2^bs.length - Y) % 2^bs.length),
       bs.map AddBit.carry = (0 : Nat) }}
```

所有 triple 均量化任意初始相位和测量记录，保证相位恢复；线路集合外保持由 Framework 定理提供。当前加减法的输出要求初始为零；尚未提供任意初值输出的 XOR 寄存器接口。

| 同一具体程序 | Toffoli | 测量 | 静态线路数（布局互异） |
| --- | ---: | ---: | ---: |
| `fullAdder` | 1 | 0 | 5 |
| `eraseCarry` | 0 | 1 | 4 |
| `notRegister`，n 位 | 0 | 0 | n |
| `rippleAdder`，n 位 | n | n | n>0 时 4n+1；n=0 时 0 |
| `rippleAdder`，n+1 位完整结果 | n+1 | n+1 | 4n+5 |
| `rippleSubtractor`，n 位 | n | n | 4n+1 |

[求逆契约](../ECDSAAdd/Arithmetic/InverseContract.lean) 明确要求两个 256 位寄存器、`0 < X < p`、逆元输出、工作位清零、相位恢复，以及该程序的计数和线路包含关系。它只是待实现程序的命题，不是实现或存在性定理。

## 公理披露

`lake --wfail build` 与以下公开定理的传递公理白名单检查通过；没有运行测试，也没有全环境审计。

```text
'ECDSAAdd.andComputeErase_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.andComputeErase_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.andComputeErase_toffoliCount' depends on axioms: [propext]
'ECDSAAdd.andComputeErase_measurementCount' depends on axioms: [propext]
'ECDSAAdd.andComputeErase_qubitCount' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Triple.seq' depends on axioms: [propext]
'ECDSAAdd.Triple.conseq' does not depend on any axioms
'ECDSAAdd.Triple.frame' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.fullAdder_spec' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.eraseCarry_spec' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.notRegister_spec' depends on axioms: [propext, Quot.sound]
'ECDSAAdd.Arithmetic.rippleAdder_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rippleAdder_wide_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rippleAdder_toffoliCount' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.rippleAdder_measurementCount' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.rippleAdder_qubitCount' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rippleSubtractor_spec' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Arithmetic.rippleSubtractor_counts' depends on axioms: [propext]
'ECDSAAdd.Arithmetic.rippleSubtractor_qubitCount' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.p_prime' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.G_ne_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'ECDSAAdd.Secp256k1.affineAdd_correct' depends on axioms: [propext, Classical.choice, Quot.sound]
```
