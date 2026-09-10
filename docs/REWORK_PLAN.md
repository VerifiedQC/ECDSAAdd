# ECDSAAdd 算术原语与点加重做设计（给实现者）

作者：Dirac。状态：**计划文档，所列各项均未实现**；改 1–4 由 Deutsch 实现，改 5–7 待安排。本文件与频道内 v3 附件同步。所有标注"目标"的数字都是按本文给出的门列推导的预期值，不是已证定理；实现时以 Lean 资源定理为准，并在 README 资源表里替换。

## 0. 范围、前提与读法

**不变的约束**（与 M1–M3 相同）：
- 语义仍是 monomial（phase + basis）层；指令集 X / CX / CCX / measureX（只带即时 Z/CZ 修正）；资源 = 同一门列的 `toffoliCount` / `measurementCount` / `qubitCount`（实际支持集）。
- 输入域不缩小：求逆对全体 0<X<p；点加对全体合法点（含 O、R=±C）；公开定理不加坐标前提。
- 对任意初始相位、任意测量记录证明；全部 Lean，无测试；公开定理用 `{{ }}` 语法糖直接写寄存器断言；一个全局 `Nodup`。

**重做项目**（改 1–3 为核心，改 4–7 为已纳入计划的后续项，按"省得多、改得少"排序）：

| 编号 | 项目 | 现在（已证） | 目标 | 改动范围 |
| --- | --- | ---: | ---: | --- |
| 改 1 | 求逆第二阶段 → 原地模减半、只做一次 | 每次求逆 9,506,816 | ≈ 546,000 | 只动 I4 的 halving 循环；`fieldInverse_spec` 陈述不变 |
| 改 2 | 模乘 → Horner 原地累加，不存倍数链 | 2,892,800 Toffoli，70,678 线 | ≈ 590,000 Toffoli，≈ 1,500 线 | 新原语 `mulAddInPlace`，旧 `fieldMul` 并存到切换完成 |
| 改 3 | 点加 → 除法中心 + 原地更新 + 角落标志 | 受控原地 91,964,213（设计） | ≈ 15–17M（用改 1、改 2 后的原语） | M3 第二版；新增"输出侧标志"数学引理 |
| 改 4 | Gidney 比较器（n Toffoli 的测量擦除比较器，替代两次减法的 borrowXor） | 每次比较 2n | n | 原地模加 5n→4n、原地模减半 3n→2n、求逆第二阶段每轮 −n、Kaliski 轮记录比较 −w、计数比较减半；所有接口陈述不变 |
| 改 5 | Kaliski 轮压缩 | 每轮 4,669（18w+43） | 每轮 ≈ 3,620（≈14w+22，含改 4） | I3 统一体内的零检测换 MBU 擦除、masked 加减换原地受控版；`kaliskiRound_spec` 陈述不变 |
| 改 6 | Montgomery 4 位窗口模乘 | 改 2 后 ≈ 590,000 | 标准形式两次蒙哥马利乘 ≈ 300,000；全 Montgomery 表示 ≈ 150,000 | 新增查表原语与 Montgomery 形式；6a 不动其他模块，6b 动所有坐标表示 |
| 改 7 | 测量反计算查表所需的 CCZ 修正（条件项） | 语言只有 Z/CZ 修正 | 每个查表的反计算从 2^k 降到 ≈ 2^(k/2) | 只在改 6 选择 MBU 反查表时需要；扩展 Syntax/Semantics/Cost 三处 |

七项做完，受控原地点加目标 ≈ 10–11M，与 Litinski 2023 的精确点加（≈ 8M）同量级；再往下受限于 Kaliski 求逆的 2n 轮 × 正逆两遍，需要不同的求逆算法（本文不覆盖）。Babbush 等 2026 的 2.1–2.7M 电路保密，本文不承诺复现。

**文献锚点**（可公开核对的构造与数字）：
- Roetteler–Naehrig–Svore–Lauter 2017（arXiv:1706.06752）：Fig. 3 原地模加（加、减 p、条件加回、比较清标志）；Fig. 4 原地模加倍（标志由结果最低位清除）；Fig. 5 Proos–Zalka 加倍–累加模乘；§3.4 Kaliski 可逆求逆（2n 轮 + 计数器）；Algorithm 1 受控原地点加（4 次求逆、4 次乘、2 次平方，因为每个 out-of-place 结果要再算一次清除）。
- Häner–Jaques–Naehrig–Roetteler–Soeken 2020（ePrint 2020/077）：Alg. 7b 用交换归一化四分支的 Kaliski 轮（我们 I3 的统一体就是它）；Fig. 8b 除法 = 正向求逆（留垃圾）→ 乘 → 复制 → 逆向乘 → 逆向求逆（pebbling，求逆只跑两遍而不是四遍）；Fig. 9 原地点加 = **2 次除法、2 次乘、1 次平方、9 次加减**；Fig. 5 "平方后立刻减"的 pebbling。
- Litinski 2023（arXiv:2306.08585）§1：原地模加 4n、受控 5n；模减 6n；模加倍同模加；Montgomery 4 位窗口模乘 2.25n²+9n（n=256：≈150k）；Kaliski 求逆每轮 13n、共 26n²+2n（n=256：≈1.7M，正向一遍、留 2n 位垃圾）；点加用 f1–f4 四个标志处理 a=x、b=−y、P1=O、P2=O 全部角落情形；每个 ECPointAdd 约 8M Toffoli。
- Babbush 等 2026（PRX Quantum 7, 031001）附录 A2–A5：窗口化原地点加 ≤2.1M/2.7M 非 Clifford（CCX+CCZ），平均执行计数，只要求 ≥99% 输入正确；kickmix = 经典可逆门 + X 基测量 + 对角相位修正。

## 1. 新基础原语（三项重做共用）

现有仓库的加法器 `add` / `sub` 都是 out-of-place XOR 形式（`out ^= x+y`），这正是模乘 44n² 和求逆第二阶段 9.3k/轮的根源：每个结果都"算到新寄存器、再算一遍清旧值"。三项重做都建立在**原地**原语上。以下每个原语给：接口、门列、正确性要点、资源（n=256）、证明义务。

### 1.1 原地加法器 `addInPlace`

接口：`b ← (b + a) mod 2^n`，可选进位输出位 `cout ^= carry`。a 保持。

门列（Gidney 2018 "Halving the cost of quantum addition" 的 AND/MBU 形式，与现有 `rippleAdder` 的进位链相同，只是和写回 b 而不是 out）：
1. 进位链与现有 `rippleAdder` 完全相同：对 i = 0..n−2 用现有 `fullAdder` 的 AND 步把进位 c_{i+1} = MAJ(a_i, b_i, c_i) 写进干净辅助位（每位 1 个 CCX）；需要时最高位再用 1 个 CCX 把进位写进 cout。
2. 和位不写 out，而是用 CX 原地写回 b：b_i ← a_i ⊕ b_i ⊕ c_i（零 Toffoli）。
3. 反向：对 i = n−2..0 用现有 `eraseCarry`（`measureX c_{i+1}`，测得 1 时的 CZ 修正）擦除进位辅助位。修正模式与现有证明相同，只是和位所在寄存器不同。

资源：n−1（或 n，带 cout）个 Toffoli；n−1 次测量；线路 = 2n + (n−1) 辅助 + cout。

证明义务：`{{ a=A, b=B, carries=0, cout=C }} addInPlace {{ a=A, b=((A+B) % 2^n), carries=0, cout=(C ^^ decide (A+B ≥ 2^n)) }}`，相位对所有测量记录恢复。与 `rippleAdder_spec` 结构相同，可复用 `fullAdder`/`eraseCarry` 的局部引理。

减法 `subInPlace`：b ← (b − a) mod 2^n：把 b 按位取反、加 a、再取反（X 门，零 Toffoli），借位 = 进位取反。

### 1.2 常数原地加减 `addConstInPlace K`

用 X 门把常数 K 写进一个 n 位临时寄存器 T（零 Toffoli），`addInPlace T→b`，再用 X 清 T。受控版（控制 c）：`T_i ^= c`（对 K 的 1 位做 CX c→T_i），加，再 CX 清——**受控常数加仍然只有 n 个 Toffoli**，不需要受控加法器。

资源：n Toffoli、n−1 测量；T 可在所有原语间复用。后续可换 Häner–Roetteler–Soeken 常数加法器省掉 T，不影响本文其余设计。

### 1.3 比较器

`[b < a]`、`[b < K]`：现有 `borrowXor`（两次减法，2n Toffoli）直接可用；改 4（第 5 节）的 Gidney 比较器把它降到 n。改 1–3 的门数按 2n 计，改 4 之后按 n 重算。

### 1.4 改名移位（零成本）

无条件的 ×2、/2 不再用 CSWAP 链：在布局层面把寄存器线列表整体移一位（像 I3 的 `swapCounter` 那样由程序构造决定下一步用哪条线），`wires` 不变、Toffoli 为零。具体：寄存器 x 的线列表 `[x₀,…,x_{n−1}]`，加一根已知为零的线 z：
- 左移（×2）：新寄存器 = `[z, x₀, …, x_{n−1}]`（n+1 位），原 x 的线不动。
- 右移（/2，要求 x₀ = 0）：新寄存器 = `[x₁, …, x_{n−1}]`，x₀ 成为新的零线。

Lean 侧：`regValue (z :: xs) st = 2 * regValue xs st`（z 为 false）与 `regValue (x₀ :: xs) st = regValue xs st * 2`（x₀ 为 false）这两条是 `regValue` 的直接引理。**有条件**的移位（Kaliski 轮内按 active 移位）仍用现有 CSWAP 链。

### 1.5 原地模加 `modAddInPlace` / 受控版 / 原地模减

接口：a, b < p，`b ← (a + b) mod p`，a 保持。b 用 n+1 位（高位 h 初始 0）。

| 步 | 操作 | 值 |
| --- | --- | --- |
| 1 | `addInPlace a → b`（进位进 h） | b = a+b ∈ [0, 2p) |
| 2 | `subConstInPlace p` 于 (b,h)（n+1 位） | 若 a+b ≥ p：b = a+b−p，h = 0；否则 h = 1（回绕） |
| 3 | 受控（控制 h）`addConstInPlace p` 于低 n 位 | h=1 的分支恢复 b = a+b；h 不变 |
| 4 | `h ^= [b ≥ a]`（比较器） | 分支 1：b = a+b−p < a ⇒ [b ≥ a]=0，h 保持 0；分支 2：b = a+b ≥ a ⇒ 翻回 0 |

正确性引理（Math）：a,b<p ⇒ (a+b ≥ p ⇔ a+b−p < a) 且 (a+b < p ⇒ a+b ≥ a)。

资源：n + n + n + 2n = 5n Toffoli（比较器用 Gidney 型则 4n，与 Litinski 一致）。受控版（控制 c）：步 1 改为 `t ← c·a`（n 个 CCX）、加 t、清 t（n），其余照常：7n；或者先算无条件结果再用 c 选择——都不需要受控加法器。

原地模减 `b ← (b − a) mod p`（Litinski Fig. 6c）：先对 a 做不带 x=0 检查的取负（按位 X 取反 + `addConstInPlace (p+1)`，n；a=0 时得到 p，后面的模加照样正确约减），再 `modAddInPlace a → b`（5n），最后把 a 取负还原（n）。共 7n（Gidney 比较器则 6n）。受控版只控制中间的模加。

### 1.6 原地模加倍 `dblInPlace`

x < p，p 奇。`x ← 2x mod p`。
1. 改名左移得 (n+1) 位值 2x，再借一根零线 h 作第 n+2 位。
2. `subConstInPlace p`（n+2 位）：2x ≥ p 时 h=0、值 = 2x−p（奇数）；否则 h=1（回绕）、低位 = 2x（偶数）。
3. 受控（h）`addConstInPlace p` 于低 n+1 位：回绕分支恢复 2x。
4. 清 h：`h ^= ¬x₀`（结果最低位取反；新值偶 ⇔ 未约减 ⇔ h=1）。一个 X–CX–X。

引理：2x 偶、p 奇 ⇒ (2x−p) 奇。资源：2n Toffoli（两次常数加减），零比较器。与 Roetteler Fig. 4 / Litinski "modular doubling" 相同。

### 1.7 原地模减半 `halfInPlace`

x < p，p 奇。`x ← x·2⁻¹ mod p`。
1. `c ← x₀`（CX 到干净标志位 c）。
2. 受控（c）`addConstInPlace p`：x 奇 ⇒ x+p 偶。
3. 改名右移：丢掉已知为零的最低位。
4. 清 c：`c ^= [x ≥ (p+1)/2]`（常数比较器，2n）。引理：x 奇 ⇔ (x+p)/2 ≥ (p+1)/2；x 偶 ⇔ x/2 ≤ (p−1)/2。

资源：n + 2n = 3n Toffoli（Gidney 比较器则 2n）。受控减半（控制 g）：把 g 并进 c 的生成（`c ← g ∧ x₀`，1 个 CCX）并把步 3 的改名换成受控 CSWAP 链（n）——用于求逆第二阶段时本文选择**不**受控的减半（见第 2 节），所以不需要这条。

### 1.8 原地模负 `negInPlace`

x ← (p − x) mod p，x=0 时保持 0（Litinski Fig. 6b）：按位取反（X），`addConstInPlace (p+1)`，x=0 的例外用一个 n 位零检测标志控制；2n Toffoli。点加角落情形只在常数上取负（编译期），本原语只为完整性列出。

## 2. 改 1：求逆第二阶段

### 2.1 现状

`halvingStep L q i = phaseActive ++ halveRound ++ phaseActive`，`halveRound = conditionalHalve ++ conditionalDouble(swap)`：每轮 14n+10 + 22n+18 + 40 = 9,284 Toffoli；512 轮正向 4,753,408，反计算再一遍，共 9,506,816，占每次 `fieldInverse`（14,303,280）的 66%。

### 2.2 新流程

记第一阶段结束（`kaliskiLoop` 512 轮后）的状态为 z（u=1，v=0，r，s=p，k≤512）。

```
inverseLoop' L q :=
  kaliskiLoop L.first 0 L.records          -- 不变：正向 512 轮，记录带
  ++ negativeInit L.arithmetic q L.middle.r L.temp L.out
                                           -- 不变的模块，但目标直接是输出寄存器：
                                           -- out ^= (−r mod q)，r 先约减（r 可能 ≥ q）
  ++ halvingLoop' L.out q 0 512            -- 新：在 out 上原地做 512 轮受 i<k 控制的模减半
  ++ kaliskiUnloop L.first 0 L.records     -- 不变：逆向 512 轮，清记录带，恢复 u/v/r/s/k
```

`halvingLoop'` 一轮：

| 步 | 操作 | Toffoli |
| --- | --- | ---: |
| 1 | `counterActiveXor`：active ^= [i < k]（复用 I3/I4 的比较，k 在 middle 的计数银行里，保持不变） | 20 |
| 2 | 受控（active）原地模减半 out ← out/2 mod q：`c ← active ∧ out₀`（1 CCX）；受控(c) 加 p（n）；**受控(active) 右移**（CSWAP 链 n，因为这一轮可能不活动）；清 c：`c ^= active ∧ [out ≥ (p+1)/2]`（比较 2n + 1 CCX） | 4n+2 |
| 3 | `counterActiveXor` 再做一次清 active | 20 |

每轮 4n+42 = 1,066；512 轮 ≈ 545,800。若把"i<k 受控"改成无条件减半并在前面把 out 乘上 2^(512−k)… 不值得；改 4 的 Gidney 比较器把它降到 3n+42（≈ 404,000）。

**不需要反向第二阶段**：原地减半不产生垃圾，out 就是输出；`kaliskiUnloop` 只依赖 u/v/r/s/k 和记录带，与 out 无关。现有 `inverseLoop` 的 `halvingUnloop` 和第二份 `negativeInit` 整段删除。

### 2.3 接口与陈述

- `inverseLoop_spec` / `inverseLoop_xor_spec` 的**陈述不变**（输入寄存器恢复、work=0、out = kaliskiInverse q a 256），因为 `halveFixed q z.k 512` 的数学定义就是"i<k 时减半"，与 I1 一致。
- 任意输出 O 的 XOR 形式：原地减半作用在 out 上会把 O 也一起减半，所以 **XOR 形式不能再由同一程序直接给出**。两种选择：(a) 公开只保留零输出规格，I5 的 `fieldInverse_xor_spec` 改为"算到干净寄存器再 CX 到目标"的组合（多 n 个 CX，零 Toffoli）；(b) 在 `InverseLoopLayout` 里把 out 拆成内部结果寄存器 + 外部 XOR 目标。推荐 (a)：点加用的是"算到干净寄存器、用完再清"，不需要任意 O。
- 资源：`fieldInverse` 目标 ≈ 2×2,390,528 + 7,704 + 545,800 ≈ **5,334,560**（从 14,303,280 降 63%）。线路：去掉第二阶段的 a/b/temp 三组 257 位和模算术区 1287 → 约 6,468 − 2,058 ≈ 4,400（a/b/temp 中有一组可作 out），以支持集定理为准。

### 2.4 证明义务与文件

- `Arithmetic/HalveInPlace.lean`：1.7 的 Triple（受控版），含 Math 引理 `odd_iff_half_ge`（x<p 奇 ⇔ (x+p)/2 ≥ (p+1)/2）。
- `Arithmetic/HalvingLoop.lean` 重写：循环按改名后的布局递归（仿 `halvingEnd`/`swapCounter` 的模式）；`halvingRun_fixed` 不变。
- `Arithmetic/InverseCompute.lean`：新 `inverseLoop`；`InverseMiddle` 去掉 a/b。
- `InverseLoopResources.lean`、`InverseResources.lean`、README/PROOF_STATUS 资源表、verify.sh 入口同步。
- 验收：`fieldInverse_spec` 与 `fieldInverse_contract` 陈述不变，仅资源数字变化；80 个公开入口公理白名单通过。

## 3. 改 2：模乘

### 3.1 现状

`multiplyLoop` 每位：`doubleXor`（2 次 modAdd）、`maskedAccumulate`、递归、`maskedUnaccumulate`、`doubleXor`，44n+36 Toffoli；每位保存一个 n+1 位倍数寄存器（65,792 线）。

### 3.2 新原语 `mulAddInPlace`

接口：`acc ← (acc + X·Y) mod p`，X < p（n+1 位寄存器或 n 位），Y < 2^n（n 位乘数），acc < p（n+1 位，高位作约减标志）。X、Y 保持。`mulSubInPlace` 同构造，把每位的受控模加换成受控模减，用于清除。

Horner 展开（Proos–Zalka；Roetteler Fig. 5）：从 Y 的最高位到最低位，

```
for i = n−1 downto 0:
  acc ← 2·acc mod p            -- 1.6 dblInPlace，2n
  acc ← acc + Y_i · X mod p    -- 1.5 受控原地模加（控制 Y_i），7n
```

逐位寄存器状态：进入第 i 步前 acc ≡ Σ_{j>i} Y_j X 2^{j−i−1}（mod p），结束后 acc = X·Y mod p（加法形式：若进入时 acc = A，则结束 acc = (A + X·Y) mod p，因为每一步都是模 p 的线性操作：2·(A·2^{…})… 注意 A 会被一路加倍——**因此加法形式要求进入时 acc=0，或者把 A 先保存**）。简单起见公开两条规格：零输入 `{{ acc=0 }} … {{ acc = X·Y mod p }}`，以及"先算到干净寄存器，再 `modAddInPlace` 到目标"的组合形式作为加法接口；清除用 `mulSubInPlace` 或对称地先算到干净寄存器再 `modSubInPlace`。

资源（n=256）：每位 2n + 7n = 9n = 2,304；共 ≈ **589,800** Toffoli（9n²）；测量 = 每位 7 次加法器调用（加倍 2 次、受控模加 5 次）× 255 ≈ 1,785 → 约 457,000。线路：acc(n+1) + X(n) + Y(n) + t(n) + 常数临时 T(n) + 进位链(n) + 标志 ≈ 6n+O(1) ≈ 1,540（加法器进位链可与 t/T 复用则更少），对比现在 70,678。

### 3.3 接口

- 新文件 `Arithmetic/MulInPlace.lean`、`MulInPlaceResources.lean`；旧 `fieldMul`/`modMul` 保留，M3 切换后再删。
- 公开：`fieldMulInPlace_spec (L) (hnd) (hw) (X Y : Nat) (hX : X<p) : {{ L.x=X, L.y=Y, L.acc=0, L.work=0 }} fieldMulInPlace L {{ L.x=X, L.y=Y, L.acc=((X*Y)%p), L.work=0 }}`，以及 `fieldMulSubInPlace_spec` 把 acc 从 (X·Y)%p 清回 0。

### 3.4 证明义务

- 1.1、1.2、1.5、1.6 的 Triple（这是新仓库层，最大工作量）。
- 循环不变量：acc 的模 p 值；加倍与受控加的 Math 引理各一条；改名移位的 `regValue` 引理。
- 资源：每位 9n 的同程序计数，支持集 = 固定布局。

## 4. 改 3：点加组合

### 4.1 目标结构（Häner 2020 Fig. 9 + Litinski 2023 角落标志 + 我们的常数 C）

点寄存器 (finite, x, y)；C=(cx,cy) 经典常量；记 D = x − cx，E = y − cy（模 p）。普通分支（finite ∧ x≠cx）的原地更新，全部用第 1 节原语：

| 步 | 操作 | 寄存器值（普通分支） | 成本 |
| --- | --- | --- | ---: |
| 1 | x ← x − cx（常数模减，原地） | x = D | 5n |
| 2 | y ← y − cy | y = E | 5n |
| 3 | 除数选择：Dsafe ← g ? D : 1（受控复制 n + 常数位，见 M3 设计） | Dsafe ≠ 0 | n |
| 4 | **除法 1**：λ ← E / Dsafe（4.2） | λ = E/D | 1 div |
| 5 | y ← y − λ·x（mulSubInPlace，pebbling：λ·x 不单独存） | y = 0 | 1 mul |
| 6 | t ← λ²（mulAddInPlace 到干净 t） | t = λ² | 1 mul |
| 7 | x ← x − t；x ← x + 3cx … 按 Roetteler Alg.1 第 8–9 行：x ← cx − x₃ 形式 | x = cx − x₃ | 2×5n |
| 8 | t ← t − λ²（mulSubInPlace 清 t） | t = 0 | 1 mul |
| 9 | y ← y + λ·x（mulAddInPlace） | y = y₃ + cy | 1 mul |
| 10 | **除法 2**：λ ← λ − (y)/(x)（用新坐标重算斜率：λ = (y₃+cy)/(cx−x₃)，Roetteler §4.1 等式）并清零 | λ = 0 | 1 div |
| 11 | x ← −x（常数化：x ← cx − x 即 x ← x₃ − cx 取负）；x ← x + cx | x = x₃ | 5n+2n |
| 12 | y ← y − cy | y = y₃ | 5n |
| 13 | 清 Dsafe（同步 3 的逆，用恢复前的 D？——注意此时 D 已被改写） | 见 4.3 | n |

（第 7、11 步的符号安排按 Roetteler Algorithm 1 第 8–17 行逐行核对；实现者应在设计 PR 里给出每一步的精确模 p 等式和 Lean 引理，本文只定结构。）

**除法（4.2）是成本核心**：2 次除法 + 3 次模乘 + 约 9 次原地模加减。

### 4.2 除法 `divide`：pebbling 的求逆

`λ ^= E · Dsafe⁻¹`，清工作区：

```
kaliskiLoop (fwd, 512 轮)                 2,390,528
negativeInit → inv 寄存器；halvingLoop' 原地  7,704 + 545,800   (inv = Dsafe⁻¹)
mulAddInPlace λ ← λ + E·inv              589,800
（λ 此时可用；要清 inv：）
halvingLoop'⁻¹ = 512 轮受控原地模加倍（1.6 的受控版，4n/轮）≈ 545,800；negativeInit 再 XOR 一次清 inv  7,704
kaliskiUnloop (rev)                       2,390,528
```

合计 ≈ **6,477,000** Toffoli。对比现在的"λ = E·fieldInverse(D)，再各算一遍清除" = 2×14,303,280 + 2×2,892,800 = 34,392,160：省 5.3 倍。

（如果第二次除法只是为了清 λ，可以把 mulAddInPlace 换成 mulSubInPlace，同成本。）

### 4.3 角落情形与受控

沿用已审 M3 设计的标志：ex = finite ∧ [x=cx]，ey = finite ∧ [y=−cy]，g = finite ∧ ¬ex，d = ex ∧ ¬ey；对应 Litinski 的 f1/f2/f3（f4 = "C=O" 是编译期分支）。受控版把控制位 b 并入：g' = b∧g，d' = b∧d，o' = b∧¬finite。

- 普通分支的所有原地操作以 g' 为控制（原地模加减受控版 +n，模乘受控版 +n/位；除法内部 Kaliski 轮本来就固定执行，不需要控制，只把除数选择和 λ 的使用受控）。g'=0 时 x、y 完全不动。
- 非普通分支用受控常量 XOR 直接改写 (finite,x,y)：o'：(0,0,0) ⊕ encode(C)；d'：(1,cx,cy) ⊕ (1,cx,cy) ⊕ encode(2C)；ex∧ey∧b：(1,cx,−cy) ⊕ (1,cx,−cy) = 0 并清 finite。零 Toffoli。
- **标志清除是原地版最细的点**：输入已被改写为 R+C（或保持 R），标志不能再从"输入"重算。必须用输出侧等价谓词：
  - o' ⇔ 输出 = C（当 b=1）：用零检测比较输出与常量 C；
  - d' ⇔ 输出 = 2C；
  - ex∧ey∧b ⇔ 输出 = O（finite=0）；
  - g' ⇔ 其余且 b。
  但输出 = C 也可能来自普通分支（R+C = C ⇔ R = O，已被 o' 覆盖）、输出 = 2C 来自普通分支（R+C = 2C ⇔ R = C，已被 d' 覆盖）、输出 = O 来自普通分支不可能（普通分支 x≠cx ⇒ R+C ≠ O）。所以**输出侧谓词与输入侧标志一一对应**，需要 Math 层引理：对合法点 R 与有限 C，(R=O ⇔ R+C=C)、(R=C ⇔ R+C=2C)、(R=−C ⇔ R+C=O)、(x_R≠cx ⇔ R+C ∉ {C, 2C, O})。这四条都是群论事实，从 Mathlib 的群结构直接得到。
  - **除法 2 的除数也可能为零**：除数 cx − x₃ = 0 ⇔ R+C = ±C ⇔ R = O（已由 o' 覆盖）或 R = −2C（**普通分支内**，x_R ≠ cx 但 R+C = −C）。R = −2C 时不能用 Roetteler 的重算等式清 λ。处理：在第 10 步前由当前 x 计算第二个标志 g₂ = g' ∧ [x ≠ cx]（零检测，2n），除法 2 的除数用 g₂ ? x : 1 的安全选择；g₂ = 0 且 g' = 1 时 λ 是**编译期常量**（过 −2C 与 C 的直线斜率 λ* = (cy − y_{−2C})/(cx − x_{−2C})），用受控常量 XOR 清除。g₂ 由 x 计算而 λ 的清除不改 x，所以 g₂ 事后重算即可清零。Math 引理：对合法 R（x_R ≠ cx）与有限 C，x_{R+C} = cx ⇔ R = −2C，且此时 (y_R − cy)/(x_R − cx) = λ*。
  - Dsafe 的清除（4.1 第 13 步）：需要 D = x − cx 的旧值，但 x 已改写。解决：在第 1 步之后、第 3 步把 Dsafe 作为 **λ 计算的临时输入**，并在除法结束（第 4 步末，λ 已得、inv 已清）后立刻清 Dsafe（此时 x 仍 = D 未变），而不是留到最后。重排后第 5 步起才改写 x。

### 4.4 成本（目标，n=256，用改 1、改 2 的原语）

| 组件 | 次数 | 单次 | 小计 |
| --- | ---: | ---: | ---: |
| 除法 | 2 | 6,477,000 | 12,954,000 |
| 模乘（mulAdd/mulSub） | 3 | 589,800 | 1,769,400 |
| 原地模加减（含常数） | ≈ 9 | 1,280–1,800 | ≈ 14,000 |
| 标志、除数选择、受控开销 | — | — | ≈ 10,000 + 受控模乘/加减各 +n |
| **受控原地点加** | | | **≈ 14.8–15.5M** |

相对 91,964,213：约 6 倍。无控制版基本同价（控制只是标志里多一个与）。

### 4.5 证明义务与 PR 切分

1. Math：4.3 的四条群论引理；λ 重算等式；各步模 p 等式（按 Roetteler Alg. 1）。
2. `divide` 的 Triple 与资源（复用 I4 的 `kaliskiLoop_correct` / `kaliskiUnloop`、改 1 的 `halvingLoop'`、改 2 的乘法）。
3. 原地点加本体（普通分支 + 标志 + 输出侧清除）+ 受控版；公开规格：
   `{{ L.control=b, L.point=R, L.work=0 }} controlledPointAdd L C {{ L.control=b, L.point=(if b then R+C else R), L.work=0 }}`。
4. 资源与文档。

## 5. 改 4：Gidney 比较器

### 5.1 现状与影响范围

现有比较都用 `borrowXor`：做一次减法读最高位借位，再做一次减法把差清掉，2n 个 Toffoli、2n 次测量。它出现在：原地模加/模减的标志清除（1.5 第 4 步）、原地模减半的标志清除（1.7 第 4 步）、求逆第二阶段每轮（改 1）、Kaliski 轮的记录段 v<u 比较和两处 i<k 计数比较（I3/I4 的 `counterActiveXor`）。

### 5.2 构造（Gidney 2018 "Halving the cost of quantum addition" 的比较器）

目标：`t ^= [a < b]`，a、b 各 n 位且保持；或 `t ^= [a < K]`（K 经典常数）。

1. 对 b 按位 X 取反（得到 2^n−1−b），把一根干净辅助线 c₀ 用 X 置 1（作为 +1 的进位输入）。
2. 用现有 `fullAdder` 的 AND 步沿 i=0..n−1 计算进位链 c_{i+1} = MAJ(a_i, ¬b_i, c_i)，每位 1 个 CCX 写入干净辅助位；**不写和位**。c_n 是 a + (2^n−1−b) + 1 = a − b + 2^n 的溢出位：c_n = 1 ⇔ a ≥ b。
3. `CX c_n → t`，再 `X t`：得到 t ^= [a < b]。
4. 用现有 `eraseCarry` 沿 i=n..1 擦除进位链（`measureX c_i`，测得 1 时施加 CZ 修正，与加法器相同）。
5. 恢复 b（再按位 X）和 c₀（X）。

常数版本：K 用 X 装进临时寄存器再按上面做，或直接把 ¬K 折进 MAJ 步的门列（常数位为 0/1 时 MAJ 退化为 AND/OR，各 1 个 CCX 或更少）；门数不超过 n。

### 5.3 接口、资源与证明义务

- 接口：`{{ a=A, b=B, t=T, chain=0, c₀=false }} compareLt a b t {{ a=A, b=B, t=(T ^^ decide (A<B)), chain=0, c₀=false }}`；常数版 `compareLtConst a K t`。相位对所有测量记录恢复。
- 资源：n 个 Toffoli、n 次测量、线路 2n + n（进位链辅助）+ 2；`borrowXor` 是 2n / 2n。
- 证明义务：进位链的 Triple 与 `rippleAdder_spec` 的进位部分同构（MAJ 链、不写和位）；`eraseCarry` 的擦除/相位引理可直接复用；Math 引理 `A + (2^n−1−B) + 1 ≥ 2^n ⇔ A ≥ B`。
- 替换：`Borrow.lean` 的 `borrowXor`/`constantBorrowXor`/`counterActiveXor` 改为调用比较器，其公开 Triple 陈述不变（`counterActiveXor_spec` 等），所以 I3/I4/I5 和 M3 的上层证明不受影响，只有资源数变化。

### 5.4 各处节省（n=256，w=257）

| 调用点 | 现在 | 改后 | 每次求逆 / 每次模乘 / 每次点加的变化 |
| --- | ---: | ---: | --- |
| 原地模加（1.5 第 4 步） | 5n | 4n | 模乘每位 −n → 模乘 ≈ 590k → ≈ 524k |
| 原地模减半（1.7 第 4 步） | 3n | 2n | 改 1 第二阶段每轮 4n+42 → 3n+42 → 每次求逆 −131k |
| Kaliski 记录段 v<u | 2w | w | 每轮 −257 → 每次求逆（正逆两遍）−263k |
| 两处 i<k 计数比较 | 20 + 20 | 10 + 10 | 每次求逆 −20k |
| 合计 | | | 每次求逆 ≈ 5.33M → ≈ 4.9M；模乘 ≈ 0.59M → ≈ 0.52M；改 3 后的受控原地点加 ≈ 15M → ≈ 13.8M |

## 6. 改 5：Kaliski 轮压缩

### 6.1 现状

`kaliskiRound` 每轮 18w+43（w=257 时 4,669），分解：记录段 2w+5（比较 = 两次减法 2w，编码 5）；算术体 14w−2（两次数据对交换 4w、两次 masked 加减各 4w、两次受控移位 2w−2）；计数移动 20；零检测 2w（AND 链正向算、正向清）；活动比较 20。

### 6.2 前提：改 4 的 Gidney 比较器

轮内两处比较（记录段 v<u、活动比较 i<k）直接使用第 5 节的比较器；本节其余改动独立于它。

### 6.3 轮内改动

| 段 | 现在 | 改后 | 省 |
| --- | ---: | ---: | ---: |
| 记录段比较 v<u | 2w（减、读借位、减） | w（Gidney 比较器） | w |
| 零检测 v=0（done 更新） | 2w（AND 链正向算、正向清） | w（AND 链算、MBU 擦） | w |
| 两次 masked 加减 | 各 4w（复制、加、反向减、复制） | 各 3w（t ← c·v，原地加/减，清 t） | 2w |
| 两次数据对交换、两次受控移位 | 4w + (2w−2) | 不变（Litinski 也计 4 次受控 SWAP 和 1 次受控移位） | 0 |
| 计数移动、活动比较 | 20 + 20 | 20 + 10（比较器减半） | 10 |

每轮 ≈ 14w+22 ≈ 3,620（w=257），相比 4,669 省 22%；Litinski 的 13n=3,328 是同一结构再用 Gidney 受控加法器（2n）得到的，可作后续微调。

### 6.4 影响与证明义务

- `kaliskiRound_spec` / `kaliskiUnround_spec` 陈述不变，只换内部程序与资源数：kaliskiLoop 512 轮 ≈ 1.85M（现 2.39M）；配合改 1（并用比较器）每次求逆 ≈ 2×1.85M + 0.40M + 7.7k ≈ **4.1M**。
- 需要：原地受控减法/加法（改 2 的 1.5 受控版）、Gidney 比较器、AND 链的 MBU 擦除版零检测（`zeroControlled` 的 MBU 变体）。I3 的 `RoundBody`/`RecordRound`/`ZeroControl` 各替换一处，`KaliskiRoundProof` 的组合证明按接口不变复用。

## 7. 改 6：Montgomery 窗口模乘

### 7.1 构造（Häner 2020 §4.1；Litinski 2023 2.25n²+9n）

Montgomery 表示：x̃ = x·R mod p，R = 2^256。MontMul(x̃, ỹ) = x̃·ỹ·R⁻¹ mod p = (xy)~。按乘数 x 的 4 位窗口 x^(i)（i = 0..63）迭代，累加器 acc 为 n+4+1 位：

1. acc ← acc + x^(i)·ỹ：4 次受控加法（控制 x^(i) 的各位，加数分别为 ỹ、2ỹ、4ỹ、8ỹ 的改名视图），每次原地加 n+4 位。
2. 复制 acc 的低 4 位到 m_i（4 个 CX；m_i 是本窗口的垃圾，64 个窗口共 256 位）。
3. 查表 T[m_i] = t·p，其中 t ≡ −m_i·p⁻¹ (mod 16)：16 项、n+4 位常数表；以 m_i 为地址做单一迭代查表（AND 链 ≈ 15 个 CCX + 每项常数 1 位处 CX），把 T[m_i] 加到 acc（原地加 n+4），此时 acc 低 4 位为 0；改名右移 4 位。
4. 反查表：重跑同一查表（再 ≈ 15 个 CCX）把临时表值清零；不用 MBU 反查表就不需要 CCZ（见改 7）。
5. 64 个窗口后：acc < 2p，做一次条件减 p（常数减 + 条件加回 + 比较器 ≈ 3n）。

每窗口：4 次受控加（用 1.2 的方法各 n+4 Toffoli，或 Gidney 受控加法器 2n）+ 查表 2×15 + 加 n+4 ≈ 5n+50（受控加按 n 计）；64 窗口 ≈ 320n + 3,200 ≈ 85k；加末尾约减 ≈ 3n。Litinski 按受控加 2n 计得 2.25n²+9n ≈ 150k；我们用 1.2 的"受控复制到临时寄存器再无控制加"则 ≈ 5n²/4 + … ≈ 85k，两者都远低于 Horner 的 590k。**目标写 ≤ 150k**，以实际证明为准。

垃圾：m_i 共 256 位，随乘法的反计算（反序重跑：条件加 p、每窗口反查表、减法）一起清除；因此"算一次、清一次"的成本各 ≈ 150k，与改 2 同用法。

### 7.2 两种接入方式

- **6a 标准形式，不改其他模块**：xy mod p = MontMul(MontMul(x, y), R² mod p)（第二次乘常数 R²；常数乘数可用经典 4 位窗口，不需要受控加：每窗口 1 次查表 + 1 次加 ≈ n+30，共 ≈ 70k）。每个乘积 ≈ 150k + 70k ≈ 220k，目标写 ≤ 300k。点加中三次乘积各算一次清一次：≈ 1.3M（改 2 后 3.5M）。
- **6b 全 Montgomery 表示**：点加的输入坐标、常量 C、逆元都用 x̃；求逆输出 Kaliski 的几乎逆 x⁻¹2^k 时改为校正到 x⁻¹R（第二阶段做 2n−k 次加倍而不是 k 次减半，成本同量级）；每个乘积 ≈ 150k。代价是所有公开规格里的坐标改成 Montgomery 表示，或在点加入口/出口各做一次常数乘转换（≈ 70k × 4 坐标）。

建议先做 6a，6b 作为可选。

### 7.3 证明义务

- 查表原语 `lookup addr table target`：对 2^k 项常数表，Triple 为 target ^= table[addr]，AND 链清零，相位恢复；资源 2^k−1 Toffoli（k=4：15）。
- Montgomery 约减引理：acc + T[m]·… ≡ 0 (mod 16)，右移后值 = (acc + t·p)/16，与 x̃ỹR⁻¹ 的循环不变量（Math 层，Mathlib 有 Montgomery 相关素材可用，否则直接按整数等式证）。
- 末尾范围引理 acc < 2p。
- 6a 的常数 R² mod p 与 MontMul(MontMul(x,y),R²) = xy mod p（Math 层）。

## 8. 改 7：CCZ 修正（条件项）

只有当改 6 选择用测量反计算清除查表（Berry 等 2019：测量目标寄存器，再用一个 2^(k/2) 项的相位查表修正）时才需要：修正是对地址位的多控 Z，k=4 时是 CCZ 级别。届时在 `Framework/Syntax.lean` 的 `Correction` 增加 `CCZ a b c`，语义 `phase ^= s a ∧ s b ∧ s c`，`Cost` 把它计入非 Clifford 数（与论文口径一致，单独列出）。相应地 `measureX` 的修正列表可含 CCZ。证明义务：`run` 对新修正的相位规则，`Triple.seq/frame` 不变。

若改 6 用"重跑查表"清除（7.1 第 4 步），则不需要改 7；k=4 时差别仅每窗口 ≈ 15 个 Toffoli（每次乘 ≈ 1k），本文默认不做改 7。

## 9. 阶段目标总表

| 阶段 | 受控原地点加 Toffoli（目标） | 线路（目标） | 说明 |
| --- | ---: | ---: | --- |
| 现设计（M3 基线） | 91,964,213 | 74,024 | 已审，正在实现 |
| + 改 1（第二阶段原地减半） | ≈ 56M | ≈ 72k | 4 次求逆各省 ≈ 9.0M |
| + 改 2（Horner 模乘） | ≈ 28M | ≈ 8k | 12 次模乘各省 ≈ 2.3M；倍数链消失，共享区由求逆工作区（≈3.6k）主导 |
| + 改 3（除法中心原地点加） | ≈ 15M | ≈ 5k | 2 除法 + 3 乘；原地更新不再有独立输出点 |
| + 改 4（Gidney 比较器） | ≈ 13.8M | ≈ 5k | 每次求逆 ≈ 4.9M，模乘 ≈ 0.52M |
| + 改 5（Kaliski 轮压缩） | ≈ 13M | ≈ 5k | 每次求逆 ≈ 4.1M |
| + 改 6a（Montgomery，标准形式） | ≈ 11M | ≈ 5k | 每个乘积 ≤ 300k |
| + 改 6b（全 Montgomery 表示，可选） | ≈ 10M | ≈ 5k | 每个乘积 ≈ 150k，坐标表示改变 |
| 改 7（CCZ 修正，条件项） | 影响 < 0.1% | +0 | 仅当采用 MBU 反查表 |
| 参照：Litinski 2023 精确点加 | ≈ 8M | ≈ 3,000 | 公开构造，Gidney 受控加法器 + 13n 轮 |
| 参照：Babbush 等 2026（保密电路，近似正确） | 2.1–2.7M | 1,175–1,425 | 不承诺复现 |

改 1–6 之后剩余成本的约四分之三在两次除法（各含正逆两遍 Kaliski 循环）；再压需要换求逆算法，属于新的研究项，不在本计划内。

### 建议顺序与 PR 切分

1. 改 1（1 个 PR：HalveInPlace + 新 halving 循环 + 资源/文档）。
2. 改 2（2 个 PR：原地加法器/常数加/原地模加与加倍；Horner 循环与资源）。
3. 改 3（3 个 PR：Math 引理组；divide；原地点加与受控版）。
4. 改 4（1 个 PR：比较器原语 + 替换 Borrow.lean 调用点 + 资源数更新；公开陈述不变）。
5. 改 5（2 个 PR：MBU 零检测 + 原地受控加减接入 I3 统一体；轮内替换与资源）。
6. 改 6a（2 个 PR：查表原语 + Montgomery 约减数学；窗口乘法与资源），6b 视需要。
7. 改 7 仅在改 6 采用 MBU 反查表时立项。

每项先交"构造 + 逐步寄存器表 + 门数推导 + 证明义务"的设计 PR 描述，确认后再写证明；README 的资源表随每次合并更新。

## 10. 验收标准（每一项 PR）

- 公开定理陈述可读，前提只有 Nodup、位宽、数值范围；无坐标前提；输入域不缩小。
- 正确性、三项资源、支持集指向同一字面程序；资源表在 README 与 PROOF_STATUS 同步替换，旧数字保留在 PROVENANCE 的历史里。
- `lake --wfail build` 与公开入口公理白名单通过；无 sorry / native_decide / 新 axiom。
- 每项先交"构造 + 逐步寄存器表 + 门数推导 + 证明义务"的设计 PR 描述，确认后再写证明（与 M3 流程一致）。
