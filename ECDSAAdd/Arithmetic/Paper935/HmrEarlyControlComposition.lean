import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- Assemble the exact plan from the individual observed checks. -/
theorem compileHmrEarlyControlLog_of_logged (P : HmrEarlyControlPlan) (A : Arena)
    (counter record : List Wire) (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat)
    (h : P.Logged A counter record sign sigma fv1 b2 b3 b4 branch need) :
    compileHmrEarlyControlLog A counter record sign sigma fv1 b2 b3 b4 branch need P.log = some P := by
  have inputs := And.intro h.width (And.intro h.signPort (And.intro h.recordDistinct
    (And.intro h.recordOwned (And.intro h.counterApart (And.intro h.sigmaInputsOwned h.fv1Apart)))))
  simp only [compileHmrEarlyControlLog, if_pos inputs, h.zero, Bind.bind, Option.bind,
    h.classCompiled, if_pos (And.intro h.flagsApart h.anchorsApart), h.flags,
    h.fit, h.history, h.sigmaDrop, h.branchDrop, pure, Pure.pure]

theorem compileHmrEarlyControlLog_iff_logged (P : HmrEarlyControlPlan) (A : Arena)
    (counter record : List Wire) (sign sigma fv1 b2 b3 b4 branch : Wire) (need : Nat) :
    compileHmrEarlyControlLog A counter record sign sigma fv1 b2 b3 b4 branch need P.log = some P ↔
      P.Logged A counter record sign sigma fv1 b2 b3 b4 branch need := by
  constructor
  · intro h
    exact (compileHmrEarlyControlLog_contract A counter record sign sigma fv1 b2 b3 b4 branch need P.log P h).2
  · exact compileHmrEarlyControlLog_of_logged P A counter record sign sigma fv1 b2 b3 b4 branch need

end ECDSAAdd.Arithmetic.Paper935
