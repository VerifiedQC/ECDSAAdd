import ECDSAAdd.Arithmetic.Paper935.HornerKeeperSave
import ECDSAAdd.Arithmetic.Paper935.HornerKeeperErase

namespace ECDSAAdd.Arithmetic.Paper935

/-- First forward block's source erase spelling uses ctrl as its incoming
carry and performs no previous-keeper dressing. All intermediate integer
conditions are derived from the actual block/save execution. -/
theorem hornerKeeperFirst_erase (ctrl top keeper : Wire) (bs : List HornerCarryCell)
    (s : State) (m n : List Bool)
    (distinct : (ctrl::keeper::hornerCarryPorts bs).Nodup)
    (clean : ∀b∈bs,s.basis b.carry=false) (zero : s.basis keeper=false)
    (separate : top≠keeper) (ctrlTop : ctrl≠top)
    (isTop : hornerCarryTop bs none=some top)
    (dataAway : ∀q∈bs.map HornerCarryCell.target++bs.map HornerCarryCell.addend,
      q≠top ∧ q≠keeper)
    (dressND : (ctrl::bs.map HornerCarryCell.addend).Nodup)
    (carryAway : ∀b∈bs,b.carry∉bs.map HornerCarryCell.addend)
    (targetOutside : ∀q∈bs.map HornerCarryCell.target,q∉bs.map HornerCarryCell.addend) :
    let t := run (hornerKeeperSave ctrl top keeper bs none) m s
    run (hornerKeeperErase ctrl keeper (bs.map HornerCarryCell.addend) none bs (some ctrl)) n t=
      ⟨s.phase,writeBit t.basis keeper false⟩ := by
  let t := run (hornerKeeperSave ctrl top keeper bs none) m s
  have base : (ctrl::((none : Option Wire).toList++hornerCarryPorts bs)).Nodup := by
    exact distinct.sublist (by simp)
  have ctrlKeeper : ctrl≠keeper := fun h => (List.nodup_cons.mp distinct).1 (by simp [h])
  have keeperAway := (List.nodup_cons.mp (List.nodup_cons.mp distinct).2).1
  have ctrlAway : ctrl∉hornerCarryPorts bs := fun h =>
    (List.nodup_cons.mp distinct).1 (List.mem_cons_of_mem keeper h)
  have eraseND : (keeper::((some ctrl).toList++hornerCarryPorts bs)).Nodup := by
    simpa only [Option.toList_some,List.cons_append,List.nil_append] using
      (List.Perm.swap keeper ctrl (hornerCarryPorts bs)).nodup_iff.mp distinct
  have tc : t.basis ctrl=s.basis ctrl := hornerKeeperSave_frame ctrl top keeper bs none s m base clean separate
    ctrl ctrlAway ctrlTop ctrlKeeper
  have tz : ∀b∈bs,t.basis b.carry=false := hornerKeeperSave_clean ctrl top keeper bs none s m base clean separate isTop keeperAway zero
  have words := hornerKeeperSave_words ctrl top keeper bs none s m base clean separate dataAway
  have saved := hornerKeeperSave_value ctrl top keeper bs none s m base clean separate isTop
  rw [hornerWordCarry_overflow] at saved
  have kd : keeper∉bs.map HornerCarryCell.addend := by
    intro h
    exact (dataAway keeper (List.mem_append_right _ h)).2 rfl
  have input : ((some ctrl).map (fun q => if q∈bs.map HornerCarryCell.addend++(none : Option Wire).toList
      then t.basis q ^^ t.basis ctrl else t.basis q)).getD false=(false ^^ t.basis ctrl) := by
    simp only [Option.map_some,Option.getD_some,Option.toList_none,List.append_nil,
      if_neg (List.nodup_cons.mp dressND).1,Bool.false_xor]
  have result := hornerKeeperErase_from_sum ctrl keeper (bs.map HornerCarryCell.addend) none bs (some ctrl) t n
    (regValue (bs.map HornerCarryCell.target) s.basis) (regValue (bs.map HornerCarryCell.addend) s.basis) false
    eraseND (by simpa using dressND) ctrlKeeper (by simpa using kd) (by simpa using carryAway) tz
    (by simpa only [List.length_map] using regValue_lt (bs.map HornerCarryCell.target) s.basis)
    (by simpa only [List.length_map] using regValue_lt (bs.map HornerCarryCell.addend) s.basis)
    (by simpa using saved) (by simpa only [tc,Option.map_none,Option.getD_none] using words.1)
    words.2 (by simpa using targetOutside) (by intro q h; simpa using h) input
  have phase : t.phase=s.phase := by dsimp only [t]; rw [hornerKeeperSave_run _ _ _ _ _ _ _ base clean separate]
  simpa only [phase] using result

end ECDSAAdd.Arithmetic.Paper935
