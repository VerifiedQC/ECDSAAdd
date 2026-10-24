import ECDSAAdd.Arithmetic.Paper935.HmrFlagsAllocation

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrFlagAdvance_ready (A : Arena) (gs : List HmrFlagStage) (s : BasisState)
    (owned : ∀g∈gs,g.anchor∈A.live ∧ g.rest∈A.live) (ready : A.Ready s) :
    A.Ready (hmrFlagAdvance gs s) := by
  induction gs generalizing s with
  | nil => exact ready
  | cons g gs ih =>
    apply ih _ (fun x hx => owned x (by simp [hx]))
    intro q hq hn
    have ha : q≠g.anchor := fun eq => hn (eq ▸ (owned g (by simp)).1)
    have hr : q≠g.rest := fun eq => hn (eq ▸ (owned g (by simp)).2)
    simpa [HmrFlagStage.advance,writeBit,ha,hr] using ready q hq hn

theorem compileHmrFlags_arena_ready (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    B.Ready (run (hmrFlagSweep stages) m s).basis := by
  have hc := compileHmrFlags_contract A B c3 b2 b3 b4 work h
  have hw := hmrBorrowPorts_contract A B 6 work hc.2.2
  have reserve := (A.borrowMany_contract B 6 work hc.2.2).2.2
  dsimp only
  rw [compileHmrFlags_run A B c3 b2 b3 b4 work h s m ready]
  apply hmrFlagAdvance_ready
  · intro g hg
    simp only [hmrFlagStages,List.mem_cons,List.not_mem_nil,or_false] at hg
    rcases hg with rfl | rfl | rfl
    all_goals exact ⟨hw.2.1 _,hw.2.1 _⟩
  · exact (A.reserve_ready B work.toFinset s.basis ready reserve).1

end ECDSAAdd.Arithmetic.Paper935
