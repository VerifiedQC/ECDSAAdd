import ECDSAAdd.Arithmetic.PointDialogIntegration

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1

/-- 实际支持由点513位、外部控制、七标志与共享池2613位组成。 -/
theorem pointDialogFinite_qubits (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (C : Point) (cx cy : Fp) : qubitCount (pointDialogFinite L C cx cy)=3134 := by
  rw [qubitCount,pointDialogFinite_wires L hw hn,List.toFinset_card_of_nodup (L.dialogUsed_nodup hn)]
  simp [dialogUsedWires,PointAddLayout.pointWires,inPlaceFlags,
    show L.point.x.length=256 from hw.inputX,show L.point.y.length=256 from hw.inputY,L.dialogPool_length hw]

end ECDSAAdd.Arithmetic
