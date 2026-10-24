import ECDSAAdd.Arithmetic.Paper935.HmrHybridPairCore

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source F4 after headroom growth: mint one u, complement both targets,
execute the two adaptive additions, then retire that same u once. -/
def hmrHybridF4 (swap control cin carry : Wire) (a b x y wa wb : List Wire) : Program :=
  hmrPolarAnd swap control cin true true ++ hmrHybridPairCore control cin carry a b x y wa wb ++
    hmrPolarRelease swap control cin true true

theorem hmrHybridF4_run (A B C : Arena) (swap control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCin A control cin carry a b=some (B,wa))
    (second : compileHmrHybridCin A control cin carry x y=some (C,wb))
    (nd : (swap::control::cin::carry::((a++x)++(b++y))).Nodup)
    (apart : (a++b).Disjoint (x++y)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (zero : s.basis carry=false) (clean : s.basis cin=false) :
    let out := run (hmrHybridF4 swap control cin carry a b x y wa wb) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧ (∀q,q∉b++y → out.basis q=s.basis q) ∧
    regValue b out.basis=branchWord b.length (s.basis swap) (s.basis control) (regValue a s.basis) (regValue b s.basis) ∧
    regValue y out.basis=branchWord y.length (s.basis swap) (s.basis control) (regValue x s.basis) (regValue y s.basis) := by
  have firstContract := compileHmrHybridCin_contract A B control cin carry a b wa first
  have huOwned := firstContract.2.1
  have hn := List.nodup_cons.mp nd
  have hc := List.nodup_cons.mp hn.2
  have hu := List.nodup_cons.mp hc.2
  have qu : swap≠cin := fun eq => hn.1 (by simp [eq])
  have cu : control≠cin := fun eq => hc.1 (by simp [eq])
  have qc : swap≠control := fun eq => hn.1 (by simp [eq])
  have ku : carry≠cin := fun eq => hu.1 (by simp [←eq])
  have uRows : cin∉(a++x)++(b++y) := fun h => hu.1 (List.mem_cons_of_mem carry h)
  have uTargets : cin∉b++y := fun h => uRows (List.mem_append_right _ h)
  have qTargets : swap∉b++y := fun h => hn.1 (by simp [h])
  have cTargets : control∉b++y := fun h => hc.1 (by simp [h])
  have localND : [swap,control,cin].Nodup := by simp [qc,qu,cu]
  let t : State := ⟨s.phase,writeBit s.basis cin (s.basis swap && s.basis control)⟩
  have mint := hmrPolarAnd_run swap control cin true true localND s m clean
  have frame (q : Wire) (ne : q≠cin) : t.basis q=s.basis q := by simp only [t,writeBit,Function.update_of_ne ne]
  have tReady : A.Ready t.basis := by
    intro q bound absent
    rw [frame q (fun eq => absent (eq ▸ huOwned))]
    exact ready q bound absent
  have tZero : t.basis carry=false := (frame carry ku).trans zero
  have tFlag : t.basis cin=(s.basis swap && t.basis control) := by simp [t,writeBit,cu]
  let v := run (hmrHybridPairCore control cin carry a b x y wa wb) m t
  have core := hmrHybridPairCore_run A B C control cin carry a b x y wa wb first second hn.2 apart
    (s.basis swap) t m tReady tZero tFlag
  have releaseValue : v.basis cin=(v.basis swap && v.basis control) := by
    rw [core.2.2.1 cin uTargets,core.2.2.1 swap qTargets,core.2.2.1 control cTargets]
    simp [t,writeBit,qu,cu]
  let rest := m.drop (measurementCount (hmrHybridPairCore control cin carry a b x y wa wb))
  have retire := hmrPolarRelease_run swap control cin true true localND v rest releaseValue
  have execute : run (hmrHybridF4 swap control cin carry a b x y wa wb) m s=
      ⟨s.phase,writeBit v.basis cin false⟩ := by
    rw [hmrHybridF4,List.append_assoc,run_append,run_take,mint]
    change run (hmrHybridPairCore control cin carry a b x y wa wb ++ hmrPolarRelease swap control cin true true) m t=_
    rw [run_append,run_take,retire]
    have phase : v.phase=s.phase := core.1
    rw [phase]
  have source (xs : List Wire) (sub : ∀q∈xs,q∈(a++x)++(b++y)) : regValue xs t.basis=regValue xs s.basis := by
    apply regValue_congr
    intro q hq
    exact frame q (fun eq => uRows (eq ▸ sub q hq))
  dsimp only
  rw [execute]
  refine ⟨rfl,?_,?_,?_,?_⟩
  · intro q bound absent
    have ne : q≠cin := fun eq => absent (eq ▸ huOwned)
    simp only [writeBit,Function.update_of_ne ne]
    exact core.2.1 q bound absent
  · intro q hq
    by_cases eq : q=cin
    · subst q; simp [writeBit,clean]
    · simp only [writeBit,Function.update_of_ne eq]
      exact (core.2.2.1 q hq).trans (frame q eq)
  · rw [regValue_congr b _ v.basis (by
      intro q hq
      have ne : q≠cin := fun eq => uTargets (List.mem_append_left _ (eq ▸ hq))
      exact Function.update_of_ne ne _ _)]
    rw [core.2.2.2.1,source a (by intro q hq; simp [hq]),source b (by intro q hq; simp [hq]),frame control cu]
  · rw [regValue_congr y _ v.basis (by
      intro q hq
      have ne : q≠cin := fun eq => uTargets (List.mem_append_right _ (eq ▸ hq))
      exact Function.update_of_ne ne _ _)]
    rw [core.2.2.2.2,source x (by intro q hq; simp [hq]),source y (by intro q hq; simp [hq]),frame control cu]

end ECDSAAdd.Arithmetic.Paper935
