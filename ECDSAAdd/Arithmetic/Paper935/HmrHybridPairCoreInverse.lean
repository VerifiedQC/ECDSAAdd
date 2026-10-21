import ECDSAAdd.Arithmetic.Paper935.HmrHybridPairCore
import ECDSAAdd.Arithmetic.Paper935.HmrPairComplementInverse
import ECDSAAdd.Arithmetic.Paper935.HmrHybridPairInverse

namespace ECDSAAdd.Arithmetic.Paper935

def hmrHybridPairCoreInverse (control cin carry : Wire) (a b x y wa wb : List Wire) : Program :=
  hmrHybridPairSub control cin carry a b x y wa wb ++ hmrPairUncomplement cin b y

theorem hmrHybridPairCore_roundtrip (A B C : Arena) (control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCin A control cin carry a b=some (B,wa))
    (second : compileHmrHybridCin A control cin carry x y=some (C,wb))
    (nd : (cin::carry::(b++y)).Nodup)
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    run (hmrHybridPairCoreInverse control cin carry a b x y wa wb) n
      (run (hmrHybridPairCore control cin carry a b x y wa wb) m s)=s := by
  have compND : (cin::(b++y)).Nodup := nd.sublist (by simp)
  have carryApart := (List.nodup_cons.mp (List.nodup_cons.mp nd).2).1
  have firstOwned := (compileHmrHybridRow_contract A B control carry a b wa
    (compileHmrHybridCin_contract A B control cin carry a b wa first).2.2).2.2.2.1
  have secondOwned := (compileHmrHybridRow_contract A C control carry x y wb
    (compileHmrHybridCin_contract A C control cin carry x y wb second).2.2).2.2.2.1
  have owned : ∀q∈b++y,q∈A.live := by
    intro q hq
    rcases List.mem_append.mp hq with hb|hy
    · exact firstOwned q (by simp [hb])
    · exact secondOwned q (by simp [hy])
  let u := run (hmrPairComplement cin b y) m s
  have readyU := hmrPairComplement_ready A cin b y compND owned s m ready
  have zeroU : u.basis carry=false := ((hmrPairComplement_run cin b y compND s m).2.1 carry carryApart).trans zero
  simp only [hmrHybridPairCoreInverse,hmrHybridPairCore,run_append,run_take,
    hmrPairComplement_measurements,List.drop_zero]
  have initial : run (hmrPairComplement cin b y) (m.take 0) s=u := by
    rw [←hmrPairComplement_measurements cin b y,run_take]
  rw [initial,hmrHybridPair_sub_after_add A B C control cin carry a b x y wa wb first second u m n readyU zeroU]
  exact hmrPairComplement_roundtrip cin b y compND s m _

end ECDSAAdd.Arithmetic.Paper935
