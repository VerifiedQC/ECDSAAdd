import ECDSAAdd.Arithmetic.Paper935.HornerCarryHigh

namespace ECDSAAdd.Arithmetic.Paper935

/-- Forward carry, XOR the highest carry into a separate flag, and erase
all temporary carries in the author's descending measured order. -/
def hornerCarryOracle (flag : Wire) (bs : List HornerCarryCell) (cin : Option Wire) : Program :=
  hornerCarrySweep bs cin ++ ((hornerCarryTop bs cin).toList.map fun d => .CX d flag) ++
    hornerCarryUnsweep flag false false bs cin

private theorem advance_write (bs : List HornerCarryCell) (cin : Option Wire)
    (s : BasisState) (flag : Wire) (v : Bool)
    (away : flag ∉ cin.toList++hornerCarryPorts bs) :
    hornerCarryAdvance bs cin (writeBit s flag v)=writeBit (hornerCarryAdvance bs cin s) flag v := by
  induction bs generalizing cin s with
  | nil => rfl
  | cons b bs ih =>
    have ha : b.target≠flag := fun h => away (by simp [hornerCarryPorts,h])
    have he : b.addend≠flag := fun h => away (by simp [hornerCarryPorts,h])
    have ht : b.carry≠flag := fun h => away (by simp [hornerCarryPorts,h])
    have hc : (cin.map (writeBit s flag v)).getD false=(cin.map s).getD false := by
      cases cin with
      | none => rfl
      | some d =>
        have hd : d≠flag := fun h => away (by simp [h])
        simp [writeBit,hd]
    simp only [writeBit] at hc
    have cell : b.advance cin (writeBit s flag v)=writeBit (b.advance cin s) flag v := by
      simp only [HornerCarryCell.advance,writeBit,hc,Function.update_of_ne ha,Function.update_of_ne he]
      funext q
      by_cases hq : q=flag
      · subst q; simp [Function.update,Ne.symm ha,Ne.symm he,Ne.symm ht]
      · simp [Function.update,hq]
    have next : flag∉(some b.carry).toList++hornerCarryPorts bs := by
      intro h
      apply away
      simp only [Option.toList_some,List.cons_append,List.nil_append,List.mem_cons] at h
      rcases h with h|h
      · simp [hornerCarryPorts,h]
      · exact List.mem_append_right _ (List.mem_append_right _ h)
    simp only [hornerCarryAdvance,cell]
    exact ih (some b.carry) (b.advance cin s) next

/-- Actual compute-copy-measured-uncompute semantics, with arbitrary tape. -/
theorem hornerCarryOracle_run (flag : Wire) (bs : List HornerCarryCell) (cin : Option Wire)
    (s : State) (m : List Bool)
    (distinct : (flag::(cin.toList++hornerCarryPorts bs)).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) :
    run (hornerCarryOracle flag bs cin) m s=
      ⟨s.phase,writeBit s.basis flag (s.basis flag ^^ hornerWordCarry bs ((cin.map s.basis).getD false) s.basis)⟩ := by
  let v := s.basis flag ^^ hornerWordCarry bs ((cin.map s.basis).getD false) s.basis
  let t : State := ⟨s.phase,writeBit s.basis flag v⟩
  have away := (List.nodup_cons.mp distinct).1
  have geometry := hornerCarryGeometry_of_nodup flag bs cin distinct
  have ready := hornerCarryEraseReady_of_geometry flag bs cin s.basis geometry clean
  have nextClean : ∀b∈bs,t.basis b.carry=false := by
    intro b hb
    have hf : b.carry≠flag := fun h => away (List.mem_append_right _
      (List.mem_flatMap.mpr ⟨b,hb,by simp [h]⟩))
    simpa [t,writeBit,hf] using clean b hb
  have nextReady := hornerCarryEraseReady_of_geometry flag bs cin t.basis geometry nextClean
  have flagSame : hornerCarryAdvance bs cin s.basis flag=s.basis flag :=
    hornerCarryAdvance_block_frame bs cin s.basis flag (fun h => away (List.mem_append_right _ h))
  have top := hornerCarryAdvance_top bs cin s.basis (List.nodup_cons.mp distinct).2
  have middle (ms : List Bool) :
      run ((hornerCarryTop bs cin).toList.map fun d => Instr.CX d flag) ms
        ⟨s.phase,hornerCarryAdvance bs cin s.basis⟩=
        ⟨t.phase,hornerCarryAdvance bs cin t.basis⟩ := by
    dsimp only [t]
    rw [advance_write _ _ _ _ _ away]
    cases ht : hornerCarryTop bs cin with
    | none =>
      simp only [ht,Option.map_none,Option.getD_none] at top
      simp [run,←top,v,writeBit,flagSame]
    | some q =>
      simp only [ht,Option.map_some,Option.getD_some] at top
      simp [run,flagSame,v,top]
  rw [hornerCarryOracle,run_append,run_take,run_append,run_take,
    hornerCarrySweep_run bs cin s m (hornerCarryEraseReady_forward _ _ _ _ ready),middle]
  exact hornerCarryUnsweep_erase flag bs cin t _ nextReady

/-- Recompute a carry into a keeper and apply the author's extra control
XOR. Dressing of the operands and incoming carry is a separate stage. -/
def hornerKeeperToggle (ctrl keeper : Wire) (bs : List HornerCarryCell) (cin : Option Wire) : Program :=
  hornerCarryOracle keeper bs cin ++ [.CX ctrl keeper]

/-- Under the keeper identity, the actual recomputation and measured cleanup
clear only the keeper and leave the phase unchanged. -/
theorem hornerKeeperToggle_clean (ctrl keeper : Wire) (bs : List HornerCarryCell)
    (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (keeper::(cin.toList++hornerCarryPorts bs)).Nodup)
    (separate : ctrl≠keeper) (clean : ∀b∈bs,s.basis b.carry=false)
    (known : hornerWordCarry bs ((cin.map s.basis).getD false) s.basis=(s.basis keeper ^^ s.basis ctrl)) :
    run (hornerKeeperToggle ctrl keeper bs cin) m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  rw [hornerKeeperToggle,run_append,run_take,hornerCarryOracle_run _ _ _ _ _ distinct clean]
  simp [run,writeBit,separate,known]

end ECDSAAdd.Arithmetic.Paper935
