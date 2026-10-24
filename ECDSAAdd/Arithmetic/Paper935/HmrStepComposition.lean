import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrEarlyStepLog_of_parts (A C : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire)
    (counter record : List Wire) (need : Nat) (log : HmrEarlyStepLog)
    (F : HmrSourceFront) (Q : HmrEarlyControlPlan)
    (front : compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth true frozen counter log.front=some F)
    (repacked : F.exitArena.checkRepack log.moves=some C)
    (layout : (∀p∈log.moves,p.1∉F.branch::F.sigma::counter) ∧
      (F.exitBank.repacked log.moves).fv.payload≠[] ∧
      ((F.exitBank.repacked log.moves).rows.flatMap WindowRow.wires++counter).toFinset⊆C.live ∧
      List.Disjoint ((F.exitBank.repacked log.moves).rows.flatMap WindowRow.wires++counter)
        (F.sigma::F.branch::record))
    (control : compileHmrEarlyControlLog C counter record (counter.getLastD 0) F.sigma
      (F.exitBank.repacked log.moves).fv.second
      ((F.exitBank.repacked log.moves).fv.payload[2]?.getD (F.exitBank.repacked log.moves).fv.sign)
      ((F.exitBank.repacked log.moves).fv.payload[3]?.getD (F.exitBank.repacked log.moves).fv.sign)
      ((F.exitBank.repacked log.moves).fv.payload[4]?.getD (F.exitBank.repacked log.moves).fv.sign)
      F.branch need log.control=some Q) :
    compileHmrEarlyStepLog A bank fgWidth vWidth exitWidth frozen counter record need log=
      some ⟨F,C,Q,log.moves⟩ := by
  simp only [compileHmrEarlyStepLog,front,Bind.bind,Option.bind,repacked,if_pos layout,control,pure]

theorem compileHmrArmedStepLog_of_parts (A C : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire)
    (counter timestamp record : List Wire) (offset need : Nat) (log : HmrArmedStepLog)
    (F : HmrSourceFront) (Q : HmrArmedControlPlan)
    (front : compileHmrSourceFrontLog A bank fgWidth vWidth exitWidth false frozen counter log.front=some F)
    (repacked : F.exitArena.checkRepack log.moves=some C)
    (layout : (∀p∈log.moves,p.1∉F.branch::F.sigma::frozen::counter) ∧
      (F.exitBank.repacked log.moves).fv.payload≠[] ∧
      ((F.exitBank.repacked log.moves).rows.flatMap WindowRow.wires++counter).toFinset⊆C.live ∧
      List.Disjoint ((F.exitBank.repacked log.moves).rows.flatMap WindowRow.wires++counter)
        (F.sigma::F.branch::frozen::(timestamp++record)))
    (control : compileHmrArmedControlLog C (F.exitBank.repacked log.moves).g.wires counter timestamp record
      frozen (counter.getLastD 0) F.sigma (F.exitBank.repacked log.moves).fv.second
      ((F.exitBank.repacked log.moves).fv.payload[2]?.getD (F.exitBank.repacked log.moves).fv.sign)
      ((F.exitBank.repacked log.moves).fv.payload[3]?.getD (F.exitBank.repacked log.moves).fv.sign)
      ((F.exitBank.repacked log.moves).fv.payload[4]?.getD (F.exitBank.repacked log.moves).fv.sign)
      F.branch offset need log.control=some Q) :
    compileHmrArmedStepLog A bank fgWidth vWidth exitWidth frozen counter timestamp record offset need log=
      some ⟨F,C,Q,log.moves⟩ := by
  simp only [compileHmrArmedStepLog,front,Bind.bind,Option.bind,repacked,if_pos layout,control,pure]

theorem compileHmrSourceStepLog_of_arm (A B : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (counter record : List Wire)
    (width tmin need : Nat) (M : HmrFreezeMetadata) (log : HmrArmedStepLog)
    (P : HmrArmedStepPlan) (arm : compileHmrArmLog A width M=some B)
    (step : compileHmrChronologicalStepLog B bank fgWidth vWidth exitWidth M.frozen
      counter M.timestamp record (tmin+1-tmin) need log=some P) :
    compileHmrSourceStepLog A bank fgWidth vWidth exitWidth counter record width tmin tmin need
      none (.arm M log)=some (.armed M P) := by
  simp only [compileHmrSourceStepLog,ite_true,arm,Bind.bind,Option.bind,step,pure]

/-- Extract a concrete compiler result only after its acceptance has been
proved. No fallback plan or output-correctness premise is introduced. -/
def hmrAcceptedPlan {α : Type} (result : Option α)
    (accepted : result.map (fun _ => true)=some true) : α :=
  result.get (by cases result <;> simp_all)

theorem hmrAcceptedPlan_checked {α : Type} (result : Option α)
    (accepted : result.map (fun _ => true)=some true) :
    result=some (hmrAcceptedPlan result accepted) := by
  cases result with
  | none => simp at accepted
  | some value => rfl

end ECDSAAdd.Arithmetic.Paper935
