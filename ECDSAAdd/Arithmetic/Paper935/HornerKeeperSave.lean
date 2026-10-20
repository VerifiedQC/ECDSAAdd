import ECDSAAdd.Arithmetic.Paper935.HornerCarryHigh
import ECDSAAdd.Arithmetic.Paper935.HornerCarryScratch
import ECDSAAdd.Arithmetic.Paper935.HornerCarryAddend
import ECDSAAdd.Arithmetic.Paper935.Repack

namespace ECDSAAdd.Arithmetic.Paper935

/-- Author luo_core.py:1065–1082: write the controlled block sum, retain
its highest carry, and move that carry to a reserved clean keeper slot.
The author's SWAP is represented by the repository's three-CX expansion. -/
def hornerKeeperSave (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) : Program :=
  hornerCarrySweep bs cin ++ hornerCarryUnsweep ctrl true true bs cin ++ rehome top keeper

/-- Exact full state after storing the block's retained carry. -/
theorem hornerKeeperSave_run (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (ctrl::(cin.toList++hornerCarryPorts bs)).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) (separate : top≠keeper) :
    run (hornerKeeperSave ctrl top keeper bs cin) m s=
      ⟨s.phase,fun q => hornerCarryResult ctrl true true bs cin s.basis (Equiv.swap top keeper q)⟩ := by
  rw [hornerKeeperSave,run_append,run_take,run_append,run_take,
    hornerCarryBlock_run ctrl true true bs cin s m _ distinct clean]
  have swap := rehome_run top keeper separate
    ⟨s.phase,hornerCarryResult ctrl true true bs cin s.basis⟩
    (m.drop (measurementCount (hornerCarrySweep bs cin ++ hornerCarryUnsweep ctrl true true bs cin)))
  apply congrArg₂ State.mk
  · exact swap.1
  · funext q
    simpa only [Equiv.swap_apply_self] using swap.2 (Equiv.swap top keeper q)

/-- Saved keeper equals the carry of the original operand words. -/
theorem hornerKeeperSave_value (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (ctrl::(cin.toList++hornerCarryPorts bs)).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) (separate : top≠keeper)
    (isTop : hornerCarryTop bs cin=some top) :
    (run (hornerKeeperSave ctrl top keeper bs cin) m s).basis keeper=
      hornerWordCarry bs ((cin.map s.basis).getD false) s.basis := by
  rw [hornerKeeperSave_run _ _ _ _ _ _ _ distinct clean separate]
  have high := hornerCarryResult_top ctrl true bs cin s.basis distinct
  simpa [isTop] using high

/-- Once the highest carry is moved into a zero keeper slot, every carry
scratch in this block is again zero and available for the next block. -/
theorem hornerKeeperSave_clean (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (ctrl::(cin.toList++hornerCarryPorts bs)).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) (separate : top≠keeper)
    (isTop : hornerCarryTop bs cin=some top)
    (away : keeper∉hornerCarryPorts bs) (zero : s.basis keeper=false) :
    ∀b∈bs,(run (hornerKeeperSave ctrl top keeper bs cin) m s).basis b.carry=false := by
  intro b hb
  rw [hornerKeeperSave_run _ _ _ _ _ _ _ distinct clean separate]
  change hornerCarryResult ctrl true true bs cin s.basis (Equiv.swap top keeper b.carry)=false
  have hk : b.carry≠keeper := fun h => away (List.mem_flatMap.mpr ⟨b,hb,by simp [h]⟩)
  by_cases ht : b.carry=top
  · rw [ht,Equiv.swap_apply_left]
    exact (hornerCarryFinishSweep_frame ctrl true true bs cin _ keeper away).trans
      ((hornerCarryAdvance_block_frame bs cin s.basis keeper away).trans zero)
  · rw [Equiv.swap_apply_of_ne_of_ne ht hk]
    exact hornerCarryFinishSweep_clean ctrl true bs cin _
      (List.nodup_append.mp (List.nodup_cons.mp distinct).2).2.1 b.carry
      (List.mem_map.mpr ⟨b,hb,rfl⟩) (by simpa [isTop] using ht)

/-- Moving the carry preserves both operand words. Together with the
carry/cleanliness theorems this supplies the next-block integer invariant. -/
theorem hornerKeeperSave_words (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (ctrl::(cin.toList++hornerCarryPorts bs)).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) (separate : top≠keeper)
    (dataAway : ∀q∈bs.map HornerCarryCell.target++bs.map HornerCarryCell.addend,
      q≠top ∧ q≠keeper) :
    let out := (run (hornerKeeperSave ctrl top keeper bs cin) m s).basis
    regValue (bs.map HornerCarryCell.target) out=
      (if s.basis ctrl then (regValue (bs.map HornerCarryCell.target) s.basis+
        regValue (bs.map HornerCarryCell.addend) s.basis+((cin.map s.basis).getD false).toNat)%2^bs.length
        else regValue (bs.map HornerCarryCell.target) s.basis) ∧
    regValue (bs.map HornerCarryCell.addend) out=regValue (bs.map HornerCarryCell.addend) s.basis := by
  dsimp only
  rw [hornerKeeperSave_run _ _ _ _ _ _ _ distinct clean separate]
  have word (r : List Wire) (sub : ∀q∈r,q∈bs.map HornerCarryCell.target++bs.map HornerCarryCell.addend) :
      regValue r (fun q => hornerCarryResult ctrl true true bs cin s.basis (Equiv.swap top keeper q))=
        regValue r (hornerCarryResult ctrl true true bs cin s.basis) := by
    apply regValue_congr
    intro q hq
    rw [Equiv.swap_apply_of_ne_of_ne (dataAway q (sub q hq)).1 (dataAway q (sub q hq)).2]
  rw [word _ (fun q hq => List.mem_append_left _ hq),word _ (fun q hq => List.mem_append_right _ hq)]
  exact ⟨by simpa only [Bool.true_and] using hornerCarryResult_value ctrl true true bs cin s.basis distinct,
    hornerCarryResult_addend ctrl true true bs cin s.basis distinct⟩

/-- All sites outside the block and the keeper move are preserved. -/
theorem hornerKeeperSave_frame (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (ctrl::(cin.toList++hornerCarryPorts bs)).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) (separate : top≠keeper)
    (q : Wire) (away : q∉hornerCarryPorts bs) (qt : q≠top) (qk : q≠keeper) :
    (run (hornerKeeperSave ctrl top keeper bs cin) m s).basis q=s.basis q := by
  rw [hornerKeeperSave_run _ _ _ _ _ _ _ distinct clean separate]
  change hornerCarryResult ctrl true true bs cin s.basis (Equiv.swap top keeper q)=s.basis q
  rw [Equiv.swap_apply_of_ne_of_ne qt qk]
  exact (hornerCarryFinishSweep_frame ctrl true true bs cin _ q away).trans
    (hornerCarryAdvance_block_frame bs cin s.basis q away)

end ECDSAAdd.Arithmetic.Paper935
