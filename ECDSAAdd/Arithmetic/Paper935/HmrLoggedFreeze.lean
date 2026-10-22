import ECDSAAdd.Arithmetic.Paper935.HmrFreezeCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedZero

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrZeroLog_keeper_owned (A B : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire) {logs : List (List Wire)} (h : compileHmrZeroLog A bits size logs=some (B,ps,keeper)) :
    keeper∈B.live := by
  have hc := compileHmrZeroLog_contract A B bits size ps keeper h
  have owned := compileHmrBlockedLog_owned A B none (hmrChunks size bits) ps hc.2.1
  have mem := hmrBlockedFlag_mem none ps keeper hc.2.2
  simp only [Option.toList_none,List.nil_append] at mem
  obtain ⟨P,hp,eq⟩ := List.mem_map.mp mem
  rw [←eq]
  exact owned.2 P hp (by simp)

/-- Source F7 allocates its fire bit after the size-16 zero test has
released its chain internals; only the keeper ladder remains live. -/
def compileHmrFreezeLog (A : Arena) (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat) (logs : List (List Wire)) (fireWork : List Wire) :
    Option (Arena × HmrFreezePlan) := do
  if (bits++frozen::record).toFinset⊆A.live ∧ Disjoint bits.toFinset (frozen::record).toFinset then
    let (B,ps,keeper) ← compileHmrZeroLog A bits 16 logs
    let C ← B.checkBorrow 1 fireWork
    let P : HmrFreezePlan := ⟨B,ps,keeper,fireWork⟩
    if (keeper::frozen::P.fire::record).Nodup ∧ offset<2^record.length then some (C,P) else none
  else none

structure HmrFreezePlan.Logged (P : HmrFreezePlan) (logs : List (List Wire)) (A C : Arena)
    (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat) : Prop where
  owned : (bits++frozen::record).toFinset⊆A.live
  away : Disjoint bits.toFinset (frozen::record).toFinset
  zero : compileHmrZeroLog A bits 16 logs=some (P.zeroArena,P.zeroPlans,P.zeroKeeper)
  borrow : P.zeroArena.checkBorrow 1 P.fireWork=some C
  controls : (P.zeroKeeper::frozen::P.fire::record).Nodup
  fits : offset<2^record.length

theorem compileHmrFreezeLog_contract (A C : Arena) (bits : List Wire) (frozen : Wire)
    (record : List Wire) (offset : Nat) (P : HmrFreezePlan)
    {logs : List (List Wire)} {fireWork : List Wire}
    (h : compileHmrFreezeLog A bits frozen record offset logs fireWork=some (C,P)) :
    P.Logged logs A C bits frozen record offset := by
  unfold compileHmrFreezeLog at h
  split at h
  next valid =>
    obtain ⟨⟨B,ps,keeper⟩,zero,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨D,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next checks =>
      cases h
      exact ⟨valid.1,valid.2,zero,borrow,checks.1,checks.2⟩
    next invalid => simp at h
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
