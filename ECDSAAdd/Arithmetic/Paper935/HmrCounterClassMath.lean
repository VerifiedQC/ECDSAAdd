import ECDSAAdd.Arithmetic.Paper935.HmrCounterRetained
import ECDSAAdd.Arithmetic.Paper935.HmrCounterKeeperBinding
import ECDSAAdd.Arithmetic.Paper935.HmrClassAllocation

namespace ECDSAAdd.Arithmetic.Paper935

/-- The allocated class flag reads the actual retained zero keeper. Its
signed-counter predicate is derived from that run, not supplied by a caller. -/
theorem compileHmrCounter_class_run (A B C D : Arena) (counter oldWork classWork : List Wire)
    (sign sigma frozen fire : Wire) (lo : List Wire) (view : counter=lo++[sign])
    (hc : compileHmrCounterRetained A counter=some (B,C,oldWork))
    (hj : compileHmrClass C .reverseArmed [sign,hmrCounterPorts counter oldWork 11,sigma,frozen,fire]=some (D,classWork))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) :
    let u := run (hmrZero6Keep (hmrCounterPorts counter oldWork)) m s
    let ports := hmrAllocatedClassPorts .reverseArmed [sign,hmrCounterPorts counter oldWork 11,sigma,frozen,fire] classWork
    (run (hmrAndSweep (hmrClassChain .reverseArmed ports)) n u).basis (ports 8)=
      (!u.basis frozen && !u.basis sigma && decide (signedRegValue counter u.basis≤0) && !u.basis fire) := by
  let u := run (hmrZero6Keep (hmrCounterPorts counter oldWork)) m s
  let ports := hmrAllocatedClassPorts .reverseArmed [sign,hmrCounterPorts counter oldWork 11,sigma,frozen,fire] classWork
  have retained := compileHmrCounterRetained_run A B C counter oldWork hc s m ready
  have value := compileHmrCounter_keeper_value A B counter oldWork retained.1 s m ready
  have zero : u.basis (ports 1)=decide (regValue (lo++[ports 0]) u.basis=0) := by
    change u.basis (hmrCounterPorts counter oldWork 11)=decide (regValue (lo++[sign]) u.basis=0)
    simpa only [u,view] using value
  have signed := hmrClass_signed_value .reverseArmed ports lo u.basis zero
  have result := compileHmrClass_run C D .reverseArmed _ classWork hj u n retained.2.2.2.1
  dsimp only
  rw [result]
  change hmrAndAdvance (hmrClassChain .reverseArmed ports) u.basis (ports 8)=_
  rw [compileHmrClass_value C D .reverseArmed _ classWork hj u.basis,signed]
  simp [ports,hmrAllocatedClassPorts,u,view]

end ECDSAAdd.Arithmetic.Paper935
