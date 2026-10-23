import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout

namespace ECDSAAdd.Arithmetic.Paper935

/-- A suffix of an ordered row bank inherits its physical distinctness. -/
theorem hmrRows_distinct_drop (rows : List WindowRow) (n : Nat)
    (h : (rows.flatMap WindowRow.wires).Nodup) :
    ((rows.drop n).flatMap WindowRow.wires).Nodup :=
  ((List.drop_sublist n rows).flatMap WindowRow.wires).nodup h

/-- Dropping completed rows preserves ownership of the remaining row view. -/
theorem hmrRows_owned_drop (A : Arena) (rows : List WindowRow) (n : Nat)
    (h : rowsOwned A rows) : rowsOwned A (rows.drop n) := by
  refine ⟨hmrRows_distinct_drop rows n h.1,?_⟩
  intro q hq
  apply h.2
  exact List.mem_toFinset.mpr (((List.drop_sublist n rows).flatMap WindowRow.wires).subset
    (List.mem_toFinset.mp hq))

end ECDSAAdd.Arithmetic.Paper935
