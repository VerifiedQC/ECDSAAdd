import ECDSAAdd.Arithmetic.ModularAddition.ModularBackend

namespace ECDSAAdd.Arithmetic
open scoped CircuitDSL

/-- 源程序的两种约减算法；不是实现名或门列。 -/
inductive ReductionKind where
  | add | sub

namespace ReductionKind

def inputRange : ReductionKind → Nat → Nat → Nat → Prop
  | .add, X, Y, q => X+Y < 2*q
  | .sub, X, Y, q => X < q ∧ Y < q

def comparison : ReductionKind → Nat → Nat → Nat → Bool
  | .add, X, Y, q => decide (X+Y < q)
  | .sub, X, Y, _ => decide (X < Y)

def result : ReductionKind → Nat → Nat → Nat → Nat
  | .add => ModReductionAlgorithm.addResult
  | .sub => ModReductionAlgorithm.subResult

def prepared : ReductionKind → Nat → Nat → Nat → Nat → Nat → ModField → Nat
  | .add => ModReductionBackend.addPrepared
  | .sub => ModReductionBackend.subPrepared

/-- 候选、输入、输出初值、零进位链和真实借位线共同组成步骤接口。 -/
def Ready (k : ReductionKind) (L : ModLayout) (X Y O q : Nat) (st : BasisState) : Prop :=
  ModValues L (k.prepared L.width X Y O q) st ∧
    st L.high.diff = k.comparison X Y q

theorem ready (k : ReductionKind) (L : ModLayout) (X Y O q : Nat)
    (hq0 : 0 < q) (hq : q < 2^L.width) (hr : k.inputRange X Y q)
    (st : BasisState) (h : ModValues L (k.prepared L.width X Y O q) st) :
    k.Ready L X Y O q st := by
  refine ⟨h, ?_⟩
  have high := regValue_highBit (L.lowReg .diff) L.high.diff st
  have value : regValue (L.lowReg .diff ++ [L.high.diff]) st =
      k.prepared L.width X Y O q .diff := by
    simpa [ModLayout.reg, ModLayout.bits, ModLayout.lowReg] using h.1 .diff
  rw [value, show (L.lowReg .diff).length = L.width from List.length_map ..] at high
  have meaning : st L.high.diff = true ↔ k.comparison X Y q = true := by
    cases k with
    | add =>
      simpa [prepared, ModReductionBackend.addPrepared, comparison] using
        high.trans (addReduction_branches (X+Y) q L.width hq0 hq hr).1
    | sub =>
      simpa [prepared, ModReductionBackend.subPrepared, comparison] using
        high.trans (subReduction_branches X Y q L.width hq0 hq hr.1 hr.2).1
  exact Bool.eq_iff_iff.mpr meaning

end ReductionKind

/-- 实现只给出门列；正确性由调用处的 by 独立提供。 -/
structure ReductionPrepare where
  workspace : ModReductionWorkspace
  circuit : List Wire → List Wire → Nat → Program

/-- 类型索引把第二步绑定到第一步留下的同一工作区。 -/
structure ReductionFinish (workspace : ModReductionWorkspace) where
  circuit : List Wire → List Wire → List Wire → Nat → Program

def ReductionPrepare.Correct (k : ReductionKind) (impl : ReductionPrepare) : Prop :=
  ∀ (L : ModLayout), L.reductionWorkspace = impl.workspace → L.wires.Nodup →
  ∀ q, 0 < q → q < 2^L.width →
  ∀ X Y O, k.inputRange X Y q →
    Triple (ModValues L (ModValues.clean X Y O)) (impl.circuit L.x L.y q)
      (k.Ready L X Y O q)

def ReductionFinish.Correct (k : ReductionKind) {W : ModReductionWorkspace}
    (impl : ReductionFinish W) : Prop :=
  ∀ (L : ModLayout), L.reductionWorkspace = W → L.wires.Nodup →
  ∀ q, 0 < q → q < 2^L.width →
  ∀ X Y O, k.inputRange X Y q →
    Triple (k.Ready L X Y O q) (impl.circuit L.x L.y (L.lowReg .out) q)
      (ModValues L (ModValues.clean X Y (O ^^^ k.result X Y q)))

def ModAddPrepare (W : ModReductionWorkspace) : ReductionPrepare :=
  ⟨W, ModReductionBackend.addPrepare W⟩
def ModAddSelectAndClear (W : ModReductionWorkspace) : ReductionFinish W :=
  ⟨ModReductionBackend.addFinish W⟩
def ModSubPrepare (W : ModReductionWorkspace) : ReductionPrepare :=
  ⟨W, ModReductionBackend.subPrepare W⟩
def ModSubSelectAndClear (W : ModReductionWorkspace) : ReductionFinish W :=
  ⟨ModReductionBackend.subFinish W⟩

theorem modAddPrepare_correct {W : ModReductionWorkspace} :
    ReductionPrepare.Correct .add (ModAddPrepare W) := by
  intro L he hn q hq0 hq X Y O hr
  change L.reductionWorkspace = W at he
  subst W
  exact Triple.conseq (fun _ h => h)
    (ModReductionBackend.add_stages L hn q hq0 hq X Y O hr).1
    (fun st h => ReductionKind.ready .add L X Y O q hq0 hq hr st h)

theorem modSubPrepare_correct {W : ModReductionWorkspace} :
    ReductionPrepare.Correct .sub (ModSubPrepare W) := by
  intro L he hn q hq0 hq X Y O hr
  change L.reductionWorkspace = W at he
  subst W
  exact Triple.conseq (fun _ h => h)
    (ModReductionBackend.sub_stages L hn q hq0 hq X Y O hr.1 hr.2).1
    (fun st h => ReductionKind.ready .sub L X Y O q hq0 hq hr st h)

theorem modAddSelectAndClear_correct {W : ModReductionWorkspace} :
    ReductionFinish.Correct .add (ModAddSelectAndClear W) := by
  intro L he hn q hq0 hq X Y O hr
  subst W
  exact Triple.conseq (fun _ h => h.1)
    (ModReductionBackend.add_stages L hn q hq0 hq X Y O hr).2 (fun _ h => h)

theorem modSubSelectAndClear_correct {W : ModReductionWorkspace} :
    ReductionFinish.Correct .sub (ModSubSelectAndClear W) := by
  intro L he hn q hq0 hq X Y O hr
  subst W
  exact Triple.conseq (fun _ h => h.1)
    (ModReductionBackend.sub_stages L hn q hq0 hq X Y O hr.1 hr.2).2 (fun _ h => h)

/-- 两个证明必须匹配源码算法、各自实现和同一个 Ready 接口。 -/
def reductionProgram (k : ReductionKind) (x y out : List Wire) (q : Nat)
    (prepare : ReductionPrepare) (_ : prepare.Correct k)
    (finish : ReductionFinish prepare.workspace) (_ : finish.Correct k) : Program :=
  prepare.circuit x y q ++ finish.circuit x y out q

theorem reductionProgram_correct (k : ReductionKind)
    (prepare : ReductionPrepare) (hp : prepare.Correct k)
    (finish : ReductionFinish prepare.workspace) (hf : finish.Correct k)
    (L : ModLayout) (he : L.reductionWorkspace = prepare.workspace) (hn : L.wires.Nodup)
    (q : Nat) (hq0 : 0 < q) (hq : q < 2^L.width) (X Y O : Nat) (hr : k.inputRange X Y q) :
    Triple (ModValues L (ModValues.clean X Y O))
      (reductionProgram k L.x L.y (L.lowReg .out) q prepare hp finish hf)
      (ModValues L (ModValues.clean X Y (O ^^^ k.result X Y q))) :=
  (hp L he hn q hq0 hq X Y O hr).seq (hf L he hn q hq0 hq X Y O hr)

open Lean

syntax "let " ident " := " term:max " < " term:max " using " term " by " term ";" : circuitStmt
syntax "let " ident " := " "(" term:max " + " term:max ")" " < " "const" "(" term ")"
  "using" term "by" term ";" : circuitStmt
syntax "{" circuitStmt* "}" "using" term "by" term ";" : circuitStmt

private def sameOperand (actual expected : TSyntax `term) : MacroM Unit :=
  unless actual.raw == expected.raw do
    Macro.throwErrorAt actual "The annotated stages must use the same inputs, comparison, modulus and output."

-- 完整源码模板决定数学规格；using 仅提供实现，不决定源码是什么意思。
macro_rules (kind := circuitBlock)
  | `(prog {
      let $b:ident := ($x + $y) < const($q) using $prepare by $hp;
      {
        if ($b₀ XOR $one:num) { $out:term ^= (($x₀ + $y₀) - const($q₀)); };
        if $b₁ { $out₁:term ^= ($x₁ + $y₁); };
      } using $finish by $hf;
    }) => do
      unless one.getNat == 1 do Macro.throwErrorAt one "A complemented control uses XOR 1."
      let bt : TSyntax `term := ⟨b.raw⟩
      for (actual, expected) in [(b₀, bt), (b₁, bt), (out₁, out),
          (x₀, x), (x₁, x), (y₀, y), (y₁, y), (q₀, q)] do
        sameOperand actual expected
      `(reductionProgram .add $x $y $out $q $prepare $hp $finish $hf)
  | `(prog {
      let $b:ident := $x < $y using $prepare by $hp;
      {
        if ($b₀ XOR $one:num) { $out:term ^= ($x₀ - $y₀); };
        if $b₁ { $out₁:term ^= (($x₁ - $y₁) + const($q)); };
      } using $finish by $hf;
    }) => do
      unless one.getNat == 1 do Macro.throwErrorAt one "A complemented control uses XOR 1."
      let bt : TSyntax `term := ⟨b.raw⟩
      for (actual, expected) in [(b₀, bt), (b₁, bt), (out₁, out),
          (x₀, x), (x₁, x), (y₀, y), (y₁, y)] do
        sameOperand actual expected
      `(reductionProgram .sub $x $y $out $q $prepare $hp $finish $hf)

end ECDSAAdd.Arithmetic
