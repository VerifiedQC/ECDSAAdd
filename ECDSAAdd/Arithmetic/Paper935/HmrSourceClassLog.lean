import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEquality
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedReturn

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrSourceClassPlan where
  positiveArena : Arena
  positiveWork : List Wire
  equalityArena : Arena
  equalityWork : List Wire
  equality : HmrEqualityPlan

def HmrSourceClassPlan.positive (P : HmrSourceClassPlan) : Wire :=
  hmrBorrowPorts P.positiveWork (0 : Fin 1)

def hmrSourceClassInputs (armed : Bool) (frozen sigma positive : Wire) : List Wire :=
  if armed then [frozen,sigma,positive] else [sigma,positive]

def hmrSourceClassAnchors (armed : Bool) (sign zeroFlag frozen sigma : Wire) : List Wire :=
  if armed then [sign,zeroFlag,frozen,sigma] else [sign,zeroFlag,sigma]

def HmrSourceClassPlan.program (P : HmrSourceClassPlan) (sign zeroFlag : Wire) : Program :=
  hmrPolarAnd sign zeroFlag P.positive false false ++ hmrAndSweep P.equality.stages

def HmrSourceClassPlan.cleanup (P : HmrSourceClassPlan) (sign zeroFlag : Wire) : Program :=
  hmrAndUnsweep P.equality.stages ++ hmrPolarRelease sign zeroFlag P.positive false false

/-- Source F8 uses only its real inputs: no placeholder ports for unused
frozen/fire inputs in the early or forward class chains. -/
def compileHmrSourceClassLog (A : Arena) (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (positiveLog equalityLog : List Wire) : Option HmrSourceClassPlan := do
  let anchors := hmrSourceClassAnchors armed sign zeroFlag frozen sigma
  if anchors.Nodup ∧ anchors.toFinset⊆A.live then
    let B ← A.checkBorrow 1 positiveLog
    let positive := hmrBorrowPorts positiveLog (0 : Fin 1)
    let (C,work,eqPlan) ← compileHmrEqualityLog B (hmrSourceClassInputs armed frozen sigma positive) 0 equalityLog
    pure ⟨B,positiveLog,C,work,eqPlan⟩
  else none

structure HmrSourceClassPlan.Logged (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire) : Prop where
  distinct : (hmrSourceClassAnchors armed sign zeroFlag frozen sigma).Nodup
  owned : (hmrSourceClassAnchors armed sign zeroFlag frozen sigma).toFinset⊆A.live
  positiveBorrow : A.checkBorrow 1 P.positiveWork=some P.positiveArena
  equality : compileHmrEqualityLog P.positiveArena (hmrSourceClassInputs armed frozen sigma P.positive)
    0 P.equalityWork=some (P.equalityArena,P.equalityWork,P.equality)

theorem compileHmrSourceClassLog_contract (A : Arena) (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (positiveLog equalityLog : List Wire) (P : HmrSourceClassPlan)
    (h : compileHmrSourceClassLog A armed sign zeroFlag frozen sigma positiveLog equalityLog=some P) :
    P.Logged A armed sign zeroFlag frozen sigma := by
  unfold compileHmrSourceClassLog at h
  dsimp only at h
  split at h
  next valid =>
    obtain ⟨B,hb,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨C,work,Q⟩,he,h⟩ := Option.bind_eq_some_iff.mp h
    have eq := compileHmrEqualityLog_work B C _ 0 equalityLog work Q he
    subst work
    cases h
    exact ⟨valid.1,valid.2,hb,he⟩
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
