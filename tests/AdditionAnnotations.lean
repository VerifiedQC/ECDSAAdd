import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic ECDSAAdd.CertifiedTranslation ECDSAAdd.BitTranslation
open Instr

namespace AdditionAnnotations

attribute [local simp] sumBit carryBit

-- All production syntax is imported: these are Program bodies, not certified facades.
example (a b cin out carry : Wire) :
    (prog {
      {
        carry ^= MAJ(a, b, cin);
        out ^= (a XOR b XOR cin);
      } using fullAdder by fullAdder_spec;
    } : Program) = fullAdder a b cin out carry := rfl

example (a b cin carry : Wire) :
    (prog { carry ^= MAJ(a, b, cin) using majority by majority_spec; } : Program) =
      majority a b cin carry := rfl

example (a cin out : Wire) :
    (prog { out ^= (a XOR cin) using sumInto by sumInto_spec; } : Program) =
      [.CX a out, .CX cin out] := rfl

example (a b cin carry : Wire) :
    (prog {
      carry = 0 using (eraseCarry a b cin) by (eraseCarry_spec a b cin);
    } : Program) = eraseCarry a b cin carry := rfl

-- An implementation is an explicit Lean value, not a name in a trusted registry.
example (a cin out : Wire) :
    (prog { out ^= (a XOR cin) using (fun x c o => sumInto x c o)
      by (fun x c o => sumInto_spec x c o); } : Program) = sumInto a cin out := rfl

-- Only the chosen circuit is emitted; writing a shared two-result formula does not duplicate it.
example (a b cin out carry : Wire) :
    (prog {
      {
        carry ^= MAJ(a, b, cin);
        out ^= (a XOR b XOR cin);
      } using fullAdder by fullAdder_spec;
      carry = 0 using (eraseCarry a b cin) by (eraseCarry_spec a b cin);
    } : Program) = fullAdder a b cin out carry ++ eraseCarry a b cin carry := rfl

-- The original loops are independent references: equality includes measurement order and costs.
local macro_rules
  | `(tactic| get_elem_tactic) =>
      `(tactic| (simp_all +zetaDelta only
          [List.length_append, List.length_cons, List.length_nil, List.length_map]
                 omega))

example (bs : List AddBit) (cin : Wire) : rippleAdder bs cin = prog {
    let n := bs.length;
    let c := [cin] ++ bs.map AddBit.carry;
    for i in range(n) {
      let b := bs[i];
      fullAdder(b.x, b.y, c[i], b.out, b.carry);
    };
    for i in reversed(range(n)) {
      let b := bs[i];
      eraseCarry(b.x, b.y, c[i], b.carry);
    };
  } := rfl

example (x y carry : List Wire) (cin : Wire) : addInPlace x y carry cin =
    if h : x.length = y.length ∧ carry.length + 1 = y.length then prog {
      let n := x.length;
      let c := [cin] ++ carry;
      for i in range(n - 1) {
        majority(x[i], y[i], c[i], c[i + 1]);
      };
      CX x[n - 1] y[n - 1];
      CX c[n - 1] y[n - 1];
      for i in reversed(range(n - 1)) {
        eraseCarry(x[i], y[i], c[i], c[i + 1]);
        CX x[i] y[i];
        CX c[i] y[i];
      };
    } else [] := by
  split <;> simp_all [addInPlace, sumInto, List.append_assoc]

-- Source semantics read the current physical state, including aliases and repeated targets.
example (a b : Wire) (hne : a ≠ b) (s t : BasisState) :
    bitCalculation { a ^= b; b ^= a; } s t ↔
      t a = (s a ^^ s b) ∧ t b = s a := by
  cases ha : s a <;> cases hb : s b <;>
    simp [writeBit, Function.update, hne, Ne.symm hne, ha, hb]

example (a b : Wire) (h : a = b) (s t : BasisState) :
    bitCalculation { a ^= b; b ^= a; } s t ↔ t a = false := by
  subst b
  simp [writeBit, Function.update]

example (a : Wire) (s t : BasisState) :
    bitCalculation { a ^= a; a ^= a; } s t ↔ t a = false := by
  simp [writeBit, Function.update]

-- A real certificate is retained at each primitive boundary; arbitrary target values are valid.
private def majorityStep (a b cin carry : Wire) : CheckedProgram :=
  checked (bitCalculation { carry ^= MAJ(a, b, cin); })
    using (majority a b cin carry) by (majority_spec a b cin carry)

example (a b cin carry : Wire) (hnd : [a, b, cin, carry].Nodup) (s : BasisState) :
    (majorityStep a b cin carry).requires s := by
  exact ⟨hnd, s a, s b, s cin, s carry, by simp [Certificate.ofTriple, Holds.holds]⟩

example (a b cin carry : Wire) (hnd : [a, b, cin, carry].Nodup) (s : State) (m : List Bool) :
    (run (majority a b cin carry) m s).phase = s.phase ∧
    (run (majority a b cin carry) m s).basis carry =
      (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)) := by
  rw [majority_correct a b cin carry hnd]
  simp [writeBit]

private def clearStep (a b cin carry : Wire) : CheckedProgram :=
  checked (bitCalculation { carry = 0; })
    using (eraseCarry a b cin carry) by (eraseCarry_spec a b cin carry)

-- "= 0" does not silently weaken the cleanup precondition.
example (a b cin carry : Wire) (s : BasisState)
    (h : (clearStep a b cin carry).requires s) :
    [a, b, cin, carry].Nodup ∧ s carry = carryBit (s a) (s b) (s cin) := by
  rcases h with ⟨hn, A, B, C, hp⟩
  simp only [Holds.holds] at hp
  exact ⟨hn, by simpa [hp.1.1.1, hp.1.1.2, hp.1.2] using hp.2⟩

-- Incoming carry may be true and XOR output may already be nonzero.
example : regValue [3] (run (rippleAdder [⟨0, 1, 3, 4⟩] 2) [true]
    ⟨true, fun w => w == 0 || w == 2 || w == 3⟩).basis = 1 := by decide

example : (run (rippleAdder [⟨0, 1, 3, 4⟩] 2) [true]
    ⟨true, fun w => w == 0 || w == 2 || w == 3⟩).basis 4 = false := by decide

example : regValue [1] (run (addInPlace [0] [1] [] 2) []
    ⟨true, fun w => w == 2⟩).basis = 1 := by decide

-- Different implementation, wrong proof, or wrong source formula must be rejected.
example (_a _b _cin _out _carry : Wire) : True := by
  fail_if_success
    have _bad : Program := prog {
      _carry ^= MAJ(_a, _b, _cin) using (fun _ _ _ _ => []) by majority_spec;
    }
  fail_if_success
    have _bad : Program := prog {
      _carry ^= MAJ(_a, _b, _cin) using majority by eraseCarry_spec;
    }
  fail_if_success
    have _bad : Program := prog {
      _out ^= (_a XOR _cin) using sumInto by True.intro;
    }
  fail_if_success
    have _bad : Program := prog {
      {
        _carry ^= MAJ(_a, _b, _cin);
        _out ^= (_a XOR _b XOR _b);
      } using fullAdder by fullAdder_spec;
    }
  fail_if_success
    have _bad : Program := prog {
      {
        _carry ^= MAJ(_a, _b, _cin);
        _out ^= (_a XOR _b XOR _carry);
      } using fullAdder by fullAdder_spec;
    }
  fail_if_success
    have _bad : Program := prog {
      _carry = 1 using (eraseCarry _a _b _cin) by (eraseCarry_spec _a _b _cin);
    }
  fail_if_success
    have _bad : Program := prog {
      _carry = 2 using (eraseCarry _a _b _cin) by (eraseCarry_spec _a _b _cin);
    }
  fail_if_success
    have _bad : Program := prog {
      _out ^= (_a XOR _cin) using (fun a c out => sumInto c out a) by sumInto_spec;
    }
  trivial

end AdditionAnnotations
