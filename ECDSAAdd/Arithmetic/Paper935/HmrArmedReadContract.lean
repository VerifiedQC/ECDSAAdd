import ECDSAAdd.Arithmetic.Paper935.HmrArmedReadPlan

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrClassReadPlan.Compiled (P : HmrClassReadPlan) (A : Arena) (mode : HmrClassMode)
    (inputs : List Wire) (L : HmrReadLayout) : Prop where
  classCompile : compileHmrClass A mode inputs=some (P.classArena,P.classWork)
  readCompile : compileHmrRead P.classArena (hmrClassReadLayout mode inputs P.classWork L)=some P.readPlan

theorem compileHmrClassRead_contract (A : Arena) (mode : HmrClassMode) (inputs : List Wire)
    (L : HmrReadLayout) (P : HmrClassReadPlan) (h : compileHmrClassRead A mode inputs L=some P) :
    P.Compiled A mode inputs L := by
  unfold compileHmrClassRead at h
  obtain ⟨⟨B,work⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨hc,hq⟩

def HmrClassReadPlan.program (P : HmrClassReadPlan) (mode : HmrClassMode) (inputs : List Wire) (L : HmrReadLayout) : Program :=
  hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs P.classWork)) ++
    P.readPlan.program (hmrClassReadLayout mode inputs P.classWork L)

def HmrArmedReadPlan.inputs (P : HmrArmedReadPlan) (counter : List Wire) (sign sigma frozen fire : Wire) : List Wire :=
  [sign,hmrCounterPorts counter P.counterWork 11,sigma,frozen,fire]

def HmrArmedReadPlan.program (P : HmrArmedReadPlan) (counter : List Wire) (sign sigma frozen fire : Wire) (L : HmrReadLayout) : Program :=
  hmrZero6Keep (hmrCounterPorts counter P.counterWork) ++
    P.classRead.program .reverseArmed (P.inputs counter sign sigma frozen fire) L

structure HmrArmedReadPlan.Compiled (P : HmrArmedReadPlan) (A : Arena) (counter : List Wire)
    (sign sigma frozen fire : Wire) (L : HmrReadLayout) : Prop where
  counterCompile : compileHmrCounterRetained A counter=some (P.counterArena,P.retainedArena,P.counterWork)
  classCompile : P.classRead.Compiled P.retainedArena .reverseArmed (P.inputs counter sign sigma frozen fire) L

theorem compileHmrArmedRead_contract (A : Arena) (counter : List Wire) (sign sigma frozen fire : Wire)
    (L : HmrReadLayout) (P : HmrArmedReadPlan) (h : compileHmrArmedRead A counter sign sigma frozen fire L=some P) :
    P.Compiled A counter sign sigma frozen fire L := by
  unfold compileHmrArmedRead at h
  obtain ⟨⟨B,C,work⟩,hc,h⟩ := Option.bind_eq_some_iff.mp h
  obtain ⟨Q,hq,h⟩ := Option.bind_eq_some_iff.mp h
  cases h
  exact ⟨hc,compileHmrClassRead_contract C .reverseArmed _ L Q hq⟩

end ECDSAAdd.Arithmetic.Paper935
