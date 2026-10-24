import ECDSAAdd.Arithmetic.Paper935.HmrDecoderAliased

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrDecoderRelease_run_aliased (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderRelease w) m ⟨s.phase,hmrDecoderComputed w s.basis⟩=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ hmrDecoderValue w s.basis)⟩ := by
  have eqs := geometry
  unfold HmrDecoderGeometry at eqs
  simp only [hmrDecoderRelease,run_append,run_take]
  rw [hmrLiteralRelease_run (w 2) (w 5) (w 18) false (by simp [eqs]) _ _
    (by simp [hmrDecoderComputed,writeBit,eqs])]
  rw [hmrLiteralRelease_run (w 2) (w 4) (w 17) false (by simp [eqs]) _ _
    (by simp [hmrDecoderComputed,writeBit,eqs])]
  rw [hmrLiteralRelease_run (w 2) (w 4) (w 16) true (by simp [eqs]) _ _
    (by simp [hmrDecoderComputed,writeBit,eqs])]
  rw [hmrLiteralRelease_run (w 2) (w 3) (w 15) false (by simp [eqs]) _ _
    (by simp [hmrDecoderComputed,writeBit,eqs])]
  rw [hmrLiteralRelease_run (w 1) (w 4) (w 14) false (by simp [eqs]) _ _
    (by simp [hmrDecoderComputed,writeBit,eqs])]
  obtain ⟨h14,h15,h16,h17,h18⟩ := clean
  have nd : [w 13,w 14,w 15,w 16,w 17,w 18].Nodup := by simp [eqs]
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  clear geometry eqs
  congr 1
  funext q
  simp only [hmrDecoderComputed,writeBit,Function.update_apply]
  split_ifs <;> simp_all

theorem hmrDecoder_run_aliased (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderCompute w ++ hmrDecoderRelease w) m s=
      ⟨s.phase,writeBit s.basis (w 13) (s.basis (w 13) ^^ hmrDecoderValue w s.basis)⟩ := by
  rw [run_append,run_take,hmrDecoderCompute_run_aliased w geometry s m clean]
  exact hmrDecoderRelease_run_aliased w geometry s _ clean

end ECDSAAdd.Arithmetic.Paper935
