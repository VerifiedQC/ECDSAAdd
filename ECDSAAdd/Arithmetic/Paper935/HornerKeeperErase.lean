import ECDSAAdd.Arithmetic.Paper935.HornerCarryOracle
import ECDSAAdd.Arithmetic.Paper935.HornerDress
import ECDSAAdd.Arithmetic.Paper935.HornerKeeperMath

namespace ECDSAAdd.Arithmetic.Paper935

/-- The dressing list contains the addend word and, for non-first blocks,
the previous keeper, in the source's order. -/
def hornerKeeperErase (ctrl keeper : Wire) (dress : List Wire) (prev : Option Wire)
    (bs : List HornerCarryCell) (cin : Option Wire) : Program :=
  hornerDress ctrl (dress++prev.toList) ++ hornerKeeperToggle ctrl keeper bs cin ++ hornerDress ctrl (prev.toList++dress)

/-- Full emitted dressing/recompute/erase/undressing sequence. The arithmetic
keeper condition is stated on an explicit pointwise dressing, not on execution. -/
theorem hornerKeeperErase_run (ctrl keeper : Wire) (dress : List Wire) (prev : Option Wire)
    (bs : List HornerCarryCell) (cin : Option Wire) (s : State) (m : List Bool)
    (distinct : (keeper::(cin.toList++hornerCarryPorts bs)).Nodup)
    (dressND : (ctrl::(dress++prev.toList)).Nodup) (separate : ctrl≠keeper)
    (keeperAway : keeper∉dress++prev.toList) (carryAway : ∀b∈bs,b.carry∉dress++prev.toList)
    (clean : ∀b∈bs,s.basis b.carry=false)
    (known : hornerWordCarry bs
      ((cin.map (fun q => if q∈dress++prev.toList then s.basis q ^^ s.basis ctrl else s.basis q)).getD false)
      (fun q => if q∈dress++prev.toList then s.basis q ^^ s.basis ctrl else s.basis q)=
        (s.basis keeper ^^ s.basis ctrl)) :
    run (hornerKeeperErase ctrl keeper dress prev bs cin) m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  let t : State := ⟨s.phase,fun q => if q∈dress++prev.toList then s.basis q ^^ s.basis ctrl else s.basis q⟩
  have undoND : (ctrl::(prev.toList++dress)).Nodup := by
    apply List.nodup_cons.mpr
    constructor
    · simpa only [List.mem_append,or_comm] using (List.nodup_cons.mp dressND).1
    · exact List.nodup_append_comm.mp (List.nodup_cons.mp dressND).2
  have ctrlAway := (List.nodup_cons.mp dressND).1
  have kt : t.basis keeper=s.basis keeper := by simp [t,keeperAway]
  have ct : t.basis ctrl=s.basis ctrl := by simp [t,ctrlAway]
  have nextClean : ∀b∈bs,t.basis b.carry=false := by
    intro b hb
    simp [t,carryAway b hb,clean b hb]
  have nextKnown : hornerWordCarry bs ((cin.map t.basis).getD false) t.basis=
      (t.basis keeper ^^ t.basis ctrl) := by rw [kt,ct];exact known
  rw [hornerKeeperErase,run_append,run_take,run_append,run_take,
    hornerDress_run ctrl (dress++prev.toList) s m dressND]
  rw [hornerKeeperToggle_clean ctrl keeper bs cin t _ distinct separate nextClean nextKnown,
    hornerDress_run _ _ _ _ undoND]
  apply congrArg (State.mk s.phase)
  funext q
  have reorder (q : Wire) : q∈prev.toList++dress ↔ q∈dress++prev.toList := by
    simp only [List.mem_append,or_comm]
  simp only [reorder]
  by_cases hq : q=keeper
  · subst q; simp [writeBit,keeperAway]
  · by_cases hd : q∈dress++prev.toList <;> simp only [writeBit,Function.update_of_ne hq,
      Function.update_of_ne separate,t,hd,ite_true,ite_false,if_neg ctrlAway,Bool.xor_assoc,Bool.xor_self,Bool.xor_false]


/-- The arithmetic recomputation condition follows from the low sum and
original addend/input-carry invariants. No predicate on a circuit result is
assumed. First-block versus later-block dressing must establish these inputs. -/
theorem hornerKeeperErase_of_values (ctrl keeper : Wire) (dress : List Wire) (prev : Option Wire)
    (bs : List HornerCarryCell) (cin : Option Wire) (s : State) (m : List Bool)
    (a e : Nat) (c : Bool)
    (distinct : (keeper::(cin.toList++hornerCarryPorts bs)).Nodup)
    (dressND : (ctrl::(dress++prev.toList)).Nodup) (separate : ctrl≠keeper)
    (keeperAway : keeper∉dress++prev.toList) (carryAway : ∀b∈bs,b.carry∉dress++prev.toList)
    (clean : ∀b∈bs,s.basis b.carry=false)
    (ha : a<2^bs.length) (he : e<2^bs.length)
    (saved : s.basis keeper=decide (2^bs.length≤a+e+c.toNat))
    (low : regValue (bs.map HornerCarryCell.target)
      (fun q => if q∈dress++prev.toList then s.basis q ^^ s.basis ctrl else s.basis q)=
        if s.basis ctrl then (a+e+c.toNat)%2^bs.length else a)
    (addend : regValue (bs.map HornerCarryCell.addend)
      (fun q => if q∈dress++prev.toList then s.basis q ^^ s.basis ctrl else s.basis q)=
        if s.basis ctrl then 2^bs.length-1-e else e)
    (input : (cin.map (fun q => if q∈dress++prev.toList then s.basis q ^^ s.basis ctrl else s.basis q)).getD false=
      (c ^^ s.basis ctrl)) :
    run (hornerKeeperErase ctrl keeper dress prev bs cin) m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  apply hornerKeeperErase_run ctrl keeper dress prev bs cin s m distinct dressND separate keeperAway carryAway clean
  rw [input,saved]
  exact hornerWordCarry_after_sum bs _ a e c (s.basis ctrl) ha he low addend

end ECDSAAdd.Arithmetic.Paper935
