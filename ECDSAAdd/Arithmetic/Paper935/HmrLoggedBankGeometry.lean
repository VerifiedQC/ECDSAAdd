import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRowLayout
import ECDSAAdd.Arithmetic.Paper935.HmrBankGeometry

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBankResizeLog_static_owned (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    rowsOwned C out.rows := by
  have own := planWindowRowsLog_static_owned _ _ _ _ _ _ (compileHmrBankResizeLog_contract order A C b out w logs p h)
  have perm := List.Perm.flatMap_right WindowRow.wires (order.rows_perm out)
  refine ⟨perm.nodup_iff.mp own.1,?_⟩
  intro q hq
  exact own.2 (List.mem_toFinset.mpr (perm.mem_iff.mpr (List.mem_toFinset.mp hq)))

/-- Static external ownership and physical exclusion need no numerical
window assumption. The same result also gives execution's frame law. -/
theorem compileHmrBankResizeLog_locality (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (q : Wire) (owned : q∈A.live) (away : q∉b.rows.flatMap WindowRow.wires) (s : State) (m : List Bool) :
    q∈C.live ∧ q∉out.rows.flatMap WindowRow.wires ∧ (run p m s).basis q=s.basis q := by
  have source : (order.requests b w).map Prod.fst=order.rows b := by cases order <;> rfl
  have inputPerm := List.Perm.flatMap_right WindowRow.wires (order.rows_perm b)
  have outputPerm := List.Perm.flatMap_right WindowRow.wires (order.rows_perm out)
  have hc := planWindowRowsLog_external _ _ _ _ _ _ (compileHmrBankResizeLog_contract order A C b out w logs p h)
    s m q owned (by rw [source]; exact fun hq => away (inputPerm.mem_iff.mp hq))
  exact ⟨hc.1,fun hq => hc.2.1 (outputPerm.mem_iff.mpr hq),hc.2.2⟩

theorem compileHmrBankResizeLog_fixed (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (fixed : List Wire) (nd : (fixed++b.rows.flatMap WindowRow.wires).Nodup)
    (owned : (fixed++b.rows.flatMap WindowRow.wires).toFinset⊆A.live) :
    (fixed++out.rows.flatMap WindowRow.wires).Nodup ∧
    (fixed++out.rows.flatMap WindowRow.wires).toFinset⊆C.live ∧
    ∀s m q,q∈fixed → (run p m s).basis q=s.basis q := by
  have pair := List.nodup_append'.mp nd
  have rows := compileHmrBankResizeLog_static_owned order A C b out w logs p h
  have fixedOwned (q : Wire) (hq : q∈fixed) : q∈A.live :=
    owned (List.mem_toFinset.mpr (List.mem_append_left _ hq))
  have static (q : Wire) (hq : q∈fixed) : q∈C.live ∧ q∉out.rows.flatMap WindowRow.wires := by
    have hc := compileHmrBankResizeLog_locality order A C b out w logs p h q (fixedOwned q hq)
      (List.disjoint_left.mp pair.2.2 hq) ⟨false,fun _ => false⟩ []
    exact ⟨hc.1,hc.2.1⟩
  refine ⟨List.nodup_append'.mpr ⟨pair.1,rows.1,List.disjoint_left.mpr (fun q hq => (static q hq).2)⟩,?_,?_⟩
  · intro q hq
    simp only [List.mem_toFinset,List.mem_append] at hq
    rcases hq with hq|hq
    · exact (static q hq).1
    · exact rows.2 (List.mem_toFinset.mpr hq)
  · intro s m q hq
    exact (compileHmrBankResizeLog_locality order A C b out w logs p h q (fixedOwned q hq)
      (List.disjoint_left.mp pair.2.2 hq) s m).2.2

theorem compileHmrBankResizeLog_widths (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (logs : List (List Wire)) (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    out.Widths w := by
  have widths := planWindowRowsLog_widths _ _ _ _ _ _ (compileHmrBankResizeLog_contract order A C b out w logs p h)
  cases order <;>
    simp only [HmrBankOrder.rows,HmrBankOrder.requests,List.map_cons,List.map_nil,List.cons.injEq] at widths
  all_goals unfold WindowBank.Widths; tauto


end ECDSAAdd.Arithmetic.Paper935
