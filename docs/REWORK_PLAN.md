# ECDSAAdd 算术原语与点加重做设计（给实现者）

作者：Dirac。状态：**改 1 已实现，其余为计划**；按已确认的并行分工，Deutsch 负责求逆线（改 1/4/5），Lamport 负责模乘与点加（改 2/3），改 6–7 待安排。本文件为计划唯一来源；改 1 的实际门列与资源已随实现同步。所有标注"目标"的数字都是按本文给出的门列推导的预期值，不是已证定理；实现时以 Lean 资源定理为准，并在 README 资源表里替换。

## 0. 范围、前提与读法

**不变的约束**（与 M1–M3 相同）：
- 语义仍是 monomial（phase + basis）层；指令集 X / CX / CCX / measureX（只带即时 Z/CZ 修正）；资源 = 同一门列的 `toffoliCount` / `measurementCount` / `qubitCount`（实际支持集）。
- 输入域不缩小：求逆对全体 0<X<p；点加对全体合法点（含 O、R=±C）；公开定理不加坐标前提。
- 对任意初始相位、任意测量记录证明；全部 Lean，无测试；公开定理用 `{{ }}` 语法糖直接写寄存器断言；一个全局 `Nodup`。

**重做项目**（改 1–3 为核心，改 4–7 为已纳入计划的后续项，按"省得多、改得少"排序）：

| 编号 | 项目 | 优化前基线（已证） | 目标或实现值 | 改动范围 |
| --- | --- | ---: | ---: | --- |
| 改 1（已实现） | 求逆第二阶段 → 内部寄存器上原地模减半 + 逆序原地模加倍，XOR 接口不变 | 每次求逆 9,506,816 | 830,464（改 4 前；当前 809,984） | 只动 I4 的 halving 循环；`fieldInverse_spec` / `fieldInverse_xor_spec` 陈述不变 |
| 改 2（已实现，实证见§12） | 模乘 → Horner 零输出内核 + 反序清理 + 适配器，不存倍数链 | 每个 XOR 乘积 2,892,800 Toffoli，70,678 线 | mulInto 523,776、mulClear 655,104，XOR 适配器 1,178,880 Toffoli / 1,799 线（已证） | 新原语 `mulInto`/`mulClear`，`fieldMul_spec` 陈述不变；调用次数不变 |
| 改 3 | 点加 → 除法中心 + 原地更新 + 角落标志 | 改5后受控原地 52,914,997（已证） | 14,998,618 / 6,218线（§16，已证） | Deutsch；输出侧标志、λ* 与保留历史的除法 |
| 改 4 | 首批接入计数比较器（§13，已实现） | 十位比较 20 | 10 | 每次求逆 −30,720 Toffoli/测量；记录段见 §14（已实现）；模算术已用比较器的收益不重复扣减 |
| 改 5 | Kaliski 轮压缩 | 改4后每轮4,402（17w+33） | 每轮3,629（14w+31，§15已实现） | I3 统一体内的零检测换 MBU 擦除、masked 加减换原地受控版；`kaliskiRound_spec` 陈述不变 |
| 改 6 | Montgomery 4 位窗口模乘（研究预算） | 改 2 后每个乘积算+清 ≈ 1,376,000 | 6a 标准形式 ≤ 600,000；6b 全 Montgomery 表示 ≈ 300,000–430,000 | 新增查表原语与 Montgomery 形式；6a 不动其他模块，6b 动所有坐标表示 |
| 改 7 | 方案1单迭代查表已实现；方案2测量清理可选（§18） | 原48/48 | 当前14/14 | 已证点加11,669,498/4,525,818/6,218；方案2未实现 |
| 改 8 | 测量清掩码已集成（§20.7） | 改7阶段11,669,498/4,525,818 | 当前11,001,338/5,193,978 | 已证6,218线；Toffoli少668,160，测量多668,160 |
| 改 11（设计） | 十位K查表+一段Montgomery缩放（§22） | 第二阶段809,984/545,792每次 | 308,744/308,744每次（待证明） | 公开fieldInverse规格不变；内部历史/模数前提调整，点加净减1,002,480/474,096 |

七项做完，受控原地点加目标 ≈ 11–12M，与 Litinski 2023 的精确点加（≈ 8M）同量级；再往下受限于 Kaliski 求逆的 2n 轮 × 正逆两遍和分开计的乘积清理，需要不同的求逆算法或融合乘加模块（本文不覆盖）。Babbush 等 2026 的 2.1–2.7M 电路保密，本文不承诺复现。

**文献锚点**（可公开核对的构造与数字）：
- Roetteler–Naehrig–Svore–Lauter 2017（arXiv:1706.06752）：Fig. 3 原地模加（加、减 p、条件加回、比较清标志）；Fig. 4 原地模加倍（标志由结果最低位清除）；Fig. 5 Proos–Zalka 加倍–累加模乘；§3.4 Kaliski 可逆求逆（2n 轮 + 计数器）；Algorithm 1 受控原地点加（4 次求逆、4 次乘、2 次平方，因为每个 out-of-place 结果要再算一次清除）。
- Häner–Jaques–Naehrig–Roetteler–Soeken 2020（ePrint 2020/077）：Alg. 7b 用交换归一化四分支的 Kaliski 轮（我们 I3 的统一体就是它）；Fig. 8b 除法 = 正向求逆（留垃圾）→ 乘 → 复制 → 逆向乘 → 逆向求逆（pebbling，求逆只跑两遍而不是四遍）；Fig. 9 原地点加 = **2 次除法、2 次乘、1 次平方、9 次加减**；Fig. 5 "平方后立刻减"的 pebbling。
- Litinski 2023（arXiv:2306.08585）§1：原地模加 4n、受控 5n；模减 6n；模加倍同模加；Montgomery 4 位窗口模乘 2.25n²+9n（n=256：≈150k）；Kaliski 求逆每轮 13n、共 26n²+2n（n=256：≈1.7M，正向一遍、留 2n 位垃圾）；点加用 f1–f4 四个标志处理 a=x、b=−y、P1=O、P2=O 全部角落情形；每个 ECPointAdd 约 8M Toffoli。
- Babbush 等 2026（PRX Quantum 7, 031001）附录 A2–A5：窗口化原地点加 ≤2.1M/2.7M 非 Clifford（CCX+CCZ），平均执行计数，只要求 ≥99% 输入正确；kickmix = 经典可逆门 + X 基测量 + 对角相位修正。

## 1. 新基础原语（三项重做共用）

现有仓库的加法器 `add` / `sub` 都是 out-of-place XOR 形式（`out ^= x+y`），这正是模乘 44n² 和求逆第二阶段 9.3k/轮的根源：每个结果都"算到新寄存器、再算一遍清旧值"。三项重做都建立在**原地**原语上。以下每个原语给：接口、门列、正确性要点、资源（n=256）、证明义务。

### 1.1 原地加法器 `addInPlace`

接口：`b ← (b + a) mod 2^n`，可选进位输出位 `cout ^= carry`。a 保持。

门列（Gidney 2018 "Halving the cost of quantum addition"）。要点：**先擦进位辅助位，再写和位**，这样每一步擦除时 a_i、b_i、c_i 仍是原值，现有 `eraseCarry` 的前提（辅助位等于当前 a/b/cin 的 carryBit）成立；若先把 b_i 改写成和位再擦除，前提失效，修正会依赖被覆盖的数据。

1. 正向 i = 0..n−2：用现有 `fullAdder` 的 AND 步把内部进位 c_{i+1} = MAJ(a_i, b_i, c_i) 写进干净辅助位（共 n−1 个 CCX）。
2. 最高位（i = n−1）：需要 cout 时用不带辅助位的 MAJ 门列 `CX a b; CX a c; CCX c b cout; CX a cout; CX a c; CX a b` 把进位**异或**进 cout（MAJ(a,b,c) = a ⊕ ((a⊕c)∧(a⊕b))，与现有 `fullAdder` 的门序一致）（1 个 CCX；cout 是任意初值 C 的公开输出，不测量、不擦除），然后 `CX a_{n−1} b_{n−1}; CX c_{n−1} b_{n−1}` 写最高和位。
3. 反向 i = n−2..0：先 `eraseCarry` 擦掉内部进位 c_{i+1}（`measureX`，测得 1 时的 CZ 修正，此时 a_i、b_i、c_i 未变），再用 `CX a_i b_i; CX c_i b_i` 把和位原地写回 b_i。c₀ 是进位输入线，用完后保持。

资源：n−1 个 Toffoli（带 cout 时 n）；n−1 次测量（只擦内部进位）；线路 2n + (n−1) 辅助 + c₀ (+ cout)。

证明义务：这是**新的**原地引理 `fullAdderInPlace`，不能把 `out := b` 代入现有 `fullAdder` 的五线 Nodup；需要新的四线互异条件 (a_i, b_i, c_i, c_{i+1}) 和"擦除在写和位之前"的顺序引理。Triple：`{{ a=A, b=B, chain=0, c₀=false, cout=C }} addInPlace {{ a=A, b=((A+B) % 2^n), chain=0, c₀=false, cout=(C ^^ decide (A+B ≥ 2^n)) }}`，相位对所有测量记录恢复。`eraseCarry` 本身可复用，只是应用位置不同。

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

接口：a < p，b < p，`b ← (a + b) mod p`，a 保持。b 用 n+1 位（高位 h 初始 0）。

| 步 | 操作 | 值 |
| --- | --- | --- |
| 1 | `addInPlace a → b`（进位进 h） | b = a+b ∈ [0, 2p) |
| 2 | `subConstInPlace p` 于 (b,h)（n+1 位） | 若 a+b ≥ p：b = a+b−p，h = 0；否则 h = 1（回绕） |
| 3 | 受控（控制 h）`addConstInPlace p` 于低 n 位 | h=1 的分支恢复 b = a+b；h 不变 |
| 4 | `h ^= [b ≥ a]`（比较器，与**实际加数**比较） | 分支 1：b = a+b−p < a ⇒ [b ≥ a]=0，h 保持 0；分支 2：b = a+b ≥ a ⇒ 翻回 0 |

正确性引理（Math）：a,b<p ⇒ (a+b ≥ p ⇔ a+b−p < a) 且 (a+b < p ⇒ a+b ≥ a)。

资源：n + n + n + 2n = 5n Toffoli（改 4 的比较器则 4n，与 Litinski 一致）。

**受控版**（控制 c）：先 `t ← c·a`（n 个 CCX 到干净寄存器 t），以 t 为加数执行第 1–4 步——第 4 步必须比较 `[b ≥ t]` 而不是 `[b ≥ a]`：c=false 时 t=0，第 2 步一定回绕（h=1），第 3 步加回后 b 不变，`[b ≥ 0]=true` 才能把 h 清零；用 `[b ≥ a]` 会在 b<a 时留下 h=1。比较完成后再用 n 个 CCX 清 t。共 7n（比较器 n 时 6n）。

**原地模减** `b ← (b − a) mod p`（Litinski Fig. 6c）：先对 a 做不带 x=0 检查的取负（按位 X 取反 + `addConstInPlace (p+1)`，n），得到 a' = p − a，a=0 时 a' = p；再 `modAddInPlace a' → b`，最后把 a 取负还原（n）。因为 a' 可能等于 p，模加引理的范围前提要放宽为 a' ≤ p（a'=p 时：第 1 步 b+p ∈ [p,2p)，第 2 步不回绕 h=0，第 4 步 [b ≥ p]=false，h 保持 0，结果 b 正确）——这是模加模块的一条扩展引理，不能直接引用 a<p 的原接口。共 7n（比较器 n 时 6n）。受控版只控制中间的模加：取负 a（n）+ 受控模加（7n）+ 还原（n）= **9n**（比较器 n 时 8n）。

### 1.6 原地模加倍 `dblInPlace`

x < p，p 奇。`x ← 2x mod p`。
1. 改名左移得 (n+1) 位值 2x，再借一根零线 h 作第 n+2 位。
2. `subConstInPlace p`（n+2 位）：2x ≥ p 时 h=0、值 = 2x−p（奇数）；否则 h=1（回绕）、低位 = 2x（偶数）。
3. 受控（h）`addConstInPlace p` 于低 n+1 位：回绕分支恢复 2x。
4. 清 h：`h ^= ¬x₀`（结果最低位取反；新值偶 ⇔ 未约减 ⇔ h=1）。一个 X–CX–X。

引理：2x 偶、p 奇 ⇒ (2x−p) 奇。资源：2n Toffoli（两次常数加减），零比较器。与 Roetteler Fig. 4 / Litinski "modular doubling" 相同。

### 1.7 原地模减半 `halfInPlace` / 受控版

x < p，p 奇。`x ← x·2⁻¹ mod p`。
1. `c ← x₀`（CX 到干净标志位 c）。
2. 受控（c）`addConstInPlace p`：x 奇 ⇒ x+p 偶。
3. 改名右移：丢掉已知为零的最低位。
4. 清 c：`c ^= [x ≥ (p+1)/2]`（常数比较器，2n；改 4 后 n）。引理：x 奇 ⇔ (x+p)/2 ≥ (p+1)/2；x 偶 ⇔ x/2 ≤ (p−1)/2。

资源：n + 2n = 3n Toffoli（改 4 后 2n）。

**改 1 已实现的受控版**（控制 g，内部字宽 w=n+1）：`c ^= g ∧ x₀`；`maskedAddConst c` 把 c·p 加入 x；受控 CSWAP 链右移；`CX g c` 后受控比较 `x < (p+1)/2` 清 c。恢复使用独立前向加倍门列：先受控比较再 `CX g c`，得到 `c = g ∧ [x ≥ (p+1)/2]`；受控左移；`maskedSubConst c` 减去 c·p；最后 `c ^= g ∧ x₀`。g=false 时两方向都保持 x 且 c=0。两者各为 `3w` Toffoli、`2w−1` 次测量；比较器已用基础层的 Gidney 版（w+1 Toffoli），无需等改 4。临时常数字与进位链均清零；减法不产生额外借位输出。

### 1.8 原地模负 `negInPlace`

x ← (p − x) mod p，x=0 时保持 0（Litinski Fig. 6b）：按位取反（X），`addConstInPlace (p+1)`，x=0 的例外用一个 n 位零检测标志控制；2n Toffoli。点加角落情形只在常数上取负（编译期），本原语只为完整性列出。

## 2. 改 1：求逆第二阶段

### 2.1 历史基线（改 1 前）

`halvingStep L q i = phaseActive ++ halveRound ++ phaseActive`，`halveRound = conditionalHalve ++ conditionalDouble(swap)`：每轮 14n+10 + 22n+18 + 40 = 9,284 Toffoli；512 轮正向 4,753,408，反计算再一遍，共 9,506,816，占每次 `fieldInverse`（14,303,280）的 66%。

### 2.2 新流程（保持 XOR 接口）

现有 M3 的清理依赖 `fieldInverse` 的 XOR 幂等性：同一输入上再跑一遍，输出寄存器回到零（`InverseLoopSpec.lean` 的 `inverseLoop_xor_spec` 对任意 O 成立）。因此第二阶段**不能**直接在输出寄存器上原地做：那会改变 O、没有规范范围保证，且上层无法清零。做法是在内部干净寄存器 inv 上原地减半，CX 到目标，再用受控原地模加倍把 inv 恢复并清零：

```
inverseLoop' L q :=
  kaliskiLoop L.first 0 L.records                       -- 不变：正向 512 轮，记录带
  ++ negativeInit L.arithmetic q L.middle.r L.temp inv  -- inv ^= (−r mod q)，r 先约减（r 可能 ≥ q）
  ++ halvingLoop' inv q 0 512                           -- 新：inv 上 512 轮受 i<k 控制的原地模减半（1.7 受控版）
  ++ copyRegister none inv L.out                        -- out ^= inv：外部 XOR 语义由此保证
  ++ doublingLoop' inv q 0 512                          -- 新：逆序 512 轮受 i<k 控制的原地模加倍，inv 回到 (−r mod q)
  ++ negativeInit L.arithmetic q L.middle.r L.temp inv  -- inv 清零
  ++ kaliskiUnloop L.first 0 L.records                  -- 不变：逆向 512 轮，清记录带
```

已实现的每轮：`counterActiveXor`（10）+ 受控原地减半或加倍（3w）+ `counterActiveXor`（10）= 3w+20。w=257 时两方向均为 791 Toffoli、533 次测量；512 轮单向 404,992/272,896，第二阶段总计 809,984/545,792。与历史基线相同，仍执行正反两遍；改 4 首批已接入活动比较器，记录段见 §14（已实现）。

### 2.3 接口与陈述

- `inverseLoop_spec`、`inverseLoop_xor_spec`、`fieldInverse_spec`、`fieldInverse_xor_spec`、`fieldInverse_contract` 的正确性陈述保持不变（`inverseLoop_*` 去掉已删除 b 的长度前提，`fieldInverse_contract` 更新资源常数）：`halveFixed q z.k 512` 的数学定义就是"i<k 时减半"，与 I1 一致；任意 O 的 XOR 语义由 inv + CX 保证，M3 的"同一模块再跑一遍清零"照常成立。加倍循环是减半循环的逆（`HalvingBijection` 的 double∘halve = id），要证 `doublingLoop'` 把 inv 恢复到减半前的值。
- 已证资源：`fieldInverse` = 2×2,253,824 + 2×7,704 + 2×404,992 = **5,333,040** Toffoli，**1,904,688** 次测量。
- 线路：只删除 b 的 257 根；a、temp 和 ModLayout 仍供 negativeInit 使用，减半所需常数字、进位链与标志借自其中，不新增线路。求逆工作池前缀 5,956 → **5,699**，`fieldInverse` 实际线路 6,468 → **6,211**。模乘仍决定共享池大小，所以**改 2 之前点加总线路保持 74,024**。

### 2.4 证明义务与文件

- `Arithmetic/HalveInPlace.lean`：1.7 的 Triple（受控版），含 Math 引理 `odd_iff_half_ge`（x<p 奇 ⇔ (x+p)/2 ≥ (p+1)/2）。
- `Arithmetic/HalvingLoop.lean` 重写：受控减半循环与逆序受控加倍循环，固定布局递归，`halvingValue_eq` 连接 `halveFixed`，并证明加倍循环是其逆。
- `Arithmetic/InverseCompute.lean`：新 `inverseLoop`；`InverseMiddle` 只保留内部寄存器 inv。
- `InverseLoopResources.lean`、`InverseResources.lean`、README/PROOF_STATUS 资源表、verify.sh 入口同步。
- 验收：`fieldInverse_spec`、`fieldInverse_xor_spec` 与 `fieldInverse_contract` 陈述不变，仅资源数字变化；140 个公开入口公理白名单通过。

## 3. 改 2：模乘

### 3.1 现状

`multiplyLoop` 每位：`doubleXor`（2 次 modAdd）、`maskedAccumulate`、递归、`maskedUnaccumulate`、`doubleXor`，44n+36 Toffoli；每位保存一个 n+1 位倍数寄存器（65,792 线）。

### 3.2 新原语：零输出内核 `mulInto` 与其清理 `mulClear`

Horner 循环（Proos–Zalka；Roetteler Fig. 5）从 Y 的最高位到最低位：

```
for i = n−1 downto 0:
  acc ← 2·acc mod p            -- 1.6 dblInPlace，2n
  acc ← acc + Y_i · X mod p    -- 1.5 受控原地模加（控制 Y_i），7n
```

对一般初值 A 它算出 `2^n·A + X·Y (mod p)`，**不是** `A + X·Y`。因此内核只给零输出接口：

- `mulInto`：`{{ x=X, y=Y, acc=0, work=0 }} mulInto {{ x=X, y=Y, acc=((X*Y)%p), work=0 }}`，X<p，Y<2^n。
- `mulClear`：把 acc 从 `(X*Y)%p` 清回 0。把每步换成减法并不是逆（那样得到 `2^n·A − X·Y`）；正确的清理是按反序撤销每一步：

```
for i = 0 to n−1:
  acc ← acc − Y_i · X mod p    -- 受控原地模减（1.5：取负、受控模加、还原），9n
  acc ← acc / 2 mod p          -- 1.7 halfInPlace（无控制），3n
```

循环不变量：进入第 i 步前 acc = Σ_{j≥i} Y_j X 2^{j−i} (mod p)。第一步减去 Y_i X 后 acc 为该和的 2 倍，减半后回到 i+1 的形式，最终为 0。

资源（n=256）：`mulInto` 每位 2n + 7n = 9n → **589,824**；`mulClear` 每位 9n + 3n = 12n → **786,432**（改 4 后各 8n / 10n：受控模减与减半各含一个比较器，各省 n）。线路：acc(n+1) + X(n) + Y(n) + t(n) + 常数临时字 T(n) + 进位链(n) + 标志 ≈ 6n+O(1) ≈ 1,540。

### 3.3 任意目标的接口（适配器）

上层需要的三种用法都由内核加干净寄存器 T 组成，成本各自列明：

| 用法 | 门列 | Toffoli |
| --- | --- | ---: |
| XOR 形式 `out ^= X·Y`（现有 `fieldMul_spec` 的陈述） | `mulInto T; copyRegister none T out; mulClear T` | 589,824 + 0 + 786,432 = 1,376,256 |
| 加到寄存器 `acc ← acc + X·Y` | `mulInto T; modAddInPlace T → acc; mulClear T` | 1,376,256 + 5n = 1,377,536 |
| 从寄存器减去 `acc ← acc − X·Y` | `mulInto T; modSubInPlace T → acc; mulClear T` | 1,376,256 + 7n = 1,378,048 |

现有 `fieldMul_spec` 的陈述保留（由 XOR 适配器证明），旧 `MulLayout` 实现在切换后删除。**适配器清的是内部 T，不是调用方的 out**：保持现有 M3 组合时（candidateCompute 写出 slope/product 等，candidateClear 再调一次 XOR 把它们清除），仍是 12 次 fieldMul XOR 调用和 4 次 fieldInverse 调用，只是每次 2,892,800 → 1,376,256；调用次数要到改 3 改写上层组合才会减少。

### 3.4 证明义务

- 1.1、1.2、1.5（含受控版和 a' ≤ p 的扩展引理）、1.6、1.7 的 Triple。
- `mulInto` / `mulClear` 的循环不变量（Math 层各一条）、改名移位的 `regValue` 引理。
- 三个适配器的 Triple 与资源；`fieldMul_spec` 陈述不变、`fieldMul_resources` 换数字。

## 4. 改 3：点加组合（早期方案，已由 §16 细化）

本节保留演化背景；门列、退化角落、受控方式与资源以 [§16](#16-改-3-实施设计除法中心的受控原地点加已实现) 为准。这里的 18.5M/≈5k 及旧求逆数不是当前设计目标。

### 4.1 目标结构（Roetteler 2017 Algorithm 1 的原地更新 + Litinski 2023 的角落标志 + 我们的常数 C）

点寄存器 (finite, x, y)；C=(cx,cy) 经典常量。普通分支（finite ∧ x≠cx）按 Roetteler Alg. 1 逐行原地更新，乘积全部用 3.3 的加/减适配器（每个乘积"算一次、清一次"）：

| 步 | 操作 | 寄存器值（普通分支） | 成本 |
| --- | --- | --- | ---: |
| 1 | x ← x − cx | x = D | 5n |
| 2 | y ← y − cy | y = E | 5n |
| 3 | Dsafe ← g ? D : 1（受控复制，见已审 M3 设计） | | n |
| 4 | **除法 1**（4.2）：λ ← E / Dsafe，写入干净 λ，之后 inv 已清 | λ = E/D | 1 div（内含 1 个完整乘积适配器） |
| 5 | 清 Dsafe（此时 x 仍 = D，同一受控复制再跑一遍） | | n |
| 6 | y ← y − λ·x（减适配器） | y = 0 | 1 乘积 |
| 7 | t ← λ·λ（`mulInto t`，只算，用独立乘数副本） | t = λ² | 1 内核 |
| 8 | x ← x − t；x ← x + 3cx | x = cx − x₃ | 2×5n |
| 9 | 清 t（`mulClear t`，λ 仍在） | t = 0 | 1 清理 |
| 10 | y ← y + λ·x（加适配器） | y = y₃ + cy | 1 乘积 |
| 11 | g₂ ← g ∧ [x ≠ 0]（零检测；x = cx − x₃ 是除法 2 的除数） | | 2n |
| 12 | **除法 2**：λ ← λ − y / (g₂ ? x : 1)；g₂=0 时 λ 用编译期常量 λ* 受控 XOR 清除 | λ = 0 | 1 div（内含 1 个完整乘积适配器） |
| 13 | 清 g₂（重算零检测，x 未变） | | 2n |
| 14 | x ← −x；x ← x + cx | x = x₃ | 5n+2n |
| 15 | y ← y − cy | y = y₃ | 5n |

乘积清单：除法 1 内的 E·inv（完整适配器：`mulInto T`、加到 λ、`mulClear T`）、λ·x（第 6 步，减适配器）、λ²（第 7 步 `mulInto t` + 第 9 步 `mulClear t`）、λ·x'（第 10 步，加适配器）、除法 2 内的 y·inv'（完整适配器，从 λ 减去）——共 **5 个乘积，每个都是一次 `mulInto` 加一次 `mulClear`**；λ 是除法的累加目标，乘积内核的目标始终是临时字 T 或 t。Häner 2020 的"2 乘 + 1 平方"是按融合的乘加/乘减模块计的；本文按我们的适配器分开计，不借用未实现的融合模块。

### 4.2 除法 `divide`：pebbling 的求逆

`λ ← λ ± E · Dsafe⁻¹`，工作区清零：

```
kaliskiLoop (fwd, 512 轮)                          2,390,528
negativeInit → inv；halvingLoop' 原地（inv = Dsafe⁻¹）  7,704 + 545,792
mulInto T ← E·inv；modAdd/SubInPlace T → λ；mulClear T   589,824 + ≈1,500 + 786,432
doublingLoop'（inv 回到 −Dsafe⁻¹·2^k 形式）；negativeInit 清 inv   414,208 + 7,704
kaliskiUnloop (rev)                                2,390,528
```

合计 ≈ **7,134,000** Toffoli（改 4 后 ≈ 6,502,000）。对比现在的"λ = E·fieldInverse(D)，再各算一遍清除" = 2×14,303,280 + 2×2,892,800 = 34,392,160。

### 4.3 角落情形与受控

沿用已审 M3 设计的标志：ex = finite ∧ [x=cx]，ey = finite ∧ [y=−cy]，g = finite ∧ ¬ex，d = ex ∧ ¬ey；受控版把控制位 b 并入：g' = b∧g，d' = b∧d，o' = b∧¬finite。

- 普通分支的所有原地操作以 g' 为控制（1.5 的受控版比无控制版多 2n：装入与清除 t；适配器里的模加/模减同样 +2n；除法内部 Kaliski 轮本来就固定执行，只把除数选择和 λ 的写入受控）。g'=0 时 x、y 完全不动。
- 非普通分支用受控常量 XOR 直接改写 (finite,x,y)：o'：(0,0,0) ⊕ encode(C)；d'：(1,cx,cy) ⊕ (1,cx,cy) ⊕ encode(2C)；ex∧ey∧b：(1,cx,−cy) ⊕ (1,cx,−cy) = 0 并清 finite。零 Toffoli。
- **除法 2 的除数**：第 8 步后 x 存的是 cx − x₃，除法 2 的除数就是这个当前值，g₂ = g' ∧ [x ≠ 0] 直接检测它（不是检测 x₃ ≠ cx 的旧坐标）。x = 0 ⇔ x₃ = cx ⇔ R+C = ±C ⇔ R = O（已由 o' 覆盖）或 R = −2C（普通分支内）。R = −2C 时 λ 是编译期常量 λ* = (cy − y_{−2C})/(cx − x_{−2C})，用受控常量 XOR 清除；g₂ 由 x 计算而 λ 的清除不改 x，所以 g₂ 事后重算即可清零。Math 引理：对合法 R（x_R ≠ cx）与有限 C，x_{R+C} = cx ⇔ R = −2C，且此时 (y_R − cy)/(x_R − cx) = λ*。
- **标志清除**：输入已被改写为 R+C（或保持 R），标志不能再从"输入"重算，要用输出侧等价谓词，并且都要并入外部控制 b（b=false 时点未变，例如 R=C 时输出仍是 C，但 o' 必须为 false）：o' ⇔ b ∧ [输出 = C]；d' ⇔ b ∧ [输出 = 2C]；ex∧ey∧b ⇔ b ∧ [输出 = O]；g' ⇔ b ∧ 其余。清理门列：对输出寄存器做三次常量相等检测（复用 `equalConstant` 的结构，各 2n，把 b 作为控制位），结果 CCX 进对应标志，再重算 g'；共 ≈ 6n + 常数 ≈ 1,600 个 Toffoli。这需要 Math 引理：对合法点 R 与有限 C，(R=O ⇔ R+C=C)、(R=C ⇔ R+C=2C)、(R=−C ⇔ R+C=O)、(x_R≠cx ⇔ R+C ∉ {C, 2C, O})，都是群论事实。
- Dsafe 在除法 1 之后、x 改写之前清除（第 5 步），不留到最后。

### 4.4 成本（目标，n=256，用改 1、改 2 的原语）

| 组件 | 次数 | 单次 | 小计 |
| --- | ---: | ---: | ---: |
| 除法（各含一个完整乘积适配器） | 2 | ≈ 7,134,000 | ≈ 14,268,000 |
| λ·x（减适配器）、λ²（`mulInto`+`mulClear`）、λ·x'（加适配器） | 3 | 1,376,256–1,378,048 | ≈ 4,132,000 |
| 原地模加减（含常数）与取负 | ≈ 10 | 1,280–1,800 | ≈ 16,000 |
| 标志、两次除数选择与零检测、输出侧标志清理、受控开销（每个受控模加/减 +2n） | — | — | ≈ 40,000 |
| **受控原地点加** | | | **≈ 18.5M** |

相对 91,964,213：约 5 倍。无控制版基本同价（控制只是标志里多一个与）。改 4 后（比较器 n）约 16.6M。

### 4.5 证明义务与 PR 切分

1. Math：4.3 的四条群论引理；λ 重算等式；各步模 p 等式（按 Roetteler Alg. 1）。
2. `divide` 的 Triple 与资源（复用 I4 的 `kaliskiLoop_correct` / `kaliskiUnloop`、改 1 的 `halvingLoop'`、改 2 的乘法）。
3. 原地点加本体（普通分支 + 标志 + 输出侧清除）+ 受控版；公开规格：
   `{{ L.control=b, L.point=R, L.work=0 }} controlledPointAdd L C {{ L.control=b, L.point=(if b then R+C else R), L.work=0 }}`。
4. 资源与文档。

## 5. 改 4：Gidney 比较器

### 5.1 现状与影响范围

PR A 已证明 Gidney 比较器；改 1 减半标志清除直接使用它，PR C 的模加减/半倍设计也直接采用它，不能再次扣减这些收益。§13 实施前旧 Borrow 层唯一外部调用是 `counterActiveXor`，用于 Kaliski 正逆轮与减半/恢复循环；§13 已替换这一路，完整求逆省 30,720 Toffoli/测量。Kaliski 记录段原先直接使用 sub→recordCase→sub，不调用 borrowXor；现已替换为一次受控比较，见 §14（已实现）。

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
- 接入细化见 §13：保留并简化唯一外部入口 counterActiveXor，直接调用 compareLtConst；删除无人调用的旧借位包装和专用证明。调用方更新参数与断言适配，最终求逆/点加 Triple 不变。

### 5.4 当前接入收益（替代早期重复计数预算）

| 调用点 | 当前口径 | 本批变化 |
| --- | --- | --- |
| 模加减与模半倍 | PR A/改 1/PR C 已在实现或设计中直接采用 Gidney 比较器 | 不额外扣减 |
| Kaliski 记录段 v<u | 现为一次受控比较；原先两次减法 | 见 §14（已实现），不计 §13 收益 |
| i<k 计数比较 | 每次20 Toffoli/测量，共3072次/完整求逆 | 每次10，完整求逆各省30,720 |
| 完整求逆 | 改 4 前5,626,928 Toffoli /2,198,576测量 | §13 后5,596,208 /2,167,856；§14 后已证5,333,040 /1,904,688 |

早期“记录比较 −263k、计数 −20k、总计约5.32M”的叠加估算不适用于当前实现。更早的跨优化量级表仍是研究预算；本批精确拟定门列以 §13 为准。

## 6. 改 5：Kaliski 轮压缩

### 6.1 现状

`kaliskiRound` 每轮 17w+33（w=257 时 4,402），分解：记录段 w+5（受控比较 w+1，条件计算/清理 4）；算术体 14w−2（两次数据对交换 4w、两次 masked 加减各 4w、两次受控移位 2w−2）；计数移动 20；零检测 2w（AND 链正向算、正向清）；活动比较 10。

§14 已实现，改 5 的轮基线为17w+33（w=257 时4,402），记录段为w+5；以下改 5 的新增收益从此基线扣除，记录段的w已归入§14。此为改5前基线；当前§15已实现14w+31。

### 6.2 前提：改 4 的 Gidney 比较器

活动比较 i<k 已直接使用第 5 节比较器；记录段 v<u 见 §14（已实现）。本节其它轮压缩仍未实现。

### 6.3 轮内改动

| 段 | 现在 | 改后 | 省 |
| --- | ---: | ---: | ---: |
| 记录段比较 v<u（由 §14 完成） | 2w（减、读借位、减） | w（见 §14，已实现） | w（计入 §14，不重复计入改 5） |
| 零检测 v=0（done 更新） | 2w Toffoli / 0测量 | w Toffoli / w测量（§15） | w Toffoli；增加w测量 |
| 两次 masked 加减 | 各 4w Toffoli /2w测量 | 各3w−1 Toffoli /w−1测量（§15） | 共2w+2 Toffoli与2w+2测量 |
| 两次数据对交换、两次受控移位 | 4w + (2w−2) | 不变（Litinski 也计 4 次受控 SWAP 和 1 次受控移位） | 0 |
| 计数移动、活动比较 | 20 + 10（改 4 首批已实现） | 不变 | 0 |

按§15已证门列，每轮14w+31 = 3,629 Toffoli、4w+28 = 1,056测量（w=257），相比改4后的4,402 Toffoli省773。此前14w+22是未逐门核对的量级估算，由本式替代。更激进的受控加法器不属于本次范围。

### 6.4 影响与证明义务

公开 `kaliskiRound_spec` / `kaliskiUnround_spec`、求逆和点加功能陈述保持。每次求逆的已证成本为4,541,488 Toffoli /1,639,472测量；第一阶段每方向512×3,629=1,858,048 Toffoli，第二阶段仍为2×404,992，加两次negativeInit共15,408。

实现范围、完整门列、寄存器契约和支持集变更见§15。改5可以与Lamport的改2并行；不改变其文件归属，也不把§14已实现的记录比较收益再次计入。

## 7. 改 6：Montgomery 窗口模乘

### 7.1 构造（Häner 2020 §4.1；Litinski 2023 2.25n²+9n）

Montgomery 表示：x̃ = x·R mod p，R = 2^256。MontMul(x̃, ỹ) = x̃·ỹ·R⁻¹ mod p = (xy)~。按乘数 x 的 4 位窗口 x^(i)（i = 0..63）迭代，累加器 acc 为 n+4+1 位：

1. acc ← acc + x^(i)·ỹ：4 次受控加法（控制 x^(i) 的各位，加数分别为 ỹ、2ỹ、4ỹ、8ỹ 的改名视图），每次原地加 n+4 位。
2. 复制 acc 的低 4 位到 m_i（4 个 CX；m_i 是本窗口的垃圾，64 个窗口共 256 位）。
3. 查表 T[m_i] = t·p，其中 t ≡ −m_i·p⁻¹ (mod 16)：16 项、n+4 位常数表；以 m_i 为地址做单一迭代查表（AND 链 ≈ 15 个 CCX + 每项常数 1 位处 CX），把 T[m_i] 加到 acc（原地加 n+4），此时 acc 低 4 位为 0；改名右移 4 位。
4. 反查表：重跑同一查表（再 ≈ 15 个 CCX）把临时表值清零；不用 MBU 反查表就不需要 CCZ（见改 7）。
5. 64 个窗口后：acc < 2p，做一次条件减 p（常数减 + 条件加回 + 比较器 ≈ 3n）。

每窗口：4 次**量子变量**的受控加。加数是 y 的移位视图（量子寄存器），不能用 §1.2 常数受控加的 n 成本；每次要么 t ← c·y（n 个 CCX）、原地加（n）、清 t（n）= 3n，要么用 Gidney 型受控加法器（≈ 2n，本项目尚无）。按 3n 计每窗口 ≈ 12n + 查表 30 + 加 n ≈ 13n+30，64 窗口 ≈ 215k，加末尾约减 ≈ 3n；按 Litinski 的 2n 受控加则为 2.25n²+9n ≈ 150k。**目标写 150k–215k**（研究预算，未从本项目已有门列推导），实现前需先交受控加模块的门列与计数。

垃圾：m_i 共 256 位，随乘法的反计算（反序重跑：条件加 p、每窗口反查表、减法）一起清除；因此"算一次、清一次"的成本各 ≈ 150k–215k（研究预算口径同上），与改 2 的适配器同用法。

### 7.2 两种接入方式

- **6a 标准形式，不改其他模块**：xy mod p = MontMul(MontMul(x, y), R² mod p)（第二次乘常数 R²；常数乘数可用经典 4 位窗口，不需要受控加：每窗口 1 次查表 + 1 次加 ≈ n+30，共 ≈ 70k）。每个乘积计算 ≈ 220k–285k，清理同量级（窗口记录 m_i 与中间积随反计算一起清），算+清 ≈ 450k–570k，目标写 **≤ 600k**（改 2 的适配器为 ≈ 1,245k）。
- **6b 全 Montgomery 表示**：点加的输入坐标、常量 C、逆元都用 x̃；求逆输出 Kaliski 的几乎逆 x⁻¹2^k 时改为校正到 x⁻¹R（第二阶段做 2n−k 次加倍而不是 k 次减半，成本同量级）；每个乘积算+清 ≈ 300k–430k。代价是所有公开规格里的坐标改成 Montgomery 表示，或在点加入口/出口各做一次常数乘转换（≈ 70k × 4 坐标）。

建议先做 6a，6b 作为可选。

### 7.3 证明义务

- 查表原语 `lookup addr table target`：对 2^k 项常数表，Triple 为 target ^= table[addr]，AND 链清零，相位恢复；资源 2^k−1 Toffoli（k=4：15）。
- Montgomery 约减引理：acc + T[m]·… ≡ 0 (mod 16)，右移后值 = (acc + t·p)/16，与 x̃ỹR⁻¹ 的循环不变量（Math 层，Mathlib 有 Montgomery 相关素材可用，否则直接按整数等式证）。
- 末尾范围引理 acc < 2p。
- 6a 的常数 R² mod p 与 MontMul(MontMul(x,y),R²) = xy mod p（Math 层）。

## 8. 改 7：单迭代查表已实现，测量清理可选

原计划设想在 `Correction` 增加 `CCZ a b c`，语义为 `phase ^= s a ∧ s b ∧ s c`，并将执行的CCZ计入非Clifford成本、与CCX单列。它适用于需要直接三次相位的方案，但不能把修正门免费计入或只统计删掉的反查表门。

当前三根lookup scratch允许两条路线：方案1共享地址前缀，使加载和重跑清理各14 CCX/14测量；方案2在此基础上，用两对地址AND把任意四位布尔相位变成Z/CZ，再逐位测量清表。§18给门列、相位与净账本，均无需修改Framework。原先“k=4必须扩展CCZ”的判断由本设计取代。推荐先做方案1，方案2增加测量，由owner决定；方案1现已证明14/14及下游资源；方案2未实现。

## 9. 阶段目标总表

阶段按实际实施顺序列出。已证值、待合并实现和未实现推导分别标注；改3以改5求逆及改2乘法为基线。线路列指完整程序的实际静态支持，不能与布局分配数或峰值存活数混同。

| 阶段 | 受控原地点加 Toffoli | 实际线路 | 说明 |
| --- | ---: | ---: | --- |
| 基线（PR 11–13） | 91,964,213 | 74,024 | 已证、已合并 |
| + 改 1（第二阶段原地减半/加倍） | 57,258,805 | 74,024 | 已证；求逆5,626,928，仍为4次求逆/12次模乘 |
| + 改 4（Gidney 比较器） | 56,083,253 | 74,024 | 已证；求逆5,333,040 |
| + 改 5（Kaliski 轮压缩） | 52,914,997 | 74,024 | 已证；求逆4,541,488，旧模乘2,892,800 |
| + 改 2（Horner 与三个适配器） | 32,347,957 | 9,718 | PR 27 已证、已合并；4×4,541,488 + 12×1,178,880 + 35,445；布局分配9,817 |
| + 改 3（除法中心原地点加） | 14,998,618 | 6,218 | §16已证；2次除法内含2个乘积，另3个乘积；保留兼容布局9,817 |
| + 改 6a（Montgomery，标准形式） | 11,800,058（§17已实现、已证） | 6,218（已证） | 2×4,541,488 + 2,703,515 + 13,567；包含两次受控适配器及平方步改写 |
| 改 6b（全 Montgomery 表示，可选） | 未重新定额 | 未重新定额 | 表示转换改变接口；不沿用旧≈11M/≈5k，另行设计 |
| 改 7（§18） | 方案1：11,669,498（已证）；方案2：11,646,458（未实现） | 6,218（方案1已证） | 测量分别4,525,818 / 5,003,898；方案2可选，不预支6b收益 |
| 参照：Litinski 2023 精确点加 | ≈ 8M | ≈ 3,000 | 公开构造，Gidney 受控加法器 + 13n 轮 + 融合乘加 |
| 参照：Babbush 等 2026（保密电路，近似正确） | 2.1–2.7M | 1,175–1,425 | 不承诺复现 |

改 1–6 之后剩余成本的大头仍在两次除法（各含正逆两遍 Kaliski 循环）；再压需要换求逆算法或融合的乘加模块，属于新的研究项，不在本计划内。每个模块虽可独立证明同形 Triple，但替换布局后的支持集等式和上层适配器（3.3、2.2 的 CX/清理）都要另证，不是自动完成。

### 依赖与建议顺序

依赖图（频道确认版）：基础层（§1，1 个 PR）先做；随后改 1、改 2、改 4 只通过 Triple 接口相互独立，可并行；改 5 可并行开发，但集成依赖改 4 的比较器与基础层的受控原地加减（§6.2）；改 3 依赖改 1 与改 2；改 6 是改 2 的替代；改 7 依赖改 6 的选择。

1. 基础层（1 个 PR：`addInPlace`、常数加、原地模加/减（含受控版与 a'≤p 引理）、`dblInPlace`、`halfInPlace` 及受控版）。
2. 改 4（1 个 PR：比较器原语 + 替换 Borrow.lean 调用点 + 资源数更新；公开陈述不变）。
3. 改 1（1 个 PR：受控减半/加倍循环 + `inverseLoop` 重组 + 资源/文档）。
4. 改 2（2 个 PR：`mulInto`/`mulClear` 与循环不变量；三个适配器 + `fieldMul_spec` 重证 + 资源）。
5. 改 3（Deutsch，§16）：Math 引理组（输出侧标志、λ*）；`divideAdd/divideSub`；替换受控原地点加本体。设计与数学可先行，接口集成接 D。
6. 改 5（2 个 PR：MBU 零检测 + 原地受控加减接入 I3 统一体；轮内替换与资源）。
7. 改 6a（先交受控加模块门列与计数，再 2 个 PR：查表原语 + Montgomery 约减数学；窗口乘法与资源），6b 视需要；改7现按§18完成单迭代查表，MBU清表仍为可选设计。

每项先交"构造 + 逐步寄存器表 + 门数推导 + 证明义务"的设计 PR 描述，确认后再写证明；README 的资源表随每次合并更新。

## 9b. 研究项（不在编号计划内，无预算承诺）

以下方向可能进一步缩小与 Litinski 2023（≈ 8M）及 Babbush 等 2026（2.1–2.7M）的差距，但目前没有可核对的门列，不给数字，只列前提与风险：

- **R1 用测量反计算清 Kaliski 记录带，替代反向重跑。** 现在每次除法的两遍 Kaliski 循环里，反向那一遍（≈ 2.4M）只是为了清 1,024 位记录和恢复 u/v/r/s。若对记录位做 X 基测量，所需相位修正是输入的某个布尔函数的相位；Babbush 等在 kickmix 一节指出这种修正常比重算便宜。能否对 Kaliski 记录带写出便宜的修正，未知；若可行，求逆成本约减半。前提：需要扩展修正门集合（可能要改 7 的 CCZ 或更多）并证明修正相位。
- **R2 记录带每轮 1 位。** Roetteler 2017 §3.4 指出两位记录之一可由 r/s 的奇偶恢复；可省 512 根线和部分清理门，需要在 I3 统一体里重做记录/清除证明。
- **R3 常数加法器不用临时常数字。** Häner–Roetteler–Soeken 的常数加法器省去 T（−257 线），门数同量级。
- **R4 融合乘加/乘减模块（Häner 2020 Fig. 5）。** 把乘积直接加进目标并在同一模块内清理中间量，避免 mulInto/mulClear 两遍；需要新的内核设计与不变量。
- **R5 近似正确性口径。** 论文只要求 ≥99% 输入正确并按平均执行计数；本项目坚持全体合法点与静态计数，不采用此口径，列出只为解释差距来源。

## 10. 文档约定

本文件是重做计划的唯一来源；README 只保留"下一步计划"摘要表并链接到此处，PROOF_STATUS 只记录已证明的内容，PROVENANCE 记录来源。计划变更在同一 PR 里同时改本文件和 README 摘要，不维护第二份副本；频道里的附件只是快照。

## 11. 验收标准（每一项 PR）

- 公开定理陈述可读，前提只有 Nodup、位宽、数值范围；无坐标前提；输入域不缩小。
- 正确性、三项资源、支持集指向同一字面程序；资源表在 README 与 PROOF_STATUS 同步替换，旧数字保留在 PROVENANCE 的历史里。
- `lake --wfail build` 与公开入口公理白名单通过；无 sorry / native_decide / 新 axiom。
- 每项先交"构造 + 逐步寄存器表 + 门数推导 + 证明义务"的设计 PR 描述，确认后再写证明（与 M3 流程一致）。

<a id="12-改-2-实施设计已实现"></a>
## 12. 改 2 实施设计（历史阶段，Horner电路已被改6a替换）

C1 状态：模加、模减、受控模加、受控模减的 Triple/frame/精确资源已证明，源范围放宽为 A≤p。普通加减实际线路为 4n+4，受控加为 5n+5，受控减为 5n+6。C2 已证明无控制半倍和 Horner 正向/清理的 Triple、frame、支持集及精确资源。D 已证明三个适配器，替换域乘法并删除旧倍数链；该阶段受控点加同程序资源为32,347,957/17,585,440/9,718；当前改3结果见§16。

本节将 §1/§3 的量级预算细化为 PR C/D 的可实现门列。基于 PR A 的 list 接口及 Gidney 比较器；**C1/C2/D 的原语、内核、适配器与集成资源均已由 Lean 证明；下文明确保留的 PR B 阶段预算仅作历史说明**。不要求先完成 PR B 的求逆专用减半。PR B 先合并，PR D 的点加资源与共享池映射在其上重算。

### 12.1 固定布局、基础接口和旋转

设 `1<p<2^n`、p 奇数、`w=n+1`。模数可参数化，最终实例 n=256。模算术源 a 与目标 z 都用 w 根线；规范输入 `<p` 保证最高位为零。所有输入、目标、工作区及外部控制在同一个线路列表中满足 Nodup；临时借用的子视图不重复加入此列表。

工作区：掩码字 `mask : w`、常数字 `constant : w`、进位链 `carry : n`、`cin : Wire`、`flag : Wire`。初末全部为零。底层 w 位加/减使用 n 根进位，n 位加/减用其前 n−1 根；n 位比较用全部 n 根。`cin=false`。不添加独立 cout，也不复制 PR A 的加法器。

基础接口沿用 Deutsch：`addInPlace` / `subInPlace`、`maskedAddConst` / `maskedSubConst`、`maskedAddInPlace` / `maskedSubInPlace`、带可选控制的 `compareLt` / `compareLtConst`。r 位加减计 r−1 个 CCX、r−1 次测量；r 位比较计 r 个 CCX/r 次测量，带控制多一个 CCX。常数装卸用 X/CX；掩码装卸用已有受控复制门列。需要让 mask 存活到比较结束时，显式展开“复制、调用基础加法、复制清理”，不改基础加法内部。

**旋转使用真实门列，不改变固定布局。** 两线 swap 为 `CX b a; CX a b; CX b a`，零 CCX、零测量。w 位循环左移按相邻交换 `(n−1,n),…,(0,1)`；高位零时等于乘 2。循环右移用反序交换；低位零时等于除 2。每次 n 个 swap，3n 个 CX。受控旋转将 swap 换为已证 `cswap`，计 n 个 CCX。每一步恢复到同一 z 线路列表，因此没有 n 轮布局旋转后输出接线错位的问题。CX 数不计入 Toffoli，但不称“没有门”。

### 12.2 模加与受控模加

先证明略扩展的源范围 `A≤p`，目标 `Z<p`；A=p 专供模减包装，仍能编码在低 n 位。令 `h=z[n]`、`lo=z.take n`。

| 步骤 | 状态/理由 | CCX / 测量 |
| --- | --- | --- |
| `addInPlace a z`（w 位） | z=A+Z<2p<2^w | n / n |
| 常数 p 装入 constant，w 位减 p，再清 constant | z=(A+Z−p) mod 2^w；h=[A+Z<p] | n / n |
| `maskedAddConst h constant.low lo p`（n 位） | lo=(A+Z) mod p；h 保持 | n−1 / n−1 |
| `compareLt none lo a.low carry cin h; X h` | h ^= [lo≥A]，清到零 | n / n |

比较只读低 n 位，**不把正待清理的 h 当比较输入**。未约减时 lo=A+Z≥A；约减时 lo=A+Z−p<A（Z<p）。A=p 时必约减且 lo=Z<p，仍成立。总计 `4n−1 / 4n−1`。

受控版先 `mask.low ^= c·a.low`（n CCX），mask 高位保持零；对 mask 和 z 执行上述内部模加核（核工作区只含 constant/carry/cin，不含 mask/flag，接线与中间断言见 §12.9），比较完成后再次受控复制清 mask（n CCX）。必须与实际 mask 比较。总计 `6n−1 / 4n−1`。c=false 时 mask=0，程序仍执行但最终 z 原值且 h/mask 全零。

已实现公开规格（W 表示实际 work）：

```text
{{ a=A,z=Z,W=0 }} modAddInPlace … {{ a=A,z=(Z+A)%p,W=0 }}
{{ c=B,a=A,z=Z,W=0 }} controlledModAdd …
{{ c=B,a=A,z=(if B then (Z+A)%p else Z),W=0 }}
```

### 12.3 模减：保留源、允许临时源等于 p

`negRaw a`：w 位按位取反、加常数 p+1。它将 A 变为 p−A（包括 A=0 时得到 p），并且在模 2^w 上是 involution。加法工作线清零，CCX/测量均 n。

`modSubInPlace a z = negRaw a ; modAddInPlace a z ; negRaw a`。
受控版只替换中间为 controlledModAdd，源 a 在两个控制分支都临时取负再还原。规格为保留 a、`z=(Z+p−A)%p`（受控为假时 Z）、W=0，要求 A,Z<p。资源分别 `6n−1 / 6n−1` 与 `8n−1 / 6n−1`。这里使用 12.2 的 A≤p 引理，不能把 p 塞进仅允许 `<p` 的接口。

### 12.4 模加倍与减半

无控制加倍（Z<p）：

1. 循环左移 z，因原高位零，得到 2Z。
2. w 位减 p，h=z[n] 为借位；正分支 2Z−p<p，负分支 h=1。
3. 按 h 对低 n 位加回 p。低位结果为 2Z mod p。
4. `X h; CX z[0] h`：结果偶当且仅当未约减，故清 h。

资源：`2n−1 / 2n−1`。不要求额外 n+2 位符号线。

无控制减半：

1. `CX z[0] flag`，记原奇偶。
2. 按 flag 对 w 位 z 加 p（n/n）；结果偶，且小于 2p<2^w。
3. 循环右移，原低位零变成新的高位零，得到 halfₚ(Z)。
4. 对低 n 位运行 `compareLtConst none … flag K; X flag`，`K=(p+1)/2`（n/n）。由原 Z 奇当且仅当 halfₚ(Z)≥K，清 flag。

资源：`2n / 2n`。它是 mulClear 所需版本，不调用求逆的 HalvingLoop。

**后续计划，不进入当前 PR C。** 以下受控半倍未被本次 Horner 或三个适配器调用，Deutsch 求逆也使用独立实现；保留构造供将来出现实际调用需求时另行评审，目前不实现、不新增公开入口：

- 受控减半：flag ^= c∧z[0]；按 flag 加 p；按 c 循环右移；受控比较 z.low<K 写 flag，再 `CX c flag`。资源 `3n+2 / 2n`。
- 受控加倍：受控比较 z.low<K 写 flag，再 `CX c flag`，得到 flag=c∧[Z≥K]；按 c 循环左移；按 flag 对 w 位 z 减 p；`CCX c z[0] flag` 清 flag。资源 `3n+2 / 2n`。

上述后续构造的两个控制为假分支都是状态/工作区恒等；控制为真分支满足 doubleₚ∘halfₚ=id 与 halfₚ∘doubleₚ=id。这两个版本与 Deutsch 求逆的内联专用步骤分别接基础接口，不形成跨 PR C/B 依赖。

### 12.5 Horner 正向与清理

x 为 w 位规范数 X<p，y 为 n 位数 Y<2^n，acc 为 w 位。无需保存倍数链。

```text
mulInto: i=n−1,...,0
  dblInPlace acc
  controlledModAdd y[i] x acc

mulClear: i=0,...,n−1
  controlledModSub y[i] x acc
  halfInPlace acc
```

设 `H_i=(X * floor(Y/2^i)) mod p`，则 `H_n=0`，`H_0=XY mod p`，并且
`H_i=(2*H_(i+1)+X*bit_i(Y)) mod p`。正向从 H_n 到 H_0；清理先减 X·bit_i 再减半，H_i 回到 H_(i+1)。这里 **没有**声称任意初值 A 的 Horner 是 A+XY；它实际会产生 2^n A+XY。

公开零输出/清理规格：

```text
{{ x=X,y=Y,acc=0,W=0 }} mulInto … {{ x=X,y=Y,acc=(X*Y)%p,W=0 }}
{{ x=X,y=Y,acc=(X*Y)%p,W=0 }} mulClear … {{ x=X,y=Y,acc=0,W=0 }}
```

每段对任意测量记录证明相位恢复。mulClear 是用已证前向减法/减半组合成的程序，不是倒放带测量的 mulInto。

### 12.6 任意目标适配器与实际支持集

临时积 product 为 w 位且初始零：

```text
XOR: mulInto product ; copyRegister none product out ; mulClear product
add: mulInto product ; modAddInPlace product out ; mulClear product
sub: mulInto product ; modSubInPlace product out ; mulClear product
```

XOR 对任意 O 给 `out=O XOR (XY%p)`；加/减适配器要求 O<p，给 `(O±XY)%p`。输入、product、W 在后置条件中明确保持/清零。平方调用者必须提供独立乘数副本，以满足 Nodup，不能把 x/y 接同一组线。

已实现的 `MulInPlaceLayout` 只列 x(w)、y(n)、acc(w)、mask(w)、constant(w)、carry(n)、cin、flag；**布局共分配 `6n+6` 根，不代表每段都触及全部字段**。XOR 包装另加公开 out(w)，原 acc 作为 product；工作池为 product+mask+constant+carry+cin+flag，即 `4n+5` 根（n=256：1,029）。

按当前字面门列，内核与完整包装支持集均已证明：

| 程序 | 已证实际支持集 | 基数（n=256） |
| --- | --- | ---: |
| mulInto | 内核布局去掉 `flag` 和 `x[n]` | `6n+4` = 1,540 |
| mulClear | 整个内核布局 | `6n+6` = 1,542 |
| 完整 XOR 包装 | 整个内核布局，加 out(w) | `7n+7` = 1,799 |

mulInto 不调用减半，因此不触及 flag；它只掩码复制 x 的低 n 位，模加读取 mask 而不是 x[n]，所以 x[n] 也不在其支持集。mulClear 的 `negRaw x` 触及源的全部 w 位，减半触及 flag，因此两根线都重新进入完整包装的支持集。其余字段分别从加法/比较与掩码门给出见证：acc/mask/constant/carry/cin 都被触及，y 每一位作为控制，包装 out 每一位有复制门。

实际 C2 数值前提放宽为奇数 p、p<2^n、规范输入；也覆盖 p=1。支持集和资源只需 n>0、Widths 和 Nodup。`mulInPlace_wires` 与 `mulInPlace_resources` 已证明两个内核的精确集合与基数；完整包装见 mulAdapter_wires/resources。

### 12.7 同一门列资源推导

| 程序 | CCX | 测量 | n=256 CCX / 测量 |
| --- | ---: | ---: | ---: |
| mulInto 每位 | (2n−1)+(6n−1)=8n−2 | (2n−1)+(4n−1)=6n−2 | — |
| mulClear 每位 | (8n−1)+2n=10n−1 | (6n−1)+2n=8n−1 | — |
| mulInto | n(8n−2) | n(6n−2) | 523,776 / 392,704 |
| mulClear | n(10n−1) | n(8n−1) | 655,104 / 524,032 |
| XOR 适配器 | 18n²−3n | 14n²−3n | 1,178,880 / 916,736 |
| 加适配器 | 18n²+n−1 | 14n²+n−1 | 1,179,903 / 917,759 |
| 减适配器 | 18n²+3n−1 | 14n²+3n−1 | 1,180,415 / 918,271 |

XOR 适配器已证实际线数 7n+7=1,799；单独 mulInto 为 6n+4=1,540，mulClear 为 6n+6=1,542。资源下降同时用了 PR A 的 Gidney 比较器，故不是 §9 中“尚未用改 4 比较器”的 ≈1.38M 版本；改 4 首批已将旧 Borrow 计数入口替换，不能再重复从这些新模算术里扣一次比较器节省。

以下为 PR B 阶段 `fieldInverse=5,626,928` 的历史集成预算（当前改 5 后 fieldInverse=4,541,488；D 已完成下述重算）：当时，保持现有点加组合的累计 Toffoli 公式为
`4*5,626,928 + 12*1,178,880 + 37,493 = 36,691,765`。
当时只有原语和布局证明完成后才替换已证资源表。若 PR B 的实际池前缀为 5,699，新乘法只需 1,029，则重布点加共享池的目标为 `4,116+max(5,699,1,029,其他仍用模块工作区)=9,815`（其他现有前缀不超过两者最大值）。这比 §9 的约 8k 保守：保留 PR B 实际布局，而不假定尚未实现的求逆 3.9k 池。

**D 阶段集成实证：** 仍为4次求逆、12次XOR乘法，额外门数由改5后的同程序推得35,445（旧37,493因相等检测替换减少2,048）。因此 `4×4,541,488+12×1,178,880+35,445=32,347,957`，测量17,585,440。工作池分配前缀保留5,699，但实际支持为模减前1,287与求逆支持的并集5,602位，余97根旧out未用；受控外部支持4,116，加总9,718。9,815是旧阶段支持预算，不能作为当前实证。

### 12.8 文件、证明与集成

设计阶段只改本文与 README 的计划说明，不写未证电路。

- PR C1（已实现四个模加减接口）、C2（已实现无控制半倍及 Horner 正向/清理）：`Arithmetic/ModInPlace.lean` 及按证明长度合理拆分的同名辅助文件；`Math/ModInPlace.lean`。范围仅为模加、模减、受控模加、受控模减、无控制加倍与减半；受控半倍留待后续实际需求。证明约减/奇偶/半倍逆关系及 §12.9 中这六个公开接口的 Triple/逐线保持/资源/支持集。原地模算术只依赖 PR A；不编辑 Deutsch 的 HalveInPlace/HalvingLoop/Inverse 文件。
- PR C2 以 `Math/HornerMultiply.lean` 证明 `H_i` 关系与各步规范范围，并在 `Arithmetic/HornerLayout/Steps/Spec/Resources.lean` 证明正向/清理循环；半倍实现位于 `ModUnary/ModHalf/ModDouble/ModUnaryResources.lean`，物理旋转位于 `Rotate.lean`。PR D 已在 MulAdapterLayout/Spec/Resources 中实现三个适配器、布局与物理线路支持，并把 fieldMul 的调用入口换为新布局对应实现，保留已有任意 O 的数值契约；布局参数类型和宽度前提的迁移显式列出，不宣称全部 Lean 文本逐字不变。
- 接入：更新 MultiplyPorts/PointCandidate 的工作池视图及 Nodup/frame/support，保留 M3 的 12 次 fieldMul 和4次 fieldInverse 调用结构。PR B 先合并，后续修改基于其真实 main，不覆盖旧常数。
- 全部引用已迁移：删除 MultiplyLayout、MultiplyResources、Multiply、Double、MaskedAccumulate 五个旧专用文件；只保留一套 fieldMul。Accumulate 与 ModularXorSteps 仍被其它算术使用，保留。
- 每个实现 PR 同步 README、PROOF_STATUS、PROVENANCE、总 import 与 verify.sh；新增公开规格和资源进入现有白名单入口。只运行 Lean 构建及公开公理检查，无测试/数值 oracle/新 axiom/sorry，无 heartbeat 放宽。
- 八项复审包含可读性、设计必要性、状态真实、Lean 验证、相位/清理、同一合法门列、范围完整性和证据；结论单列 README 同步。常规设计选择由本节明确给出，复审需具体指出构造或接口问题。

### 12.9 集中的公开接口（C1/C2/D 已实现）

以下给出统一陈述形状；C1/C2/D 均已有对应 Lean 定理。设计的共同充分前提为 `1<p<2^n`、p 为奇数、`w=n+1`；实际 C1 将模数前提放宽为 0<p<2^n，C2 放宽为 p<2^n 且 p 为奇数（允许 p=1）；数值变量取 Nat，B 为 Bool。`halfₚ(Z)=(Z+(if Z%2=1 then p else 0))/2`。每一行还须满足该行的数值范围及下述对应布局的 Widths/Nodup 前提。

**命名布局与工作区。** 各布局使用同一组实际工作线 `mask(w)、constant(w)、carry(n)、cin、flag`，记其拼接列表为 `scratch=constant++carry++[cin]++mask++[flag]`；这里只定义字段和借用视图，不引入第二套状态框架。

| 布局/视图 | 外部字段及 Widths n | work 的确切含义 | wires / Nodup 前提 |
| --- | --- | --- | --- |
| `L : ModInPlaceLayout` | `L.a.length=L.z.length=w`，工作字段长度如上 | `L.work=L.scratch` | `L.wires=L.a++L.z++L.work`，要求 `L.wires.Nodup`；受控调用改要求 `(c::L.wires).Nodup` |
| `U : ModUnaryLayout` | `U.z.length=w`，工作字段长度如上 | `U.work=U.scratch` | `U.wires=U.z++U.work`，要求 `U.wires.Nodup` |
| `M : MulInPlaceLayout` | `M.x.length=M.acc.length=w`、`M.y.length=n`，工作字段长度如上 | `M.work=M.scratch`，不含 acc | `M.wires=M.x++M.y++M.acc++M.work`，要求 `M.wires.Nodup` |
| `F : MulAdapterLayout` | `F.x.length=F.out.length=F.product.length=w`、`F.y.length=n`，工作字段长度如上 | `F.work=F.product++F.scratch`，包含临时积 | `F.wires=F.x++F.y++F.out++F.work`，要求 `F.wires.Nodup` |

`U` 可从模加布局借用 z 和同一 scratch；适配器将 product 作为内核 acc 借用。借用不复制线路，也不把同一子视图再次拼入 wires。每个 `Widths n` 同时检查该行全部外部与工作字段长度。`work=0` 表示列表内每根线为零，包括 cin/flag；低位子视图和高位标志均来自上述固定寄存器。

**内部模加核与受控包装的断言边界。** 六个外层接口之外，模加证明使用一个专用内部子视图 `K`：字段为 `a(w)、z(w)、constant(w)、carry(n)、cin`，`K.work=K.constant++K.carry++[K.cin]`，`K.wires=K.a++K.z++K.work`。它不含 mask 或 flag，也不分配新线。`K.Widths n` 检查这些长度，`K.wires.Nodup` 保证接线合法。在共同模数前提与 `A≤p, Z<p` 下，内部引理为：

```text
{{ K.a=A, K.z=Z, K.work=0 }} modAddCore K p
{{ K.a=A, K.z=(Z+A)%p, K.work=0 }}
```

核对任意测量记录恢复相位，并对所有 `q∉K.z` 保持最终位值，既保持作为源的 K.a，也保持未纳入核视图的线路；包装中的 flag 和外部控制由此保持。普通模加取 `K.a=L.a, K.z=L.z`，借用同一 constant/carry/cin；其余 mask/flag 由核的 frame 保持零，从而推出外层 `L.work=0` 的公开规格。

受控模加则取 `K.a=L.mask, K.z=L.z`，constant/carry/cin 仍借用原字段。此时 K.wires 只包含 mask 一次，核工作区不含该源；从外层 `(c::L.wires).Nodup` 推出核 Nodup，而不是将源 mask 再拼进外层 work。令 `V=if B then A else 0`，范围 `A≤p` 给出 `V≤p<2^n`，从而只复制低 n 位已足够，mask 的高位保持零。三个阶段的断言边界为：

| 阶段 | 前置条件 | 后置条件 |
| --- | --- | --- |
| 受控复制 a.low 到 mask.low | `c=B, L.a=A, L.z=Z, L.mask=0, K.work=0, L.flag=false` | `c=B, L.a=A, L.z=Z, L.mask=V, K.work=0, L.flag=false` |
| `modAddCore K p`，以 mask 为源 | `c=B, L.a=A, L.z=Z, L.mask=V, K.work=0, L.flag=false` | `c=B, L.a=A, L.z=(Z+V)%p, L.mask=V, K.work=0, L.flag=false` |
| 再次受控复制 a.low 到 mask.low | `c=B, L.a=A, L.z=(Z+V)%p, L.mask=V, K.work=0, L.flag=false` | `c=B, L.a=A, L.z=(Z+V)%p, L.mask=0, K.work=0, L.flag=false` |

中间两处不声称 `L.work=0`：mask=V 可以非零。核内部的末尾比较读取 `K.a.low=L.mask.low`，直到该比较完成才允许清 mask。核的输入保持与 frame 维持 c、原源 a、flag；最后由 mask=0、K.work=0、flag=false 重新组合出 L.work=0。B=false 时 V=0，利用 Z<p 得到 `(Z+V)%p=Z`。这需要内部核的上述 Triple/frame，不能直接套用要求整个 L.work=0 的外层公开模加 Triple；同样也不额外添加第二份 mask。受控模减包装先将 a 取负，在该扩展范围上调用已证受控模加，再恢复 a。

**PR C：实际被调用的六个公开接口。** 下列每行使用 `L.Widths n` 或 `U.Widths n` 及表中的 Nodup，前后条件列出的寄存器为同一物理布局。

| 接口与额外范围 | 拟定完整 Triple |
| --- | --- |
| 模加，`A≤p, Z<p` | `{{ L.a=A, L.z=Z, L.work=0 }} modAddInPlace L p {{ L.a=A, L.z=(Z+A)%p, L.work=0 }}` |
| 受控模加，`A≤p, Z<p` | `{{ c=B, L.a=A, L.z=Z, L.work=0 }} controlledModAdd c L p {{ c=B, L.a=A, L.z=(if B then (Z+A)%p else Z), L.work=0 }}` |
| 模减，`A<p, Z<p` | `{{ L.a=A, L.z=Z, L.work=0 }} modSubInPlace L p {{ L.a=A, L.z=(Z+p-A)%p, L.work=0 }}` |
| 受控模减，`A<p, Z<p` | `{{ c=B, L.a=A, L.z=Z, L.work=0 }} controlledModSub c L p {{ c=B, L.a=A, L.z=(if B then (Z+p-A)%p else Z), L.work=0 }}` |
| 无控制加倍，`Z<p` | `{{ U.z=Z, U.work=0 }} dblInPlace U p {{ U.z=(2*Z)%p, U.work=0 }}` |
| 无控制减半，`Z<p` | `{{ U.z=Z, U.work=0 }} halfInPlace U p {{ U.z=halfₚ(Z), U.work=0 }}` |

`negRaw` 是模减内部组合引理：在 `A≤p` 下将源 A 变为 p−A，再次调用恢复 A；不作为额外的最终用户接口。受控减半/加倍不在本次公开接口或 PR C 交付范围中。

**PR D：内核与三个适配器。** 统一额外前提为 `X<p, Y<2^n`，对应 `M.Widths n / F.Widths n` 与上述 Nodup；以下直接写出乘积，不以循环状态或内部不变量替代结果。

| 接口与额外范围 | 拟定完整 Triple |
| --- | --- |
| 从零计算乘积 | `{{ M.x=X, M.y=Y, M.acc=0, M.work=0 }} mulInto M p {{ M.x=X, M.y=Y, M.acc=(X*Y)%p, M.work=0 }}` |
| 清理已算乘积 | `{{ M.x=X, M.y=Y, M.acc=(X*Y)%p, M.work=0 }} mulClear M p {{ M.x=X, M.y=Y, M.acc=0, M.work=0 }}` |
| XOR 包装的零输出形式 | `{{ F.x=X, F.y=Y, F.out=0, F.work=0 }} mulXor F p {{ F.x=X, F.y=Y, F.out=(X*Y)%p, F.work=0 }}` |
| XOR 包装的一般形式，`O<2^w` | `{{ F.x=X, F.y=Y, F.out=O, F.work=0 }} mulXor F p {{ F.x=X, F.y=Y, F.out=O XOR ((X*Y)%p), F.work=0 }}` |
| 模加包装，`O<p` | `{{ F.x=X, F.y=Y, F.out=O, F.work=0 }} mulAdd F p {{ F.x=X, F.y=Y, F.out=(O+(X*Y)%p)%p, F.work=0 }}` |
| 模减包装，`O<p` | `{{ F.x=X, F.y=Y, F.out=O, F.work=0 }} mulSub F p {{ F.x=X, F.y=Y, F.out=(O+p-(X*Y)%p)%p, F.work=0 }}` |

XOR 的 O 只受 w 位寄存器的可表示范围约束，不要求 O<p；fieldMul 接入保持这一语义。每个适配器的 `F.work=0` 都包含 product 清零。

**每一行共同交付的相位与 frame 义务。** Triple 按项目现有定义对所有初态和所有测量记录成立，恢复输入相位。另给同样前提下的逐线保持定理：模算术对 `q∉L.z`（单目为 `q∉U.z`）的每根线保持；内核对 `q∉M.acc` 保持；适配器对 `q∉F.out` 保持。这里的“保持”比较程序最终状态与初态，允许工作线在中间被使用后清零；外部控制与输入因此也逐线保持。资源定理必须针对这些同名程序，不以抽象契约或布局分配数替代字面门列的支持集。


## 13. 改 4 首批接入：计数比较器（已实现）

基线为 main `e565d886`。本批将唯一被外部调用的 counterActiveXor 接到 PR A 已证明的比较器。去掉旧借位实现专用的参数和前提，最终求逆/点加 Triple 保留。下列资源由实现中的 Lean 定理给出。

### 13.1 构造与公开接口

不新建布局，直接复用现有字段。实现定义：

```lean
def counterActiveXor (L : AdderLayout) (target : Wire) (i : Nat) : Program :=
  compareLtConst none L.x L.y L.carry L.cin target (i+1) ++ [.X target]
```

阶段为装入 i+1、比较并清进位、卸载常数、翻转 target。比较器内部取反 y/cin，计算进位并读取比较结果，测量擦除后还原 y/cin。out 全程不访问。

| 阶段 | x | y | carry/cin | target |
| --- | --- | --- | --- | --- |
| 入口 | K | 0 | 0/false | T |
| 常数装载后 | K | i+1 | 0/false | T |
| 比较并卸载 | K | 0 | 0/false | T XOR [K<i+1] |
| 最后 X | K | 0 | 0/false | T XOR [i<K] |

公开规格：

```lean
theorem counterActiveXor_spec (L : AdderLayout) (target : Wire)
    (hnd : (target :: L.wires).Nodup)
    (hw : L.width=10) (K i : Nat) (T : Bool)
    (hi : i<512) :
    {{ target=T, L.x=K, L.y=0, L.cin=false, L.carry=0 }}
      counterActiveXor L target i
    {{ target=(T ^^ decide (i<K)), L.x=K, L.y=0,
       L.cin=false, L.carry=0 }}
```

删除 high、low、hout、差值范围前提和 out=0 断言。仅保留 i<512 与 width=10，保证 i+1 可表示；不额外约束 K。512仍可由十位寄存器表示。另有同一前置条件下所有 w≠target 逐线保持的 frame 定理，L.out 由该定理保持，不要求初值为零。调用方从原全局 Nodup 推导所需子视图。

### 13.2 支持集与证明义务

复用 compareLtConst_spec，再顺序组合 X target，覆盖所有测量记录的相位恢复。实际支持集精确为 `(target::L.cin::(L.x++L.y++L.carry)).toFinset`；compareLt_wires 在等长时包含空宽情形，不另设空宽分支。不能保留旧整个 AdderLayout 支持集等式，亦不添加无用门凑支持。

Kaliski 的 comparator.out 是计数器另一银行 L.k；减半层 counter 也借用已有计数银行。在同一完整 inverseLoop 中，该银行仍被 counterInc/Dec 使用，新组合支持证明确认 kaliskiRound_wires 和 inverseLoop 的5,955根静态线路不变。halveInPlace_wires 已重述为不含 counter.out 的精确集合。支持范围和分配布局分开陈述，不重新分配线路。

### 13.3 成本推导

宽度 n 的活动比较从2n Toffoli/2n测量变成n/n；常数装卸与末尾 X 不增加这两项成本。

- Kaliski 正轮、逆轮各调用一次，各512轮：十位比较共省10,240/10,240。
- 减半轮、恢复轮各调用两次，各512轮：共省20,480/20,480。

§13 阶段完整 inverseLoop/fieldInverse 各省30,720：当时结果 **5,596,208 Toffoli /2,167,856测量**。半倍单轮结果3w+20 /2w+19；Kaliski正逆轮结果18w+33 /6w+30。pointAddOut结果28,567,700（省61,440）；controlledPointAdd结果57,135,925（省122,880）。这些阶段值已由 Lean 对同一门列证明，当前值已由§14进一步降低，不从 PR C/D 已使用比较器的部分重复扣减。

### 13.4 删除范围与交付证据

删除无外部调用的 borrowXor、constantBorrowXor、私有 BorrowValues 及专用辅助证明、constantBorrowXor_wires；不保留同体转发层。§13 当时仍被记录段调用的 subtraction_high 移为 RecordRound 私有引理；§14 已删除该引理并替换记录段。Borrow/BorrowFrame 仅保留必要的活动比较入口和规格/frame/资源证明。KaliskiRound 与 HalveInPlace 调用方适配新参数；更新相关 RoundResources、HalvingLoop、inverse/point-add 支持与资源定理，不改 Lamport 的 Modular/Multiply/Field 实现。

§13 完成时 recordRound 是“复制 u→sub→recordCase→sub→清复制”，需要比较位在 recordCase 期间存活。两次完整 compareLt 仍为2w，不能声称省w；后续构造及实现见§14，收益不计入§13。

verify.sh 当前没有 Borrow 条目，本批不新增三个旧 Borrow 规格入口；沿用完整构建与已有公开入口的传递公理白名单检查。本实现同步 README、PROOF_STATUS（含旧 borrowXor 对照措辞）、PROVENANCE 与本计划。无测试、无新公理、无证明资源放宽，不新增通用状态框架。


## 14. 改 4 后续：记录段直接受控比较（已实现）

基线为 main 722a9078（PR 20）。本节构造和资源均已实现并证明；该阶段受控点加为56,083,253 Toffoli，当前值由§15进一步降低。§13.4 所称“融合”可以在现有模块的组合层完成，无需为比较链增加回调接口。

### 14.1 门列与寄存器契约

令 `u=L.u`、`v=L.v`、`carry=L.data.reg .carry`、`cin=L.cin`，以及 `a=L.active`、`o=L.oddWork`、`b=L.bothWork`、`sw=L.swap`、`su=L.subtract`。recordRound 采用以下固定门列：

```lean
[.CCX a u.head! o, .CCX o v.head! b,
 .CX b su, .CX o sw] ++
compareLt (some b) v u carry cin sw ++
[.CCX o v.head! b, .CCX a u.head! o]
```

设 O = A ∧ odd(U)，B = O ∧ odd(V)，Q = [V<U]。公开记录契约为：

```text
{{ u=U, v=V, active=A, swap=S, subtract=D,
   oddWork=false, bothWork=false, carry=0, cin=false }}
  recordRound L
{{ u=U, v=V, active=A,
   swap=S XOR O XOR (B AND Q), subtract=D XOR B,
   oddWork=false, bothWork=false, carry=0, cin=false }}
```

前提使用现有 `L.wires.Nodup`。u/v/carry 同宽且非空，由布局构造提供；寄存器断言已经保证 U/V 可表示，不增加有符号差范围条件。S、D 可以为任意初值；除 swap/subtract 外所有线逐线保持。y/out 从未使用，允许任意初值。原 round/unround 的状态契约由同一逐线正确性结论接回，保持公开功能陈述。

| 阶段 | u,v | o,b | sw,su | carry,cin |
| --- | --- | --- | --- | --- |
| 输入 | U,V | 0,0 | S,D | 0,0 |
| 两个 CCX 保存奇偶条件 | U,V | O,B | S,D | 0,0 |
| 两个 CX 写记录 | U,V | O,B | S XOR O,D XOR B | 0,0 |
| 受控比较完成 | U,V | O,B | S XOR O XOR (B AND Q),D XOR B | 0,0 |
| 两个 CCX 清条件 | U,V | 0,0 | 同上 | 0,0 |

比较期间 u 暂时取反；保存条件先于比较，清条件晚于比较完全恢复 u/v，不能跨过这两个边界移动 CCX。实现复用 `compareLt_correct` 的逐线保持与全测量记录相位结论，其受控寄存器接口与 `maskedCompareLt_spec` 一致。进位只由原 compareChain 内部按已证顺序擦除。o/b 使用普通 CCX 清理，未引入新的测量擦除条件。A=false 时两个记录保持，但比较的固定门列仍执行，不能按活动概率折扣资源。V=U 时 Q=false，严格比较方向与原借位语义一致。

同一前向 recordRound 在恢复 U/V/A 后再次运行，即对任意 S/D 清除先前 XOR 的记录；不倒放含测量的比较器。

### 14.2 成本与实际支持集

四个条件 CCX 加一次受控比较 w+1，共 **w+5 Toffoli / w 测量**；旧值为2w+5 /2w。新支持集精确为：

```text
{active, swap, subtract, oddWork, bothWork, cin} ∪ u ∪ v ∪ carry
```

共3w+6线（全局 Nodup，w≥1）。记录段不再触碰 y/out；完整 round 中这些线仍供算术体使用，分配布局不缩减。已重新证明完整轮及逆循环支持，不由布局容量推断 qubitCount。

以下均为本节同一门列的**Lean 已证资源**，只扣记录段的新增节省，不重扣§13收益，不包含改5或 PR C/D：

| 模块 | Toffoli | 测量 | 静态线 |
| --- | ---: | ---: | ---: |
| recordRound（w=257） | 262 | 257 | 777 |
| Kaliski 正/逆单轮 | 17w+33 = 4,402 | 5w+30 = 1,315 | 2,104 |
| inverseLoop | 5,333,040 | 1,904,688 | 5,955 |
| fieldInverse | 5,333,040 | 1,904,688 | 6,211 |
| pointCandidateCompute/Clear 各 | 14,019,400 | 8,226,888 | 沿用既有布局，支持已证明不变 |
| pointAddOut | 28,041,364 | 16,453,776 | 74,020 |
| controlledPointAddOut | 28,041,370 | 16,453,776 | 74,024 |
| controlledPointAdd | 56,083,253 | 32,907,552 | 74,024 |

每个求逆512正轮+512逆轮，故各省1024×257=263,168。每个 pointCandidateCompute/Clear 各一次求逆，pointAddOut 两次，controlledPointAdd 四次，分别各省263,168、526,336、1,052,672。第二阶段减半不变。

### 14.3 实现范围与验收

- KaliskiRound：替换记录门列；删除无调用的 caseLayout 视图及 CaseRecord import。
- RecordRound：改为上述寄存器 Triple 与 frame，再接原 recordState/轮契约；删除 subtraction_high、差值中间状态以及仅服务旧 caseLayout 的辅助引理。全仓库扫描确认 CaseRecord 无其它调用，已删除文件（无显式构建入口），不保留旧包装层。
- RoundResources/RoundWires：更新记录段公式、精确支持及组合证明；顺序传播 inverse/point-add 的资源常数。保持字段布局、求逆与点加功能接口；不动 Lamport 的 Modular/Multiply/Field 门列。
- README、PROOF_STATUS、PROVENANCE、REWORK_PLAN：实现完成后同步实际状态及公理输出；目标数在证明通过前不写为已实现。§12的 PR D 集成预算由 Lamport 在接入时按最新求逆数重算。
- 验收逐项检查功能、同一门列、全测量记录相位、全部工作位清理、实际支持集/资源、可读性、无过度抽象、README同步；完整 scripts/verify.sh 新增记录段 Triple、frame 与三项资源入口，共145项公开入口公理白名单检查；无测试、新公理或证明资源放宽。设计复审通过后完成实现。


## 15. 改 5 实施设计：测量清零检测与原地受控加减（已实现）

设计基线main 38c8fbba，改5前受控点加56,083,253 Toffoli；设计PR23合并后实现基于main 7cc7947c。以下成本均由同一门列的Lean定理证明，README Current status已同步。本次原地替换零检测门列，并改变Kaliski单轮的两次受控算术；等常量检测及点加标志同步传播。原记录段、移位、数据交换、计数、第二阶段减半均保持。

### 15.1 零检测：计算AND链，读结果，再测量清链

原地替换 `zeroControlled`，保持名称、公开规格和 `ZeroBit` 接线，不保留重复公开入口。所有调用方共用测量清链实现；`equalConstant` 的常数装卸不变，每次n位检测从2n/0变为n/n。

```lean
-- q = c AND NOT input
negAnd c input work := [X input, CCX c input work, X input]
-- work=q，先把input取反，使CZ作用于计算q时的两个因子
negAndErase c input work :=
  [X input, measureX work [] [CZ c input], X input]

zeroControlled c target [] := [CX c target]
zeroControlled c target (b::bs) :=
  negAnd c b.input b.work ++
  zeroControlled b.work target bs ++
  negAndErase c b.input b.work
```

清理绝不是删除工作位：测量引入的相位为 `m AND c AND NOT input`，m=1时的CZ恰好补偿它；m=0无需修正。两个X让原始input最终恢复。该局部证明可按现有andComputeErase模型直接证明，但不能把“计算后立即擦除”的现成定理直接套到夹有递归读出的一整段。

公开契约（inputs/work为bs逐项的输入/工作线列表）：

```text
{{ c=C, target=T, inputs=X, work=0 }} zeroControlled c target bs
{{ c=C, target=T XOR (C AND [X=0]), inputs=X, work=0 }}
```

前提 `(c::target::bs.flatMap ZeroBit.wires).Nodup`；另有除target之外逐线保持的frame。结果对所有测量记录保持相位，T任意。空列表执行CX，零位整数X=0，资源0/0/2；不为空时n位资源为n Toffoli/n测量/2n+2线，支持与原零检测一致。

| 阶段 | 输入位 | 当前链位 | 目标 | 后续链工作位 |
| --- | --- | --- | --- | --- |
| 进入当前层 | I | 0 | T | 全0 |
| negAnd | I | q=C AND NOT I | T | 全0 |
| 递归检测完成 | I | q（保持） | T XOR (q AND 尾部全零) | 全0 |
| negAndErase | I（先反再恢复） | 0 | 保持 | 全0 |

递归frame保证input和当前层控制都未被尾部改变，因此测量擦除前的AND关系仍成立。正轮/逆轮均执行这个前向程序；不倒放测量门。C=false时固定门列照常执行，只是target不变，不能据此折扣门数。

### 15.2 受控加减：复用已有maskedAddInPlace/maskedSubInPlace

保留 `inplaceArithmetic L f g c negative` 的调用形状，内部改为以下组合。f/g为不同的数据字段（u/v/r/s），t使用现有y寄存器，进位链用carry的前w−1位；w≥1。最高carry仍留给记录比较器使用。

```lean
src := L.reg g
t   := L.reg .y
dst := L.reg f
chain := (L.reg .carry).take (L.width-1)
if negative then maskedSubInPlace c src t dst chain L.cin
else maskedAddInPlace c src t dst chain L.cin
```

每个入口已经定义为“受控复制src到t；原地加/减t到dst；再次受控复制清t”。不再接exchangeRegisters，也不生成out。复用现有maskedAddInPlace_spec / maskedSubInPlace_spec，不新增第二套受控加法器。

公开寄存器契约如下，N=2^w：

```text
{{ c=C, src=S, dst=D, t=0, chain=0, cin=false }}
  maskedAddInPlace ...
{{ c=C, src=S, dst=(D + if C then S else 0) % N,
   t=0, chain=0, cin=false }}

减法后置：dst=(D + N - (if C then S else 0)) % N；其余相同。
```

| 阶段 | src | t | dst | chain/cin |
| --- | --- | --- | --- | --- |
| 输入 | S | 0 | D | 0/false |
| 受控复制 | S | C?S:0 | D | 0/false |
| 原地算术 | S | C?S:0 | D ± (C?S:0) mod N | 0/false |
| 同一受控复制清t | S | 0 | 保持 | 0/false |

src与控制在中间原地算术完成后仍保持，因而最后的复制能清t。内部进位沿原addInPlace已证顺序，在覆盖对应目标位之前擦除；不新增测量反计算t。两次受控复制各w Toffoli，算术w−1 Toffoli/w−1测量，合计3w−1 /w−1。已补maskedInPlace_wires的非空同宽精确支持等式，并用于轮内并集。

`RoundFrame.inplace` 仍给出原字段更新和外部frame；删除只因旧out中转而存在的前提/辅助引理，不保留虚假的out=0依赖。out现在逐线保持任意初值。正逆体的数学范围条件仍按原算法保留，不用模算术结果掩盖无溢出/无借位的上层要求。原完整轮工作位清零契约保持。

### 15.3 具体资源与静态支持

| 单轮组成 | Toffoli | 测量 |
| --- | ---: | ---: |
| 已实现记录段 | w+5 | w |
| 算术体：交换4w、算术2(3w−1)、移位2w−2 | 12w−4 | 2w−2 |
| 计数移动 | 20 | 20 |
| 新零检测 | w | w |
| 活动比较 | 10 | 10 |
| 合计（正逆相同） | 14w+31 | 4w+28 |

相对17w+33 /5w+30，每轮省3w+2 Toffoli及w+2测量；w=257即773/259。512正轮+512逆轮，每次求逆共省791,552/265,216。记录比较的§14收益不重复计算。

| 模块 | Toffoli | 测量 | 实际静态线 |
| --- | ---: | ---: | ---: |
| 单轮（w=257） | 3,629 | 1,056 | 1,847 |
| inverseLoop | 4,541,488 | 1,639,472 | 5,698 |
| fieldInverse | 4,541,488 | 1,639,472 | 5,954 |
| pointCandidateCompute/Clear各 | 13,227,848 | 7,961,672 | 原组合支持保持 |
| pointAddOut | 26,457,236 | 15,924,368 | 74,020 |
| controlledPointAddOut | 26,457,242 | 15,924,368 | 74,024 |
| controlledPointAdd | 52,914,997 | 31,848,736 | 74,024 |

点加标志的compute/clear各调用两次256位equalConstant，各从1026/0变为514/512；pointAddOut合计另省1024 Toffoli、增加1024测量，controlledPointAdd再乘二。pointCandidateCompute/Clear各自的求逆收益不变。safeDivisor的门列只有X、CX及受控复制，没有零检测调用，其256/0成本保持；标志正确性和安全除数的组合证明须适配新的测量记录分段，不能继续假定等常量检测无测量。

通用inverseLoop已证公式为1024(17w+51)+60w−12 Toffoli、1024(6w+47)+48w测量，线数18w+1072（同宽/固定512轮条件不变）。这不是“与改2/3叠加后的15M”；其它调用结构保持当前实现。

空间减少来自原RoundField.out不再被任何Kaliski门触及：单轮从8w+48变为7w+48。对N>0的循环、求逆准备/恢复和完整逆元，新的usedWires排除这w根线；循环空列表仍保留原空程序分支。布局分配暂不重排，完整功能规格可继续要求原工作区初值为零并恢复为零，但qubitCount必须由实际支持得出。

poolInverse仍沿用原编号与5699位分配前缀，其中第一阶段out对应偏移10+8i（0≤i≤256）的257根线不执行，实际工作支持5442根。已将原“等于整个5699前缀”的支持引理改为poolInverseUsedWork显式排除这些位置的精确列表；不能声称布局已压紧。点加共享池仍由旧模乘占满，失去的求逆支持仍被模乘覆盖，所以点加静态线数不减少。完整支持等式已重证；另给原池前缀的包含关系供上层组合，未把包含关系作为精确支持。

### 15.4 文件归属、证明交付与边界

- ZeroControl原地替换门列：局部负AND擦除引理、递归correct、现有寄存器Triple/frame、计数和精确支持。EqualConstant与PointFlagProof适配任意测量记录及顺序分段；PointFlagResources同步n/n成本。SafeDivisor门列和成本不变，检查上层安全除数组合证明。
- RoundFrame/RoundBody：接入现有原地受控算术、必要的子布局/Nodup/帧证明；保持正逆体数学更新。InPlaceAdder只补确有组合用途的资源/精确支持引理，不改已有原语门列。
- KaliskiRound与相关Controls/Resources/Wires/Loop：保留零检测调用名称，传播新测量分段、算术资源和新usedWires；RecordRound门列不改。直接复用data.reg .carry，不另建布局抽象。
- InverseLoopSupport/Resources、InverseResources/Ports、PointCandidateSupport及点加资源：传播实际支持、公式与精确数；不改求逆/点加数学接口，不重排池编号。
- 不编辑Lamport的Modular/Multiply/Field门列，不接手改2适配器，不依赖Horner或模加核。verify.sh新增七项公开检查，共164项；其余沿用传递公理检查。
- 实现PR同步README、PROOF_STATUS（实际公理输出）、PROVENANCE与本计划；实现已同步实际值。完整scripts/verify.sh、独立八项复审和最终head hosted CI按既有规则执行；无测试、新公理、native_decide或证明资源放宽。设计八项通过后完成实现。

## 16. 改 3 实施设计：除法中心的受控原地点加（已实现）

本节替代 §4 的早期预算与未细化门列。只替换 `controlledPointAdd` 的有限常量分支，保留它的公开寄存器规格、`ControlledPointLayout` 类型以及 `C=O` 时的空程序。`pointAddOut` / `controlledPointAddOut` 的任意输出 XOR 功能不同，继续保留；新的原地程序不再调用它们，不再用临时点交换清理。此处不新增无控制原地点加入口。

依据为 main `5560c9cf` 的 `InverseCompute` / `InverseLoopSpec` / `InversePorts` / `ModInPlaceWrappers` / `ModInPlaceSubtract`，以及 C2 PR 26 `d3d8b0c0` 的 Horner 内核和 D PR 27 `2ca88e5f` 的 `MulAdapterLayout` / `MulAdapterResources` 门列。已直接核对 D 的源代码；D 已合并到 main `25837f26`，后续实现以此为基线。下列门列、完整Triple、逐线保持、门数和实际支持均已由Lean证明，公共入口已切换，README Current status同步本提交。

### 16.1 公开契约与分支

继续证明原来的最终陈述：

```text
{{ L.control=b, L.point=R, L.work=0 }} controlledPointAdd L C
{{ L.control=b, L.point=(if b then R+C else R), L.work=0 }}
```

只需原来的 `L.Widths`、`L.wires.Nodup` 与合法 `Point`；不增加 `R≠±C`、`cy≠0`、`C+C≠O` 等前提。全部低位域寄存器始终解释为 `[0,p)` 的规范代表；模运算的高位在模块边界为零。Triple 对任意初始相位、所有测量记录成立，另证目标外逐线保持。非法点位串不增加新承诺。

以下固定有限 `C=(cx,cy)`、n=256。令 `χ = decide (cy ≠ -cy)`，是构造期常量。七个工作标志直接借现有字段：

| 名称 | 现有字段 | 初始计算后的含义 |
| --- | --- | --- |
| o | `L.infinitySelect` | b ∧ [R=O] |
| d | `L.doubleSelect` | b ∧ χ ∧ [R=C] |
| i | `L.genericSelect` | b ∧ [R=−C] |
| g | `L.core.generic` | b XOR o XOR d XOR i |
| e | `L.core.equalX` | 初始零；第二除法前 g ∧ [当前 x=0] |
| q | `L.core.equalNegY` | 初始零；第二除法前 g XOR e |
| h | `L.core.double` | b ∧ χ |

`χ=false` 时 C=−C，d 恒零，o/i 仍互斥；无需先证明曲线没有二阶点。`χ=true` 时 O/C/−C 互异。由同横坐标点为相同点或相反点，g 恰为 `b ∧ finite(R) ∧ [x_R≠cx]`。

定义编码整数 `enc(P)=finite(P)+2·x(P)+2^(n+1)·y(P)`，对应现有 `finite::x++y` 的 2n+1 位顺序。输入标志用三次现有 `equalConstant`：`EQ(b,R,O)→o`、`EQ(h,R,C)→d`、`EQ(b,R,−C)→i`。每次工作链 2n+1 位，成本 `(2n+1,2n+1)`。h 用构造期选择的一个 CX 或空段装入，g 用四个 CX 装入。整个过程中 b 与 h 保持。

### 16.2 除法：在保留的求逆历史中使用逆元

已实现直接寄存器布局 `DivideLayout`：控制 c，n 位分母 D、分子 E、累加器 Z，以及一个现有 `InverseLoopLayout I`。I 的完整分配线作为工作区，包含仅为兼容旧布局保留的未使用输出；布局全局互异。两次调用共用同一 I。只给实际所需的两个入口，不建立可传任意回调的“求逆框架”。

```text
D<p, E<p, Z<p, c=true → D≠0
{{ c=B, denominator=D, numerator=E, acc=Z, work=0 }} divideAdd/sub
{{ c=B, denominator=D, numerator=E,
   acc=(if B then Z ± E/D else Z) mod p, work=0 }}
```

负号表示域减法的规范代表。分母和分子始终保持，累加器可为任意规范值；不是仅在零目标上成立。`divideSub` 不是倒放 `divideAdd`。

| 段 | 字面组合 | 边界寄存器 |
| --- | --- | --- |
| 1 | 在 `I.first.v` 低 n 位执行 `X v₀; CX c v₀; copyRegister (some c) D vLow`；装常数 u=p、s=1 | v=Dsafe=(B?D:1)，r/k/记录/工作零 |
| 2 | `inverseCompute I p` | a=Dsafe⁻¹，`InverseHistory I p Dsafe` 保留；temp/算术区零 |
| 3 | `montP`，源为 a 与 E，保留MontPrepared | Zprod=E·a mod p；a/E/求逆历史保持 |
| 4 | `controlledModAdd c` 或 `controlledModSub c`，源Zprod，目标Z | 只有 Z 的规范值改变 |
| 5 | `montQ`，仍用a/E与MontPrepared | 两段累加器、历史及整个乘法工作区清零；a/求逆历史原样 |
| 6 | `inverseUncompute I p` | 恢复 u=p、v=Dsafe、s=1；a 与所有记录/临时位清零 |
| 7 | 卸 u/s；执行 `copyRegister (some c) D vLow; CX c v₀; X v₀` | v 与整个工作区清零 |

选择除数直接写入 Kaliski v，不保留另一个 Dsafe 字。第 7 段的 D 必须仍是第 1 段的值；调用方在整个除法期间不得改 D。即使 B=false，也实际执行 512 轮准备、乘法与恢复，只以安全分母 1 运行并抑制中段累加。

`inversePrepare_spec` / `inverseRestore_spec` 已公开的历史断言正好允许第 3–5 段：只借 `I.temp ++ I.arithmetic.wires`，它们在准备后全零，且不在 `InverseHistory` 中。不借用仍存活的 a、u/v/r/s/k 或记录带。恢复前用适配器 frame 和全部 scratch=0 重新建立同一个历史断言。a 的第 n 位由逆元范围为零，源取低位无需复制逆元。

准备/恢复的Toffoli/测量总和仍为 I_T=4,541,488、I_M=1,639,472。中段采用§17已证受控Montgomery适配器，包含完整准备与清理。

| 模块 | Toffoli | 测量 | 改6a前阶段值 |
| --- | ---: | ---: | --- |
| divideAdd | 4,541,488+380,959+512 = 4,922,959 | 1,639,472+380,447 = 2,019,919 | 5,722,415 / 2,557,231 |
| divideSub | 4,541,488+381,471+512 = 4,923,471 | 1,639,472+380,959 = 2,020,431 | 5,722,927 / 2,557,743 |

最后的 2n 是两遍受控除数复制，X/CX 不计 Toffoli。该布局已证静态支持为 `I.usedCoreWires ∪ D ∪ E ∪ Z ∪ {c}`，即 5,441+3n+1=6,210；两种符号均已直接证明门列支持等式；使用 `inverseCompute_wires` 的实际核心支持，没有从 `inverseLoop` 整段支持等式直接删输出。

### 16.3 原地普通分支的逐步寄存器表

λ 取 `L.core.slope.take n`，初始零。以下表中的减法、加法均在 Fp 中；仅值表假定 g=true。非普通分支由 λ=0 不变量保持，下文单独说明。

| 步 | 门列组合 | x、y、λ 与临时值 |
| --- | --- | --- |
| 1 | 受 g 控制的常数模加 −cx、−cy | x=D=x_R−cx，y=E=y_R−cy，λ=0 |
| 2 | `divideAdd(g,x,y,λ)` | λ=E/D，除法工作区零；x/y 保持 |
| 3 | `montMulSub(λ,x,y)` | y=E−λD=0 |
| 4 | CX 复制 λ 到独立 n 位 S | S=λ；不将同一物理字接到两个乘数口 |
| 5 | `montMulSub(λ,S,x)`；同一 CX 清 S | x=D−λ²；S和Montgomery工作区归零，λ 保持 |
| 6 | 受 g 控制的常数模加 3cx | x=D−λ²+3cx=cx−x₃ |
| 7 | `montMulAdd(λ,x,y)` | y=λ(cx−x₃)=y₃+cy |
| 8 | `zeroControlled g e` 检测当前 x；两 CX 写 q=g XOR e | e=g∧[x=0]，q=g∧[x≠0] |
| 9 | `divideSub(q,x,y,λ)` | q=true 时 λ=0；否则 λ 保持 |
| 10 | `maskedConstant e λ λ*` | λ=0，包含 x=0 的例外 |
| 11 | 两 CX 清 q；同一 `zeroControlled g e` 清 e | x/g 未变，e=q=0 |
| 12 | §16.4 的受控原地取负 x；受 g 控制的常数模加 cx；受 g 控制的常数模加 −cy 到 y | x=x₃，y=y₃，λ 与所有算术工作零 |

数学核为现有 `genericSlope` / `genericX` / `genericY`。除法1后 `λD=E`；第7步等式由 `y₃=λ(x_R−x₃)−y_R` 推出。第9步的除数是**当前 x=cx−x₃**，不是输入横坐标或 x₃ 本身。

令 `R*=−(C+C)`，`λ* = genericSlope (pointX R*) (pointY R*) cx cy` 的规范域值；坐标在 R*=O 时按已有编码取零，域除法全定义。只需证明以下**带普通分支前提**的引理：

1. g=true 且当前 x=0 ⇒ R+C=−C ⇒ R=R*。
2. 此时 R* 有限且 `x(R*)≠cx`，故 λ=λ*。
3. g=true 且当前 x≠0 ⇒ y/x=λ。

第1点用有限点同 x 时等于 C 或 −C；R+C=C 将推出 R=O，与普通分支矛盾。若 R* 为 O，或其横坐标等于 cx，该异常分支本来不可达；**不为定义 λ* 添加新的用户前提**。

当 g=false，第1步常数源为零，除法1不写 λ，故 λ 一直为零；第3/7步乘积为零，第4–6步平方为零，e=q=false，除法2不写 λ，受控取负和常数加亦保持 x/y。因此不需要给外部两个乘加/乘减或平方新增受控版本；它们仍执行完整固定门列并清工作区。

### 16.4 只组合已有原语的常数加与取负

受 g 控制的常数模加 k：在干净 n+1 位 A 上用 `maskedConstant g A (k mod p)` 装载，调用无控制 `modAddInPlace(A,z)`，再同一 maskedConstant 卸载。A 与核 constant 必须不同；成本 `4n−1 / 4n−1`。五次调用为 −cx、−cy、3cx、cx、−cy，负常量先在构造期归一化。不要误用模 2^n 的 `maskedAddConst` 当模 p 加法。

取负只需一个私有阶段，不新增通用单目接口：

```text
T=0;
controlledModSub g (source=x, target=T);       -- g ? -x : 0
swapRegisters g x T.low;                    -- n 个 cswap
controlledModAdd g (source=x, target=T);      -- g=true 时 T=旧x+(-旧x)=0
```

结果为 `x=(if g then -旧x else 旧x)`，T/scratch 全零。覆盖 x=0，故不把 `negRaw` 的 0→p 误当规范取负。成本 `(8n−1)+n+(6n−1)=15n−2` Toffoli，`(6n−1)+(4n−1)=10n−2` 测量。所有交换都用现有 `cswap` 的 CX/CCX/CX 门列，只交换低 n 位，两个独立高位在边界均零。

### 16.5 角落写回与输出侧清标志

普通阶段完成后，三个角落标志仍保存输入分类。按 o、d、i 分别执行 `maskedPointConstant` 的常量差：

- o：`enc(O) XOR enc(C)`；
- d：`enc(C) XOR enc(C+C)`；
- i：`enc(−C) XOR enc(O)`。

这是对现有点编码的 CX/XOR 写回，零 Toffoli/测量；三个标志互斥。此时点已为 `R'=(if b then R+C else R)`。先用 `CX b g; CX o g; CX d g; CX i g` 清 g，再用输出做三次相等检测 XOR 清 o/d/i：

```text
EQ(b, R', C) → o
EQ(h, R', C+C) → d
EQ(b, R', O) → i
```

最后按装载方式清 h。关键证明是平移的单射性，且每个输出谓词都含 b 或 h：`b∧[R'=C] = b∧[R=O]`、`h∧[R'=2C] = h∧[R=C]`、`b∧[R'=O] = b∧[R=−C]`。当 C=−C 时 h=false，第二个检测仍执行固定门列但结果恒零；不会把输出 O 同时解释成两个输入分支。b=false 时三个标志保持零，即使输入恰为 C/2C/O。

每次 `equalConstant` / `zeroControlled` 用已证的测量清 AND 链，并以新测量记录运行第二遍；并非“逆转首次测量”。各阶段 frame 证明确保条件在重算前未变。六次完整点相等检测总成本为 `6(2n+1)` Toffoli 与相同测量。

### 16.6 物理映射、存活寄存器与静态支持

不更改 `ControlledPointLayout` 类型。设 `w=L.core.poolWire`，取现有 `poolInverse w L.core.divisor L.core.inverse` 的 inner 为 I。此处外部 divisor/inverse 两字只是复用旧视图的布局占位，**不执行 fieldInverse、inverseLoad 或输出复制**；选择除数直接写 v。布局互异仍由已有全局 `Nodup` 推出，未触及位以 frame 保持零。

由 `InversePorts` 的现有编号，I 在准备/恢复中实际使用的池位是：

```text
U = {0,…,5697} \ {10+8j | 0≤j<257}      -- 5,441 位
```

被排除的是第一阶段 out 银行，另一个旧输出高位 5698 也不用。`I.a` 是 5184…5440；可借的清零区固定为

```text
B = [5441,…,5697] ++ [3126,…,5183]       -- temp ++ arithmetic，2,315 位
```

B 是有顺序的物理线列表，不是新分配。下表区间为 B 的半开索引；所有子段开始/结束时所用 B 均为零，除平方中的S在复制后至清理前存活。

| 用途 | 对 B 的具体分割 |
| --- | --- |
| 除法乘加 | x=I.a；y=分子；out=λ++[B[0]]；Montgomery工作区=B[1:1828] |
| 外部乘加/减 | x=λ++[B[0]]；y=当前点 x；out=点 y++[B[1]]；Montgomery工作区=B[2:1829] |
| 平方与减平方 | S=B[0:256]；λ高位=B[256]；点x高位=B[257]；Montgomery工作区=B[258:2085] |
| 常数模加 | A=B[0:257]；目标高位=B[257]；scratch=B[258:1030] |
| 受控取负 | 点x高位=B[0]；T=B[1:258]；scratch=B[258:1030] |
| 完整点相等 / x零检测 | 分别用 B[0:513] / B[0:256] 作清零检测链 |

常数加/取负的772位scratch仍按constant(257)、carry(256)、cin(1)、mask(257)、flag(1)排列。Montgomery的1827位工作区按§17既有poolMul布局映射到B的连续片段，由borrowedMont_prefix证明精确子列表。平方S与输入/输出高位和工作区互异；λ从复制到清S期间保持。必须先完成montMulSub并清S，再调用+3cx：常数加的A=B[0:257]与S重叠，故不能提前执行。Q只消费保留的输入与MontPrepared，不读取新点x；完整平方frame证明S和借用区恢复。除法期间只借B，不借仍存活的求逆历史。所有互异均由子列表/计数与全局Nodup证明。

完整有限 C 程序已证支持为

```text
pointWires L.point ++ [L.control] ++ L.core.slope.take 256
  ++ [o,d,i,g,e,q,h] ++ map w U
```

长度 `513+1+256+7+5441 = 6,218`。`pointInPlaceGeneric_wires`由两次除法与零检测给出普通分支精确支持；`pointInPlaceFinite_wires`再组合完整点检测、标志与角落写回证明双向包含，最后以Nodup得到qubitCount。所有 B 已包含于 U，不再次计数。

D 将旧共享池分配改为 5,699 位后，原公共布局仍分配 9,817 位（包括保留给 XOR 点加的临时点与旧字段）；新原地程序实际使用 6,218 位，余位保持。**不把 6,218 称为布局分配数，也不把旧“≈5k”称为已达到。** 若未来要删除这些兼容布局位，是独立接口清理，不在本项增加新布局类型。C=O 时为空程序，三项资源仍全零。

### 16.7 完整门数账本

n=256，固定求逆轮宽w=257；五个适配器均已含输出累加中段，不另计中段。

| 项 | 次数/组成 | Toffoli | 测量 |
| --- | --- | ---: | ---: |
| 求逆准备+恢复，不含乘积与除数选择 | 2 | 9,082,976 | 3,278,944 |
| 五个完整Montgomery适配器 | 受控加/减、普通减两次、普通加一次 | 1,904,795 | 1,903,259 |
| 受控常数模加 | 5×(4n−1) | 5,115 | 5,115 |
| 受控规范取负 | 15n−2 / 10n−2 | 3,838 | 2,558 |
| 除数选择与清除 | 两次除法各2n | 1,024 | 0 |
| 第二除数为零的标志计算/清除 | 2n | 512 | 512 |
| 输入/输出完整点相等检测 | 6(2n+1) | 3,078 | 3,078 |
| 其余常量、标志、平方复制/清S及角落写回 | X/CX | 0 | 0 |
| **受控原地点加（已证）** | **2I + 1,904,795 + 13,567** | **11,001,338** | **5,193,978** |

实际支持仍为6,218：B完全包含于求逆的既有5,441位支持，扩大乘法借用片段不新增支持线。改3阶段为14,998,618/7,880,538；改6a阶段减少3,198,560 Toffoli、3,224,160测量；改7再各减130,560。C=O为空程序。

### 16.8 证明与交付切分

1. **数学 PR（引理已实现）**：`Math/PointInPlace.lean` 已按现有群律/`AffineFormula` 证明有限点分类、三个输出侧等价谓词、普通分支的坐标等式和 λ* 例外。不引入群阶/无二阶点假设；每个引理直接服务上述一个清理步骤。可在 D 集成期间完成。
2. **除法 PR（已实现，基于 D 接口）**：`DivideLayout`、两条直接门列、准备/恢复之间的 frame、两种累加规格、资源与实际支持。受控中段以现有 C1 原语组合，不要求 Lamport 增加受控乘法入口。复用准备/恢复规格共用的 `inverseCompute_values` 与 `InverseMiddle`，以原生历史断言组合完整规格；实际核心支持复用 `inverseCompute_wires`，未改求逆算法。
3. **原地点加 PR（已实现，依赖 D、数学与除法）**：增加 Point 的直接子视图、常数/取负阶段与本体证明，替换 `ControlledPointLayout.lean` 中 `controlledPointAdd` 的有限分支及它的 Spec/Resources/Support。删除只服务旧“两个受控 XOR + swap”原地证明的私有组合；仍服务 XOR 接口的 PointCandidate/PointAdd/ControlledPointOut 证明保留。最终公共 `controlledPointAdd_spec` 的输入输出陈述不变。

以上为改3阶段的交付切分；改6a集成由Lamport统一修改Divide/Point文件，Deutsch已确认接口与生命周期。数学与接口的逻辑依赖仍按上述顺序列出。

每批完整 `scripts/verify.sh`、新增入口公理审计、实际输出同步 PROOF_STATUS，README 当前值只随相应实现更新。设计批仅做文档 diff 检查；后续数学与除法批已完成 Lean 证明，§16.3–16.7的原地点加本体、映射与总资源均已实现并接入公共入口。保留相位/全记录、完整工作区清理、逐线保持、同一门列计数和精确支持的八项复审；不加测试、新公理、反转测量或证明资源放宽。

<a id="montgomery-design"></a>

## 17. 改 6a：标准表示的四位窗口 Montgomery 设计（设计已复审，数学、lookup、P/Q与五个适配器已实现）

本节的48/48查表及资源表为改6a历史实现；改7方案1现已将lookup替换为14/14，当前门数见§18.8，原阶段构造和数字留作来源记录。


本节替代§7中未逐门展开的预算；只设计标准表示的模乘，不改点加算法或坐标表示。§17适配器和完整点加集成现均已实现，资源见§16.7与§17.5。研究背景为[Häner 等，2020](https://arxiv.org/abs/2001.09580)的窗口算术与清理调度；以下具体门列、宽度与数字由本项目现有原语推导，不引用论文门数作为本实现证据。暂不采用15-Toffoli查表、约2n受控加法或CCZ修正。

### 17.1 数学规格与范围

固定 n=256、B=16、L=64、R=2^256，p 为本项目 secp256k1 奇素数，W=n+5=261。外部 X<p、Y<R，与现有域乘法允许任意256位Y的契约一致。定义 d_i=(Y/16^i)%16，a_0=0，

- u_i=a_i+d_i X；m_i=u_i%16；
- t_i=(-m_i p⁻¹) mod16（逆元在模16下）；
- a_(i+1)=(u_i+t_i p)/16。

证明整除、0≤t_i<16、a_i<2p，以及
`16^i*a_i = X*(Y % 16^i) + p*Q_i`，其中 Q_0=0、Q_(i+1)=Q_i+16^i*t_i。
因此末次条件减p得到 A=XYR⁻¹ modp。界为 u_i<17p、u_i+t_i p<32p<2^261；**260位不足以承诺本门列无溢出**。每次右移之前低四位为零，右移之后高四位为零。

再以 A 的四位窗口和经典常数 K=R² modp 执行同样迭代，得到 Z=AKR⁻¹ modp=XY modp。第二段使用查表 d↦dK 替代四次受控变量加法；K<p。两段最终约减各保留一位借位历史，直到清理阶段。本实现利用已证 p % 16 = 15：15·15 ≡ 1 (mod 16)，因此 −p⁻¹ ≡ 1 (mod 16)，修正系数 t=m，查表直接给 m·p，无需运行时模逆。K=R² mod p 已定义为 montgomeryConversion；Math/MontgomeryConversion.lean 的 montgomery_two_stages 证明两段转换，MontPQ.lean 将其接入实际门列，不用外部数字证书或测试代替证明。

### 17.2 查表原语：固定16项，48个Toffoli

地址四线 b0..b3，目标W线，scratch三线 s0..s2，统一互异。对 j=0..15 **全部执行**（包括零表项）：

1. 对j中为0的地址位施X，得到四个匹配位；
2. `CCX b0 b1 s0; CCX s0 b2 s1; CCX s1 b3 s2`；
3. 对 table[j] 中为1的目标位施 `CX s2 target[k]`；
4. 依次测量清 s2、s1、s0，立即以对应两个控制位的CZ修正；
5. 还原地址X。

每个表项3 CCX、3测量，整表**48/48**，不做零表项优化。公开Triple：addr=D,target=T,scratch=0 → addr=D,target=T XOR table[D],scratch=0；相位对全部测量记录保持，目标外frame。再次执行同门列即可清零已装载的表值；这不是倒放测量记录。支持是地址、三scratch及表中出现1的目标位的并集，不能对任意表声称全W目标均触及。

### 17.3 工作区与每窗口门列

工作寄存器：A、Z各W位；hA、hZ各256位（每轮四位m）；fA、fZ各1位；table、mask各W位；carry共W−1位、cin一位；pad五位；lookup scratch三位。所有列表拼成一个Nodup前提，全部工作位初始零。外部x257位、y256位、out257位，x最高位因X<p为零并由frame保持。

第一段每轮按低窗口到高窗口：

1. 对j=0..3，用y[4i+j]控制 `maskedAddInPlace`，源是x低256位左移j的W位视图；零填充取pad的j个低位和5−j个高位，五条pad互异，无重复源线。现有同一原语每次3W−1 CCX、W−1测量，mask/carry/cin归零。
2. 四个CX把累加器低位复制到当前空hA窗口，保存m。
3. `lookup hA_i (m↦((-m*p⁻¹)%16)*p) table`；`addInPlace table A carry cin`；再次lookup清table。
4. 在W位累加器执行物理循环右旋四位（现有三CX交换组成，不能把寄存器改名当作已执行移位）。低四位已证为零，故数值是整除16。CCX/测量均为零。

第二段的步骤1替换为：lookup A的当前四位窗口查dK到table，加到Z，再lookup清table。其余步骤使用hZ/Z，门列相同。第一段A及hA/fA此时保留，第二段只读A。

每段末尾：装载p至table，W位subInPlace，卸载p；CX当前最高位到空f；`maskedAddConst f table acc carry cin p`。在a<2p与W=n+5下，减法最高位恰为借位，条件加回后得到a%p，acc高五位为零，f保留。普通常数装卸与条件常数装卸仅X/CX；两次算术合计2(W−1) CCX及测量。此时工作区中仅acc、历史m和f非零。

### 17.4 正向清理与适配器边界

清理不是把带测量的程序倒放。每段先撤销末次规范化：按f减p，复制当前最高位到f将其清零，再加p，得到原a<2p。随后i=63..0：

1. 物理循环左旋四位；由正向后置高四位为零，恢复约减前的和；
2. 用保存的m查t*p、subInPlace、再查清table；
3. 此时累加器恰为u，CX其低四位到历史窗口，清m；
4. 第一段按j=3..0执行maskedSubInPlace；第二段查dK、减、查清。

全部算术和lookup均使用新的测量记录，并分别证明相位恢复。逆循环保留相同m值的关系作为显式不变量，不仅假设历史位存在。

生产阶段P=`MontPrepare(X,Y,A); ConstPrepare(A,K,Z)`，清理阶段Q=`ConstRestore; MontRestore`。三个适配器统一使用 **P；输出更新；Q**：XOR用Z低257位复制，模加/减用C1普通原地模加/减。模加/减借table前257、carry前256、mask前257、cin和已归零的一个lookup scratch作为flag；Z低257位为源。

公开目标Triple与现有三个接口一致：x=X,y=Y,out=O,work=0 → 输入保持、out分别为O XOR (XY%p)、(O+XY%p)%p、(O+p−XY%p)%p、work=0。XOR允许任意257位O；加减要求O<p。phase及frame均对全部记录成立。

另外提供 `P；controlledModAdd c；Q` 与 `P；controlledModSub c；Q` 两条受控适配器，供§16两次除法使用。前提增加 `(c::L.wires).Nodup` 与 c=b；后置保持c与输入，out在b=true时加/减XY%p，否则保持O，work=0。P/Q不受控，b=false也完整计算并清理；相位仍覆盖全部测量记录。中段复用C1受控接口，借用同一mask/table/carry/cin及空lookup scratch作为flag，无新工作位。两者实际支持为普通适配器支持加控制位，已证2,597线。15-CCX单一迭代查表留作后续优化，当前预算不预支其收益。

**不能把P包装成已经清空全部历史的mulInto再套一次mulClear，并仍沿用本预算。** 那会重复生产/清理。P/Q是明确保存A/Z/历史的内部寄存器契约，不替代C2公开零工作区接口；输出中段结束后Z不变，Q可直接消费历史。外部适配器才承诺全工作区清零。布局类型将更换，数值契约保留；不承诺与旧MulAdapterLayout二进制兼容。

### 17.5 逐门资源（窗口、P/Q与五个适配器均已证）

| 段 | Toffoli | 测量 |
| --- | ---: | ---: |
| 变量窗口一次 | 4(3W−1)+(W−1)+2×48 = 3,484 | 5(W−1)+96 = 1,396 |
| 常数窗口一次 | 2(W−1)+4×48 = 712 | 712 |
| 每段末规范化或撤销 | 2(W−1) = 520 | 520 |
| 变量准备或恢复，64窗口 | 223,496 | 89,864 |
| 常数准备或恢复，64窗口 | 46,088 | 46,088 |
| P 或 Q（两段相加，已证） | **269,584** | **135,952** |
| 完整XOR适配器P；copy；Q | **539,168** | **271,904** |
| 模加适配器（加4n−1） | **540,191** | **272,927** |
| 模减适配器（加6n−1） | **540,703** | **273,439** |
| 受控模加适配器（CCX加6n−1，测量加4n−1） | **540,703** | **272,927** |
| 受控模减适配器（CCX加8n−1，测量加6n−1） | **541,215** | **273,439** |

每个完整适配器均包含两段Montgomery计算、两段恢复、标准表示转换、全部lookup清理、512位记录和两位借位清理；没有扣除无法复用的历史成本。五个值均低于600k条件目标，均已由同一程序的资源定理证明。

工作区分配 `2W+512+2+2W+(W−1)+1+5+3 = 1,827`，外部770，合计2,597线；x最高位不使用，已证普通适配器实际支持为其余**2,596线**，受控版另加控制位共2,597线。已逐门证明支持并集等式，并由Nodup得到基数；不能用分配数或同时存活数代替。pad、mask、carry等即使值恒零也由固定门列触及。第四批已核对并证明改3借用区中的历史存活、输入/输出互异及完整支持，见§16.6；点加成本以§16.7同程序定理为准。

### 17.6 实施与交付

1. 数学与lookup：约减整除/界/不变量/转换等式；lookup完整Triple/frame/计数。可单独复审。
2. P/Q（已实现）：两个窗口循环、物理旋转、规范化/反规范化、显式历史契约、内部Triple及同程序资源/支持；五个输出适配器的Triple/资源已在第三批实现。证明失败时修改设计，不放宽心跳/递归限制，不用sorry/native_decide/新公理或测试。
3. 集成：保留fieldMul数值契约，**接入6a后§16.6的B分割与平方步按§17重写**：两次除法用受控模加/减适配器；外部模减、模加保持；平方改为一次mulSub(λ,S,x)，去掉原先单独的mulInto/mulClear与t字。五个适配器合计540,703+541,215+540,703+540,191+540,703=2,703,515 Toffoli；其余§16.7中段费用已包含在适配器内，剩13,567，故总预算2×4,541,488+2,703,515+13,567=11,800,058（已实现、已证）。1,827工作位容量小于B的2,315位，具体映射与历史互异已由第四批证明。与改3除法所有者核对共享工作区；重证实际支持及受影响资源，移除被替换的专用包装。第四批迁移后旧Horner已无实际调用者，电路及旧适配器专用文件已在清理批删除，仍复用的数学与半倍原语保留。

本设计PR仅新增计划并更新README下一步指针；不修改Current status、实际公理块或已证门数。实现后按实际verify输出更新PROOF_STATUS/PROVENANCE，覆盖仅propext/Classical.choice/Quot.sound白名单。复审前不进入实现。

§17第一批实现记录：Montgomery数学与lookup的Triple/frame/48+48计数已通过完整verify（2114构建、227公理入口）；支持给包含关系。P/Q已在第二批实现；五个适配器及fieldMul集成见第三批记录，原地点加集成结果见第四批。

§17第二批实现：MontLayout 将两段的 table/mask/carry/cin/pad/scratch 按构造共享。montP_spec 得到标准模积 Z=(XY)%p，分别保留 A/Z 的规范值、256位窗口记录和借位标志；montQ_spec 在不约束输出字的情况下清除两个累加器、512位记录、两借位及全部共享辅助位。两个 correct 定理均给出精确相位保持和所有工作区外线路的逐线保持。montPQ_resources 证明 P/Q 各为269,584/135,952/2,339；montPQ_wires 的实际支持等式为 `(M.x.take 256 ++ M.y ++ M.work).toFinset`，工作区长度1,827。输出字257位和X高位不在P/Q支持中；五个输出适配器的2,596/2,597支持及fieldMul接入已在第三批完成。

第二批完整verify通过2,136项构建和243条公理输出，新增16个公开检查入口，实际输出见PROOF_STATUS。

§17第三批历史记录（当时保留Horner，第四批已替换）：五个适配器均已证明完整Triple、输出外逐线保持、精确相位与清理、上述门数及实际支持。中段借用carry前256位（原255为宽度笔误），仍在260位分配内。fieldMul改用MontLayout/montMulXor，移除无用width参数，数值契约保持。旧XOR候选计算各6,166,952/2,461,352；共享池实际支持5,670线，有限常量pointAddOut为12,335,444/4,923,728/9,780。controlledPointAdd仍调用Horner除法及直接适配器，保持14,998,618/7,880,538/6,218；§17.6的11,800,058仍为下一批待实现集成预算。旧Horner有实际调用者，故保留。完整verify通过2,140项构建、259条公理输出。

§17第四批完成：两次除法与三个直接乘积全部迁移，公开Divide和controlledPointAdd寄存器陈述保持；内部乘法视图与平方门列变化见§16.2/16.3/16.6。旧inPlaceSquareSub及临时积t删除，七个旧Horner/适配器电路文件已在清理批删除。§16.7为本批同程序已证值11,800,058/4,656,378/6,218，原预算已落实。

§17收尾清理：八个旧电路文件及controlledPointSwap已删除；regValue_bit逐字迁移至Registers，数学与半倍原语保留。验证入口删除15项，保留244项；活动门列、功能契约及11,800,058/4,656,378/6,218资源不变。


## 18. 改 7：四位单迭代查表与可选测量清理（方案1已实现）

### 18.1 目的、基线和公开契约

本节根据本仓库 `Lookup.lean`、`MontPrepare.lean`、`MontLookup.lean` 与 `Framework/Semantics.lean` 的字面门列推导，不将文献的查表渐近数当作实现成本。基线main为3d1e8bd：每次lookup48 CCX/48测量，`montLookupAdd/Sub`以lookup加载、算术更新acc、再次lookup清table。方案1（§18.6）替换查表内部实现，保留任意旧目标XOR规格；方案2在此基础上替换最后一次清理。以下§18.1–18.5先完整展开MBU构造及独立账本，两方案最终比较见§18.7。

新入口 `lookupErase` 的输入为四位地址addr=[a0,a1,a2,a3]、W位target、三位scratch=[u,v,e]和经典表F。要求 `(addr ++ scratch ++ target).Nodup`、`F(d)<2^W`（d<16），Triple为：

`addr=D, target=F(D), scratch=0 → addr=D, target=0, scratch=0`。

相位对任意初始phase及**全部测量记录**保持；target外逐线保持，包含addr/scratch。该前提是确定的表值，不能拿它清任意 `T XOR F(D)`。在Montgomery调用点，第一次lookup从table=0加载，现有加减frame保持addr/table/scratch，恰好提供此关系。控制false仍跑固定P/Q；零表、地址0/15、W=0也适用。

### 18.2 相位函数与两个AND的分解

令 `f_j(d)=bit_j(F(d))`。将四位地址视为集合D⊆{0,1,2,3}，编译时算布尔系数

`c[j,S] = XOR_{E⊆S} f_j(E)`，则 `f_j(D) = XOR_{S⊆D} c[j,S]`。

这是有限布尔多项式恒等式：展开右边后，f_j(E)出现 `2^(|D\E|)` 次，除E=D外都是偶数。证明需要对任意表成立，不用采样测试或外部证书替代。所有系数只由经典表决定，运行时无地址依赖的门列选择。

先置 `u=a0 AND a1`、`v=a2 AND a3`、`e=1`。对系数为1的单项式按下表编译一条修正；共16个候选项：

| 单项式 | 修正（作用后的phase增量恰为该单项式） |
| --- | --- |
| 1 | Z e |
| a_i（4项） | Z a_i |
| a_i a_k（6项，i<k） | CZ a_i a_k |
| a0 a1 a2、a0 a1 a3 | CZ u a2、CZ u a3 |
| a0 a2 a3、a1 a2 a3 | CZ v a0、CZ v a1 |
| a0 a1 a2 a3 | CZ u v |

记所得固定列表为C_j，则 `correct C_j`在该辅助位关系下只增加phase=f_j(D)，不改basis。常数项用e=1处理，**不忽略全局相位**，满足当前Triple的严格phase相等。三根scratch已存在，不增分配。

### 18.3 完整固定门列及逐步寄存器状态

1. `X e; CCX a0 a1 u; CCX a2 a3 v`。地址/target保持；scratch=(a0a1,a2a3,1)。
2. j=0..W−1固定执行 `measureX target[j] [] C_j`。设本次记录为m_j；擦除产生 `m_j AND f_j(D)` 相位，onOne修正产生同一相位，XOR抵消。修正只读addr/u/v/e，不读已测量target；每一步phase都恢复，先前target位为0，未测量位仍为f_j(D)。无需积攒记录、按历史记录改写后续门列或延迟修正。
3. `measureX v [] [CZ a2 a3]; measureX u [] [CZ a0 a1]; X e`。两次AND擦除各用其自己的新记录，地址未变，scratch全零；target全零，phase恢复。

**CCZ不需要扩展。** 原生地址上的三/四次相位通过两个显式计费的CCX变为已有Z/CZ；不能将其称为“零成本非Clifford修正”。Syntax、Semantics、Cost、run、Triple.seq/frame均保持原定义。若改为无辅助位的CCZ方案，须另交设计，加入 `Correction.CCZ`、三次phase规则、支持集及非Clifford计数；四次项也必须有合法分解。当前方案的CCZ数量严格为0，没有用未计价的新门绕过成本。

### 18.4 同门列资源与净账本（全部为待证明目标）

固定门列不跳过零目标位：每次清理 **2 CCX、W+2测量、0 CCZ**。每个目标测量的onOne列表至多5个Z、11个CZ；另有两个AND擦除的CZ。W=261时最坏至多1,305个Z和2,873个CZ（按每次选择onOne计，非平均数），以及2个X。它们属于现有Clifford修正，但测量增加与修正密度是实际代价；本设计不承诺运行时或容错总成本更低。

新清理显式触及全部addr/scratch/target，独立支持等式为其并集，Nodup给W+7线。旧通用lookup可能不触及全零目标列，故两者独立支持不能冒称相同；Montgomery中整个table已被紧邻算术触及，原lookup也触及四位地址/三scratch，上层预期实际支持不变，仍须逐层重证。

W=261：旧48/48 → 新2/263，即每次少46 CCX、多215测量。变量窗口一次清理，常数窗口两次；P/Q各含64×(1+2)=192次清理，每适配器384次。现有点加5个适配器共1,920次，故少88,320 CCX（当前总数的0.7485%）、多412,800测量（8.8653%）。前向lookup的48/48保留，不能把全部768次lookup都算成可删除的清理。另列不在本批范围内的条件项：若以后计算侧也证明48→15 CCX，每适配器剩余384次加载另少12,672 CCX，五个少63,360；与本批合计少151,680（目标11,648,378）。先前126,720是加载和重跑清理两侧同时48→15的另一个方案，不能再叠加到本批；15-CCX方案的测量/支持仍须独立证明。

| 程序 | 候选CCX | 候选测量 |
| --- | ---: | ---: |
| 变量窗口 | 3,438 | 1,611 |
| 常数窗口 | 620 | 1,142 |
| P或Q | 260,752 | 177,232 |
| XOR适配器 | 521,504 | 354,464 |
| 模加适配器 | 522,527 | 355,487 |
| 模减适配器 | 523,039 | 355,999 |
| 受控模加适配器 | 523,039 | 355,487 |
| 受控模减适配器 | 523,551 | 355,999 |
| 完整controlledPointAdd | **11,711,738** | **5,069,178** |

工作区目标仍1,827、普通/受控适配器2,596/2,597实际线、完整点加6,218线，均以新支持等式为验收条件。基线是当前已合入6a；**不预支并行6b或未来改8**。6b若删常数转换或增加边界转换，应按最终实际清理调用数N重新计算 `CCX_new=CCX_old−46N`、`M_new=M_old+215N`，不能把这里的88,320与旧6b毛收益直接相加。

### 18.5 证明、文件归属与实施界限

方案1已按复审完成（§18.8）；以下erase及接入仅在owner选择方案2后实施。新增 `Arithmetic/LookupErase.lean`，内含私有四位系数/修正编译、相位恒等式、公开erase Triple/frame、计数和实际支持；不新建通用布尔合成框架。`MontPrepare.lean`只将montLookupAdd/Sub尾部改为erase，`MontLookup.lean`改组合证明；原 `lookup_spec` 完全保留。更新MontCounts/Resources及fieldMul、候选、除法、PointInPlace与最终资源常数和支持证明，不改变公开域/点加数值规格。

与Lamport的6b共享Mont文件：第一批可独立完成erase原语；集成前双方明确具体分支和文件接续，按已合并6b或当前6a实际门列重新定额。公理入口、根import、PROOF_STATUS实际输出、PROVENANCE与README随实现一起更新，完整verify覆盖所有测量记录、相位、清理、控制false和实际支持。不添加测试、sorry/native_decide、新公理或放宽证明限制。

失败判据：不能在当前即时修正语义下证明任意表的系数恒等式；scratch前提或调用点table=F(D)无法恢复；新支持超出既有工作区；或在选定成本口径下测量/Clifford开销抵消CCX收益。任一发生即修改设计并重新复审，不把未证明的净收益写进Current status。原设计PR未改11,800,058/4,656,378/6,218；后续方案1已实现，当前值与实际公理输出见§18.8。

### 18.6 方案1：三辅助位的14-CCX单迭代查表（已实现）

这不是直接采用15-CCX文献数字。当前入口没有外部量子控制位，可直接将地址a0作为第一层使能，显式门列少一个根AND，目标为14 CCX/14测量。若以后增加外部控制，须另行设计。

定义私有递归 `walk(parent, controls, scratch, prefix)`；prefix是已选的经典地址位，controls按a1,a2,a3顺序处理，scratch与其等长。要求parent/controls/scratch/target互异、scratch=0。后置target按parent门控XOR相应表值，phase保持且所有target外位恢复。门列如下，子树串行复用剩余scratch：

```
walk(parent, [], [], prefix):
    maskedConstant parent target F(prefix)
walk(parent, b::bs, q::qs, prefix):
    CCX parent b q
    walk(q, bs, qs, prefix with b=1)
    CX parent q
    walk(q, bs, qs, prefix with b=0)
    X b
    measureX q [] [CZ parent b]
    X b
```

第一子树返回时q=parent∧b；CX后q=parent∧¬b。第二子树恢复其全部控制位及qs，因此测量前翻转b，正好提供q对应的两个因子；测量修正后还原b。parent=false时两子树均不写目标，固定门仍执行、scratch归零。每层相位对其分配到的全部测量记录精确恢复，不能复用另一子树的记录。

整表程序为 `walk(a0,[a1,a2,a3],scratch,prefix(a0=1)); X a0; walk(a0,[a1,a2,a3],scratch,prefix(a0=0)); X a0`。两半互斥且覆盖16地址；分别在原a0=1/0时写F(D)，最终地址恢复。prefix只决定编译时行号，没有运行时控制流分支；每叶复用maskedConstant，不省略零表项。

长度r的CCX/测量均满足 `C(0)=0; C(r+1)=1+2C(r)`，r=3得7，整表2×7=14。scratch深度3。另有14个内部CX、28个内部X和2个根X、各表项CX，以及14个测量修正CZ。公开lookup_spec的任意旧target=T、scratch=0前后置不变；全部测量记录的phase和目标外frame仍须完整证明。支持仍按门列证明，零表列不强迫进入支持。

只保留一个公开lookup入口：改 `Arithmetic/Lookup.lean` 私有实现与证明，不并存旧48门公开层；MontLookup功能契约可沿用。传播同程序计数与支持至MontCounts/Resources、fieldMul、候选、除法、PointInPlace与点加。Framework不动，完整verify与公理块按实际输出更新。

### 18.7 两方案比较、可选边界及接续

§18.1–18.5完整展开原MBU候选，§18.4是相对旧48/48的单独账本。**推荐先做方案1（§18.6），方案2是在方案1上接入MBU**；不能混用不同基线的增量。

方案1将每适配器768次lookup（加载384、清理384）从48/48降至14/14，少26,112 CCX和26,112测量；五适配器共少130,560（Toffoli减少1.1064%）。方案2保留14/14加载，将清理14/14改2/263，额外少12×1,920=23,040 CCX，但额外增加249×1,920=478,080测量。412,800只是相对旧48次测量的增量，不适用于方案1基线。

| 程序 | 方案1 CCX / 测量 | 方案2 CCX / 测量 |
| --- | ---: | ---: |
| P或Q | 256,528 / 122,896 | 254,224 / 170,704 |
| XOR适配器 | 513,056 / 245,792 | 508,448 / 341,408 |
| 模加适配器 | 514,079 / 246,815 | 509,471 / 342,431 |
| 模减适配器 | 514,591 / 247,327 | 509,983 / 342,943 |
| 受控模加适配器 | 514,591 / 246,815 | 509,983 / 342,431 |
| 受控模减适配器 | 515,103 / 247,327 | 510,495 / 342,943 |
| 完整点加 | **11,669,498 / 4,525,818** | **11,646,458 / 5,003,898** |

表中方案1已由当前程序证明，方案2仍为同一6a调用结构上的设计目标；CCZ均0，方案1上层实际线数6,218已重证。此前假设15/15的单迭代预算为11,673,338/4,529,658；不能同此处14/14门列混用，不能再叠加原126,720收益。

方案2是设计层可选替代，不添加运行时开关或两套点加。方案1现已实现；方案2若被owner选择，再单交erase与调用点替换。6b与本批共享Montgomery文件：第一批独立做Lookup层，集成以合并基线的实际加载/清理次数重算，不把五适配器账本当作6b之后的承诺。


### 18.8 方案1实现记录与当前验收

方案1已完成：Lookup.lean只保留一个公开lookup入口，删除旧逐行AND匹配；新lookupWalk的正/负子树独立消费测量记录并归还scratch。lookup_spec逐字保持，lookup_counts为14/14，lookup_core_wires与lookup_wires_subset支撑全部上层精确支持证明。Framework与Montgomery算术门列不变，只有lookup内部及对应资源/支持证明变化。

§18.7方案1阶段账本全部由同程序定理验证：每适配器少26,112 Toffoli与测量，完整点加少130,560，该阶段11,669,498/4,525,818/6,218。方案2仍未实现、不添加开关；§18.1–18.5的MBU和§18.7方案2数字仅是可选设计。基线为当前标准表示6a，不计并行6b收益。

完整verify退出0：2,133构建项、244条公理输出，实际块写入PROOF_STATUS。lookup_spec与controlledPointAdd_spec陈述逐字核对不变；所有工作位、相位、控制false及点加角落条件继承完整证明。README当前值、PROVENANCE与本节同步。


## 19. 改 6b：全 Montgomery 表示与边界成本（设计，待复审）

Runzhou Tao 于消息 6a972f33 指定先做改6b/7；task #35 由 Lamport 负责。本节先给出可实施门列与净账本，所有新数字均待 Lean 实现，不替换 §16/17 当前已证值。

### 19.1 表示与公开边界

记 ρ=2^256 mod p（Fp 中非零），编码 E(x)=ρx。有限标志不变，坐标按 E 编码，O 仍是全零。定义独立的 `MontPoint` 寄存器断言及 `montPointCode`，避免把编码后的数当作现有 `PointReg` 普通坐标。建议新增 `controlledMontPointAdd`，规格为：

```
{ point=MontPoint(R), control=b, work=0 }
controlledMontPointAdd L C
{ point=MontPoint(if b then R+C else R), control=b, work=0 }
```

这里 R/C 仍是原椭圆曲线上的数学点，不声称 (ρx,ρy) 仍满足原曲线方程。公开旧 `controlledPointAdd_spec` 保留普通表示，不静默改变它。调用方若在一次编码后连续做多次点加，可直接使用新接口；单次普通表示包装的代价见19.4。实现这项接口扩展须在设计复审中明确确认。

编码乘法定义 `M(A,B)=A B ρ⁻¹`，故 `M(E(x),E(y))=E(xy)`。加、减、取负对编码线性；比较仅用于零检测/编码常量相等，不能把编码数值大小用于几何判断。常量 cx/cy、3cx、例外斜率λ*、C/−C/2C的坐标都编译成 E 后的值；有限标志、零常量与互斥分支结构不变。

### 19.2 单段乘法与完整点加

复用 `montPrepare` / `montRestore` 的变量段，删去本接口路径上的常数转换段；输出更新夹在准备和恢复之间。保留变量累加器及256位历史、规范化标志直到中段结束，恢复先撤规范化再逆序恢复64窗口。中段仍是 C1 普通/受控模加减；XOR版可同样定义，但本次点加实际只需要加、减、受控加、受控减。

既有变量段各为 223,496 CCX / 89,864测量。单段加、减、受控加、受控减适配器分别为：

| 接口 | 目标CCX | 目标测量 |
|---|---:|---:|
| 编码模加 | 448,015 | 180,751 |
| 编码模减 | 448,527 | 181,263 |
| 编码受控模加 | 448,527 | 180,751 |
| 编码受控模减 | 449,039 | 181,263 |

每项相对6a少 2×46,088=92,176 CCX及同数测量。五个乘积共省460,880。目标布局先复用既有MontLayout，未用常数段不得计作实际支持；下游点加的求逆支持覆盖借用区，预计完整点加仍6,218线，须以支持并集等式证明。单适配器实际支持也需独立重证，本设计不承诺进一步省线。

§16十二步流程中 x/y/λ/S 全部用 E 编码：第一次除法输出 E(E原分子/D原分母)，乘减清y、复制斜率平方、乘加更新y、第二次除法清λ都用 M。`S` 与λ保持物理分离。g=false 时斜率零，外部固定乘积仍为零；C=O 在构造期直接返回空程序。所有合法点及原有角落覆盖不变。

### 19.3 求逆校正：512−K次加倍

这是不能遗漏的表示修正。分母输入 D=E(d)=ρd；第一阶段 Kaliski 得到 `N=−r=D⁻¹ 2^K`。所需编码逆元是 E(d⁻¹)=D⁻¹ρ²。因此第二阶段应计算

`N × 2^(512−K) = D⁻¹ 2^512 = E(d⁻¹)`，其中0≤K≤512。

保留512个固定受控轮，改用 `active=[K≤i]`（i=0…511），调用现有 `doubleStep` 的加倍主体；恢复以反序调用减半主体。`counterActiveXor` 仍计算 `[i<K]`，装载后加 X active、卸载前加 X active，实现互补使能，借用位仍清零。每轮只新增两个X，CCX/测量计数不变；无需可变长度循环或新增CCZ。须新增互补使能规格与 `doubleFixed` 数学归纳，不能直接套用旧减半的结论。K=0时512轮全开，K=512时全关。

准备/恢复仍保留完整第一阶段记录，`negativeInit` 与 Kaliski正逆门列不变。每次除法安全输入为 `if control then D else 1`；控制false时得到ρ²，但中段受控适配器不更新目标，随后恢复输入1并清历史，故无需改装载门数。控制true时 D≠0 由ρ非零及原几何分支推出。

因此两次除法的求逆准备/恢复合计仍9,082,976 CCX。编码核心目标为 **11,339,178 CCX / 4,195,498测量 / 6,218实际线**，相对6a少 **460,880（3.91%）**。这比较了不同外部坐标表示，不能写成普通公开接口已获得同样收益。

### 19.4 保留普通坐标接口的干净转换账本

为避免把非零旧输入或历史遗漏，给出完全由现有常数窗口组成的保守转换门列。常数段 `constPrepare K` 计算 `f_K(x)=Kxρ⁻¹`，随后CX复制规范结果到独立零字T，再 `constRestore K` 清全部段历史，得到干净XOR函数 `T ^= f_K(x)`，成本2×46,088=92,176 CCX/测量。

原地编码（x规范、T=0）：①以K=ρ²做上述干净XOR，得T=ρx；②以T为源、K=1做干净XOR到x，因Tρ⁻¹=x而清旧x；③用三CX逐位交换x/T，T回零。原地解码交换两个常数的顺序：先K=1，再K=ρ²。每次转换成本 **184,352 CCX及测量**，不把CX计为Toffoli。不能仅交换x与第一段输出后直接复用旧历史撤销：第一段源和记录的关系已被破坏。

输入x/y两次编码、输出x/y两次解码共 **737,408 CCX及测量**。固定无控制转换在b=false时也执行，但整体编码与解码互消；O坐标0保持。于是单次普通坐标包装是 **12,076,586 CCX / 4,932,906测量**，比当前 **多276,528 CCX（2.34%）**，没有净收益。转换临时字与常数段工作在点加前后使用，理论上可借已清共享池；尚未给出逐线映射，故不公布这个可选包装的线路数。

若同一编码数据连续做m次有限常量点加、边界仅做一次，上述CCX净节省为 `460,880m−737,408`，m≥2开始为正。此为调用方复用条件，不把外部算法自动计入本仓库单次接口。

### 19.5 实施建议与复审门槛

建议实现明确命名的编码核心并保留普通核心；不以更贵的包装替换旧入口。第一批：编码数学/断言、单段乘加适配器及互补第二阶段求逆；第二批：编码常量/角落/斜率更新和资源、完整点加Triple与frame。尽量复用现有子程序，不复制整套语义或改变旧断言的含义。若复审要求只接受普通接口的单次净收益，则本方案应停在设计，不开始成本倒退的实现，另研究更便宜的边界转换。

每批完整严格verify及实际公理披露；源码只用既有X/CX/CCX/measureX与Z/CZ修正。所有准备、使用、清理对任意测量记录恢复相位，旧接口和当前README数字在新实现前保持。与Deutsch改7的成本交互以各自实际门列重算，不叠加假设收益。


### 19.6 实现前的接口决定

按Dirac消息5a6953b1，方案A采用编码公开边界，每次省460,880 CCX，需要owner明确同意接口改变。新增编码入口并保留旧普通入口是一种兼容选择，不代替这个决定；若沿用controlledPointAdd名称，其公开断言改变，调用方必须迁移。方案B保留普通边界、增加转换，净增276,528 CCX，已否决。若A不获接受，则搁置6b、转改8；决定前不开始实现。

待证数学引理：对Fp中非零d，若D=ρ*d、N=D⁻¹*(2:Fp)^K且K≤512，则N*(2:Fp)^(512−K)=ρ*d⁻¹，其中ρ=(2:Fp)^256。这是互补第二阶段循环所需的明确数学陈述。

<a id="opt8-measured-mask"></a>

## 20. 改 8：Montgomery 窗口受控加减的测量清掩码（已实现）

本项由 Runzhou Tao 在频道消息 e4a408cf 批准立项。只替换 Montgomery 变量窗口的受控整数加减；不改变求逆、模加减中段或公开点加数值契约。以下是对具体门列的推导，不是新 Lean 已证资源。当前已证点加仍为 11,800,058 / 4,656,378 / 6,218。

### 20.1 门列与清理

现有 `maskedAddInPlace` / `maskedSubInPlace` 是：把 `c AND src[i]` 用 W 个 CCX 写入零掩码 t；调用 `addInPlace t y carry cin` / `subInPlace`；再次用 W 个 CCX 清 t。中段保持 t、src、c，恢复进位与相位，因此末尾仍有逐位关系 `t[i] = c AND src[i]`。

新增 `measuredMaskedAddInPlace` / `measuredMaskedSubInPlace`，参数与旧接口相同；前两段不变，最后一段按低位到高位执行：

```
for i = 0 .. W-1:
  measureX t[i]; if outcome = 1 then CZ c src[i]
```

每次测量把 t[i] 置零，产生的相位为 `outcome AND t[i]`；同一条指令的 CZ 修正产生 `outcome AND c AND src[i]`，由掩码关系相消。此前清掉的位不影响 c 或任何 src 位，故归纳覆盖任意测量记录。控制为 false 时 t 全零，CZ 的控制 c 为零，相位也保持。该构造直接复用本库 `Circuit/And.lean` 的 AND 清理原理；不扩展语法、不用 CCZ、不要求倒放测量。

### 20.2 接口与证明义务

宽度 W>=1，src/t/y 长 W，carry 长 W−1，且 `(c :: cin :: (src ++ t ++ y ++ carry)).Nodup`。公开 Triple 保留旧接口全部前提及寄存器断言：

```
{ c=C, src=S, t=0, y=Y, cin=false, carry=0 }
measuredMaskedAddInPlace c src t y carry cin
{ c=C, src=S, t=0, y=(Y + (if C then S else 0)) mod 2^W,
  cin=false, carry=0 }
```

减法后置为 `(Y + 2^W - (if C then S else 0)) mod 2^W`。S/Y 是寄存器任意 W 位值，没有 p 范围要求；W=1 时进位链为空，仍有一次掩码计算与一次测量。初始 t 必须为零，不能扩展为任意旧掩码。

证明顺序：单个位掩码清理（相位、归零、目标外保持）→ 列表清理 → 与现有原地加减 Triple 组合 → 逐线目标外 frame → 同一程序计数与支持等式。实际支持应为 `(c :: cin :: (src ++ t ++ y ++ carry)).toFinset`，Nodup 后基数 4W+1；等式需证明，不能把布局分配数当支持数。测量记录新增后，所有组合规格仍必须量化任意记录。

### 20.3 逐门预算与集成

| 项 | Toffoli | 测量 |
|---|---:|---:|
| 掩码计算 | W | 0 |
| 原地加或减 | W−1 | W−1 |
| 测量清掩码 | 0 | W |
| 新受控加或减 | 2W−1 | 2W−1 |
| W=261 实例 | 521 | 521 |

旧实例 782 / 260，因此每次减少 261 CCX、增加 261 次测量。先前 2W 的预算是保守值，本门列为 2W−1。只替换 `MontPrepare` 中变量窗口的四次加/减及其证明、计数；常数窗口、规范化、五个适配器中段保持原门列。

| 段 | 目标 Toffoli | 目标测量 |
|---|---:|---:|
| 变量窗口一次 | 2,440 | 2,440 |
| 变量准备或恢复（64 窗口+规范化） | 156,680 | 156,680 |
| 常数准备或恢复（不变） | 46,088 | 46,088 |
| P 或 Q | 202,768 | 202,768 |
| XOR 适配器 | 405,536 | 405,536 |
| 加适配器 | 406,559 | 406,559 |
| 减适配器 | 407,071 | 407,071 |
| 受控加适配器 | 407,071 | 406,559 |
| 受控减适配器 | 407,583 | 407,071 |

每个适配器包含 4×64×2=512 次替换：少 133,632 CCX，多同数测量。完整原地点加五个适配器合计少 **668,160 CCX（5.66%）**、多 **668,160 次测量**，目标 **11,131,898 / 5,324,538 / 6,218**。C=O 仍为空程序。工作布局与旧支持相同，预计普通/受控适配器仍 2,596/2,597 根线、点加仍 6,218；须随实现重证支持等式。只声称 Toffoli 改善，未推导整体容错运行时间改善。

### 20.4 交付边界

先交本设计 PR，复审后实现。新增清掩码及其受控加减证明模块；旧受控加减由求逆等调用者保留，不全局替换。修改 Montgomery 变量窗口及下游资源，不改变公开点加/除法 Triple 的陈述。新模块的公开规格、frame、计数/支持纳入现有 verify；完整严格构建与实际公理输出同步 PROOF_STATUS，README、PROVENANCE、当前预算一并更新。检查不新增公理、sorry、测试、语义近似或资源限额放宽。


### 20.5 改7接续与具体实施批次

本设计基于main 0fbd303（改7/6b设计已合并，lookup仍48/48）。先在这个基线上证明独立测量清掩码原语及受控加减，不动Deutsch正在修改的Lookup、MontCounts/Resources；集成批接改7方案1实现合入后的main，再传播资源。改7对lookup的改变不影响本项每次受控加减少261、多261测量的差额。

按已复审§18方案1的14/14 lookup重算：变量窗口目标2372/2372，变量准备/恢复152328/152328，常数准备/恢复37384/37384，P/Q各189712/189712。XOR适配器379424/379424；普通加380447/380447，普通减380959/380959，受控加380959/380447，受控减381471/380959。完整点加从改7预期11669498/4525818变为 **11001338/5193978**，实际支持目标仍6218。本项差额668160保持，未将查表收益重复计算；这些设计值已在§20.7由实现验证。

现有 `maskedAddInPlace_spec` / `maskedSubInPlace_spec` 保留，新增程序的公开Triple与它们的前提/后置逐字一致，仅被规格描述的程序名不同。只在MontPrepare变量窗口调用处替换；不把求逆等旧调用者一起优化，便于复审隔离成本来源。旧公开fieldMul、divide与controlledPointAdd数值陈述保持。新文件建议 `MeasuredMaskedAdder.lean`，复用InPlaceAdder；不复制现有加法器门列和证明，不构造通用测量清理框架。


### 20.6 第一批实现状态（历史阶段）

MeasuredMaskedAdder原语的两个Triple、全测量记录相位恢复、逐线目标外frame、计数及精确支持等式已实现；W位实例为2W−1 CCX、2W−1测量、4W+1实际线。W=261为521/521/1045。基线已接改7实现main 1f1f008。该批提交时Montgomery窗口尚未调用新原语，§20.5点加目标仍待集成；该阶段点加保持11,669,498/4,525,818/6,218。

### 20.7 集成实证

已接改7的14/14查表及第一批原语。只替换MontPrepare变量窗口的受控加减调用；旧原语、常数窗口、Lookup及求逆调用者保留。变量窗口2,372/2,372，变量段152,328/152,328，常数段37,384/37,384，P/Q各189,712/189,712；五个适配器合计1,904,795 Toffoli /1,903,259测量。完整点加11,001,338/5,193,978/6,218已由同一门列证明。相对改7少668,160 Toffoli、多668,160测量，实际支持不变。

完整verify退出0（2134项构建、252条公理），实际输出见PROOF_STATUS。§17为改6a初始48/48查表阶段，§18为改7阶段，§20.6为原语批阶段；当前资源以本节和§16.7为准。普通坐标公开规格、相位与全部工作区清理均保持。

## 21. 改10：Kaliski轮受控加减的测量清掩码（设计，待实现）

基线main75ce0c6，完整点加11,001,338 Toffoli /5,193,978测量 /6,218线。本项只将RoundFrame.inplaceArithmetic的maskedSub/AddInPlace换为已证measuredMaskedSub/AddInPlace；不改Montgomery、第二阶段或公开kaliskiRound_spec/fieldInverse_spec/controlledPointAdd_spec陈述。

### 21.1 门列与契约

正轮分别以subtract控制u减v、r加s；恢复轮以相同控制执行u加v、r减s。四个调用共用RoundFrame.inplaceArithmetic，源g、目标f、掩码L.reg .y、低w−1位carry及cin布局不变。RoundFrame.inplace已要求y=0、carry=0、cin=false和全局互异，两个新原语的完整Triple与旧规格模程序名相同，可直接复用。

门列是copyRegister (some c) src mask；add/subInPlace mask target carry cin；逐位measureX mask[i] [] [CZ c src[i]]。算术段保持掩码与源，测量相位m·c·src[i]由本次CZ抵消；全部记录下mask恢复0，目标外逐线保持。没有倒放测量或新增语义。必须保持RoundFrame.inplace的外部frame，并以measuredMaskedInPlace_wires重证现有支持等式。

### 21.2 精确设计账本（均待实现验证）

两处均可替换，不采用仅一处的保守估计。每处由3w−1 /w−1变为2w−1 /2w−1。正/恢复轮各省2w Toffoli，增加2w测量；body由12w−4 /2w−2变为10w−4 /4w−2，完整轮由14w+31 /4w+28变为12w+31 /6w+28。w=257时3,629/1,056→3,115/1,570。

| 层次 | 当前Toffoli/测量 | 改10后设计值 |
|---|---|---|
| 一次完整求逆（512正轮+512恢复轮） | 4,541,488 /1,639,472 | 4,015,152 /2,165,808 |
| divideAdd | 4,922,959 /2,019,919 | 4,396,623 /2,546,255 |
| divideSub | 4,923,471 /2,020,431 | 4,397,135 /2,546,767 |
| controlledPointAdd，有限C | 11,001,338 /5,193,978 | 9,948,666 /6,246,650 |


每次求逆少526,336 Toffoli、增加526,336测量；两次合计少1,052,672（相对基线约9.57%），增加同数测量。fieldInverse仍预计5,954线，完整点加6,218线，须由同程序支持等式重证。C=O为空程序不变。此处仅声称Toffoli减少，不声称总运行时间下降。模乘适配器不变；独立XOR点加含两次完整求逆，其资源也随之传播。

### 21.3 实施与交付

设计GO后修改RoundFrame、RoundResources、RoundWires及RoundSpec实例，沿Kaliski循环、InverseResources、除法、候选与点加传播计数。全测量记录、控制false、w=1原语角落和旧公开范围均保持；Kaliski实例仍w=257。不新增通用框架、不删除旧原语、不增加测试或证明资源限额。完整verify及实际公理块、README、PROVENANCE同步。

与改11的分工：本项先基于75ce0c6实现；改11当前只交第二阶段设计，后续实现接本项合入后的求逆资源，分别计算差额，不把共享InverseResources或点加文件并行覆盖。

<a id="opt11-counted-scaling"></a>
## 22. 改 11：量子计数驱动的求逆缩放（设计，待复审）

### 22.1 结论与边界

以改8后的main `75ce0c6f`为基线。**采用一次十位K查表加一段既有变量Montgomery准备/恢复**，替代第二阶段512轮减半与512轮加倍。逐门目标为每次求逆缩放 **308,744 Toffoli /308,744测量**，替代 **809,984 /545,792**，净少 **501,240 /237,048**。保留第一阶段正/逆Kaliski循环与两次negativeInit；不采用改9的记录测量清理。

本节全部新数字均为设计推导，尚未实现或证明。当前已证点加仍为11,001,338/5,193,978/6,218。只实现改11时目标9,998,858/4,719,882/6,218；若同时接入改10两处替换，则目标8,946,186/5,772,554/6,218。6,218必须由实际支持等式重证，不能由布局分配数代替。

保留 `InverseLayout` / `InverseLoopLayout` / `DivideLayout` 字段与 `fieldInverse_spec`、`fieldInverse_xor_spec`、除法及最终点加公开数值陈述。**内部 `InverseHistory` 内容会改变**：它将包括缩放乘法保留的累加器与约减记录，不能继续声明全部round工作位为空。完整求逆的初末全零契约不变。旧内部求逆证明允许任意奇数q；复用现有Montgomery电路需显式增加 `q%16=15` 条件，不能声称保留该泛化范围。secp256k1的p满足该条件，`fieldInverse_spec`不增加前提；不保留两套运行时可选求逆实现。

### 22.2 数学因子与查表

令R=2^256，第一阶段终态z=step^[512](init(q,X))，K=z.k，N=(-z.r mod q)。现有数学证明给出0≤K≤512、N<q和N·2^(−K)=X⁻¹（ZMod q中）。K界由 `KRoundCount 0` 逐轮保持得到，不假设K是经典量，也不缩小合法输入。

用完整十位计数寄存器查表，编译期表为

`F_q(k) = ((R : ZMod q) * ((2 : ZMod q)⁻¹)^k).val,  0≤k<1024`。

q%16=15蕴含q为正奇数，2及R是单位；F_q(k)<q。所有1024项都有定义，固定门列不按K值裁剪。应用现有变量Montgomery准备：

`M = montgomeryValue q F_q(K) N 64 % q = N * 2^(−K) mod q`。

因子自带R，故**不再执行montP里的第二段常数转换**；这里只调用 `montPrepare` / `montRestore`，不是包含两段的montP/Q适配器。此处需新增单位消去及Kaliski缩放等式证明；不能把自然数负指数解释成截断减法。N=0、K=0/512等算术边界在缩放模块中正常处理；求逆整体仍使用已有0<X<q及互素前提。

沿§18.6的递归单迭代查表，十位地址需要9根scratch：根位直接作使能，两个深度9子树各2^9−1个AND，因此每次 **1,022 CCX/1,022测量**。负分支仍用X包夹CZ清AND，所有测量记录恢复相位。现有 `lookup` 的实现递归支持该形状，但公开证明只覆盖4位；须新增十位规格/计数/支持证明，保持原四位公开规格逐字不变。查表目标是任意257位旧值O，结果O XOR F_q(K)，地址保持、9根scratch初末为零；两遍前向查表清目标，不倒放测量。

**为何不采用原来的两个5位窗口粗估。** `constMontWindow`原查表地址是乘数的四位数字d，不是经典常数本身。若常数也取决于五位K窗口，就要查(d,k)的九位联合表d·C(k)，不能只把16项表换成32项表。普通树遍历一次九位查表510门，每段64轮的准备/恢复成本明显高于原估；该粗估160k/次作废。最终方案直接查完整因子，只需四次十位表，避免在64轮中反复查联合表。

### 22.3 具体线路和生命周期

记D=`I.middle.data`，B=`I.temp ++ I.arithmetic.wires`（2315位）。中段保留的518位选为：

| 字段 | 物理线路 | 长度/含义 |
| --- | --- | --- |
| S.acc | D.y ++ take 4 D.zero | 261，准备后存M，交换后存N（高4位零） |
| S.history | take 256 D.carry | 256，Montgomery约减商记录 |
| S.flag | D.carry[256] | 1，规范化借位 |
| factor | B[0:257] | 257，F_q(K)，中段前清零 |
| S.table / S.mask | B[257:518] / B[518:779] | 各261 |
| S.carry / S.cin | B[779:1039] / B[1039] | 260 /1 |
| S.pad | B[1040:1045] | 5 |
| lookup scratch | B[1045:1054] | 9，S.scratch取前3位 |

S的工作区沿用现有MontStageLayout；额外6根lookup scratch仍属B。所有区间半开，未列出的B保持零。K取 `I.middle.k`，与上述线路及I.a互异。N的源寄存器使用 `I.a.take 256`；I.a第256位由N<q<2^256保证零。factor使用257位，现有变量乘法读其低256位，pad提供扩宽的零位。

上述D.y/carry/zero在Kaliski正循环退出后全零，且已在旧实际支持内；不是已删除的out工作寄存器。缩放期间不得执行任何Kaliski轮。乘积中段仍只借B[0:1828]，既不触D中的518位，也不触计数/第一阶段历史。因而无需扩大池或调整旧点加布局。改10已确认保持这些轮边界零值契约（Lamport，消息b89b0184）。

### 22.4 门列与寄存器契约

在Kaliski正循环后执行既有negativeInit，把N写入原本为零的I.a；B归零。设h为Montgomery的商记录、f为规范化标志。下面每步均为固定合法门列：

| 步 | 门列 | I.a / S.acc / factor / S.history,S.flag |
| --- | --- | --- |
| 1 | lookup10(K,factor,F_q) | N /0 /F_q(K) /0,false |
| 2 | montPrepare S factor (I.a.take 256) q | N /M /F_q(K) /h,f |
| 3 | 交换I.a与S.acc低257位 | M /N /F_q(K) /h,f |
| 4 | 同一前向lookup10清factor | M /N /0 /h,f；B全零 |
| 5 | 现有逆元使用段：XOR复制或除法受控乘加/减 | I.a及上述历史保持；只改外部输出，B初末零 |
| 6 | lookup10重新装factor | M /N /F_q(K) /h,f |
| 7 | 同一交换恢复源/目标 | N /M /F_q(K) /h,f |
| 8 | montRestore S factor (I.a.take 256) q | N /0 /F_q(K) /0,false |
| 9 | 同一前向lookup10清factor | N /0 /0 /0,false |
| 10 | 既有negativeInit，再kaliskiUnloop | 清I.a，恢复完整初态及全部工作位 |

交换按三个无控制copyRegister（CX）实现，Toffoli/测量均零，交换两端高位有界；不是带控制的CSWAP。第8步是已证前向恢复程序，使用新测量记录。

准备段的直接Triple为：`a=N, K=K₀, B=0, S.acc/history/flag=0` → `a=M, K=K₀, B=0, S.acc=N, history=h, flag=f`；恢复段反向返回这些寄存器值，其余所有线路逐线保持。每条均对任意初始相位和全部测量记录成立。新InverseHistory除原本活的数据u/v/r/s/k/记录/done外，还列N/h/f和其它工作位零；不能直接保留旧 `InverseRest` 中work全零的断言。第9步后重建旧LoopState与全零scratch，再调用已证逆轮。

false控制分支仍以Dsafe=1运行全部门列，不能删除缩放；分母和控制由divide的frame保持，因此K/历史在中段不变。对任意旧XOR输出O，copyRegister只异或M，不改变源和历史；不借用输出O作为零工作位。

### 22.5 同程序资源账本（全部待证明）

| 项目 | Toffoli | 测量 |
| --- | ---: | ---: |
| 10位完整表，一次 | 1,022 | 1,022 |
| montPrepare，一次（改8后，含规范化） | 152,328 | 152,328 |
| montRestore，一次（含去规范化） | 152,328 | 152,328 |
| 两次交换 | 0 | 0 |
| 新缩放完整算与清：四查表+准备+恢复 | **308,744** | **308,744** |
| 原减半+加倍：1024×(791/533) | 809,984 | 545,792 |
| 每次求逆净减少 | **501,240** | **237,048** |
| 两次除法合计净减少 | **1,002,480** | **474,096** |

范围内的表编译、R补偿与factor清理均包含；不扣除原两次negativeInit，原第一阶段及两个乘积适配器保持。仅改11的fieldInverse目标4,040,248/1,402,424，线路5,954；原地点加目标9,998,858/4,719,882，线路6,218。若改10两处替换先合入，则fieldInverse目标3,513,912/1,928,760，点加目标8,946,186/5,772,554。两个差额来自不相交的阶段，但必须在最终相同门列上重算。独立pointAddOut路径也消费fieldInverse资源，集成时同步传播，不能只改原地点加表。

静态支持上界沿用原 `usedCoreWires`：518位来自round实际支持，B和I.a来自原extra，K来自旧计数银行。下界由保留的kaliskiLoop/kaliskiUnloop和negativeInit覆盖旧core；fieldInverse再加外部输入/输出。所有新查表/乘法/交换线路都需双向支持证明及Nodup，保持既有5,954/6,218目标，不能仅给一个子集上界。

### 22.6 实施拆分与验收

实现接改10合入后的main，并对照该基线重算InverseResources；改10差额与本节差额分别列出。设计GO后分批：①十位lookup及F_q的单位/缩放数学引理（四位接口不变）；②具体借用视图和缩放准备/恢复Triple、frame与精确资源；③替换inverseCompute/Uncompute，调整InverseHistory及内部模数前提，接入fieldInverse/Divide，传播全部资源和实际支持。不创建抽象求逆回调框架，不添加运行时开关；若旧半倍定义还有独立调用则保留，不为本优化复制它们。

每批完成完整verify及实际公理输出同步后才把README/PROOF_STATUS数字改为已证。设计阶段仅更新README目标与本文，不修改证明限制/语义框架/Lean门列。失败条件：F_q数学关系不成立、K或历史被中段修改、需要触碰活的数据或任意旧输出、phase只覆盖部分记录、无法保持公开fieldInverse规格，或出现未入账的常数转换/清理。遇到上述情况重新设计，不把308,744当作既定结果。
