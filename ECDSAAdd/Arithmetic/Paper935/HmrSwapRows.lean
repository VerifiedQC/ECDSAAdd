import ECDSAAdd.Arithmetic.Paper935.HmrPlainRotate

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source F2 emits a complete CSWAP for each wire pair, before advancing
to the next pair. This is distinct from batched register-copy layers. -/
def hmrSwapRows (control : Wire) : List Wire → List Wire → Program
  | a::as,b::bs => cswap control a b ++ hmrSwapRows control as bs
  | _,_ => []

theorem hmrSwapRows_counts (control : Wire) (as bs : List Wire) :
    toffoliCount (hmrSwapRows control as bs)=min as.length bs.length ∧
    measurementCount (hmrSwapRows control as bs)=0 := by
  induction as generalizing bs with
  | nil => simp [hmrSwapRows,toffoliCount,measurementCount]
  | cons a as ih => cases bs with
    | nil => simp [hmrSwapRows,toffoliCount,measurementCount]
    | cons b bs =>
      simp [hmrSwapRows,cswap,
        toffoliCount,measurementCount,ih,Nat.add_comm]

theorem hmrSwapRows_frame (control : Wire) (as bs : List Wire) (s : State) (m : List Bool) :
    (run (hmrSwapRows control as bs) m s).phase=s.phase ∧
    ∀q,q∉as → q∉bs → (run (hmrSwapRows control as bs) m s).basis q=s.basis q := by
  induction as generalizing bs s with
  | nil => simp [hmrSwapRows,run]
  | cons a as ih => cases bs with
    | nil => simp [hmrSwapRows,run]
    | cons b bs =>
      let t := run (cswap control a b) m s
      have tail := ih bs t
      rw [hmrSwapRows,run_append,run_take]
      refine ⟨tail.1,?_⟩
      intro q qa qb
      have na : q≠a ∧ q∉as := by simpa only [List.mem_cons,not_or] using qa
      have nb : q≠b ∧ q∉bs := by simpa only [List.mem_cons,not_or] using qb
      change (run (hmrSwapRows control as bs) m t).basis q=_
      rw [tail.2 q na.2 nb.2]
      simp [t,cswap,run,writeBit,na.1,nb.1]

theorem hmrSwapRows_values (control : Wire) (as bs : List Wire)
    (nd : (control::(as++bs)).Nodup) (len : as.length=bs.length) (s : State) (m : List Bool) :
    regValue as (run (hmrSwapRows control as bs) m s).basis=
      (if s.basis control then regValue bs s.basis else regValue as s.basis) ∧
    regValue bs (run (hmrSwapRows control as bs) m s).basis=
      (if s.basis control then regValue as s.basis else regValue bs s.basis) := by
  induction as generalizing bs s with
  | nil => cases bs <;> simp_all [hmrSwapRows,run]
  | cons a as ih => cases bs with
    | nil => simp at len
    | cons b bs =>
      have n := List.nodup_cons.mp nd
      have aND := List.nodup_cons.mp n.2
      have pair := List.nodup_append'.mp aND.2
      have bND := List.nodup_cons.mp pair.2.1
      have ca : control≠a := fun eq => n.1 (by simp [eq])
      have cb : control≠b := fun eq => n.1 (by simp [eq])
      have ab : a≠b := fun eq => aND.1 (by simp [eq])
      have localND : [control,a,b].Nodup := by simp [ca,cb,ab]
      have tailND : (control::(as++bs)).Nodup := by
        apply List.nodup_cons.mpr
        refine ⟨?_,List.nodup_append'.mpr ⟨pair.1,bND.2,?_⟩⟩
        · intro h; apply n.1; simp only [List.mem_append,List.mem_cons] at h ⊢; tauto
        · exact List.disjoint_left.mpr (fun q hq hb => List.disjoint_left.mp pair.2.2 hq (List.mem_cons_of_mem b hb))
      let t := run (cswap control a b) m s
      have swapped := cswap_correct control a b localND s m
      have tail := ih bs tailND (by simpa using len) t
      have aTail : a∉as := fun h => aND.1 (List.mem_append_left _ h)
      have aOther : a∉bs := fun h => aND.1 (List.mem_append_right _ (List.mem_cons_of_mem b h))
      have bTail : b∉as := fun h => List.disjoint_left.mp pair.2.2 h (by simp)
      have av : regValue as t.basis=regValue as s.basis := regValue_congr _ _ _ (by
        intro q hq; exact swapped.2.1 q (fun eq => aTail (eq ▸ hq)) (fun eq => bTail (eq ▸ hq)))
      have bv : regValue bs t.basis=regValue bs s.basis := regValue_congr _ _ _ (by
        intro q hq; exact swapped.2.1 q (fun eq => aOther (eq ▸ hq)) (fun eq => bND.1 (eq ▸ hq)))
      have ac := (hmrSwapRows_frame control as bs t m).2 a aTail aOther
      have bc := (hmrSwapRows_frame control as bs t m).2 b bTail bND.1
      have cc : t.basis control=s.basis control := swapped.2.1 control ca cb
      rw [hmrSwapRows,run_append,run_take]
      change ((if (run (hmrSwapRows control as bs) m t).basis a then 1 else 0)+
          2*regValue as (run (hmrSwapRows control as bs) m t).basis=_) ∧
        ((if (run (hmrSwapRows control as bs) m t).basis b then 1 else 0)+
          2*regValue bs (run (hmrSwapRows control as bs) m t).basis=_)
      rw [ac,bc,tail.1,tail.2,cc,av,bv,swapped.2.2.1,swapped.2.2.2]
      cases s.basis control <;> simp [regValue]

end ECDSAAdd.Arithmetic.Paper935
