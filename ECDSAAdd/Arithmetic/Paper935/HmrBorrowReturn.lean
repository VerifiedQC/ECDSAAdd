import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrBorrowPorts_surjective (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.borrowMany n=some (B,work)) (q : Wire) (hq : q∈work) :
    ∃i : Fin n,hmrBorrowPorts work i=q := by
  obtain ⟨i,hi⟩ := List.mem_iff_get.mp hq
  have len := (A.borrowMany_contract B n work h).1
  refine ⟨⟨i.val,by rw [←len]; exact i.isLt⟩,?_⟩
  simpa only [hmrBorrowPorts,List.getD_eq_getElem _ _ i.isLt,List.get_eq_getElem] using hi

/-- Returning an actual borrow requires the current unused sites and the
returned sites to be clean; unrelated owned data may have changed. -/
theorem hmrBorrow_return_current (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.borrowMany n=some (B,work)) (s : BasisState)
    (ready : B.Ready s) (clean : ∀i : Fin n,s (hmrBorrowPorts work i)=false) :
    A.Ready s ∧ B.release work.toFinset s=some A := by
  have before : A.Ready s := by
    intro q hq hn
    by_cases hb : q∈B.live
    · rw [(A.borrowMany_live B n work h).1] at hb
      have mem := (Finset.mem_union.mp hb).resolve_left hn
      obtain ⟨i,eq⟩ := hmrBorrowPorts_surjective A B n work h q (List.mem_toFinset.mp mem)
      rw [←eq]
      exact clean i
    · exact ready q hq hb
  exact ⟨before,hmrBorrow_return A B n work h s before⟩

end ECDSAAdd.Arithmetic.Paper935
