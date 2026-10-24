import ECDSAAdd.Arithmetic.Paper935.HmrBankRepack

namespace ECDSAAdd.Arithmetic.Paper935

/-- Resize the exit bank using recorded allocations, then check and emit the
actual relocation journal. Both failure checks are independent of data bits. -/
def compileHmrLoggedExit (A : Arena) (bank : WindowBank) (w : RowWindow)
    (logs : List (List Wire)) (moves : List (Wire × Wire)) :
    Option (Arena × WindowBank × Program) := do
  let (B,out,p) ← compileHmrBankResizeLog .exit A bank w logs
  let C ← B.checkRepack moves
  pure (C,out.repacked moves,p++repack moves)

theorem compileHmrLoggedExit_correct (A C : Arena) (bank out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (moves : List (Wire × Wire)) (p : Program)
    (compiled : compileHmrLoggedExit A bank w logs moves=some (C,out,p))
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z) (fits : w.Fits z) :
    (run p m s).phase=s.phase ∧ C.Ready (run p m s).basis ∧
    rowsOwned C (HmrBankOrder.exit.rows out) ∧
    out.Encodes (run p m s).basis z ∧ out.Widths w := by
  unfold compileHmrLoggedExit at compiled
  obtain ⟨⟨B,mid,resize⟩,hr,compiled⟩ := Option.bind_eq_some_iff.mp compiled
  obtain ⟨D,hp,compiled⟩ := Option.bind_eq_some_iff.mp compiled
  cases compiled
  exact hmrLoggedExit_repack A B C bank mid w logs moves resize hr hp s m z ready encodes fits

theorem repack_proper (moves : List (Wire × Wire))
    (valid : ∀q∈moves,q.1≠q.2) : ProperProgram (repack moves) := by
  induction moves with
  | nil => intro g hg; simp [repack] at hg
  | cons q qs ih =>
    have different := valid q (by simp)
    intro g hg
    simp only [repack,List.mem_append] at hg
    rcases hg with hg | hg
    · simp only [rehome,swapBits,List.mem_cons,List.not_mem_nil,or_false] at hg
      rcases hg with rfl | rfl | rfl
      all_goals simp [ProperGate,different,Ne.symm different]
    · exact ih (fun r hr => valid r (by simp [hr])) g hg

theorem compileHmrLoggedExit_resources (A C : Arena) (bank out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (moves : List (Wire × Wire)) (p : Program)
    (compiled : compileHmrLoggedExit A bank w logs moves=some (C,out,p)) :
    ProperProgram p ∧ toffoliCount p=0 ∧ measurementCount p=0 ∧ wires p⊆arenaWires := by
  unfold compileHmrLoggedExit at compiled
  obtain ⟨⟨B,mid,resize⟩,hr,compiled⟩ := Option.bind_eq_some_iff.mp compiled
  obtain ⟨D,hp,compiled⟩ := Option.bind_eq_some_iff.mp compiled
  cases compiled
  have r := compileHmrBankResizeLog_resources .exit A B bank mid w logs resize hr
  have valid := B.checkRepack_valid C moves hp
  refine ⟨?_,?_,?_,?_⟩
  · intro g hg
    exact (List.mem_append.mp hg).elim (r.1 g)
      (repack_proper moves (fun q hq => (valid q hq).1) g)
  · rw [toffoliCount_append,r.2.1,repack_toffolis]
  · rw [measurementCount_append,r.2.2.1,repack_measurements]
  · rw [wires_append]
    exact Finset.union_subset r.2.2.2 (repack_in_arena moves (fun q hq => (valid q hq).2))

end ECDSAAdd.Arithmetic.Paper935
