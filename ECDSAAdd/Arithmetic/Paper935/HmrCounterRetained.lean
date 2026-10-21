import ECDSAAdd.Arithmetic.Paper935.HmrCounterLifetime

namespace ECDSAAdd.Arithmetic.Paper935

/-- Compiler-only ownership calculation. The run theorem below justifies
this release with the actual measured cleanup, not a reset operation. -/
def compileHmrCounterRetained (A : Arena) (counter : List Wire) : Option (Arena × Arena × List Wire) := do
  let (B,work) ← compileHmrCounter A counter
  let C ← B.release (work.toFinset.erase (hmrCounterPorts counter work 11)) (fun _ => false)
  pure (B,C,work)

theorem Arena.release_eq_clean (A : Arena) (qs : Finset Wire) (s t : BasisState)
    (hs : ∀q∈qs,s q=false) (ht : ∀q∈qs,t q=false) : A.release qs s=A.release qs t := by
  by_cases owned : qs⊆A.live
  · simp only [Arena.release,if_pos (And.intro owned hs),if_pos (And.intro owned ht)]
  · simp only [Arena.release,owned,false_and,ite_false]

theorem compileHmrCounterRetained_run (A B C : Arena) (counter work : List Wire)
    (h : compileHmrCounterRetained A counter=some (B,C,work))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let keeper := hmrCounterPorts counter work 11
    let out := run (hmrZero6Keep (hmrCounterPorts counter work)) m s
    compileHmrCounter A counter=some (B,work) ∧
    B.release (work.toFinset.erase keeper) out.basis=some C ∧
    C.live=insert keeper A.live ∧ C.Ready out.basis ∧ C.live.card=A.live.card+1 := by
  unfold compileHmrCounterRetained at h
  obtain ⟨⟨D,ws⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨E,release,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  obtain ⟨F,actual,shape,fr,count⟩ := compileHmrCounter_release_chain A B counter work hc s m ready
  have clean := ((B.release_success (work.toFinset.erase (hmrCounterPorts counter work 11))
    (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis).mp ⟨F,actual⟩).2
  have equal := B.release_eq_clean (work.toFinset.erase (hmrCounterPorts counter work 11))
    (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis (fun _ => false) clean (by simp)
  rw [actual,release] at equal
  cases equal
  exact ⟨hc,actual,shape,fr,count⟩

theorem compileHmrCounterRetained_exists (A : Arena) (counter : List Wire)
    (len : counter.length=6) (nd : counter.Nodup) (owned : counter.toFinset⊆A.live)
    (capacity : A.live.card+6≤935) : ∃ B C work,compileHmrCounterRetained A counter=some (B,C,work) := by
  obtain ⟨B,work,hc⟩ := compileHmrCounter_exists A counter len nd owned capacity
  have borrow := (compileHmrCounter_contract A B counter work hc).2.2.2
  have subset : work.toFinset.erase (hmrCounterPorts counter work 11)⊆B.live := by
    rw [(A.borrowMany_live B 6 work borrow).1]
    exact Finset.Subset.trans (Finset.erase_subset _ _) Finset.subset_union_right
  obtain ⟨C,release⟩ := (B.release_success (work.toFinset.erase (hmrCounterPorts counter work 11)) (fun _ => false)).mpr ⟨subset,by simp⟩
  exact ⟨B,C,work,by simp [compileHmrCounterRetained,hc,release]⟩


theorem compileHmrCounterRetained_contract (A B C : Arena) (counter work : List Wire)
    (h : compileHmrCounterRetained A counter=some (B,C,work)) :
    compileHmrCounter A counter=some (B,work) ∧
    C.live=insert (hmrCounterPorts counter work 11) A.live ∧ C.live.card=A.live.card+1 := by
  have result := compileHmrCounterRetained_run A B C counter work h ⟨false,fun _ => false⟩ [] (by intro q hq hn; rfl)
  exact ⟨result.1,result.2.2.1,result.2.2.2.2⟩

end ECDSAAdd.Arithmetic.Paper935
