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
| 改 1 | 求逆第二阶段 → 内部寄存器上原地模减半 + 逆序原地模加倍，XOR 接口不变 | 每次求逆 9,506,816 | ≈ 962,000 | 只动 I4 的 halving 循环；`fieldInverse_spec` / `fieldInverse_xor_spec` 陈述不变 |
| 改 2 | 模乘 → Horner 零输出内核 + 反序清理 + 适配器，不存倍数链 | 每个 XOR 乘积 2,892,800 Toffoli，70,678 线 | 内核 ≈ 590,000、清理 ≈ 786,000，XOR 适配器 ≈ 1,376,000；≈ 1,500 线 | 新原语 `mulInto`/`mulClear`，`fieldMul_spec` 陈述不变；调用次数不变 |
| 改 3 | 点加 → 除法中心 + 原地更新 + 角落标志 | 受控原地 91,964,213（已证） | ≈ 18.5M（用改 1、改 2 后的原语） | M3 第二版；新增"输出侧标志"与 λ* 数学引理 |
| 改 4 | Gidney 比较器（n Toffoli 的测量擦除比较器，替代两次减法的 borrowXor） | 每次比较 2n | n | 原地模加 5n→4n、原地模减半 3n→2n、`mulClear` 每位 −2n、改 1 减半轮 −n、Kaliski 轮记录比较 −w、计数比较减半；所有接口陈述不变 |
| 改 5 | Kaliski 轮压缩 | 每轮 4,669（18w+43） | 每轮 ≈ 3,620（≈14w+22，含改 4） | I3 统一体内的零检测换 MBU 擦除、masked 加减换原地受控版；`kaliskiRound_spec` 陈述不变 |
| 改 6 | Montgomery 4 位窗口模乘（研究预算） | 改 2 后每个乘积算+清 ≈ 1,376,000 | 6a 标准形式 ≤ 600,000；6b 全 Montgomery 表示 ≈ 300,000–430,000 | 新增查表原语与 Montgomery 形式；6a 不动其他模块，6b 动所有坐标表示 |
| 改 7 | 测量反计算查表所需的 CCZ 修正（条件项） | 语言只有 Z/CZ 修正 | 每个查表的反计算从 2^k 降到 ≈ 2^(k/2) | 只在改 6 选择 MBU 反查表时需要；扩展 Syntax/Semantics/Cost 三处 |

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
2. 最高位（i = n−1）：需要 cout 时用不带辅助位的 MAJ 门列 `CX a b; CX a c; CCX c b cout; CX a c; CX a b` 把进位**异或**进 cout（1 个 CCX；cout 是任意初值 C 的公开输出，不测量、不擦除），然后 `CX a_{n−1} b_{n−1}; CX c_{n−1} b_{n−1}` 写最高和位。
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

**受控版**（控制 g，改 1 的第二阶段和改 2 的清理都用它）：`c ← g ∧ x₀`（1 个 CCX）；受控(c) 加 p（n）；步 3 改为受控 CSWAP 链右移（n，因为 g=false 时不能移）；清 c：`c ^= g ∧ [x ≥ (p+1)/2]`（比较 2n + 1 CCX）。共 4n+2（改 4 后 3n+2）。对应的受控原地模加倍（1.6 的受控版，控制 g）：受控 CSWAP 链左移（n）；**受控(g) 减 p**（n：按 1.2 把 g·p 装进临时字 T 再 `subInPlace`，借位写入 h）；受控(h) 加回 p（n）；清 h：`h ^= g ∧ ¬x₀`（1 CCX）。两个分支的不变量：g=false 时 T=0、减法不发生、h 恒为 0、x 不变；g=true 时同 1.6（h=1 ⇔ 未约减 ⇔ 结果偶）。共 3n+1。减 p 不能无条件做，否则 g=false 时会留下 h=1。

### 1.8 原地模负 `negInPlace`

x ← (p − x) mod p，x=0 时保持 0（Litinski Fig. 6b）：按位取反（X），`addConstInPlace (p+1)`，x=0 的例外用一个 n 位零检测标志控制；2n Toffoli。点加角落情形只在常数上取负（编译期），本原语只为完整性列出。

## 2. 改 1：求逆第二阶段

### 2.1 现状

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

每轮：`counterActiveXor`（20）+ 受控原地模减半（4n+2）+ `counterActiveXor`（20）= 4n+42 = 1,066；加倍轮 3n+41 ≈ 812。512 轮各 ≈ 545,800 / ≈ 415,700。第二阶段合计 ≈ 961,500（现 9,506,816）；改 4 的比较器再把减半轮降到 3n+42。

### 2.3 接口与陈述

- `inverseLoop_spec`、`inverseLoop_xor_spec`、`fieldInverse_spec`、`fieldInverse_xor_spec`、`fieldInverse_contract` 的**陈述全部不变**：`halveFixed q z.k 512` 的数学定义就是"i<k 时减半"，与 I1 一致；任意 O 的 XOR 语义由 inv + CX 保证，M3 的"同一模块再跑一遍清零"照常成立。加倍循环是减半循环的逆（`HalvingBijection` 的 double∘halve = id），要证 `doublingLoop'` 把 inv 恢复到减半前的值。
- 资源：`fieldInverse` 目标 = 2×2,390,528 + 2×7,704 + 545,800 + 415,700 ≈ **5,757,000**（改 4 后 ≈ 5.6M；从 14,303,280 降 60%）。
- 线路：第二阶段去掉 b、temp 两组 257 位和 8n+10 的模算术区，换成 inv、常数临时字 T 和进位链，求逆工作区约 5,956 → ≈ 3.9k。但共享池的大小由模乘决定（69,908），求逆只占它的前缀，所以**改 2 之前总线路数保持 74,024**。

### 2.4 证明义务与文件

- `Arithmetic/HalveInPlace.lean`：1.7 的 Triple（受控版），含 Math 引理 `odd_iff_half_ge`（x<p 奇 ⇔ (x+p)/2 ≥ (p+1)/2）。
- `Arithmetic/HalvingLoop.lean` 重写：受控减半循环与逆序受控加倍循环，按改名后的布局递归（仿 `halvingEnd`/`swapCounter` 的模式）；`halvingRun_fixed` 不变，另证加倍循环是其逆。
- `Arithmetic/InverseCompute.lean`：新 `inverseLoop`；`InverseMiddle` 只保留内部寄存器 inv。
- `InverseLoopResources.lean`、`InverseResources.lean`、README/PROOF_STATUS 资源表、verify.sh 入口同步。
- 验收：`fieldInverse_spec`、`fieldInverse_xor_spec` 与 `fieldInverse_contract` 陈述不变，仅资源数字变化；118 个公开入口公理白名单通过。

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

## 4. 改 3：点加组合

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
| 原地模加/模减（1.5 第 4 步） | 5n | 4n | `mulInto` 每位 −n（589,824 → 524,288）；`mulClear` 每位 −2n（受控模减与减半各一个比较器：786,432 → 655,360） |
| 原地模减半（1.7 第 4 步） | 3n | 2n | 改 1 减半轮 4n+42 → 3n+42 → 每次求逆 −131k |
| Kaliski 记录段 v<u | 2w | w | 每轮 −257 → 每次求逆（正逆两遍）−263k |
| 两处 i<k 计数比较 | 20 + 20 | 10 + 10 | 每次求逆 −20k |
| 合计 | | | 每次求逆 ≈ 5.76M → ≈ 5.32M；XOR 适配器 1,376k → 1,180k；改 3 后的受控原地点加 ≈ 18.5M → ≈ 16.6M |

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

- `kaliskiRound_spec` / `kaliskiUnround_spec` 陈述不变，只换内部程序与资源数：kaliskiLoop 512 轮 ≈ 1.85M（现 2.39M）；配合改 1（并用比较器）每次求逆 ≈ 2×1.85M + 0.41M + 0.32M + 15k ≈ **4.5M**。
- 需要：原地受控减法/加法（改 2 的 1.5 受控版）、Gidney 比较器、AND 链的 MBU 擦除版零检测（`zeroControlled` 的 MBU 变体）。I3 的 `RoundBody`/`RecordRound`/`ZeroControl` 各替换一处，`KaliskiRoundProof` 的组合证明按接口不变复用。

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

## 8. 改 7：CCZ 修正（条件项）

只有当改 6 选择用测量反计算清除查表（Berry 等 2019：测量目标寄存器，再用一个 2^(k/2) 项的相位查表修正）时才需要：修正是对地址位的多控 Z，k=4 时是 CCZ 级别。届时在 `Framework/Syntax.lean` 的 `Correction` 增加 `CCZ a b c`，语义 `phase ^= s a ∧ s b ∧ s c`，`Cost` 把它计入非 Clifford 数（与论文口径一致，单独列出）。相应地 `measureX` 的修正列表可含 CCZ。证明义务：`run` 对新修正的相位规则，`Triple.seq/frame` 不变。

若改 6 用"重跑查表"清除（7.1 第 4 步），则不需要改 7；k=4 时差别仅每窗口 ≈ 15 个 Toffoli（每次乘 ≈ 1k），本文默认不做改 7。

## 9. 阶段目标总表

线路数按 `外部寄存器 + max(各模块工作区)` 估算：共享池的大小由所有仍在使用的模块中最大的工作区决定，**只改求逆不缩池**。Toffoli 目标是按本文门列推导的预期值，标"研究预算"的项未从本项目已有门列推导。

| 阶段 | 受控原地点加 Toffoli（目标） | 线路（目标） | 说明 |
| --- | ---: | ---: | --- |
| 基线（PR 11–13，已合并并验收） | 91,964,213 | 74,024 | 已证 |
| + 改 1（第二阶段原地减半/加倍，XOR 接口不变） | ≈ 58M | 74,024（池仍由模乘 69,908 决定） | 4 次求逆各 14.30M → 5.76M：4I + 12M₀ + 37,493 ≈ 57.8M |
| + 改 2（Horner 内核 + XOR 适配器） | ≈ 40M | ≈ 10.1k（外部 ≈ 4.1k + 求逆工作区 5,956；与改 1 合计 ≈ 8k） | 调用次数不变：12 次 XOR 乘法各 2.89M → 1.38M，4 次求逆 5.76M：4I + 12M + 37,493 ≈ 39.6M；倍数链消失 |
| + 改 3（除法中心原地点加） | ≈ 18.5M | ≈ 5k（点 513 + λ/t/inv/Dsafe ≈ 1k + 求逆工作区 ≈ 3.9k + 标志） | 2 除法（各含一个乘积）+ 3 个外部乘积 |
| + 改 4（Gidney 比较器） | ≈ 16.6M | ≈ 5k | 每次求逆 ≈ 5.32M，`mulInto` −n/位、`mulClear` −2n/位 |
| + 改 5（Kaliski 轮压缩） | ≈ 15M | ≈ 5k | 每次求逆 ≈ 4.5M |
| + 改 6a（Montgomery，标准形式；研究预算） | ≈ 12M | ≈ 5k | 每个乘积算+清 ≤ 600k |
| + 改 6b（全 Montgomery 表示，可选；研究预算） | ≈ 11M | ≈ 5k | 每个乘积算+清 ≈ 300k–430k，坐标表示改变 |
| 改 7（CCZ 修正，条件项） | 影响 < 0.1% | +0 | 仅当采用 MBU 反查表 |
| 参照：Litinski 2023 精确点加 | ≈ 8M | ≈ 3,000 | 公开构造，Gidney 受控加法器 + 13n 轮 + 融合乘加 |
| 参照：Babbush 等 2026（保密电路，近似正确） | 2.1–2.7M | 1,175–1,425 | 不承诺复现 |

改 1–6 之后剩余成本的大头仍在两次除法（各含正逆两遍 Kaliski 循环）；再压需要换求逆算法或融合的乘加模块，属于新的研究项，不在本计划内。每个模块虽可独立证明同形 Triple，但替换布局后的支持集等式和上层适配器（3.3、2.2 的 CX/清理）都要另证，不是自动完成。

### 依赖与建议顺序

依赖图（频道确认版）：基础层（§1，1 个 PR）先做；随后改 1、改 2、改 4 只通过 Triple 接口相互独立，可并行；改 5 可并行开发，但集成依赖改 4 的比较器与基础层的受控原地加减（§6.2）；改 3 依赖改 1 与改 2；改 6 是改 2 的替代；改 7 依赖改 6 的选择。

1. 基础层（1 个 PR：`addInPlace`、常数加、原地模加/减（含受控版与 a'≤p 引理）、`dblInPlace`、`halfInPlace` 及受控版）。
2. 改 4（1 个 PR：比较器原语 + 替换 Borrow.lean 调用点 + 资源数更新；公开陈述不变）。
3. 改 1（1 个 PR：受控减半/加倍循环 + `inverseLoop` 重组 + 资源/文档）。
4. 改 2（2 个 PR：`mulInto`/`mulClear` 与循环不变量；三个适配器 + `fieldMul_spec` 重证 + 资源）。
5. 改 3（3 个 PR：Math 引理组（输出侧标志、λ*、x_{R+C}=cx ⇔ R=−2C）；`divide`；原地点加与受控版）。
6. 改 5（2 个 PR：MBU 零检测 + 原地受控加减接入 I3 统一体；轮内替换与资源）。
7. 改 6a（先交受控加模块门列与计数，再 2 个 PR：查表原语 + Montgomery 约减数学；窗口乘法与资源），6b 视需要；改 7 仅在改 6 采用 MBU 反查表时立项。

每项先交"构造 + 逐步寄存器表 + 门数推导 + 证明义务"的设计 PR 描述，确认后再写证明；README 的资源表随每次合并更新。

## 10. 文档约定

本文件是重做计划的唯一来源；README 只保留"下一步计划"摘要表并链接到此处，PROOF_STATUS 只记录已证明的内容，PROVENANCE 记录来源。计划变更在同一 PR 里同时改本文件和 README 摘要，不维护第二份副本；频道里的附件只是快照。

## 11. 验收标准（每一项 PR）

- 公开定理陈述可读，前提只有 Nodup、位宽、数值范围；无坐标前提；输入域不缩小。
- 正确性、三项资源、支持集指向同一字面程序；资源表在 README 与 PROOF_STATUS 同步替换，旧数字保留在 PROVENANCE 的历史里。
- `lake --wfail build` 与公开入口公理白名单通过；无 sorry / native_decide / 新 axiom。
- 每项先交"构造 + 逐步寄存器表 + 门数推导 + 证明义务"的设计 PR 描述，确认后再写证明（与 M3 流程一致）。
