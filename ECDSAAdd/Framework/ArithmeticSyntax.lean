import ECDSAAdd.Framework.ArithmeticCompiler

namespace ECDSAAdd.ArithmeticLanguage
open Lean

/-- 高层源代码和编译配置分开保存；Request 本身尚不是通过前置条件检查的电路。 -/
structure Request (n : Nat) where
  config : Config n
  code : Code n

def Request.compile {n : Nat} (request : Request n) : Except String (Lowering request.code) :=
  ArithmeticLanguage.compile request.config request.code

declare_syntax_cat arithmeticStmt
syntax ident " = " "(" ident " + " ident ")" " mod " term:max ";" : arithmeticStmt
syntax ident " = " "(" ident " + " ident ")" " mod " term:max
  " using " ident ";" : arithmeticStmt
syntax (priority := low) term ";" : arithmeticStmt
scoped syntax "arith" "{" arithmeticStmt* "}" : term
scoped syntax "arith" " using " term:max "{" arithmeticStmt* "}" : term

private def statement (st : TSyntax `arithmeticStmt) : MacroM (TSyntax `term) := do
  let make (target source previous : TSyntax `ident) (q : TSyntax `term)
      (choice : Option (TSyntax `ident)) : MacroM (TSyntax `term) := do
    unless target.getId == previous.getId do
      Macro.throwErrorAt previous "原地模加必须写成 y = (x + y) mod q；右侧第二项必须是目标寄存器"
    let selected ← match choice with
      | none => `(none)
      | some name => `(some $(quote name.getId.toString))
    `(Statement.mk (ModAdd.mk $source $target $q) $selected)
  match st with
  | `(arithmeticStmt| $y:ident = ($x:ident + $old:ident) mod $q:term using $impl:ident;) =>
    make y x old q (some impl)
  | `(arithmeticStmt| $y:ident = ($x:ident + $old:ident) mod $q:term;) =>
    make y x old q none
  | _ => Macro.throwErrorAt st "当前 arith 只支持 y = (x + y) mod q [using 实现名]；普通覆盖赋值、循环和量子控制尚未接入"

macro_rules
  | `(arith { $stmts:arithmeticStmt* }) => do
    let steps ← stmts.mapM statement
    `(([$steps,*] : Code _))
  | `(arith using $config:term { $stmts:arithmeticStmt* }) =>
    `(Request.mk $config (arith { $stmts* }))

end ECDSAAdd.ArithmeticLanguage
