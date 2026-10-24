import ECDSAAdd.Arithmetic.Paper935.HmrSourceGrowingEarlyStore
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedSigmaReturn
import ECDSAAdd.Arithmetic.Paper935.HmrBranchRetirement

namespace ECDSAAdd.Arithmetic.Paper935

local instance (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (Disjoint xs.toFinset ys.toFinset) List.disjoint_toFinset_iff_disjoint

structure HmrEarlyControlLog where
  zeroWork : List Wire
  positiveWork : List Wire
  classWork : List Wire
  flagWork : List Wire
  recordFresh : List Wire

structure HmrEarlyControlPlan where
  zeroArena : Arena
  zeroPlan : HmrEqualityPlan
  classPlan : HmrSourceClassPlan
  flagArena : Arena
  fittedArena : Arena
  historyArena : Arena
  sigmaArena : Arena
  outputArena : Arena
  log : HmrEarlyControlLog

def HmrEarlyControlPlan.program (P : HmrEarlyControlPlan)
    (sign sigma fv1 b2 b3 b4 branch : Wire) (record : List Wire) : Program :=
  (hmrAndSweep P.zeroPlan.stages ++
    (P.classPlan.storeCycle sign P.zeroPlan.top b2 b3 b4 branch (record++P.log.recordFresh) P.log.flagWork ++
      hmrAndUnsweep P.zeroPlan.stages)) ++
    (hmrSigmaDeath false 0 0 fv1 sigma 0 ++ hmrBranchRetirement branch)

/-- Early source F8--F17: all address choices come from a supplied log.
The two history-growth checks certify the observed intermediate allocation
and its returned arena, respectively; neither chooses new addresses. -/
def compileHmrEarlyControlLog (A : Arena) (counter record : List Wire)
    (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat) (log : HmrEarlyControlLog) :
    Option HmrEarlyControlPlan := do
  if counter.length=6 ∧ sign=counter.getLastD 0 ∧
      (branch::record).Nodup ∧ (branch::record).toFinset⊆A.live ∧
      List.Disjoint counter (branch::record) ∧
      [sigma,fv1].toFinset⊆A.live ∧ fv1∉branch::record then
    let (Z,_,zero) ← compileHmrEqualityLog A counter 0 log.zeroWork
    let P ← compileHmrSourceClassLog Z false sign zero.top 0 sigma log.positiveWork log.classWork
    if List.Disjoint [P.equality.top,b2,b3,b4] (branch::record) ∧
        List.Disjoint (hmrSourceClassAnchors false sign zero.top 0 sigma) (branch::record) then
      let B ← compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 log.flagWork
      let C ← compileHmrRecordGrowLog B record need log.recordFresh
      let D ← compileHmrRecordGrowLog A record need log.recordFresh
      let E ← compileHmrSigmaDropLog D false 0 0 fv1 sigma []
      let F ← compileHmrBranchRetirement E branch
      pure ⟨Z,zero,P,B,C,D,E,F,log⟩
    else none
  else none

structure HmrEarlyControlPlan.Logged (P : HmrEarlyControlPlan) (A : Arena)
    (counter record : List Wire) (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat) : Prop where
  width : counter.length=6
  signPort : sign=counter.getLastD 0
  recordDistinct : (branch::record).Nodup
  recordOwned : (branch::record).toFinset⊆A.live
  counterApart : List.Disjoint counter (branch::record)
  sigmaInputsOwned : [sigma,fv1].toFinset⊆A.live
  fv1Apart : fv1∉branch::record
  zero : compileHmrEqualityLog A counter 0 P.log.zeroWork=some (P.zeroArena,P.log.zeroWork,P.zeroPlan)
  classCompiled : compileHmrSourceClassLog P.zeroArena false sign P.zeroPlan.top 0 sigma
    P.log.positiveWork P.log.classWork=some P.classPlan
  flagsApart : List.Disjoint [P.classPlan.equality.top,b2,b3,b4] (branch::record)
  anchorsApart : List.Disjoint (hmrSourceClassAnchors false sign P.zeroPlan.top 0 sigma) (branch::record)
  flags : compileHmrFlagsLog P.classPlan.equalityArena P.classPlan.equality.top b2 b3 b4 P.log.flagWork=some P.flagArena
  fit : compileHmrRecordGrowLog P.flagArena record need P.log.recordFresh=some P.fittedArena
  history : compileHmrRecordGrowLog A record need P.log.recordFresh=some P.historyArena
  sigmaDrop : compileHmrSigmaDropLog P.historyArena false 0 0 fv1 sigma []=some P.sigmaArena
  branchDrop : compileHmrBranchRetirement P.sigmaArena branch=some P.outputArena

theorem compileHmrEarlyControlLog_contract (A : Arena) (counter record : List Wire)
    (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat) (log : HmrEarlyControlLog)
    (P : HmrEarlyControlPlan)
    (h : compileHmrEarlyControlLog A counter record sign sigma fv1 b2 b3 b4 branch need log=some P) :
    P.log=log ∧ P.Logged A counter record sign sigma fv1 b2 b3 b4 branch need := by
  unfold compileHmrEarlyControlLog at h
  split at h
  next entry =>
    obtain ⟨⟨Z,actual,zero⟩,hz,h⟩ := Option.bind_eq_some_iff.mp h
    have same := compileHmrEqualityLog_work A Z counter 0 log.zeroWork actual zero hz
    subst actual
    obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
    split at h
    next layout =>
      obtain ⟨B,hb,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨C,hc,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨D,hd,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨E,he,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨F,hf,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      exact ⟨rfl,entry.1,entry.2.1,entry.2.2.1,entry.2.2.2.1,entry.2.2.2.2.1,entry.2.2.2.2.2.1,entry.2.2.2.2.2.2,
        hz,hq,layout.1,layout.2,hb,hc,hd,he,hf⟩
    next invalid => simp at h
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
