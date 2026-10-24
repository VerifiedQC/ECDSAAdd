import ECDSAAdd.Arithmetic.Paper935.HmrKeeperPorts
import ECDSAAdd.Arithmetic.Paper935.HmrZeroCompiler
import ECDSAAdd.Arithmetic.Paper935.FreezeLatch

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrBlockedFlag_mem (previous : Option Wire) (ps : List HmrBlockPlan) (q : Wire)
    (h : hmrBlockedFlag previous ps=some q) : q∈previous.toList++ps.map HmrBlockPlan.keeper := by
  induction ps generalizing previous with
  | nil => simpa only [hmrBlockedFlag] using (by simpa [h] : q∈previous.toList++([] : List Wire))
  | cons P ps ih =>
    have mem := ih (some P.keeper) h
    simp only [Option.toList_some,List.cons_append,List.nil_append,List.mem_cons] at mem
    rcases mem with eq | mem
    · simp [eq]
    · exact List.mem_append_right _ (List.mem_cons_of_mem _ mem)

theorem compileHmrZero_keeper_owned (A B : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire) (h : compileHmrZero A bits size=some (B,ps,keeper)) :
    keeper∈B.live := by
  have hc := compileHmrZero_contract A B bits size ps keeper h
  have owned := compileHmrBlocked_owned A B none (hmrChunks size bits) ps hc.2.1
  have mem := hmrBlockedFlag_mem none ps keeper hc.2.2
  simp only [Option.toList_none,List.nil_append] at mem
  obtain ⟨P,hp,eq⟩ := List.mem_map.mp mem
  rw [←eq]
  exact owned.2 P hp (by simp)

structure HmrFreezePlan where
  zeroArena : Arena
  zeroPlans : List HmrBlockPlan
  zeroKeeper : Wire
  fireWork : List Wire

def HmrFreezePlan.fire (P : HmrFreezePlan) : Wire := hmrBorrowPorts P.fireWork (0 : Fin 1)

def HmrFreezePlan.program (P : HmrFreezePlan) (frozen : Wire) (record : List Wire) (offset : Nat) : Program :=
  hmrBlockedProgram P.zeroPlans ++ freezeLatch P.zeroKeeper frozen P.fire record offset

/-- Source F7 allocates its fire bit after the size-16 zero test has
released its chain internals; only the keeper ladder remains live. -/
def compileHmrFreeze (A : Arena) (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat) :
    Option (Arena × HmrFreezePlan) := do
  if (bits++frozen::record).toFinset⊆A.live ∧ Disjoint bits.toFinset (frozen::record).toFinset then
    let (B,ps,keeper) ← compileHmrZero A bits 16
    let (C,work) ← B.borrowMany 1
    let P : HmrFreezePlan := ⟨B,ps,keeper,work⟩
    if (keeper::frozen::P.fire::record).Nodup ∧ offset<2^record.length then some (C,P) else none
  else none

structure HmrFreezePlan.Compiled (P : HmrFreezePlan) (A C : Arena)
    (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat) : Prop where
  owned : (bits++frozen::record).toFinset⊆A.live
  away : Disjoint bits.toFinset (frozen::record).toFinset
  zero : compileHmrZero A bits 16=some (P.zeroArena,P.zeroPlans,P.zeroKeeper)
  borrow : P.zeroArena.borrowMany 1=some (C,P.fireWork)
  controls : (P.zeroKeeper::frozen::P.fire::record).Nodup
  fits : offset<2^record.length

theorem compileHmrFreeze_contract (A C : Arena) (bits : List Wire) (frozen : Wire)
    (record : List Wire) (offset : Nat) (P : HmrFreezePlan)
    (h : compileHmrFreeze A bits frozen record offset=some (C,P)) :
    P.Compiled A C bits frozen record offset := by
  unfold compileHmrFreeze at h
  split at h
  next valid =>
    obtain ⟨⟨B,ps,keeper⟩,zero,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨⟨D,work⟩,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next checks =>
      cases h
      exact ⟨valid.1,valid.2,zero,borrow,checks.1,checks.2⟩
    next invalid => simp at h
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
