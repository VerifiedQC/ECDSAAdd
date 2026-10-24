import Lean
import ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer
open Lean Elab Command
private partial def waitingDependencies (env : Environment) (targets : List Name) (directAdmissions : Bool)
    (todo : List Name) (seen : NameSet := {}) (found : List Name := []) : List Name :=
  match todo with
  | [] => found.reverse
  | n :: rest =>
    if seen.contains n then waitingDependencies env targets directAdmissions rest seen found
    else
      let seen := seen.insert n
      let direct := ((env.find? n).bind (fun ci => ci.value? true)).any
        (fun value => value.getUsedConstants.contains `sorryAx)
      let found := if (if directAdmissions then direct else targets.contains n)
        then n :: found else found
      let deps := match env.find? n with
        | none => []
        | some ci => ci.type.getUsedConstants.toList ++
            ((ci.value? true).map (fun v => v.getUsedConstants.toList)).getD []
      waitingDependencies env targets directAdmissions (deps ++ rest) seen found
elab "#waiting_dependencies " n:ident : command => do
  let env ← getEnv
  let name := n.getId
  unless (env.find? name).isSome do throwError "Missing audit entry {name}"
  let targets := [
    `ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_support,
    `ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_run]
  let deps := waitingDependencies env targets false [name]
  let admitted := waitingDependencies env targets true [name]
  liftIO <| IO.println ("WAITING_DEPS " ++ name.toString ++ " : " ++
    String.intercalate "," (deps.map Name.toString))
  liftIO <| IO.println ("ADMITTED_DEPS " ++ name.toString ++ " : " ++
    String.intercalate "," (admitted.map Name.toString))
elab "#waiting_prop " n:ident : command => do
  let env ← getEnv
  let some info := env.find? n.getId | throwError "Missing proof"
  let isProof ← liftTermElabM <| Meta.isProp info.type
  unless isProof do throwError "Waiting entry must have a Prop type: {n.getId}"
#waiting_prop ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_support
#waiting_prop ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_run
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRecords2
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRecords2
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkPre2
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkPre2
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkPhaseDebt2
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkPhaseDebt2
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRecords2_actualCursor
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRecords2_actualCursor
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRecords2_nonempty
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRecords2_nonempty
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_wellFormed
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_wellFormed
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_support
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_support
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_run
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2_run
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unpark2
#print axioms ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRule2
#waiting_dependencies ECDSAAdd.Arithmetic.Paper935.WaitingOnProducer.unparkRule2
