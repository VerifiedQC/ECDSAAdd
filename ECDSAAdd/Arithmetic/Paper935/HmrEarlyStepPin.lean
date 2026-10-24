import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFrontLocality
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyRun
import ECDSAAdd.Arithmetic.Paper935.FreezePin

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrEarlyStepPlan.Logged.run_pin (P : HmrEarlyStepPlan) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (frozen : Wire) (counter record : List Wire)
    (tmin t need : Nat) (log : HmrEarlyStepLog)
    (h : P.Logged A bank fgWidth vWidth exitWidth frozen counter record need log)
    (p : Int) (old : PinState) (early : t<tmin) (valid : old.RecordValid tmin t) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (encodes : bank.Encodes s.basis old.rows)
    (counterValue : signedRegValue counter s.basis=old.rows.z) (fodd : old.rows.f%2=1)
    (prefit : (RowWindow.mk fgWidth fgWidth vWidth vWidth).Fits old.rows)
    (exitfit : exitWidth.Fits (ECDSAAdd.Divsteps.zStep old.rows))
    (zfit : PayloadFits (counter.length-1) (ECDSAAdd.Divsteps.zStep old.rows).z)
    (timestamp : List Wire) (frozenValue : s.basis frozen=old.frozen)
    (recordValue : regValue timestamp s.basis=old.offset)
    (metadataOwned : (frozen::timestamp).toFinset⊆A.live)
    (metadataApart : List.Disjoint (frozen::timestamp) (bank.rows.flatMap WindowRow.wires++counter))
    (metadataMoves : ∀p∈P.moves,p.1∉frozen::timestamp)
    (metadataControl : List.Disjoint (frozen::timestamp) (P.front.sigma::P.front.branch::record))
    (fits : let before := P.front.program true frozen counter++repack P.moves
      let first := run before m s
      let tape := m.drop (measurementCount before)
      let u := run (hmrAndSweep P.control.zeroPlan.stages) tape first
      let v := run (P.control.classPlan.program (counter.getLastD 0) P.control.zeroPlan.top)
        (tape.drop (measurementCount (hmrAndSweep P.control.zeroPlan.stages))) u
      (v.basis P.control.classPlan.equality.top && !v.basis (P.bank.fv.payload[2]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[3]?.getD P.bank.fv.sign) && !v.basis (P.bank.fv.payload[4]?.getD P.bank.fv.sign))=true →
        2*regValue (record++P.control.log.recordFresh) v.basis+(v.basis P.front.branch).toNat<2^(record++P.control.log.recordFresh).length) :
    let out := run (P.program frozen (counter.getLastD 0) counter record) m s
    P.control.outputArena.Ready out.basis ∧
    P.bank.Encodes out.basis (pinStep tmin t old).rows ∧
    signedRegValue counter out.basis=(pinStep tmin t old).rows.z ∧
    out.basis frozen=(pinStep tmin t old).frozen ∧
    regValue timestamp out.basis=(pinStep tmin t old).offset ∧
    (pinStep tmin t old).RecordValid tmin (t+1) := by
  have unset : old.offset=0 := by have bound:=valid.2; omega
  have notFrozen : old.frozen=false := by
    cases hf : old.frozen
    · rfl
    · have positive:=valid.1.mp hf; omega
  have pin : pinStep tmin t old=⟨ECDSAAdd.Divsteps.zStep old.rows,false,0⟩ := by
    simp [pinStep,notFrozen,show ¬tmin≤t by omega]
  have math := h.run_math P A bank fgWidth vWidth exitWidth frozen counter record need log
    p old.rows inv odd s m ready encodes counterValue fodd prefit exitfit zfit fits
  let before := P.front.program true frozen counter++repack P.moves
  let first := run before m s
  let tape := m.drop (measurementCount before)
  have counterAway : ∀q∈P.moves,q.1∉counter := by
    intro q hq mem
    exact h.away q hq (by simp [mem])
  have controlsAway : ∀q∈P.moves,q.1∉P.front.branch::P.front.sigma::(if true then [] else [frozen]) := by
    intro q hq mem
    simp only [ite_true,List.mem_cons,List.not_mem_nil,or_false] at mem
    exact h.away q hq (by simp only [List.mem_cons]; tauto)
  have arith := h.front.run_repacked_counter P.front A bank fgWidth vWidth exitWidth true frozen counter P.movedArena P.moves h.repacked counterAway
    s m old.rows ready encodes counterValue fodd (by simp) prefit exitfit zfit
  have values := h.front.run_repacked_control_values P.front A bank fgWidth vWidth exitWidth true frozen counter P.movedArena P.moves h.repacked controlsAway
    s m old.rows ready encodes counterValue fodd (by simp) prefit exitfit
  have sigma : first.basis P.front.sigma=first.basis P.bank.fv.second :=
    hmrSigma_early_witness P.bank.fv h.nonempty p ⟨old.rows,false,0⟩ inv odd first.basis P.front.sigma rfl values.1 arith.2.2.1.2.2.1
  have frame := h.control.frame P.control P.movedArena counter record (counter.getLastD 0) P.front.sigma P.bank.fv.second
    (P.bank.fv.payload[2]?.getD P.bank.fv.sign) (P.bank.fv.payload[3]?.getD P.bank.fv.sign)
    (P.bank.fv.payload[4]?.getD P.bank.fv.sign) P.front.branch need first tape arith.2.1 sigma fits
  have keep (q : Wire) (hq : q∈frozen::timestamp) :
      (run (P.program frozen (counter.getLastD 0) counter record) m s).basis q=s.basis q := by
    have no := List.disjoint_left.mp metadataApart hq
    have front := h.front.run_repacked_locality P.front A bank fgWidth vWidth exitWidth true frozen counter s m old.rows
      ready encodes counterValue prefit q (metadataOwned (List.mem_toFinset.mpr hq))
      (fun mem => no (List.mem_append_left _ mem)) (fun mem => no (List.mem_append_right _ mem))
      P.movedArena P.moves h.repacked (fun p hp eq => metadataMoves p hp (eq ▸ hq))
    rw [HmrEarlyStepPlan.program,run_append,run_take]
    exact (frame q front.1 (List.disjoint_left.mp metadataControl hq)).trans front.2
  refine ⟨math.1,?_,?_,?_,?_,pinStep_record tmin t old valid⟩
  · simpa only [pin] using math.2.1
  · simpa only [pin] using math.2.2
  · rw [keep frozen (by simp),frozenValue,notFrozen,pin]
  · rw [regValue_congr timestamp _ s.basis (fun q hq => keep q (List.mem_cons_of_mem _ hq)),recordValue,unset,pin]

end ECDSAAdd.Arithmetic.Paper935
