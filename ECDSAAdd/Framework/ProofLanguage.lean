import Mathlib.Data.Nat.ModEq
import Mathlib.Tactic.ClearExcept

/-! A small controlled-English proof vocabulary. Every sentence elaborates to a
Lean proof; this is not a natural-language interpreter or a new trusted checker.
Open the scope only where this notation is wanted. No circuit modules are imported. -/

namespace ECDSAAdd.ProofLanguage

/-- If a number is a small remainder plus one modulus, that is its remainder. -/
theorem shiftedRemainder {value remainder modulus : Nat}
    (decomposition : value = remainder + modulus) (small : remainder < modulus) :
    value % modulus = remainder := by
  rw [decomposition, Nat.add_mod_right, Nat.mod_eq_of_lt small]

open Lean

scoped syntax "Proof" ppLine Lean.Parser.Tactic.tacticSeq : term
scoped syntax "We " "split " "on " term ppLine
  "Case " ident " => " Lean.Parser.Tactic.tacticSeq ppLine
  "Otherwise " ident " => " Lean.Parser.Tactic.tacticSeq : tactic
scoped syntax "By " "definition " "[" term,* "]" " using " "[" term,* "]"
  " we " "get " ident " : " term : tactic
scoped syntax "From " "[" term,* "]" " by " "arithmetic "
  "we " "get " ident " : " term : tactic
scoped syntax "By " "the " &"small " &"remainder " &"rule " "using " term
  " we " "get " ident " : " term : tactic
scoped syntax "By " "the " &"shifted " &"remainder " &"rule " "using " term ", " term
  " we " "get " ident " : " term : tactic
scoped syntax "From " "[" term,* "]" " we " "conclude " term : tactic

macro_rules
  | `(Proof $body:tacticSeq) => `(by $body:tacticSeq)
  | `(tactic| We split on $condition:term
      Case $yes:ident => $positive:tacticSeq
      Otherwise $no:ident => $negative:tacticSeq) =>
    `(tactic| solve
      | by_cases $yes : $condition
        · $positive:tacticSeq
        · have $no : ¬ $condition := $yes
          clear $yes:ident
          ($negative:tacticSeq))
  | `(tactic| By definition [$definitions,*] using [$facts,*] we get $name:ident : $claim:term) => do
    let rules := #[← `(if_pos), ← `(if_neg), ← `(ite_true), ← `(ite_false)]
    let lemmas ← (definitions.getElems ++ facts.getElems ++ rules).mapM fun fact =>
      `(Lean.Parser.Tactic.simpLemma| $fact:term)
    `(tactic| have $name : $claim := by
                solve | simp only [$lemmas,*])
  | `(tactic| From [$facts,*] by arithmetic we get $name:ident : $claim:term) => do
    -- Name the cited facts before clearing unrelated hypotheses. Keep their
    -- dependencies and the variables of the claim, but no unrelated assumptions.
    let names ← facts.getElems.mapM fun _ => withFreshMacroScope (Lean.Macro.addMacroScope `cited)
    let ids := names.map mkIdent
    let premises ← (ids.zip facts.getElems).mapM fun (id, fact) =>
      `(tactic| have $id := (fun {p : Prop} (evidence : p) => evidence) $fact)
    `(tactic| have $name : $claim := by
                ($[$premises:tactic];*)
                clear * - $ids:ident*
                omega)
  | `(tactic| By the small remainder rule using $bound:term we get $name:ident : $claim:term) =>
    `(tactic| have $name : $claim := Nat.mod_eq_of_lt $bound)
  | `(tactic| By the shifted remainder rule using $parts:term, $bound:term
      we get $name:ident : $claim:term) =>
    `(tactic| have $name : $claim := shiftedRemainder $parts $bound)
  | `(tactic| From [$facts,*] we conclude $claim:term) => do
    let lemmas ← facts.getElems.mapM fun fact => `(Lean.Parser.Tactic.simpLemma| $fact:term)
    let evidence := facts.getElems.push (← `(False.elim))
    let reasons ← evidence.mapM fun fact => `(Lean.Parser.Tactic.SolveByElim.arg| $fact:term)
    `(tactic| (
      change $claim
      first
      | solve | solve_by_elim only [$reasons,*]
      | solve | simp only [$lemmas,*]))

/-- Assertions in a decorated branch are obligations, never additional assumptions. -/
declare_syntax_cat branchAssertion
syntax atomic(ident " {") term "}" ";" : branchAssertion
syntax atomic(ident " {") term "}" " by " term ";" : branchAssertion

declare_syntax_cat branchRule
scoped syntax "arithmetic" : branchRule
syntax ident : branchRule

/-- A two-branch proof of an actual pure expression. Each displayed result is
checked against its definition before proving the common postcondition. -/
scoped syntax &"verify" ident " := " term:max &"unfolding" "[" term,* "]" " {"
  &"requires" " {" term "}" " by " term ";"
  &"ensures" " {" term "}" ";"
  "if " "(" term ")" " {"
    branchAssertion* ident " := " term ";" branchAssertion*
    &"conclude" " by " branchRule ";" "}"
  "else " " {"
    branchAssertion* ident " := " term ";" branchAssertion*
    &"conclude" " by " branchRule ";" "}" "}" : tactic

open scoped ECDSAAdd.ProofLanguage

private def assertion (step : TSyntax `branchAssertion) : MacroM (TSyntax `tactic) := do
  let fact := mkIdent (← withFreshMacroScope (Macro.addMacroScope `assertion))
  match step with
  | `(branchAssertion| $keyword:ident { $claim:term };) => do
      unless keyword.getId == `assert do Macro.throwErrorAt keyword "Expected assert."
      `(tactic| have $fact : $claim := by solve | omega)
  | `(branchAssertion| $keyword:ident { $claim:term } by $proof:term;) => do
      unless keyword.getId == `assert do Macro.throwErrorAt keyword "Expected assert."
      `(tactic| have $fact : $claim := $proof)
  | _ => Macro.throwErrorAt step "Expected a checked assertion."

private def conclusion (rule : TSyntax `branchRule) : MacroM (TSyntax `tactic) := do
  match rule with
  | `(branchRule| arithmetic) => `(tactic| solve | omega)
  | `(branchRule| $name:ident) =>
      match name.getId with
      | `small_remainder => `(tactic| exact (Nat.mod_eq_of_lt (by omega)).symm)
      | `shifted_remainder => `(tactic| exact (shiftedRemainder (by omega) (by omega)).symm)
      | _ => Macro.throwErrorAt name "Expected small_remainder or shifted_remainder."
  | _ => Macro.throwErrorAt rule "Expected arithmetic, small_remainder, or shifted_remainder."

macro_rules
  | `(tactic| verify $result:ident := $actual:term unfolding [$definitions,*] {
      requires { $precondition:term } by $evidence:term;
      ensures { $postcondition:term };
      if ($condition:term) {
        $beforeYes:branchAssertion* $yesName:ident := $yesValue:term;
        $afterYes:branchAssertion* conclude by $yesRule:branchRule;
      } else {
        $beforeNo:branchAssertion* $noName:ident := $noValue:term;
        $afterNo:branchAssertion* conclude by $noRule:branchRule;
      }
    }) => do
      unless yesName.getId == result.getId && noName.getId == result.getId do
        Macro.throwError "Each branch must assign the declared result name."
      let requires := mkIdent (← Macro.addMacroScope `requires)
      let branch := mkIdent (← Macro.addMacroScope `branch)
      let selected := mkIdent (← Macro.addMacroScope `selected)
      let established := mkIdent (← Macro.addMacroScope `established)
      let yesBefore ← beforeYes.mapM assertion
      let yesAfter ← afterYes.mapM assertion
      let noBefore ← beforeNo.mapM assertion
      let noAfter ← afterNo.mapM assertion
      let yesFinish ← conclusion yesRule
      let noFinish ← conclusion noRule
      let rules := #[← `(if_pos), ← `(if_neg), ← `(ite_true), ← `(ite_false)]
      let facts ← (definitions.getElems.push branch ++ rules).mapM fun fact =>
        `(Lean.Parser.Tactic.simpLemma| $fact:term)
      `(tactic| solve
        | change (fun $result => $postcondition) $actual
          have $requires : $precondition := $evidence
          clear * - $requires:ident
          by_cases $branch : $condition
          · ($[$yesBefore:tactic];*)
            have $selected : $actual = $yesValue := by
              solve |
                simp +zetaDelta only [] at $branch:ident
                all_goals simp +zetaDelta only [$facts,*]
            let $result := $yesValue
            have $established : $postcondition := by
              ($[$yesAfter:tactic];*)
              $yesFinish:tactic
            exact Eq.mpr (congrArg (fun $result => $postcondition) $selected) $established
          · ($[$noBefore:tactic];*)
            have $selected : $actual = $noValue := by
              solve |
                simp +zetaDelta only [] at $branch:ident
                all_goals simp +zetaDelta only [$facts,*]
            let $result := $noValue
            have $established : $postcondition := by
              ($[$noAfter:tactic];*)
              $noFinish:tactic
            exact Eq.mpr (congrArg (fun $result => $postcondition) $selected) $established)

/-- Facts in a mathematical case proof are proved equalities, not assumptions. -/
declare_syntax_cat equationFact
scoped syntax "{" term "}" " by " &"the " &"small " &"remainder " &"rule" ";" : equationFact
scoped syntax "{" term "}" " by " &"definition" ";" : equationFact
scoped syntax "{" term "}" " by " &"one " &"subtraction " "using " term:max
  &"and " &"the " &"branch " &"condition" ";" : equationFact

/-- Each case proves explicit facts, then closes the original goal with them. -/
scoped syntax "if " "(" term ")" " {"
  equationFact* &"conclude" " {" term "}" ";" "}"
  "else " " {" equationFact* &"conclude" " {" term "}" ";" "}" : tactic

open scoped ECDSAAdd.ProofLanguage

-- Expose the actual function's left-hand side, without importing a circuit or
-- using its correctness theorem. Changing the goal is checked for definitional equality.
scoped elab "unfold_equation_left" : tactic =>
  Lean.Elab.Tactic.liftMetaTactic1 fun goal => goal.withContext do
    let target ← Lean.instantiateMVars (← goal.getType)
    let some (_, lhs, rhs) := target.eq?
      | throwError "The definition rule expects an equality."
    let lhs := (← Lean.Meta.unfoldDefinition? lhs (ignoreTransparency := true)).getD lhs
    goal.change (← Lean.Meta.mkEq lhs rhs)

private def equationStep (step : TSyntax `equationFact) (branch : Ident) :
    MacroM (Ident × TSyntax `tactic) := do
  let name := mkIdent (← withFreshMacroScope (Macro.addMacroScope `fact))
  let branchRule ← `(Lean.Parser.Tactic.simpLemma| $branch:term)
  let proof ← match step with
    | `(equationFact| { $claim:term } by the small remainder rule;) =>
      `(tactic| have $name : $claim := by
        clear * - $branch:ident
        exact Nat.mod_eq_of_lt (by omega))
    | `(equationFact| { $claim:term } by definition;) =>
      `(tactic| have $name : $claim := by
        clear * - $branch:ident
        unfold_equation_left
        solve |
          simp +zetaDelta only [] at $branch:ident
          all_goals simp +zetaDelta only [$branchRule, if_pos, if_neg, ite_true, ite_false])
    | `(equationFact| { $claim:term }
        by one subtraction using $evidence:term and the branch condition;) => do
      let cited := mkIdent (← Macro.addMacroScope `cited)
      `(tactic| have $name : $claim := by
        have $cited := (fun {p : Prop} (proof : p) => proof) $evidence
        clear * - $cited:ident $branch:ident
        exact shiftedRemainder (by omega) (by omega))
    | _ => Macro.throwErrorAt step "Expected a proved equation and its rule."
  return (name, proof)

private def equationCase (steps : Array (TSyntax `equationFact)) (branch : Ident)
    (claim : Term) : MacroM (TSyntax `tactic) := do
  let facts ← steps.mapM fun step => equationStep step branch
  let proofs := facts.map Prod.snd
  let rules ← facts.mapM fun (name, _) => `(Lean.Parser.Tactic.simpLemma| $name:term)
  `(tactic| solve
    | ($[$proofs:tactic];*)
      change $claim
      simp only [$rules,*])

macro_rules
  | `(tactic| if ($condition:term) {
      $positive:equationFact* conclude { $positiveGoal:term };
    } else {
      $negative:equationFact* conclude { $negativeGoal:term };
    }) => do
      let branch := mkIdent (← Macro.addMacroScope `branch)
      let yes ← equationCase positive branch positiveGoal
      let no ← equationCase negative branch negativeGoal
      `(tactic| solve
        | by_cases $branch : $condition
          · $yes:tactic
          · $no:tactic)

end ECDSAAdd.ProofLanguage
