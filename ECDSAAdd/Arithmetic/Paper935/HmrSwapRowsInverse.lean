import ECDSAAdd.Arithmetic.Paper935.HmrSwapRows

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source R16 repeats each pair's CSWAP in ascending pair order; it does
not reverse the entire forward gate list. Disjoint pairs make this exact. -/
theorem hmrSwapRows_twice (control : Wire) (as bs : List Wire)
    (nd : (control::(as++bs)).Nodup) (len : as.length=bs.length)
    (s : State) (m n : List Bool) :
    run (hmrSwapRows control as bs) n (run (hmrSwapRows control as bs) m s)=s := by
  let t := run (hmrSwapRows control as bs) m s
  have one := hmrSwapRows_values control as bs nd len s m
  have two := hmrSwapRows_values control as bs nd len t n
  have frameOne := hmrSwapRows_frame control as bs s m
  have frameTwo := hmrSwapRows_frame control as bs t n
  have hn := (List.nodup_cons.mp nd).1
  have ca : control∉as := fun h => hn (List.mem_append_left _ h)
  have cb : control∉bs := fun h => hn (List.mem_append_right _ h)
  have cc : t.basis control=s.basis control := frameOne.2 control ca cb
  have va : regValue as (run (hmrSwapRows control as bs) n t).basis=regValue as s.basis := by
    rw [two.1,cc,one.1,one.2]; cases s.basis control <;> rfl
  have vb : regValue bs (run (hmrSwapRows control as bs) n t).basis=regValue bs s.basis := by
    rw [two.2,cc,one.1,one.2]; cases s.basis control <;> rfl
  apply congrArg₂ State.mk
  · exact frameTwo.1.trans frameOne.1
  · funext q
    change (run (hmrSwapRows control as bs) n t).basis q=s.basis q
    by_cases qa : q∈as
    · exact (regValue_eq_iff as _ _).mp va q qa
    by_cases qb : q∈bs
    · exact (regValue_eq_iff bs _ _).mp vb q qb
    exact (frameTwo.2 q qa qb).trans (frameOne.2 q qa qb)

theorem hmrSwapRows_proper (control : Wire) (as bs : List Wire)
    (nd : (control::(as++bs)).Nodup) : ProperProgram (hmrSwapRows control as bs) := by
  induction as generalizing bs with
  | nil => simp [hmrSwapRows,ProperProgram]
  | cons a as ih => cases bs with
    | nil => simp [hmrSwapRows,ProperProgram]
    | cons b bs =>
      have n := List.nodup_cons.mp nd
      have aND := List.nodup_cons.mp n.2
      have pair := List.nodup_append'.mp aND.2
      have bND := List.nodup_cons.mp pair.2.1
      have cb : control≠b := fun eq => n.1 (by simp [eq])
      have ab : a≠b := fun eq => aND.1 (by simp [eq])
      have tailND : (control::(as++bs)).Nodup := by
        apply List.nodup_cons.mpr
        refine ⟨?_,List.nodup_append'.mpr ⟨pair.1,bND.2,?_⟩⟩
        · intro h; apply n.1; simp only [List.mem_append,List.mem_cons] at h ⊢; tauto
        · exact List.disjoint_left.mpr (fun q hq hb => List.disjoint_left.mp pair.2.2 hq (List.mem_cons_of_mem b hb))
      rw [hmrSwapRows,properProgram_append]
      exact ⟨by simp [cswap,ProperProgram,ProperGate,cb,ab,Ne.symm ab],ih bs tailND⟩

end ECDSAAdd.Arithmetic.Paper935
