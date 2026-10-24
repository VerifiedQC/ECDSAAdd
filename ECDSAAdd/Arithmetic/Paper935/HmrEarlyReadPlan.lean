import ECDSAAdd.Arithmetic.Paper935.HmrEarlyCounterExists
import ECDSAAdd.Arithmetic.Paper935.HmrEqualityState
import ECDSAAdd.Arithmetic.Paper935.HmrClassReadPlan

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrEarlyReadPlan where
  zeroArena : Arena
  zeroWork : List Wire
  zeroPlan : HmrEqualityPlan
  classRead : HmrClassReadPlan

def compileHmrEarlyRead (A : Arena) (counter : List Wire) (sign sigma frozen fire : Wire)
    (L : HmrReadLayout) : Option HmrEarlyReadPlan := do
  let (B,work,Z) ← compileHmrEquality A counter 0
  let P ← compileHmrClassRead B .early [sign,Z.top,sigma,frozen,fire] L
  pure ⟨B,work,Z,P⟩

/-- Early R3--R6 retains the five zero-test leaves through decoding. The
last two metadata ports are unused by the early class gates. -/
theorem compileHmrEarlyRead_exists (A : Arena) (counter : List Wire) (sign sigma frozen fire : Wire)
    (L : HmrReadLayout) (len : counter.length=6) (counterND : counter.Nodup)
    (counterOwned : counter.toFinset⊆A.live) (metaND : [sign,sigma,frozen,fire].Nodup)
    (metaOwned : [sign,sigma,frozen,fire].toFinset⊆A.live)
    (rows : L.rows.toFinset⊆A.live) (record : L.record.toFinset⊆A.live) (recordND : L.record.Nodup)
    (capacity : A.live.card+20≤935) : ∃ P,compileHmrEarlyRead A counter sign sigma frozen fire L=some P := by
  obtain ⟨B,work,Z,hc⟩ := compileHmrEarlyCounter_exists A counter len counterND counterOwned (by omega)
  have contract := compileHmrEquality_contract A B counter 0 work Z hc
  let keeper := Z.top
  have borrow : A.borrowMany 5=some (B,work) := by simpa only [len] using contract.2.1
  have live := (A.borrowMany_live B 5 work borrow).1
  have count := (A.borrowMany_live B 5 work borrow).2
  have ab : A.live⊆B.live := by rw [live];exact Finset.subset_union_left
  have kmem : keeper∈work.toFinset := compileHmrEquality_top_mem A B counter 0 work Z hc
  have ko : keeper∈B.live := by rw [live];exact Finset.mem_union_right _ kmem
  have fresh : keeper∉A.live := by
    intro hk
    exact Finset.disjoint_left.mp ((A.reserve_success work.toFinset).mp
      ⟨B,(A.borrowMany_contract B 5 work borrow).2.2⟩).2 hk kmem
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
  have owned : [sign,keeper,sigma,frozen,fire].toFinset⊆B.live := by
    intro q hq
    simp only [List.mem_toFinset,List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl
    · exact ab (metaOwned (by simp))
    · exact ko
    · exact ab (metaOwned (by simp))
    · exact ab (metaOwned (by simp))
    · exact ab (metaOwned (by simp))
  obtain ⟨P,hp⟩ := compileHmrClassRead_exists B .early [sign,keeper,sigma,frozen,fire] L rfl nd owned
    (fun _ h => ab (rows h)) (fun _ h => ab (record h)) recordND (by
      rw [count];simp only [hmrClassWorkCount];omega)
  dsimp only [keeper] at hp
  exact ⟨⟨B,work,Z,P⟩,by simp [compileHmrEarlyRead,hc,hp]⟩

end ECDSAAdd.Arithmetic.Paper935
