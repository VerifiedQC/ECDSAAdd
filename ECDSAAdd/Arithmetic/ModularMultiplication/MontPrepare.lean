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

/-- L.table ^= d*K，d 是四位地址寄存器 addr 的值，结果按 L.table 位宽截断。 -/
def montLookup (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program :=
  lookup (addr.headD L.flag) addr.tail L.scratch L.table (fun d => d*K)

/-- L.acc ← (L.acc+d*K) mod 2^261，d 是四位地址寄存器 addr 的值。 -/
def montLookupAdd (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program := prog using (montArithmeticContext L) {
  montLookup(L, addr, K);                           -- table = 地址值*K
  addInPlace L.table L.acc;  -- acc += table (mod 2^261)
  montLookup(L, addr, K);                           -- 清零 table。
}

/-- L.acc ← (L.acc−d*K) mod 2^261，d 是四位地址寄存器 addr 的值。 -/
def montLookupSub (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program := prog using (montArithmeticContext L) {
  montLookup(L, addr, K);                           -- table = 地址值*K
  subInPlace L.table L.acc;  -- acc -= table (mod 2^261)
  montLookup(L, addr, K);                           -- 清零 table。
}

/-- L.acc ← (A+m*p)/16，A 是原 L.acc，m=A mod 16，保存到第 i 轮记录。
要求 p mod 16=15 且中间和不溢出。 -/
def montReduce (L : MontStageLayout) (p i : Nat) : Program := prog {
  let digit := L.acc.take 4; -- acc 的低四位，即约减系数 m。
  let history := L.record i; -- 用于保存第 i 轮的 m。
  copyRegister(none, digit, history); -- history = m
  montLookupAdd(L, history, p);       -- acc += m*p，低四位变为零。
  rotateRightBits(L.acc, 4);          -- acc /= 16
}

/-- 撤销第 i 轮 montReduce：L.acc ← 16*L.acc−m*p，再清零该轮记录 m。 -/
def montRestoreReduce (L : MontStageLayout) (p i : Nat) : Program := prog {
  let digit := L.acc.take 4; -- acc 的低四位。
  let history := L.record i; -- 第 i 轮保存的约减系数 m。
  rotateLeftBits(L.acc, 4);          -- acc *= 16
  montLookupSub(L, history, p);       -- acc -= m*p
  copyRegister(none, digit, history); -- 清零 history。
}

/-- L.acc ← (L.acc+d*x) mod 2^261，d 是 y 的第 i 个四位窗口的值。 -/
def montAddDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program := prog using (montArithmeticContext L) {
  for j in (List.range 4) {
    let bit := y.getD (4*i+j) L.flag; -- y 的第 i 个四位窗口中的第 j 位。
    let shiftedX := L.source x j;    -- x 左移 j 位的接线，表示 x*2^j。
    CAdd bit L.acc shiftedX;           -- bit=1 时 acc += x*2^j。
  };
}

/-- L.acc ← (L.acc−d*x) mod 2^261，d 是 y 的第 i 个四位窗口的值。 -/
def montSubDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program := prog using (montArithmeticContext L) {
  for j in ((List.range 4).reverse) {
    let bit := y.getD (4*i+j) L.flag; -- y 的第 i 个四位窗口中的第 j 位。
    let shiftedX := L.source x j;    -- x 左移 j 位的接线，表示 x*2^j。
    CSub bit L.acc shiftedX;           -- bit=1 时 acc -= x*2^j。
  };
}

/-- L.acc ← (T+m*p)/16，其中 T=L.acc+d*x、m=T mod 16，d 是 y 的第 i 个四位窗口的值。
要求 p mod 16=15 且中间和不溢出；m 保存到第 i 轮记录。 -/
def montWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program := prog {
  montAddDigit(L, x, y, i); -- acc += d*x
  montReduce(L, p, i);     -- m = acc mod 16；acc = (acc+m*p)/16
}

/-- 撤销第 i 轮 montWindow：L.acc ← 16*L.acc−m*p−d*x，并清零记录 m。
d 是 y 的第 i 个四位窗口的值，m 来自对应正轮。 -/
def montRestoreWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program := prog {
  montRestoreReduce(L, p, i); -- acc = 16*acc-m*p，清零本轮记录。
  montSubDigit(L, x, y, i);   -- acc -= d*x
}

/-- L.acc ← (T+m*p)/16，其中 T=L.acc+d*K、m=T mod 16，d 是 y 的第 i 个四位窗口的值。
要求 p mod 16=15 且中间和不溢出；m 保存到第 i 轮记录。 -/
def constMontWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program := prog {
  let digit := (y.drop (4*i)).take 4; -- y 的第 i 个四位窗口。
  montLookupAdd(L, digit, K);        -- acc += digit*K
  montReduce(L, p, i);              -- m = acc mod 16；acc = (acc+m*p)/16
}

/-- 撤销第 i 轮 constMontWindow：L.acc ← 16*L.acc−m*p−d*K，并清零记录 m。
d 是 y 的第 i 个四位窗口的值，m 来自对应正轮。 -/
def constMontRestoreWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program := prog {
  let digit := (y.drop (4*i)).take 4; -- y 的第 i 个四位窗口。
  montRestoreReduce(L, p, i);       -- acc = 16*acc-m*p，清零本轮记录。
  montLookupSub(L, digit, K);        -- acc -= digit*K
}

/-- L.acc ← (L.acc+K) mod 2^261。 -/
def montConstantAdd (L : MontStageLayout) (K : Nat) : Program := prog using (montArithmeticContext L) {
  xorConstant(L.table, K);  -- table = K
  addInPlace L.table L.acc;  -- acc += K (mod 2^261)
  xorConstant(L.table, K);  -- 清零 table。
}

/-- L.acc ← (L.acc−K) mod 2^261。 -/
def montConstantSub (L : MontStageLayout) (K : Nat) : Program := prog using (montArithmeticContext L) {
  xorConstant(L.table, K);  -- table = K
  subInPlace L.table L.acc;  -- acc -= K (mod 2^261)
  xorConstant(L.table, K);  -- 清零 table。
}

/-- 将 L.acc=A 约减为 A mod p，L.flag 从零写成 [A<p]。
要求 A<2*p、0<p<2^256；flag 留给恢复步骤。 -/
def montNormalize (L : MontStageLayout) (p : Nat) : Program := prog using (montArithmeticContext L) {
  let borrow := L.flag; -- 保存原 acc<p：1 表示成立，0 表示不成立；留给恢复步骤。
  let high := L.acc.getD 260 L.flag; -- acc 的最高位，试减后表示借位。
  montConstantSub(L, p);                               -- acc -= p
  CX high borrow;                              -- borrow = [原 acc<p]
  CAddConst borrow L.acc p;      -- borrow=1 时 acc += p。
}

/-- 撤销 montNormalize：L.acc ← L.acc+(L.flag=1 ? 0 : p)，清零 L.flag。 -/
def montDenormalize (L : MontStageLayout) (p : Nat) : Program := prog using (montArithmeticContext L) {
  let borrow := L.flag; -- 正向约减保留的借位。
  let high := L.acc.getD 260 L.flag; -- acc 的最高位。
  CSubConst borrow L.acc p;      -- borrow=1 时 acc -= p。
  CX high borrow;                                 -- 清零 borrow。
  montConstantAdd(L, p);                                  -- 恢复 acc。
}

/-- 从零 L.acc 开始，处理 y 的前 k 个四位窗口，每轮累加 d*x 后进行 Montgomery 约减。
d 是当前窗口的值，k≤64；L.history 保存各轮约减系数。 -/
def montPrepareRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) : Program := prog {
  for i in range(k) {
    montWindow(L, x, y, p, i);  -- acc += d*x，再加适当倍数的 p 并除以 16。
  };
}

theorem montPrepareRounds_zero (L : MontStageLayout) (x y : List Wire) (p : Nat) : montPrepareRounds L x y p 0 = [] := rfl

theorem montPrepareRounds_succ (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) :
    montPrepareRounds L x y p (k+1) =
      montPrepareRounds L x y p k ++ montWindow L x y p k := by
  simp only [montPrepareRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 用匹配的历史逆序撤销前 k 轮 montPrepareRounds，清零 L.acc 及这 k 轮记录。 -/
def montRestoreRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) : Program := prog {
  for i in reversed(range(k)) {
    montRestoreWindow(L, x, y, p, i);  -- 撤销第 i 轮累加与约减，清零该轮记录。
  };
}

theorem montRestoreRounds_zero (L : MontStageLayout) (x y : List Wire) (p : Nat) : montRestoreRounds L x y p 0 = [] := rfl

theorem montRestoreRounds_succ (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) :
    montRestoreRounds L x y p (k+1) =
      montRestoreWindow L x y p k ++ montRestoreRounds L x y p k := by
  simp only [montRestoreRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 从零 L.acc 开始，处理 y 的前 k 个四位窗口，每轮累加 d*K 后进行 Montgomery 约减。
d 是当前窗口的值，k≤64；L.history 保存各轮约减系数。 -/
def constPrepareRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) : Program := prog {
  for i in range(k) {
    constMontWindow(L, y, p, K, i);  -- acc += d*K，再加适当倍数的 p 并除以 16。
  };
}

theorem constPrepareRounds_zero (L : MontStageLayout) (y : List Wire) (p K : Nat) : constPrepareRounds L y p K 0 = [] := rfl

theorem constPrepareRounds_succ (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) :
    constPrepareRounds L y p K (k+1) =
      constPrepareRounds L y p K k ++ constMontWindow L y p K k := by
  simp only [constPrepareRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 用匹配的历史逆序撤销前 k 轮 constPrepareRounds，清零 L.acc 及这 k 轮记录。 -/
def constRestoreRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) : Program := prog {
  for i in reversed(range(k)) {
    constMontRestoreWindow(L, y, p, K, i);  -- 撤销第 i 轮累加与约减，清零该轮记录。
  };
}

theorem constRestoreRounds_zero (L : MontStageLayout) (y : List Wire) (p K : Nat) : constRestoreRounds L y p K 0 = [] := rfl

theorem constRestoreRounds_succ (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) :
    constRestoreRounds L y p K (k+1) =
      constMontRestoreWindow L y p K k ++ constRestoreRounds L y p K k := by
  simp only [constRestoreRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

/-- 从零计算 L.acc=x*(y mod R)*R⁻¹ mod p，R=2^256。
要求 x<p、p<2^256、p mod 16=15；保留 L.history/L.flag 供恢复。 -/
def montPrepare (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program := prog {
  montPrepareRounds(L, x, y, p, 64);  -- acc ≡ x*(y mod 2^256)/2^256 (mod p)
  montNormalize(L, p);  -- acc ← acc mod p
}

/-- 用 montPrepare 的匹配输入与历史，清零 L.acc、L.history、L.flag。 -/
def montRestore (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program := prog {
  montDenormalize(L, p);  -- 撤销末次约减，清零 flag。
  montRestoreRounds(L, x, y, p, 64);  -- 清零 acc 和 history。
}

/-- 从零计算 L.acc=K*(y mod R)*R⁻¹ mod p，R=2^256。
要求 K<p、p<2^256、p mod 16=15；保留 L.history/L.flag 供恢复。 -/
def constPrepare (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program := prog {
  constPrepareRounds(L, y, p, K, 64);  -- acc ≡ K*(y mod 2^256)/2^256 (mod p)
  montNormalize(L, p);  -- acc ← acc mod p
}

/-- 用 constPrepare 的匹配输入、常数与历史，清零 L.acc、L.history、L.flag。 -/
def constRestore (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program := prog {
  montDenormalize(L, p);  -- 撤销末次约减，清零 flag。
  constRestoreRounds(L, y, p, K, 64);  -- 清零 acc 和 history。
}

end ECDSAAdd.Arithmetic
