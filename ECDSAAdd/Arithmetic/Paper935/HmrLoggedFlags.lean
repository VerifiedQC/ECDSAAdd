import ECDSAAdd.Arithmetic.Paper935.HmrLoggedReturn
import ECDSAAdd.Arithmetic.Paper935.HmrFlagsAliased

namespace ECDSAAdd.Arithmetic.Paper935

/-- Coefficient reads may alias each other, but not the class flag. -/
def compileHmrFlagsLog (A : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire) : Option Arena :=
  if c3∉[b2,b3,b4] ∧ [c3,b2,b3,b4].toFinset⊆A.live
  then A.checkBorrow 6 work else none

theorem compileHmrFlagsLog_contract (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) :
    c3∉[b2,b3,b4] ∧ [c3,b2,b3,b4].toFinset⊆A.live ∧ A.checkBorrow 6 work=some B := by
  unfold compileHmrFlagsLog at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next invalid => simp at h

theorem compileHmrFlagsLog_geometry (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    HmrFlagsGeometry c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) := by
  have hc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work h
  have hw := hmrLoggedPorts_contract A B 6 work hc.2.2
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

theorem compileHmrFlagsLog_ready (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) (s : BasisState) (ready : A.Ready s) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    HmrFlagReady (hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) s := by
  have hc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work h
  have clean := hmrLoggedPorts_clean A B 6 work hc.2.2 s ready
  apply hmrFlags_ready_aliased _ _ _ _ _ _ _ _ _ _ (compileHmrFlagsLog_geometry A B c3 b2 b3 b4 work h)
  simp only [List.mem_cons,List.not_mem_nil,or_false,forall_eq_or_imp,forall_eq]
  exact ⟨clean 0,clean 1,clean 2,clean 3,clean 4,clean 5⟩

theorem compileHmrFlagsLog_run (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    run (hmrFlagSweep stages) m s=⟨s.phase,hmrFlagAdvance stages s.basis⟩ :=
  hmrFlagSweep_run _ s m (compileHmrFlagsLog_ready A B c3 b2 b3 b4 work h s.basis ready)

theorem compileHmrFlagsLog_release (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    run (hmrFlagUnsweep stages) m ⟨s.phase,hmrFlagAdvance stages s.basis⟩=s :=
  hmrFlagUnsweep_run _ s m (compileHmrFlagsLog_ready A B c3 b2 b3 b4 work h s.basis ready)

theorem compileHmrFlagsLog_return (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let stages := hmrFlagStages c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    B.release work.toFinset
      (run (hmrFlagUnsweep stages) m ⟨s.phase,hmrFlagAdvance stages s.basis⟩).basis=some A := by
  dsimp only
  rw [compileHmrFlagsLog_release A B c3 b2 b3 b4 work h s m ready]
  exact Arena.checkBorrow_return A B 6 work (compileHmrFlagsLog_contract A B c3 b2 b3 b4 work h).2.2 s.basis ready

end ECDSAAdd.Arithmetic.Paper935
