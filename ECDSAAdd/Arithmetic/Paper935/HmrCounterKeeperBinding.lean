import ECDSAAdd.Arithmetic.Paper935.HmrCounterLifetime
import ECDSAAdd.Arithmetic.Paper935.HmrClassValues

namespace ECDSAAdd.Arithmetic.Paper935

/-- The zero result describes the actual post-computation counter, not an
independent predicate hypothesis supplied to the class-flag theorem. -/
theorem compileHmrCounter_keeper_value (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let out := run (hmrZero6Keep (hmrCounterPorts counter work)) m s
    out.basis (hmrCounterPorts counter work 11)=decide (regValue counter out.basis=0) := by
  have hc := compileHmrCounter_contract A B counter work h
  have borrow := A.borrowMany_contract B 6 work hc.2.2.2
  have dis := ((A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩).2
  have kmem := compileHmrCounter_keeper_mem A B counter work h
  have outside : ∀ q∈counter,q≠hmrCounterPorts counter work 11 := by
    intro q hq eq
    have own := hc.2.2.1 (List.mem_toFinset.mpr hq)
    rw [eq] at own
    exact Finset.disjoint_left.mp dis own kmem
  dsimp only
  rw [compileHmrCounter_run A B counter work h s m ready]
  simp only [writeBit,Function.update_self]
  have same := regValue_congr counter
    (Function.update s.basis (hmrCounterPorts counter work 11) (decide (regValue counter s.basis=0)))
    s.basis (fun q hq => Function.update_of_ne (outside q hq) _ _)
  exact (congrArg (fun n : Nat => decide (n=0)) same).symm

/-- Wire the class zero-input directly to the keeper returned by compilation.
The remaining ports are explicit physical caller data and four work sites. -/
def hmrClassCounterPorts (sign keeper parity frozen fire : Wire) (work : Fin 4 → Wire)
    (i : Fin 9) : Wire :=
  [sign,keeper,parity,frozen,fire,work 0,work 1,work 2,work 3].getD i.val 0

theorem compileHmrCounter_class_value (A B : Arena) (counter work : List Wire)
    (h : compileHmrCounter A counter=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (mode : HmrClassMode)
    (lo : List Wire) (sign parity frozen fire : Wire) (classWork : Fin 4 → Wire)
    (view : counter=lo++[sign]) :
    let out := run (hmrZero6Keep (hmrCounterPorts counter work)) m s
    hmrClassValue mode (hmrClassCounterPorts sign (hmrCounterPorts counter work 11)
      parity frozen fire classWork) out.basis = match mode with
      | .early => !out.basis parity && decide (signedRegValue counter out.basis≤0)
      | .forwardArmed => !out.basis frozen && !out.basis parity && decide (signedRegValue counter out.basis≤0)
      | .reverseArmed => !out.basis frozen && !out.basis parity && decide (signedRegValue counter out.basis≤0) && !out.basis fire := by
  dsimp only
  have value := compileHmrCounter_keeper_value A B counter work h s m ready
  have zero : (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis
      (hmrClassCounterPorts sign (hmrCounterPorts counter work 11) parity frozen fire classWork 1)=
      decide (regValue (lo++[hmrClassCounterPorts sign (hmrCounterPorts counter work 11)
        parity frozen fire classWork 0]) (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis=0) := by
    simpa only [hmrClassCounterPorts,view] using value
  have result := hmrClass_signed_value mode
    (hmrClassCounterPorts sign (hmrCounterPorts counter work 11) parity frozen fire classWork)
    lo (run (hmrZero6Keep (hmrCounterPorts counter work)) m s).basis zero
  cases mode <;> simpa [hmrClassCounterPorts,view] using result

end ECDSAAdd.Arithmetic.Paper935
