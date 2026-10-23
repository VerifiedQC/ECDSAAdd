import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront

namespace ECDSAAdd.Arithmetic.Paper935

/-- Assemble separately checked source transactions without normalizing the
complete arena and gate plan again. All component checks retain their exact
incoming/outgoing arenas and ordered observed allocation lists. -/
theorem compileHmrSourceFrontLog_of_parts (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire)
    (counter : List Wire) (logs : HmrFrontAllocationLog)
    (P : HmrSourceFront)
    (entry : HmrFrontEntryValid A bank fgWidth vWidth exitWidth early frozen counter)
    (padding : compileHmrBankResizeLog .entry A bank ⟨fgWidth,fgWidth,vWidth,vWidth⟩ logs.rows.entry=
      some (P.pairArena,P.pairBank,P.padding))
    (sigma : P.pairArena.checkBorrow 1 logs.sigma=some P.sigmaArena)
    (sigmaWork : P.sigmaWork=logs.sigma)
    (branch : P.sigmaArena.checkBorrow 1 logs.branch=some P.branchArena)
    (branchWork : P.branchWork=logs.branch)
    (headroom : compileHmrBankResizeLog .headroom P.branchArena P.pairBank
      ⟨fgWidth+1,fgWidth+1,vWidth+1,vWidth+1⟩ logs.rows.headroom=
      some (P.headArena,P.headBank,P.headroom))
    (arithmetic : compileHmrHybridF4Log P.headArena P.sigma P.branch
      P.headBank.f.wires P.headBank.g.wires P.headBank.fv.wires P.headBank.gv.wires
      logs.flag logs.carry logs.first logs.second=some P.arithmetic)
    (counterChecked : compileHmrCounterStepLog P.headArena early
      (hmrFrontCounterControl early P.sigma frozen) counter logs.counter=some P.counterArena)
    (counterWork : P.counterWork=logs.counter)
    (exit : compileHmrBankResizeLog .exit P.headArena P.headBank exitWidth logs.rows.exit=
      some (P.exitArena,P.exitBank,P.shrinking)) :
    compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth early frozen counter logs=some P := by
  have sig : hmrBorrowPorts logs.sigma (0 : Fin 1)=P.sigma := by
    simp only [HmrSourceFront.sigma,sigmaWork]
  have br : hmrBorrowPorts logs.branch (0 : Fin 1)=P.branch := by
    simp only [HmrSourceFront.branch,branchWork]
  simp only [compileHmrSourceFrontLog,if_neg (not_not.mpr entry),padding,Bind.bind,Option.bind,
    sigma,branch,headroom,sig,br,arithmetic,counterChecked,exit]
  cases P
  simp_all

end ECDSAAdd.Arithmetic.Paper935
