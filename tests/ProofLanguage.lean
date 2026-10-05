import ECDSAAdd.Arithmetic.ModularAddition.ModularAlgorithm

open ECDSAAdd.Arithmetic.ModReductionAlgorithm

-- Importing the notation must not reserve ordinary names outside its scope.
example (we get arithmetic definition small remainder rule shifted : Nat) :
    we + get + arithmetic + definition + small + remainder + rule + shifted =
      we + get + arithmetic + definition + small + remainder + rule + shifted := rfl

open scoped ECDSAAdd.ProofLanguage

-- Soft keywords remain available as ordinary mathematical names inside the scope.
example (small remainder rule shifted : Nat) :
    small + remainder + rule + shifted = small + remainder + rule + shifted := rfl

-- Several independent premises must be kept, even when their generated names coincide.
example (a b c d : Nat) (hab : a < b) (hbc : b < c) (hcd : c < d) : a < d := Proof
  From [hab, hbc, hcd] by arithmetic we get bound : a < d
  From [bound] we conclude a < d

example (a b : Nat) (h : a < b) : a ≤ b := Proof
  From [Nat.le_of_lt h] by arithmetic we get bound : a ≤ b
  From [bound] we conclude a ≤ b

example (n : Nat) : n < n + 1 := Proof
  From [] by arithmetic we get bound : n < n + 1
  From [bound] we conclude n < n + 1

example (n : Int) : n < n + 1 := Proof
  From [] by arithmetic we get bound : n < n + 1
  From [bound] we conclude n < n + 1

example (n q : Nat) (h : n < q) : n % q = n := Proof
  By the small remainder rule using h we get remainder : n % q = n
  From [remainder] we conclude n % q = n

example (n r q : Nat) (hs : n = r + q) (hr : r < q) : n % q = r := Proof
  By the shifted remainder rule using hs, hr we get remainder : n % q = r
  From [remainder] we conclude n % q = r

-- Case assumptions must have opposite signs, and remain local to their branches.
example (a b : Nat) : (if a < b then a else b) ≤ a := Proof
  We split on a < b
  Case below =>
    By definition [] using [below] we get chosen : (if a < b then a else b) = a
    From [chosen, Nat.le_refl a] we conclude (if a < b then a else b) ≤ a
  Otherwise notBelow =>
    By definition [] using [notBelow] we get chosen : (if a < b then a else b) = b
    From [notBelow] by arithmetic we get bound : b ≤ a
    From [chosen, bound] we conclude (if a < b then a else b) ≤ a

example (a b : Nat) : (if a < b then (if b < a then 1 else 2) else 2) = 2 := Proof
  We split on a < b
  Case below =>
    We split on b < a
    Case reverse =>
      From [below, reverse] by arithmetic we get impossible : False
      From [impossible] we conclude (if a < b then (if b < a then 1 else 2) else 2) = 2
    Otherwise notReverse =>
      By definition [] using [below, notReverse] we get chosen :
        (if a < b then (if b < a then 1 else 2) else 2) = 2
      From [chosen] we conclude (if a < b then (if b < a then 1 else 2) else 2) = 2
  Otherwise notBelow =>
    By definition [] using [notBelow] we get chosen :
      (if a < b then (if b < a then 1 else 2) else 2) = 2
    From [chosen] we conclude (if a < b then (if b < a then 1 else 2) else 2) = 2

-- Invalid steps must fail, including accidentally using an uncited assumption.
example (a b : Nat) (_hidden : a < b) : True := by
  fail_if_success
    From [] by arithmetic we get unjustified : a < b
  fail_if_success
    From [_hidden] by arithmetic we get reversed : b < a
  fail_if_success
    From [a] by arithmetic we get notEvidence : a ≤ a
  trivial

example (a b c : Nat) (_hab : a < b) (_hidden : b < c) : True := by
  fail_if_success
    From [_hab] by arithmetic we get unjustified : a < c
  trivial

example (n q : Nat) (_h : n < q) : True := by
  fail_if_success
    By the small remainder rule using _h we get wrong : n % q = n + 1
  trivial

example (n r q : Nat) (_hs : n = r + q) (_hr : r ≤ q) : True := by
  fail_if_success
    By the shifted remainder rule using _hs, _hr we get wrong : n % q = r
  trivial

example : True := by
  fail_if_success
    By definition [addResult] using [] we get wrong : addResult 1 2 7 = 4
  fail_if_success
    have _wrong : False := Proof
      From [] we conclude True
  fail_if_success
    have _wrong : False := Proof
      From [] we conclude False
  trivial

example (a b : Nat) (h : a < b) : a < b := by
  fail_if_success From [] we conclude a < b
  fail_if_success solve
    | clear h
      We split on a < b
      Case below =>
        From [below] we conclude a < b
      Otherwise notBelow =>
        From [notBelow] we conclude a < b
  exact h

example (_a _b : Nat) : True := by
  fail_if_success solve
    | We split on _a < _b
      Case below =>
        From [] we conclude True
      Otherwise notBelow =>
        From [] by arithmetic we get unused : _a ≤ _a
  trivial

-- Both public theorem types, including their precise range assumptions, are unchanged.
example (X Y q : Nat) (h : X + Y < 2 * q) :
    addResult X Y q = (X + Y) % q := addResult_correct X Y q h
example (X Y q : Nat) (hx : X < q) (hy : Y < q) :
    subResult X Y q = (X + q - Y) % q := subResult_correct X Y q hx hy
example : addResult 3 4 7 = 0 := by decide
example : addResult 6 6 7 = 5 := by decide
example : subResult 1 6 7 = 2 := by decide
example : subResult 6 1 7 = 5 := by decide
example : subResult 6 6 7 = 0 := by decide
example : addResult 0 0 1 = 0 ∧ subResult 0 0 1 = 0 := by decide

-- These counterexamples prevent silently weakening the assumptions or using
-- truncated Nat subtraction in the borrowing branch.
example : addResult 14 1 7 ≠ (14 + 1) % 7 := by decide
example : (1 - 6 : Nat) + 7 ≠ subResult 1 6 7 := by decide

-- Both branches are mandatory syntax, not an unchecked natural-language claim.
run_cmd do
  let env ← Lean.getEnv
  let valid := "Proof\n  From [] we conclude True"
  match Lean.Parser.runParserCategory env `term valid with
  | .ok _ => pure ()
  | .error msg => throwError "The controlled-English proof entry point must parse: {msg}"
  for invalid in [
      "Proof\n  We split on True\n  Case yes =>\n    From [] we conclude True",
      "Proof\n  Obviously the theorem is true"] do
    match Lean.Parser.runParserCategory env `term invalid with
    | .error _ => pure ()
    | .ok _ => throwError "Unsupported or incomplete proof syntax was accepted: {invalid}"
