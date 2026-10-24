import ECDSAAdd.Arithmetic.Paper935.HmrKeeperValues
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedKeeperOrder

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBlockedLog_frame (A B : Arena) (previous : Option Wire) (blocks : List (List Wire))
    (ps : List HmrBlockPlan) {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (B,ps))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (q : Wire) (owned : q∈A.live) :
    (run (hmrBlockedProgram ps) m s).basis q=s.basis q := by
  rw [(compileHmrBlockedLog_run A B previous blocks ps h s m ready).1]
  apply hmrBlockedAdvance_frame
  intro P hp eq
  exact (compileHmrBlockedLog_order A B previous blocks ps h).1 P hp (eq ▸ owned)

theorem compileHmrBlockKeepLog_equation (A B : Arena) (literals : List HmrLiteral) (P : HmrBlockPlan)
    {log : List Wire} (h : compileHmrBlockKeepLog A literals log=some (B,P)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    (run P.program m s).basis P.keeper=
      P.literals.all (fun l => l.value (run P.program m s).basis) := by
  have first := compileHmrBlockKeepLog_run A B literals P h s m ready
  obtain ⟨D,work,hp,_⟩ := compileHmrBlockKeepLog_contract A B literals P h
  have contract := compileHmrBlockLog_contract A D literals work P hp
  have lits : P.literals=literals := contract.2.2.1
  have outside (l : HmrLiteral) (hl : l∈literals) : l.wire≠P.keeper := by
    intro eq
    exact compileHmrBlockKeepLog_fresh A B literals P h
      (eq ▸ contract.1 (List.mem_toFinset.mpr (List.mem_map.mpr ⟨l,hl,rfl⟩)))
  rw [lits,first.1,hmrLiteralAll_write literals P.keeper outside]
  simp [writeBit]

theorem compileHmrBlockedLog_values (A B : Arena) (previous : Option Wire)
    (blocks : List (List Wire)) (ps : List HmrBlockPlan)
    {logs : List (List Wire)} (h : compileHmrBlockedLog A previous blocks logs=some (B,ps))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    HmrKeeperValues ps (run (hmrBlockedProgram ps) m s).basis := by
  induction blocks generalizing A previous ps s m logs with
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
      have first := compileHmrBlockKeepLog_run A C (hmrBlockLiterals previous bits) P head s m ready
      let t := run P.program m s
      let tape := m.drop (measurementCount P.program)
      have tailValues := ih C (some P.keeper) qs tail t tape first.2.2.1
      obtain ⟨E,work,he,_⟩ := compileHmrBlockKeepLog_contract A C (hmrBlockLiterals previous bits) P head
      have contract := compileHmrBlockLog_contract A E (hmrBlockLiterals previous bits) work P he
      have headOwned (q : Wire) (hq : q∈P.keeper::P.literals.map HmrLiteral.wire) : q∈C.live := by
        rw [first.2.1]
        rcases List.mem_cons.mp hq with eq | mem
        · exact Finset.mem_insert.mpr (Or.inl eq)
        · apply Finset.mem_insert_of_mem
          apply contract.1
          apply List.mem_toFinset.mpr
          simpa only [HmrBlockPlan.literals,contract.2.2.1] using mem
      have frame (q : Wire) (hq : q∈P.keeper::P.literals.map HmrLiteral.wire) :
          (run (hmrBlockedProgram qs) tape t).basis q=t.basis q :=
        compileHmrBlockedLog_frame C D (some P.keeper) blocks qs tail t tape first.2.2.1 q (headOwned q hq)
      have headValue := compileHmrBlockKeepLog_equation A C (hmrBlockLiterals previous bits) P head s m ready
      change HmrKeeperValues (P::qs) (run (P.program++hmrBlockedProgram qs) m s).basis
      rw [run_append,run_take]
      intro Q hq
      rcases List.mem_cons.mp hq with eq | mem
      · subst Q
        rw [frame P.keeper (by simp),hmrLiteralAll_congr P.literals _ t.basis
          (fun l hl => frame l.wire (List.mem_cons_of_mem _ (List.mem_map.mpr ⟨l,hl,rfl⟩)))]
        exact headValue
      · exact tailValues Q mem

end ECDSAAdd.Arithmetic.Paper935
