import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

/-- Check an ordered source scratch-allocation log without choosing any wire. -/
def Arena.checkBorrow (A : Arena) (n : Nat) (work : List Wire) : Option Arena :=
  if work.length=n ∧ work.Nodup then A.reserve work.toFinset else none

theorem Arena.checkBorrow_contract (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) :
    work.length=n ∧ work.Nodup ∧ A.reserve work.toFinset=some B := by
  unfold checkBorrow at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next invalid => simp at h

theorem Arena.checkBorrow_generic (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.borrowMany n=some (B,work)) : A.checkBorrow n work=some B := by
  have contract := A.borrowMany_contract B n work h
  simp only [checkBorrow,contract.1,contract.2.1,and_self,if_true]
  exact contract.2.2

theorem Arena.checkBorrow_live (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) : B.live=A.live∪work.toFinset := by
  have reserved := (A.checkBorrow_contract B n work h).2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,reserved⟩
  simp only [Arena.reserve,dif_pos valid,Option.some.injEq] at reserved
  cases reserved
  rfl

theorem Arena.checkBorrow_clean (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) (s : BasisState) (ready : A.Ready s) :
    B.Ready s ∧ ∀q∈work,s q=false := by
  have reserved := (A.checkBorrow_contract B n work h).2.2
  have clean := A.reserve_ready B work.toFinset s ready reserved
  exact ⟨clean.1,fun q hq => clean.2 q (List.mem_toFinset.mpr hq)⟩

theorem Arena.checkBorrow_return (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) (s : BasisState) (ready : A.Ready s) :
    B.release work.toFinset s=some A := by
  have contract := A.checkBorrow_contract B n work h
  have valid := (A.reserve_success work.toFinset).mp ⟨B,contract.2.2⟩
  have live := A.checkBorrow_live B n work h
  have clean := (A.reserve_ready B work.toFinset s ready contract.2.2).2
  have owned : work.toFinset⊆B.live := by rw [live]; exact Finset.subset_union_right
  unfold Arena.release
  rw [if_pos (And.intro owned clean)]
  congr 1
  cases A
  cases B
  simp only [Arena.mk.injEq]
  dsimp at live valid ⊢
  rw [live,Finset.union_sdiff_cancel_right valid.2]

theorem Arena.checkBorrow_card (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) : B.live.card=A.live.card+n := by
  have contract := A.checkBorrow_contract B n work h
  have valid := (A.reserve_success work.toFinset).mp ⟨B,contract.2.2⟩
  rw [A.checkBorrow_live B n work h,Finset.card_union_of_disjoint valid.2,
    List.toFinset_card_of_nodup contract.2.1,contract.1]

end ECDSAAdd.Arithmetic.Paper935
