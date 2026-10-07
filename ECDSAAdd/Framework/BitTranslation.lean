import ECDSAAdd.Framework.CertifiedTranslation

namespace ECDSAAdd.BitTranslation
open CertifiedTranslation Lean

/-- 位语句的独立语义：所有右侧按执行到该行时的状态读取。 -/
declare_syntax_cat bitExpr
syntax:max "MAJ" "(" term "," term "," term ")" : bitExpr
syntax:max "(" bitExpr ")" : bitExpr
syntax:60 bitExpr:60 " XOR " bitExpr:61 : bitExpr
syntax:max term:max : bitExpr

declare_syntax_cat bitStatement
syntax term:max " ^= " bitExpr ";" : bitStatement
syntax term:max " = " num ";" : bitStatement

private partial def value (st : Term) : TSyntax `bitExpr → MacroM Term
  | `(bitExpr| MAJ($a, $b, $c)) =>
      `((($st $a && $st $b) ^^ ($st $a && $st $c)) ^^ ($st $b && $st $c))
  | `(bitExpr| ($e:bitExpr)) => value st e
  | `(bitExpr| $a:bitExpr XOR $b:bitExpr) => do
      let x ← value st a
      let y ← value st b
      `($x ^^ $y)
  | `(bitExpr| $wire:term) => `($st $wire)
  | e => Macro.throwErrorAt e "Expected a wire, XOR, or MAJ."

syntax "bitCalculation" "{" bitStatement* "}" : term
macro_rules
  | `(bitCalculation { $body:bitStatement* }) => do
      let initial ← `(initial)
      let final ← `(final)
      let mut current := initial
      let mut targets : Array Term := #[]
      for statement in body do
        match statement with
        | `(bitStatement| $target:term ^= $rhs:bitExpr;) =>
          let rhs ← value current rhs
          current ← `(writeBit $current $target ($current $target ^^ $rhs))
          targets := targets.push target
        | `(bitStatement| $target:term = $n:num;) =>
          unless n.getNat ≤ 1 do Macro.throwErrorAt n "A bit literal must be 0 or 1."
          let v ← if n.getNat == 0 then `(false) else `(true)
          current ← `(writeBit $current $target $v)
          targets := targets.push target
        | _ => Macro.throwErrorAt statement "Unsupported bit statement."
      if targets.isEmpty then Macro.throwError "A bit calculation must write an output."
      let mut effect ← `(True)
      for target in targets.reverse do
        effect ← `($final $target = $current $target ∧ $effect)
      `(fun ($initial : BasisState) ($final : BasisState) => $effect)

/-- 证书验证所写位运算；合法调用的前提仍由外层规格证明。 -/
def program (effect : Effect) (circuit : Program) (_ : Certificate effect circuit) : Program :=
  circuit

@[simp] theorem program_eq (effect : Effect) (circuit : Program)
    (proof : Certificate effect circuit) : program effect circuit proof = circuit := rfl

syntax "bitChecked%" term "using" term "by" term : term
macro_rules
  | `(bitChecked% $effect using $circuit by $proof) =>
      `(program $effect $circuit (certificate_from% ($proof, $circuit, $effect)))

-- 这些是显式实现配方：参数来自源码，不查找默认实现，也不忽略 by。
syntax (priority := 12000) term:max " ^= " bitExpr "using" term "by" term ";" : circuitStmt
syntax (priority := 12000) term:max " = " num "using" term "by" term ";" : circuitStmt
syntax (priority := 12000) "{" bitStatement* "}" "using" term "by" term ";" : circuitStmt

-- Distinguish a standalone bit literal assignment from the register-level certified block.
syntax (name := bitClearBlock) (priority := 13000)
  "prog" "{" term:max " = " num "using" term "by" term ";" "}" : term
macro_rules (kind := bitClearBlock)
  | `(prog { $target:term = $n:num using $impl by $proof; }) =>
      `(bitChecked% (bitCalculation { $target:term = $n; })
          using ($impl $target) by ($proof $target))

macro_rules (kind := circuitBlock)
  | `(prog {
      $target:term ^= MAJ($a, $b, $c) using $impl by $proof;
      $rest:circuitStmt*
    }) =>
      `(circuitSeq% (bitChecked%
          (bitCalculation { $target:term ^= MAJ($a, $b, $c); })
          using ($impl $a $b $c $target) by ($proof $a $b $c $target)) { $rest* })
  | `(prog {
      $target:term ^= ($a:term XOR $b:term) using $impl by $proof;
      $rest:circuitStmt*
    }) =>
      `(circuitSeq% (bitChecked%
          (bitCalculation { $target:term ^= ($a:term XOR $b:term); })
          using ($impl $a $b $target) by ($proof $a $b $target)) { $rest* })
  | `(prog { $target:term = $n:num using $impl by $proof; $rest:circuitStmt* }) =>
      `(circuitSeq% (bitChecked%
          (bitCalculation { $target:term = $n; })
          using ($impl $target) by ($proof $target)) { $rest* })
  | `(prog {
      {
        $carry:term ^= MAJ($a, $b, $c);
        $out:term ^= ($x:term XOR $y:term XOR $z:term);
      } using $impl by $proof;
      $rest:circuitStmt*
    }) =>
      `(circuitSeq% (bitChecked%
          (bitCalculation {
            $carry:term ^= MAJ($a, $b, $c);
            $out:term ^= ($x:term XOR $y:term XOR $z:term);
          }) using ($impl $a $b $c $out $carry) by ($proof $a $b $c $out $carry)) { $rest* })

end ECDSAAdd.BitTranslation
