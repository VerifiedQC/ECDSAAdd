# M1 规格

`Framework/Syntax.lean` 定义 `Gate`、`Correction`、`Instr`、`Program`、`State`、`Outcomes` 和线路合法性。`Semantics.lean` 直接给出解释，无量子后端。

`State.phase : Bool` 表示符号相位，`State.basis : Nat → Bool` 表示整个线路位串。

- X/CX/CCX 按布尔可逆规则更新目标位。
- Z 将 phase 异或目标位；CZ 将 phase 异或两输入位的 AND。
- `measureX t c₀ c₁` 消费一个测量结果 m；先将 phase 异或 `m && oldBasis t`，再将 t 清零，最后立即执行对应的修正列表。
- 修正列表只含 Z/CZ，因此不改变 basis，不产生 CCX 或后续测量。
- `Outcomes p := Fin (measurementCount p) → Bool` 覆盖每个结果组合，不依赖输入或证明前提。测量结果决定当前修正，不选择不同算术或后续测量。

`run p m s` 为总函数。`run_append` 证明连接等于依次执行，`firstOutcomes`/`lastOutcomes` 明确拆分记录。结果类型的长度保障定义中的索引合法，无需额外记录长度假设。

`toffoliCount` 数实际 CCX；`measurementCount` 数实际测量指令。两者对连接相加且与结果无关。`wires` 取所有普通门、测量目标及两条修正列表的线路并集；`qubitCount` 为并集基数。`run_preserves_outside` 证明所有记录下都不改变集合外的 basis 位。这是保守声明支持集，可能包含未选择修正分支的线路。

任意线路标签下的支持集基数不是最大标签加一。M1 用互异 a、b、anc 三根线路，支持集精确为这三根；可以直接实例化为 0、1、2。未来点加的实际布局还须包含声明预留的输入、输出、辅助位，并证明布局约束。

`WellFormed` 显式要求 CX/CZ 两线互异、CCX 三线互异。语义本身对任意语法都有定义，物理合法性另外证明。

M1 不含点加、逆元电路、量子态解释、最大存活分析或测试。完整点加的目标仍包括所有 corner cases，后续不以横坐标不等限制公开群律结论。
