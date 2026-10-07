import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceProgram

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout Secp256k1

/-- 原公开规格：独立判零、双控制操作和清理后的斜率为零。 -/
theorem pointInPlaceClearSlope_spec (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) (G : Bool) (hY : G=true → Y=A*X)
    (hk : G=true → X=0 → A=k) (hA : G=false → A=0) :
    Triple (PointInPlaceValues L X Y A G false false) (pointInPlaceClearSlope L k)
      (PointInPlaceValues L X Y 0 G false false) := by
  simpa only [pointInPlaceClearSlope_program,pointInPlaceClearSlopeKernel_program] using
    pointInPlaceClearSlopeKernel_spec L hw hn X Y A k G hY hk hA

/-- generic=0 时保留任意初始斜率，两个临时位仍恢复零。 -/
theorem pointInPlaceClearSlope_disabled (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) :
    Triple (PointInPlaceValues L X Y A false false false) (pointInPlaceClearSlope L k)
      (PointInPlaceValues L X Y A false false false) := by
  simpa only [pointInPlaceClearSlope_program,pointInPlaceClearSlopeKernel_program] using
    pointInPlaceClearSlopeKernel_disabled L hw hn X Y A k

end ECDSAAdd.Arithmetic
