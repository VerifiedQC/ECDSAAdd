import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- The early program never reads the placeholder frozen address. It may
therefore coincide with an occupied row site without introducing an alias. -/
theorem HmrEarlyStepPlan.program_frozen_irrelevant (P : HmrEarlyStepPlan)
    (frozen other sign : Wire) (counter record : List Wire) :
    P.program frozen sign counter record=P.program other sign counter record := by
  rfl

/-- The early checker likewise neither reserves nor checks the placeholder. -/
theorem compileHmrEarlyStepLog_frozen_irrelevant (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen other : Wire)
    (counter record : List Wire) (need : Nat) (log : HmrEarlyStepLog) :
    compileHmrEarlyStepLog A bank fgWidth vWidth exitWidth frozen counter record need log=
      compileHmrEarlyStepLog A bank fgWidth vWidth exitWidth other counter record need log := by
  rfl

end ECDSAAdd.Arithmetic.Paper935
