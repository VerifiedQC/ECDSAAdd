import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontControlRepack
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlFrame
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlMath
import ECDSAAdd.Arithmetic.Paper935.BankFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- Full armed arithmetic/control composition. Timestamp range and history
capacity remain conditions on the actual intermediate input. -/
theorem HmrSourceFront.Logged.armed_step (P : HmrSourceFront) (A C : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter timestamp record : List Wire)
    {logs : HmrFrontResizeLogs} (front : P.Logged logs A bank fgWidth vWidth exitWidth false frozen counter)
    (moves : List (Wire × Wire)) (repacked : P.exitArena.checkRepack moves=some C)
    (movesAway : ∀p∈moves,p.1∉P.branch::P.sigma::frozen::counter)
    (Q : HmrArmedControlPlan) (sign b2 b3 b4 : Wire) (offset need : Nat)
    (control : Q.Logged C (P.exitBank.repacked moves).g.wires counter timestamp record frozen sign P.sigma
      (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch offset need)
    (nonempty : (P.exitBank.repacked moves).fv.payload≠[])
    (owned : ∀q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter,q∈C.live)
    (apart : List.Disjoint ((P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter)
      (P.sigma::P.branch::frozen::(timestamp++record)))
    (p : Int) (old : PinState) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (frozenValue : s.basis frozen=old.frozen) (frozenZero : old.frozen=true → old.rows.g=0)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z)
    (past : regValue timestamp (run (P.program false frozen counter++repack moves) m s).basis<offset)
    (unfrozen : old.frozen=false → regValue timestamp (run (P.program false frozen counter++repack moves) m s).basis=0)
    (fits : let before := P.program false frozen counter++repack moves
      let arith := run before m s
      let tape := m.drop (measurementCount before)
      let first := run (Q.freezePlan.program frozen timestamp offset) tape arith
      let t1 := tape.drop (measurementCount (Q.freezePlan.program frozen timestamp offset))
      let u := run (hmrBlockedProgram Q.counterPlans) t1 first
      let v := run (Q.classPlan.program sign Q.counterKeeper)
        (t1.drop (measurementCount (hmrBlockedProgram Q.counterPlans))) u
      (v.basis Q.classPlan.equality.top && !v.basis b2 && !v.basis b3 && !v.basis b4)=true →
        2*regValue record v.basis+(v.basis P.branch).toNat<2^record.length) :
    let out := run ((P.program false frozen counter++repack moves)++
      Q.program frozen sign P.sigma (P.exitBank.repacked moves).fv.second b2 b3 b4 P.branch timestamp record offset) m s
    Q.outputArena.Ready out.basis ∧
    (P.exitBank.repacked moves).Encodes out.basis (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows) ∧
    signedRegValue counter out.basis=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).z := by
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
  have fc := compileHmrFreezeLog_contract C Q.freezeArena (P.exitBank.repacked moves).g.wires frozen timestamp offset Q.freezePlan control.freeze
  have fvFrame (q : Wire) (hq : q∈(P.exitBank.repacked moves).fv.wires) :
      (run (Q.freezePlan.program frozen timestamp offset) tape first).basis q=first.basis q := by
    have mem : q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter := by
      apply List.mem_append_left
      apply List.mem_flatMap.mpr
      exact ⟨(P.exitBank.repacked moves).fv,by simp [WindowBank.rows],hq⟩
    have no := List.disjoint_left.mp apart mem
    exact fc.frame Q.freezePlan C Q.freezeArena _ frozen timestamp offset first tape arith.2.1 q (owned q mem)
      (fun eq => no (by simp [eq])) (fun ht => no (by simp [ht]))
  have rowValue : (P.exitBank.repacked moves).fv.value
      (run (Q.freezePlan.program frozen timestamp offset) tape first).basis=
      (if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv := by
    unfold WindowRow.value signedRegValue
    rw [regValue_congr _ _ first.basis fvFrame]
    simpa only [Bool.false_eq_true,ite_false,frozenValue] using arith.2.2.1.2.2.1
  have sigma := control.sigma_witness Q C _ counter timestamp record frozen sign P.sigma b2 b3 b4 P.branch offset need
    (P.exitBank.repacked moves).fv nonempty p old inv odd first tape arith.2.1 fr values.1 frozenZero rowValue
  have uf : first.basis frozen=false → regValue timestamp first.basis=0 := by rw [fr]; exact unfrozen
  have result := control.run_spec Q C _ counter timestamp record frozen sign P.sigma _ b2 b3 b4 P.branch offset need
    first tape arith.2.1 past uf sigma fits
  have frame := control.frame Q C _ counter timestamp record frozen sign P.sigma _ b2 b3 b4 P.branch offset need
    first tape arith.2.1 past uf sigma fits
  have keep (q : Wire) (hq : q∈(P.exitBank.repacked moves).rows.flatMap WindowRow.wires++counter) :=
    frame q (owned q hq) (List.disjoint_left.mp apart hq)
  dsimp only
  rw [run_append,run_take]
  refine ⟨result.2,?_,?_⟩
  · apply WindowBank.Encodes.frame (P.exitBank.repacked moves) first.basis _ _
      (by simpa only [Bool.false_eq_true,ite_false,frozenValue] using arith.2.2.1)
    exact fun q hq => keep q (List.mem_append_left _ hq)
  · unfold signedRegValue
    rw [regValue_congr counter _ first.basis (fun q hq => keep q (List.mem_append_right _ hq))]
    simpa only [Bool.false_eq_true,ite_false,frozenValue] using arith.2.2.2

end ECDSAAdd.Arithmetic.Paper935
