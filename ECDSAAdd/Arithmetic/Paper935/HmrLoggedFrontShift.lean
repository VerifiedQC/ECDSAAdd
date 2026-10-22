import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontShift
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontArithmetic

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.shift_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis) :
    let out := run (P.shift early frozen) m s
    out.phase=s.phase ∧ P.headArena.Ready out.basis ∧
    ∀q,q∉P.headBank.g.payload++P.headBank.fv.payload → out.basis q=s.basis q := by
  have geometry := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have rowsND := (List.nodup_append'.mp (List.nodup_cons.mp (List.nodup_cons.mp geometry.1).2).2).2.1
  have fvND : P.headBank.fv.wires.Nodup := by
    simp only [WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.append_nil] at rowsND
    exact (List.nodup_append'.mp (List.nodup_append'.mp (List.nodup_append'.mp rowsND).2.1).2.1).1
  have fvPerm : (P.headBank.fv.sign::P.headBank.fv.payload).Perm P.headBank.fv.wires := by
    change ([P.headBank.fv.sign]++P.headBank.fv.payload).Perm (P.headBank.fv.payload++[P.headBank.fv.sign])
    exact List.perm_append_comm
  have nd : early=false → (frozen::P.headBank.fv.sign::P.headBank.fv.payload).Nodup := by
    intro eq
    have sep := (List.nodup_append'.mp (List.nodup_cons.mp (List.nodup_cons.mp geometry.1).2).2).2.2
    refine List.nodup_cons.mpr ⟨?_,fvPerm.nodup_iff.mpr fvND⟩
    intro mem
    have frozenMem : frozen∈hmrFrontInputs early frozen counter := by simp [hmrFrontInputs,eq]
    apply List.disjoint_left.mp sep frozenMem
    have wireMem := fvPerm.mem_iff.mp mem
    simp only [WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false]
    exact Or.inr (Or.inr (Or.inl wireMem))
  have frame := P.shift_frame early frozen nd s m
  refine ⟨frame.1,?_,frame.2⟩
  intro q bound absent
  rw [frame.2 q ?_]
  · exact ready q bound absent
  · intro member
    apply absent
    apply geometry.2
    simp only [List.mem_toFinset,List.mem_cons,hmrFrontInputs,WindowBank.rows,
      List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false,WindowRow.wires]
    simp only [List.mem_append] at member
    rcases member with hg | hv
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl (Or.inl hg)))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl (Or.inl hv))))))


end ECDSAAdd.Arithmetic.Paper935
