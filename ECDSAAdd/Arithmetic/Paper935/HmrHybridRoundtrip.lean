import ECDSAAdd.Arithmetic.Paper935.HmrHybridSub
import ECDSAAdd.Arithmetic.Paper935.HmrHybridCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrHybrid_frame_geometry (control carry : Wire) (a b work : List Wire)
    (nd : (control::carry::(a++b++work)).Nodup) :
    control∉b ∧ carry∉b ∧ a.Disjoint b ∧ work.Disjoint b := by
  have hn := List.nodup_cons.mp nd
  have hk := List.nodup_cons.mp hn.2
  have pair := List.nodup_append'.mp hk.2
  have ab := List.nodup_append'.mp pair.1
  refine ⟨?_,?_,ab.2.2,?_⟩
  · intro h; exact hn.1 (List.mem_cons_of_mem carry (List.mem_append_left _ (List.mem_append_right _ h)))
  · intro h; exact hk.1 (List.mem_append_left _ (List.mem_append_right _ h))
  · exact List.disjoint_left.mpr (fun q hw hb => List.disjoint_left.mp pair.2.2 (List.mem_append_right _ hb) hw)

theorem hmrHybrid_add_after_sub (control carry : Wire) (a b work : List Wire)
    (nd : (control::carry::(a++b++work)).Nodup) (width : a.length=b.length)
    (room : work.length < b.length) (s : State) (m n : List Bool)
    (clean : ∀q∈work,s.basis q=false) :
    run (hmrHybridRow control a b carry work) n (run (hmrHybridSub control a b carry work) m s)=s := by
  let u := run (hmrHybridSub control a b carry work) m s
  have sub := hmrHybridSub_run control carry a b work nd width room s m clean
  have geometry := hmrHybrid_frame_geometry control carry a b work nd
  have cleanU : ∀q∈work,u.basis q=false := fun q hq =>
    (sub.2.1 q (List.disjoint_left.mp geometry.2.2.2 hq)).trans (clean q hq)
  have add := hmrHybridRow_run control carry a b work nd width room u n cleanU
  have source : regValue a u.basis=regValue a s.basis := regValue_congr _ _ _
    (fun q hq => sub.2.1 q (List.disjoint_left.mp geometry.2.2.1 hq))
  have value : regValue b (run (hmrHybridRow control a b carry work) n u).basis=regValue b s.basis := by
    rw [add.2.2,source,sub.2.1 control geometry.1,sub.2.1 carry geometry.2.1]
    exact sub.2.2
  have phase := add.1.trans sub.1
  have basis : (run (hmrHybridRow control a b carry work) n u).basis=s.basis := by
    funext q
    by_cases hq : q∈b
    · exact (regValue_eq_iff b _ _).mp value q hq
    · exact (add.2.1 q hq).trans (sub.2.1 q hq)
  cases outEq : run (hmrHybridRow control a b carry work) n u with
  | mk p bs =>
    rw [outEq] at phase basis
    cases s
    simp_all

theorem hmrHybrid_sub_after_add (control carry : Wire) (a b work : List Wire)
    (nd : (control::carry::(a++b++work)).Nodup) (width : a.length=b.length)
    (room : work.length < b.length) (s : State) (m n : List Bool)
    (clean : ∀q∈work,s.basis q=false) :
    run (hmrHybridSub control a b carry work) n (run (hmrHybridRow control a b carry work) m s)=s := by
  let u := run (hmrHybridRow control a b carry work) m s
  let out := run (hmrHybridSub control a b carry work) n u
  have add := hmrHybridRow_run control carry a b work nd width room s m clean
  have geometry := hmrHybrid_frame_geometry control carry a b work nd
  have cleanU : ∀q∈work,u.basis q=false := fun q hq =>
    (add.2.1 q (List.disjoint_left.mp geometry.2.2.2 hq)).trans (clean q hq)
  have sub := hmrHybridSub_run control carry a b work nd width room u n cleanU
  have source : regValue a u.basis=regValue a s.basis := regValue_congr _ _ _
    (fun q hq => add.2.1 q (List.disjoint_left.mp geometry.2.2.1 hq))
  have value : regValue b out.basis=regValue b s.basis := by
    have equation := sub.2.2
    rw [source,add.2.1 control geometry.1,add.2.1 carry geometry.2.1,add.2.2] at equation
    cases flag : s.basis control
    · simpa only [flag,ite_false] using equation
    · simp only [flag,ite_true] at equation
      have congruent : Nat.ModEq (2^b.length) (regValue b out.basis) (regValue b s.basis) :=
        Nat.ModEq.add_left_cancel' (regValue a s.basis)
          (Nat.ModEq.add_right_cancel' (s.basis carry).toNat equation)
      change regValue b out.basis % 2^b.length=regValue b s.basis % 2^b.length at congruent
      simpa only [Nat.mod_eq_of_lt (regValue_lt b out.basis),Nat.mod_eq_of_lt (regValue_lt b s.basis)] using congruent
  have phase := sub.1.trans add.1
  have basis : out.basis=s.basis := by
    funext q
    by_cases hq : q∈b
    · exact (regValue_eq_iff b _ _).mp value q hq
    · exact (sub.2.1 q hq).trans (add.2.1 q hq)
  change out.phase=s.phase at phase
  change out=s
  cases outEq : out with
  | mk p bs =>
    rw [outEq] at phase basis
    cases s
    simp_all

end ECDSAAdd.Arithmetic.Paper935
