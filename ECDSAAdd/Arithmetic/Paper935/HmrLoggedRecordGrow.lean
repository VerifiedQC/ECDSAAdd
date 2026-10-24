import ECDSAAdd.Arithmetic.Paper935.HmrLoggedReturn
import ECDSAAdd.Arithmetic.Reduction

namespace ECDSAAdd.Arithmetic.Paper935

/-- Forward `_r_fit`: append the observed fresh cells without selecting
addresses. Shrinking is rejected by this forward-only checker. -/
def compileHmrRecordGrowLog (A : Arena) (old : List Wire) (need : Nat) (fresh : List Wire) :
    Option Arena :=
  if old.Nodup ∧ old.toFinset⊆A.live ∧ old.length≤need
  then A.checkBorrow (need-old.length) fresh else none

theorem compileHmrRecordGrowLog_contract (A B : Arena) (old : List Wire) (need : Nat)
    (fresh : List Wire) (h : compileHmrRecordGrowLog A old need fresh=some B) :
    old.Nodup ∧ old.toFinset⊆A.live ∧ old.length≤need ∧
      A.checkBorrow (need-old.length) fresh=some B := by
  unfold compileHmrRecordGrowLog at h
  split at h
  next valid => exact ⟨valid.1,valid.2.1,valid.2.2,h⟩
  next invalid => simp at h

/-- Allocation itself changes no state; readiness proves each appended
history cell is zero and hence preserves the represented history value. -/
theorem compileHmrRecordGrowLog_ready (A B : Arena) (old : List Wire) (need : Nat)
    (fresh : List Wire) (h : compileHmrRecordGrowLog A old need fresh=some B)
    (s : BasisState) (ready : A.Ready s) :
    B.Ready s ∧ (old++fresh).Nodup ∧ (old++fresh).length=need ∧
      (old++fresh).toFinset⊆B.live ∧ regValue (old++fresh) s=regValue old s := by
  have hc := compileHmrRecordGrowLog_contract A B old need fresh h
  have borrow := A.checkBorrow_contract B _ fresh hc.2.2.2
  have reserved := A.reserve_ready B fresh.toFinset s ready borrow.2.2
  have free := ((A.reserve_success fresh.toFinset).mp ⟨B,borrow.2.2⟩).2
  have disjoint : List.Disjoint old fresh := by
    apply List.disjoint_left.mpr
    intro q ho hf
    exact Finset.disjoint_left.mp free (hc.2.1 (List.mem_toFinset.mpr ho)) (List.mem_toFinset.mpr hf)
  refine ⟨reserved.1,List.nodup_append.mpr ⟨hc.1,borrow.2.1,by
    intro a ha b hb eq
    subst b
    exact List.disjoint_left.mp disjoint ha hb⟩,?_,?_,?_⟩
  · rw [List.length_append,borrow.1]
    omega
  · rw [A.checkBorrow_live B _ fresh hc.2.2.2]
    intro q hq
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with oldMem|freshMem
    · exact Finset.mem_union_left _ (hc.2.1 (List.mem_toFinset.mpr oldMem))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr freshMem)
  · have zero : regValue fresh s=0 := (regValue_zero fresh s).mpr
      (fun q hq => reserved.2 q (List.mem_toFinset.mpr hq))
    simp only [regValue_append,zero,Nat.mul_zero,Nat.add_zero]

end ECDSAAdd.Arithmetic.Paper935
