import ECDSAAdd.Arithmetic.Paper935.HmrEqualityCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrClassState

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrLadder_targets (a : HmrLiteral) (cells : List HmrLadderCell) :
    ∀g∈hmrLadder a cells,g.target∈cells.map HmrLadderCell.target := by
  induction cells generalizing a with
  | nil => simp [hmrLadder]
  | cons c cs ih =>
    intro g hg
    simp only [hmrLadder,List.mem_cons] at hg
    rcases hg with rfl|hg
    · simp
    · exact List.mem_cons_of_mem _ (ih ⟨c.target,true⟩ g hg)

theorem hmrLadderOutput_target (a : HmrLiteral) (cells : List HmrLadderCell) (nonempty : cells≠[]) :
    (hmrLadderOutput a cells).wire∈cells.map HmrLadderCell.target := by
  induction cells generalizing a with
  | nil => exact False.elim (nonempty rfl)
  | cons c cs ih =>
    cases cs with
    | nil => simp [hmrLadderOutput]
    | cons d ds => exact List.mem_cons_of_mem _ (ih ⟨c.target,true⟩ (by simp))

theorem compileHmrEquality_top_mem (A B : Arena) (bits : List Wire) (k : Nat) (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) : P.top∈work.toFinset := by
  have hc := compileHmrEquality_contract A B bits k work P h
  exact hc.2.2.2.2.2 (List.mem_toFinset.mpr (hmrLadderOutput_target P.head P.cells hc.2.2.2.2.1))

theorem compileHmrEquality_state (A B : Arena) (bits : List Wire) (k : Nat) (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let out := run (hmrAndSweep P.stages) m s
    out.phase=s.phase ∧ B.Ready out.basis ∧ out.basis P.top=decide (regValue bits s.basis=k) ∧
      ∀q∈A.live,out.basis q=s.basis q := by
  have hc := compileHmrEquality_contract A B bits k work P h
  have live := (A.borrowMany_live B _ work hc.2.1).1
  have dis := ((A.reserve_success work.toFinset).mp ⟨B,(A.borrowMany_contract B _ work hc.2.1).2.2⟩).2
  have frame (q : Wire) (away : q∉work.toFinset) : hmrAndAdvance P.stages s.basis q=s.basis q := by
    apply hmrAndAdvance_target_frame
    intro g hg eq
    have mem := hc.2.2.2.2.2 (List.mem_toFinset.mpr (hmrLadder_targets P.head P.cells g hg))
    exact away (eq ▸ mem)
  dsimp only
  rw [hmrAndSweep_run P.stages s m (compileHmrEquality_ready A B bits k work P h s.basis ready)]
  refine ⟨rfl,?_,compileHmrEquality_value A B bits k work P h s.basis,?_⟩
  · intro q bound absent
    have away : q∉work.toFinset := by
      intro hq
      apply absent
      rw [live]
      exact Finset.mem_union_right _ hq
    change hmrAndAdvance P.stages s.basis q=false
    rw [frame q away]
    apply ready q bound
    intro hq
    apply absent
    rw [live]
    exact Finset.mem_union_left _ hq
  · intro q hq
    exact frame q (fun hw => Finset.disjoint_left.mp dis hq hw)

end ECDSAAdd.Arithmetic.Paper935
