import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontRoot
import ECDSAAdd.Arithmetic.Paper935.HmrRouteStageRun

namespace ECDSAAdd.Arithmetic.Paper935

def HmrSourceFront.route (P : HmrSourceFront) (counter : List Wire) : Program :=
  hmrRouteStage P.sigma P.pairBank.f.wires P.pairBank.g.wires P.pairBank.fv.wires P.pairBank.gv.wires counter

theorem HmrSourceFront.Compiled.route_geometry (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter) :
    (P.sigma::(((P.pairBank.f.wires++P.pairBank.fv.wires)++
      (P.pairBank.g.wires++P.pairBank.gv.wires))++counter)).Nodup := by
  have flags := h.flags_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have sigmaND := (List.nodup_cons.mp flags.1).2
  have perm : (P.sigma::((((P.pairBank.f.wires++P.pairBank.fv.wires)++
      (P.pairBank.g.wires++P.pairBank.gv.wires))++counter)++(if early then [] else [frozen]))).Perm
      (P.sigma::(hmrFrontInputs early frozen counter++P.pairBank.rows.flatMap WindowRow.wires)) := by
    apply List.perm_iff_count.mpr
    intro q
    simp [hmrFrontInputs,WindowBank.rows,List.count_append,List.count_cons,Nat.add_comm,Nat.add_left_comm,Nat.add_assoc]
  have result := perm.nodup_iff.mpr sigmaND
  change ((P.sigma::(((P.pairBank.f.wires++P.pairBank.fv.wires)++
      (P.pairBank.g.wires++P.pairBank.gv.wires))++counter))++(if early then [] else [frozen])).Nodup at result
  exact (List.nodup_append'.mp result).1

theorem HmrSourceFront.Compiled.route_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.sigmaArena.Ready s.basis) :
    let out := run (P.route counter) m s
    out.phase=s.phase ∧ P.sigmaArena.Ready out.basis ∧
    out.basis P.sigma=s.basis P.sigma ∧ out.basis P.branch=false ∧
    regValue counter out.basis=(if s.basis P.sigma then 2^counter.length-1-regValue counter s.basis else regValue counter s.basis) := by
  have geometry := h.route_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have widths := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).1
  have fg : P.pairBank.f.wires.length=P.pairBank.g.wires.length := by
    simp only [WindowRow.wires,List.length_append,List.length_singleton,widths.1,widths.2.1]
  have vv : P.pairBank.fv.wires.length=P.pairBank.gv.wires.length := by
    simp only [WindowRow.wires,List.length_append,List.length_singleton,widths.2.2.1,widths.2.2.2]
  have actual := hmrRouteStage_run P.sigma _ _ _ _ counter geometry fg vv s m
  have pair := h.pair_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have live := (P.pairArena.borrowMany_live P.sigmaArena 1 P.sigmaWork h.sigmaBorrow).1
  have owned : ∀q∈((P.pairBank.f.wires++P.pairBank.fv.wires)++
      (P.pairBank.g.wires++P.pairBank.gv.wires))++counter,q∈P.sigmaArena.live := by
    intro q hq
    rw [live]
    apply Finset.mem_union_left
    apply pair.2
    simp only [List.mem_toFinset,hmrFrontInputs,WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false]
    simp only [List.mem_append] at hq
    tauto
  have after : P.sigmaArena.Ready (run (P.route counter) m s).basis := by
    intro q bound absent
    unfold HmrSourceFront.route
    rw [actual.2.1 q (fun hq => absent (owned q hq))]
    exact ready q bound absent
  exact ⟨actual.1,after,actual.2.1 P.sigma (List.nodup_cons.mp geometry).1,
    hmrBorrowPorts_clean _ _ _ _ h.branchBorrow _ after (0 : Fin 1),actual.2.2.1⟩

end ECDSAAdd.Arithmetic.Paper935
