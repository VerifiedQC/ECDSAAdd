import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrLoggedPorts_contract (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) :
    Function.Injective (hmrBorrowPorts work (n:=n)) ∧
    (∀i : Fin n,hmrBorrowPorts work i∈B.live) ∧
    (∀i : Fin n,hmrBorrowPorts work i∉A.live) := by
  have hc := A.checkBorrow_contract B n work h
  have hv := (A.reserve_success work.toFinset).mp ⟨B,hc.2.2⟩
  have mem (i : Fin n) : hmrBorrowPorts work i∈work.toFinset := by
    apply List.mem_toFinset.mpr
    unfold hmrBorrowPorts
    rw [List.getD_eq_getElem work 0 (by rw [hc.1]; exact i.isLt)]
    exact List.getElem_mem _
  refine ⟨?_,?_,?_⟩
  · intro i j eq
    apply Fin.ext
    exact (hmrGetD_eq_iff work hc.2.1 i.val j.val
      (by rw [hc.1]; exact i.isLt) (by rw [hc.1]; exact j.isLt)).mp eq
  · intro i
    rw [A.checkBorrow_live B n work h]
    exact Finset.mem_union_right _ (mem i)
  · intro i hi
    exact Finset.disjoint_left.mp hv.2 hi (mem i)

theorem hmrLoggedPorts_clean (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) (s : BasisState) (ready : A.Ready s)
    (i : Fin n) : s (hmrBorrowPorts work i)=false := by
  have hc := A.checkBorrow_contract B n work h
  apply (A.reserve_ready B work.toFinset s ready hc.2.2).2
  apply List.mem_toFinset.mpr
  unfold hmrBorrowPorts
  rw [List.getD_eq_getElem work 0 (by rw [hc.1]; exact i.isLt)]
  exact List.getElem_mem _


end ECDSAAdd.Arithmetic.Paper935
