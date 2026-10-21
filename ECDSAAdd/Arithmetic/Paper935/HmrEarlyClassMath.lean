import ECDSAAdd.Arithmetic.Paper935.HmrEarlyReadState
import ECDSAAdd.Arithmetic.Paper935.HmrClassValues

namespace ECDSAAdd.Arithmetic.Paper935

/-- Early class computation reads the retained five-leaf zero-test output,
without inserting the armed-mode keeper copy. -/
theorem compileHmrEarly_class_run (A B C : Arena) (counter work classWork : List Wire)
    (Z : HmrEqualityPlan) (sign sigma frozen fire : Wire) (lo : List Wire) (view : counter=lo++[sign])
    (hz : compileHmrEquality A counter 0=some (B,work,Z))
    (hc : compileHmrClass B .early [sign,Z.top,sigma,frozen,fire]=some (C,classWork))
    (s : State) (m n : List Bool) (ready : A.Ready s.basis) :
    let u := run (hmrAndSweep Z.stages) m s
    let ports := hmrAllocatedClassPorts .early [sign,Z.top,sigma,frozen,fire] classWork
    (run (hmrAndSweep (hmrClassChain .early ports)) n u).basis (ports 8)=
      (!u.basis sigma && decide (signedRegValue counter u.basis≤0)) := by
  let u := run (hmrAndSweep Z.stages) m s
  let ports := hmrAllocatedClassPorts .early [sign,Z.top,sigma,frozen,fire] classWork
  have zs := compileHmrEquality_state A B counter 0 work Z hz s m ready
  have owned := (compileHmrEquality_contract A B counter 0 work Z hz).1.1
  have same : regValue counter u.basis=regValue counter s.basis :=
    regValue_congr counter _ _ (fun q hq => zs.2.2.2 q (owned (List.mem_toFinset.mpr hq)))
  have zero : u.basis (ports 1)=decide (regValue (lo++[ports 0]) u.basis=0) := by
    change u.basis Z.top=decide (regValue (lo++[sign]) u.basis=0)
    rw [←view,same]
    exact zs.2.2.1
  have signed := hmrClass_signed_value .early ports lo u.basis zero
  have result := compileHmrClass_run B C .early _ classWork hc u n zs.2.1
  dsimp only
  rw [result]
  change hmrAndAdvance (hmrClassChain .early ports) u.basis (ports 8)=_
  rw [compileHmrClass_value B C .early _ classWork hc u.basis,signed]
  simp [ports,hmrAllocatedClassPorts,u,view]

end ECDSAAdd.Arithmetic.Paper935
