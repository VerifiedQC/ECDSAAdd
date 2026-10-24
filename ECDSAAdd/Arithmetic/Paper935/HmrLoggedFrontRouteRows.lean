import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontRouteRows
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontArithmeticRows

namespace ECDSAAdd.Arithmetic.Paper935


theorem HmrSourceFront.Logged.route_encodes (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    {logs : HmrFrontResizeLogs} (h : P.Logged logs A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (encodes : P.pairBank.Encodes s.basis z) :
    P.pairBank.Encodes (run (P.route counter) m s).basis (hmrRouteBank z (s.basis P.sigma)) := by
  have nd := h.route_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have widths := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).1
  have fg : P.pairBank.f.wires.length=P.pairBank.g.wires.length := by
    simp only [WindowRow.wires,List.length_append,List.length_singleton,widths.1,widths.2.1]
  have vv : P.pairBank.fv.wires.length=P.pairBank.gv.wires.length := by
    simp only [WindowRow.wires,List.length_append,List.length_singleton,widths.2.2.1,widths.2.2.2]
  have values := hmrRouteStage_signed P.sigma _ _ _ _ counter nd fg vv s m
  change P.pairBank.f.value _=(if s.basis P.sigma then P.pairBank.g.value s.basis else P.pairBank.f.value s.basis) ∧
    P.pairBank.g.value _=(if s.basis P.sigma then P.pairBank.f.value s.basis else P.pairBank.g.value s.basis) ∧
    P.pairBank.fv.value _=(if s.basis P.sigma then P.pairBank.gv.value s.basis else P.pairBank.fv.value s.basis) ∧
    P.pairBank.gv.value _=(if s.basis P.sigma then P.pairBank.fv.value s.basis else P.pairBank.gv.value s.basis) at values
  rw [encodes.1,encodes.2.1,encodes.2.2.1,encodes.2.2.2] at values
  cases hs : s.basis P.sigma <;> simpa only [WindowBank.Encodes,HmrSourceFront.route,hmrRouteBank,hs,Bool.false_eq_true,if_false,if_true] using values


end ECDSAAdd.Arithmetic.Paper935
