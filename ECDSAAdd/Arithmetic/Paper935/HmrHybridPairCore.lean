import ECDSAAdd.Arithmetic.Paper935.HmrPairComplement

namespace ECDSAAdd.Arithmetic.Paper935

/-- Shared-u F4 body after minting u and before retiring it. -/
def hmrHybridPairCore (control cin carry : Wire) (a b x y wa wb : List Wire) : Program :=
  hmrPairComplement cin b y ++ hmrHybridPairAdd control cin carry a b x y wa wb

theorem hmrHybridPairCore_run (A B C : Arena) (control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCin A control cin carry a b=some (B,wa))
    (second : compileHmrHybridCin A control cin carry x y=some (C,wb))
    (nd : (control::cin::carry::((a++x)++(b++y))).Nodup)
    (apart : (a++b).Disjoint (x++y)) (swap : Bool) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (zero : s.basis carry=false)
    (flag : s.basis cin=(swap && s.basis control)) :
    let out := run (hmrHybridPairCore control cin carry a b x y wa wb) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧ (∀q,q∉b++y → out.basis q=s.basis q) ∧
    regValue b out.basis=branchWord b.length swap (s.basis control) (regValue a s.basis) (regValue b s.basis) ∧
    regValue y out.basis=branchWord y.length swap (s.basis control) (regValue x s.basis) (regValue y s.basis) := by
  have separation := (List.nodup_append'.mp
    (show ((control::cin::carry::(a++x))++(b++y)).Nodup from nd)).2.2
  have away (q : Wire) (hq : q∈control::cin::carry::(a++x)) : q∉b++y :=
    List.disjoint_left.mp separation hq
  have compND : (cin::(b++y)).Nodup := by
    apply List.nodup_iff_count.mpr
    intro q
    have bound := List.nodup_iff_count.mp nd q
    simp only [List.count_cons,List.count_append] at bound ⊢
    omega
  have leftContract := compileHmrHybridRow_contract A B control carry a b wa
    (compileHmrHybridCin_contract A B control cin carry a b wa first).2.2
  have rightContract := compileHmrHybridRow_contract A C control carry x y wb
    (compileHmrHybridCin_contract A C control cin carry x y wb second).2.2
  have owned : ∀q∈b++y,q∈A.live := by
    intro q hq
    rcases List.mem_append.mp hq with hb|hy
    · exact leftContract.2.2.2.1 q (by simp [hb])
    · exact rightContract.2.2.2.1 q (by simp [hy])
  let u := run (hmrPairComplement cin b y) m s
  have comp := hmrPairComplement_run cin b y compND s m
  have compReady := hmrPairComplement_ready A cin b y compND owned s m ready
  have compZero : u.basis carry=false := (comp.2.1 carry (away carry (by simp))).trans zero
  have pair := hmrHybridPairAdd_run A B C control cin carry a b x y wa wb first second apart u m compReady compZero
  have sourceA : regValue a u.basis=regValue a s.basis := regValue_congr _ _ _
    (fun q hq => comp.2.1 q (away q (by simp [hq])))
  have sourceX : regValue x u.basis=regValue x s.basis := regValue_congr _ _ _
    (fun q hq => comp.2.1 q (away q (by simp [hq])))
  have controlValue : u.basis control=s.basis control := comp.2.1 control (away control (by simp))
  have cinValue : u.basis cin=(swap && s.basis control) := (comp.2.1 cin (away cin (by simp))).trans flag
  dsimp only
  rw [hmrHybridPairCore,run_append,run_take,hmrPairComplement_measurements,List.drop_zero]
  refine ⟨pair.1.trans comp.1,pair.2.1,?_,?_,?_⟩
  · intro q hq; exact (pair.2.2.1 q hq).trans (comp.2.1 q hq)
  · rw [pair.2.2.2.1,sourceA,controlValue,cinValue,comp.2.2.1,flag]
    have bound := regValue_lt b s.basis
    cases swap <;> cases hc : s.basis control <;> simp [branchWord,Bool.toNat]
    congr 1
    omega
  · rw [pair.2.2.2.2,sourceX,controlValue,cinValue,comp.2.2.2,flag]
    have bound := regValue_lt y s.basis
    cases swap <;> cases hc : s.basis control <;> simp [branchWord,Bool.toNat]
    congr 1
    omega

end ECDSAAdd.Arithmetic.Paper935
