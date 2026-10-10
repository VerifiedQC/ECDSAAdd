import ECDSAAdd.Arithmetic.PointAddition.ControlledPointOutSpec
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceIntegration
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open Secp256k1
open scoped ECDSAAdd.ProofLanguage

theorem controlledPointAddOut_ready (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (b : Bool) (R C : Point) (hc : C≠0) (OF : Bool) (OX OY : Nat) :
    Triple (ControlledPointReady L b R OF OX OY) (controlledPointAddOut L C)
      (ControlledPointReady L b R (OF^^(b&&pointFinite (R+C)))
        (OX^^^(if b then pointX (R+C) else 0)) (OY^^^(if b then pointY (R+C) else 0))) := by
  cases C with
  | zero => exact (hc rfl).elim
  | some hp => exact controlledPointAddOut_finite_ready L h hn b R _ _ hp OF OX OY

/-- 完整受控原地点加：任意合法点与经典常量，包括 O、互逆点和倍点。
控制位保持；临时点、算术工作区及三个选择位全部归零；所有测量记录下相位恢复。 -/
theorem controlledPointAdd_spec (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (b : Bool) (R C : Point) :
    {{ L.control=b,L.point=R,L.work=0 }} controlledPointAdd L C
    {{ L.control=b,L.point=(if b then R+C else R),L.work=0 }} := Proof
  cases C with
  | zero =>
    have unchangedPoint : (if b then R+0 else R)=R := by simp
    -- Adding the identity is an empty circuit, for either control value.
    conclude {
      {{ L.control=b,L.point=R,L.work=0 }} controlledPointAdd L 0
      {{ L.control=b,L.point=(if b then R+0 else R),L.work=0 }}
    } by (by
      intro s m initial
      change s.phase=s.phase ∧ _
      refine ⟨rfl,?_⟩
      change ((Holds.holds s.basis L.control b ∧
        Holds.holds s.basis L.point (if b then R+0 else R)) ∧ _)
      simpa only [unchangedPoint] using initial);
  | some hp =>
    have finiteAddition := pointInPlaceFinite_full_spec L h hn R hp b
    -- The finite-point proof includes the identity, doubling, inverse, and generic input cases.
    conclude {
      {{ L.control=b,L.point=R,L.work=0 }} controlledPointAdd L (.some hp)
      {{ L.control=b,L.point=(if b then R+.some hp else R),L.work=0 }}
    } by finiteAddition;

end ECDSAAdd.Arithmetic
