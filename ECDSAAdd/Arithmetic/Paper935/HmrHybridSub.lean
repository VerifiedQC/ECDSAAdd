import ECDSAAdd.Arithmetic.Paper935.HmrHybridInverseCell

namespace ECDSAAdd.Arithmetic.Paper935

/-- Explicit source subtraction: low unwrite/mint, high unmeasured
adjoint, then low release. No measured gate list is reversed. -/
def hmrHybridSub (control : Wire) : List Wire → List Wire → Wire → List Wire → Program
  | a,b,carry,[] => rowSub control a b carry
  | x::xs,y::ys,carry,next::work => hmrHybridUnwrite control x y carry next ++
      hmrHybridSub control xs ys next work ++ hmrHybridUnlift x y carry next
  | _,_,_,_ => []

/-- Subtraction is characterized by its modular inverse equation, with
source/control/carries restored and arbitrary measurement tape. -/
theorem hmrHybridSub_run (control carry : Wire) (a b work : List Wire)
    (nd : (control::carry::(a++b++work)).Nodup) (width : a.length=b.length)
    (room : work.length < b.length) (s : State) (m : List Bool)
    (clean : ∀q∈work,s.basis q=false) :
    let t := run (hmrHybridSub control a b carry work) m s
    t.phase=s.phase ∧ (∀q,q∉b → t.basis q=s.basis q) ∧
    (if s.basis control then
      (regValue a s.basis+regValue b t.basis+(s.basis carry).toNat)%2^b.length else regValue b t.basis)=regValue b s.basis := by
  induction work generalizing carry a b s m with
  | nil =>
    have simple : (control::carry::(a++b)).Nodup := by simpa using nd
    simpa only [hmrHybridSub] using rowSub_run control carry a b simple width s m
  | cons next work ih =>
    cases b with
    | nil => simp at room
    | cons y ys =>
      cases a with
      | nil => simp at width
      | cons x xs =>
        have cnt := List.nodup_iff_count.mp nd
        have localND : [control,carry,x,y,next].Nodup := by
          apply List.nodup_iff_count.mpr
          intro q
          have h := cnt q
          simp only [List.count_cons,List.count_append,List.count_nil] at h ⊢
          omega
        have tailND : (control::next::(xs++ys++work)).Nodup := by
          apply List.nodup_iff_count.mpr
          intro q
          have h := cnt q
          simp only [List.count_cons,List.count_append] at h ⊢
          omega
        have separate (q : Wire) (hq : q∈xs++ys++work) : q∉[x,y,next] := by
          have positive := List.count_pos_iff.mpr hq
          have h := cnt q
          simp only [List.count_cons,List.count_append] at positive h
          simp only [List.mem_cons,List.not_mem_nil,or_false,not_or]
          constructor
          · intro eq; subst q; simp only [beq_self_eq_true,ite_true] at h; omega
          constructor
          · intro eq; subst q; simp only [beq_self_eq_true,ite_true] at h; omega
          · intro eq; subst q; simp only [beq_self_eq_true,ite_true] at h; omega
        have notTail (q : Wire) (hq : q∈[control,carry,x,y,next]) : q∉ys := by
          intro hy
          have h := cnt q
          have py := List.count_pos_iff.mpr hy
          simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
          rcases hq with rfl|rfl|rfl|rfl|rfl <;>
            simp only [List.count_cons,List.count_append,beq_self_eq_true,ite_true] at h <;> omega
        have cn : control∉[x,y,next] := by
          have h := (List.nodup_cons.mp localND).1
          simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at h ⊢
          exact h.2
        have kn : carry∉[x,y,next] := (List.nodup_cons.mp (List.nodup_cons.mp localND).2).1
        let u := run (hmrHybridUnwrite control x y carry next) m s
        let ms := m.drop (measurementCount (hmrHybridUnwrite control x y carry next))
        have lift := hmrHybridUnwrite_run control x y carry next localND s m (clean next (by simp))
        have uc : u.basis control=s.basis control := lift.2.2.2.2 control cn
        have uk : u.basis carry=s.basis carry := lift.2.2.2.2 carry kn
        have ua : regValue xs u.basis=regValue xs s.basis :=
          regValue_congr _ _ _ (fun q hq => lift.2.2.2.2 q (separate q (by simp [hq])))
        have ub : regValue ys u.basis=regValue ys s.basis :=
          regValue_congr _ _ _ (fun q hq => lift.2.2.2.2 q (separate q (by simp [hq])))
        have cleanU : ∀q∈work,u.basis q=false := by
          intro q hq
          exact (lift.2.2.2.2 q (separate q (by simp [hq]))).trans (clean q (by simp [hq]))
        let v := run (hmrHybridSub control xs ys next work) ms u
        have recur := ih next xs ys tailND (by simpa using width) (by simpa using room) u ms cleanU
        have vc : v.basis control=s.basis control := (recur.2.1 control (notTail control (by simp))).trans uc
        have vk : v.basis carry=s.basis carry := (recur.2.1 carry (notTail carry (by simp))).trans uk
        have vx : v.basis x=(s.basis x ^^ s.basis carry) := (recur.2.1 x (notTail x (by simp))).trans lift.2.2.1
        let oldLow := hmrOldLow (s.basis control) (s.basis x) (s.basis y) (s.basis carry)
        have vy : v.basis y=(oldLow ^^ s.basis carry) := (recur.2.1 y (notTail y (by simp))).trans lift.2.2.2.1
        have vn : v.basis next=carryBit (s.basis x) oldLow (s.basis carry) :=
          (recur.2.1 next (notTail next (by simp))).trans lift.2.1
        let rest := ms.drop (measurementCount (hmrHybridSub control xs ys next work))
        let out := run (hmrHybridUnlift x y carry next) rest v
        have drop := hmrHybridUnlift_run x y carry next (List.nodup_cons.mp localND).2 v rest
          (s.basis x) oldLow (s.basis carry) vk vx vy vn
        have tailValue : (if s.basis control then
            (regValue xs s.basis+regValue ys out.basis+(carryBit (s.basis x) oldLow (s.basis carry)).toNat)%2^ys.length
            else regValue ys out.basis)=regValue ys s.basis := by
          rw [regValue_congr ys out.basis v.basis (fun q hq => drop.2.2.2.2 q (separate q (by simp [hq])))]
          have recurValue := recur.2.2
          rw [uc,ua,ub,lift.2.1] at recurValue
          exact recurValue
        have frame (q : Wire) (hq : q∉y::ys) : out.basis q=s.basis q := by
          by_cases hx : q=x
          · subst q; exact drop.2.1
          by_cases hn : q=next
          · subst q; exact drop.2.2.1.trans (clean next (by simp)).symm
          have apart : q∉[x,y,next] := by
            simp only [List.mem_cons,List.not_mem_nil,or_false,not_or]
            exact ⟨hx,fun eq => hq (by simp [eq]),hn⟩
          exact (drop.2.2.2.2 q apart).trans
            ((recur.2.1 q (fun h => hq (List.mem_cons_of_mem y h))).trans (lift.2.2.2.2 q apart))
        have exec : run (hmrHybridSub control (x::xs) (y::ys) carry (next::work)) m s=out := by
          rw [hmrHybridSub,List.append_assoc,run_append,run_take,run_append,run_take]
        rw [exec]
        refine ⟨drop.1.trans (recur.1.trans lift.1),frame,?_⟩
        cases flag : s.basis control
        · change regValue (y::ys) out.basis=regValue (y::ys) s.basis
          change (if out.basis y then 1 else 0)+2*regValue ys out.basis=_
          rw [drop.2.2.2.1]
          have low : oldLow=s.basis y := by simp [oldLow,hmrOldLow,flag]
          rw [low]
          simpa only [flag,ite_false,regValue,List.foldr_cons] using congrArg (fun n => (if s.basis y then 1 else 0)+2*n) tailValue
        · change (regValue (x::xs) s.basis+regValue (y::ys) out.basis+(s.basis carry).toNat)%2^(y::ys).length=_
          have combine := sum_value_step (s.basis x) oldLow (s.basis carry)
            (regValue xs s.basis) (regValue ys out.basis) ys.length
          have low : sumBit (s.basis x) oldLow (s.basis carry)=s.basis y := by
            simpa only [oldLow,flag] using hmrOldLow_sum (s.basis x) (s.basis y) (s.basis carry)
          simp only [flag,ite_true] at tailValue
          rw [low,tailValue] at combine
          have outLow : out.basis y=oldLow := drop.2.2.2.1
          simpa only [regValue,List.foldr_cons,outLow,Bool.toNat,Bool.cond_eq_ite,List.length_cons] using combine.symm

end ECDSAAdd.Arithmetic.Paper935
