import ECDSAAdd.Arithmetic.Paper935.HmrReadOwnership

namespace ECDSAAdd.Arithmetic.Paper935

/-- Only the three selectors need to be distinct; coefficient reads may
share sign-extension wires. Fresh selectors establish this geometry. -/
theorem hmrRowDecoder_geometry (A B : Arena) (work : List Wire)
    (borrow : A.borrowMany 6=some (B,work)) (L : HmrReadLayout)
    (rows : L.rows.toFinset⊆A.live) :
    HmrDecoderInputs (hmrRowDecoderInputs (hmrBorrowPorts work (0 : Fin 6))
      (hmrBorrowPorts work (2 : Fin 6)) (hmrBorrowPorts work (4 : Fin 6))
      L.f L.gv L.fv L.fs L.gvs L.fvs) := by
  have ports := hmrBorrowPorts_contract A B 6 work borrow
  have fo (k : Nat) : hmrRowPos L.f L.fs k∈A.live :=
    rows (List.mem_toFinset.mpr (List.mem_append_left _ (List.mem_append_left _ (hmrRowPos_mem L.f L.fs k))))
  have go (k : Nat) : hmrRowPos L.gv L.gvs k∈A.live :=
    rows (List.mem_toFinset.mpr (List.mem_append_left _ (List.mem_append_right _ (hmrRowPos_mem L.gv L.gvs k))))
  have vo (k : Nat) : hmrRowPos L.fv L.fvs k∈A.live :=
    rows (List.mem_toFinset.mpr (List.mem_append_right _ (hmrRowPos_mem L.fv L.fvs k)))
  have away (i : Fin 6) (q : Wire) (hq : q∈A.live) : hmrBorrowPorts work i≠q := by
    intro eq
    exact ports.2.2 i (eq ▸ hq)
  have af (i : Fin 6) (k : Nat) := away i _ (fo k)
  have ag (i : Fin 6) (k : Nat) := away i _ (go k)
  have av (i : Fin 6) (k : Nat) := away i _ (vo k)
  intro i j special
  fin_cases i <;> fin_cases j <;>
    simp_all [hmrRowDecoderInputs,ports.1.eq_iff,Ne.symm (af _ _),Ne.symm (ag _ _),Ne.symm (av _ _)]

end ECDSAAdd.Arithmetic.Paper935
