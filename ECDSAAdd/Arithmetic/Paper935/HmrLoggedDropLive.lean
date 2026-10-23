import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockedDrop

namespace ECDSAAdd.Arithmetic.Paper935

/-- Static live-set accounting; it does not assert that any execution is clean. -/
theorem compileHmrBlockDropLog_live (A C : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (P : HmrBlockFreePlan) {log : List Wire} (h : compileHmrBlockDropLog A literals keeper log=some (C,P)) :
    C.live=A.live.erase keeper := by
  obtain ⟨B,work,hb,release⟩ := compileHmrBlockDropLog_contract A C literals keeper P h
  have hc := compileHmrBlockFreeLog_contract A B literals keeper work P hb
  have borrow := A.checkBorrow_contract B (literals.length-2) work hc.2.1
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  have live := A.checkBorrow_live B (literals.length-2) work hc.2.1
  have clive : C.live=B.live\insert keeper work.toFinset := by
    unfold Arena.release at release
    split at release
    next good => cases release; rfl
    next bad => simp at release
  rw [clive,live]
  ext q
  simp only [Finset.mem_sdiff,Finset.mem_union,Finset.mem_insert,Finset.mem_erase,not_or]
  constructor
  · intro hx
    exact ⟨hx.2.1,hx.1.resolve_right hx.2.2⟩
  · intro hx
    exact ⟨Or.inl hx.2,hx.1,fun hw => Finset.disjoint_left.mp valid.2 hx.2 hw⟩

theorem compileHmrBlockedDropLog_live (A C : Arena) (ps : List HmrBlockPlan) (qs : List HmrBlockFreePlan)
    {logs : List (List Wire)} (h : compileHmrBlockedDropLog A ps logs=some (C,qs)) :
    C.live=A.live\(ps.map HmrBlockPlan.keeper).toFinset := by
  induction ps generalizing A C qs logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedDropLog] at h
    | nil =>
      simp only [compileHmrBlockedDropLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      simp
  | cons P ps ih =>
    cases logs with
    | nil => simp [compileHmrBlockedDropLog] at h
    | cons work logs =>
      simp only [compileHmrBlockedDropLog] at h
      obtain ⟨⟨B,rs⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨D,Q⟩,hh,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      rw [compileHmrBlockDropLog_live B D _ P.keeper Q hh,ih A B rs ht]
      ext q
      simp only [List.map_cons,List.toFinset_cons,Finset.mem_erase,Finset.mem_sdiff,Finset.mem_insert,not_or]
      tauto

end ECDSAAdd.Arithmetic.Paper935
