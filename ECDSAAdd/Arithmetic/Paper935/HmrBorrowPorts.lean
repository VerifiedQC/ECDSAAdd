import ECDSAAdd.Arithmetic.Paper935.HmrPortGeometry

namespace ECDSAAdd.Arithmetic.Paper935

def hmrBorrowPorts (work : List Wire) {n : Nat} (i : Fin n) : Wire := work.getD i.val 0

theorem hmrBorrowPorts_contract (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.borrowMany n=some (B,work)) :
    Function.Injective (hmrBorrowPorts work (n:=n)) ∧
    (∀i : Fin n,hmrBorrowPorts work i∈B.live) ∧
    (∀i : Fin n,hmrBorrowPorts work i∉A.live) := by
  have hc := A.borrowMany_contract B n work h
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
    rw [(A.borrowMany_live B n work h).1]
    exact Finset.mem_union_right _ (mem i)
  · intro i hi
    exact Finset.disjoint_left.mp hv.2 hi (mem i)

theorem hmrBorrowPorts_clean (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.borrowMany n=some (B,work)) (s : BasisState) (ready : A.Ready s)
    (i : Fin n) : s (hmrBorrowPorts work i)=false := by
  have hc := A.borrowMany_contract B n work h
  apply (A.reserve_ready B work.toFinset s ready hc.2.2).2
  apply List.mem_toFinset.mpr
  unfold hmrBorrowPorts
  rw [List.getD_eq_getElem work 0 (by rw [hc.1]; exact i.isLt)]
  exact List.getElem_mem _

theorem hmrBorrow_return (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.borrowMany n=some (B,work)) (s : BasisState) (ready : A.Ready s) :
    B.release work.toFinset s=some A := by
  have hc := A.borrowMany_contract B n work h
  have hv := (A.reserve_success work.toFinset).mp ⟨B,hc.2.2⟩
  have live := (A.borrowMany_live B n work h).1
  have clean := (A.reserve_ready B work.toFinset s ready hc.2.2).2
  have owned : work.toFinset⊆B.live := by rw [live]; exact Finset.subset_union_right
  unfold Arena.release
  rw [if_pos (And.intro owned clean)]
  congr 1
  cases A
  cases B
  simp only [Arena.mk.injEq]
  dsimp at live hv ⊢
  rw [live,Finset.union_sdiff_cancel_right hv.2]

end ECDSAAdd.Arithmetic.Paper935
