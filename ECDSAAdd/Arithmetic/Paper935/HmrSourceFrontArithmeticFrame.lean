import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontSigned

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Compiled.addCounter_frame (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis) :
    ∀q,q∉P.headBank.g.wires++P.headBank.gv.wires++counter →
      (run (P.addCounter early frozen counter) m s).basis q=s.basis q := by
  let body := P.arithmetic.program P.sigma P.branch P.headBank.f.wires P.headBank.g.wires
    P.headBank.fv.wires P.headBank.gv.wires
  let mid := run body m s
  let tape := m.drop (measurementCount body)
  have compiled := compileHmrHybridF4_contract _ _ _ _ _ _ _ _ h.arithmetic
  have arithmetic := compiled.run_state P.arithmetic _ _ _ _ _ _ _ s m ready
  have counterState := compileHmrCounterStep_return _ _ early false _ _ _ h.counter mid tape arithmetic.2.1
  intro q away
  have rowsAway : q∉P.headBank.g.wires++P.headBank.gv.wires := fun hq => away (List.mem_append_left _ hq)
  have counterAway : q∉counter := fun hq => away (List.mem_append_right _ hq)
  unfold HmrSourceFront.addCounter
  rw [run_append,run_take]
  exact (counterState.2.2.2 q counterAway).trans (arithmetic.2.2.2.2.1 q rowsAway)

theorem HmrSourceFront.Compiled.addCounter_fixed (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis) :
    ∀q∈P.branch::P.sigma::((if early then [] else [frozen])++P.headBank.f.wires++P.headBank.fv.wires),
      (run (P.addCounter early frozen counter) m s).basis q=s.basis q := by
  have geo := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have perm : ((P.branch::P.sigma::((if early then [] else [frozen])++P.headBank.f.wires++P.headBank.fv.wires))++
      (P.headBank.g.wires++P.headBank.gv.wires++counter)).Perm
      (P.branch::P.sigma::(hmrFrontInputs early frozen counter++P.headBank.rows.flatMap WindowRow.wires)) := by
    apply List.perm_iff_count.mpr
    intro q
    simp [hmrFrontInputs,WindowBank.rows,List.count_cons,List.count_append,Nat.add_comm,Nat.add_left_comm]
  have sep := (List.nodup_append'.mp (perm.nodup_iff.mpr geo.1)).2.2
  intro q member
  exact h.addCounter_frame P A bank fgWidth vWidth exitWidth early frozen counter s m ready q
    (List.disjoint_left.mp sep member)

end ECDSAAdd.Arithmetic.Paper935
