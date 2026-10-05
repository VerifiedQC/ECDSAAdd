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

end ECDSAAdd.ProofLanguage
