import ECDSAAdd.Arithmetic.Paper935.HmrHybridSubCinCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrHybridRoundtrip

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrHybridCin_add_after_sub (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    run (hmrHybridRowCin control cin carry a b work) n (run (hmrHybridSubCin control cin carry a b work) m s)=s := by
  let u := run (hmrHybridSubCin control cin carry a b work) m s
  have sub := compileHmrHybridCin_sub_run A B control cin carry a b work h s m ready zero
  have hc := compileHmrHybridCin_contract A B control cin carry a b work h
  have nd := (compileHmrHybridRow_geometry A B control carry a b work hc.2.2).1
  have geometry := hmrHybrid_frame_geometry control carry a b work nd
  have cinApart : cin∉b := fun hb => (List.nodup_cons.mp hc.1).1 (by simp [hb])
  have readyU := (compileHmrHybridCin_sub_return A B control cin carry a b work h s m ready zero).1
  have zeroU : u.basis carry=false := (sub.2.1 carry geometry.2.1).trans zero
  have add := compileHmrHybridCin_run A B control cin carry a b work h u n readyU zeroU
  have source : regValue a u.basis=regValue a s.basis := regValue_congr _ _ _
    (fun q hq => sub.2.1 q (List.disjoint_left.mp geometry.2.2.1 hq))
  have value : regValue b (run (hmrHybridRowCin control cin carry a b work) n u).basis=regValue b s.basis := by
    rw [add.2.2,source,sub.2.1 control geometry.1,sub.2.1 cin cinApart]
    exact sub.2.2
  have phase := add.1.trans sub.1
  have basis : (run (hmrHybridRowCin control cin carry a b work) n u).basis=s.basis := by
    funext q
    by_cases hq : q∈b
    · exact (regValue_eq_iff b _ _).mp value q hq
    · exact (add.2.1 q hq).trans (sub.2.1 q hq)
  cases outEq : run (hmrHybridRowCin control cin carry a b work) n u with
  | mk p bs =>
    rw [outEq] at phase basis
    cases s
    simp_all

theorem compileHmrHybridCin_sub_after_add (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCin A control cin carry a b=some (B,work))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    run (hmrHybridSubCin control cin carry a b work) n (run (hmrHybridRowCin control cin carry a b work) m s)=s := by
  let u := run (hmrHybridRowCin control cin carry a b work) m s
  let out := run (hmrHybridSubCin control cin carry a b work) n u
  have add := compileHmrHybridCin_run A B control cin carry a b work h s m ready zero
  have hc := compileHmrHybridCin_contract A B control cin carry a b work h
  have nd := (compileHmrHybridRow_geometry A B control carry a b work hc.2.2).1
  have geometry := hmrHybrid_frame_geometry control carry a b work nd
  have cinApart : cin∉b := fun hb => (List.nodup_cons.mp hc.1).1 (by simp [hb])
  have readyU := (compileHmrHybridCin_return A B control cin carry a b work h s m ready zero).1
  have zeroU : u.basis carry=false := (add.2.1 carry geometry.2.1).trans zero
  have sub := compileHmrHybridCin_sub_run A B control cin carry a b work h u n readyU zeroU
  have source : regValue a u.basis=regValue a s.basis := regValue_congr _ _ _
    (fun q hq => add.2.1 q (List.disjoint_left.mp geometry.2.2.1 hq))
  have value : regValue b out.basis=regValue b s.basis := by
    have equation := sub.2.2
    rw [source,add.2.1 control geometry.1,add.2.1 cin cinApart,add.2.2] at equation
    cases flag : s.basis control
    · simpa only [flag,ite_false] using equation
    · simp only [flag,ite_true] at equation
      have congruent : Nat.ModEq (2^b.length) (regValue b out.basis) (regValue b s.basis) :=
        Nat.ModEq.add_left_cancel' (regValue a s.basis)
          (Nat.ModEq.add_right_cancel' (s.basis cin).toNat equation)
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
