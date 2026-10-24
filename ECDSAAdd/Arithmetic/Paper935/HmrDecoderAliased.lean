import ECDSAAdd.Arithmetic.Paper935.HmrDecoderOps

namespace ECDSAAdd.Arithmetic.Paper935

/-- Flags, prediction, and cached leaves are separate from every other port.
The ten read-only row ports (3..12) may alias through sign extension. -/
def HmrDecoderGeometry (w : Fin 19 → Wire) : Prop :=
  ∀i j : Fin 19, ((i.val < 3) ∨ (13 ≤ i.val) ∨ (j.val < 3) ∨ (13 ≤ j.val)) → (w i=w j ↔ i=j)

theorem HmrDecoderGeometry.of_injective (w : Fin 19 → Wire) (hw : Function.Injective w) :
    HmrDecoderGeometry w := by
  intro i j _
  exact hw.eq_iff

theorem hmrDecoderOps_ready (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : BasisState)
    (clean : s (w 14)=false ∧ s (w 15)=false ∧ s (w 16)=false ∧
      s (w 17)=false ∧ s (w 18)=false) : HmrDecodeReady (hmrDecoderOps w) s := by
  obtain ⟨h14,h15,h16,h17,h18⟩ := clean
  have eqs := geometry
  unfold HmrDecoderGeometry at eqs
  simp [hmrDecoderOps,HmrDecodeReady,HmrDecodeOp.Ready,HmrDecodeOp.advance,writeBit,
    eqs,h14,h15,h16,h17,h18]

theorem hmrDecoderOps_value (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : BasisState) : hmrDecodeAdvance (hmrDecoderOps w) s=hmrDecoderComputed w s := by
  have eqs := geometry
  unfold HmrDecoderGeometry at eqs
  simp [hmrDecodeAdvance,hmrDecoderOps,HmrDecodeOp.advance,writeBit,eqs,
    hmrDecoderComputed,hmrDecoderValue]
  have nd : [w 13,w 14,w 15,w 16,w 17,w 18].Nodup := by simp [eqs]
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  clear geometry eqs
  funext q
  simp only [Function.update_apply]
  split_ifs <;> simp_all

theorem hmrDecoderCompute_run_aliased (w : Fin 19 → Wire) (geometry : HmrDecoderGeometry w)
    (s : State) (m : List Bool)
    (clean : s.basis (w 14)=false ∧ s.basis (w 15)=false ∧ s.basis (w 16)=false ∧
      s.basis (w 17)=false ∧ s.basis (w 18)=false) :
    run (hmrDecoderCompute w) m s=⟨s.phase,hmrDecoderComputed w s.basis⟩ := by
  rw [←hmrDecoderOps_program,hmrDecodeOps_run _ s m (hmrDecoderOps_ready w geometry s.basis clean),
    hmrDecoderOps_value w geometry]

end ECDSAAdd.Arithmetic.Paper935
