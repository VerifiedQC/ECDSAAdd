import ECDSAAdd.Arithmetic.Paper935.HmrCounterRetained
import ECDSAAdd.Arithmetic.Paper935.HmrClassReadPlan

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrArmedReadPlan where
  counterArena : Arena
  retainedArena : Arena
  counterWork : List Wire
  classRead : HmrClassReadPlan

def compileHmrArmedRead (A : Arena) (counter : List Wire) (sign sigma frozen fire : Wire)
    (L : HmrReadLayout) : Option HmrArmedReadPlan := do
  let (B,C,work) ← compileHmrCounterRetained A counter
  let P ← compileHmrClassRead C .reverseArmed [sign,hmrCounterPorts counter work 11,sigma,frozen,fire] L
  pure ⟨B,C,work,P⟩

/-- Armed R3--R6 allocation includes the actual zero-test release before
allocating class flags, shared flags, branch, and decoder cache. -/
theorem compileHmrArmedRead_exists (A : Arena) (counter : List Wire) (sign sigma frozen fire : Wire)
    (L : HmrReadLayout) (len : counter.length=6) (counterND : counter.Nodup)
    (counterOwned : counter.toFinset⊆A.live) (metaND : [sign,sigma,frozen,fire].Nodup)
    (metaOwned : [sign,sigma,frozen,fire].toFinset⊆A.live)
    (rows : L.rows.toFinset⊆A.live) (record : L.record.toFinset⊆A.live) (recordND : L.record.Nodup)
    (capacity : A.live.card+18≤935) : ∃ P,compileHmrArmedRead A counter sign sigma frozen fire L=some P := by
  obtain ⟨B,C,work,hc⟩ := compileHmrCounterRetained_exists A counter len counterND counterOwned (by omega)
  have contract := compileHmrCounterRetained_contract A B C counter work hc
  let keeper := hmrCounterPorts counter work 11
  have ab : A.live⊆C.live := by rw [contract.2.1];exact Finset.subset_insert _ _
  have ko : keeper∈C.live := by rw [contract.2.1];exact Finset.mem_insert_self _ _
  have borrow := (compileHmrCounter_contract A B counter work contract.1).2.2.2
  have kmem : keeper∈work.toFinset := compileHmrCounter_keeper_mem A B counter work contract.1
  have fresh : keeper∉A.live := by
    intro hk
    exact Finset.disjoint_left.mp ((A.reserve_success work.toFinset).mp
      ⟨B,(A.borrowMany_contract B 6 work borrow).2.2⟩).2 hk kmem
  have away (q : Wire) (hq : q∈[sign,sigma,frozen,fire]) : q≠keeper := by
    intro eq
    apply fresh
    rw [←eq]
    exact metaOwned (List.mem_toFinset.mpr hq)
  have s := away sign (by simp)
  have p := away sigma (by simp)
  have f := away frozen (by simp)
  have r := away fire (by simp)
  have nd : [sign,keeper,sigma,frozen,fire].Nodup := by
    simpa [List.nodup_cons,s,p,f,r,Ne.symm p,Ne.symm f,Ne.symm r] using metaND
  have owned : [sign,keeper,sigma,frozen,fire].toFinset⊆C.live := by
    intro q hq
    simp only [List.mem_toFinset,List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl
    · exact ab (metaOwned (by simp))
    · exact ko
    · exact ab (metaOwned (by simp))
    · exact ab (metaOwned (by simp))
    · exact ab (metaOwned (by simp))
  obtain ⟨P,hp⟩ := compileHmrClassRead_exists C .reverseArmed [sign,keeper,sigma,frozen,fire] L rfl nd owned
    (fun _ h => ab (rows h)) (fun _ h => ab (record h)) recordND (by
      rw [contract.2.2];simp only [hmrClassWorkCount];omega)
  dsimp only [keeper] at hp
  exact ⟨⟨B,C,work,P⟩,by simp [compileHmrArmedRead,hc,hp]⟩

end ECDSAAdd.Arithmetic.Paper935
