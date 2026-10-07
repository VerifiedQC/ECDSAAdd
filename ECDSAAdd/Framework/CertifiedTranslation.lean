import ECDSAAdd.Framework.Hoare

namespace ECDSAAdd.CertifiedTranslation

/-- 可读语句的数学关系；不查看或选择底层电路。 -/
abbrev Effect := BasisState → BasisState → Prop

/-- 对指定语义和指定门列的证书。前提及原证明的全部后置条件随证书保存。 -/
structure Certificate (effect : Effect) (circuit : Program) where
  requires : BasisState → Prop
  ensures : Effect
  correct : ∀ s m, requires s.basis →
    (run circuit m s).phase = s.phase ∧
    effect s.basis (run circuit m s).basis ∧ ensures s.basis (run circuit m s).basis

def Certificate.ofTriple {P Q : BasisState → Prop} {circuit : Program}
    (effect : Effect) (proof : Triple P circuit Q)
    (meaning : ∀ s t, P s → Q t → effect s t) : Certificate effect circuit where
  requires := P
  ensures := fun _ t => Q t
  correct := by
    intro s m hp
    obtain ⟨phase, post⟩ := proof s m hp
    exact ⟨phase, meaning s.basis _ hp post, post⟩

/-- 以见证形式保留规格参数/假设；是否存在见证仍是调用方的证明义务。 -/
def Certificate.abstract {α : Sort u} {effect : Effect} {circuit : Program}
    (family : α → Certificate effect circuit) : Certificate effect circuit where
  requires := fun s => ∃ a, (family a).requires s
  ensures := fun s t => ∀ a, (family a).requires s → (family a).ensures s t
  correct := by
    intro s m hp
    obtain ⟨a, ha⟩ := hp
    have result := (family a).correct s m ha
    exact ⟨result.1, result.2.1, fun b hb => ((family b).correct s m hb).2.2⟩

/-- 新入口保留规格、前提、证明及实际电路；不是只返回一段带注释的门列。 -/
structure CheckedProgram where
  effect : Effect
  circuit : Program
  certificate : Certificate effect circuit

/-- A checked statement can be used in an existing Program; its call conditions remain proof obligations. -/
instance : Coe CheckedProgram Program := ⟨CheckedProgram.circuit⟩

def CheckedProgram.requires (p : CheckedProgram) := p.certificate.requires
def CheckedProgram.ensures (p : CheckedProgram) := p.certificate.ensures

theorem CheckedProgram.correct (p : CheckedProgram) (s : State) (m : List Bool)
    (h : p.requires s.basis) :
    (run p.circuit m s).phase = s.phase ∧
    p.effect s.basis (run p.circuit m s).basis ∧
    p.ensures s.basis (run p.circuit m s).basis := p.certificate.correct s m h

open Lean Meta Elab Term

/-- 验证已有 Hoare 定理与源语义的连接；没有实现名称查找或默认配置。 -/
syntax "certificate_from%" "(" term "," term "," term ")" : term

elab_rules : term
  | `(certificate_from% ($proof, $circuit, $meaning)) => do
    let effect ← elabTermEnsuringType meaning (mkConst ``Effect)
    let code ← elabTermEnsuringType circuit (mkConst ``Program)
    let theoremProof ← elabTerm proof none
    -- Indexed wires may leave pending getElem bound proofs; resolve them before checking the bridge.
    synthesizeSyntheticMVarsNoPostponing
    let theoremType ← instantiateMVars (← inferType theoremProof)
    forallTelescope theoremType fun parameters resultType => do
      let resultType ← instantiateMVars resultType
      unless resultType.isAppOfArity ``Triple 3 do
        throwErrorAt proof "Expected a theorem ending in Triple; keep its range/layout hypotheses unapplied."
      let args := resultType.getAppArgs
      unless ← isDefEq args[1]! code do
        throwErrorAt circuit "The supplied theorem proves a different circuit."
      let applied := mkAppN theoremProof parameters
      let bridgeType ← withLocalDeclD `initial (mkConst ``BasisState) fun s =>
        withLocalDeclD `final (mkConst ``BasisState) fun t => do
          let body ← mkArrow (mkApp args[0]! s) (← mkArrow (mkApp args[2]! t) (mkApp2 effect s t))
          mkForallFVars #[s, t] body
      let bridgeGoal ← mkFreshExprSyntheticOpaqueMVar bridgeType
      let remaining ← withoutErrToSorry <| Tactic.run bridgeGoal.mvarId! <| Tactic.withoutRecover do
        Tactic.evalTactic (← `(tactic|
          (intro initial final before after
           first
           | solve | simpa only [before] using after
           | solve | simpa only [before] using after.1
           | solve |
               simp_all only [Holds.holds, Nat.mod_eq_of_lt, Nat.mod_mod, Nat.add_mod_mod]
               all_goals first | assumption | omega | aesop
           | solve |
               simp_all [Holds.holds, writeBit, Function.update, List.nodup_cons,
                 List.mem_cons, Ne.symm]
               all_goals aesop)))
      unless remaining.isEmpty do
        throwErrorAt proof "The theorem does not establish the source computation."
      let bridge ← instantiateMVars bridgeGoal
      if bridge.hasMVar || bridge.hasSorry then
        throwErrorAt proof "The source-to-theorem bridge must be a complete Lean proof."
      let mut cert ← mkAppM ``Certificate.ofTriple #[effect, applied, bridge]
      for parameter in parameters.reverse do
        cert ← mkAppM ``Certificate.abstract #[← mkLambdaFVars #[parameter] cert]
      return cert

/-- 语句先给出数学关系；整个块只发出 using 指定的一份电路。 -/
syntax "checked " term " using " term " by " term : term
macro_rules
  | `(checked $effect using $circuit by $proof) =>
    `(({ effect := $effect, circuit := $circuit,
         certificate := certificate_from% ($proof, $circuit, $effect) } : CheckedProgram))

declare_syntax_cat certExpr
syntax:max (priority := high) &"const" "(" term ")" : certExpr
syntax:max (priority := high) ident "(" certExpr ")" : certExpr
syntax:max (priority := high) "(" certExpr ")" : certExpr
syntax:max (priority := high) "if " term:max " then " certExpr " else " certExpr : certExpr
syntax:65 certExpr:65 " + " certExpr:66 : certExpr
syntax:65 certExpr:65 " - " certExpr:66 : certExpr
syntax:70 certExpr:70 " * " certExpr:71 : certExpr
syntax:70 certExpr:70 " / " "const" "(" term ")" : certExpr
syntax:70 certExpr:70 " / " certExpr:71 : certExpr
syntax:60 certExpr:61 " mod " term:61 : certExpr
syntax:max (priority := low) term:max : certExpr

declare_syntax_cat certCondition
syntax term:max : certCondition
syntax (priority := high) "(" certCondition " XOR " num ")" : certCondition
syntax:35 certCondition:36 " AND " certCondition:35 : certCondition

declare_syntax_cat certStatement
syntax term:max " = " certExpr ";" : certStatement
syntax term:max " ^= " certExpr ";" : certStatement
syntax "let " ident " := " certExpr " < " certExpr ";" : certStatement
syntax "let " ident " := " certExpr ";" : certStatement
syntax "if " certCondition " {" certStatement* "}" ";" : certStatement

private abbrev Values := Array (Syntax × Term)

private partial def key (s : Syntax) : Syntax :=
  if let `(term| ($inner)) := s then key inner else
    match s with
    | .ident _ _ name _ => mkIdent name
    | .atom _ value => mkAtom value
    | .node _ kind args => .node .none kind (args.map key)
    | .missing => .missing

private def lookup (values : Values) (name : Syntax) : Option Term :=
  (values.find? fun entry => key entry.1 == key name).map Prod.snd

private def put (values : Values) (name : Syntax) (value : Term) : Values :=
  if values.any (fun entry => key entry.1 == key name) then
    values.map fun entry => if key entry.1 == key name then (name, value) else entry
  else values.push (name, value)

mutual
private partial def fieldExpression (initial : Term) (values : Values) (q : Term) :
    TSyntax `certExpr → MacroM Term
  | `(certExpr| ($e:certExpr)) => fieldExpression initial values q e
  | `(certExpr| $a:certExpr + $b:certExpr) => do
      let x ← fieldExpression initial values q a; let y ← fieldExpression initial values q b
      `($x + $y)
  | `(certExpr| $a:certExpr - $b:certExpr) => do
      let x ← fieldExpression initial values q a; let y ← fieldExpression initial values q b
      `($x - $y)
  | `(certExpr| $a:certExpr * $b:certExpr) => do
      let x ← fieldExpression initial values q a; let y ← fieldExpression initial values q b
      `($x * $y)
  | `(certExpr| $a:certExpr / $b:certExpr) => do
      let x ← fieldExpression initial values q a; let y ← fieldExpression initial values q b
      `($x / $y)
  | e => do
      let value ← expression initial values e
      `(($value : ZMod $q))

private partial def expression (initial : Term) (values : Values) : TSyntax `certExpr → MacroM Term
  | `(certExpr| const($value)) => `(($value : Nat))
  | `(certExpr| if $control:term then $yes:certExpr else $no:certExpr) => do
      let yes ← expression initial values yes
      let no ← expression initial values no
      `(if $initial $control then $yes else $no)
  | `(certExpr| ($e:certExpr)) => expression initial values e
  | `(certExpr| $a:certExpr + $b:certExpr) => do
      let x ← expression initial values a; let y ← expression initial values b
      `($x + $y)
  | `(certExpr| $a:certExpr * $b:certExpr) => do
      let x ← expression initial values a; let y ← expression initial values b
      `($x * $y)
  | `(certExpr| $a:certExpr / const($b:term)) => do
      let x ← expression initial values a
      `($x / ($b : Nat))
  | `(certExpr| $a:certExpr mod $q:term) => do
      let rec strip (e : TSyntax `certExpr) : TSyntax `certExpr :=
        match e with
        | `(certExpr| ($inner:certExpr)) => strip inner
        | _ => e
      match strip a with
      | `(certExpr| $function:ident($x:certExpr)) =>
          if function.getId == `field then
            let x ← fieldExpression initial values q x
            `(($x).val)
          else if function.getId == `inverse then
            let x ← expression initial values x
            `((($x : ZMod $q)⁻¹).val)
          else Macro.throwErrorAt function "Expected field(...) or inverse(...)."
      | `(certExpr| $x:certExpr - $y:certExpr) =>
          let x ← expression initial values x; let y ← expression initial values y
          `(($x + $q - ($y % $q)) % $q)
      | a =>
          let x ← expression initial values a
          `($x % $q)
  | `(certExpr| $r:term) =>
      match lookup values r with
      | some v => pure v
      | none => `(regValue $r $initial)
  | e => Macro.throwErrorAt e "Subtraction and inverse require an explicit modulus; register reads are not Nat's saturating subtraction."
end

private partial def condition (initial : Term) (conditions : Values) :
    TSyntax `certCondition → MacroM Term
  | `(certCondition| $a:certCondition AND $b:certCondition) => do
      let a ← condition initial conditions a
      let b ← condition initial conditions b
      `($a && $b)
  | `(certCondition| ($c:certCondition XOR $one:num)) => do
      unless one.getNat == 1 do Macro.throwErrorAt one "Only XOR 1 is a complemented control."
      let c ← condition initial conditions c
      `(!$c)
  | `(certCondition| $wire:term) =>
      match lookup conditions wire with
      | some value => pure value
      | none => `($initial $wire)
  | c => Macro.throwErrorAt c "Unsupported control condition"

private partial def statements (initial : Term) (values conditions locals : Values)
    (source : Array (TSyntax `certStatement)) : MacroM (Values × Values) := do
  let mut values := values
  let mut conditions := conditions
  let mut locals := locals
  for statement in source do
    match statement with
    | `(certStatement| $target:term = $rhs:certExpr;) =>
        values := put values target (← expression initial (values ++ locals) rhs)
    | `(certStatement| $target:term ^= $rhs:certExpr;) =>
        let old ← match lookup values target with
          | some v => pure v
          | none => `(regValue $target $initial)
        let rhs ← expression initial (values ++ locals) rhs
        values := put values target (← `($old ^^^ $rhs))
    | `(certStatement| let $name:ident := $a:certExpr < $b:certExpr;) =>
        if (lookup (values ++ locals ++ conditions) name).isSome then
          Macro.throwErrorAt name "Use a fresh name for a mathematical snapshot."
        let a ← expression initial (values ++ locals) a; let b ← expression initial (values ++ locals) b
        conditions := put conditions name (← `(decide ($a < $b)))
    | `(certStatement| let $name:ident := $rhs:certExpr;) =>
        if (lookup (values ++ locals ++ conditions) name).isSome then
          Macro.throwErrorAt name "Use a fresh name for a mathematical snapshot."
        locals := put locals name (← expression initial (values ++ locals) rhs)
    | `(certStatement| if $c:certCondition { $body:certStatement* };) =>
        let c ← condition initial conditions c
        let (branch, _) ← statements initial values conditions locals body
        for (target, value) in branch do
          let old ← match lookup values target with
            | some v => pure v
            | none => `(regValue $(⟨target⟩) $initial)
          values := put values target (← `(if $c then $value else $old))
    | _ => Macro.throwErrorAt statement "Unsupported certified statement"
  return (values, conditions)

syntax "calculation" "{" certStatement* "}" : term
macro_rules
  | `(calculation { $body:certStatement* }) => do
      let initial ← `(initial)
      let final ← `(final)
      let (values, _) ← statements initial #[] #[] #[] body
      if values.isEmpty then Macro.throwError "A certified block must specify an output."
      let mut result ← `(True)
      for (target, value) in values.reverse do
        let equality ← `(regValue $(⟨target⟩) $final = $value)
        result ← if result.raw == (← `(True)).raw then pure equality else `($equality ∧ $result)
      `(fun ($initial : BasisState) ($final : BasisState) => $result)

syntax "certified" "{" certStatement* "}" "using" term "by" term : term
macro_rules
  | `(certified { $body:certStatement* } using $circuit by $proof) =>
      `(checked (calculation { $body:certStatement* }) using $circuit by $proof)

/-- 单句或整个共享块的显式认证；块内语句只描述数学计算，不分别生成电路。 -/
syntax (name := certifiedProgAssign) (priority := 12000) "prog" "{" term:max " = " certExpr
  "using" term "by" term ";" "}" : term
syntax (name := certifiedProgXor) (priority := 12000) "prog" "{" term:max " ^= " certExpr
  "using" term "by" term ";" "}" : term
syntax (name := certifiedProgShared) (priority := 12000) "prog" "{" "{" certStatement* "}"
  "using" term "by" term ";" "}" : term
syntax (name := certifiedProgControl) (priority := 12000) "prog" "{"
  "if " certCondition " {" certStatement* "}" "using" term "by" term ";" "}" : term

macro_rules
  | `(prog { $target:term = $rhs:certExpr using $circuit by $proof; }) =>
      `(certified { $target:term = $rhs:certExpr; } using $circuit by $proof)
  | `(prog { $target:term ^= $rhs:certExpr using $circuit by $proof; }) =>
      `(certified { $target:term ^= $rhs:certExpr; } using $circuit by $proof)
  | `(prog { { $body:certStatement* } using $circuit by $proof; }) =>
      `(certified { $body:certStatement* } using $circuit by $proof)
  | `(prog { if $c:certCondition { $body:certStatement* } using $circuit by $proof; }) =>
      `(certified { if $c:certCondition { $body:certStatement* }; } using $circuit by $proof)

-- The same checked statements inside a larger Program, including loops and local aliases.
syntax (priority := 11000) term:max " = " certExpr "using" term "by" term ";" : circuitStmt
syntax (priority := 11000) term:max " ^= " certExpr "using" term "by" term ";" : circuitStmt
syntax (priority := 11000) "{" certStatement* "}" "using" term "by" term ";" : circuitStmt
syntax (priority := 11000) "if " certCondition " {" certStatement* "}"
  "using" term "by" term ";" : circuitStmt
syntax (priority := 11500) "with " ident " := " certExpr " {" circuitStmt* "}"
  "using" term "by" "(" term "," term ")" ";" : circuitStmt
syntax (priority := 12500) "with " ident " := " &"isZero" "(" term ")"
  " {" circuitStmt* "}" "using" term "by" "(" term "," term ")" ";" : circuitStmt

macro_rules (kind := circuitBlock)
  | `(prog { with $name:ident := isZero($input:term) { $body:circuitStmt* }
        using $recipe by ($prepare, $restore); $rest:circuitStmt* }) =>
      `(let $name := ($recipe : CircuitDSL.Computed Wire).value
        circuitSeq%
          ((checked (fun initial final => final $name = decide (regValue $input initial = 0))
              using ($recipe : CircuitDSL.Computed Wire).prepare by $prepare).circuit ++
            (prog { $body* }) ++
            (checked (fun _initial final => final $name = false)
              using ($recipe : CircuitDSL.Computed Wire).restore by $restore).circuit)
          { $rest* })
  | `(prog { with $name:ident := $rhs:certExpr { $body:circuitStmt* }
        using $recipe by ($prepare, $restore); $rest:circuitStmt* }) =>
      `(let $name := ($recipe : CircuitDSL.Computed (List Wire)).value
        circuitSeq%
          ((certified { $name:term = $rhs:certExpr; }
              using ($recipe : CircuitDSL.Computed (List Wire)).prepare by $prepare).circuit ++
            (prog { $body* }) ++
            (certified { $name:term = const(0); }
              using ($recipe : CircuitDSL.Computed (List Wire)).restore by $restore).circuit)
          { $rest* })
  | `(prog { $target:term = $rhs:certExpr using $code by $proof; $rest:circuitStmt* }) =>
      `(circuitSeq% ((certified { $target:term = $rhs:certExpr; } using $code by $proof).circuit)
        { $rest* })
  | `(prog { $target:term ^= $rhs:certExpr using $code by $proof; $rest:circuitStmt* }) =>
      `(circuitSeq% ((certified { $target:term ^= $rhs:certExpr; } using $code by $proof).circuit)
        { $rest* })
  | `(prog { { $body:certStatement* } using $code by $proof; $rest:circuitStmt* }) =>
      `(circuitSeq% ((certified { $body:certStatement* } using $code by $proof).circuit) { $rest* })
  | `(prog { if $c:certCondition { $body:certStatement* } using $code by $proof; $rest:circuitStmt* }) =>
      `(circuitSeq% ((certified { if $c:certCondition { $body:certStatement* }; }
        using $code by $proof).circuit) { $rest* })

end ECDSAAdd.CertifiedTranslation
