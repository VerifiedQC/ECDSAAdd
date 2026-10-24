# 临时等待证明

本入口是有假设的临时接口，不是完成的电路证明。

## 已固定的数据

Lamport 在 d55887e4 确认可实现性，在 db355cbb 给出 A 组数据定义。
Dirac 在 4edc5f50 允许先落 A 组，在 c04f36f4 要求只暂缺 Prop 证明。
布局和程序使用 PR215 的 `s2HmrSourceLayout`、`s2HmrSourceUnpark`。

`unparkRecords2 tape start cursor` 是 `start ≤ cursor`。
解释器支持短或空 tape，缺位按 false 读取。条件不要求 tape 长度。
`unparkPre2` 明确包含原始 `HmrRowMulPre`、记录条件和 `HmrUnparkBoundary`。
它不包含目标执行结论。`unparkPhaseDebt2` 明确定义为 false。
这仅表示 U2 保持当前相位，不表示此前 K2 的相位债已清偿。

记录条件可满足、实际累计游标满足该条件、程序记录合法性和输入规则的
打包都已有证明。程序、布局、pre、phaseDebt、records 都不由 sorry 生成。

## 两条等待义务

唯一允许出现 sorry 的文件是
`ECDSAAdd/Arithmetic/Paper935/WaitingOnProducer.lean`。
两条均由 task #50 的 Lamport 交付，确认依据为 d55887e4 / db355cbb，
消费方为 PR215。

| 等待定理 | 尚缺证明 |
|---|---|
| `WaitingOnProducer.unpark2_support` | 实际程序的物理支持范围 |
| `WaitingOnProducer.unpark2_run` | 逆 fold 和逆 lift 的状态、清零和相位结论 |

`unpark2` 用显式数据和上述定理组装。`unparkRule2.accepts` 直接构造前提。
二者均未整条 sorry，但都依赖这两条等待证明。

## 两张审计表

`verify.sh` 先运行原有严格构建和 3861 个精确公理入口。
严格根模块不导入等待文件。白名单仍只有 propext、Classical.choice、Quot.sound。

之后 `verify_waiting.sh` 单独构建等待模块，运行 10 个临时入口。
此表额外允许 sorryAx。Lean 检查两条登记等待项的类型确实是 Prop，
并遍历每个入口的实际常量依赖，打印等待项及直接使用 sorryAx 的声明。
Python 校验拒绝未登记的 admitted 声明、缺失或重复入口、额外公理，
并确认三个数据定义不依赖 sorryAx。

临时表中：六个数据或已证明的辅助入口不依赖 sorryAx；两条等待定理
各依赖自身；两个组装接口均依赖两条等待定理。
不能把临时表通过写成严格正确性证明完成。

## 尚未落地的四项

forward2、forward6、erase6、eraseRule6 尚未建立等待声明。
H2/H6/R6 必须先有无 sorry 的实际程序生成定义。
Lamport 在 eade25d0 发现 `_fold_stage` 临时 w 超出旧布局支持范围，
Dirac 在 aee144ad 批准修正；须先捕获 w 的实际地址、借还和零态条件，
布局已加入实际 w，且借还定理保留显式零态前提；B 组仍须确认收窄签名。
A 组 unpark 不调用 `_halve_out`。扩大的 scratch 使其前提明确要求 w 为零，
但 U2 门流没有变化，未新增语义等待条目。

三个集成任务仍需 owner 批准启动。这里不宣称整机正确性、≤935 或数值误差界。
