# Framework

本模块定义电路的状态表示、允许的操作、执行规则，以及正确性和资源计数的证明工具。

## 当前入口：显式实现与证明（2026-10-06）

关键算术函数现在优先读各模块的 `Certified.lean`。每个语句或共享代码块直接指定 Lean 实现及其规格证明，不经过默认实现注册表：

```lean
prog {
  {
    let product := (M.x * M.y) mod p;
    M.out = (M.out + product) mod p;
  } using (Arithmetic.montMulAdd M p) by (montMulAdd_spec M p);
}
```

花括号给出独立的数学计算，`using` 给出实际 `Program`，`by` 给出已有的 Hoare 规格定理。连接器检查定理的电路就是这个实现，并生成 Lean 证明：满足其前提时，定理的后置条件蕴含所写计算。写错运算、寄存器、模数、实现或证明会报错；不是仅检查定理名字存在。

结果是 `CheckedProgram`，而不是裸门列：

- `.circuit`：只包含 `using` 指定的一份实现。块内语句不另外生成电路。
- `.effect`：源代码定义的输入/输出数学关系。
- `.requires`：原规格的位宽、互异、范围、初始化等前提，调用者必须证明。
- `.ensures`：保留所引用规格的全部后置条件，包括它已证明的输入保持、工作区恢复或 frame；不凭空补充原定理未证明的性质。
- `.correct`：对任意初始相位及测量记录，在上述前提下证明计算、相位恢复和原后置条件。

共享中间值可以放在同一块中。测试中的一位示范写 `out ^= difference` 与 `out2 ^= (difference+const(1)) mod 2`，整块指定一次共享差值电路；八条实际指令只计算一次差，使用两次，再恢复辅助位。分组本身不优化门列，共享与清理由所选实现及其证明负责。

当前语义边界：

- `=` 描述结果值，`^=` 描述与原目标值 XOR；前提决定覆盖操作何时可实现，不是通用量子重置。这里的数学等式不静默截位；需要截断时显式写 `mod (2^n)`，不能把旧 `prog` 的不等宽复制约定自动套用到本层。
- `const(k)` 是经典 Nat；`(x-y) mod q` 使用模减含义，拒绝没有模数的裸减法和裸求逆。`inverse(x) mod q` 表示模逆；非零/互素条件来自证明。
- `field(expr) mod q` 在 `ZMod q` 中计算再取标准代表元，点加公式因此不会误用 Nat 的截断减法；`/` 在这里是乘逆元。
- 块内语句按书写顺序更新数学值；`let` 保存当时的数学值，不分配 qubit。用新名字保存输入快照；作用域内不允许重名。
- 本层是关系规格：`effect` 约束显式写出的结果，未写出的线路性质取自 `ensures`，不自动声称全局 frame。同一寄存器的后续读取须沿用同一表达式（允许加括号）；不推断不同名字或重叠接线之间的别名关系。物理接线是否实现这些公式仍由证书检查。
- `if c` 表示 c=1 的受控数学效果，`if (c XOR 1)` 表示 c=0；本层不插入测量或对任意门列机械地添加控制。布尔比较快照也可作为条件。
- 当前连接器接收结论为 `Triple` 的定理。逐状态 `_correct` 和复杂状态谓词的连接整理在各模块的 `CertifiedSpecs.lean` 中，原前提与结论保留。前提可能不可满足，因此“证书构造成功”不等于某个初态满足 `requires`。

上述入口覆盖地图中的 21 个关键函数，命名空间为 `ECDSAAdd.Arithmetic.Certified`。单句写成 `语句 using 实现 by 证明;`；共享块在结束的 `}` 后同一行写 `using 实现 by 证明;`。通用认证入口目前接收一个单句或一个完整共享块，不会自动连接任意多个证书。

模加减另已直接迁移原来的 `modAddOn/modSubOn : Program`，不只改认证外层：

```lean
prog {
  let borrow := (x + y) < const(q) using (ModAddPrepare W) by modAddPrepare_correct;

  {
    if (borrow XOR 1) { out ^= ((x + y) - const(q)); };
    if borrow { out ^= (x + y); };
  } using (ModAddSelectAndClear W) by modAddSelectAndClear_correct;
}
```

第一步证明比较结果，并留下完整候选、原输入/输出值及零进位链。第二步必须使用同一工作区、同一种算法的 `Ready` 状态，证明选择结果并恢复工作区。最终规格通过 `reductionProgram_correct` 组合两段证明；不是依赖函数定义之后的规格来认证函数自身。新语法实现见 [ModularTranslation.lean](../Arithmetic/ModularAddition/ModularTranslation.lean)，它只支持完整模加/模减模板。

这两种入口的范围不同：通用共享块是一个整体证书，模加减的原函数是两个连接起来的阶段证书。其余 19 个入口仍使用已证明的后端，不宣称已经将其内部步骤全部迁移。布局仍绑定具体工作区，资源来自实际门列；没有新增一般量子信道证明。

以下 `arith/Config` 与 `prog using Context` 章节保留为兼容接口说明，不是新入口的默认实现机制。

## 高层算术语言（第一版）

`arith` 保存高层算术操作，`prog` 保留原有门级语义；两者不混用。打开 `ECDSAAdd.ArithmeticLanguage` 后可以写：

```lean
arith using arithmetic {
  y = (x + y) mod q;
  y = (x + y) mod q using masked;
}
```

`x`、`y` 是等宽 `QReg n`；`q` 是经典 Nat。表达式表示原地模加，不测量寄存器，也不是先按 n 位截断再取模。第一版只接受上述形式，右侧第二个寄存器必须与左侧是同一个标识符；不自动推断别名或化简任意代数表达式。

`arithmetic : Config n` 指定默认实现和显式接线的注册表。`using masked` 是注册名称，不是对任意函数进行隐式调用；局部选择优先。相同名称可以绑定不同操作，查找同时核对源、目标和模数；重复的同名同操作条目按首项解析。没有匹配项时返回错误，不静默换电路。

使用过程是：写出代码 → `Request.compile` 取得已接线计划 → 证明高层规格和 `Ready` 调用条件 → 得到 `Verified.correct` 的低层 Triple。编译成功本身不证明初始量子数据的范围或工作区为零；这些条件必须由调用方证明，不会变成运行时检查或自动重置。

当前仅支持原地模加的顺序组合和实现选择，一个块内的逻辑寄存器统一使用同一位宽 n。普通加减、XOR 写入、初始化赋值、混合位宽的操作、循环、量子条件块、自动工作区分配和择优编译尚未接入 `arith`。证明范围仍是本项目的带符号计算基态分支模型，并未新增一般量子信道语义。完整可运行例子见 [ModularAddition README](../Arithmetic/ModularAddition/README.md#languageexamplelean)。

## 现有算法中的算术表达式

现有 `... : Program` 函数使用 `open scoped ECDSAAdd.CircuitDSL`，在 `prog using` 中也可以写算术表达式。它们直接展开到配置中的具体电路，保持原接口；正确性仍由这些函数的 `_spec` / `_correct` 证明，不等于已经迁入上面的 `Code` / `Verified` 编译流程。

```lean
prog using (modArithmeticContext L) {
  let x := L.x;
  let y := L.y;
  let total := L.reg .total;
  total ^= (x + y);
}
```

| 写法 | 含义 |
| --- | --- |
| `y += x;` / `y -= x;` | 原地加减，按目标位宽回绕；配置绑定进位等工作位 |
| `out ^= (x + y);` / `out ^= (x - y);` | 将和／差 XOR 到 out，不覆盖已有值 |
| `out ^= x;` / `out ^= const(k);` | XOR 寄存器／经典 Nat 常量；不表示重置 |
| `out ^= (x - y) mod q;` / `out ^= (x * y) mod q;` | XOR 模差／模积 |
| `y = (x + y) mod q;` / `y = (y - x) mod q;` | 原地模加减，不先按逻辑位宽截断 |
| `out = (out + x * y) mod q;` / 减号版本 | 模积累加／累减 |
| `if c { y += x; };` | 调用已有的受控加法；c=0 时数据效果为恒等 |
| `if (c XOR 1) { out ^= x; };` | c=0 时 XOR，不测量控制位 |

`q` 为经典 Nat；减法表示模减，不是 Lean Nat 的截断减法。模加减配置 `modAssignContext` 的 source 含零扩展高位，target 只传低 n 位；目标高位及工作区在配置中绑定并由原规格要求清零。其他接口的物理位宽仍以各模块规格为准，本构造层不做 `QReg n` 的静态位宽认证。

`using 名称` 在此构造层选择一个局部接线函数，例如 `out = (out - x * y) mod q using squareSub;`；它不是 `arith` 的认证注册名称。这里不会自动检查自定义函数是否符合表达式：必须像生产函数一样提供门列连接和语义证明。支持显式选择的形式为非受控模加减、模积累加减，以及受控常量加法；其他未支持的形式报错。

`prog` 内的 `if c { ... };` 表示量子受控执行：c 是一根 wire，存 1 时执行所写操作；`if (c XOR 1)` 对应存 0 的分支。它不测量条件，不是测量后的经典分支，数字条件也表示 wire 编号而不是 Bool。旧 `control` 写法仍兼容，二者展开为相同门列。普通 Lean 的 `if … then … else …` 和显式测量写法 `if meas …` 不变。

`if` 块只接受已支持的算术语句，可顺序列出多句；不是对任意 Program 的通用控制，暂不支持嵌套条件块或 `else`。负控制目前仅接入 XOR 寄存器／常量及下述完整约减模板，其他负控制仍使用原有显式接口。循环沿用 `prog` 的构造期循环。相邻互补 XOR 分支由 `chooseXorFitted` 在等宽时合并；不等宽时保留独立受控 XOR，防止漏掉较长分支的有效位。

### 隐藏工作区的配方与作用域（2026-10-05）

以下是保留兼容的旧配置写法；当前 `Modular.lean` 的 `modAddOn x y out q W` 已采用上面的逐阶段 `using/by`，`modAdd L q` 继续作为布局兼容入口。

```lean
prog using (modReductionContext W) {
  let borrow := (x + y) < const(q);
  if (borrow XOR 1) { out ^= ((x + y) - const(q)); };
  if borrow { out ^= (x + y); };
}
```

这里的 `<` 是逐计算基态的比较，不读取测量结果，也不是 Lean 在构造期比较 wire 编号。此版本只接受上述完整模加模板及对应模减模板；两分支的输入、条件、输出和常数必须匹配。改变表达式、漏掉分支或插入其他操作会报错，不能悄悄沿用旧配方。它还不是一般表达式树编译器。

配方计算一次 n+1 位的和与差，以差的最高位作为 borrow；共用原选择器，随后清理差、和与常数。n 是逻辑输出的长度；x/y 的物理接口仍含一根零扩展高位。`modAddOn_spec` / `modSubOn_spec` 证明比较分支所写的数值结果，原规格继续保证清零、相位与保持性质。中间表达式不会先截成 n 位；只有最后 XOR 写入按目标位宽取低位。

模加减现有一套[分层证明示范](../Arithmetic/ModularAddition/README.md#modularlean)：纯数学的两个分支证明，加上后端对实际门列的分支实现证明，推出 `modAddOn_mod_spec/modSubOn_mod_spec`；再给出相位和逐线保持结论。旧模加减规格由新证明推出。这是上述两个固定配方的完整连接，不是任意 `if` 或一般表达式的自动证明，也没有扩大 `arith` 的操作范围。

临时结果用 `with` 明确其存活范围：

```lean
prog using (montOutputContext M) {
  with product := (M.x * M.y) mod p {
    M.out ^= product;
  };
}
```

后端提供 `Computed` 的值、准备程序和恢复程序；展开顺序是准备 → 块体 → 恢复。模乘历史一直保留到块结束。求逆的 `inverseValue` 恢复到 Kaliski 初态，`safeInverseValue` 还负责装载/卸载安全分母；不把恢复初态误写成全部赋零。嵌套块按内层先恢复的顺序展开。临时名字不能在块外使用。

`with` **不自动证明任意块体安全**。块体若修改了恢复所需的输入、临时结果或历史，就可能无法恢复；必须证明准备、使用和恢复的契约衔接。`Computed.correct` 给出这一组合规则，生产函数仍通过原 `_spec` / `_correct` 验证；`Computed.resources` 计入三个阶段全部资源。不动态分配新 wire，不倒放测量门列，不自动寻找最优实现。

其他新增配方：无控制的 `target += const(k)` / `-= const(k)`、`out ^= (x - const(k)) mod q`、`out ^= (x ^ 2) mod q`、`if c { out = (const(k) + out) mod q; };`，以及 `out = (out - x ^ 2) mod q using squareSubtract`。这些形式必须有相应后端，平方只支持指数 2；装载、复制和清理移到后端，不删去实际电路。

普通 `out ^= source`（含正负控制）接受不等宽：源较长取低 out.length 位；源较短等价补零，目标高位不变。`copyRegister_fit_correct` 证明此规则。它不意味着两个任意宽度的加法输入也可以无条件共用同一进位布局；其他算术的位宽要求仍见各模块规格。

## 文件目录

[Syntax.lean](#syntaxlean)

这个文件定义状态的表示和电路允许的操作。这里的状态是带正负相位的计算基态，不是一般叠加态。

[Semantics.lean](#semanticslean)

这个文件定义量子电路如何在上述状态表示下执行，并证明执行与相位修正的基本性质。

[Hoare.lean](#hoarelean)

这个文件定义如何陈述电路的正确性，并证明如何组合已有的正确性结论。

[ArithmeticLanguage.lean](#arithmeticlanguagelean)

这个文件定义带位宽的逻辑寄存器、原地模加的高层语义和不依赖实现的算法规格。

[ArithmeticCompiler.lean](#arithmeticcompilerlean)

这个文件定义带证明的实现、配置与编译计划，并证明编译结果的正确性及资源组合关系。

[ArithmeticSyntax.lean](#arithmeticsyntaxlean)

这个文件将可读的赋值语句解析为高层操作，并将源代码与配置一起保存。

[ProofLanguage.lean](#prooflanguagelean)

这个文件提供受控英文证明句式：按情况讨论、写出中间结论、引用取模性质，并由 Lean 检查每一步。

[Cost.lean](#costlean)

这个文件定义电路的资源计数和实际触及的线路，并证明电路拼接时的资源关系及外部线路保持性质。

[CertifiedTranslation.lean](#certifiedtranslationlean)

这个文件定义独立的算术块语义，把指定实现和已有规格连接成带前提与证明的可读程序。

## [CertifiedTranslation.lean](CertifiedTranslation.lean)

```lean
abbrev Effect := BasisState → BasisState → Prop
```

表示初态与末态之间的数学计算关系，不依赖所选电路。

```lean
structure Certificate (effect : Effect) (circuit : Program)
```

证书由前提 `requires`、保留的后置关系 `ensures` 及证明 `correct` 组成。证明同时保证源计算、相位恢复和原后置条件。

```lean
def Certificate.ofTriple {P Q : BasisState → Prop} {circuit : Program}
    (effect : Effect) (proof : Triple P circuit Q)
    (meaning : ∀ s t, P s → Q t → effect s t)

def Certificate.abstract {α : Sort u} {effect : Effect} {circuit : Program}
    (family : α → Certificate effect circuit)
```

前者用已有 Hoare 定理和数学连接证明构造证书；后者保留规格参数与假设，把它们作为前提见证，不抹去证明义务。

```lean
structure CheckedProgram
```

可读程序由 `effect`、`circuit`、`certificate` 三部分组成。

```lean
theorem CheckedProgram.correct (p : CheckedProgram) (s : State) (m : List Bool)
    (h : p.requires s.basis)
```

在调用前提成立时，实际门列实现源计算、恢复相位，并满足原规格的全部后置条件。证明解析器不承担可信逻辑：生成的证明仍由 Lean 检查。

## [Syntax.lean](Syntax.lean)

```lean
abbrev Wire := Nat
```

Wire 表示量子线路中的一根 wire，这里直接使用自然数 Nat 作为 wire 的编号。

```lean
abbrev BasisState := Wire → Bool
```

BasisState 表示一个计算基态（computational basis state）。

```lean
structure State
```

状态 State 定义为 phase 和 basis 两部分，phase 记录正负相位。

```lean
inductive Correction
```

允许的测量后修正（Correction）操作是 Z 和 CZ。

```lean
inductive Instr
```

电路中允许的操作包括 X、CX、CCX 和 X basis 上的测量。测量结果只选择即时 Z/CZ 修正，不改变后续电路。

```lean
abbrev Program := List Instr
```

Program 表示一个量子电路。

```lean
def measurementCount : Program → Nat
```

计算一个量子电路中测量的数量。

```lean
class CircuitDSL.ToProgram (α : Type) where
  toProgram : α → Program
```

统一电路语句的结果：Instr 的 instance 将一个门变成单元素指令列表，Program 的 instance 保留整段子电路。`prog` 中直接门使用 `CX a b;`、`CCX a b target;`，子电路使用 `majority(a,b,cin,carry);`；两种写法可在循环中混用。文件中 `open Instr` 后即可省略门名的 `Instr.` 前缀，原有括号调用仍兼容。

```lean
def CircuitDSL.emit {α : Type} [CircuitDSL.ToProgram α] (value : α) : Program
```

通过对应 instance 将 value 转成指令列表。`prog` 对 Instr 和 Program 直接生成门列表或保留子程序调用；其他类型使用对应 instance。它还支持局部 `let`、`for i in range(n)`、`for i in reversed(range(n))` 和 `for item in items`（遍历列表）。循环在生成电路时展开，range 保留索引范围证明；倒序循环倒序调用子程序，不会倒放子程序中的门或测量。`X`、`CX`、`CCX`、`measureX` 的普通 Lean 调用在循环内外均可使用，复合参数按 Lean 规则加括号。

```lean
structure CircuitDSL.Context (α : Type)
```

接线配置由 operations、before、after 三部分组成。`prog using context { ... }` 将 operations 中的具名字段作为该代码块的局部操作；before/after 是明确指定的准备与清理电路，默认均为空。配置必须在构造期可展开，不自动分配辅助位，也不自动推断哪些位可复用。作用域结束后原函数接口不变。

```lean
structure CircuitDSL.Computed (α : Type)
def CircuitDSL.Computed.program {α : Type} (c : CircuitDSL.Computed α) (body : α → Program) : Program
```

Computed 由 value、prepare、restore 三部分组成，分别是供块体使用的值、准备电路和恢复电路。program 将它们按准备、使用、恢复的顺序组合；with 语法展开为同一门列。

```lean
structure CircuitDSL.Branch
```

分支条件由 onTrue、onFalse 两根控制线组成，分别预先保存 `enabled AND predicate` 和 `enabled AND NOT predicate`。

```lean
def CircuitDSL.Branch.complement (b : CircuitDSL.Branch) : CircuitDSL.Branch
```

交换两条分支线，简写为 `(b XOR 1)`；不施加 X 门，不对 wire 编号或数据寄存器做异或。使能关闭时，两条分支都为零。

`C-div condition target` 和 `C-const condition target` 保留为调用配置中 cdiv/cconst 的兼容语法。

斜率清理现在使用 `CCsub generic (xIsZero XOR 1) slope (point.y / point.x)` 和 `CCXor generic xIsZero slope lambdaStar`。两个控制条件均成立时，分别从 slope 减去模 p 的商、向 slope XOR 常量。这里 xIsZero 是独立的判零 wire；控制位置的 `XOR 1` 表示负控制，不修改该位，也不使用上述 Branch 的预先掩码表示。商表达式由语法拆成分子和分母寄存器，不先执行 Lean 除法。`clearSlopeContext` 只绑定工作区；具体实现先合并双控制，再调用原受控算术接口并清零临时控制，不对任意 Program 逐门添加控制。

单控制调用统一把目标放在源之前：`CXor c out src` 是寄存器 XOR，`CConst c out k` 是经典常量 XOR，`CPointXor c out C` 是点编码 XOR（不是点加）。它们支持 `(c XOR 1)` 负控制；`CX (c XOR 1) target`、`CCX enabled (c XOR 1) target` 也表示负控制门。`CAdd/CSub c target source` 与 `CAddConst/CSubConst c target k` 调用配置中的受控加减；`CAddConstLow` 使用配置中低位宽的常量加法。后面这些算术简写只接受正控制，不会给任意程序自动添加控制。

只有接线配置明确提供 cxorCases 时，相邻的 `CXor (c XOR 1) out a; CXor c out b;` 才合并成选择电路；要求 c/out 是相同的语法表达式。不同控制、不同目标、中间隔有语句或 let 时不合并，无配置时仍展开成独立控制。模加减绑定原 chooseXor，每位一个 Toffoli；其等价性由 Selection 中的 `selectXor_controls_equiv` 证明，沿用寄存器等宽、线路互异的前提。此优化不会检查任意布局是否满足前提，调用者仍须通过公开规格证明合法性。

## [Semantics.lean](Semantics.lean)

```lean
def writeBit (bits : BasisState) (w : Wire) (v : Bool) : BasisState
```

将计算基态中线路 w 的值改为 v，其他线路保持不变。

```lean
def correct : List Correction → State → State
```

对状态执行一组测量后相位修正。

```lean
def measureAndCorrect (t : Wire) (c₀ c₁ : List Correction) (m : Bool) (s : State) : State
```

根据测量结果 m 更新相位、清零目标线路 t，并执行对应的即时修正。

```lean
def run : Program → List Bool → State → State
```

给定测量结果记录和初始状态，执行电路并返回最终状态。

```lean
theorem correct_basis (cs : List Correction) (s : State)
```

证明了相位修正不改变任何 basis 位。

```lean
theorem run_take (p : Program) (m : List Bool) (s : State)
```

证明了 run p m s 实际上只会读取程序 p 所需要的前 measurementCount p 个测量结果；m 后面多出来的 Bool 完全不会影响运行结果。

```lean
theorem run_append (p q : Program) (m : List Bool) (s : State)
```

证明了执行拼接的电路 p ++ q，等价于先执行 p 再执行 q；测量结果记录按 p 的测量次数分成两段，分别供 p 和 q 使用。

## [Hoare.lean](Hoare.lean)

```lean
theorem CircuitDSL.Computed.correct {α : Type} (c : CircuitDSL.Computed α)
    (body : α → Program) {P R S Q : BasisState → Prop}
    (prepare : Triple P c.prepare R) (use : Triple R (body c.value) S)
    (restore : Triple S c.restore Q)
```

证明了准备、块体、恢复的前后条件能衔接时，整个作用域满足 `{P} c.program body {Q}`；恢复所需的条件不能省略。

```lean
class Holds (α : Type) (β : Type) where
  holds : BasisState → α → β → Prop
```

Holds.holds st a b 给出命题：在计算基态 st 中，α 类型的寄存器 a 保存的值是否是 β 类型的 b。

```lean
def regValue (r : List Wire) (st : BasisState) : Nat
```

读取寄存器 r 保存的自然数，采用小端表示。

```lean
structure PointReg
```

点寄存器 PointReg 定义为有限点标志 finite 和两个坐标寄存器 x、y 三部分。

```lean
def Triple (P : BasisState → Prop) (c : Program) (Q : BasisState → Prop) : Prop
```

表示电路 c 在前置条件 P 成立时，执行后满足后置条件 Q 且相位恢复；要求对所有初始相位和所有测量结果成立。

以下三个定理位于 Triple 命名空间；P、P'、Q、Q'、R 是状态条件，c、d 是电路。

```lean
theorem seq (hc : Triple P c Q) (hd : Triple Q d R)
```

证明了前一段电路的后置条件满足后一段的前置条件时，可以将两段正确性证明组合起来，得到从 P 到 R 的保证。

```lean
theorem conseq (hP : ∀ s, P' s → P s) (hc : Triple P c Q)
    (hQ : ∀ s, Q s → Q' s)
```

证明了已有正确性结论允许加强前置条件、减弱后置条件：由 P' 推出 P、由 Q 推出 Q'，就能得到从 P' 到 Q' 的保证。

```lean
theorem frame (hc : Triple P c Q)
    (hR : ∀ s t, (∀ w, w ∉ wires c → s w = t w) → R s → R t)
```

证明了只依赖电路 c 未触及线路的额外条件 R，在执行后仍成立，因此可以同时加入前置条件和后置条件。

## [ArithmeticLanguage.lean](ArithmeticLanguage.lean)

```lean
structure QReg (n : Nat)
```

QReg 是 n 位小端寄存器视图，由 wires、位宽证明 width、内部线路互异证明 distinct 组成。它引用物理线，不分配新寄存器，也不表示一个独立纯态。

```lean
def QReg.value {n : Nat} (r : QReg n) (s : BasisState) : Nat
def Clean (work : List Wire) (s : BasisState) : Prop
```

value 读取此计算基分支中的寄存器数值；Clean 断言工作区每根线都为零，不执行清零。

```lean
structure ModAdd (n : Nat)
```

ModAdd 由 source、target 和经典 modulus 组成，描述 `target = (source + target) mod modulus`。

```lean
def ModAdd.Valid {n : Nat} (op : ModAdd n) : Prop
def ModAdd.Pre {n : Nat} (op : ModAdd n) (s : BasisState) : Prop
def ModAdd.Effect {n : Nat} (op : ModAdd n) (s t : BasisState) : Prop
```

Valid 要求 0<modulus<2^n，源和目标的所有线路互异。Pre 要求两个输入值均小于 modulus。Effect 描述源值保持、目标得到模加结果、目标之外所有 wire 保持。

```lean
theorem ModAdd.Effect.pre {n : Nat} {op : ModAdd n} {s t : BasisState}
    (hv : op.Valid) (hp : op.Pre s) (he : op.Effect s t)
theorem ModAdd.Effect.clean {n : Nat} {op : ModAdd n} {s t : BasisState}
    (he : op.Effect s t) (work : List Wire)
    (hd : ∀ w ∈ work, w ∉ op.target.wires) (hc : Clean work s)
```

分别证明一次模加之后，输入范围仍适合再次模加，与目标分离的零工作区仍为零。

```lean
structure Statement (n : Nat)
abbrev Code (n : Nat) := List (Statement n)
```

Statement 包含高层 operation 和可选的实现名称 implementation；Code 是按顺序执行的语句列表。

```lean
inductive Executes {n : Nat} : Code n → BasisState → BasisState → Prop
def Spec {n : Nat} (P : BasisState → Prop) (code : Code n) (Q : BasisState → Prop) : Prop
```

Executes 逐句连接 Pre 和 Effect，不涉及门列或实现名称。Spec 断言从 P 出发的高层执行都满足 Q；实际电路的执行存在性与相位恢复另由编译证明给出，不能只靠这条规格跳过 Ready。

```lean
def twice {n : Nat} (op : ModAdd n) (first second : Option String := none) : Code n
theorem twice_spec {n : Nat} (op : ModAdd n) (first second : Option String)
    (X Y : Nat) (work : List Wire) (hd : ∀ w ∈ work, w ∉ op.target.wires)
```

twice 构造两次同一模加。twice_spec 证明 x=X 保持，y 从 Y 变为 `(X + (X+Y) mod q) mod q`，与目标分离的工作区保持零；证明不依赖两次所选实现。

## [ArithmeticCompiler.lean](ArithmeticCompiler.lean)

```lean
structure Resources
structure Implementation {n : Nat} (op : ModAdd n)
```

Resources 由 Toffoli 数、测量数、静态线路集合组成。Implementation 包含具体电路、零工作区、有效性与分离条件、所有测量记录下的相位恢复和 Effect 证明，以及与同一电路一致的资源证明。

```lean
structure Binding (n : Nat)
structure Config (n : Nat)
def lookup {n : Nat} (name : String) (op : ModAdd n) :
    List (Binding n) → Option (Implementation op)
```

Binding 将名称、操作及其已接线实现绑定。Config 保存默认名称和注册列表。lookup 同时匹配名称与完整操作，只返回已经带证明的实现。

```lean
inductive Lowering {n : Nat} : Code n → Type
def Lowering.circuit {n : Nat} {code : Code n} : Lowering code → Program
def Lowering.Ready {n : Nat} {code : Code n} : Lowering code → BasisState → Prop
def Lowering.resources {n : Nat} {code : Code n} : Lowering code → Resources
```

Lowering 将每条高层语句配上实现；circuit 拼接门列。Ready 要求每次调用的范围和零工作区成立，包括前一条操作之后的调用条件。resources 将门数相加、线路集合取并集。

```lean
theorem Lowering.resources_correct {n : Nat} {code : Code n} (plan : Lowering code)
theorem Lowering.run_correct {n : Nat} {code : Code n} (plan : Lowering code)
    (s : State) (m : List Bool) (h : plan.Ready s.basis)
theorem Lowering.sound {n : Nat} {code : Code n} (plan : Lowering code)
    {P Q : BasisState → Prop} (spec : Spec P code Q)
```

分别证明资源报告与实际门列一致；Ready 成立时对所有测量记录实现高层 Executes 并恢复相位；以及高层 Spec 加 Ready 推出原有 Triple。

```lean
structure Verified {n : Nat} (code : Code n) (P Q : BasisState → Prop)
theorem Verified.correct {n : Nat} {code : Code n} {P Q : BasisState → Prop}
    (verified : Verified code P Q)
```

Verified 包含 plan、高层 specification 和由 P 推出 Ready 的证明。correct 得到 `Triple P plan.circuit Q`，不再留下未处理的调用条件。

```lean
def compile {n : Nat} (config : Config n) : (code : Code n) → Except String (Lowering code)
```

按配置解析每条语句；找不到已注册且操作匹配的实现时返回错误，不忽略语句，也不回退到其他实现。

```lean
theorem twice_ready {n : Nat} (op : ModAdd n) (first second : Option String)
    (a b : Implementation op) (work : List Wire)
    (ha : ∀ w ∈ a.workspace, w ∈ work) (hb : ∀ w ∈ b.workspace, w ∈ work)
    (hd : ∀ w ∈ work, w ∉ op.target.wires)
    (s : BasisState) (hp : op.Pre s) (hc : Clean work s)
theorem twice_correct {n : Nat} (op : ModAdd n) (first second : Option String)
    (a b : Implementation op) (work : List Wire)
    (ha : ∀ w ∈ a.workspace, w ∈ work) (hb : ∀ w ∈ b.workspace, w ∈ work)
    (hd : ∀ w ∈ work, w ∉ op.target.wires)
    (X Y : Nat) (hX : X < op.modulus) (hY : Y < op.modulus)
```

twice_ready 证明两次调用可以借用同一初始为零的工作池，包括使用不同实现的情况。twice_correct 将这个结论与 twice_spec 组合成低层 Triple，保留源、清零工作池并恢复相位。

## [ArithmeticSyntax.lean](ArithmeticSyntax.lean)

```lean
structure Request (n : Nat)
def Request.compile {n : Nat} (request : Request n) : Except String (Lowering request.code)
```

Request 包含 config 和高层 code；compile 使用这份配置编译代码。`arith { ... }` 只产生 Code，`arith using config { ... }` 产生 Request；语法定义和宏展开无需逐条阅读。

## [ProofLanguage.lean](ProofLanguage.lean)

使用 `open scoped ECDSAAdd.ProofLanguage` 开启记法，定理的证明体写成 `:= Proof`。完整示范见 [ModularAlgorithm.lean](../Arithmetic/ModularAddition/ModularAlgorithm.lean) 的 `addResult_correct/subResult_correct`。

| 句式 | 含义 |
| --- | --- |
| `We split on P`，接 `Case h =>` 和 `Otherwise hn =>` | 分别在 P 和 ¬P 下证明原结论；两分支都必须完成 |
| `By definition [f] using [h] we get result : P` | 展开所列定义，使用所列事实检查 P |
| `From [h₁, h₂] by arithmetic we get bound : P` | 从所列事实及其必要依赖，用整数／自然数线性算术检查 P |
| `By the small remainder rule using h we get result : a % q = a` | h 必须证明 a<q |
| `By the shifted remainder rule using hs, hr we get result : a % q = r` | hs 必须证明 a=r+q，hr 必须证明 r<q |
| `From [h₁, h₂] we conclude P` | 用所列事实的直接应用或等式化简完成当前目标；P 必须与当前目标一致 |

句式固定，公式仍是 Lean 表达式，不解释任意英文，也不调用语言模型。底层 tactic 保存在本文件，读算法证明时不必展开。`by arithmetic` 会清除无关假设，不能漏列前提后从其他上下文偷偷取得结论；它不是任意数学命题的自动证明器。

```lean
theorem shiftedRemainder {value remainder modulus : Nat}
    (decomposition : value = remainder + modulus) (small : remainder < modulus)
```

证明 value 除以 modulus 的余数是 remainder；这是 shifted remainder rule 使用的通用取模引理，不包含模加减算法的结论。

## [Cost.lean](Cost.lean)

```lean
theorem CircuitDSL.Computed.resources {α : Type} (c : CircuitDSL.Computed α)
    (body : α → Program)
```

证明了临时值作用域的门数、测量数等于准备、块体、恢复三部分之和，物理线路为三部分的并集。

```lean
def toffoliCount : Program → Nat
```

计算电路中的 Toffoli 门数量。

```lean
def correctionWires : List Correction → Finset Wire
```

给出一组测量后修正涉及的线路集合。

```lean
def Instr.wires : Instr → Finset Wire
```

给出一条指令涉及的线路集合；测量指令包含目标线路及两种结果对应的修正线路。

```lean
def wires : Program → Finset Wire
```

给出整个电路涉及的线路集合，共用线路只计入一次。

```lean
def qubitCount (p : Program) : Nat
```

计算电路 p 涉及的不同物理线路数量，不是最大同时存活的量子比特数。

```lean
theorem measurementCount_append (p q : Program)
```

证明了两段电路拼接后的测量数量等于两段各自测量数量之和。

```lean
theorem toffoliCount_append (p q : Program)
```

证明了两段电路拼接后的 Toffoli 门数量等于两段各自 Toffoli 门数量之和。

```lean
theorem wires_append (p q : Program)
```

证明了两段电路拼接后涉及的线路集合是两段各自线路集合的并集。

```lean
theorem run_preserves_outside (p : Program) (m : List Bool) (s : State) (w : Wire)
    (hw : w ∉ wires p)
```

证明了对任何测量结果记录 m，电路 p 都不会改变其线路集合以外的基态位 w。
