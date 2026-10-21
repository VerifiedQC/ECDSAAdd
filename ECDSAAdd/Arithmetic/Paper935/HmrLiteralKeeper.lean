import ECDSAAdd.Arithmetic.Paper935.HmrLiteralLadder

namespace ECDSAAdd.Arithmetic.Paper935

/-- A one-literal source block uses a polarity-dressed CX, with no AND. -/
def hmrLiteralCopy (a : HmrLiteral) (keeper : Wire) : Program :=
  (if a.pol then [] else [.X a.wire]) ++ [.CX a.wire keeper] ++
    (if a.pol then [] else [.X a.wire])

theorem hmrLiteralCopy_run (a : HmrLiteral) (keeper : Wire) (separate : a.wire≠keeper)
    (s : State) (m : List Bool) :
    run (hmrLiteralCopy a keeper) m s=
      ⟨s.phase,writeBit s.basis keeper (s.basis keeper ^^ a.value s.basis)⟩ := by
  rcases a with ⟨wire,pol⟩
  cases pol
  · change run [.X wire,.CX wire keeper,.X wire] m s=
      ⟨s.phase,writeBit s.basis keeper (s.basis keeper ^^ !s.basis wire)⟩
    simp only [run]
    congr 1
    funext q
    by_cases hq : q=wire
    · subst q; simp [writeBit,separate]
    · by_cases hk : q=keeper
      · subst q; simp [writeBit,Ne.symm separate]
      · simp [writeBit,hq,hk]
  · rfl

theorem hmrLiteralCopy_clear (a : HmrLiteral) (keeper : Wire) (separate : a.wire≠keeper)
    (s : State) (m : List Bool) (value : s.basis keeper=a.value s.basis) :
    run (hmrLiteralCopy a keeper) m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  rw [hmrLiteralCopy_run a keeper separate s m,value,Bool.xor_self]

/-- Arbitrary-width source block release, including the two-literal case
where the reconstructed prefix is empty. -/
theorem hmrLadderFree_run (a : HmrLiteral) (cs : List HmrLadderCell) (last : HmrLiteral) (keeper : Wire)
    (distinct : (a.wire::hmrLadderPorts cs).Nodup)
    (outside : keeper∉a.wire::hmrLadderPorts cs)
    (lastOutside : last.wire∉a.wire::hmrLadderPorts cs)
    (releaseDistinct : [(hmrLadderOutput a cs).wire,last.wire,keeper].Nodup)
    (s : State) (m : List Bool) (clean : ∀c∈cs,s.basis c.target=false)
    (value : s.basis keeper=(hmrLadderValue a cs s.basis && last.value s.basis)) :
    run (hmrChainFree (hmrLadder a cs) (hmrLadderOutput a cs).wire last.wire keeper
      (hmrLadderOutput a cs).pol last.pol) m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  apply hmrChainFree_run _ _ _ _ _ _ (hmrLadder_outside a cs keeper outside)
    (hmrLadder_outside a cs last.wire lastOutside) releaseDistinct s m
    (hmrLadder_ready a cs distinct s.basis clean)
  change s.basis keeper=((hmrLadderOutput a cs).value
    (hmrAndAdvance (hmrLadder a cs) s.basis) && last.value s.basis)
  rw [hmrLadder_value a cs distinct s.basis]
  exact value

end ECDSAAdd.Arithmetic.Paper935
