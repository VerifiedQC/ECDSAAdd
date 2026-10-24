import ECDSAAdd.Arithmetic.Paper935.HmrHybridPair
import ECDSAAdd.Arithmetic.Paper935.HmrHybridCinRoundtrip

namespace ECDSAAdd.Arithmetic.Paper935

/-- Literal R14 order: subtract from the second target before the first. -/
def hmrHybridPairSub (control cin carry : Wire) (a b x y wa wb : List Wire) : Program :=
  hmrHybridSubCin control cin carry x y wb ++ hmrHybridSubCin control cin carry a b wa

theorem hmrHybridPair_sub_after_add (A B C : Arena) (control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCin A control cin carry a b=some (B,wa))
    (second : compileHmrHybridCin A control cin carry x y=some (C,wb))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    run (hmrHybridPairSub control cin carry a b x y wa wb) n
      (run (hmrHybridPairAdd control cin carry a b x y wa wb) m s)=s := by
  let u := run (hmrHybridRowCin control cin carry a b wa) m s
  have firstRun := compileHmrHybridCin_run A B control cin carry a b wa first s m ready zero
  have firstReady := (compileHmrHybridCin_return A B control cin carry a b wa first s m ready zero).1
  have nd := (compileHmrHybridCin_contract A B control cin carry a b wa first).1
  have carryApart : carry∉b := fun h =>
    (List.nodup_cons.mp (List.nodup_cons.mp (List.nodup_cons.mp nd).2).2).1 (List.mem_append_right _ h)
  have firstZero : u.basis carry=false := (firstRun.2.1 carry carryApart).trans zero
  simp only [hmrHybridPairSub,hmrHybridPairAdd,run_append,run_take]
  rw [compileHmrHybridCin_sub_after_add A C control cin carry x y wb second u
    (m.drop (measurementCount (hmrHybridRowCin control cin carry a b wa))) n firstReady firstZero]
  exact compileHmrHybridCin_sub_after_add A B control cin carry a b wa first s m _ ready zero

theorem hmrHybridPair_add_after_sub (A B C : Arena) (control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCin A control cin carry a b=some (B,wa))
    (second : compileHmrHybridCin A control cin carry x y=some (C,wb))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    run (hmrHybridPairAdd control cin carry a b x y wa wb) n
      (run (hmrHybridPairSub control cin carry a b x y wa wb) m s)=s := by
  let u := run (hmrHybridSubCin control cin carry x y wb) m s
  have firstRun := compileHmrHybridCin_sub_run A C control cin carry x y wb second s m ready zero
  have firstReady := (compileHmrHybridCin_sub_return A C control cin carry x y wb second s m ready zero).1
  have nd := (compileHmrHybridCin_contract A C control cin carry x y wb second).1
  have carryApart : carry∉y := fun h =>
    (List.nodup_cons.mp (List.nodup_cons.mp (List.nodup_cons.mp nd).2).2).1 (List.mem_append_right _ h)
  have firstZero : u.basis carry=false := (firstRun.2.1 carry carryApart).trans zero
  simp only [hmrHybridPairSub,hmrHybridPairAdd,run_append,run_take]
  rw [compileHmrHybridCin_add_after_sub A B control cin carry a b wa first u
    (m.drop (measurementCount (hmrHybridSubCin control cin carry x y wb))) n firstReady firstZero]
  exact compileHmrHybridCin_add_after_sub A C control cin carry x y wb second s m _ ready zero

end ECDSAAdd.Arithmetic.Paper935
