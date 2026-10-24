# 待 Lamport 确认的证明接口

状态：签名提案，尚未获得生产方确认。此文件不提供证明。

owner 在 Raft 消息 d8ec4d8a 允许把实际等待项集中为 `sorry`，并在
59d00327 要求 Lamport 先确认这些证明可实现。只有确认后的条目才进入
`ECDSAAdd/Arithmetic/Paper935/WaitingOnProducer.lean`。该文件计划作为单独的临时构建入口；
既有无 `sorry` 的组件构建和精确公理白名单保持不变。

## 要求确认的具体类型

以下符号必须是 Lamport 提供的实际程序和物理布局定义。
不能把任意 `RecordedProgram` 都声明为满足接口。
生产方确认应同时给出定义名、类型、前提和负责的条目。

```lean
-- 实际 s2 与 s6 调用各有独立布局/程序，不假定同一物理地址。
forward2 : HmrRowMulSpec L2 H2
forward6 : HmrRowMulSpec L6 H6
unpark2  : HmrRowUnparkSpec L2 U2
erase6   : HmrRowMulInvSpec L6 R6
unparkRule2 : HmrUnparkInputRule L2 U2 unpark2
eraseRule6  : HmrEraseInputRule L6 R6 erase6
```

这些类型的完整字段见 `HmrRowMulSpec.lean` 和 `HmrLifecycleInput.lean`。
它们包含实际执行后的完整寄存器条件、scratch 清零、支持范围、记录引用
合法性以及相位债公式。不能只交付模 p 数值等式。

## 三组确认项

| 编号 | 生产方交付 | 消费方使用 |
|---|---|---|
| L1 | `L2/L6/H2/H6` 实际定义及两个 ForwardSpec；`legalCursor` 在实际起点可成立。 | `hmr_reached_call_output` 与三调用组合。 |
| L2 | `U2/R6` 实际定义、UnparkSpec/InvSpec、两条 InputRule；记录条件在实际游标上可成立。 | `hmr_unpark_input`、`hmr_erase_input` 和生命周期恢复。 |
| L3 | 生产方提供的真实 `K2/K6/J` 分段等式及其所负责的状态/相位事实。 | 在真实后态与累计游标上证明三调用相位债抵消。 |

L3 不能直接写成“对任意 K/J 都恢复状态和相位”。必须先固定实际程序、
输入域和每条前提。消费方自己的调用绑定与组合工作不转嫁为 Lamport 的
`sorry`。同理，本清单不要求 Lamport 承诺整机 ≤935 或采样概率上界。

## 已有精确消费边界

前向调用的输出是 `call.beforeSign`。它来自 256 次扫描及 242 次减半。
它不等于任意替代的规范模乘结果。行保持 `L.parked` 表示，而非立即复原。

s2 的 unpark 前提来自实际 `H2 ++ K2` 后态。此时乘数字应被测量归零。
s6 的原始输入是实际 `(H2 ++ K2 ++ U2) ++ J` 后态。
逆乘之后，输出字应为零。两处都使用绝对记录游标。

InputRule 中的 `records` 不能恒假。ForwardSpec 中的 `legalCursor`
不能恒假。必须指出实际消费者怎样取得这些前提。

## 临时等待文件的准入条件

1. Lamport 对各条签名作明确答复。可接受修改后的更窄签名。
2. 记录实际程序定义名和源码配置。未有定义的程序不靠 `sorry` 任意生成。
3. 每个 `sorry` 有唯一名称、Lamport 的确认消息和预期替换证明。
4. 单独列出依赖这些名称的临时验收入口。
5. 临时入口的 `sorryAx` 依赖显式报告。严格入口仍拒绝 `sorryAx`。
6. 删除等待项后重新执行严格审计，才能称为最终证明完成。

本提案没有新增任务，没有修改旧任务范围，也没有放宽既有审计。

## Dirac 的审计约定（c4556b9e）

只允许上述唯一文件出现 `sorry`。每条声明的文档注释必须列出生产方
任务、Lamport 确认可实现的消息 ID、消费方 PR。原有审计入口严格拒绝
`sorryAx`；新增临时入口放在 verify.sh 独立段，额外允许 `sorryAx` 并
打印所依赖的等待条目名。PR 正文分别报告两组数量。issue #213 使用
“临时（依赖等待文件 N 条）”标记；等待项清零后才能称为正式完成。

## 签名修正（Lamport be48550d，尚非可实现确认）

两条 InputRule.accepts 都必须先接收 `HmrRowMulPre L call original`，
再接收 records 和 parked 边界。这样 call 与原始寄存器的系数、乘数、
数值成功条件有明确绑定。消费定理已经持有该前提，直接传入。

## 生产方核对结果（e62ab489）

**上述六项全部尚未准入。** Lamport 没有确认可用 `sorry` 暂代。
它们只是修正后的交付目标。缺少实际 H2/H6 与完整 HMR 出口布局定义，
也缺少完整 lazy-cma 与 256 轮扫描的实现和证明。

下一轮数据接口必须在 `HmrRowMulLayout` 之外逐项固定：

| 字段 | 需要的数据与证据 |
|---|---|
| carry、flag、top、tq | 每个角色的有序实际端口；不能只提供一个集合。 |
| clean3 | 三个有序端口及长度证明。 |
| anc | 24 个有序端口、长度证明；fold carry 使用 anc[0]。 |
| 角色分离 | 实际构造需要的端口互异、与输入/输出数据的分离条件。不能未经核对要求多余分离。 |
| arena | 每次实际借用成功的返回值、所有权及调用前的清零条件。 |
| 源码对应 | s2/s6 分别提供角色绑定；固定源码 64b5a13 的同一配置。 |

在这些数据确定后，H/U/R 必须由没有 `sorry` 的程序生成定义产生。
U 的逆 fold 借用 L.y，R 的逆 fold 借用 L.out。两者的 carry 均取
anc[0]。已有 unpark 逆 fold→逆 lift 的局部证明可以复用，但不能
据此声明完整 forward 或 erase 已经可实现。

K2/K6/J 尚未固定。不能为这些变量增加任意全局恢复承诺。
原始输入规则前提缺失属于接口错误，已经修正；它不是可转移给生产方
的等待义务。只有后续得到准确签名确认，才能添加等待声明。
