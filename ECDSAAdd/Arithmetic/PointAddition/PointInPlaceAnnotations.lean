import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceClearSlopeKernel

namespace ECDSAAdd.Arithmetic
open CertifiedTranslation Secp256k1

theorem pointConstantAdd_annotation (L : ControlledPointLayout) (r : List Wire) (k : Fp)
    (hw : L.Widths) (hn : L.wires.Nodup) (hr : r=L.point.x ∨ r=L.point.y)
    (Z : Nat) (G : Bool) (hZ : Z<p) (initial : BasisState)
    (hb : initial L.core.generic=G) (hz : regValue r initial=Z)
    (hc : regValue L.inPlaceBorrow initial=0) :
    Triple (fun s => s=initial) (pointInPlaceConstantAddKernel L r k)
      (fun t => (calculation { if L.core.generic { r = (r + const(k.val)) mod p; }; }) initial t ∧
        ∀ w∉r,t w=initial w) := by
  intro s m hs
  subst initial
  obtain ⟨phase,value,keep⟩ := pointInPlaceConstantAdd_correct L hw hn r hr k Z G hZ s m hb hz hc
  refine ⟨phase,?_,keep⟩
  cases G <;> simpa only [hb,hz,ite_true,ite_false,Bool.false_eq_true,Nat.add_zero,Nat.mod_eq_of_lt hZ] using value

theorem pointNegate_annotation (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X : Nat) (G : Bool) (hX : X<p) (initial : BasisState)
    (hg : initial L.core.generic=G) (hx : regValue L.point.x initial=X)
    (hz : regValue L.inPlaceBorrow initial=0) :
    Triple (fun s => s=initial) (pointInPlaceNegateKernel L)
      (fun t => (calculation { if L.core.generic { L.point.x = (const(0) - L.point.x) mod p; }; }) initial t ∧
        ∀ w∉L.point.x,t w=initial w) := by
  intro s m hs
  subst initial
  obtain ⟨phase,value,keep⟩ := pointInPlaceNegate_correct L hw hn X G hX s m hg hx hz
  refine ⟨phase,?_,keep⟩
  cases G <;> simpa only [hg,hx,Nat.mod_eq_of_lt hX,Nat.zero_add,Bool.false_eq_true,ite_false,ite_true] using value

theorem pointProductAdd_annotation (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G E Q : Bool) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G E Q initial) :
    Triple (fun s => s=initial) (montMulAdd L.inPlaceMultiply p)
      (fun t => (calculation { L.point.y = field(L.point.y + L.inPlaceSlope * L.point.x) mod p; }) initial t ∧
        PointInPlaceValues L X (Y+A*X) A G E Q t) := by
  intro s m hs
  subst initial
  obtain ⟨phase, result⟩ := (pointStep_product L hw hn X Y A G E Q).1 s m hv
  exact ⟨phase, by simpa only [hv.y,hv.slope,hv.x,ZMod.natCast_zmod_val] using result.y,result⟩

theorem pointProductSub_annotation (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G E Q : Bool) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G E Q initial) :
    Triple (fun s => s=initial) (montMulSub L.inPlaceMultiply p)
      (fun t => (calculation { L.point.y = field(L.point.y - L.inPlaceSlope * L.point.x) mod p; }) initial t ∧
        PointInPlaceValues L X (Y-A*X) A G E Q t) := by
  intro s m hs
  subst initial
  obtain ⟨phase, result⟩ := (pointStep_product L hw hn X Y A G E Q).2 s m hv
  exact ⟨phase, by simpa only [hv.y,hv.slope,hv.x,ZMod.natCast_zmod_val] using result.y,result⟩

theorem pointSquareSub_annotation (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G E Q : Bool) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G E Q initial) :
    Triple (fun s => s=initial)
      (copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub L.inPlaceSquare p ++
        copyRegister none L.inPlaceSlope L.inPlaceSquare.y)
      (fun t => (calculation { L.point.x = field(L.point.x - L.inPlaceSlope * L.inPlaceSlope) mod p; }) initial t ∧
        PointInPlaceValues L (X-A*A) Y A G E Q t) := by
  intro s m hs
  subst initial
  obtain ⟨phase, result⟩ := pointStep_square L hw hn X Y A G E Q s m hv
  exact ⟨phase, by simpa only [hv.slope,hv.x,ZMod.natCast_zmod_val] using result.x,result⟩

theorem pointDivideAdd_annotation (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G E Q : Bool) (hX : G=true → X≠0) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G E Q initial) :
    Triple (fun s => s=initial) (divideAdd (L.inPlaceDivide L.core.generic L.point.x L.point.y))
      (fun t => (calculation { if L.core.generic { L.inPlaceSlope = field(L.inPlaceSlope + L.point.y / L.point.x) mod p; }; }) initial t ∧
        PointInPlaceValues L X Y (if G then A+Y/X else A) G E Q t) := by
  intro s m hs
  subst initial
  obtain ⟨phase, result⟩ := pointStep_divideAdd L hw hn X Y A G E Q hX s m hv
  refine ⟨phase,?_,result⟩
  cases G <;> simpa only [hv.generic,hv.y,hv.slope,hv.x,ZMod.natCast_zmod_val,ite_true,ite_false,Bool.false_eq_true] using result.slope

theorem pointZero_prepare (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G : Bool) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G false false initial) :
    Triple (fun s => s=initial) (pointZeroValue L L.point.x).prepare
      (fun t => t L.core.equalX=decide (regValue L.point.x initial=0) ∧
        PointInPlaceValues L X Y A G (decide (X=0)) false t) := by
  intro s m hs
  subst initial
  obtain ⟨phase, result⟩ := pointStep_zero L hw hn X Y A G false s m hv
  simp only [Bool.false_xor] at result
  have hx : X.val=0 ↔ X=0 := ⟨fun h => ZMod.val_injective p (h.trans ZMod.val_zero.symm),fun h => by simp [h]⟩
  exact ⟨phase,by simpa only [hv.x,hx] using result.equal,result⟩

theorem pointZero_restore (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G : Bool) :
    Triple (PointInPlaceValues L X Y A G (decide (X=0)) false)
      (pointZeroValue L L.point.x).restore
      (fun t => t L.core.equalX=false ∧ PointInPlaceValues L X Y A G false false t) := by
  intro s m hv
  obtain ⟨phase, result⟩ := pointStep_zero L hw hn X Y A G (decide (X=0)) s m hv
  simp only [Bool.xor_self] at result
  exact ⟨phase,result.equal,result⟩

/-- 双控制减商的准备、运算、清理；不依赖斜率最终被清零的结论。 -/
theorem pointClearQuotient_annotation (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A : Fp) (G E : Bool) (hX : (G && !E)=true → X≠0) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G E false initial) :
    Triple (fun s => s=initial)
      ((clearSlopeContext L).operations.ccsub L.core.generic L.core.equalX true L.inPlaceSlope L.point.y L.point.x)
      (fun t => (calculation { if L.core.generic AND (L.core.equalX XOR 1) {
          L.inPlaceSlope = field(L.inPlaceSlope - L.point.y / L.point.x) mod p; }; }) initial t ∧
        PointInPlaceValues L X Y (if G && !E then A-Y/X else A) G E false t) := by
  let B := G && !E
  let A' := if B then A-Y/X else A
  have h1 := pointStep_quotient L hw hn X Y A G E false true
  have h2 := pointStep_divideSub L hw hn X Y A G E B hX
  have h3 := pointStep_quotient L hw hn X Y A' G E B true
  simp only [Bool.false_xor,ite_true] at h1
  simp only [ite_true,show (B ^^ (G && !E))=false from Bool.xor_self _] at h3
  intro s m hs
  subst initial
  obtain ⟨phase,result⟩ := ((h1.seq h2).seq h3) s m hv
  refine ⟨phase,?_,result⟩
  cases G <;> cases E <;>
    simpa [B,A',clearSlopeContext,hv.generic,hv.equal,hv.y,hv.slope,hv.x,ZMod.natCast_zmod_val] using result.slope

/-- 双控制常量 XOR；启用时要求已有斜率等于要清除的常量。 -/
theorem pointClearConstant_annotation (L : ControlledPointLayout) (k : Fp)
    (hw : L.Widths) (hn : L.wires.Nodup) (X Y A : Fp) (G E : Bool)
    (hA : (G && E)=true → A=k) (initial : BasisState)
    (hv : PointInPlaceValues L X Y A G E false initial) :
    Triple (fun s => s=initial)
      ((clearSlopeContext L).operations.ccxor L.core.generic L.core.equalX false L.inPlaceSlope k)
      (fun t => (calculation { if L.core.generic AND L.core.equalX {
          L.inPlaceSlope ^= const(k.val); }; }) initial t ∧
        PointInPlaceValues L X Y (if G && E then 0 else A) G E false t) := by
  let B := G && E
  let A' := if B then 0 else A
  have h1 := pointStep_quotient L hw hn X Y A G E false false
  simp only [Bool.false_xor,Bool.false_eq_true,ite_false] at h1
  have h2 : Triple (PointInPlaceValues L X Y A G E B)
      (maskedConstant L.core.equalNegY L.inPlaceSlope k.val)
      (PointInPlaceValues L X Y A' G E B) := by
    by_cases hb : B=true
    · have ha := hA hb
      simpa only [A',hb,ite_true] using pointStep_clearSlope L hw hn X Y A G E B k (by simpa [hb] using ha)
    · have hb' : B=false := Bool.eq_false_iff.mpr hb
      simpa only [A',hb',Bool.false_eq_true,ite_false] using pointStep_maskedSlopeOff L hw hn X Y A G E k
  have h3 := pointStep_quotient L hw hn X Y A' G E B false
  simp only [Bool.false_eq_true,ite_false,show (B ^^ (G && E))=false from Bool.xor_self _] at h3
  intro s m hs
  subst initial
  obtain ⟨phase,result⟩ := ((h1.seq h2).seq h3) s m hv
  refine ⟨phase,?_,result⟩
  by_cases hb : (G && E)=true
  · simpa [B,A',clearSlopeContext,hv.generic,hv.equal,hv.slope,hb,hA hb] using result.slope
  · have hb' : (G && E)=false := Bool.eq_false_iff.mpr hb
    simpa [B,A',clearSlopeContext,hv.generic,hv.equal,hv.slope,hb'] using result.slope

theorem pointClearSlope_annotation (L : ControlledPointLayout) (k : Fp)
    (hw : L.Widths) (hn : L.wires.Nodup) (X Y A : Fp) (G : Bool)
    (hY : G=true → Y=A*X) (hk : G=true → X=0 → A=k) :
    Triple (fun s => PointInPlaceValues L X Y A G false false s ∧
      s L.core.generic=G ∧ regValue L.inPlaceSlope s=A.val)
      (pointInPlaceClearSlopeKernel L k)
      (fun t => PointInPlaceValues L X Y (if G then 0 else A) G false false t ∧
        regValue L.inPlaceSlope t=(if G then 0 else A.val)) := by
  intro s m hp
  cases G with
  | false =>
      obtain ⟨phase,result⟩ := pointInPlaceClearSlopeKernel_disabled L hw hn X Y A k s m hp.1
      exact ⟨phase,result,result.slope⟩
  | true =>
      obtain ⟨phase,result⟩ := pointInPlaceClearSlopeKernel_spec L hw hn X Y A k true hY hk (by simp) s m hp.1
      exact ⟨phase,result,by simpa using result.slope⟩

end ECDSAAdd.Arithmetic
