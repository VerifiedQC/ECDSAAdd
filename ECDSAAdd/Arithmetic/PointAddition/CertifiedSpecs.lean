import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.PointAddition.PointCandidateBlocks
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceSupport

namespace ECDSAAdd.Arithmetic.CertifiedSpecs
open Secp256k1 CertifiedTranslation

/-- 展开供语法连接使用的读数，同时保留完整 CandidateValues。 -/
theorem pointSubConstant (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a o : CandidateField)
    (ha : (L.reg a).length=257) (ho : (L.reg o).length=257)
    (haK : a≠.constant) (hoK : o≠.constant)
    (hn : (L.reg a++L.constant++L.reg o++L.pool).Nodup)
    (hA : v a<p) (hK : v .constant=0) (k : Nat) (hk : k<p) :
    Triple (fun s => CandidateValues L v G s ∧
      regValue (L.reg a) s=v a ∧ regValue (L.reg o) s=v o)
      (Arithmetic.pointSubConstant L (L.reg a) (L.reg o) k)
      (fun t => CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G t ∧
        regValue (L.reg o) t=v o ^^^ ((v a+p-k)%p)) := by
  intro s m hp
  obtain ⟨phase, result⟩ := CandidateValues.subConstant L h hnd v G a o ha ho haK hoK hn hA hK k hk s m hp.1
  exact ⟨phase, result, by simpa using result.1 o⟩

theorem pointSquare (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool)
    (hn : (L.slope++L.constant.take 256++L.square++L.pool).Nodup)
    (hS : v .slope<p) (hK : v .constant=0) :
    Triple (fun s => CandidateValues L v G s ∧
      regValue L.slope s=v .slope ∧ regValue L.square s=v .square)
      (Arithmetic.pointSquare L)
      (fun t => CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G t ∧
        regValue L.square t=v .square ^^^ ((v .slope*v .slope)%p)) := by
  intro s m hp
  obtain ⟨phase, result⟩ := CandidateValues.square L h hnd v G hn hS hK s m hp.1
  exact ⟨phase, result, by simpa [PointAddLayout.reg] using result.1 .square⟩

theorem pointInPlaceConstantAdd (L : ControlledPointLayout) (hw : L.Widths)
    (hnd : L.wires.Nodup) (r : List Wire) (hr : r=L.point.x ∨ r=L.point.y)
    (k : Fp) (Z : Nat) (B : Bool) (hZ : Z<p) (initial : BasisState)
    (hb : initial L.core.generic=B) (hz : regValue r initial=Z)
    (hc : regValue L.inPlaceBorrow initial=0) :
    Triple (fun s => s=initial) (Arithmetic.pointInPlaceConstantAdd L r k)
      (fun t => regValue r t=(if B then (Z+k.val)%p else Z) ∧ ∀ w∉r,t w=initial w) := by
  intro s m h
  subst initial
  have h := pointInPlaceConstantAdd_correct L hw hnd r hr k Z B hZ s m hb hz hc
  cases B <;> simpa [Nat.mod_eq_of_lt hZ] using h

/-- 关闭分支允许任意斜率；启用分支的斜率/例外值条件仍显式保留。 -/
theorem pointInPlaceClearSlope (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y A k : Fp) (G : Bool) (hY : G=true → Y=A*X)
    (hk : G=true → X=0 → A=k) :
    Triple (fun s => PointInPlaceValues L X Y A G false false s ∧
      s L.core.generic=G ∧ regValue L.inPlaceSlope s=A.val)
      (Arithmetic.pointInPlaceClearSlope L k)
      (fun t => PointInPlaceValues L X Y (if G then 0 else A) G false false t ∧
        regValue L.inPlaceSlope t=(if G then 0 else A.val)) := by
  intro s m hp
  cases G with
  | false =>
      obtain ⟨phase, result⟩ := pointInPlaceClearSlope_disabled L hw hn X Y A k s m hp.1
      exact ⟨phase, result, result.slope⟩
  | true =>
      obtain ⟨phase, result⟩ := pointInPlaceClearSlope_spec L hw hn X Y A k true hY hk (by simp) s m hp.1
      exact ⟨phase, result, by simpa using result.slope⟩

/-- 纯数学坐标公式，不选择任何实现；块内 let 是输入值的快照。 -/
def genericEffect (L : ControlledPointLayout) (cx cy : Fp) : Effect := calculation {
  let x := L.point.x;
  let y := L.point.y;
  let slope := field((y - const(cy.val)) / (x - const(cx.val))) mod p;
  if L.core.generic {
    L.point.x = field(slope * slope - x - const(cx.val)) mod p;
    L.point.y = field(slope * (x - L.point.x) - y) mod p;
  };
}

theorem pointInPlaceGeneric (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup)
    (X Y cx cy k : Fp) (G : Bool) (hX : G=true → X≠cx)
    (hk : G=true → cx-genericX X Y cx cy=0 → genericSlope X Y cx cy=k)
    (initial : BasisState) (hi : PointInPlaceValues L X Y 0 G false false initial) :
    Triple (fun s => s=initial) (Arithmetic.pointInPlaceGeneric L cx cy k)
      (fun t => genericEffect L cx cy initial t ∧
        PointInPlaceValues L (if G then genericX X Y cx cy else X)
          (if G then genericY X Y cx cy else Y) 0 G false false t ∧
        ∀ w, w∉L.point.x → w∉L.point.y → t w=initial w) := by
  intro s m hs
  subst initial
  have result : Triple (PointInPlaceValues L X Y 0 G false false)
      (Arithmetic.pointInPlaceGeneric L cx cy k)
      (PointInPlaceValues L (if G then genericX X Y cx cy else X)
        (if G then genericY X Y cx cy else Y) 0 G false false) := by
    cases G
    · exact pointInPlaceGeneric_false L hw hn X Y cx cy k
    · exact pointInPlaceGeneric_true L hw hn X Y cx cy k (hX rfl) (hk rfl)
  obtain ⟨phase, post⟩ := result s m hi
  refine ⟨phase, ?_, post, ?_⟩
  · simp only [genericEffect, hi.x, hi.y, hi.generic, ZMod.natCast_zmod_val]
    cases G
    · exact ⟨post.x, post.y⟩
    · simpa [genericX, genericY, genericSlope, genericNumerator, genericDenominator,
        div_eq_mul_inv, pow_two, ZMod.natCast_zmod_val] using And.intro post.x post.y
  · exact pointInPlaceGeneric_frame L hw cx cy k X Y _ _ G s m hi post

end ECDSAAdd.Arithmetic.CertifiedSpecs
