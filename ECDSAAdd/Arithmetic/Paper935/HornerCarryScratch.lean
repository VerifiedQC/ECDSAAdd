import ECDSAAdd.Arithmetic.Paper935.HornerCarryHigh

namespace ECDSAAdd.Arithmetic.Paper935

/-- Every carry scratch except the explicitly retained top is zero after
the descending sweep. This is independent of the input carry values. -/
theorem hornerCarryFinishSweep_clean (ctrl : Wire) (sums : Bool)
    (bs : List HornerCarryCell) (cin : Option Wire) (s : BasisState)
    (distinct : (hornerCarryPorts bs).Nodup) (q : Wire)
    (member : q∈bs.map HornerCarryCell.carry)
    (notTop : some q≠hornerCarryTop bs cin) :
    hornerCarryFinishSweep ctrl sums true bs cin s q=false := by
  induction bs generalizing cin with
  | nil => simp at member
  | cons b bs ih =>
    have body : ([b.target,b.addend,b.carry]++hornerCarryPorts bs).Nodup := distinct
    have tail := (List.nodup_append.mp body).2.1
    simp only [List.map_cons,List.mem_cons] at member
    rcases member with rfl|member
    · have hat : b.carry≠b.target := fun h => (List.nodup_cons.mp body).1 (by simp [h])
      have het : b.carry≠b.addend := fun h => (List.nodup_cons.mp (List.nodup_cons.mp body).2).1 (by simp [h])
      cases bs with
      | nil => exact False.elim (notTop rfl)
      | cons d ds => simp [hornerCarryFinishSweep,hornerCarryFinish,writeBit,hat,het]
    · have hp : q∈hornerCarryPorts bs := by
        obtain ⟨d,hd,rfl⟩ := List.mem_map.mp member
        exact List.mem_flatMap.mpr ⟨d,hd,by simp⟩
      have dis := (List.nodup_append.mp body).2.2
      rw [hornerCarryFinishSweep,hornerCarryFinish_frame _ _ _ _ _ _ _ _ q
        (Ne.symm (dis _ (by simp) q hp)) (Ne.symm (dis _ (by simp) q hp))
        (Ne.symm (dis _ (by simp) q hp))]
      exact ih (some b.carry) tail member notTop

end ECDSAAdd.Arithmetic.Paper935
