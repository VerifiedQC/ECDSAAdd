import ECDSAAdd

open ECDSAAdd.Arithmetic.ModReductionAlgorithm

-- The new vocabulary does not reserve names outside or inside its scope.
example (assert verify requires ensures unfolding : Nat) :
    assert + verify + requires + ensures + unfolding =
      assert + verify + requires + ensures + unfolding := rfl

open scoped ECDSAAdd.ProofLanguage

example (assert verify requires ensures unfolding : Nat) :
    assert + verify + requires + ensures + unfolding =
      assert + verify + requires + ensures + unfolding := rfl

private def nonpositive (x : Int) : Int := if x > 0 then -x else x

-- The user's example: else contains zero, so its condition is x ≤ 0, not x < 0.
example (x : Int) : nonpositive x ≤ 0 := Proof
  verify y := (nonpositive x) unfolding [nonpositive] {
    requires { True } by True.intro;
    ensures { y ≤ 0 };
    if (x > 0) {
      y := -x;
      assert { y = -x } by (Eq.refl _);
      assert { y < 0 };
      conclude by arithmetic;
    } else {
      assert { x ≤ 0 };
      y := x;
      assert { y ≤ 0 };
      conclude by arithmetic;
    }
  }

-- The same statement works with no intermediate assertions.
example (x : Int) : nonpositive x ≤ 0 := Proof
  verify y := (nonpositive x) unfolding [nonpositive] {
    requires { True } by True.intro;
    ensures { y ≤ 0 };
    if (x > 0) { y := -x; conclude by arithmetic; }
    else { y := x; conclude by arithmetic; }
  }

-- An output-independent postcondition still checks both displayed result expressions.
example (x : Int) : True := Proof
  verify y := (nonpositive x) unfolding [nonpositive] {
    requires { True } by True.intro;
    ensures { True };
    if (x > 0) { y := -x; conclude by arithmetic; }
    else { y := x; conclude by arithmetic; }
  }

example (X Y q : Nat) (h : X + Y < 2*q) :
    addResult X Y q = (X + Y) % q := addResult_correct X Y q h

example : addResult 2 3 7 = 5 := by decide
example : addResult 3 4 7 = 0 := by decide
example : addResult 6 6 7 = 5 := by decide
example : nonpositive 0 = 0 := by decide

-- A false assertion cannot be used as an assumption, even for an easy final goal.
example (_x : Int) : True := by
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) {
        assert { False };
        y := -_x;
        conclude by arithmetic;
      } else { y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { y := -_x; conclude by arithmetic; }
      else { assert { _x < 0 }; y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { y := -_x; assert { y > 0 } by (Eq.refl _); conclude by arithmetic; }
      else { y := _x; conclude by arithmetic; }
    }
  trivial

-- Wrong code is rejected even when the claimed postcondition would hold for it.
example (_x : Int) : True := by
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { y := 0; conclude by arithmetic; }
      else { y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { y := -_x; conclude by arithmetic; }
      else { y := 0; conclude by arithmetic; }
    }
  trivial

-- A hidden assumption is not silently added to requires; pre/post must really be justified.
example (_x : Int) (_hidden : _x > 0) : True := by
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { y := -_x; conclude by arithmetic; }
      else { assert { False }; y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { _x < 0 } by _hidden;
      ensures { True };
      if (_x > 0) { y := -_x; conclude by arithmetic; }
      else { y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { False };
      if (_x > 0) { y := -_x; conclude by arithmetic; }
      else { y := _x; conclude by arithmetic; }
    }
  trivial

example (_x : Int) : True := by
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { wrong := -_x; conclude by arithmetic; }
      else { y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { y := -_x; conclude by unchecked_rule; }
      else { y := _x; conclude by arithmetic; }
    }
  fail_if_success
    verify y := (nonpositive _x) unfolding [nonpositive] {
      requires { True } by True.intro;
      ensures { True };
      if (_x > 0) { assume { False }; y := -_x; conclude by arithmetic; }
      else { y := _x; conclude by arithmetic; }
    }
  trivial

-- Omitting else or a branch conclusion is not part of the language.
run_cmd do
  let env ← Lean.getEnv
  for invalid in [
      "verify r := (f x) unfolding [f] { requires { True } by True.intro; ensures { r ≤ 0 }; if (x > 0) { r := -x; conclude by arithmetic; } }",
      "verify r := (f x) unfolding [f] { requires { True } by True.intro; ensures { r ≤ 0 }; if (x > 0) { r := -x; } else { r := x; conclude by arithmetic; } }"] do
    match Lean.Parser.runParserCategory env `tactic invalid with
    | .error _ => pure ()
    | .ok _ => throwError "An incomplete branch proof was accepted: {invalid}"
