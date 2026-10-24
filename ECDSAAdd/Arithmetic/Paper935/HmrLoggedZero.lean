import ECDSAAdd.Arithmetic.Paper935.HmrZeroCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeeperPorts

namespace ECDSAAdd.Arithmetic.Paper935

/-- The source blocked zero test, parameterized by its public block size
(16 on forward g, 8 on reverse g). -/
def compileHmrZeroLog (A : Arena) (bits : List Wire) (size : Nat) (logs : List (List Wire)) :
    Option (Arena × List HmrBlockPlan × Wire) := do
  if 0<size then
    let (B,ps) ← compileHmrBlockedLog A none (hmrChunks size bits) logs
    let keeper ← hmrBlockedFlag none ps
    pure (B,ps,keeper)
  else none

theorem compileHmrZeroLog_contract (A B : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire)
    {logs : List (List Wire)} (h : compileHmrZeroLog A bits size logs=some (B,ps,keeper)) :
    0<size ∧ compileHmrBlockedLog A none (hmrChunks size bits) logs=some (B,ps) ∧
      hmrBlockedFlag none ps=some keeper := by
  unfold compileHmrZeroLog at h
  split at h
  next positive =>
    obtain ⟨⟨C,qs⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
    obtain ⟨q,hq,h⟩ := Option.bind_eq_some_iff.mp h
    cases h
    exact ⟨positive,hc,hq⟩
  next invalid => simp at h

theorem compileHmrZeroLog_value (A B : Arena) (bits : List Wire) (size : Nat)
    (ps : List HmrBlockPlan) (keeper : Wire)
    {logs : List (List Wire)} (h : compileHmrZeroLog A bits size logs=some (B,ps,keeper))
    (owned : bits.toFinset⊆A.live) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    (run (hmrBlockedProgram ps) m s).basis keeper=decide (regValue bits s.basis=0) := by
  have hc := compileHmrZeroLog_contract A B bits size ps keeper h
  have ho : ∀q∈(hmrChunks size bits).flatten,q∈A.live := by
    rw [hmrChunks_flatten size bits hc.1]
    exact fun q hq => owned (List.mem_toFinset.mpr hq)
  have value := compileHmrBlockedLog_value A B none (hmrChunks size bits) ps hc.2.1 ho s m ready
  simp only [hc.2.2,Option.map_some,Option.getD_some,Option.map_none,Option.getD_none,
    Bool.true_and,hmrChunks_flatten size bits hc.1] at value
  rw [value]
  apply Bool.eq_iff_iff.mpr
  simp [regValue_zero]

end ECDSAAdd.Arithmetic.Paper935
