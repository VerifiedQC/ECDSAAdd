import ECDSAAdd.Arithmetic.Paper935.HmrArmAllocation

namespace ECDSAAdd.Arithmetic.Paper935

/-- The source releases the timestamp sites followed by the frozen site.
This checks ownership and actual zero values; it does not reset any bit. -/
def releaseHmrArmLog (A : Arena) (M : HmrFreezeMetadata) (s : State) : Option Arena :=
  A.release M.wires.toFinset s.basis

theorem releaseHmrArmLog_encoding (A B : Arena) (M : HmrFreezeMetadata)
    (bank : WindowBank) (counter : List Wire) (s : State) (old : PinState)
    (checked : releaseHmrArmLog A M s=some B)
    (encoding : HmrSourceEncoding A bank counter (some M) s old) :
    HmrSourceEncoding B bank counter none s old := by
  obtain ⟨ready,rows,counterValue,frozenValue,recordValue⟩ := encoding
  have clean : ∀q∈M.wires.toFinset,s.basis q=false := by
    have h := (Arena.release_success A M.wires.toFinset s.basis).mp ⟨B,checked⟩
    exact h.2
  refine ⟨A.release_ready B M.wires.toFinset s.basis ready checked,rows,counterValue,?_,?_⟩
  · rw [←frozenValue]
    exact clean M.frozen (by simp [HmrFreezeMetadata.wires])
  · rw [←recordValue]
    exact (regValue_zero M.timestamp s.basis).mpr (fun q hq => clean q (by simp [HmrFreezeMetadata.wires,hq]))

/-- The matched allocation/release restores the original live set, provided
an intervening inverse has actually cleaned all metadata sites. -/
theorem compileHmrArmLog_release (A B : Arena) (width : Nat) (M : HmrFreezeMetadata)
    (checked : compileHmrArmLog A width M=some B) (s : State)
    (clean : ∀q∈M.wires,s.basis q=false) :
    ∃ C,releaseHmrArmLog B M s=some C ∧ C.live=A.live ∧
      C.live.card+(width+1)=B.live.card := by
  have layout := compileHmrArmLog_layout A B width M checked
  have contract := A.checkBorrow_contract B (width+1) M.wires checked
  have reserved := (A.reserve_success M.wires.toFinset).mp ⟨B,contract.2.2⟩
  have owned : M.wires.toFinset⊆B.live := by rw [layout.2.2]; exact Finset.subset_union_right
  obtain ⟨C,hc⟩ := (Arena.release_success B M.wires.toFinset s.basis).mpr
    ⟨owned,fun q hq => clean q (List.mem_toFinset.mp hq)⟩
  have live : C.live=A.live := by
    unfold Arena.release at hc
    split at hc
    next good =>
      cases hc
      change B.live\M.wires.toFinset=A.live
      rw [layout.2.2]
      ext q
      simp only [Finset.mem_sdiff,Finset.mem_union]
      constructor
      · intro h; exact h.1.resolve_right h.2
      · intro h
        exact ⟨Or.inl h,fun hq => Finset.disjoint_left.mp reserved.2 h hq⟩
    next bad => simp at hc
  exact ⟨C,hc,live,by rw [live,compileHmrArmLog_card A B width M checked]⟩

end ECDSAAdd.Arithmetic.Paper935
