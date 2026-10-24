import ECDSAAdd.Arithmetic.Paper935.HmrEqualityCompiler

namespace ECDSAAdd.Arithmetic.Paper935

private theorem list5_shape (xs : List Wire) (h : xs.length=5) : ∃ a0 a1 a2 a3 a4,xs=[a0,a1,a2,a3,a4] := by
  rcases xs with _ | ⟨a0,xs⟩
  · simp at h
  rcases xs with _ | ⟨a1,xs⟩
  · simp at h
  rcases xs with _ | ⟨a2,xs⟩
  · simp at h
  rcases xs with _ | ⟨a3,xs⟩
  · simp at h
  rcases xs with _ | ⟨a4,xs⟩
  · simp at h
  have empty : xs=[] := List.length_eq_zero_iff.mp (by simp only [List.length_cons] at h; omega)
  subst xs
  exact ⟨a0,a1,a2,a3,a4,rfl⟩

private theorem list6_shape (xs : List Wire) (h : xs.length=6) : ∃ a0 a1 a2 a3 a4 a5,xs=[a0,a1,a2,a3,a4,a5] := by
  rcases xs with _ | ⟨a0,xs⟩
  · simp at h
  rcases xs with _ | ⟨a1,xs⟩
  · simp at h
  rcases xs with _ | ⟨a2,xs⟩
  · simp at h
  rcases xs with _ | ⟨a3,xs⟩
  · simp at h
  rcases xs with _ | ⟨a4,xs⟩
  · simp at h
  rcases xs with _ | ⟨a5,xs⟩
  · simp at h
  have empty : xs=[] := List.length_eq_zero_iff.mp (by simp only [List.length_cons] at h; omega)
  subst xs
  exact ⟨a0,a1,a2,a3,a4,a5,rfl⟩

/-- The early source zero test keeps exactly its five AND leaves and no
extra copied keeper. This certifies the actual equality compiler at six bits. -/
theorem compileHmrEarlyCounter_exists (A : Arena) (counter : List Wire)
    (len : counter.length=6) (nd : counter.Nodup) (owned : counter.toFinset⊆A.live)
    (capacity : A.live.card+5≤935) : ∃ B work P,compileHmrEquality A counter 0=some (B,work,P) := by
  obtain ⟨B,work,borrow⟩ := (A.borrowMany_capacity 5).mpr capacity
  have length := (A.borrowMany_contract B 5 work borrow).1
  have allND := (A.borrowMany_append B 5 work counter borrow nd owned).1
  obtain ⟨c0,c1,c2,c3,c4,c5,rfl⟩ := list6_shape counter len
  obtain ⟨w0,w1,w2,w3,w4,rfl⟩ := list5_shape work length
  have geometry : [c0,c1,w0,c2,w1,c3,w2,c4,w3,c5,w4].Nodup := by
    simp only [List.cons_append,List.nil_append,List.nodup_cons,List.mem_cons,List.not_mem_nil,
      List.nodup_nil,not_or,not_false_eq_true,and_true] at allND ⊢
    grind
  simpa [compileHmrEquality,borrow,hmrEqualityLiterals,HmrEqualityPlan.Valid,hmrLadderPorts,geometry] using owned

end ECDSAAdd.Arithmetic.Paper935
