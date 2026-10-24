import ECDSAAdd.Arithmetic.Paper935.HmrPredictionDeath

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source R12 order: retire the prediction while all anchors are still live,
then retire the five cached leaves. -/
def hmrDecoderErase (w : Fin 19 → Wire) : Program :=
  hmrPredictionDeath w ++ hmrDecoderRelease w

theorem hmrDecoderErase_run (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : State) (m : List Bool) (predZero : s.basis (w 13)=false)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderErase w) m ⟨s.phase,hmrDecoderComputed w s.basis⟩=s := by
  rw [hmrDecoderErase,run_append,run_take,
    hmrPredictionDeath_run w geometry _ m (hmrDecoderComputed_prediction w geometry s.basis predZero)]
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
  change State.mk s.phase _=State.mk s.phase s.basis
  congr 1
  funext q
  simp only [hmrDecoderComputed,writeBit,Function.update_apply]
  split_ifs <;> simp_all

theorem hmrDecoder_compute_erase (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : State) (m : List Bool) (predZero : s.basis (w 13)=false)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderCompute w ++ hmrDecoderErase w) m s=s := by
  rw [run_append,run_take,hmrDecoderCompute_run_aliased w geometry s m clean]
  exact hmrDecoderErase_run w geometry s _ predZero clean

theorem hmrDecoder_full_counts (w : Fin 19 → Wire) :
    toffoliCount (hmrDecoderCompute w ++ hmrDecoderErase w)=17 ∧
    measurementCount (hmrDecoderCompute w ++ hmrDecoderErase w)=6 := by
  have hc := hmrDecoder_counts w
  have hp := hmrPredictionDeath_counts w
  simp only [hmrDecoderErase,toffoliCount_append,measurementCount_append] at hc ⊢
  omega

end ECDSAAdd.Arithmetic.Paper935
