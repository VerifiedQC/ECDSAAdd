import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrBorrowOne_list (A B : Arena) (work : List Wire)
    (borrow : A.borrowMany 1=some (B,work)) : work=[hmrBorrowPorts work (0 : Fin 1)] := by
  have len := (A.borrowMany_contract B 1 work borrow).1
  cases work with
  | nil => simp at len
  | cons q rest => cases rest with
    | nil => rfl
    | cons r tail => simp at len

theorem hmrBorrowOne_extend (A B : Arena) (work inputs : List Wire)
    (borrow : A.borrowMany 1=some (B,work)) (nd : inputs.Nodup) (owned : inputs.toFinset⊆A.live) :
    (hmrBorrowPorts work (0 : Fin 1)::inputs).Nodup ∧
    (hmrBorrowPorts work (0 : Fin 1)::inputs).toFinset⊆B.live := by
  have result := A.borrowMany_append B 1 work inputs borrow nd owned
  have singleton := hmrBorrowOne_list A B work borrow
  rw [singleton] at result
  constructor
  · change ([hmrBorrowPorts work (0 : Fin 1)]++inputs).Nodup
    rw [List.nodup_append_comm]
    exact result.1
  · intro q hq
    apply result.2
    simp only [List.mem_toFinset,List.mem_cons] at hq
    rcases hq with rfl|hq
    · simp
    · exact List.mem_toFinset.mpr (List.mem_append_left _ hq)

end ECDSAAdd.Arithmetic.Paper935
