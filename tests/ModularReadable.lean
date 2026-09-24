import ECDSAAdd.Arithmetic.ModularAddition.Modular

namespace ECDSAAdd.Arithmetic.ReadableModular

/- 寄存器接口的试写版，尚未替换正式 modAdd/modSub。
   三个接口只重新包装已有电路，末尾证明与原指令列表完全相等。 -/

private def adderBits (x y out carry : List Wire) : List AddBit :=
  List.zipWith (fun xy oc => ⟨xy.1, xy.2, oc.1, oc.2⟩) (x.zip y) (out.zip carry)

/-- out ^= (x+y+cin) mod 2^n；输入保留，零 carry 恢复为零。四个列表等长。 -/
private def addXor (x y out carry : List Wire) (cin : Wire) : Program :=
  rippleAdder (adderBits x y out carry) cin

/-- out ^= (x-y) mod 2^n；输入保留，cin=0、carry=0 在调用后恢复。四个列表等长。 -/
private def subXor (x y out carry : List Wire) (cin : Wire) : Program :=
  rippleSubtractor (adderBits x y out carry) cin

/-- out ^= (if flag then whenOne else whenZero)；只更新 out，三个列表等长。 -/
private def chooseXor (flag : Wire) (whenZero whenOne out : List Wire) : Program :=
  selectXor (List.zipWith (fun ab o => ⟨ab.1, ab.2, o⟩) (whenZero.zip whenOne) out) flag

/- 下列注释沿用原规格：0<q<2^n、x,y<q、各线路互异、工作区初始为零。
   n=L.width；x/y/total/modulus/diff 是 n+1 位，最高位用于溢出或借位。
   加减法按 n+1 位补码运算，选择只写 out 的低 n 位。
   所有操作都是 XOR 写入：同样的输入再次调用，会清除先前算出的结果。 -/

/-- out ^= (x+y) mod q；保留 x/y，恢复全部工作位。 -/
def modAdd (L : ModLayout) (q : Nat) : Program := prog {
  let total := L.reg .total;
  let modulus := L.reg .modulus;
  let diff := L.reg .diff;
  let carrySum := L.reg .carrySum;
  let carryDiff := L.reg .carryDiff;
  let borrow := L.high.diff;

  xorConstant(modulus, q);                         -- modulus = q
  addXor(L.x, L.y, total, carrySum, L.cinSum);       -- total = x+y
  subXor(total, modulus, diff, carryDiff, L.cinDiff); -- diff = total-q

  -- 借位为 0：total≥q，选 diff；借位为 1：total<q，选 total。
  chooseXor(borrow, diff.take L.width, total.take L.width, L.lowReg .out);

  subXor(total, modulus, diff, carryDiff, L.cinDiff); -- diff 清零
  addXor(L.x, L.y, total, carrySum, L.cinSum);       -- total 清零
  xorConstant(modulus, q);                         -- modulus 清零
}

/-- out ^= (x-y) mod q；保留 x/y，恢复全部工作位。 -/
def modSub (L : ModLayout) (q : Nat) : Program := prog {
  let diff := L.reg .diff;
  let modulus := L.reg .modulus;
  let corrected := L.reg .total; -- 模减时，total 寄存器保存加回 q 后的候选值。
  let carrySum := L.reg .carrySum;
  let carryDiff := L.reg .carryDiff;
  let borrow := L.high.diff;

  xorConstant(modulus, q);                              -- modulus = q
  subXor(L.x, L.y, diff, carryDiff, L.cinDiff);           -- diff = x-y
  addXor(diff, modulus, corrected, carrySum, L.cinSum);  -- corrected = diff+q

  -- 借位为 0：x≥y，选 diff；借位为 1：x<y，选 corrected。
  chooseXor(borrow, diff.take L.width, corrected.take L.width, L.lowReg .out);

  addXor(diff, modulus, corrected, carrySum, L.cinSum);  -- corrected 清零
  subXor(L.x, L.y, diff, carryDiff, L.cinDiff);           -- diff 清零
  xorConstant(modulus, q);                              -- modulus 清零
}

-- 以下只用于验证寄存器接口的包装，不需要为了读懂算法而阅读。
private theorem adderBits_map (bs : List ModBit) (a b target c : ModField) :
    adderBits (bs.map (·.get a)) (bs.map (·.get b))
      (bs.map (·.get target)) (bs.map (·.get c)) =
      bs.map (fun bit => ⟨bit.get a, bit.get b, bit.get target, bit.get c⟩) := by
  induction bs with
  | nil => rfl
  | cons bit bs ih =>
    simpa [adderBits] using congrArg (AddBit.mk (bit.get a) (bit.get b) (bit.get target) (bit.get c) :: ·) ih

private theorem take_reg (L : ModLayout) (f : ModField) :
    (L.reg f).take L.width = L.lowReg f := by
  simp [ModLayout.reg, ModLayout.bits, ModLayout.width, ModLayout.lowReg]

private theorem selector_map (bs : List ModBit) :
    List.zipWith (fun ab o => SelectBit.mk ab.1 ab.2 o)
      ((bs.map (·.diff)).zip (bs.map (·.total))) (bs.map (·.out)) =
      bs.map (fun b => ⟨b.diff, b.total, b.out⟩) := by
  induction bs with
  | nil => rfl
  | cons b bs ih => simp [ih]

theorem modAdd_eq (L : ModLayout) (q : Nat) :
    modAdd L q = ECDSAAdd.Arithmetic.modAdd L q := by
  simp only [modAdd, ECDSAAdd.Arithmetic.modAdd, take_reg]
  simp only [addXor, subXor, ModLayout.x, ModLayout.y, ModLayout.reg]
  simp only [adderBits_map, add, sub, ModLayout.adder]
  simp only [chooseXor, ModLayout.lowReg, ModBit.get, selector_map, ModLayout.selector]

theorem modSub_eq (L : ModLayout) (q : Nat) :
    modSub L q = ECDSAAdd.Arithmetic.modSub L q := by
  simp only [modSub, ECDSAAdd.Arithmetic.modSub, take_reg]
  simp only [addXor, subXor, ModLayout.x, ModLayout.y, ModLayout.reg]
  simp only [adderBits_map, add, sub, ModLayout.adder]
  simp only [chooseXor, ModLayout.lowReg, ModBit.get, selector_map, ModLayout.selector]

end ECDSAAdd.Arithmetic.ReadableModular
