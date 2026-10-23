import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler

namespace ECDSAAdd.Arithmetic.Paper935

/-- Join plans after checking the second segment at the first segment's output. -/
def HmrSourceWalkPlan.append (P Q : HmrSourceWalkPlan) : HmrSourceWalkPlan :=
  match P with
  | .done _ _ _ _ => Q
  | .step head tail => .step head (tail.append Q)

/-- Add one accepted step to a checked suffix without unfolding that suffix. -/
theorem compileHmrSourceWalk_cons (counter : List Wire) (width tmin : Nat)
    (spec : HmrSourceWalkStepLog) (rest : List HmrSourceWalkStepLog)
    (metadata : Option HmrFreezeMetadata) (A : Arena) (bank : WindowBank)
    (record : List Wire) (t : Nat) (P : HmrSourceStepPlan) (Q : HmrSourceWalkPlan)
    (head : compileHmrSourceStepLog A bank spec.fgWidth spec.vWidth spec.exitWidth counter record
      width tmin t spec.need metadata spec.log=some P)
    (tail : compileHmrSourceWalk counter width tmin P.metadata P.outputArena P.bank
      (P.record record) (t+1) rest=some Q) :
    compileHmrSourceWalk counter width tmin metadata A bank record t (spec::rest)=some (.step P Q) := by
  simp only [compileHmrSourceWalk,head,Bind.bind,Option.bind,tail,pure,Pure.pure]

/-- Segment certificates compose only when the arena, bank, history and freeze
metadata are exactly those returned by the preceding segment. -/
theorem compileHmrSourceWalk_append (counter : List Wire) (width tmin : Nat)
    (left right : List HmrSourceWalkStepLog) (metadata : Option HmrFreezeMetadata)
    (A : Arena) (bank : WindowBank) (record : List Wire) (t : Nat)
    (P Q : HmrSourceWalkPlan)
    (first : compileHmrSourceWalk counter width tmin metadata A bank record t left = some P)
    (second : compileHmrSourceWalk counter width tmin P.metadata P.outputArena P.bank P.record
      (t+left.length) right = some Q) :
    compileHmrSourceWalk counter width tmin metadata A bank record t (left++right) = some (P.append Q) := by
  induction left generalizing metadata A bank record t P with
  | nil =>
      simp only [compileHmrSourceWalk, Option.some.injEq] at first
      subst P
      exact second
  | cons spec rest ih =>
      simp only [compileHmrSourceWalk] at first
      obtain ⟨head, headChecked, remaining⟩ := Option.bind_eq_some_iff.mp first
      obtain ⟨tail, tailChecked, result⟩ := Option.bind_eq_some_iff.mp remaining
      cases result
      have next : compileHmrSourceWalk counter width tmin tail.metadata tail.outputArena
          tail.bank tail.record (t+1+rest.length) right = some Q := by
        simpa only [HmrSourceWalkPlan.metadata, HmrSourceWalkPlan.outputArena,
          HmrSourceWalkPlan.bank, HmrSourceWalkPlan.record, List.length_cons,
          Nat.add_assoc, Nat.add_comm 1] using second
      have joined := ih head.metadata head.outputArena head.bank (head.record record) (t+1) tail tailChecked next
      simp only [List.cons_append, compileHmrSourceWalk, headChecked, Bind.bind, Option.bind,
        joined, pure, Pure.pure, HmrSourceWalkPlan.append]

end ECDSAAdd.Arithmetic.Paper935
