import ECDSAAdd.Arithmetic.Paper935.HmrKeeperOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBlockedValue

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlockedLog_order (A B : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (B,ps)) :
    (∀P∈ps,P.keeper∉A.live) ∧ HmrKeeperOrdered ps := by
  induction blocks generalizing A previous ps logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedLog] at h
    | nil =>
      simp only [compileHmrBlockedLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      exact ⟨by intro P hp; simp at hp,trivial⟩
  | cons bits blocks ih =>
    cases logs with
    | nil => simp [compileHmrBlockedLog] at h
    | cons work logs =>
      simp only [compileHmrBlockedLog] at h
      obtain ⟨⟨C,P⟩,head,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨D,qs⟩,tail,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      have rest := ih C (some P.keeper) qs tail
      have live := (compileHmrBlockKeepLog_run A C (hmrBlockLiterals previous bits) P head
        ⟨false,fun _ => false⟩ [] (by intro q hq hn; rfl)).2.1
      have monotone : A.live⊆C.live := by rw [live]; exact Finset.subset_insert _ _
      obtain ⟨E,work,he,_⟩ := compileHmrBlockKeepLog_contract A C (hmrBlockLiterals previous bits) P head
      have contract := compileHmrBlockLog_contract A E (hmrBlockLiterals previous bits) work P he
      have own (q : Wire) (hq : q∈P.keeper::P.literals.map HmrLiteral.wire) : q∈C.live := by
        rcases List.mem_cons.mp hq with eq | mem
        · rw [eq,live]; simp
        · apply monotone
          apply contract.1
          apply List.mem_toFinset.mpr
          simpa only [HmrBlockPlan.literals,contract.2.2.1] using mem
      refine ⟨?_,?_,rest.2⟩
      · intro Q hq
        rcases List.mem_cons.mp hq with rfl | mem
        · exact compileHmrBlockKeepLog_fresh A C _ Q head
        · exact fun ha => rest.1 Q mem (monotone ha)
      · intro Q hq mem
        exact rest.1 Q hq (own Q.keeper mem)

end ECDSAAdd.Arithmetic.Paper935
