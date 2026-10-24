import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontArithmetic

namespace ECDSAAdd.Arithmetic.Paper935

private theorem branch_lift_rows (a b : WindowRow) (q c : Bool) (s t : BasisState)
    (width : a.payload.length=b.payload.length)
    (word : regValue b.wires t=branchWord b.wires.length q c (regValue a.wires s) (regValue b.wires s))
    (lower : -((2^b.payload.length:Nat):Int) ≤ branchInt q c (a.value s) (b.value s))
    (upper : branchInt q c (a.value s) (b.value s) < ((2^b.payload.length:Nat):Int)) :
    b.value t=branchInt q c (a.value s) (b.value s) := by
  have len : a.wires.length=b.wires.length := by simp [WindowRow.wires,width]
  unfold WindowRow.value signedRegValue
  rw [word,len]
  apply branchWord_lift _ _ _ _ _
  · simp [WindowRow.wires]
  · simpa only [len] using regValue_lt a.wires s
  · exact regValue_lt b.wires s
  · simpa only [WindowRow.value,signedRegValue,WindowRow.wires,List.length_append,List.length_singleton,Nat.add_sub_cancel,width] using lower
  · simpa only [WindowRow.value,signedRegValue,WindowRow.wires,List.length_append,List.length_singleton,Nat.add_sub_cancel,width] using upper

theorem HmrSourceFront.Compiled.addCounter_signed (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis)
    (glo : -((2^(fgWidth+1):Nat):Int) ≤ branchInt (s.basis P.sigma) (s.basis P.branch)
      (P.headBank.f.value s.basis) (P.headBank.g.value s.basis))
    (ghi : branchInt (s.basis P.sigma) (s.basis P.branch)
      (P.headBank.f.value s.basis) (P.headBank.g.value s.basis) < ((2^(fgWidth+1):Nat):Int))
    (vlo : -((2^(vWidth+1):Nat):Int) ≤ branchInt (s.basis P.sigma) (s.basis P.branch)
      (P.headBank.fv.value s.basis) (P.headBank.gv.value s.basis))
    (vhi : branchInt (s.basis P.sigma) (s.basis P.branch)
      (P.headBank.fv.value s.basis) (P.headBank.gv.value s.basis) < ((2^(vWidth+1):Nat):Int)) :
    let out := run (P.addCounter early frozen counter) m s
    P.headBank.g.value out.basis=branchInt (s.basis P.sigma) (s.basis P.branch)
      (P.headBank.f.value s.basis) (P.headBank.g.value s.basis) ∧
    P.headBank.gv.value out.basis=branchInt (s.basis P.sigma) (s.basis P.branch)
      (P.headBank.fv.value s.basis) (P.headBank.gv.value s.basis) := by
  have state := h.addCounter_state P A bank fgWidth vWidth exitWidth early frozen counter s m ready
  have widths := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).2.1
  refine ⟨branch_lift_rows P.headBank.f P.headBank.g _ _ _ _ (widths.1.trans widths.2.1.symm)
    state.2.2.2.1 ?_ ?_,branch_lift_rows P.headBank.fv P.headBank.gv _ _ _ _
    (widths.2.2.1.trans widths.2.2.2.symm) state.2.2.2.2 ?_ ?_⟩
  · simpa only [widths.2.1] using glo
  · simpa only [widths.2.1] using ghi
  · simpa only [widths.2.2.2] using vlo
  · simpa only [widths.2.2.2] using vhi

end ECDSAAdd.Arithmetic.Paper935
