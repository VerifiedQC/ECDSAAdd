import ECDSAAdd.Arithmetic.Paper935.HmrKeeperPorts
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeeperValues

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlockedLog_owned (A B : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (B,ps)) :
    A.live⊆B.live ∧ ∀P∈ps,(P.keeper::P.literals.map HmrLiteral.wire).toFinset⊆B.live := by
  induction blocks generalizing A previous ps logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedLog] at h
    | nil =>
      simp only [compileHmrBlockedLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      exact ⟨Finset.Subset.refl _,by intro P hp; simp at hp⟩
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
      refine ⟨monotone.trans rest.1,?_⟩
      intro Q hq q mem
      rcases List.mem_cons.mp hq with eq | memQ
      · subst Q
        apply rest.1
        rw [live]
        rcases List.mem_cons.mp (List.mem_toFinset.mp mem) with eq | input
        · exact Finset.mem_insert.mpr (Or.inl eq)
        · apply Finset.mem_insert_of_mem
          apply contract.1
          apply List.mem_toFinset.mpr
          simpa only [HmrBlockPlan.literals,contract.2.2.1] using input
      · exact rest.2 Q memQ mem

theorem compileHmrBlockedLog_away (A B : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (B,ps))
    (q : Wire) (owned : q∈A.live) (bitsAway : q∉blocks.flatten) (previousAway : q∉previous.toList) :
    ∀P∈ps,q∉P.keeper::P.literals.map HmrLiteral.wire := by
  induction blocks generalizing A previous ps logs with
  | nil =>
    cases logs with
    | cons work logs => simp [compileHmrBlockedLog] at h
    | nil =>
      simp only [compileHmrBlockedLog,Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl⟩ := h
      intro P hp
      simp at hp
  | cons bits blocks ih =>
    cases logs with
    | nil => simp [compileHmrBlockedLog] at h
    | cons work logs =>
      simp only [compileHmrBlockedLog] at h
      obtain ⟨⟨C,P⟩,head,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨D,qs⟩,tail,h⟩ := Option.bind_eq_some_iff.mp h
      cases h
      have live := (compileHmrBlockKeepLog_run A C (hmrBlockLiterals previous bits) P head
        ⟨false,fun _ => false⟩ [] (by intro r hr hn; rfl)).2.1
      have nextOwned : q∈C.live := by rw [live]; exact Finset.mem_insert_of_mem owned
      have ne : q≠P.keeper := fun eq => compileHmrBlockKeepLog_fresh A C _ P head (eq ▸ owned)
      have bitAway : q∉bits := fun mem => bitsAway (by simp only [List.flatten_cons,List.mem_append]; exact Or.inl mem)
      have tailAway : q∉blocks.flatten := fun mem => bitsAway (by simp only [List.flatten_cons,List.mem_append]; exact Or.inr mem)
      have rest := ih C (some P.keeper) qs tail nextOwned tailAway (by simpa using ne)
      obtain ⟨E,work,he,_⟩ := compileHmrBlockKeepLog_contract A C (hmrBlockLiterals previous bits) P head
      have literals := (compileHmrBlockLog_contract A E (hmrBlockLiterals previous bits) work P he).2.2.1
      have inputAway : q∉P.literals.map HmrLiteral.wire := by
        change q∉(P.head::P.cells.map HmrLadderCell.literal).map HmrLiteral.wire
        rw [literals]
        simpa [hmrBlockLiterals,Function.comp_def] using
          (show q∉previous.toList++bits from by simpa only [List.mem_append,not_or] using And.intro previousAway bitAway)
      intro Q hq mem
      rcases List.mem_cons.mp hq with eq | memQ
      · subst Q
        rcases List.mem_cons.mp mem with eq | input
        · exact ne eq
        · exact inputAway input
      · exact rest Q memQ mem

end ECDSAAdd.Arithmetic.Paper935
