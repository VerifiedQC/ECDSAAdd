import ECDSAAdd.Arithmetic.Paper935.HmrFlagsArena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFlagsAmbientReturn

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrFlagsLog_arena_ready (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    B.Ready (run (hmrFlagSweep stages) m s).basis := by
  have hc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work h
  have hw := hmrLoggedPorts_contract A B 6 work hc.2.2
  have reserve := (A.checkBorrow_contract B 6 work hc.2.2).2.2
  dsimp only
  rw [compileHmrFlagsLog_run A B c3 b2 b3 b4 work h s m ready]
  apply hmrFlagAdvance_ready
  · intro g hg
    simp only [hmrFlagStages,List.mem_cons,List.not_mem_nil,or_false] at hg
    rcases hg with rfl | rfl | rfl
    all_goals exact ⟨hw.2.1 _,hw.2.1 _⟩
  · exact (A.reserve_ready B work.toFinset s.basis ready reserve).1

end ECDSAAdd.Arithmetic.Paper935
