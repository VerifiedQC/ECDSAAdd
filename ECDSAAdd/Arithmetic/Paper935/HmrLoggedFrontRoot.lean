import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontRoot
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontPadding

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.root_geometry (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter) :
    [counter.getLastD 0,P.pairBank.g.payload.headD 0,P.sigma].Nodup := by
  have widths := h.widths P A bank fgWidth vWidth exitWidth early frozen counter
  have flags := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have sigmaND := List.nodup_cons.mp (List.nodup_cons.mp flags.1).2
  have inputRows := List.nodup_append'.mp sigmaND.2
  have zmem : counter.getLastD 0∈hmrFrontInputs early frozen counter := by
    apply List.mem_append_left
    cases counter with
    | nil => simp at widths
    | cons z zs => rw [List.getLastD_cons]; exact List.getLastD_mem_cons
  have gmem : P.pairBank.g.payload.headD 0∈P.pairBank.rows.flatMap WindowRow.wires := by
    have nonempty := widths.2.2.2.2.1
    have head : P.pairBank.g.payload.headD 0∈P.pairBank.g.payload := by
      cases hp : P.pairBank.g.payload with
      | nil => exact False.elim (nonempty hp)
      | cons low tail => simp
    simp only [WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false]
    right; left
    exact List.mem_append_left _ head
  have zg : counter.getLastD 0≠P.pairBank.g.payload.headD 0 := fun eq =>
    List.disjoint_left.mp inputRows.2.2 zmem (eq ▸ gmem)
  have zs : counter.getLastD 0≠P.sigma := fun eq => sigmaND.1 (eq ▸ List.mem_append_left _ zmem)
  have gs : P.pairBank.g.payload.headD 0≠P.sigma := fun eq => sigmaND.1 (eq ▸ List.mem_append_right _ gmem)
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,not_or,not_false_eq_true,and_true]
  exact ⟨⟨zg,zs⟩,gs⟩


theorem HmrSourceFront.Logged.root_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.pairArena.Ready s.basis) :
    let out := run (P.root counter) m s
    out.phase=s.phase ∧ P.sigmaArena.Ready out.basis ∧
    out.basis P.sigma=(!s.basis (counter.getLastD 0) && s.basis (P.pairBank.g.payload.headD 0)) ∧
    out.basis P.branch=false ∧ (∀q,q≠P.sigma → out.basis q=s.basis q) := by
  have geometry := h.root_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have clean : s.basis P.sigma=false := hmrLoggedPorts_clean _ _ _ _ h.sigmaBorrow s.basis ready (0 : Fin 1)
  have actual := hmrPolarAnd_run _ _ _ false true geometry s m clean
  have borrow := P.pairArena.checkBorrow_contract _ _ _ h.sigmaBorrow
  have owned : P.sigma∈P.sigmaArena.live := (hmrLoggedPorts_contract _ _ _ _ h.sigmaBorrow).2.1 (0 : Fin 1)
  have reserveReady := (P.pairArena.reserve_ready _ _ s.basis ready borrow.2.2).1
  have afterReady : P.sigmaArena.Ready (run (P.root counter) m s).basis := by
    rw [HmrSourceFront.root,actual]
    intro q bound absent
    have ne : q≠P.sigma := fun eq => absent (eq ▸ owned)
    simp only [writeBit,Function.update_of_ne ne]
    exact reserveReady q bound absent
  refine ⟨?_,afterReady,?_,?_,?_⟩
  · rw [HmrSourceFront.root,actual]
  · rw [HmrSourceFront.root,actual]
    simp [writeBit]
  · exact hmrLoggedPorts_clean _ _ _ _ h.branchBorrow _ afterReady (0 : Fin 1)
  · intro q ne
    rw [HmrSourceFront.root,actual]
    simp only [writeBit,Function.update_of_ne ne]


end ECDSAAdd.Arithmetic.Paper935
