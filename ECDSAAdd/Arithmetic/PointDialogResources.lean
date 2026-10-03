import ECDSAAdd.Arithmetic.PointDialogIntegration

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1

/-- Physical support is bounded by the original caller footprint; this is not a peak-live proof. -/
theorem pointDialogFinite_qubits (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (cx cy : Fp) : qubitCount (pointDialogFinite L C cx cy)≤2579 := by
  have h := Finset.card_le_card (pointDialogFinite_small_wires L hw hn C cx cy)
  rw [List.toFinset_card_of_nodup (L.skywalkPointUsed_nodup hn)] at h
  have hlen : L.skywalkPointUsedWires.length=2579 := by
    simp [skywalkPointUsedWires,PointAddLayout.pointWires,inPlaceFlags,
      show L.point.x.length=256 from hw.inputX,show L.point.y.length=256 from hw.inputY,L.dialogPool_length hw]
  simpa only [qubitCount,hlen] using h

end ECDSAAdd.Arithmetic
