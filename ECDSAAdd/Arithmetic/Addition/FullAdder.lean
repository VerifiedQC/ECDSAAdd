import ECDSAAdd.Framework.GateProof
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open Instr Correction
open GateProof
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
verified def fullAdder (a b cin out carry : Wire) : Program := prog {
  if a         { b ^= 1; }     using CX  by cx_correct;
  if a         { cin ^= 1; }   using CX  by cx_correct;
  if b AND cin { carry ^= 1; } using CCX by ccx_correct;

  if a         { carry ^= 1; } using CX  by cx_correct;
  if a         { cin ^= 1; }   using CX  by cx_correct;
  if a         { b ^= 1; }     using CX  by cx_correct;

  if a         { out ^= 1; }   using CX  by cx_correct;
  if b         { out ^= 1; }   using CX  by cx_correct;
  if cin       { out ^= 1; }   using CX  by cx_correct;
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

/-! Auxiliary rules for the readable derivation below. -/
namespace FullAdderProof

private theorem carryIdentity (A B C : Bool) :
    (((B ^^ A) && (C ^^ A)) ^^ A) = carryBit A B C := calc
  (((B ^^ A) && (C ^^ A)) ^^ A)
      = ((((B && C) ^^ (A && B)) ^^ (A && C)) ^^ (A ^^ A)) := by
          -- Distribute AND over XOR; A AND A = A.
          simp only [Bool.and_xor_distrib_left,
            Bool.and_self, Bool.and_comm, Bool.xor_assoc,
            Bool.xor_left_comm, Bool.xor_comm]
  _ = (((B && C) ^^ (A && B)) ^^ (A && C)) := by
    rw [Bool.xor_self, Bool.xor_false]
  _ = carryBit A B C := by
    simp only [carryBit, Bool.xor_assoc, Bool.xor_left_comm, Bool.xor_comm]

private theorem restoreIdentity (V A : Bool) : ((V ^^ A) ^^ A) = V := calc
  ((V ^^ A) ^^ A) = (V ^^ (A ^^ A)) := Bool.xor_assoc V A A
  _ = V := by rw [Bool.xor_self, Bool.xor_false]

private theorem sumIdentity (A B C : Bool) : sumBit A B C = (A ^^ (B ^^ C)) := calc
  sumBit A B C = ((A ^^ B) ^^ C) := rfl
  _ = (A ^^ (B ^^ C)) := Bool.xor_assoc A B C

scoped syntax "carry_step" : tactic
scoped syntax "restore_step" : tactic
scoped syntax "sum_step" : tactic
macro_rules
  | `(tactic| carry_step) => `(tactic| gate_step [carryIdentity])
  | `(tactic| restore_step) => `(tactic| gate_step [restoreIdentity])
  | `(tactic| sum_step) => `(tactic| gate_step [sumIdentity, Bool.xor_assoc])

/-- Lift the displayed five-wire Hoare conclusion to the original full-state goal.
This helper contains no carry/sum arithmetic; that must come from the derivation. -/
private theorem finish {a b cin out carry : Wire}
    (hdisjoint : [a, b, cin, out, carry].Nodup) (s : State) (m : List Bool)
    (computation :
      {{ a = s.basis a, b = s.basis b, cin = s.basis cin,
         out = s.basis out, carry = s.basis carry }} fullAdder a b cin out carry
      {{ a = s.basis a, b = s.basis b, cin = s.basis cin,
         out = (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin)),
         carry = (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)) }}) :
    run (fullAdder a b cin out carry) m s =
      ⟨s.phase,
        writeBit (writeBit s.basis carry
          (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)))
          out (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin))⟩ := by
  let final : State := ⟨s.phase, fullAdder.model a b cin out carry s.basis⟩
  have execution : run (fullAdder a b cin out carry) m s = final :=
    fullAdder.translation a b cin out carry (by
      simp_all [fullAdder.requires, fullAdder.checked, Plan.seq, Plan.step, Plan.empty,
        Control.Valid, List.nodup_cons, List.mem_cons]) s m
  have result := computation s m ⟨⟨⟨⟨rfl, rfl⟩, rfl⟩, rfl⟩, rfl⟩
  rw [execution] at result
  obtain ⟨phase, ⟨⟨⟨_, inputB⟩, inputC⟩, sumOutput⟩, carryOutput⟩ := result
  have frame (w : Wire) (ho : w ≠ out) (hk : w ≠ carry) :
      final.basis w = s.basis w := by
    by_cases hb : w = b
    · subst w; exact inputB
    by_cases hc : w = cin
    · subst w; exact inputC
    simp [final, fullAdder.model, fullAdder.checked, Plan.seq, Plan.step, Plan.empty,
      flipIf_eq_xor, writeBit, ho, hk, hb, hc]
  have hok : out ≠ carry := by
    simp_all [List.nodup_cons, List.mem_cons]
  exact execution.trans (state_eq_of_two_outputs s final out carry hok _ _
    phase sumOutput carryOutput frame)

end FullAdderProof
open scoped FullAdderProof

/-- 任意输出和进位初值均可：在两处 XOR 写入和位与进位，其余状态保持。 -/
theorem fullAdder_correct (a b cin out carry : Wire)
    (hdisjoint : [a, b, cin, out, carry].Nodup)
    (s : State) (m : List Bool) :
    run (fullAdder a b cin out carry) m s =
      ⟨s.phase,
        writeBit (writeBit s.basis carry
          (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)))
          out (s.basis out ^^ sumBit (s.basis a) (s.basis b) (s.basis cin))⟩ := by
  -- A/B/C are input values; O/K are arbitrary initial output values.
  let A := s.basis a
  let B := s.basis b
  let C := s.basis cin
  let O := s.basis out
  let K := s.basis carry
  exact FullAdderProof.finish hdisjoint s m <| hoare_steps {
    Precondition { a=A, b=B, cin=C, out=O, carry=K };

    after command { if a { b ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=C, out=O, carry=K } by cx_step;

    after command { if a { cin ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=(C ^^ A), out=O, carry=K } by cx_step;

    after command { if b AND cin { carry ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=(C ^^ A), out=O, carry=(K ^^ ((B ^^ A) && (C ^^ A))) } by ccx_step;

    after command { if a { carry ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=(C ^^ A), out=O, carry=(K ^^ carryBit A B C) } by carry_step;

    after command { if a { cin ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=C, out=O, carry=(K ^^ carryBit A B C) } by restore_step;

    after command { if a { b ^= 1; }; }
    get { a=A, b=B, cin=C, out=O, carry=(K ^^ carryBit A B C) } by restore_step;

    after command { if a { out ^= 1; }; }
    get { a=A, b=B, cin=C, out=(O ^^ A), carry=(K ^^ carryBit A B C) } by cx_step;

    after command { if b { out ^= 1; }; }
    get { a=A, b=B, cin=C, out=((O ^^ A) ^^ B), carry=(K ^^ carryBit A B C) } by cx_step;

    after command { if cin { out ^= 1; }; }
    get { a=A, b=B, cin=C, out=(O ^^ sumBit A B C), carry=(K ^^ carryBit A B C) } by sum_step;

    Conclusion { a=A, b=B, cin=C, out=(O ^^ sumBit A B C), carry=(K ^^ carryBit A B C) };
  }

namespace FullAdderProof

/-- The measurement and its immediate correction form one atomic command.
For outcome 1, the three CZ corrections cancel the measured majority parity. -/
private theorem measure_majority (a b cin carry : Wire)
    (ha : a ≠ carry) (hb : b ≠ carry) (hc : cin ≠ carry)
    (initial : BasisState)
    (valid : initial carry = carryBit (initial a) (initial b) (initial cin)) :
    Triple (fun st => st = initial)
      [.measureX carry [] [.CZ a b, .CZ a cin, .CZ b cin]]
      (fun st => st = writeBit initial carry false) := by
  intro s m same
  cases s with
  | mk phase basis =>
    dsimp at same
    subst basis
    cases outcome : m.headD false with
    | false =>
      simp only [run, outcome]
      simp [measureAndCorrect, correct]
    | true =>
      simp only [run, outcome]
      simp [measureAndCorrect, correct, writeBit, ha, hb, hc, valid, carryBit]
      cases initial a <;> cases initial b <;> cases initial cin <;> simp

-- These rules only expose the interface of a previously checked execution rule.
-- The full-adder computation stays in fullAdder_correct's nine visible steps.
scoped syntax "full_adder_contract " term : tactic
macro_rules
  | `(tactic| full_adder_contract $wiring) => `(tactic|
      (intro state record initial
       rw [fullAdder_correct _ _ _ _ _ $wiring]
       simp_all [Holds.holds, writeBit, Function.update, List.nodup_cons,
         List.mem_cons, Ne.symm]))

end FullAdderProof

/-- 只要 carry 保存正确的进位，就能对任意测量结果清零它，且恢复原相位。 -/
theorem eraseCarry_correct (a b cin carry : Wire)
    (ha : a ≠ carry) (hb : b ≠ carry) (hc : cin ≠ carry)
    (s : State)
    (hcarry : s.basis carry = carryBit (s.basis a) (s.basis b) (s.basis cin))
    (m : List Bool) :
    run (eraseCarry a b cin carry) m s =
      ⟨s.phase, writeBit s.basis carry false⟩ := by
  apply Triple.run_eq (s := s) (m := m) (initial := rfl)
  exact hoare_steps {
    Precondition { satisfies (fun st => st = s.basis) };

    after command { call (prog { if meas carry = 1 then [CZ a b, CZ a cin, CZ b cin] else skip }); }
    get { satisfies (fun st => st = writeBit s.basis carry false) } by exact FullAdderProof.measure_majority a b cin carry ha hb hc s.basis hcarry;

    Conclusion { satisfies (fun st => st = writeBit s.basis carry false) };
  }

/-- 保持三个输入，在输出与进位线上异或写入和位与进位。 -/
theorem fullAdder_spec (a b cin out carry : Wire)
    (hnd : [a, b, cin, out, carry].Nodup) (A B C O K : Bool) :
    {{ a = A, b = B, cin = C, out = O, carry = K }} fullAdder a b cin out carry
    {{ a = A, b = B, cin = C, out = (O ^^ sumBit A B C),
       carry = (K ^^ carryBit A B C) }} := by
  open FullAdderProof in
  exact hoare_steps {
    Precondition { a=A, b=B, cin=C, out=O, carry=K };

    after command { call (fullAdder a b cin out carry); }
    get { a=A, b=B, cin=C, out=(O ^^ sumBit A B C), carry=(K ^^ carryBit A B C) } by full_adder_contract hnd;

    Conclusion { a=A, b=B, cin=C, out=(O ^^ sumBit A B C), carry=(K ^^ carryBit A B C) };
  }

namespace FullAdderProof

scoped syntax "erase_carry_contract " term : tactic
macro_rules
  | `(tactic| erase_carry_contract $wiring) => `(tactic|
      (intro state record initial
       have distinct := $wiring
       simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil,
         List.nodup_nil, not_or, not_false_eq_true, and_true] at distinct
       obtain ⟨⟨_, _, ha⟩, ⟨_, hb⟩, hc⟩ := distinct
       rw [eraseCarry_correct _ _ _ _ ha hb hc state
         (by simp_all only [Holds.holds]) record]
       simp_all [Holds.holds, writeBit, Function.update]))

end FullAdderProof

/-- 进位已等于 majority 时，清零进位并保持输入与相位。 -/
theorem eraseCarry_spec (a b cin carry : Wire)
    (hnd : [a, b, cin, carry].Nodup) (A B C : Bool) :
    {{ a = A, b = B, cin = C, carry = carryBit A B C }} eraseCarry a b cin carry
    {{ a = A, b = B, cin = C, carry = false }} := by
  open FullAdderProof in
  exact hoare_steps {
    Precondition { a=A, b=B, cin=C, carry=carryBit A B C };

    after command { call (eraseCarry a b cin carry); }
    get { a=A, b=B, cin=C, carry=false } by erase_carry_contract hnd;

    Conclusion { a=A, b=B, cin=C, carry=false };
  }

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
