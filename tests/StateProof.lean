import ECDSAAdd

open ECDSAAdd
open scoped ECDSAAdd.ProofLanguage

example (For every assuming as : Nat) : For + every + assuming + as =
    For + every + assuming + as := rfl

-- Named claims carry actual proofs, not unchecked annotations.
example (a b c : Nat) (hab : a = b) (hbc : b = c) : a = c := Proof
  { a = b } as firstEquality by hab;
  { b = c } as secondEquality by hbc;
  conclude { a = c } by (firstEquality.trans secondEquality);

example (a b : Prop) (ha : a) (hb : b) : a ∧ b := Proof
  { a } as leftFact by ha;
  { b } as rightFact by hb;
  conclude { a ∧ b } using [leftFact, rightFact];

-- Each general branch can itself start with a proved proposition.
example (P : Prop) [Decidable P] : P ∨ ¬P := Proof
  We split on P
  Case yes =>
    { P } as positive by yes;
    conclude { P ∨ ¬P } by (Or.inl positive);
  Otherwise no =>
    { ¬P } as negative by no;
    conclude { P ∨ ¬P } by (Or.inr negative);

-- The same notation proves real Hoare triples, retaining arbitrary phase and
-- measurement records. No circuit-specific proof is built into the grammar.
example (P Q R : BasisState → Prop) (c d : Program)
    (hc : Triple P c Q) (hd : Triple Q d R) : Triple P (c ++ d) R := Proof
  { Triple P c Q } as firstStage by hc;
  { Triple Q d R } as secondStage by hd;
  conclude { Triple P (c ++ d) R } by (firstStage.seq secondStage);

example (P : BasisState → Prop) : Triple P [] P := Proof
  For every s, m assuming initial
  { (run [] m s).phase = s.phase } as phase by rfl;
  { P (run [] m s).basis } as postcondition by initial;
  conclude { (run [] m s).phase = s.phase ∧ P (run [] m s).basis }
    by ⟨phase, postcondition⟩;

example : True := by
  fail_if_success
    skip
    { False } as invalid by True.intro;
  fail_if_success
    conclude { False } by True.intro;
  trivial

/-- error: unsolved goals
⊢ False -/
#guard_msgs in
example : True := Proof
  { False } as unfinished by (by skip);
  conclude { True } by True.intro;

/-- error: unsolved goals
⊢ True -/
#guard_msgs in
example : True := Proof
  conclude { True } by (by skip);

example (P : Prop) (hidden : P) : P := by
  fail_if_success
    conclude { P } using [True.intro];
  exact hidden

example (P : Prop) (hP : P) : P := by
  fail_if_success
    conclude { True } by True.intro;
  exact hP

-- A basis-only postcondition is not a circuit Triple: the phase is required too.
example (P Q : BasisState → Prop) (c : Program)
    (_basisOnly : ∀ s m, P s.basis → Q (run c m s).basis) : True := by
  fail_if_success
    skip
    { Triple P c Q } as missingPhase by _basisOnly;
  trivial

open ECDSAAdd.Arithmetic.ModReductionAlgorithm

example (X Y q : Nat) (hX : X < q) (hY : Y < q) :
    subResult X Y q = (X+q-Y)%q := Proof
  if (X < Y) {
    { (X+q-Y)%q = X+q-Y } by the small remainder rule using [hX, hY];
    { subResult X Y q = X+q-Y } by definition;
    conclude { subResult X Y q = (X+q-Y)%q };
  } else {
    { (X+q-Y)%q = X-Y }
      by the shifted remainder rule using [hX] and the branch condition;
    { subResult X Y q = X-Y } by definition;
    conclude { subResult X Y q = (X+q-Y)%q };
  }

example (X _Y q : Nat) (_hidden : X < q) : True := by
  fail_if_success
    if (X < _Y) { conclude { True }; } else {
      { (X+q-_Y)%q = X-_Y }
        by the shifted remainder rule using [True.intro] and the branch condition;
      conclude { True };
    }
  fail_if_success
    if (X < _Y) {
      { (X+q-_Y)%q = X+q-_Y } by the small remainder rule using [(0 : Nat)];
      conclude { True };
    } else { conclude { True }; }
  trivial
