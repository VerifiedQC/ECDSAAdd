import ECDSAAdd.Arithmetic.ControlledPointPair

namespace ECDSAAdd.Arithmetic
open Secp256k1

theorem controlledPointAddOut_ready (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (b : Bool) (R C : Point) (hc : C≠0) (OF : Bool) (OX OY : Nat) :
    Triple (ControlledPointReady L b R OF OX OY) (controlledPointAddOut L C)
      (ControlledPointReady L b R (OF^^(b&&pointFinite (R+C)))
        (OX^^^(if b then pointX (R+C) else 0)) (OY^^^(if b then pointY (R+C) else 0))) := by
  cases C with
  | zero => exact (hc rfl).elim
  | some hp => exact controlledPointAddOut_finite_ready L h hn b R _ _ hp OF OX OY

theorem controlledPointAddOut_load (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (b : Bool) (R C : Point) (hc : C≠0) :
    Triple (ControlledPointPair L b R 0) (controlledPointAddOut L C)
      (ControlledPointPair L b R (if b then R+C else 0)) := by
  have hh := controlledPointAddOut_ready L h hn b R C hc false 0 0
  apply Triple.conseq (fun s hs => (controlledPointPair_ready L b R 0 s).mp hs) hh
  intro s hs
  apply (controlledPointPair_ready L b R (if b then R+C else 0) s).mpr
  cases b <;> simpa only [Bool.false_and,Bool.true_and,Bool.false_xor,Nat.zero_xor,
    Bool.false_eq_true,ite_false,ite_true,pointFinite,pointX,pointY,coordinates_zero,Option.isSome_none] using hs

theorem controlledPointAddOut_erase (L : ControlledPointLayout) (h : L.Widths)
    (hn : L.wires.Nodup) (R C : Point) (hc : C≠0) :
    Triple (ControlledPointPair L true (R+C) R) (controlledPointAddOut L (-C))
      (ControlledPointPair L true (R+C) 0) := by
  have hh := controlledPointAddOut_ready L h hn true (R+C) (-C) (neg_ne_zero.mpr hc)
    (pointFinite R) (pointX R) (pointY R)
  apply Triple.conseq (fun s hs => (controlledPointPair_ready L true (R+C) R s).mp hs) hh
  intro s hs
  apply (controlledPointPair_ready L true (R+C) 0 s).mpr
  simpa only [add_neg_cancel_right,Bool.true_and,ite_true,Bool.xor_self,Nat.xor_self,
    pointFinite,pointX,pointY,coordinates_zero,Option.isSome_none] using hs

/-- 完整受控原地点加：任意合法点与经典常量，包括 O、互逆点和倍点。
控制位保持；临时点、算术工作区及三个选择位全部归零；所有测量记录下相位恢复。 -/
theorem controlledPointAdd_spec (L : ControlledPointLayout) (h : L.Widths) (hn : L.wires.Nodup)
    (b : Bool) (R C : Point) :
    {{ L.control=b,L.point=R,L.work=0 }} controlledPointAdd L C
    {{ L.control=b,L.point=(if b then R+C else R),L.work=0 }} := by
  cases C with
  | zero =>
    intro s m hs
    change s.phase=s.phase ∧ _
    refine ⟨rfl,?_⟩
    change ((Holds.holds s.basis L.control b ∧ Holds.holds s.basis L.point (if b then R+0 else R)) ∧ _)
    simpa only [add_zero,ite_self] using hs
  | some hp =>
    let C : Point := .some hp
    have hc : C≠0 := by change (.some hp : Point)≠.zero; intro he; cases he
    have h1 := controlledPointAddOut_load L h hn b R C hc
    have h2 := controlledPointSwap_pair L h hn b R (if b then R+C else 0)
    have hh : Triple (ControlledPointPair L b R 0) (controlledPointAdd L C)
        (ControlledPointPair L b (if b then R+C else R) 0) := by
      cases b with
      | false =>
        have h3 := controlledPointAddOut_load L h hn false R (-C) (neg_ne_zero.mpr hc)
        simpa only [controlledPointAdd,C,Bool.false_eq_true,ite_false] using (h1.seq h2).seq h3
      | true =>
        have h3 := controlledPointAddOut_erase L h hn R C hc
        simpa only [controlledPointAdd,C,ite_true] using (h1.seq h2).seq h3
    exact Triple.conseq (fun s hs => (controlledPointPair_zero L b R s).mpr hs) hh
      (fun s hs => (controlledPointPair_zero L b (if b then R+C else R) s).mp hs)

end ECDSAAdd.Arithmetic
