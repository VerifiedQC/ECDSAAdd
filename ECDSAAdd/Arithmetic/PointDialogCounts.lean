import ECDSAAdd.Arithmetic.PointDialogProgram
import ECDSAAdd.Arithmetic.PointOutputResources
import ECDSAAdd.Arithmetic.SquareSubResources
import ECDSAAdd.Arithmetic.SkywalkControlledPort

namespace ECDSAAdd.Arithmetic
open Secp256k1 ControlledPointLayout

/-- 常数掩码只含CX；每段成本完全来自同一模加核。 -/
theorem pointDialogConstantAdd_counts (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (r : List Wire) (hr : r=L.point.x ∨ r=L.point.y) (k : Fp) :
    toffoliCount (pointDialogConstantAdd L r k)=1023 ∧
    measurementCount (pointDialogConstantAdd L r k)=1023 := by
  have hn := (List.nodup_cons.mp (L.dialogUnary_nodup hw hnd r hr)).2
  have hl : r.length=256 := by
    rcases hr with rfl | rfl
    · exact hw.inputX
    · exact hw.inputY
  have ha := modAddInPlace_resources (L.dialogUnary r) 256 p (L.dialogUnary_widths hw r hl) hn (by omega)
  simp only [pointDialogConstantAdd,toffoliCount_append,measurementCount_append,
    (maskedConstant_counts _ _ _).1,(maskedConstant_counts _ _ _).2,ha.1,ha.2.1]
  norm_num

/-- T←−x、受控交换、T+=x的同门列计数。 -/
theorem pointDialogNegate_counts (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup) :
    toffoliCount (pointDialogNegate L)=3838 ∧ measurementCount (pointDialogNegate L)=2558 := by
  have hn := L.dialogNegate_nodup hw hnd
  have hl := L.dialogNegate_widths hw
  have ha := controlledModAdd_resources L.core.generic L.dialogNegate 256 p hl hn (by omega)
  have hs := controlledModSub_resources L.core.generic L.dialogNegate 256 p hl hn (by omega)
  have hswap : (L.core.generic::L.point.x++L.dialogNegate.low).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have h := List.nodup_iff_count.mp hn q
    simp only [dialogNegate, ModInPlaceLayout.wires,ModInPlaceLayout.z,
      ModAddCoreLayout.z,List.count_append,List.count_cons,List.count_nil] at h ⊢
    omega
  have he := swapRegisters_resources L.core.generic L.point.x L.dialogNegate.low
    (hw.inputX.trans hl.core.low.symm) hswap
  simp only [pointDialogNegate,toffoliCount_append,measurementCount_append,ha.1,ha.2.1,hs.1,hs.2.1,he.1,he.2]
  rw [show L.point.x.length=256 from hw.inputX]
  norm_num


theorem pointDialogSquare_counts (L : ControlledPointLayout) (hw : L.Widths) (_hn : L.wires.Nodup) :
    toffoliCount (pointDialogSquare L)=pointStreamedSquareCost L ∧
      measurementCount (pointDialogSquare L)=0 :=
  pointStreamedSquare_counts L hw

theorem pointDialogGeneric_counts (L : ControlledPointLayout) (hw : L.Widths)
    (hn : L.wires.Nodup) (cx cy : Fp) :
    toffoliCount (pointDialogGeneric L cx cy)=2639612+pointStreamedSquareCost L ∧
    measurementCount (pointDialogGeneric L cx cy)=1980408 := by
  have ha k := pointDialogConstantAdd_counts L hw hn L.point.x (Or.inl rfl) k
  have hb k := pointDialogConstantAdd_counts L hw hn L.point.y (Or.inr rfl) k
  have hd := pointSkywalkArithmetic_counts L hw hn
  have hs := pointDialogSquare_counts L hw hn
  have hn' := pointDialogNegate_counts L hw hn
  simp only [pointDialogGeneric,toffoliCount_append,measurementCount_append,
    (ha _).1,(ha _).2,(hb _).1,(hb _).2,hd.1,hd.2.1,hd.2.2.1,hd.2.2.2,
    hs.1,hs.2,hn'.1,hn'.2]
  constructor
  · omega
  · trivial

theorem pointDialogFinite_counts (L : ControlledPointLayout) (hw : L.Widths)
    (hn : L.wires.Nodup) (C : Point) (cx cy : Fp) :
    toffoliCount (pointDialogFinite L C cx cy)=2643716+pointStreamedSquareCost L ∧
    measurementCount (pointDialogFinite L C cx cy)=1984512 := by
  have hg := pointDialogGeneric_counts L hw hn cx cy
  have hz c t k := equalConstant_counts c t L.dialogPointZero k
  have hpl : (PointAddLayout.pointWires L.point).length=513 := by
    simp only [PointAddLayout.pointWires,List.length_cons,List.length_append,
      show L.point.x.length=256 from hw.inputX,show L.point.y.length=256 from hw.inputY]
  have hzl : L.dialogPointZero.length=513 := by
    have he := (zeroPorts_maps (PointAddLayout.pointWires L.point) (L.dialogPool.take 513)
      (by simp only [List.length_take,L.dialogPool_length hw]; exact hpl)).1
    simpa only [List.length_map,hpl] using congrArg List.length he
  have he : toffoliCount (pointInPlaceDoubleEnable L cy)=0 ∧
      measurementCount (pointInPlaceDoubleEnable L cy)=0 := by
    unfold pointInPlaceDoubleEnable
    split <;> simp [toffoliCount,measurementCount]
  have hh : toffoliCount (pointDialogExceptionEnable L C)=0 ∧
      measurementCount (pointDialogExceptionEnable L C)=0 := by
    unfold pointDialogExceptionEnable
    split <;> simp [toffoliCount,measurementCount]
  simp only [pointDialogFinite,pointDialogCorners,pointInPlaceCorners,toffoliCount_append,
    measurementCount_append,hg.1,hg.2,(hz _ _ _).1,(hz _ _ _).2,hzl,
    (maskedPointConstant_counts _ _ _).1,(maskedPointConstant_counts _ _ _).2,he.1,he.2,hh.1,hh.2]
  norm_num [pointDialogGenericFlag,pointInPlaceGenericFlag,toffoliCount,measurementCount]
  omega

end ECDSAAdd.Arithmetic
