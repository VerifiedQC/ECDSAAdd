import ECDSAAdd.Arithmetic.Addition.MeasuredMaskedAdder
import ECDSAAdd.Arithmetic.ModularMultiplication.MontRotate
import ECDSAAdd.Arithmetic.Lookup.Lookup
import ECDSAAdd.Arithmetic.Addition.InPlaceAdder
import ECDSAAdd.Math.ModularMultiplication.Montgomery

namespace ECDSAAdd.Arithmetic
open Instr

/-- 一个 Montgomery 段；另一段复用 table/mask/carry/pad/scratch，保留各自 acc/history/flag。 -/
structure MontStageLayout where
  acc : List Wire
  history : List Wire
  flag : Wire
  table : List Wire
  mask : List Wire
  carry : List Wire
  cin : Wire
  pad : List Wire
  scratch : List Wire

namespace MontStageLayout

def work (L : MontStageLayout) : List Wire :=
  L.table++L.mask++L.carry++[L.cin]++L.pad++L.scratch

def wires (L : MontStageLayout) : List Wire := L.acc++L.history++[L.flag]++L.work

structure Widths (L : MontStageLayout) : Prop where
  acc : L.acc.length=261
  history : L.history.length=256
  table : L.table.length=261
  mask : L.mask.length=261
  carry : L.carry.length=260
  pad : L.pad.length=5
  scratch : L.scratch.length=3

/-- 窗口 i 的独立四位记录。 -/
def record (L : MontStageLayout) (i : Nat) : List Wire := (L.history.drop (4*i)).take 4

/-- 移位源只用 x 的低256位，五根互异的零 pad 各出现一次。 -/
def source (L : MontStageLayout) (x : List Wire) (j : Nat) : List Wire :=
  L.pad.take j ++ x.take 256 ++ L.pad.drop j

end MontStageLayout

/-- Montgomery 段内部的寄存器运算接口；控制、源和目标显式，零工作区固定。 -/
structure MontArithmeticOps where
  addInPlace : List Wire → List Wire → Program
  subInPlace : List Wire → List Wire → Program
  controlledAdd : Wire → List Wire → List Wire → Program
  controlledSub : Wire → List Wire → List Wire → Program
  maskedAddConst : Wire → List Wire → Nat → Program
  maskedSubConst : Wire → List Wire → Nat → Program

/-- L 是单段接线：carry/cin 保存进位，mask 暂存受控源，table 暂装经典常数。
这些工作位初始为零，每次操作后清零；acc/history/flag 不在此处自动清理。 -/
def montArithmeticContext (L : MontStageLayout) : CircuitDSL.Context MontArithmeticOps := {
  operations := {
    addInPlace := fun source target => addInPlace source target L.carry L.cin
    subInPlace := fun source target => subInPlace source target L.carry L.cin
    controlledAdd := fun control source target =>
      measuredMaskedAddInPlace control source L.mask target L.carry L.cin
    controlledSub := fun control source target =>
      measuredMaskedSubInPlace control source L.mask target L.carry L.cin
    maskedAddConst := fun control target k => maskedAddConst control L.table target L.carry L.cin k
    maskedSubConst := fun control target k => maskedSubConst control L.table target L.carry L.cin k
  }
}

/-- 将四位地址 addr 的数值 d 所对应的 d*K XOR 到 L.table，保留 addr，零 scratch 恢复。
表值按 L.table 的位宽截断；要求 addr 恰有四位及有效的查表布局。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `addr`：四位小端地址寄存器，其数值 d 用来选择 d*K。
- `K`：构造期的经典乘数常量；查表项为 d*K。
-/
def montLookup (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program :=
  lookup (addr.headD L.flag) addr.tail L.scratch L.table (fun d => d*K)

/-- L.acc ← (L.acc+d*K) mod 2^261，d 是四位地址 addr 的数值；addr 保持。
在标准布局下，L.table/scratch/carry/cin 初始为零并恢复，先查表再加，最后重算清表。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `addr`：四位小端地址寄存器，其数值 d 用来选择 d*K。
- `K`：构造期的经典乘数常量；查表项为 d*K。
-/
def montLookupAdd (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program := prog using (montArithmeticContext L) {
  montLookup(L, addr, K);                           -- table = 地址值*常量 K
  addInPlace L.table L.acc;  -- acc ← (acc+table) mod 2^261，进位工作区恢复零。
  montLookup(L, addr, K);                           -- table 再异或 地址值*K，清零；地址不变。
}

/-- L.acc ← (L.acc−d*K) mod 2^261，d 是四位地址 addr 的数值；addr 保持。
在标准布局下，L.table/scratch/carry/cin 初始为零并恢复。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `addr`：四位小端地址寄存器，其数值 d 用来选择 d*K。
- `K`：构造期的经典乘数常量；查表项为 d*K。
-/
def montLookupSub (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program := prog using (montArithmeticContext L) {
  montLookup(L, addr, K);                           -- table = 地址值*常量 K
  subInPlace L.table L.acc;  -- acc ← (acc-table) mod 2^261，进位工作区恢复零。
  montLookup(L, addr, K);                           -- table 再异或 地址值*K，清零；地址不变。
}

/-- 一次四位 Montgomery 约减：令 A 为原 L.acc，m=A mod 16，L.acc ← (A+m*p)/16。
要求 p mod 16=15、加法不溢出及有效布局；将 m 保存在初始为零的第 i 轮记录 L.record i。
临时工作区恢复零，但记录必须保留到 montRestoreReduce。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `i`：构造期的约减轮编号，从 0 开始；指定保存/读取四位系数 m 的 L.record i。
-/
def montReduce (L : MontStageLayout) (p i : Nat) : Program := prog {
  let digit := L.acc.take 4; -- 累加器的低四位，当前值是约减系数 m。
  let history := L.record i; -- 第 i 轮独占的四根历史位，保存 m。
  copyRegister(none, digit, history); -- m = acc mod 16
  montLookupAdd(L, history, p);       -- acc += m*p；p mod 16=15 时低四位全零
  rotateRightBits(L.acc, 4);          -- acc /= 16；保留 m 供恢复使用
}

/-- 撤销匹配的第 i 轮约减：从结果 Z 和记录 m 恢复 L.acc ← 16*Z−m*p，并清零 L.record i。
要求记录来自 montReduce、当前累加器与记录匹配；临时工作区初始为零并恢复。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `i`：构造期的约减轮编号，从 0 开始；指定保存/读取四位系数 m 的 L.record i。
-/
def montRestoreReduce (L : MontStageLayout) (p i : Nat) : Program := prog {
  let digit := L.acc.take 4; -- 累加器的低四位，撤销约减后重现系数 m。
  let history := L.record i; -- 第 i 轮保存 m 的四根历史位，撤销约减后清零。
  rotateLeftBits(L.acc, 4);          -- acc *= 16，恢复约减前的和
  montLookupSub(L, history, p);       -- acc -= m*p
  copyRegister(none, digit, history); -- 原低四位重新等于 m，故 history 清零
}

/-- L.acc ← (L.acc+d*x) mod 2^261，d 是 y 的第 i 个四位窗口的数值。
有效布局下 x/y 保持，零 mask/carry/cin 恢复；将窗口拆成四个受控加法，门列不依赖位值。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `i`：构造期的窗口编号，从 0 开始；第 i 个窗口对应乘数的第 4*i 至 4*i+3 位和同号历史槽。
-/
def montAddDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program := prog using (montArithmeticContext L) {
  for j in (List.range 4) {
    let bit := y.getD (4*i+j) L.flag; -- y 的第 i 个四位窗口中的第 j 位。
    let shiftedX := L.source x j;    -- 同一 x 加零扩展，表示 x*2^j。
    controlledAdd bit shiftedX L.acc;  -- bit=1 时 acc += x*2^j；mask/carry 在调用后清零。
  };
}

/-- L.acc ← (L.acc−d*x) mod 2^261，d 是 y 的第 i 个四位窗口的数值。
有效布局下 x/y 保持，零 mask/carry/cin 恢复；按 j=3..0 调用前向减法，不反转测量。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `i`：构造期的窗口编号，从 0 开始；第 i 个窗口对应乘数的第 4*i 至 4*i+3 位和同号历史槽。
-/
def montSubDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program := prog using (montArithmeticContext L) {
  for j in ((List.range 4).reverse) {
    let bit := y.getD (4*i+j) L.flag; -- y 的第 i 个四位窗口中的第 j 位。
    let shiftedX := L.source x j;    -- 同一 x 加零扩展，表示 x*2^j。
    controlledSub bit shiftedX L.acc;  -- bit=1 时 acc -= x*2^j；mask/carry 在调用后清零。
  };
}

/-- 一轮变量乘法：令 d 为 y 的第 i 个四位窗口，T=L.acc+d*x、m=T mod 16，L.acc ← (T+m*p)/16。
在 Montgomery 位宽/范围/模数条件下，输入保持，零临时工作区恢复；m 保存在初始为零的第 i 轮记录。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `i`：构造期的窗口编号，从 0 开始；第 i 个窗口对应乘数的第 4*i 至 4*i+3 位和同号历史槽。
-/
def montWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program := prog {
  montAddDigit(L, x, y, i); -- 设 d 为 y 的第 i 个四位窗口：acc += d*x
  montReduce(L, p, i);     -- m = acc mod 16；acc = (acc+m*p)/16，m 留在第 i 轮记录中
}

/-- 从匹配的第 i 轮结果及记录 m 恢复 L.acc ← 16*L.acc−m*p−d*x，d 为 y 的第 i 个四位窗口。
要求 x/y 未变、记录与结果匹配；清除该轮记录，零临时工作区恢复，不倒放测量。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `i`：构造期的窗口编号，从 0 开始；第 i 个窗口对应乘数的第 4*i 至 4*i+3 位和同号历史槽。
-/
def montRestoreWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program := prog {
  montRestoreReduce(L, p, i); -- 撤销除 16 和 m*p，并清除该轮记录
  montSubDigit(L, x, y, i);   -- acc -= d*x，恢复上一轮累加器
}

/-- 一轮常量乘法：令 d 为 y 的第 i 个四位窗口，T=L.acc+d*K、m=T mod 16，L.acc ← (T+m*p)/16。
在 Montgomery 位宽/范围/模数条件下，y 保持，零临时工作区恢复；m 存入初始为零的第 i 轮记录。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `K`：构造期的经典被乘数，替代变量乘法中的 x。
- `i`：构造期的窗口编号，从 0 开始；第 i 个窗口对应乘数的第 4*i 至 4*i+3 位和同号历史槽。
-/
def constMontWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program := prog {
  let digit := (y.drop (4*i)).take 4; -- 乘数 y 的第 i 个四位窗口，保持不变。
  montLookupAdd(L, digit, K);        -- acc += digit*K
  montReduce(L, p, i);              -- m=acc mod 16；acc ← (acc+m*p)/16，m 存入第 i 轮历史。
}

/-- 从匹配的第 i 轮结果及记录 m 恢复 L.acc ← 16*L.acc−m*p−d*K，d 为 y 的第 i 个四位窗口。
y/K 不变且记录匹配时，清除该轮记录，零临时工作区恢复。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `K`：构造期的经典被乘数，替代变量乘法中的 x。
- `i`：构造期的窗口编号，从 0 开始；第 i 个窗口对应乘数的第 4*i 至 4*i+3 位和同号历史槽。
-/
def constMontRestoreWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program := prog {
  let digit := (y.drop (4*i)).take 4; -- 与正向第 i 轮相同的四位乘数窗口，保持不变。
  montRestoreReduce(L, p, i);       -- 撤销约减，清除第 i 轮记录
  montLookupSub(L, digit, K);        -- acc -= digit*K
}

/-- L.acc ← (L.acc+K) mod 2^261；标准布局下 L.table/carry/cin 初始为零并恢复。
先装入 K 的低 261 位，相加后卸载。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `K`：构造期的经典加数/减数；其低 261 位暂装入 table。
-/
def montConstantAdd (L : MontStageLayout) (K : Nat) : Program := prog using (montArithmeticContext L) {
  xorConstant(L.table, K);  -- table ^= K；从零装入常量 K。
  addInPlace L.table L.acc;  -- acc ← (acc+K) mod 2^261，进位工作区恢复零。
  xorConstant(L.table, K);  -- table 再异或 K，清零常量寄存器。
}

/-- L.acc ← (L.acc−K) mod 2^261；标准布局下 L.table/carry/cin 初始为零并恢复。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `K`：构造期的经典加数/减数；其低 261 位暂装入 table。
-/
def montConstantSub (L : MontStageLayout) (K : Nat) : Program := prog using (montArithmeticContext L) {
  xorConstant(L.table, K);  -- table ^= K；从零装入常量 K。
  subInPlace L.table L.acc;  -- acc ← (acc-K) mod 2^261，进位工作区恢复零。
  xorConstant(L.table, K);  -- table 再异或 K，清零常量寄存器。
}

/-- 将 0≤A<2*p 的累加器 L.acc=A 规范化为 A mod p，并将 L.flag 从 0 写成 [A<p]。
要求标准位宽和 p<2^256；临时工作区归零，flag 是恢复所需的历史，此时不能清除。

参数：

- `L`：规范化线路布局：acc 保存约减前/后的数值，flag 保存是否加回 p；table/carry/cin 是零工作区。
- `p`：构造期的经典模数，用来将累加器限制到 [0,p)，要求 p<2^256。
-/
def montNormalize (L : MontStageLayout) (p : Nat) : Program := prog using (montArithmeticContext L) {
  let borrow := L.flag; -- 初始为零的历史标志位，保存原 acc<p，留给逆向恢复。
  let high := L.acc.getD 260 L.flag; -- 261 位累加器的最高位，试减 p 后表示借位。
  montConstantSub(L, p);                               -- acc -= p
  CX high borrow;                              -- 保存原 acc<p 的借位条件
  maskedAddConst borrow L.acc p; -- 借位时加回 p，得到 [0,p) 中的值
  -- borrow 是恢复所需历史，此时不能清除。
}

/-- 由规范化结果 L.acc 和匹配标志 L.flag 恢复原 A：L.acc ← L.acc+(L.flag=1 ? 0 : p)。
要求状态来自 montNormalize 且未破坏匹配关系；清零 flag，零临时工作区恢复。

参数：

- `L`：规范化线路布局：acc 保存约减前/后的数值，flag 保存是否加回 p；table/carry/cin 是零工作区。
- `p`：构造期的经典模数，用来将累加器限制到 [0,p)，要求 p<2^256。
-/
def montDenormalize (L : MontStageLayout) (p : Nat) : Program := prog using (montArithmeticContext L) {
  let borrow := L.flag; -- 规范化阶段保留的借位历史，本过程将其清零。
  let high := L.acc.getD 260 L.flag; -- 累加器最高位，撤销加回 p 后重现借位。
  maskedSubConst borrow L.acc p; -- 借位分支减回 p
  CX high borrow;                                 -- high 重现原借位，清零 borrow
  montConstantAdd(L, p);                                  -- acc 恢复到归一化前的值
}

/-- 从零 L.acc 起处理 y 的低 k 个四位窗口：每轮加 d*x，再作一次除以 16 的 Montgomery 约减。
k≤64 且满足模数/范围条件时，得到前 k 窗口的 Montgomery 累加值；x/y 保持。
L.history 初始为零，结束保存各轮系数，临时工作区归零；结果尚未最终规范化。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `k`：构造期的窗口数，处理低 k 个四位窗口，不是量子寄存器中的循环次数。
-/
def montPrepareRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) : Program := prog {
  for i in range(k) {
    montWindow(L, x, y, p, i);  -- d 为 y 的第 i 个四位窗口：加 d*x 后约减除以 16，保存本轮系数 m。
  };
}

theorem montPrepareRounds_zero (L : MontStageLayout) (x y : List Wire) (p : Nat) : montPrepareRounds L x y p 0 = [] := rfl

theorem montPrepareRounds_succ (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) :
    montPrepareRounds L x y p (k+1) =
      montPrepareRounds L x y p k ++ montWindow L x y p k := by
  simp only [montPrepareRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 按轮号 k−1 到 0 恢复 montPrepareRounds：逐轮撤销除以 16、系数*p 及窗口乘积的累加。
要求 x/y 未变且历史匹配；L.acc 和前 k 轮历史恢复为零，临时工作区归零。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `k`：构造期的窗口数，处理低 k 个四位窗口，不是量子寄存器中的循环次数。
-/
def montRestoreRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) : Program := prog {
  for i in reversed(range(k)) {
    montRestoreWindow(L, x, y, p, i);  -- 用本轮记录 m 恢复 acc ← 16*acc-m*p-d*x，并清记录；d 是 y 的第 i 窗口。
  };
}

theorem montRestoreRounds_zero (L : MontStageLayout) (x y : List Wire) (p : Nat) : montRestoreRounds L x y p 0 = [] := rfl

theorem montRestoreRounds_succ (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) :
    montRestoreRounds L x y p (k+1) =
      montRestoreWindow L x y p k ++ montRestoreRounds L x y p k := by
  simp only [montRestoreRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 从零 L.acc 起处理 y 的低 k 个四位窗口：每轮加 d*K，再作一次除以 16 的 Montgomery 约减。
k≤64 且满足模数/范围条件时，y 保持；L.history 从零保存各轮系数，临时工作区归零，结果尚未规范化。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `K`：构造期的经典被乘数，替代变量乘法中的 x。
- `k`：构造期的窗口数，处理低 k 个四位窗口，不是量子寄存器中的循环次数。
-/
def constPrepareRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) : Program := prog {
  for i in range(k) {
    constMontWindow(L, y, p, K, i);  -- d 为 y 的第 i 个四位窗口：加 d*K 后约减除以 16，保存本轮系数 m。
  };
}

theorem constPrepareRounds_zero (L : MontStageLayout) (y : List Wire) (p K : Nat) : constPrepareRounds L y p K 0 = [] := rfl

theorem constPrepareRounds_succ (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) :
    constPrepareRounds L y p K (k+1) =
      constPrepareRounds L y p K k ++ constMontWindow L y p K k := by
  simp only [constPrepareRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 按轮号 k−1 到 0 恢复 constPrepareRounds：撤销各轮约减和 d*K 累加。
要求 y/K 未变且历史匹配；L.acc 和前 k 轮历史恢复为零，临时工作区归零。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `K`：构造期的经典被乘数，替代变量乘法中的 x。
- `k`：构造期的窗口数，处理低 k 个四位窗口，不是量子寄存器中的循环次数。
-/
def constRestoreRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) : Program := prog {
  for i in reversed(range(k)) {
    constMontRestoreWindow(L, y, p, K, i);  -- 用本轮记录 m 恢复 acc ← 16*acc-m*p-d*K，并清记录；d 是 y 的第 i 窗口。
  };
}

theorem constRestoreRounds_zero (L : MontStageLayout) (y : List Wire) (p K : Nat) : constRestoreRounds L y p K 0 = [] := rfl

theorem constRestoreRounds_succ (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) :
    constRestoreRounds L y p K (k+1) =
      constMontRestoreWindow L y p K k ++ constRestoreRounds L y p K k := by
  simp only [constRestoreRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 准备 Montgomery 乘积：从零得到 L.acc = x*(y mod R)*R⁻¹ mod p，R=2^256；只读取 y 的低 256 位。
要求有效布局、x<p、p<2^256、p mod 16=15；x/y 保持，临时 L.work 归零。
L.history、L.flag 初始为零，结束保留约减系数和最终借位，供 montRestore 使用。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
-/
def montPrepare (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program := prog {
  montPrepareRounds(L, x, y, p, 64);  -- 从零累加 64 个窗口，acc ≡ x*y/2^256 (mod p)，保留约减历史。
  montNormalize(L, p);  -- acc ← acc mod p；保留是否加回 p 的标志，供恢复使用。
}

/-- 恢复 montPrepare 的匹配状态：清零 L.acc、L.history、L.flag，保留 x/y，L.work 恢复零。
要求 x/y 未变、乘积和历史未被破坏；先撤销规范化，再按反向轮序执行前向恢复程序。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `x`：小端被乘数寄存器，值保持；此段使用其低 256 位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
-/
def montRestore (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program := prog {
  montDenormalize(L, p);  -- 用保留标志撤销最后的模约减，恢复窗口结束时的 acc，并清该标志。
  montRestoreRounds(L, x, y, p, 64);  -- 逐轮撤销变量乘积累加与约减，将 acc 和全部历史恢复零。
}

/-- 准备常量 Montgomery 乘积：从零得到 L.acc = K*(y mod R)*R⁻¹ mod p，R=2^256；只读取 y 的低 256 位。
要求有效布局、K<p、p<2^256、p mod 16=15；y 保持，临时 L.work 归零。
L.history、L.flag 初始为零，结束保留约减系数和最终借位，供 constRestore 使用。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `K`：构造期的经典被乘数，要求 K<p。
-/
def constPrepare (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program := prog {
  constPrepareRounds(L, y, p, K, 64);  -- 从零累加 64 个常量窗口，acc ≡ K*y/2^256 (mod p)，保留约减历史。
  montNormalize(L, p);  -- acc ← acc mod p；保留是否加回 p 的标志，供恢复使用。
}

/-- 恢复 constPrepare 的匹配状态：清零 L.acc、L.history、L.flag，保留 y，L.work 恢复零。
要求 y/K 未变且乘积与历史匹配；不倒放任何测量指令。

参数：

- `L`：单段 Montgomery 线路布局：acc 是累加器，history 保存每轮约减系数，flag 保存最终借位；table/mask/carry/cin/pad/scratch 为临时工作位。
- `y`：小端乘数寄存器，值保持；按四位一组读取其低 256 位。
- `p`：构造期的经典 Montgomery 模数，要求 p<2^256 且 p mod 16=15。
- `K`：构造期的经典被乘数，要求 K<p。
-/
def constRestore (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program := prog {
  montDenormalize(L, p);  -- 用保留标志撤销最后的模约减，恢复窗口结束时的 acc，并清该标志。
  constRestoreRounds(L, y, p, K, 64);  -- 逐轮撤销常量乘积累加与约减，将 acc 和全部历史恢复零。
}

end ECDSAAdd.Arithmetic
