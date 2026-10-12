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

/-- Assemble a state equality from two outputs, an unchanged phase, and a frame. -/
private theorem state_eq_of_two_outputs (s t : State) (out carry : Wire)
    (hne : out ≠ carry) (O K : Bool)
    (phase : t.phase = s.phase) (output : t.basis out = O) (savedCarry : t.basis carry = K)
    (frame : ∀ w, w ≠ out → w ≠ carry → t.basis w = s.basis w) :
    t = ⟨s.phase, writeBit (writeBit s.basis carry K) out O⟩ := by
  have basis : t.basis = writeBit (writeBit s.basis carry K) out O := by
    funext w
    by_cases ho : w = out
    · subst w; simp [writeBit, output]
    by_cases hk : w = carry
    · subst w; simp [writeBit, Ne.symm hne, savedCarry]
    · simpa [writeBit, ho, hk] using frame w ho hk
  cases t
  simp_all

/-- 任意输出和进位初值均可：在两处 XOR 写入和位与进位，其余状态保持。 -/
theorem fullAdder_correct (a b cin out carry : Wire)
    (hdisjoint : [a, b, cin, out, carry].Nodup)
    (s : State) (m : List Bool) :
    run (fullAdder a b cin out carry) m s =
      ⟨s.phase,
        writeBit (writeBit s.basis carry
          (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)))
          out (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin))⟩ := by
  -- A, B, C are the input bits; O and K are arbitrary initial output bits.
  let A := s.basis a
  let B := s.basis b
  let C := s.basis cin
  let O := s.basis out
  let K := s.basis carry
  let final := run (fullAdder a b cin out carry) m s

  -- Distinct wires let each gate update only its target.
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, List.nodup_nil,
    not_or, not_false_eq_true, and_true] at hdisjoint
  obtain ⟨⟨hab, hac, hao, hak⟩, ⟨hbc, hbo, hbk⟩, ⟨hco, hck⟩, hok⟩ := hdisjoint

  -- 1. The first four gates compute the carry; later gates do not target it.
  have carryOutput : final.basis carry = (K ^^ carryBit A B C) := calc
    final.basis carry = ((K ^^ ((B ^^ A) && (C ^^ A))) ^^ A) := by
      simp [final, fullAdder, run, writeBit, A, B, C, K,
        hab, hac, hak, hbc, hbk, hck, hok, Ne.symm]
    _ = ((K ^^ (((B && C) ^^ (A && B)) ^^ (A && C))) ^^ (A ^^ A)) := by
      -- Distribute AND over XOR and use A AND A = A.
      simp only [Bool.and_xor_distrib_left, Bool.and_xor_distrib_right, Bool.and_self,
        Bool.and_comm, Bool.xor_assoc, Bool.xor_left_comm, Bool.xor_comm]
    _ = (K ^^ (((B && C) ^^ (A && B)) ^^ (A && C))) := by
      -- The two copies of A cancel.
      rw [Bool.xor_self, Bool.xor_false]
    _ = (K ^^ carryBit A B C) := by
      -- The three pairwise products are exactly the carry bit.
      simp only [carryBit, Bool.xor_assoc, Bool.xor_left_comm, Bool.xor_comm]

  -- 2. The next two gates undo the temporary changes to b and cin.
  have inputB : final.basis b = B := calc
    final.basis b = ((B ^^ A) ^^ A) := by
      simp [final, fullAdder, run, writeBit, A, B,
        hab, hac, hak, hbc, hbo, hbk, hck, Ne.symm]
    _ = (B ^^ (A ^^ A)) := Bool.xor_assoc B A A
    _ = B := by rw [Bool.xor_self, Bool.xor_false]
  have inputC : final.basis cin = C := calc
    final.basis cin = ((C ^^ A) ^^ A) := by
      simp [final, fullAdder, run, writeBit, A, C,
        hab, hac, hak, hbc, hco, hck, Ne.symm]
    _ = (C ^^ (A ^^ A)) := Bool.xor_assoc C A A
    _ = C := by rw [Bool.xor_self, Bool.xor_false]

  -- 3. The last three gates XOR the restored inputs into out.
  have sumOutput : final.basis out = (O ^^ sumBit A B C) := calc
    final.basis out = (((O ^^ A) ^^ B) ^^ C) := by
      simp [final, fullAdder, run, writeBit, A, B, C, O,
        hab, hac, hak, hbc, hbo, hbk, hco, hck, hok, Ne.symm]
    _ = (O ^^ ((A ^^ B) ^^ C)) := by simp only [Bool.xor_assoc]
    _ = (O ^^ sumBit A B C) := rfl

  -- No gate changes phase. Apart from out/carry, only b/cin were targeted,
  -- and both have just been proved restored.
  have phase : final.phase = s.phase := rfl
  have frame (w : Wire) (ho : w ≠ out) (hk : w ≠ carry) :
      final.basis w = s.basis w := by
    by_cases hb : w = b
    · subst w; exact inputB
    by_cases hc : w = cin
    · subst w; exact inputC
    simp [final, fullAdder, run, writeBit, ho, hk, hb, hc]

  -- Combine the two calculated outputs with the unchanged rest of the state.
  exact state_eq_of_two_outputs s final out carry hok
    (O ^^ sumBit A B C) (K ^^ carryBit A B C) phase sumOutput carryOutput frame

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
