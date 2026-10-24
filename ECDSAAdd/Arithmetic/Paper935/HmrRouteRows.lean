import ECDSAAdd.Arithmetic.Paper935.HmrSwapRowsInverse
import ECDSAAdd.Arithmetic.Divsteps.Routing

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Arithmetic.Divsteps

theorem hmrSwapRows_append (control : Wire) (as bs xs ys : List Wire) (len : as.length=bs.length) :
    hmrSwapRows control (as++xs) (bs++ys)=hmrSwapRows control as bs++hmrSwapRows control xs ys := by
  induction as generalizing bs with
  | nil => cases bs <;> simp_all [hmrSwapRows]
  | cons a as ih => cases bs with
    | nil => simp at len
    | cons b bs => simp only [List.cons_append,hmrSwapRows,ih bs (by simpa using len),List.append_assoc]

/-- Semantic equality only: source pairwise CSWAPs and the older batched
three-layer spelling act identically on a disjoint equal-width pair. -/
theorem hmrSwapRows_eq_batched (control : Wire) (as bs : List Wire)
    (nd : (control::(as++bs)).Nodup) (len : as.length=bs.length) (s : State) (m : List Bool) :
    run (hmrSwapRows control as bs) m s=run (swapRegisters control as bs) m s := by
  have src := hmrSwapRows_values control as bs nd len s m
  have dst := swapRegisters_correct control as bs len nd s m
  have frame := hmrSwapRows_frame control as bs s m
  apply congrArg₂ State.mk
  · exact frame.1.trans dst.1.symm
  · funext q
    change (run (hmrSwapRows control as bs) m s).basis q=(run (swapRegisters control as bs) m s).basis q
    by_cases qa : q∈as
    · exact (regValue_eq_iff as _ _).mp (src.1.trans dst.2.2.1.symm) q qa
    by_cases qb : q∈bs
    · exact (regValue_eq_iff bs _ _).mp (src.2.trans dst.2.2.2.symm) q qb
    exact (frame.2 q qa qb).trans (dst.2.1 q qa qb).symm

def hmrRouteRows (control : Wire) (f g fv gv : List Wire) : Program :=
  hmrSwapRows control f g ++ hmrSwapRows control fv gv

theorem hmrRouteRows_refines (control : Wire) (f g fv gv : List Wire)
    (nd : (control::((f++fv)++(g++gv))).Nodup)
    (fg : f.length=g.length) (vv : fv.length=gv.length) (s : State) (m : List Bool) :
    run (hmrRouteRows control f g fv gv) m s=run (routeRows control f g fv gv) m s := by
  rw [hmrRouteRows,←hmrSwapRows_append control f g fv gv fg]
  exact hmrSwapRows_eq_batched control (f++fv) (g++gv) nd (by simp [fg,vv]) s m

theorem hmrRouteRows_signed (control : Wire) (f g fv gv : List Wire)
    (nd : (control::((f++fv)++(g++gv))).Nodup)
    (fg : f.length=g.length) (vv : fv.length=gv.length) (s : State) (m : List Bool) :
    signedRegValue f (run (hmrRouteRows control f g fv gv) m s).basis=
      (if s.basis control then signedRegValue g s.basis else signedRegValue f s.basis) ∧
    signedRegValue g (run (hmrRouteRows control f g fv gv) m s).basis=
      (if s.basis control then signedRegValue f s.basis else signedRegValue g s.basis) ∧
    signedRegValue fv (run (hmrRouteRows control f g fv gv) m s).basis=
      (if s.basis control then signedRegValue gv s.basis else signedRegValue fv s.basis) ∧
    signedRegValue gv (run (hmrRouteRows control f g fv gv) m s).basis=
      (if s.basis control then signedRegValue fv s.basis else signedRegValue gv s.basis) := by
  rw [hmrRouteRows_refines control f g fv gv nd fg vv]
  exact routeRows_signed control f g fv gv fg vv nd s m

end ECDSAAdd.Arithmetic.Paper935
