import ECDSAAdd.Arithmetic.Paper935.HmrBlockedValue

namespace ECDSAAdd.Arithmetic.Paper935

def hmrChunks (size : Nat) (bits : List Wire) : List (List Wire) :=
  if 0<size ∧ bits≠[] then bits.take size :: hmrChunks size (bits.drop size) else []
termination_by bits.length
decreasing_by
  have nonempty : bits≠[] := by simp_all
  have hn : 0<bits.length := List.length_pos_iff.mpr nonempty
  simp only [List.length_drop]
  omega

theorem hmrChunks_flatten (size : Nat) (bits : List Wire) (positive : 0<size) :
    (hmrChunks size bits).flatten=bits := by
  rw [hmrChunks]
  split
  next h =>
    rw [List.flatten_cons,hmrChunks_flatten size (bits.drop size) positive,List.take_append_drop]
  next h =>
    have empty : bits=[] := by by_contra hn; exact h ⟨positive,hn⟩
    simp [empty]
termination_by bits.length
decreasing_by
  have nonempty : bits≠[] := by simp_all
  have hn : 0<bits.length := List.length_pos_iff.mpr nonempty
  simp only [List.length_drop]
  omega

/-- The source blocked zero test, parameterized by its public block size
(16 on forward g, 8 on reverse g). -/
def compileHmrZero (A : Arena) (bits : List Wire) (size : Nat) :
    Option (Arena × List HmrBlockPlan × Wire) := do
  if 0<size then
    let (B,ps) ← compileHmrBlocked A none (hmrChunks size bits)
    let keeper ← hmrBlockedFlag none ps
    pure (B,ps,keeper)
  else none

theorem compileHmrZero_contract (A B : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire)
    (h : compileHmrZero A bits size=some (B,ps,keeper)) :
    0<size ∧ compileHmrBlocked A none (hmrChunks size bits)=some (B,ps) ∧
      hmrBlockedFlag none ps=some keeper := by
  unfold compileHmrZero at h
  split at h
  next positive =>
    obtain ⟨⟨C,qs⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨q,hq,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    exact ⟨positive,hc,hq⟩
  next invalid => simp at h

theorem compileHmrZero_value (A B : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire)
    (h : compileHmrZero A bits size=some (B,ps,keeper))
    (owned : bits.toFinset⊆A.live) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    (run (hmrBlockedProgram ps) m s).basis keeper=decide (regValue bits s.basis=0) := by
  have hc := compileHmrZero_contract A B bits size ps keeper h
  have ho : ∀q∈(hmrChunks size bits).flatten,q∈A.live := by
    rw [hmrChunks_flatten size bits hc.1]
    exact fun q hq => owned (List.mem_toFinset.mpr hq)
  have value := compileHmrBlocked_value A B none (hmrChunks size bits) ps hc.2.1 ho s m ready
  simp only [hc.2.2,Option.map_some,Option.getD_some,Option.map_none,Option.getD_none,
    Bool.true_and,hmrChunks_flatten size bits hc.1] at value
  rw [value]
  apply Bool.eq_iff_iff.mpr
  simp [regValue_zero]

end ECDSAAdd.Arithmetic.Paper935
