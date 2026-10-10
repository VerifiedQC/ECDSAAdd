import ECDSAAdd.Framework.Hoare
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open Instr Correction
open scoped ECDSAAdd.ProofLanguage

def sumBit (a b c : Bool) : Bool := (a ^^ b) ^^ c

def carryBit (a b c : Bool) : Bool := ((a && b) ^^ (a && c)) ^^ (b && c)

/-- 一位全加器：out ^= a XOR b XOR cin，carry ^= MAJ(a,b,cin)，输入 a/b/cin 保持。
MAJ 表示三个输入中至少两个为 1；out、carry 初始为零时分别得到和位、进位。
要求五根 wire 互异；临时异或输入，用一个 Toffoli 计算进位，然后恢复输入。

参数：

- `a`：第一个一位加数的 wire，输入保持。
- `b`：第二个一位加数的 wire，输入保持。
- `cin`：最低位的输入进位 wire，其原值参与加法，运算后保留。
- `out`：和位的 XOR 输出 wire；初始为 0 时得到本位和。
- `carry`：进位的 XOR 输出 wire；初始为 0 时得到本位向高位的进位。
-/
def fullAdder (a b cin out carry : Wire) : Program := prog {
  CX a b; CX a cin; CCX b cin carry;
  CX a carry; CX a cin; CX a b;
  CX a out; CX b out; CX cin out
}

/-- 当 carry = MAJ(a,b,cin) 时，将 carry 测量清零，保留 a/b/cin 并恢复相位。
要求四根 wire 互异；测量后立即执行对应的三个 CZ 修正，不适用于任意 carry 初值。

参数：

- `a`：生成 carry 时使用的第一个加数 wire。
- `b`：生成 carry 时使用的第二个加数 wire。
- `cin`：生成 carry 时使用的输入进位 wire；a/b/cin 必须仍保存原输入。
- `carry`：待清零的进位 wire，当前值必须等于 MAJ(a,b,cin)。
-/
def eraseCarry (a b cin carry : Wire) : Program :=
  prog { if meas carry = 1 then [CZ a b, CZ a cin, CZ b cin] else skip }

/-- 任意输出和进位初值均可：在两处 XOR 写入和位与进位，其余状态保持。 -/
theorem fullAdder_correct (a b cin out carry : Wire)
    (hdisjoint : [a, b, cin, out, carry].Nodup)
    (s : State) (m : List Bool) :
    run (fullAdder a b cin out carry) m s =
      ⟨s.phase,
        writeBit (writeBit s.basis carry
          (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)))
          out (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin))⟩ := Proof
  let final := run (fullAdder a b cin out carry) m s
  -- The gates change no phase. The basis calculation has just two XOR outputs.
  { final.phase = s.phase } as phase by rfl;
  { final.basis =
      writeBit (writeBit s.basis carry
        (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)))
        out (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin)) } as outputs by (by
    simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, List.nodup_nil,
      not_or, not_false_eq_true, and_true] at hdisjoint
    obtain ⟨⟨hab, hac, hao, hak⟩, ⟨hbc, hbo, hbk⟩, ⟨hco, hck⟩, hok⟩ := hdisjoint
    have hcb := Ne.symm hbc
    simp only [final, fullAdder, run]
    funext w
    by_cases hwa : w = a <;> by_cases hwb : w = b <;>
      by_cases hwc : w = cin <;> by_cases hwo : w = out <;>
      by_cases hwk : w = carry <;>
      simp_all [writeBit, Function.update, sumBit, carryBit]
    cases s.basis a <;> cases s.basis b <;> cases s.basis cin <;>
      cases s.basis out <;> cases s.basis carry <;> simp_all);
  conclude { final = ⟨s.phase,
    writeBit (writeBit s.basis carry
      (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)))
      out (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin))⟩ }
    by (by cases hf : final; simp_all);

/-- 只要 carry 保存正确的进位，就能对任意测量结果清零它，且恢复原相位。 -/
theorem eraseCarry_correct (a b cin carry : Wire)
    (ha : a ≠ carry) (hb : b ≠ carry) (hc : cin ≠ carry)
    (s : State)
    (hcarry : s.basis carry = carryBit (s.basis a) (s.basis b) (s.basis cin))
    (m : List Bool) :
    run (eraseCarry a b cin carry) m s =
      ⟨s.phase, writeBit s.basis carry false⟩ := Proof
  -- Both outcomes erase the carry. For outcome 1, the three CZ corrections
  -- contribute exactly the same parity as the measured carry, cancelling it.
  let correctionParity := ((s.basis a && s.basis b) ^^ (s.basis a && s.basis cin)) ^^
      (s.basis b && s.basis cin)
  { correctionParity = s.basis carry } as cancelsMeasuredCarry by hcarry.symm;
  cases outcome : m.headD false with
  | false =>
    conclude { run (eraseCarry a b cin carry) m s =
        ⟨s.phase, writeBit s.basis carry false⟩ } by (by
      simp only [eraseCarry, run, outcome]
      simp [measureAndCorrect, correct]);
  | true =>
    conclude { run (eraseCarry a b cin carry) m s =
        ⟨s.phase, writeBit s.basis carry false⟩ } by (by
      simp only [eraseCarry, run, outcome]
      simp [measureAndCorrect, correct, writeBit,
        ha, hb, hc, ← cancelsMeasuredCarry, correctionParity]
      cases s.basis a <;> cases s.basis b <;> cases s.basis cin <;> simp);

/-- 保持三个输入，在输出与进位线上异或写入和位与进位。 -/
theorem fullAdder_spec (a b cin out carry : Wire)
    (hnd : [a, b, cin, out, carry].Nodup) (A B C O K : Bool) :
    {{ a = A, b = B, cin = C, out = O, carry = K }} fullAdder a b cin out carry
    {{ a = A, b = B, cin = C, out = (O ^^ sumBit A B C),
       carry = (K ^^ carryBit A B C) }} := Proof
  For every s, m assuming initial
  let final := run (fullAdder a b cin out carry) m s
  { final = ⟨s.phase,
      writeBit (writeBit s.basis carry (K ^^ carryBit A B C))
        out (O ^^ sumBit A B C)⟩ } as execution by (by
    dsimp only [final]
    rw [fullAdder_correct a b cin out carry hnd]
    simp_all only [Holds.holds]);
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, List.nodup_nil,
    not_or, not_false_eq_true, and_true] at hnd
  obtain ⟨⟨hab, hac, hao, hak⟩, ⟨hbc, hbo, hbk⟩, ⟨hco, hck⟩, hok⟩ := hnd
  { final.basis a = A ∧ final.basis b = B ∧ final.basis cin = C }
    as inputs by (by rw [execution]; simp_all [Holds.holds, writeBit, Function.update]);
  { final.basis out = (O ^^ sumBit A B C) ∧
      final.basis carry = (K ^^ carryBit A B C) }
    as outputs by (by rw [execution]; simp [writeBit, Ne.symm hok]);
  conclude { final.phase = s.phase ∧
      (((final.basis a = A ∧ final.basis b = B) ∧ final.basis cin = C) ∧
        final.basis out = (O ^^ sumBit A B C)) ∧
      final.basis carry = (K ^^ carryBit A B C) }
    by ⟨(by rw [execution]), ⟨⟨⟨inputs.1, inputs.2.1⟩, inputs.2.2⟩,
      outputs.1⟩, outputs.2⟩;

/-- 进位已等于 majority 时，清零进位并保持输入与相位。 -/
theorem eraseCarry_spec (a b cin carry : Wire)
    (hnd : [a, b, cin, carry].Nodup) (A B C : Bool) :
    {{ a = A, b = B, cin = C, carry = carryBit A B C }} eraseCarry a b cin carry
    {{ a = A, b = B, cin = C, carry = false }} := Proof
  For every s, m assuming initial
  let final := run (eraseCarry a b cin carry) m s
  simp only [Holds.holds] at initial
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, List.nodup_nil,
    not_or, not_false_eq_true, and_true] at hnd
  obtain ⟨⟨_, _, ha⟩, ⟨_, hb⟩, hc⟩ := hnd
  { s.basis carry = carryBit (s.basis a) (s.basis b) (s.basis cin) }
    as validCarry by (by simpa only [initial.1.1.1, initial.1.1.2, initial.1.2]
                          using initial.2);
  { final = ⟨s.phase, writeBit s.basis carry false⟩ }
    as execution by (eraseCarry_correct a b cin carry ha hb hc s validCarry m);
  conclude { final.phase = s.phase ∧
      ((final.basis a = A ∧ final.basis b = B) ∧ final.basis cin = C) ∧
      final.basis carry = false } by (by
    rw [execution]; simp_all [writeBit, Function.update]);

/-- 一位全加器只有一个 Toffoli。 -/
theorem fullAdder_toffoliCount (a b cin out carry : Wire) :
    toffoliCount (fullAdder a b cin out carry) = 1 := rfl

theorem fullAdder_measurementCount (a b cin out carry : Wire) :
    measurementCount (fullAdder a b cin out carry) = 0 := rfl

/-- 进位清理使用一次测量和零个 Toffoli。 -/
theorem eraseCarry_resources (a b cin carry : Wire) :
    toffoliCount (eraseCarry a b cin carry) = 0 ∧
    measurementCount (eraseCarry a b cin carry) = 1 := ⟨rfl, rfl⟩

theorem fullAdder_wires (a b cin out carry : Wire) :
    wires (fullAdder a b cin out carry) = {a, b, cin, out, carry} := by
  ext w
  simp [fullAdder, wires, Instr.wires]
  tauto

theorem eraseCarry_wires (a b cin carry : Wire) :
    wires (eraseCarry a b cin carry) = {a, b, cin, carry} := by
  ext w
  simp [eraseCarry, wires, Instr.wires, correctionWires]
  tauto

/-- 五线互异时，一位全加器的静态线路数为 5。 -/
theorem fullAdder_qubitCount (a b cin out carry : Wire)
    (hnd : [a, b, cin, out, carry].Nodup) :
    qubitCount (fullAdder a b cin out carry) = 5 := by
  rw [qubitCount, fullAdder_wires]
  have h := List.toFinset_card_of_nodup hnd
  simpa using h

/-- 四线互异时，进位测量清理的静态线路数为 4。 -/
theorem eraseCarry_qubitCount (a b cin carry : Wire)
    (hnd : [a, b, cin, carry].Nodup) :
    qubitCount (eraseCarry a b cin carry) = 4 := by
  rw [qubitCount, eraseCarry_wires]
  have h := List.toFinset_card_of_nodup hnd
  simpa using h

/-- 和位加上二倍进位，恰好等于三个输入位的自然数之和。 -/
theorem fullAdder_bit_value (a b c : Bool) :
    (sumBit a b c).toNat + 2 * (carryBit a b c).toNat =
      a.toNat + b.toNat + c.toNat := by
  cases a <;> cases b <;> cases c <;> rfl

end ECDSAAdd.Arithmetic
