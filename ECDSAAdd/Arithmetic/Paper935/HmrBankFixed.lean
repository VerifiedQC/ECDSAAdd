import ECDSAAdd.Arithmetic.Paper935.HmrBankGeometry

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrBankResize_fixed (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) (p : Program) (h : compileHmrBankResize order A b w=some (C,out,p))
    (fixed : List Wire) (nd : (fixed++b.rows.flatMap WindowRow.wires).Nodup)
    (owned : (fixed++b.rows.flatMap WindowRow.wires).toFinset⊆A.live) :
    (fixed++out.rows.flatMap WindowRow.wires).Nodup ∧
    (fixed++out.rows.flatMap WindowRow.wires).toFinset⊆C.live ∧
    ∀s m q,q∈fixed → (run p m s).basis q=s.basis q := by
  have pair := List.nodup_append'.mp nd
  have rows := compileHmrBankResize_static_owned order A C b out w p h
  have fixedOwned (q : Wire) (hq : q∈fixed) : q∈A.live :=
    owned (List.mem_toFinset.mpr (List.mem_append_left _ hq))
  have static (q : Wire) (hq : q∈fixed) : q∈C.live ∧ q∉out.rows.flatMap WindowRow.wires := by
    have hc := compileHmrBankResize_locality order A C b out w p h q (fixedOwned q hq)
      (List.disjoint_left.mp pair.2.2 hq) ⟨false,fun _ => false⟩ []
    exact ⟨hc.1,hc.2.1⟩
  refine ⟨List.nodup_append'.mpr ⟨pair.1,rows.1,List.disjoint_left.mpr (fun q hq => (static q hq).2)⟩,?_,?_⟩
  · intro q hq
    simp only [List.mem_toFinset,List.mem_append] at hq
    rcases hq with hq|hq
    · exact (static q hq).1
    · exact rows.2 (List.mem_toFinset.mpr hq)
  · intro s m q hq
    exact (compileHmrBankResize_locality order A C b out w p h q (fixedOwned q hq)
      (List.disjoint_left.mp pair.2.2 hq) s m).2.2

end ECDSAAdd.Arithmetic.Paper935
