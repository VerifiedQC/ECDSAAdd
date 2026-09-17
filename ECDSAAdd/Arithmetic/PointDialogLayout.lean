import ECDSAAdd.Arithmetic.DialogPool
import ECDSAAdd.Arithmetic.PointKaratsubaLayout

namespace ECDSAAdd.Arithmetic.ControlledPointLayout

/-- 六阶段共用2,613位池；其余旧分配保持，不计入实际支持。 -/
def dialogPool (L : ControlledPointLayout) : List Wire := L.core.pool.take 2613

def dialogUsedWires (L : ControlledPointLayout) : List Wire :=
  PointAddLayout.pointWires L.point++[L.control]++L.inPlaceFlags++L.dialogPool

def dialogPort (L : ControlledPointLayout) : DialogLayout :=
  DialogLayout.fromPool L.core.poolWire L.core.generic L.point.x L.point.y

def dialogUnary (L : ControlledPointLayout) (r : List Wire) : ModInPlaceLayout :=
  {a:=L.dialogPool.take 257,low:=r,high:=L.core.poolWire 257,
    constant:=(L.dialogPool.drop 258).take 257,carry:=(L.dialogPool.drop 515).take 256,
    cin:=L.core.poolWire 771,mask:=(L.dialogPool.drop 772).take 257,flag:=L.core.poolWire 1029}

def dialogNegate (L : ControlledPointLayout) : ModInPlaceLayout :=
  {L.dialogUnary ((L.dialogPool.drop 1).take 256) with a:=L.point.x++[L.core.poolWire 0]}

def dialogSquare (L : ControlledPointLayout) : SquareSubLayout :=
  SquareSubLayout.fromPool (L.dialogPool.take 256) L.point.x (L.dialogPool.drop 256)

def dialogPointZero (L : ControlledPointLayout) : List ZeroBit :=
  zeroPorts (PointAddLayout.pointWires L.point) (L.dialogPool.take 513)

theorem dialogPool_length (L : ControlledPointLayout) (hw : L.Widths) : L.dialogPool.length=2613 := by
  simp [dialogPool,hw.pool]

theorem dialogUsed_nodup (L : ControlledPointLayout) (hn : L.wires.Nodup) :
    L.dialogUsedWires.Nodup := by
  apply List.nodup_iff_count.mpr
  intro q
  have h := List.nodup_iff_count.mp hn q
  have hp := (List.take_sublist 2613 L.core.pool).count_le q
  simp only [dialogUsedWires,dialogPool,inPlaceFlags,wires,point,extras,selectors,
    PointAddLayout.wires,PointAddLayout.work,PointAddLayout.words,PointAddLayout.flags,
    List.flatten_cons,List.flatten_nil,List.append_nil,List.count_append,List.count_cons,List.count_nil] at h ⊢
  omega

theorem dialogPort_fields (L : ControlledPointLayout) (hw : L.Widths) :
    L.dialogPort.control=L.core.generic ∧ L.dialogPort.x=L.point.x ∧
    L.dialogPort.y=L.point.y++[L.core.poolWire 2612] :=
  let h := DialogLayout.fromPool_fields L.core.poolWire L.core.generic L.point.x L.point.y hw.inputX hw.inputY
  ⟨h.1,h.2.1,h.2.2.1⟩

theorem dialogPort_nodup (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup) :
    L.dialogPort.wires.Nodup := by
  apply (DialogLayout.fromPool_wires_perm L.core.poolWire L.core.generic L.point.x L.point.y
    hw.inputX hw.inputY).nodup_iff.mpr
  rw [L.core.pool_prefix hw 2613 (by omega)]
  apply List.nodup_iff_count.mpr
  intro q
  have h := List.nodup_iff_count.mp (L.dialogUsed_nodup hn) q
  simp only [dialogUsedWires,dialogPool,inPlaceFlags,PointAddLayout.pointWires,
    List.count_append,List.count_cons,List.count_nil] at h ⊢
  omega

theorem dialogSquare_widths (L : ControlledPointLayout) (hw : L.Widths) : L.dialogSquare.Widths := by
  apply SquareSubLayout.fromPool_widths
  · simp [L.dialogPool_length hw]
  · exact hw.inputX
  · simp [L.dialogPool_length hw]

theorem dialogBit_prefix (L : ControlledPointLayout) (hw : L.Widths) (i : Nat) (hi : i<2613) :
    L.dialogPool.take i++[L.core.poolWire i]=L.dialogPool.take (i+1) := by
  have h : i<L.core.pool.length := by rw [hw.pool]; omega
  simp only [dialogPool,List.take_take]
  rw [Nat.min_eq_left (by omega),Nat.min_eq_left (by omega)]
  change L.core.pool.take i++[L.core.pool.getD i 0]=_
  rw [List.getD_eq_getElem _ _ h,List.take_add_one,List.getElem?_eq_getElem h]
  rfl

theorem dialogUnary_widths (L : ControlledPointLayout) (hw : L.Widths) (r : List Wire)
    (hr : r.length=256) : (L.dialogUnary r).Widths 256 := by
  constructor
  · constructor
    all_goals simp only [dialogUnary,List.length_take,List.length_drop,L.dialogPool_length hw,hr] <;> omega
  · simp only [dialogUnary,List.length_take,List.length_drop,L.dialogPool_length hw]; omega

theorem dialogUnary_borrow (L : ControlledPointLayout) (hw : L.Widths) (r : List Wire) :
    (L.dialogUnary r).a++[(L.dialogUnary r).high]++(L.dialogUnary r).work=L.dialogPool.take 1030 := by
  simp only [dialogUnary,ModInPlaceLayout.work,ModAddCoreLayout.work]
  simp only [←List.append_assoc]
  rw [L.dialogBit_prefix hw 257 (by omega),←List.take_add,←List.take_add,
    L.dialogBit_prefix hw 771 (by omega),←List.take_add,L.dialogBit_prefix hw 1029 (by omega)]

theorem dialogUnary_nodup (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (r : List Wire) (hr : r=L.point.x ∨ r=L.point.y) :
    (L.core.generic::(L.dialogUnary r).wires).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp (L.dialogUsed_nodup hn) q
  have ht := (List.take_sublist 1030 L.dialogPool).count_le q
  rw [←L.dialogUnary_borrow hw r] at ht
  rcases hr with rfl | rfl
  all_goals
    simp only [dialogUsedWires,dialogUnary,ModInPlaceLayout.wires,ModInPlaceLayout.z,ModAddCoreLayout.z,
      inPlaceFlags,PointAddLayout.pointWires,List.count_append,List.count_cons,List.count_nil] at h ht ⊢
    omega

theorem dialogSquare_nodup (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup) :
    L.dialogSquare.wires.Nodup := by
  apply SquareSubLayout.fromPool_nodup _ _ _ (by simp [L.dialogPool_length hw])
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp (L.dialogUsed_nodup hn) q
  have he : L.dialogPool.take 256++L.dialogPool.drop 256=L.dialogPool := List.take_append_drop _ _
  have hc := congrArg (List.count q) he
  simp only [dialogUsedWires,PointAddLayout.pointWires,List.count_append,List.count_cons,List.count_nil] at h hc ⊢
  omega

theorem dialogSquare_work (L : ControlledPointLayout) (hw : L.Widths) :
    L.dialogSquare.work=(L.dialogPool.drop 256).take 2217 :=
  SquareSubLayout.fromPool_work _ _ _ (by simp [L.dialogPool_length hw])

theorem dialogPort_work (L : ControlledPointLayout) (hw : L.Widths) :
    L.dialogPort.work.Perm (L.dialogPool.take 2612) := by
  have h := DialogLayout.fromPool_work_perm L.core.poolWire L.core.generic L.point.x L.point.y
    hw.inputX hw.inputY
  rw [L.core.pool_prefix hw 2612 (by omega)] at h
  simpa [dialogPool,List.take_take] using h

theorem dialogNegate_widths (L : ControlledPointLayout) (hw : L.Widths) :
    L.dialogNegate.Widths 256 := by
  constructor
  · constructor
    all_goals simp only [dialogNegate,dialogUnary,List.length_take,List.length_drop,
      List.length_append,List.length_cons,List.length_nil,L.dialogPool_length hw,point,hw.inputX] <;> omega
  · simp only [dialogNegate,dialogUnary,List.length_take,List.length_drop,L.dialogPool_length hw]; omega

theorem dialogNegate_borrow (L : ControlledPointLayout) (hw : L.Widths) :
    [L.core.poolWire 0]++L.dialogNegate.z++L.dialogNegate.work=L.dialogPool.take 1030 := by
  have hp := L.dialogUnary_borrow hw ((L.dialogPool.drop 1).take 256)
  have h0 := L.dialogBit_prefix hw 0 (by omega)
  simp only [List.take_zero,List.nil_append] at h0
  simp only [dialogNegate,dialogUnary,ModInPlaceLayout.z,ModAddCoreLayout.z] at hp ⊢
  rw [h0]
  simpa only [←List.append_assoc,←List.take_add] using hp

theorem dialogNegate_nodup (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup) :
    (L.core.generic::L.dialogNegate.wires).Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp (L.dialogUsed_nodup hn) q
  have ht := (List.take_sublist 1030 L.dialogPool).count_le q
  rw [←L.dialogNegate_borrow hw] at ht
  change (L.core.generic::(L.point.x++[L.core.poolWire 0])++L.dialogNegate.z++L.dialogNegate.work).count q≤1
  simp only [dialogUsedWires,inPlaceFlags,PointAddLayout.pointWires,
    List.count_append,List.count_cons,List.count_nil] at h ht ⊢
  omega

theorem dialogPointZero_nodup (L : ControlledPointLayout) (hnd : L.wires.Nodup)
    (c t : Wire) (hct : c≠t) (hc : c=L.control ∨ c∈L.inPlaceFlags) (ht : t∈L.inPlaceFlags) :
    (c::t::PointAddLayout.pointWires L.point++L.dialogPool.take 513).Nodup := by
  have hc' : c∈([L.control]++L.inPlaceFlags) := by
    rcases hc with rfl | hc
    · simp
    · simp [hc]
  have ht' : t∈([L.control]++L.inPlaceFlags) := by simp [ht]
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp (L.dialogUsed_nodup hnd) q
  have hp := (List.take_sublist 513 L.dialogPool).count_le q
  have hh := (List.singleton_sublist.mpr hc').count_le q
  have hh' := (List.singleton_sublist.mpr ht').count_le q
  simp only [dialogUsedWires,List.count_append,List.count_cons,List.count_nil] at h hh hh' ⊢
  by_cases hqc : c=q <;> by_cases hqt : t=q
  · exact False.elim (hct (hqc.trans hqt.symm))
  all_goals simp_all only [beq_iff_eq, ↓reduceIte]
  all_goals omega

end ECDSAAdd.Arithmetic.ControlledPointLayout
