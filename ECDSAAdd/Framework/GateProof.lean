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

/-- A local assertion transition, together with valid wiring, gives a Hoare triple.
The gate certificate supplies phase preservation for every measurement record. -/
theorem Plan.toTriple (plan : Plan) {P Q : BasisState → Prop}
    (step : plan.requires ∧ ∀ st, P st → Q (plan.model st)) :
    Triple P plan.circuit Q := by
  intro s m initial
  rw [plan.correct step.1]
  exact ⟨rfl, step.2 s.basis initial⟩

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

-- A decorated Hoare derivation. Assertions are proved, not assumed, and the
-- resulting gate list must match the program in the expected Triple type.
declare_syntax_cat gateHoareLink
syntax gateProofStmt "{" term,+ "}" "by" term ";" : gateHoareLink
scoped syntax "hoare_steps" "{" "{" term,+ "}" ";" gateHoareLink+ "}" : term

private def gateAssertion (claims : Array Term) : MacroM Term := do
  let st := mkIdent (← withFreshMacroScope (Macro.addMacroScope `st))
  let claims ← claims.mapM fun claim => do
    match claim with
    | `($wire = $value) => `(Holds.holds $st $wire $value)
    | _ => Macro.throwErrorAt claim "Expected a wire = value assertion."
  let body ← claims[1:].foldlM (fun acc claim => `($acc ∧ $claim)) claims[0]!
  `(fun $st : BasisState => $body)

private def gateHoareChain (pre : Term) (links : List (TSyntax `gateHoareLink)) :
    MacroM Term := do
  match links with
  | [] => Macro.throwError "Expected at least one gate and its proved postcondition."
  | link :: rest =>
    match link with
    | `(gateHoareLink| $statement:gateProofStmt { $claims,* } by $proof;) =>
      let post ← gateAssertion claims.getElems
      let step ← `((gatePlan% { $statement }).toTriple (P := $pre) (Q := $post) $proof)
      if rest.isEmpty then return step
      let tail ← gateHoareChain post rest
      `(Triple.seq $step $tail)
    | _ => Macro.throwErrorAt link "Expected a gate and a proved postcondition."

macro_rules
  | `(hoare_steps { { $claims,* }; $links:gateHoareLink* }) => do
    gateHoareChain (← gateAssertion claims.getElems) links.toList

/-- Discharge one local transition from the displayed input assertions only.
Additional facts can supply wiring conditions and explicit Boolean calculations. -/
scoped syntax "gate_step" "[" term,* "]" : tactic
macro_rules
  | `(tactic| gate_step [$facts,*]) => do
    let wiring := facts.getElems ++ #[← `(Plan.seq), ← `(Plan.step), ← `(Plan.empty),
      ← `(Control.Valid), ← `(List.nodup_cons), ← `(List.mem_cons)]
    let transition := facts.getElems ++ #[← `(Plan.seq), ← `(Plan.step), ← `(Plan.empty),
      ← `(flipIf_eq_xor), ← `(Control.read), ← `(Holds.holds), ← `(writeBit), ← `(Ne.symm)]
    let wiring ← wiring.mapM fun fact => `(Lean.Parser.Tactic.simpLemma| $fact:term)
    let transition ← transition.mapM fun fact => `(Lean.Parser.Tactic.simpLemma| $fact:term)
    `(tactic|
      (constructor
       · simp_all [$wiring,*]
       · intro st initial
         simp_all [$transition,*]))

-- In a proof, an unannotated primitive command denotes exactly CX or CCX.
-- This is not an implementation search: the resulting gate list is checked
-- against the original program, and the existing gate certificates are reused.
declare_syntax_cat hoareCommand
syntax "if " term:max " {" term:max " ^= " num ";" "}" ";" : hoareCommand
syntax "if " term:max " AND " term:max " {" term:max " ^= " num ";" "}" ";" : hoareCommand
declare_syntax_cat namedHoareLink
syntax atomic(ident &"command" "{") hoareCommand "}"
  &"get" "{" term,+ "}" "by" tactic ";" : namedHoareLink
scoped syntax "hoare_steps" "{" &"Precondition" "{" term,+ "}" ";"
  namedHoareLink+ &"Conclusion" "{" term,+ "}" ";" "}" : term

private def certifiedCommand (command : TSyntax `hoareCommand) : MacroM (TSyntax `gateProofStmt) := do
  match command with
  | `(hoareCommand| if $c { $t ^= $n:num; };) =>
    `(gateProofStmt| if $c { $t ^= $n; } using Instr.CX by cx_correct;)
  | `(hoareCommand| if $a AND $b { $t ^= $n:num; };) =>
    `(gateProofStmt| if $a AND $b { $t ^= $n; } using Instr.CCX by ccx_correct;)
  | _ => Macro.throwErrorAt command "Expected a single- or double-controlled bit flip."

macro_rules
  | `(hoare_steps {
      Precondition { $initial,* };
      $links:namedHoareLink*
      Conclusion { $final,* };
    }) => do
    let pre ← gateAssertion initial.getElems
    let post ← gateAssertion final.getElems
    let steps ← links.mapM fun link => do
      match link with
      | `(namedHoareLink| $keyword:ident command { $command:hoareCommand }
          get { $claims,* } by $reason:tactic;) => do
        unless keyword.getId == `after do
          Macro.throwErrorAt keyword "Expected after command."
        let command ← certifiedCommand command
        `(gateHoareLink| $command:gateProofStmt { $claims,* } by (by $reason:tactic);)
      | _ => Macro.throwErrorAt link "Expected after command ... get ... by ... ."
    let chain ← gateHoareChain pre steps.toList
    -- Conclusion must match both the final get and the theorem's requested postcondition.
    `(show Triple $pre _ $post from $chain)

scoped syntax "cx_step" : tactic
scoped syntax "ccx_step" : tactic
macro_rules
  | `(tactic| cx_step) => `(tactic| gate_step [])
  | `(tactic| ccx_step) => `(tactic| gate_step [])

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
