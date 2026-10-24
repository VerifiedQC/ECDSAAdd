import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontEntryCounter

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Compiled.entry_frame (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.pairArena.Ready s.basis)
    (q : Wire) (apart : q≠P.branch ∧ q≠P.sigma ∧ q∉P.pairBank.rows.flatMap WindowRow.wires++counter) :
    (run (P.entry counter) m s).basis q=s.basis q := by
  let root := run (P.root counter) m s
  let routed := run (P.route counter) m root
  have first := h.root_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have second := h.route_state P A bank fgWidth vWidth exitWidth early frozen counter root m first.2.1
  have third := h.branch_state P A bank fgWidth vWidth exitWidth early frozen counter routed m second.2.1
  have widths := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).1
  have fg : P.pairBank.f.wires.length=P.pairBank.g.wires.length := by
    simp only [WindowRow.wires,List.length_append,List.length_singleton,widths.1,widths.2.1]
  have vv : P.pairBank.fv.wires.length=P.pairBank.gv.wires.length := by
    simp only [WindowRow.wires,List.length_append,List.length_singleton,widths.2.2.1,widths.2.2.2]
  have route := hmrRouteStage_run P.sigma _ _ _ _ counter
    (h.route_geometry P A bank fgWidth vWidth exitWidth early frozen counter) fg vv root m
  have outside : q∉((P.pairBank.f.wires++P.pairBank.fv.wires)++
      (P.pairBank.g.wires++P.pairBank.gv.wires))++counter := by
    intro member
    apply apart.2.2
    simp only [WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false]
    simp only [List.mem_append] at member
    tauto
  rw [HmrSourceFront.entry_run]
  exact (third.2.2.2 q apart.1).trans ((route.2.1 q outside).trans (first.2.2.2.2 q apart.2.1))

theorem HmrSourceFront.Compiled.entry_frozen (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.pairArena.Ready s.basis) (late : early=false) :
    (run (P.entry counter) m s).basis frozen=s.basis frozen := by
  have geo := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have fm : frozen∈hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires := by
    simp [hmrFrontInputs,late]
  have bne : frozen≠P.branch := fun eq => (List.nodup_cons.mp geo.1).1 (List.mem_cons_of_mem _ (eq ▸ fm))
  have sne : frozen≠P.sigma := fun eq => (List.nodup_cons.mp (List.nodup_cons.mp geo.1).2).1 (eq ▸ fm)
  have tailND := (List.nodup_cons.mp (List.nodup_cons.mp geo.1).2).2
  have perm : (frozen::(P.pairBank.rows.flatMap WindowRow.wires++counter)).Perm
      (hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires) := by
    apply List.perm_iff_count.mpr
    intro q
    simp [hmrFrontInputs,late,List.count_append,List.count_cons,Nat.add_comm,Nat.add_left_comm]
  exact h.entry_frame P A bank fgWidth vWidth exitWidth early frozen counter s m ready frozen
    ⟨bne,sne,(List.nodup_cons.mp (perm.nodup_iff.mpr tailND)).1⟩

end ECDSAAdd.Arithmetic.Paper935
