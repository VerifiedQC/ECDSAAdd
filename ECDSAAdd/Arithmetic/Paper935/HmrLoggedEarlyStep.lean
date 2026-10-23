import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontControlRepack
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlFrame
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlMath
import ECDSAAdd.Arithmetic.Paper935.BankFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- Actual early arithmetic, relocation, history/control and retirement.
The independent row invariant supplies the sigma cleanup witness. -/
theorem HmrSourceFront.Logged.early_step (P : HmrSourceFront) (A C : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter record : List Wire)
    {logs : HmrFrontResizeLogs} (front : P.Logged logs A bank fgWidth vWidth exitWidth true frozen counter)
    (moves : List (Wire × Wire)) (repacked : P.exitArena.checkRepack moves=some C)
    (movesAway : ∀p∈moves,p.1∉P.branch::P.sigma::counter)
    (Q : HmrEarlyControlPlan) (sign b2 b3 b4 : Wire) (need : Nat)
    (control : Q.Logged C counter record sign P.sigma (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch need)
    (nonempty : (P.exitBank.repacked moves).fv.payload≠[])
    (owned : ∀q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter,q∈C.live)
    (apart : List.Disjoint ((P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter) (P.sigma::P.branch::record))
    (p : Int) (z : ECDSAAdd.Divsteps.ZState) (inv : ECDSAAdd.Divsteps.Inv p z) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis z)
    (counterValue : signedRegValue counter s.basis=z.z) (fodd : z.f%2=1)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits z)
    (exitfit : exitWidth.Fits (ECDSAAdd.Divsteps.zStep z))
    (zfit : PayloadFits (counter.length-1) (ECDSAAdd.Divsteps.zStep z).z)
    (fits : let before := P.program true frozen counter++repack moves
      let first := run before m s
      let tape := m.drop (measurementCount before)
      let u := run (hmrAndSweep Q.zeroPlan.stages) tape first
      let v := run (Q.classPlan.program sign Q.zeroPlan.top)
        (tape.drop (measurementCount (hmrAndSweep Q.zeroPlan.stages))) u
      (v.basis Q.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue (record++Q.log.recordFresh) v.basis+(v.basis P.branch).toNat<2^(record++Q.log.recordFresh).length) :
    let program := (P.program true frozen counter++repack moves)++
      Q.program sign P.sigma (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch record
    let out := run program m s
    Q.outputArena.Ready out.basis ∧ (P.exitBank.repacked moves).Encodes out.basis (ECDSAAdd.Divsteps.zStep z) ∧
      signedRegValue counter out.basis=(ECDSAAdd.Divsteps.zStep z).z := by
  let before := P.program true frozen counter++repack moves
  let first := run before m s
  let tape := m.drop (measurementCount before)
  have counterAway : ∀q∈moves,q.1∉counter := by
    intro q hq mem
    exact movesAway q hq (by simp [mem])
  have controlsAway : ∀q∈moves,q.1∉P.branch::P.sigma::(if true then [] else [frozen]) := by
    intro q hq mem
    simp only [ite_true,List.mem_cons,List.not_mem_nil,or_false] at mem
    exact movesAway q hq (by simp only [List.mem_cons]; tauto)
  have arith := front.run_repacked_counter P A bank fgWidth vWidth exitWidth true frozen counter C moves repacked counterAway
    s m z ready encodes counterValue fodd (by simp) prefit exitfit zfit
  have values := front.run_repacked_control_values P A bank fgWidth vWidth exitWidth true frozen counter C moves repacked controlsAway
    s m z ready encodes counterValue fodd (by simp) prefit exitfit
  have sigma : first.basis P.sigma=first.basis (P.exitBank.repacked moves).fv.second := by
    exact hmrSigma_early_witness (P.exitBank.repacked moves).fv nonempty p ⟨z,false,0⟩ inv odd first.basis P.sigma rfl values.1 arith.2.2.1.2.2.1
  have result := control.run_spec Q C counter record sign P.sigma (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch need
    first tape arith.2.1 sigma fits
  have frame := control.frame Q C counter record sign P.sigma (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch need
    first tape arith.2.1 sigma fits
  have keep (q : Wire) (hq : q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter) :=
    frame q (owned q hq) (List.disjoint_left.mp apart hq)
  dsimp only
  rw [run_append,run_take]
  refine ⟨result.2,?_,?_⟩
  · exact WindowBank.Encodes.frame (P.exitBank.repacked moves) _ _ _ arith.2.2.1
      (fun q hq => keep q (List.mem_append_left _ hq))
  · unfold signedRegValue
    rw [regValue_congr counter _ first.basis (fun q hq => keep q (List.mem_append_right _ hq))]
    exact arith.2.2.2

end ECDSAAdd.Arithmetic.Paper935
