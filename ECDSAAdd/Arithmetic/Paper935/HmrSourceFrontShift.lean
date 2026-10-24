import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontArithmetic

namespace ECDSAAdd.Arithmetic.Paper935

def HmrSourceFront.shift (P : HmrSourceFront) (early : Bool) (frozen : Wire) : Program :=
  hmrShiftDown P.headBank.g.sign P.headBank.g.payload ++
  (if early then hmrShiftUpFree P.headBank.fv.sign P.headBank.fv.payload
   else hmrShiftUpArmed frozen P.headBank.fv.sign P.headBank.fv.payload)

theorem HmrSourceFront.shift_frame (P : HmrSourceFront) (early : Bool) (frozen : Wire)
    (nd : early=false → (frozen::P.headBank.fv.sign::P.headBank.fv.payload).Nodup)
    (s : State) (m : List Bool) :
    (run (P.shift early frozen) m s).phase=s.phase ∧
    ∀q,q∉P.headBank.g.payload++P.headBank.fv.payload →
      (run (P.shift early frozen) m s).basis q=s.basis q := by
  let mid := run (hmrShiftDown P.headBank.g.sign P.headBank.g.payload) m s
  have down := hmrShift_free_frame P.headBank.g.sign P.headBank.g.payload s m
  have count := (hmrShift_counts P.headBank.g.sign frozen P.headBank.g.payload).2.1
  unfold HmrSourceFront.shift
  rw [run_append,run_take,count,List.drop_zero]
  have up : (run (if early then hmrShiftUpFree P.headBank.fv.sign P.headBank.fv.payload
      else hmrShiftUpArmed frozen P.headBank.fv.sign P.headBank.fv.payload) m mid).phase=mid.phase ∧
      ∀q,q∉P.headBank.fv.payload →
      (run (if early then hmrShiftUpFree P.headBank.fv.sign P.headBank.fv.payload
      else hmrShiftUpArmed frozen P.headBank.fv.sign P.headBank.fv.payload) m mid).basis q=mid.basis q := by
    cases early
    · exact hmrShiftUpArmed_frame _ _ _ (nd rfl) mid m
    · exact (hmrShift_free_frame P.headBank.fv.sign P.headBank.fv.payload mid m).2.2
  refine ⟨up.1.trans down.1,?_⟩
  intro q hq
  have hg : q∉P.headBank.g.payload := fun h => hq (List.mem_append_left _ h)
  have hv : q∉P.headBank.fv.payload := fun h => hq (List.mem_append_right _ h)
  exact (up.2 q hv).trans (down.2.1 q hg)

theorem HmrSourceFront.Compiled.shift_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
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
