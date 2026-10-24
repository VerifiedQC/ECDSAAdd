import ECDSAAdd.Arithmetic.Paper935.HmrBankOrderTotal
import ECDSAAdd.Arithmetic.Paper935.WindowRowsLocality

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrBankOrder.rows_perm (order : HmrBankOrder) (bank : WindowBank) :
    (order.rows bank).Perm bank.rows := by
  apply List.perm_iff_count.mpr
  intro row
  cases order <;> simp [HmrBankOrder.rows,WindowBank.rows,List.count_cons,List.count_nil,Nat.add_comm,Nat.add_left_comm]

theorem planWindowRows_static_owned (requests : List (WindowRow × Nat))
    (A C : Arena) (outs : List WindowRow) (p : Program)
    (h : planWindowRows A requests=some (C,outs,p)) : rowsOwned C outs := by
  cases requests with
  | nil => cases h; simp [rowsOwned]
  | cons request rest =>
    rcases request with ⟨row,width⟩
    rw [planWindowRows] at h
    split at h
    next initial =>
      obtain ⟨⟨B,out,pf⟩,hf,h⟩ := Option.bind_eq_some_iff.mp h
      obtain ⟨⟨D,tail,pt⟩,ht,h⟩ := Option.bind_eq_some_iff.mp h
      dsimp only at h
      split at h
      next final => cases h; exact final
      next bad => simp at h
    next bad => simp at h

theorem compileHmrBankResize_static_owned (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p)) :
    rowsOwned C out.rows := by
  have own := planWindowRows_static_owned _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h)
  have perm := List.Perm.flatMap_right WindowRow.wires (order.rows_perm out)
  refine ⟨perm.nodup_iff.mp own.1,?_⟩
  intro q hq
  exact own.2 (List.mem_toFinset.mpr (perm.mem_iff.mpr (List.mem_toFinset.mp hq)))

/-- Static external ownership and physical exclusion need no numerical
window assumption. The same result also gives execution's frame law. -/
theorem compileHmrBankResize_locality (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p))
    (q : Wire) (owned : q∈A.live) (away : q∉b.rows.flatMap WindowRow.wires) (s : State) (m : List Bool) :
    q∈C.live ∧ q∉out.rows.flatMap WindowRow.wires ∧ (run p m s).basis q=s.basis q := by
  have source : (order.requests b w).map Prod.fst=order.rows b := by cases order <;> rfl
  have inputPerm := List.Perm.flatMap_right WindowRow.wires (order.rows_perm b)
  have outputPerm := List.Perm.flatMap_right WindowRow.wires (order.rows_perm out)
  have hc := planWindowRows_external _ _ _ _ _ (compileHmrBankResize_contract order A C b out w p h)
    s m q owned (by rw [source]; exact fun hq => away (inputPerm.mem_iff.mp hq))
  exact ⟨hc.1,fun hq => hc.2.1 (outputPerm.mem_iff.mpr hq),hc.2.2⟩

end ECDSAAdd.Arithmetic.Paper935
