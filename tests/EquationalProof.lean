import ECDSAAdd

open ECDSAAdd.Arithmetic.ModReductionAlgorithm

-- Merely importing the new grammar must not reserve its English vocabulary.
example (one subtraction and the branch condition conclude definition : Nat) :
    one + subtraction + and + the + branch + condition + conclude + definition =
      one + subtraction + and + the + branch + condition + conclude + definition := rfl

open scoped ECDSAAdd.ProofLanguage

-- The old English grammar already reserves "the" and "conclude" in this scope.
example (one subtraction and branch condition : Nat) :
    one + subtraction + and + branch + condition =
      one + subtraction + and + branch + condition := rfl

-- Reproduce the complete public proof, including a local alias for the sum.
example (X Y q : Nat) (hSum : X + Y < 2*q) :
    addResult X Y q = (X + Y) % q := Proof
  let sum := X + Y
  if (sum < q) {
    { sum % q = sum } by the small remainder rule;
    { addResult X Y q = sum } by definition;
    conclude { addResult X Y q = sum % q };
  } else {
    { sum % q = sum - q } by one subtraction using hSum and the branch condition;
    { addResult X Y q = sum - q } by definition;
    conclude { addResult X Y q = sum % q };
  }

-- The rules are not hard-coded to addResult. Evidence can be a parenthesized term.
private def reduceOnce (s q : Nat) : Nat := if s < q then s else s - q

example (s q : Nat) (h : s < 2*q) : reduceOnce s q = s % q := Proof
  if (s < q) {
    { reduceOnce s q = s } by definition;
    { s % q = s } by the small remainder rule;
    conclude { reduceOnce s q = s % q };
  } else {
    { reduceOnce s q = s - q } by definition;
    { s % q = s - q } by one subtraction using (show s < 2*q from h) and the branch condition;
    conclude { reduceOnce s q = s % q };
  }

-- Native term/tactic if notation remains usable alongside the proof notation.
example (p : Prop) [Decidable p] : p ∨ ¬p := by
  if h : p then exact Or.inl h else exact Or.inr h

example (s q : Nat) : reduceOnce s q = (if s < q then s else s - q) := rfl

-- Empty fact lists and output-independent conclusions work; therefore negative
-- tests with True conclusions really exercise their invalid intermediate facts.
example : True := Proof
  if (True) { conclude { True }; } else { conclude { True }; }

example (s q : Nat) : True := Proof
  if (s < q) {
    { reduceOnce s q = s } by definition;
    conclude { True };
  } else {
    { reduceOnce s q = s - q } by definition;
    conclude { True };
  }

-- The old theorem type, equality boundary, small modulus, and both cases remain valid.
example (X Y q : Nat) (hSum : X + Y < 2*q) :
    addResult X Y q = (X + Y) % q := addResult_correct X Y q hSum
example : addResult 2 3 7 = 5 := by decide
example : addResult 3 4 7 = 0 := by decide
example : addResult 6 6 7 = 5 := by decide
example : addResult 0 0 1 = 0 := by decide
example : addResult 14 1 7 ≠ (14 + 1) % 7 := by decide

-- All negative fact tests conclude True: they must fail on the bad fact itself,
-- not just on a mismatch between a convenient outer goal and the conclusion.
example (_s _q : Nat) : True := by
  fail_if_success
    if (_s < _q) {
      { _s % _q = _s + 1 } by the small remainder rule;
      conclude { True };
    } else { conclude { True }; }
  fail_if_success
    if (_s < _q) { conclude { True }; } else {
      { _s % _q = _s } by the small remainder rule;
      conclude { True };
    }
  fail_if_success
    if (_s < _q) {
      { reduceOnce _s _q = _s + 1 } by definition;
      conclude { True };
    } else { conclude { True }; }
  fail_if_success
    if (_s < _q) { conclude { True }; } else {
      { reduceOnce _s _q = _s } by definition;
      conclude { True };
    }
  fail_if_success
    if (_s < _q) {
      { False } by definition;
      conclude { True };
    } else { conclude { True }; }
  trivial

example (_s _q : Nat) (_upper : _s < 2*_q) : True := by
  -- The hidden upper bound is not used if the cited proof is unrelated.
  fail_if_success
    if (_s < _q) { conclude { True }; } else {
      { _s % _q = _s - _q } by one subtraction using True.intro and the branch condition;
      conclude { True };
    }
  -- The right bound is still insufficient in the wrong branch.
  fail_if_success
    if (_s < _q) {
      { _s % _q = _s - _q } by one subtraction using _upper and the branch condition;
      conclude { True };
    } else { conclude { True }; }
  fail_if_success
    if (_s < _q) { conclude { True }; } else {
      { _s % _q = _s - _q + 1 } by one subtraction using _upper and the branch condition;
      conclude { True };
    }
  fail_if_success
    if (_s < _q) { conclude { True }; } else {
      { _s % _q = _s - _q } by one subtraction using (0 : Nat) and the branch condition;
      conclude { True };
    }
  trivial

-- "By definition" cannot instead use an unrelated assumed equality.
example (_x _y : Nat) (_hidden : _x = _y) : True := by
  fail_if_success
    if (_x < _y) {
      { _x = _y } by definition;
      conclude { True };
    } else { conclude { True }; }
  trivial

-- Conclusion must close the actual goal, not another proposition or a stronger
-- claim borrowed directly from an outer hypothesis without displayed evidence.
example : True := by
  fail_if_success
    if (True) { conclude { False }; } else { conclude { True }; }
  trivial

example (s q : Nat) (h : s < 2*q) : reduceOnce s q = s % q := by
  fail_if_success
    if (s < q) {
      { s % q = s } by the small remainder rule;
      conclude { reduceOnce s q = s % q };
    } else {
      { s % q = s - q } by one subtraction using h and the branch condition;
      conclude { reduceOnce s q = s % q };
    }
  simpa only [addResult, reduceOnce, Nat.add_zero] using
    addResult_correct s 0 q (by simpa using h)

example (a b : Nat) (h : a = b) : a = b := by
  fail_if_success
    if (a < b) { conclude { a = b }; } else { conclude { a = b }; }
  exact h

run_cmd do
  let env ← Lean.getEnv
  for invalid in [
      "if (s < q) { conclude { True }; }",
      "if (s < q) { { s % q = s } by the small remainder rule; } else { conclude { True }; }",
      "if (s < q) { conclude { True }; } else { }",
      "if (s < q) { { s % q = s } by unchecked; conclude { True }; } else { conclude { True }; }"] do
    match Lean.Parser.runParserCategory env `tactic invalid with
    | .error _ => pure ()
    | .ok _ => throwError "An incomplete or unchecked proof was accepted: {invalid}"
