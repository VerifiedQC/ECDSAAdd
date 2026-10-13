import ECDSAAdd.Arithmetic.Addition.FullAdder
import ECDSAAdd.Arithmetic.Addition.Counter
import ECDSAAdd.Arithmetic.Addition.MeasuredMaskedAdder

open ECDSAAdd ECDSAAdd.Arithmetic ECDSAAdd.GateProof Instr

namespace HoareTraceTests

-- The new command/predicate labels are not reserved variable names.
example (call satisfies after command get : Nat) :
    call + satisfies + after + command + get = call + satisfies + after + command + get := rfl

-- Reject nested proof recovery as well as a mismatched outer type.
elab "strictTrace% " proof:term : term <= expected =>
  Lean.Elab.Term.withoutErrToSorry do
    let result ← Lean.Elab.Term.elabTermEnsuringType proof expected
    Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
    let result ← Lean.instantiateMVars result
    if result.hasMVar || result.hasSorry then
      throwError "Expected a complete Hoare derivation."
    return result

private theorem flip (w : Wire) (before : BasisState) :
    Triple (fun st => st = before) [X w]
      (fun st => st = writeBit before w (!before w)) := by
  apply Triple.of_run_eq
  intro s m initial
  simp [run, initial]

-- Full-state predicates preserve the frame, and both actual commands are checked.
example (before : BasisState) :
    Triple (fun st => st = before) [X 0, X 1]
      (fun st => st = writeBit (writeBit before 0 (!before 0)) 1 (!before 1)) :=
  strictTrace% hoare_steps {
    Precondition { satisfies (fun st => st = before) };
    after command { call [X 0]; }
    get { satisfies (fun st => st = writeBit before 0 (!before 0)) } by exact flip 0 before;
    after command { call [X 1]; }
    get { satisfies (fun st => st = writeBit (writeBit before 0 (!before 0)) 1 (!before 1)) } by simpa [writeBit] using flip 1 (writeBit before 0 (!before 0));
    Conclusion { satisfies (fun st => st = writeBit (writeBit before 0 (!before 0)) 1 (!before 1)) };
  }

private theorem copy_step (a b : Wire) (distinct : a ≠ b) (A B : Bool) :
    {{ a=A, b=B }} [CX a b] {{ a=A, b=(B ^^ A) }} := hoare_steps {
  Precondition { a=A, b=B };
  after command { if a { b ^= 1; }; }
  get { a=A, b=(B ^^ A) } by gate_step [distinct];
  Conclusion { a=A, b=(B ^^ A) };
}

-- Mix a gate rule with a previously proved subprogram contract.
example (a b : Wire) (distinct : a ≠ b) (A B : Bool) :
    {{ a=A, b=B }} [CX a b, CX a b] {{ a=A, b=((B ^^ A) ^^ A) }} :=
  strictTrace% hoare_steps {
    Precondition { a=A, b=B };
    after command { if a { b ^= 1; }; }
    get { a=A, b=(B ^^ A) } by gate_step [distinct];
    after command { call [CX a b]; }
    get { a=A, b=((B ^^ A) ^^ A) } by exact copy_step a b distinct A (B ^^ A);
    Conclusion { a=A, b=((B ^^ A) ^^ A) };
  }

private theorem clear (before : BasisState)
    (valid : before 3 = carryBit (before 0) (before 1) (before 2)) :
    Triple (fun st => st = before) (eraseCarry 0 1 2 3)
      (fun st => st = writeBit before 3 false) := by
  apply Triple.of_run_eq
  intro s m initial
  rw [eraseCarry_correct 0 1 2 3 (by decide) (by decide) (by decide) s
    (by simpa only [initial] using valid) m, initial]

-- The first command consumes a measurement; sequence still quantifies over all
-- records (including [], short records, either outcome, and unused suffixes).
example (s : State) (m : List Bool)
    (valid : s.basis 3 = carryBit (s.basis 0) (s.basis 1) (s.basis 2)) :
    run (eraseCarry 0 1 2 3 ++ [X 4]) m s =
      ⟨s.phase, writeBit (writeBit s.basis 3 false) 4 (!s.basis 4)⟩ := by
  apply Triple.run_eq (s := s) (m := m) (initial := rfl)
  exact strictTrace% hoare_steps {
    Precondition { satisfies (fun st => st = s.basis) };
    after command { call (eraseCarry 0 1 2 3); }
    get { satisfies (fun st => st = writeBit s.basis 3 false) } by exact clear s.basis valid;
    after command { call [X 4]; }
    get { satisfies (fun st => st = writeBit (writeBit s.basis 3 false) 4 (!s.basis 4)) } by simpa [writeBit] using flip 4 (writeBit s.basis 3 false);
    Conclusion { satisfies (fun st => st = writeBit (writeBit s.basis 3 false) 4 (!s.basis 4)) };
  }

-- A false intermediate assertion cannot be introduced as an assumption.
example (_before : BasisState) : True := by
  fail_if_success
    have _bad : Triple (fun st => st = _before) [X 0] (fun st => st = _before) := strictTrace% hoare_steps {
      Precondition { satisfies (fun st => st = _before) };
      after command { call [X 0]; }
      get { satisfies (fun st => st = _before) } by exact flip 0 _before;
      Conclusion { satisfies (fun st => st = _before) };
    }
  trivial

-- A proof of a different program cannot certify the displayed command.
example (_before : BasisState) : True := by
  fail_if_success
    have _bad : Triple (fun st => st = _before) [X 1]
        (fun st => st = writeBit _before 0 (!_before 0)) := strictTrace% hoare_steps {
      Precondition { satisfies (fun st => st = _before) };
      after command { call [X 1]; }
      get { satisfies (fun st => st = writeBit _before 0 (!_before 0)) } by exact flip 0 _before;
      Conclusion { satisfies (fun st => st = writeBit _before 0 (!_before 0)) };
    }
  trivial

-- The next command must start from the preceding get, not the original basis.
example (_before : BasisState) : True := by
  fail_if_success
    have _bad : Triple (fun st => st = _before) [X 0, X 1]
        (fun st => st = writeBit _before 1 (!_before 1)) := strictTrace% hoare_steps {
      Precondition { satisfies (fun st => st = _before) };
      after command { call [X 0]; }
      get { satisfies (fun st => st = writeBit _before 0 (!_before 0)) } by exact flip 0 _before;
      after command { call [X 1]; }
      get { satisfies (fun st => st = writeBit _before 1 (!_before 1)) } by exact flip 1 _before;
      Conclusion { satisfies (fun st => st = writeBit _before 1 (!_before 1)) };
    }
  trivial

set_option linter.unreachableTactic false in
example (_before : BasisState) : True := by
  fail_if_success
    have _bad : Triple (fun st => st = _before) [X 1, X 0]
        (fun st => st = writeBit _before 0 (!_before 0)) := strictTrace% hoare_steps {
      Precondition { satisfies (fun st => st = _before) };
      after command { call [X 0]; }
      get { satisfies (fun st => st = writeBit _before 0 (!_before 0)) } by exact flip 0 _before;
      Conclusion { satisfies (fun st => st = writeBit _before 0 (!_before 0)) };
    }
  trivial

set_option linter.unreachableTactic false in
example (_before : BasisState) : True := by
  fail_if_success
    have _bad : Triple (fun st => st = _before) [X 0] (fun st => st = _before) := strictTrace% hoare_steps {
      Precondition { satisfies (fun st => st = _before) };
      after command { call [X 0]; }
      get { satisfies (fun st => st = writeBit _before 0 (!_before 0)) } by exact flip 0 _before;
      Conclusion { satisfies (fun st => st = _before) };
    }
  trivial

-- Keeping basis assertions is not enough when a measurement changes phase.
set_option linter.unreachableTactic false in
example (_before : BasisState) : True := by
  fail_if_success
    have _bad : Triple (fun st => st = _before) [.measureX 3 [] []]
        (fun st => st = writeBit _before 3 false) := strictTrace% hoare_steps {
      Precondition { satisfies (fun st => st = _before) };
      after command { call [.measureX 3 [] []]; }
      get { satisfies (fun st => st = writeBit _before 3 false) } by
        (intro s m initial; constructor; · rfl; · simp [run, measureAndCorrect, correct, initial]);
      Conclusion { satisfies (fun st => st = writeBit _before 3 false) };
    }
  trivial

example : (run [.measureX 3 [] []] [true] ⟨false, fun _ => true⟩).phase = true := rfl

-- Readable traces must remain connected to real Hoare composition and the
-- arithmetic/measurement rules; a separate decorative proof is insufficient.
run_cmd do
  let env ← Lean.getEnv
  for root in [``majority_correct, ``majority_spec, ``sumInto_spec,
      ``rippleAdder_xor_correct, ``rippleSubtractor_xor_correct,
      ``subInPlace_spec, ``maskedAddConst_spec, ``maskedSubConst_spec,
      ``maskedAddInPlace_spec, ``maskedSubInPlace_spec,
      ``measuredMaskedAddInPlace_spec, ``measuredMaskedSubInPlace_spec,
      ``counterDecXor_spec, ``counterInc_spec, ``counterDec_spec, ``add_twice_spec] do
    let some info := env.find? root | throwError "Missing declaration {root}"
    let some proof := info.value? | throwError "Missing proof {root}"
    unless proof.getUsedConstants.contains ``Triple.seq do
      throwError "{root} must use Triple.seq"
  for (root, required) in [
      (``addInPlace_correct, ``Triple.seq),
      (``addInPlace_correct, ``majority_correct),
      (``addInPlace_correct, ``eraseCarry_correct),
      (``rippleAdder_xor_correct, ``fullAdder_correct),
      (``rippleAdder_xor_correct, ``eraseCarry_correct),
      (``rippleSubtractor_xor_correct, ``rippleAdder_xor_correct),
      (``measuredMaskedAddInPlace_spec, ``eraseMask_correct),
      (``measuredMaskedSubInPlace_spec, ``eraseMask_correct)] do
    let mut pending := [root]
    let mut seen : Lean.NameSet := {}
    while !pending.isEmpty do
      let name := pending.head!
      pending := pending.tail
      if seen.contains name then continue
      seen := seen.insert name
      let some info := env.find? name | throwError "Missing dependency {name}"
      let some proof := info.value? | continue
      for dep in proof.getUsedConstants do
        if ((Lean.privateToUserName? dep).getD dep).toString.startsWith "ECDSAAdd." then
          pending := dep :: pending
    unless seen.contains required do
      throwError "{root} must transitively depend on {required}"

end HoareTraceTests
