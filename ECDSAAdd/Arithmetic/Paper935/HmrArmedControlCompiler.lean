import ECDSAAdd.Arithmetic.Paper935.HmrArmedRecordFit
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedZeroReturn
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeCycle
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedStore

namespace ECDSAAdd.Arithmetic.Paper935

local instance (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

structure HmrArmedControlLog where
  freezeZero : List (List Wire)
  fire : List Wire
  counterZero : List (List Wire)
  positive : List Wire
  classWork : List Wire
  flags : List Wire
  counterDrop : List (List Wire)
  sigmaGuard : List Wire
  timestampEq : List Wire
  fireGuard : List Wire
  freezeDrop : List (List Wire)

structure HmrArmedControlPlan where
  freezeArena : Arena
  freezePlan : HmrFreezePlan
  counterArena : Arena
  counterPlans : List HmrBlockPlan
  counterKeeper : Wire
  classPlan : HmrSourceClassPlan
  flagArena : Arena
  fitArena : Arena
  counterCleanup : List HmrBlockFreePlan
  sigmaArena : Arena
  endArena : Arena
  endPlan : HmrFreezeEndPlan
  outputArena : Arena
  log : HmrArmedControlLog

def HmrArmedControlPlan.body (P : HmrArmedControlPlan) (sign b2 b3 b4 branch : Wire)
    (record : List Wire) : Program :=
  hmrBlockedProgram P.counterPlans ++
    (P.classPlan.storeCycle sign P.counterKeeper b2 b3 b4 branch record P.log.flags ++
      hmrBlockedDropProgram P.counterCleanup)

def HmrArmedControlPlan.program (P : HmrArmedControlPlan)
    (frozen sign sigma fv1 b2 b3 b4 branch : Wire) (timestamp record : List Wire) (offset : Nat) : Program :=
  P.freezePlan.program frozen timestamp offset ++
    (P.body sign b2 b3 b4 branch record ++
      (hmrSigmaDeath true frozen P.freezePlan.fire fv1 sigma (hmrBorrowPorts P.log.sigmaGuard (0 : Fin 1)) ++
        (P.endPlan.program P.freezePlan.zeroKeeper frozen P.freezePlan.fire ++ hmrBranchRetirement branch)))

/-- Armed F7--F17 uses the observed logs for all reborrows. The pinned
armed schedule has no record growth; this entry checks the empty fit log. -/
def compileHmrArmedControlLog (A : Arena) (g counter timestamp record : List Wire)
    (frozen sign sigma fv1 b2 b3 b4 branch : Wire) (offset need : Nat) (log : HmrArmedControlLog) :
    Option HmrArmedControlPlan := do
  if counter.length=6 ∧ sign=counter.getLastD 0 ∧
      (branch::record).Nodup ∧ (branch::record).toFinset⊆A.live ∧
      List.Disjoint counter (branch::record) ∧ List.Disjoint g (branch::record) ∧
      List.Disjoint (branch::record) (frozen::timestamp) ∧
      [sigma,fv1].toFinset⊆A.live ∧ fv1∉branch::record ∧
      sigma∉g++frozen::timestamp then
    let (F,freeze) ← compileHmrFreezeLog A g frozen timestamp offset log.freezeZero log.fire
    let (Z,ps,keeper) ← compileHmrZeroLog F counter counter.length log.counterZero
    let P ← compileHmrSourceClassLog Z true sign keeper frozen sigma log.positive log.classWork
    if List.Disjoint [P.equality.top,b2,b3,b4] (branch::record) ∧
        List.Disjoint (hmrSourceClassAnchors true sign keeper frozen sigma) (branch::record) then
      let B ← compileHmrFlagsLog P.equalityArena P.equality.top b2 b3 b4 log.flags
      if record.length=need then
        let (_,qs) ← compileHmrBlockedDropLog Z ps log.counterDrop
        let S ← compileHmrSigmaDropLog F true frozen freeze.fire fv1 sigma log.sigmaGuard
        let (T,ending) ← compileHmrFreezeEndLog S timestamp offset freeze.zeroKeeper frozen freeze.fire
          freeze.zeroPlans log.timestampEq log.fireGuard log.freezeDrop
        let U ← compileHmrBranchRetirement T branch
        pure ⟨F,freeze,Z,ps,keeper,P,B,B,qs,S,T,ending,U,log⟩
      else none
    else none
  else none

structure HmrArmedControlPlan.Logged (P : HmrArmedControlPlan) (A : Arena)
    (g counter timestamp record : List Wire) (frozen sign sigma fv1 b2 b3 b4 branch : Wire)
    (offset need : Nat) : Prop where
  inputs : counter.length=6 ∧ sign=counter.getLastD 0 ∧
      (branch::record).Nodup ∧ (branch::record).toFinset⊆A.live ∧
      List.Disjoint counter (branch::record) ∧ List.Disjoint g (branch::record) ∧
      List.Disjoint (branch::record) (frozen::timestamp) ∧
      [sigma,fv1].toFinset⊆A.live ∧ fv1∉branch::record ∧ sigma∉g++frozen::timestamp
  freeze : compileHmrFreezeLog A g frozen timestamp offset P.log.freezeZero P.log.fire=some (P.freezeArena,P.freezePlan)
  counterTest : compileHmrZeroLog P.freezeArena counter counter.length P.log.counterZero=
    some (P.counterArena,P.counterPlans,P.counterKeeper)
  classCompiled : compileHmrSourceClassLog P.counterArena true sign P.counterKeeper frozen sigma
    P.log.positive P.log.classWork=some P.classPlan
  flagsApart : List.Disjoint [P.classPlan.equality.top,b2,b3,b4] (branch::record)
  anchorsApart : List.Disjoint (hmrSourceClassAnchors true sign P.counterKeeper frozen sigma) (branch::record)
  flags : compileHmrFlagsLog P.classPlan.equalityArena P.classPlan.equality.top b2 b3 b4 P.log.flags=some P.flagArena
  fit : compileHmrRecordGrowLog P.flagArena record need []=some P.fitArena
  counterDrop : compileHmrBlockedDropLog P.counterArena P.counterPlans P.log.counterDrop=
    some (P.freezeArena,P.counterCleanup)
  sigmaDrop : compileHmrSigmaDropLog P.freezeArena true frozen P.freezePlan.fire fv1 sigma P.log.sigmaGuard=some P.sigmaArena
  freezeDrop : compileHmrFreezeEndLog P.sigmaArena timestamp offset P.freezePlan.zeroKeeper frozen P.freezePlan.fire
    P.freezePlan.zeroPlans P.log.timestampEq P.log.fireGuard P.log.freezeDrop=some (P.endArena,P.endPlan)
  branchDrop : compileHmrBranchRetirement P.endArena branch=some P.outputArena

theorem compileHmrArmedControlLog_contract (A : Arena) (g counter timestamp record : List Wire)
    (frozen sign sigma fv1 b2 b3 b4 branch : Wire) (offset need : Nat) (log : HmrArmedControlLog)
    (P : HmrArmedControlPlan)
    (h : compileHmrArmedControlLog A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need log=some P) :
    P.log=log ∧ P.Logged A g counter timestamp record frozen sign sigma fv1 b2 b3 b4 branch offset need := by
  unfold compileHmrArmedControlLog at h
  split at h
  next entry =>
    obtain ⟨⟨F,freeze⟩,hf,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨Z,ps,keeper⟩,hz,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
    split at h
    next layout =>
      obtain ⟨B,hb,h⟩ := Option.bind_eq_some_iff.mp h
      split at h
      next length =>
        have fc := compileHmrFreezeLog_contract A F g frozen timestamp offset freeze hf
        have fOwned : A.live⊆F.live := by
          rw [fc.live freeze A F g frozen timestamp offset]
          intro q hq
          exact Finset.mem_insert_of_mem (Finset.mem_union_left _ hq)
        have zero := compileHmrZeroLog_contract F Z counter counter.length ps keeper hz
        have zOwned := (compileHmrBlockedLog_owned F Z none _ ps zero.2.1).1
        have cc := compileHmrSourceClassLog_contract Z true sign keeper frozen sigma log.positive log.classWork Q hq
        have qOwned := cc.mono Q Z true sign keeper frozen sigma
        have flags := compileHmrFlagsLog_contract Q.equalityArena B Q.equality.top b2 b3 b4 log.flags hb
        have bOwned := Q.equalityArena.checkBorrow_mono B 6 log.flags flags.2.2
        have nd : record.Nodup := (List.nodup_cons.mp entry.2.2.1).2
        have owned : record.toFinset⊆B.live := by
          intro q mem
          apply bOwned; apply qOwned; apply zOwned; apply fOwned
          exact entry.2.2.2.1 (by simpa only [List.toFinset_cons] using Finset.mem_insert_of_mem mem)
        have hc := compileHmrRecordGrowLog_unchanged B record need nd owned length
        obtain ⟨⟨R,qs⟩,hr,h⟩ := Option.bind_eq_some_iff.mp h
        have same : R=F := compileHmrZeroLog_drop_return F Z R counter counter.length ps keeper qs hz hr
        subst R
        obtain ⟨S,hs,h⟩ := Option.bind_eq_some_iff.mp h
        obtain ⟨⟨T,ending⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
        obtain ⟨U,hu,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        exact ⟨rfl,entry,hf,hz,hq,layout.1,layout.2,hb,hc,hr,hs,ht,hu⟩
      next invalid => simp at h
    next invalid => simp at h
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
