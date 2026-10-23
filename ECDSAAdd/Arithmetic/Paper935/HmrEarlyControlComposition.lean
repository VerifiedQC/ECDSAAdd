import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrClassProjection

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


theorem compileHmrEqualityLog_of_projection (A B : Arena) (bits : List Wire)
    (k : Nat) (work : List Wire) (P : HmrEqualityPlan)
    (shape : (compileHmrEqualityLog A bits k work).map Prod.snd = some (work,P))
    (live : B.live=A.live∪work.toFinset) :
    compileHmrEqualityLog A bits k work=some (B,work,P) := by
  cases h : compileHmrEqualityLog A bits k work with
  | none => simp [h] at shape
  | some result =>
    rcases result with ⟨C,actual,Q⟩
    simp only [h,Option.map_some,Option.some.injEq,Prod.mk.injEq] at shape
    rcases shape with ⟨rfl,rfl⟩
    have hc := compileHmrEqualityLog_contract A C bits k actual Q h
    have eq : C=B := hmrArena_eq_of_live _ _ ((A.checkBorrow_live C _ actual hc.2.1).trans live.symm)
    rw [eq]

theorem compileHmrRecordGrowLog_of_accept (A B : Arena) (old : List Wire)
    (need : Nat) (fresh : List Wire)
    (accepted : (compileHmrRecordGrowLog A old need fresh).map (fun _ => true)=some true)
    (live : B.live=A.live∪fresh.toFinset) :
    compileHmrRecordGrowLog A old need fresh=some B := by
  obtain ⟨C,h,_⟩ := Option.map_eq_some_iff.mp accepted
  have hc := compileHmrRecordGrowLog_contract A C old need fresh h
  have eq : C=B := hmrArena_eq_of_live _ _ ((A.checkBorrow_live C _ fresh hc.2.2.2).trans live.symm)
  rw [h,eq]

end ECDSAAdd.Arithmetic.Paper935
