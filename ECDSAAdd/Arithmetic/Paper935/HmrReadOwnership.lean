import ECDSAAdd.Arithmetic.Paper935.HmrReadPlan

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrRowPos_mem (payload : List Wire) (sign : Wire) (k : Nat) :
    hmrRowPos payload sign k∈payload++[sign] := by
  induction payload generalizing k with
  | nil => simp [hmrRowPos]
  | cons a rest ih =>
    cases k with
    | zero => simp [hmrRowPos]
    | succ k => simpa only [hmrRowPos,List.getElem?_cons_succ,List.cons_append,List.mem_cons] using
        (Or.inr (ih k) : rest[k]?.getD sign=a ∨ rest[k]?.getD sign∈rest++[sign])

/-- All decoder reads are owned before cache allocation; short-row sign
aliases do not introduce extra sites. -/
theorem hmrRowDecoder_owned (A : Arena) (j2 j3 j4 : Wire)
    (f gv fv : List Wire) (fs gvs fvs : Wire)
    (flags : j2∈A.live ∧ j3∈A.live ∧ j4∈A.live)
    (rows : ((f++[fs])++(gv++[gvs])++(fv++[fvs])).toFinset⊆A.live) :
    ∀i,hmrRowDecoderInputs j2 j3 j4 f gv fv fs gvs fvs i∈A.live := by
  have fo (k : Nat) : hmrRowPos f fs k∈A.live := by
    apply rows
    apply List.mem_toFinset.mpr
    exact List.mem_append_left _ (List.mem_append_left _ (hmrRowPos_mem f fs k))
  have go (k : Nat) : hmrRowPos gv gvs k∈A.live := by
    apply rows
    apply List.mem_toFinset.mpr
    exact List.mem_append_left _ (List.mem_append_right _ (hmrRowPos_mem gv gvs k))
  have vo (k : Nat) : hmrRowPos fv fvs k∈A.live := by
    apply rows
    apply List.mem_toFinset.mpr
    exact List.mem_append_right _ (hmrRowPos_mem fv fvs k)
  intro i
  fin_cases i
  · exact flags.1
  · exact flags.2.1
  · exact flags.2.2
  · exact fo 1
  · exact fo 2
  · exact fo 3
  · exact go 1
  · exact go 2
  · exact go 3
  · exact vo 3
  · exact vo 5
  · exact vo 6
  · exact vo 7

end ECDSAAdd.Arithmetic.Paper935
