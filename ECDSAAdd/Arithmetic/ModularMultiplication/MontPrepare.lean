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

/-- 四位列表查表入口；空地址的语法分支被长度前提排除。 -/
def montLookup (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program :=
  lookup (addr.headD L.flag) addr.tail L.scratch L.table (fun d => d*K)

/-- 查表值加进累加器，再用同一前向查表清空 table。 -/
def montLookupAdd (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program := prog {
  montLookup(L, addr, K);                           -- table = 地址值*常量 K
  addInPlace(L.table, L.acc, L.carry, L.cin); -- acc += table
  montLookup(L, addr, K);                           -- table 清零；地址不变
}

def montLookupSub (L : MontStageLayout) (addr : List Wire) (K : Nat) : Program := prog {
  montLookup(L, addr, K);                           -- table = 地址值*常量 K
  subInPlace(L.table, L.acc, L.carry, L.cin); -- acc -= table
  montLookup(L, addr, K);                           -- table 清零；地址不变
}

/-- 保存约减系数，加入 m*p 后物理右旋四位。 -/
def montReduce (L : MontStageLayout) (p i : Nat) : Program := prog {
  let digit := L.acc.take 4;
  let history := L.record i; -- 第 i 轮独占的四根历史位，保存 m。
  copyRegister(none, digit, history); -- m = acc mod 16
  montLookupAdd(L, history, p);       -- acc += m*p；p mod 16=15 时低四位全零
  rotateRightBits(L.acc, 4);          -- acc /= 16；保留 m 供恢复使用
}

/-- 左旋恢复和，减去记录的 m*p，随后由恢复的低四位清记录。 -/
def montRestoreReduce (L : MontStageLayout) (p i : Nat) : Program := prog {
  let digit := L.acc.take 4;
  let history := L.record i;
  rotateLeftBits(L.acc, 4);          -- acc *= 16，恢复约减前的和
  montLookupSub(L, history, p);       -- acc -= m*p
  copyRegister(none, digit, history); -- 原低四位重新等于 m，故 history 清零
}

/-- 逐位加入一个变量四位窗口；控制值不改变门列。 -/
def montAddDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program := prog {
  for j in (List.range 4) {
    let bit := y.getD (4*i+j) L.flag; -- y 的第 i 个四位窗口中的第 j 位。
    let shiftedX := L.source x j;    -- 同一 x 加零扩展，表示 x*2^j。
    measuredMaskedAddInPlace(bit, shiftedX, L.mask, L.acc, L.carry, L.cin);
    -- bit=1 时 acc += x*2^j；mask/carry 在每次调用后清零。
  };
}

/-- 按 j=3..0 执行前向减法，并非反转测量。 -/
def montSubDigit (L : MontStageLayout) (x y : List Wire) (i : Nat) : Program := prog {
  for j in ((List.range 4).reverse) {
    let bit := y.getD (4*i+j) L.flag; -- y 的第 i 个四位窗口中的第 j 位。
    let shiftedX := L.source x j;    -- 同一 x 加零扩展，表示 x*2^j。
    measuredMaskedSubInPlace(bit, shiftedX, L.mask, L.acc, L.carry, L.cin);
    -- bit=1 时 acc -= x*2^j；mask/carry 在每次调用后清零。
  };
}

def montWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program := prog {
  montAddDigit(L, x, y, i); -- 设 d 为 y 的第 i 个四位窗口：acc += d*x
  montReduce(L, p, i);     -- m = acc mod 16；acc = (acc+m*p)/16，m 留在第 i 轮记录中
}

def montRestoreWindow (L : MontStageLayout) (x y : List Wire) (p i : Nat) : Program := prog {
  montRestoreReduce(L, p, i); -- 撤销除 16 和 m*p，并清除该轮记录
  montSubDigit(L, x, y, i);   -- acc -= d*x，恢复上一轮累加器
}

def constMontWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program := prog {
  let digit := (y.drop (4*i)).take 4;
  montLookupAdd(L, digit, K);        -- acc += digit*K
  montReduce(L, p, i);              -- 约减一轮并保存四位历史
}

def constMontRestoreWindow (L : MontStageLayout) (y : List Wire) (p K i : Nat) : Program := prog {
  let digit := (y.drop (4*i)).take 4;
  montRestoreReduce(L, p, i);       -- 撤销约减，清除第 i 轮记录
  montLookupSub(L, digit, K);        -- acc -= digit*K
}

def montConstantAdd (L : MontStageLayout) (K : Nat) : Program := prog {
  xorConstant(L.table, K);
  addInPlace(L.table, L.acc, L.carry, L.cin);
  xorConstant(L.table, K);
}

def montConstantSub (L : MontStageLayout) (K : Nat) : Program := prog {
  xorConstant(L.table, K);
  subInPlace(L.table, L.acc, L.carry, L.cin);
  xorConstant(L.table, K);
}

/-- 减 p 后保存借位，条件加回 p；保留 flag 到清理阶段。 -/
def montNormalize (L : MontStageLayout) (p : Nat) : Program := prog {
  let borrow := L.flag;
  let high := L.acc.getD 260 L.flag;
  montConstantSub(L, p);                               -- acc -= p
  CX high borrow;                              -- 保存原 acc<p 的借位条件
  maskedAddConst(borrow, L.table, L.acc, L.carry, L.cin, p); -- 借位时加回 p，得到 [0,p) 中的值
  -- borrow 是恢复所需历史，此时不能清除。
}

/-- 先按保留借位减 p，再清 flag、加 p，恢复未经约减的累加器。 -/
def montDenormalize (L : MontStageLayout) (p : Nat) : Program := prog {
  let borrow := L.flag;
  let high := L.acc.getD 260 L.flag;
  maskedSubConst(borrow, L.table, L.acc, L.carry, L.cin, p); -- 借位分支减回 p
  CX high borrow;                                 -- high 重现原借位，清零 borrow
  montConstantAdd(L, p);                                  -- acc 恢复到归一化前的值
}

def montPrepareRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) : Program := prog {
  for i in range(k) {
    montWindow(L, x, y, p, i);
  };
}

theorem montPrepareRounds_zero (L : MontStageLayout) (x y : List Wire) (p : Nat) : montPrepareRounds L x y p 0 = [] := rfl

theorem montPrepareRounds_succ (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) :
    montPrepareRounds L x y p (k+1) =
      montPrepareRounds L x y p k ++ montWindow L x y p k := by
  simp only [montPrepareRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

def montRestoreRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) : Program := prog {
  for i in reversed(range(k)) {
    montRestoreWindow(L, x, y, p, i);
  };
}

theorem montRestoreRounds_zero (L : MontStageLayout) (x y : List Wire) (p : Nat) : montRestoreRounds L x y p 0 = [] := rfl

theorem montRestoreRounds_succ (L : MontStageLayout) (x y : List Wire) (p : Nat) (k : Nat) :
    montRestoreRounds L x y p (k+1) =
      montRestoreWindow L x y p k ++ montRestoreRounds L x y p k := by
  simp only [montRestoreRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

def constPrepareRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) : Program := prog {
  for i in range(k) {
    constMontWindow(L, y, p, K, i);
  };
}

theorem constPrepareRounds_zero (L : MontStageLayout) (y : List Wire) (p K : Nat) : constPrepareRounds L y p K 0 = [] := rfl

theorem constPrepareRounds_succ (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) :
    constPrepareRounds L y p K (k+1) =
      constPrepareRounds L y p K k ++ constMontWindow L y p K k := by
  simp only [constPrepareRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

def constRestoreRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) : Program := prog {
  for i in reversed(range(k)) {
    constMontRestoreWindow(L, y, p, K, i);
  };
}

theorem constRestoreRounds_zero (L : MontStageLayout) (y : List Wire) (p K : Nat) : constRestoreRounds L y p K 0 = [] := rfl

theorem constRestoreRounds_succ (L : MontStageLayout) (y : List Wire) (p K : Nat) (k : Nat) :
    constRestoreRounds L y p K (k+1) =
      constMontRestoreWindow L y p K k ++ constRestoreRounds L y p K k := by
  simp only [constRestoreRounds]
  rw [List.ofFn_succ']
  simp [List.concat_eq_append]

def montPrepare (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program := prog {
  montPrepareRounds(L, x, y, p, 64);
  montNormalize(L, p);
}

def montRestore (L : MontStageLayout) (x y : List Wire) (p : Nat) : Program := prog {
  montDenormalize(L, p);
  montRestoreRounds(L, x, y, p, 64);
}

def constPrepare (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program := prog {
  constPrepareRounds(L, y, p, K, 64);
  montNormalize(L, p);
}

def constRestore (L : MontStageLayout) (y : List Wire) (p K : Nat) : Program := prog {
  montDenormalize(L, p);
  constRestoreRounds(L, y, p, K, 64);
}

end ECDSAAdd.Arithmetic
