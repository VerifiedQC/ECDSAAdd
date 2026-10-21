import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts
import ECDSAAdd.Arithmetic.Paper935.HmrFlagsAliased

namespace ECDSAAdd.Arithmetic.Paper935

/-- Coefficient reads may alias each other, but not the class flag. -/
def compileHmrFlags (A : Arena) (c3 b2 b3 b4 : Wire) : Option (Arena × List Wire) :=
  if c3∉[b2,b3,b4] ∧ [c3,b2,b3,b4].toFinset⊆A.live
  then A.borrowMany 6 else none

theorem compileHmrFlags_contract (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) :
    c3∉[b2,b3,b4] ∧ [c3,b2,b3,b4].toFinset⊆A.live ∧ A.borrowMany 6=some (B,work) := by
  unfold compileHmrFlags at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next invalid => simp at h

theorem compileHmrFlags_exists (A : Arena) (c3 b2 b3 b4 : Wire)
    (separate : c3∉[b2,b3,b4]) (owned : [c3,b2,b3,b4].toFinset⊆A.live)
    (capacity : A.live.card+6≤935) :
    ∃ B work,compileHmrFlags A c3 b2 b3 b4=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity 6).mpr capacity
  exact ⟨B,work,by simp only [compileHmrFlags,if_pos (And.intro separate owned),h]⟩

theorem compileHmrFlags_geometry (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    HmrFlagsGeometry c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) := by
  have hc := compileHmrFlags_contract A B c3 b2 b3 b4 work h
  have hw := hmrBorrowPorts_contract A B 6 work hc.2.2
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have distinct : Function.Injective w := hw.1
  have sep (q : Wire) (hq : q∈[c3,b2,b3,b4]) (i : Fin 6) : q≠w i := by
    intro eq
    apply hw.2.2 i
    change w i∈A.live
    rw [←eq]
    exact hc.2.1 (List.mem_toFinset.mpr hq)
  have sc := sep c3 (by simp)
  have s2 := sep b2 (by simp)
  have s3 := sep b3 (by simp)
  have s4 := sep b4 (by simp)
  have old := hc.1
  simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at old
  dsimp only
  change HmrFlagsGeometry c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
  simp [HmrFlagsGeometry,distinct.eq_iff,sc,s2,s3,s4,Ne.symm old.1,
    Ne.symm old.2.1,Ne.symm old.2.2]

theorem compileHmrFlags_ready (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) (s : BasisState) (ready : A.Ready s) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    HmrFlagReady (hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) s := by
  have hc := compileHmrFlags_contract A B c3 b2 b3 b4 work h
  have clean := hmrBorrowPorts_clean A B 6 work hc.2.2 s ready
  apply hmrFlags_ready_aliased _ _ _ _ _ _ _ _ _ _ (compileHmrFlags_geometry A B c3 b2 b3 b4 work h)
  simp only [List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq]
  exact ⟨clean 0,clean 1,clean 2,clean 3,clean 4,clean 5⟩

theorem compileHmrFlags_run (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    run (hmrFlagSweep stages) m s=⟨s.phase,hmrFlagAdvance stages s.basis⟩ :=
  hmrFlagSweep_run _ s m (compileHmrFlags_ready A B c3 b2 b3 b4 work h s.basis ready)

theorem compileHmrFlags_release (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    run (hmrFlagUnsweep stages) m ⟨s.phase,hmrFlagAdvance stages s.basis⟩=s :=
  hmrFlagUnsweep_run _ s m (compileHmrFlags_ready A B c3 b2 b3 b4 work h s.basis ready)

theorem compileHmrFlags_return (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlags A c3 b2 b3 b4=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    B.release work.toFinset
      (run (hmrFlagUnsweep stages) m ⟨s.phase,hmrFlagAdvance stages s.basis⟩).basis=some A := by
  dsimp only
  rw [compileHmrFlags_release A B c3 b2 b3 b4 work h s m ready]
  exact hmrBorrow_return A B 6 work (compileHmrFlags_contract A B c3 b2 b3 b4 work h).2.2 s.basis ready

end ECDSAAdd.Arithmetic.Paper935
