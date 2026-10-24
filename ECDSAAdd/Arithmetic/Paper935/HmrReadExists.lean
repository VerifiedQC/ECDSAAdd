import ECDSAAdd.Arithmetic.Paper935.HmrRowDecoderGeometry

namespace ECDSAAdd.Arithmetic.Paper935

/-- The actual R4--R6 allocator succeeds from entry ownership, separation,
and thirteen free sites. No intermediate compile success is assumed. -/
theorem compileHmrRead_exists (A : Arena) (L : HmrReadLayout)
    (rows : L.rows.toFinset⊆A.live) (classOwned : L.c3∈A.live)
    (classApart : L.c3∉L.rows) (record : L.record.toFinset⊆A.live)
    (recordND : L.record.Nodup) (capacity : A.live.card+13≤935) :
    ∃ P,compileHmrRead A L=some P := by
  have vo (k : Nat) : hmrRowPos L.fv L.fvs k∈L.rows :=
    List.mem_append_right _ (hmrRowPos_mem L.fv L.fvs k)
  have apart : L.c3∉[hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4] := by
    simp only [List.mem_cons,List.not_mem_nil,or_false,not_or]
    exact ⟨fun h => classApart (h ▸ vo 2),fun h => classApart (h ▸ vo 3),fun h => classApart (h ▸ vo 4)⟩
  have flagOwned : [L.c3,hmrRowPos L.fv L.fvs 2,hmrRowPos L.fv L.fvs 3,hmrRowPos L.fv L.fvs 4].toFinset⊆A.live := by
    intro q hq
    simp only [List.mem_toFinset,List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl
    · exact classOwned
    · exact rows (List.mem_toFinset.mpr (vo 2))
    · exact rows (List.mem_toFinset.mpr (vo 3))
    · exact rows (List.mem_toFinset.mpr (vo 4))
  obtain ⟨B,jf,hf⟩ := compileHmrFlags_exists A L.c3 _ _ _ apart flagOwned (by omega)
  have fb := (compileHmrFlags_contract A B L.c3 _ _ _ jf hf).2.2
  have fp := hmrBorrowPorts_contract A B 6 jf fb
  have ab : A.live⊆B.live := by
    rw [(A.borrowMany_live B 6 jf fb).1]
    exact Finset.subset_union_left
  have storeApart : hmrBorrowPorts jf (5 : Fin 6)∉L.record := by
    intro h
    exact fp.2.2 5 (record (List.mem_toFinset.mpr h))
  have nd : (hmrBorrowPorts jf (5 : Fin 6)::L.record).Nodup := List.nodup_cons.mpr ⟨storeApart,recordND⟩
  have po : (hmrBorrowPorts jf (5 : Fin 6)::L.record).toFinset⊆B.live := by
    intro q hq
    simp only [List.mem_toFinset,List.mem_cons] at hq
    rcases hq with rfl|hq
    · exact fp.2.1 5
    · exact ab (record (List.mem_toFinset.mpr hq))
  have bc := (A.borrowMany_live B 6 jf fb).2
  obtain ⟨C,bw,pb⟩ := (B.borrowMany_capacity 1).mpr (by omega)
  have hp : compileHmrPop B (hmrBorrowPorts jf (5 : Fin 6)) L.record=some (C,bw) := by
    simp only [compileHmrPop,if_pos (And.intro nd po),pb]
  have cb := (B.borrowMany_live C 1 bw pb).2
  have bcsub : B.live⊆C.live := by
    rw [(B.borrowMany_live C 1 bw pb).1]
    exact Finset.subset_union_left
  have inputsOwned := hmrRowDecoder_owned C (hmrBorrowPorts jf (0 : Fin 6))
    (hmrBorrowPorts jf (2 : Fin 6)) (hmrBorrowPorts jf (4 : Fin 6)) L.f L.gv L.fv L.fs L.gvs L.fvs
    ⟨bcsub (fp.2.1 0),bcsub (fp.2.1 2),bcsub (fp.2.1 4)⟩ (fun _ h => bcsub (ab (rows h)))
  obtain ⟨D,cache,hd⟩ := compileHmrDecoder_exists C _ (hmrRowDecoder_geometry A B jf fb L rows) inputsOwned (by omega)
  exact ⟨⟨B,C,D,jf,bw,cache⟩,by simp [compileHmrRead,hf,hp,hd]⟩

end ECDSAAdd.Arithmetic.Paper935
