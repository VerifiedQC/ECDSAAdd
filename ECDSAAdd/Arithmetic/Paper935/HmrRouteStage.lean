import ECDSAAdd.Arithmetic.Paper935.HmrRouteRows
import ECDSAAdd.Arithmetic.Paper935.HmrPairComplementInverse

namespace ECDSAAdd.Arithmetic.Paper935

/-- Actual F2 order: first pair, coefficient pair, then z conjugation. -/
def hmrRouteStage (sigma : Wire) (f g fv gv z : List Wire) : Program :=
  hmrSwapRows sigma f g ++ hmrSwapRows sigma fv gv ++ signComplement sigma z

/-- Actual R16 order after dropping headroom. Pair order is reversed while
the wires within each pair remain in ascending source order. -/
def hmrRouteStageInv (sigma : Wire) (f g fv gv z : List Wire) : Program :=
  signComplement sigma z ++ hmrSwapRows sigma fv gv ++ hmrSwapRows sigma f g

theorem hmrRouteStage_counts (sigma : Wire) (f g fv gv z : List Wire) :
    toffoliCount (hmrRouteStage sigma f g fv gv z)=min f.length g.length+min fv.length gv.length ∧
    measurementCount (hmrRouteStage sigma f g fv gv z)=0 ∧
    toffoliCount (hmrRouteStageInv sigma f g fv gv z)=min f.length g.length+min fv.length gv.length ∧
    measurementCount (hmrRouteStageInv sigma f g fv gv z)=0 := by
  simp [hmrRouteStage,hmrRouteStageInv,toffoliCount_append,measurementCount_append,
    hmrSwapRows_counts,signComplement_counts,Nat.add_comm]

theorem hmrRouteStage_roundtrip (sigma : Wire) (f g fv gv z : List Wire)
    (fgND : (sigma::(f++g)).Nodup) (vvND : (sigma::(fv++gv)).Nodup)
    (zND : z.Nodup) (zAway : sigma∉z) (fg : f.length=g.length) (vv : fv.length=gv.length)
    (s : State) (m n : List Bool) :
    run (hmrRouteStageInv sigma f g fv gv z) n (run (hmrRouteStage sigma f g fv gv z) m s)=s ∧
    run (hmrRouteStage sigma f g fv gv z) n (run (hmrRouteStageInv sigma f g fv gv z) m s)=s := by
  have countsF := (hmrSwapRows_counts sigma f g).2
  have countsV := (hmrSwapRows_counts sigma fv gv).2
  have countsZ := (signComplement_counts sigma z).2
  simp only [hmrRouteStage,hmrRouteStageInv,run_append]
  simp only [run_take]
  simp only [measurementCount_append,countsF,countsV,countsZ,Nat.zero_add,List.drop_zero]
  constructor
  · rw [hmrSignComplement_twice sigma z zND zAway]
    rw [hmrSwapRows_twice sigma fv gv vvND vv]
    exact hmrSwapRows_twice sigma f g fgND fg s _ n
  · rw [hmrSwapRows_twice sigma f g fgND fg]
    rw [hmrSwapRows_twice sigma fv gv vvND vv]
    exact hmrSignComplement_twice sigma z zND zAway s _ n

end ECDSAAdd.Arithmetic.Paper935
