import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow

namespace ECDSAAdd.Arithmetic.Paper935

/-- Reordering two checked disjoint reservations changes no addresses or
quantum state. The original sequence remains separately certified. -/
theorem Arena.reserve_commute (A B C : Arena) (xs ys : Finset Wire)
    (first : A.reserve xs=some B) (second : B.reserve ys=some C) :
    ∃D,A.reserve ys=some D ∧ D.reserve xs=some C := by
  unfold Arena.reserve at first
  split at first
  next vx =>
    cases first
    unfold Arena.reserve at second
    dsimp only at second
    split at second
    next vy =>
      cases second
      have ay : Disjoint A.live ys := Finset.disjoint_left.mpr (by
        intro q ha hy
        exact Finset.disjoint_left.mp vy.2 (Finset.mem_union_left _ ha) hy)
      have yx : Disjoint ys xs := Finset.disjoint_left.mpr (by
        intro q hy hx
        exact Finset.disjoint_left.mp vy.2 (Finset.mem_union_right _ hx) hy)
      let D : Arena := ⟨A.live∪ys,Finset.union_subset A.bounded vy.1⟩
      have dx : Disjoint (A.live∪ys) xs := Finset.disjoint_union_left.mpr ⟨vx.2,yx⟩
      refine ⟨D,?_,?_⟩
      · simp only [Arena.reserve,vy.1,ay,and_self,dite_true]
        rfl
      · simp only [Arena.reserve,D,vx.1,dx,and_self,dite_true]
        congr 2
        exact Finset.union_right_comm _ _ _
    next invalid => simp at second
  next invalid => simp at first

theorem Arena.checkBorrow_commute (A B C : Arena) (n k : Nat) (xs ys : List Wire)
    (first : A.checkBorrow n xs=some B) (second : B.checkBorrow k ys=some C) :
    ∃D,A.checkBorrow k ys=some D ∧ D.checkBorrow n xs=some C := by
  have x := A.checkBorrow_contract B n xs first
  have y := B.checkBorrow_contract C k ys second
  obtain ⟨D,ad,dc⟩ := A.reserve_commute B C xs.toFinset ys.toFinset x.2.2 y.2.2
  exact ⟨D,by simp only [Arena.checkBorrow,y.1,y.2.1,and_self,ite_true]; exact ad,
    by simp only [Arena.checkBorrow,x.1,x.2.1,and_self,ite_true]; exact dc⟩

end ECDSAAdd.Arithmetic.Paper935
