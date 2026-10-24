import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedStep
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlPin

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Logged.armed_pin (P : HmrSourceFront) (A C : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    {logs : HmrFrontResizeLogs} (front : P.Logged logs A bank fgWidth vWidth exitWidth false frozen counter)
    (moves : List (Wire × Wire)) (repacked : P.exitArena.checkRepack moves=some C)
    (movesAway : ∀p∈moves,p.1∉P.branch::P.sigma::frozen::counter)
    (Q : HmrArmedControlPlan) (sign b2 b3 b4 : Wire) (tmin t need : Nat)
    (control : Q.Logged C (P.exitBank.repacked moves).g.wires counter timestamp record frozen sign P.sigma
      (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch (t+1-tmin) need)
    (nonempty : (P.exitBank.repacked moves).fv.payload≠[])
    (owned : ∀q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter,q∈C.live)
    (apart : List.Disjoint ((P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter)
      (P.sigma::P.branch::frozen::(timestamp++record)))
    (p : Int) (old : PinState) (armed : tmin≤t) (valid : old.RecordValid tmin t) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (frozenValue : s.basis frozen=old.frozen) (frozenZero : old.frozen=true → old.rows.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z)
    (recordValue : regValue timestamp (run (P.program false frozen counter++repack moves) m s).basis=old.offset)
    (fits : let before := P.program false frozen counter++repack moves
      let arith := run before m s
      let tape := m.drop (measurementCount before)
      let first := run (Q.freezePlan.program frozen timestamp (t+1-tmin)) tape arith
      let t1 := tape.drop (measurementCount (Q.freezePlan.program frozen timestamp (t+1-tmin)))
      let u := run (hmrBlockedProgram Q.counterPlans) t1 first
      let v := run (Q.classPlan.program sign Q.counterKeeper)
        (t1.drop (measurementCount (hmrBlockedProgram Q.counterPlans))) u
      (v.basis Q.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis P.branch).toNat<2^record.length) :
    let out := run ((P.program false frozen counter++repack moves)++
      Q.program frozen sign P.sigma (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch timestamp record (t+1-tmin)) m s
    out.basis frozen=(pinStep tmin t old).frozen ∧
    regValue timestamp out.basis=(pinStep tmin t old).offset := by
  let before := P.program false frozen counter++repack moves
  let first := run before m s
  let tape := m.drop (measurementCount before)
  have counterAway : ∀q∈moves,q.1∉counter := by
    intro q hq mem
    exact movesAway q hq (by simp [mem])
  have controlsAway : ∀q∈moves,q.1∉P.branch::P.sigma::(if false then [] else [frozen]) := by
    intro q hq mem
    simp only [Bool.false_eq_true,ite_false,List.mem_cons] at mem
    exact movesAway q hq (by simp only [List.mem_cons]; tauto)
  have arith := front.run_repacked_counter P A bank fgWidth vWidth exitWidth false frozen counter C moves repacked counterAway
    s m old.rows ready encodes counterValue fodd (by simpa only [Bool.false_eq_true,ite_false,frozenValue] using frozenZero)
    prefit (by simpa only [Bool.false_eq_true,ite_false,frozenValue] using exitfit)
    (by simpa only [Bool.false_eq_true,ite_false,frozenValue] using zfit)
  have values := front.run_repacked_control_values P A bank fgWidth vWidth exitWidth false frozen counter C moves repacked controlsAway
    s m old.rows ready encodes counterValue fodd (by simpa only [Bool.false_eq_true,ite_false,frozenValue] using frozenZero)
    prefit (by simpa only [Bool.false_eq_true,ite_false,frozenValue] using exitfit)
  have fr : first.basis frozen=old.frozen := (values.2.2 rfl).trans frozenValue
  have fc := compileHmrFreezeLog_contract C Q.freezeArena (P.exitBank.repacked moves).g.wires frozen timestamp (t+1-tmin) Q.freezePlan control.freeze
  have fvFrame (q : Wire) (hq : q∈(P.exitBank.repacked moves).fv.wires) :
      (run (Q.freezePlan.program frozen timestamp (t+1-tmin)) tape first).basis q=first.basis q := by
    have mem : q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter := by
      apply List.mem_append_left
      apply List.mem_flatMap.mpr
      exact ⟨(P.exitBank.repacked moves).fv,by simp [WindowBank.rows],hq⟩
    have no := List.disjoint_left.mp apart mem
    exact fc.frame Q.freezePlan C Q.freezeArena _ frozen timestamp (t+1-tmin) first tape arith.2.1 q (owned q mem)
      (fun eq => no (by simp [eq])) (fun ht => no (by simp [ht]))
  have rowValue : (P.exitBank.repacked moves).fv.value
      (run (Q.freezePlan.program frozen timestamp (t+1-tmin)) tape first).basis=
      (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv := by
    unfold WindowRow.value signedRegValue
    rw [regValue_congr _ _ first.basis fvFrame]
    simpa only [Bool.false_eq_true,ite_false,frozenValue] using arith.2.2.1.2.2.1
  have sigma := control.sigma_witness Q C _ counter timestamp record frozen sign P.sigma b2 b3 b4 P.branch (t+1-tmin) need
    (P.exitBank.repacked moves).fv nonempty p old inv odd first tape arith.2.1 fr values.1 frozenZero rowValue
  have gValue : signedRegValue (P.exitBank.repacked moves).g.wires first.basis=
      (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).g := by
    simpa only [Bool.false_eq_true,ite_false,frozenValue] using arith.2.2.1.2.1
  have pin := control.pin_armed Q C _ counter timestamp record frozen sign P.sigma _ b2 b3 b4 P.branch tmin t need
    first tape arith.2.1 armed old valid gValue fr recordValue sigma fits
  dsimp only
  rw [run_append,run_take]
  exact pin

end ECDSAAdd.Arithmetic.Paper935
