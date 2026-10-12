import ECDSAAdd.Framework.Hoare

namespace ECDSAAdd.GateProof

/-- A coherent control condition, read in the state at the current statement. -/
inductive Control where
  | bit (wire : Wire)
  | both (left right : Wire)

def Control.read : Control → BasisState → Bool
  | .bit c, st => st c
  | .both a b, st => st a && st b

/-- Physical gate wiring requirements; constructing a plan does not discharge them. -/
def Control.Valid (control : Control) (target : Wire) : Prop :=
  match control with
  | .bit c => c ≠ target
  | .both a b => [a, b, target].Nodup

/-- Independent meaning of `if control { target ^= 1; }`; there is no measurement. -/
def flipIf (control : Control) (target : Wire) (st : BasisState) : BasisState :=
  if control.read st then writeBit st target (!st target) else st

theorem flipIf_eq_xor (control : Control) (target : Wire) (st : BasisState) :
    flipIf control target st = writeBit st target (st target ^^ control.read st) := by
  cases h : control.read st <;> simp [flipIf, h, writeBit]

/-- Full-state semantics: phase and every non-target wire are included. -/
theorem cx_correct (c t : Wire) (_valid : (Control.bit c).Valid t)
    (s : State) (m : List Bool) :
    run [.CX c t] m s = ⟨s.phase, flipIf (.bit c) t s.basis⟩ := by
  rw [flipIf_eq_xor]
  rfl

theorem ccx_correct (a b t : Wire) (_valid : (Control.both a b).Valid t)
    (s : State) (m : List Bool) :
    run [.CCX a b t] m s = ⟨s.phase, flipIf (.both a b) t s.basis⟩ := by
  rw [flipIf_eq_xor]
  rfl

/-- An implementation and its independent mathematical model, joined by a proof. -/
structure Plan where
  circuit : Program
  model : BasisState → BasisState
  requires : Prop
  correct : requires → ∀ s m, run circuit m s = ⟨s.phase, model s.basis⟩

def Plan.empty : Plan where
  circuit := []
  model := id
  requires := True
  correct := fun _ _ _ => rfl

def Plan.step (control : Control) (target : Wire) (circuit : Program)
    (proof : control.Valid target → ∀ s m,
      run circuit m s = ⟨s.phase, flipIf control target s.basis⟩) : Plan where
  circuit := circuit
  model := flipIf control target
  requires := control.Valid target
  correct := proof

/-- The second statement reads the first statement's result, not the initial state. -/
def Plan.seq (first second : Plan) : Plan where
  circuit := first.circuit ++ second.circuit
  model := fun st => second.model (first.model st)
  requires := first.requires ∧ second.requires
  correct := by
    intro valid s m
    calc
      run (first.circuit ++ second.circuit) m s =
          run second.circuit (m.drop (measurementCount first.circuit))
            ⟨s.phase, first.model s.basis⟩ := by
        rw [run_append, first.correct valid.1]
      _ = ⟨s.phase, second.model (first.model s.basis)⟩ :=
        second.correct valid.2 _ _

open Lean

/-- Extract only the executable gate list; the named Plan retains its model and proof.
Normalizing this projection keeps existing gate-level clients definitionally unchanged. -/
elab "gateCircuit% " plan:term : term => do
  let checked ← Elab.Term.elabTermEnsuringType plan (mkConst ``Plan)
  let circuit ← Meta.mkAppM ``Plan.circuit #[checked]
  Meta.reduce circuit

-- Keep this small grammar separate from register arithmetic: here `1` is a bit
-- literal, never a wire number, and both branches belong to coherent control.
declare_syntax_cat gateProofStmt
syntax "if " term:max " {" term:max " ^= " num ";" "}"
  "using" term "by" term ";" : gateProofStmt
syntax "if " term:max " AND " term:max " {" term:max " ^= " num ";" "}"
  "using" term "by" term ";" : gateProofStmt

syntax "gatePlan%" "{" gateProofStmt* "}" : term
macro_rules
  | `(gatePlan% {}) => `(Plan.empty)
  | `(gatePlan% {
      if $c:term { $t:term ^= $n:num; } using $impl by $proof;
      $rest:gateProofStmt*
    }) => do
      unless n.getNat == 1 do Macro.throwErrorAt n "A conditional flip must use the bit literal 1."
      `(Plan.seq (Plan.step (.bit $c) $t [$impl $c $t] ($proof $c $t))
        (gatePlan% { $rest* }))
  | `(gatePlan% {
      if $a:term AND $b:term { $t:term ^= $n:num; } using $impl by $proof;
      $rest:gateProofStmt*
    }) => do
      unless n.getNat == 1 do Macro.throwErrorAt n "A conditional flip must use the bit literal 1."
      `(Plan.seq (Plan.step (.both $a $b) $t [$impl $a $b $t] ($proof $a $b $t))
        (gatePlan% { $rest* }))

/-- One source generates the ordinary Program and a retained, compositional certificate.
This deliberately small entry point accepts one group of explicit parameters.
`name.translation` still requires a proof of all gate-wiring conditions. -/
scoped syntax (name := verifiedGateDef) (docComment)? "verified " "def " ident
  "(" ident+ " : " term ")" " : " term " := " "prog" "{" gateProofStmt* "}" : command

macro_rules
  | `($[$doc:docComment]? verified def $name:ident ($args:ident* : $ty:term)
      : $result:term := prog { $body:gateProofStmt* }) => do
      let checked := mkIdent (name.getId ++ `checked)
      let model := mkIdent (name.getId ++ `model)
      let requires := mkIdent (name.getId ++ `requires)
      let translation := mkIdent (name.getId ++ `translation)
      let arguments : Array Term := args.map fun arg => ⟨arg.raw⟩
      let certificate ← `(abbrev $checked ($args* : $ty) : Plan := gatePlan% { $body* })
      let circuit ← `($[$doc:docComment]? def $name ($args* : $ty) : $result :=
        gateCircuit% ($checked $arguments*))
      let semantics ← `(abbrev $model ($args* : $ty) : BasisState → BasisState :=
        ($checked $arguments*).model)
      let conditions ← `(abbrev $requires ($args* : $ty) : Prop :=
        ($checked $arguments*).requires)
      let soundness ← `(theorem $translation ($args* : $ty)
          (valid : $requires $arguments*) (s : State) (m : List Bool) :
          run ($name $arguments*) m s = ⟨s.phase, $model $arguments* s.basis⟩ :=
        ($checked $arguments*).correct valid s m)
      return mkNullNode #[certificate, circuit, semantics, conditions, soundness]

end ECDSAAdd.GateProof
