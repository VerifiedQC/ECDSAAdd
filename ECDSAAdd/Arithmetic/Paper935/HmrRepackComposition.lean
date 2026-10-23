import ECDSAAdd.Arithmetic.Paper935.FusedRepackAllocation

namespace ECDSAAdd.Arithmetic.Paper935

/-- Compose observed relocations while retaining each actual borrow/retire boundary. -/
theorem Arena.checkRepack_cons_of_parts (A B C D : Arena) (old fresh : Wire)
    (rest : List (Wire × Wire)) (owned : old∈A.live)
    (reserved : A.reserve {fresh}=some B) (retired : B.retireSet {old}=C)
    (tail : C.checkRepack rest=some D) :
    A.checkRepack ((old,fresh)::rest)=some D := by
  rw [Arena.checkRepack,if_pos owned,reserved]
  change (B.retireSet {old}).checkRepack rest=some D
  rw [retired]
  exact tail

end ECDSAAdd.Arithmetic.Paper935
