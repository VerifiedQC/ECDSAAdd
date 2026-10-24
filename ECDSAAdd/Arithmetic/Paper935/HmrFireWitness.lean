import ECDSAAdd.Arithmetic.Paper935.HmrFreezeRun
import ECDSAAdd.Arithmetic.Paper935.Unfreeze

namespace ECDSAAdd.Arithmetic.Paper935

/-- F16's fire witness follows from the actual F7 execution and the
record's independent chronological invariant. -/
theorem HmrFreezePlan.Compiled.fire_witness (P : HmrFreezePlan) (A C : Arena)
    (bits : List Wire) (frozen : Wire) (record : List Wire) (offset : Nat)
    (compiled : P.Compiled A C bits frozen record offset) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (past : regValue record s.basis<offset)
    (unfrozen : s.basis frozen=false → regValue record s.basis=0) :
    let out := run (P.program frozen record offset) m s
    out.basis P.fire=((decide (regValue record out.basis=offset) && out.basis P.zeroKeeper) &&
      out.basis frozen) := by
  have spec := compiled.run_spec P A C bits frozen record offset s m ready
  dsimp only
  rw [spec.2.1,spec.2.2.1,spec.2.2.2.1,spec.2.2.2.2.2.2]
  have witness := latch_reverse_witness (regValue record s.basis) offset
    (decide (regValue bits s.basis=0)) (s.basis frozen) past unfrozen
  cases hz : decide (regValue bits s.basis=0) <;>
    cases hf : s.basis frozen <;> simp_all

end ECDSAAdd.Arithmetic.Paper935
