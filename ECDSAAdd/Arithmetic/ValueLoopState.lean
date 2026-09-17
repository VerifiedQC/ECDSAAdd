import ECDSAAdd.Arithmetic.ValueLoopResources

namespace ECDSAAdd.Arithmetic

/-- 兼容状态接口：r/s保持旁路值，循环只推进u/v/k。 -/
theorem valueRound_tape (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) (hw : L.counter.width=10)
    (i : Nat) (z : KState) (hi : i<512) (hk : KRoundCount i z)
    (hu : z.u<2^L.data.width) (hv : z.v<2^L.data.width) :
    Triple (fun st => LoopState L z st ∧ st r.swap=false ∧ st r.subtract=false)
      (valueRound (L.withRecord r) i)
      (fun st => LoopState L.swapCounter (valueKStep z) st ∧
        st r.swap=(kaliskiCode z).1 ∧ st r.subtract=(kaliskiCode z).2) := by
  intro s m h
  have hs := h.1.round_before L r z false false s.basis h.2.1 h.2.2
  obtain ⟨hp,ho⟩ := valueRound_state (L.withRecord r) (L.withRecord_nodup r rs hnd) hw i z
    hi hk hu hv s m hs
  exact ⟨hp,LoopState.of_round_after L r _ _ _ _ ho,ho.2.swap,ho.2.subtract⟩

theorem valueUnround_tape (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) (hw : L.counter.width=10)
    (i : Nat) (z : KState) (hi : i<512) (hk : KRoundCount i z)
    (hu : z.u<2^L.data.width) (hv : z.v<2^L.data.width) :
    Triple (fun st => LoopState L.swapCounter (valueKStep z) st ∧
        st r.swap=(kaliskiCode z).1 ∧ st r.subtract=(kaliskiCode z).2)
      (valueUnround (L.withRecord r) i)
      (fun st => LoopState L z st ∧ st r.swap=false ∧ st r.subtract=false) := by
  intro s m h
  have hs := h.1.round_after L r (valueKStep z) _ _ s.basis h.2.1 h.2.2
  obtain ⟨hp,ho⟩ := valueUnround_state (L.withRecord r) (L.withRecord_nodup r rs hnd) hw i z
    hi hk hu hv s m hs
  exact ⟨hp,LoopState.of_round_before L r _ _ _ _ ho,ho.2.swap,ho.2.subtract⟩

end ECDSAAdd.Arithmetic
