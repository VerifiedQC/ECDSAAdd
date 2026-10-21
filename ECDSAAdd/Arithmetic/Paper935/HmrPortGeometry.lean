import ECDSAAdd.Arithmetic.Paper935.BorrowGeometry

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrGetD_eq_iff (xs : List Wire) (nd : xs.Nodup) (i j : Nat)
    (hi : i<xs.length) (hj : j<xs.length) : xs.getD i 0=xs.getD j 0 ↔ i=j := by
  rw [List.getD_eq_get xs 0 ⟨i,hi⟩,List.getD_eq_get xs 0 ⟨j,hj⟩]
  constructor
  · intro eq
    exact congrArg (fun k : Fin xs.length => k.val) ((List.nodup_iff_injective_get.mp nd) eq)
  · intro eq; subst j; rfl

theorem hmrBorrowClean (A B : Arena) (inputs work : List Wire) (n : Nat)
    (borrow : A.borrowMany n=some (B,work)) (s : BasisState) (ready : A.Ready s)
    (i : Nat) (lower : inputs.length ≤ i) (upper : i < inputs.length+n) :
    s ((inputs++work).getD i 0)=false := by
  have hc := A.borrowMany_contract B n work borrow
  have zero := (A.reserve_ready B work.toFinset s ready hc.2.2).2
  apply zero
  apply List.mem_toFinset.mpr
  rw [List.getD_append_right inputs work 0 i lower,
    List.getD_eq_getElem work 0 (show i-inputs.length<work.length by rw [hc.1]; omega)]
  exact List.getElem_mem _

theorem hmrBorrowOwned (A B : Arena) (inputs work : List Wire) (n : Nat)
    (borrow : A.borrowMany n=some (B,work)) (owned : inputs.toFinset⊆A.live)
    (i : Nat) (bound : i<(inputs++work).length) :
    (inputs++work).getD i 0∈B.live := by
  have live := (A.borrowMany_live B n work borrow).1
  rw [List.getD_eq_getElem (inputs++work) 0 bound,live]
  have mem := List.getElem_mem bound
  rcases List.mem_append.mp mem with h | h
  · exact Finset.mem_union_left _ (owned (List.mem_toFinset.mpr h))
  · exact Finset.mem_union_right _ (List.mem_toFinset.mpr h)

end ECDSAAdd.Arithmetic.Paper935
