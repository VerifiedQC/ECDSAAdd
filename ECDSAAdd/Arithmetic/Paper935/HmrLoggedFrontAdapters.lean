import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedPorts
import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepValue

namespace ECDSAAdd.Arithmetic.Paper935

theorem loggedBank_resources (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    ProperProgram p ∧ toffoliCount p=0 ∧ measurementCount p=0 ∧ wires p⊆arenaWires :=
  compileHmrBankResizeLog_resources order A C b out w logs p h

theorem loggedBank_phase (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (s : State) (m : List Bool) : (run p m s).phase=s.phase :=
  compileHmrBankResizeLog_phase order A C b out w logs p h s m

theorem loggedBank_correct (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (s : State) (m : List Bool) (z : ECDSAAdd.Divsteps.ZState)
    (ready : A.Ready s.basis) (encodes : b.Encodes s.basis z) (fits : w.Fits z) :
    rowsOwned C (order.rows out) ∧ C.Ready (run p m s).basis ∧
    out.Encodes (run p m s).basis z ∧ out.Widths w :=
  compileHmrBankResizeLog_correct order A C b out w logs p h s m z ready encodes fits

theorem loggedBank_static_owned (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    rowsOwned C out.rows :=
  compileHmrBankResizeLog_static_owned order A C b out w logs p h

theorem loggedBank_locality (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (q : Wire) (owned : q∈A.live) (away : q∉b.rows.flatMap WindowRow.wires) (s : State) (m : List Bool) :
    q∈C.live ∧ q∉out.rows.flatMap WindowRow.wires ∧ (run p m s).basis q=s.basis q :=
  compileHmrBankResizeLog_locality order A C b out w logs p h q owned away s m

theorem loggedBank_fixed (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p))
    (fixed : List Wire) (nd : (fixed++b.rows.flatMap WindowRow.wires).Nodup)
    (owned : (fixed++b.rows.flatMap WindowRow.wires).toFinset⊆A.live) :
    (fixed++out.rows.flatMap WindowRow.wires).Nodup ∧
    (fixed++out.rows.flatMap WindowRow.wires).toFinset⊆C.live ∧
    ∀s m q,q∈fixed → (run p m s).basis q=s.basis q :=
  compileHmrBankResizeLog_fixed order A C b out w logs p h fixed nd owned

theorem loggedBank_widths (order : HmrBankOrder) (A C : Arena) (b out : WindowBank)
    (w : RowWindow) {logs : List (List Wire)} (p : Program) (h : compileHmrBankResizeLog order A b w logs=some (C,out,p)) :
    out.Widths w :=
  compileHmrBankResizeLog_widths order A C b out w logs p h

theorem compileHmrCounterStepLog_value (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStepLog A early frozen qs work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    let c := (if early then true else !s.basis frozen).toNat
    regValue qs (run (hmrCounterStep early dec frozen qs work) m s).basis=
      if dec then (regValue qs s.basis+2^qs.length-c)%2^qs.length
      else (regValue qs s.basis+c)%2^qs.length := by
  have nd := (List.nodup_cons.mp (compileHmrCounterStepLog_contract A B early frozen qs work h).2.1).2
  rw [compileHmrCounterStepLog_run A B early dec frozen qs work h s m ready]
  cases dec
  · exact hmrCarryBasis_value qs nd _ _
  · exact hmrDecrementBasis_value qs nd _ _

theorem Arena.checkBorrow_live_full (A B : Arena) (n : Nat) (work : List Wire)
    (h : A.checkBorrow n work=some B) :
    B.live=A.live∪work.toFinset ∧ B.live.card=A.live.card+n :=
  ⟨A.checkBorrow_live B n work h,A.checkBorrow_card B n work h⟩

theorem hmrLoggedOne_extend (A B : Arena) (work inputs : List Wire)
    (borrow : A.checkBorrow 1 work=some B) (nd : inputs.Nodup) (owned : inputs.toFinset⊆A.live) :
    (hmrBorrowPorts work (0 : Fin 1)::inputs).Nodup ∧
    (hmrBorrowPorts work (0 : Fin 1)::inputs).toFinset⊆B.live := by
  have ports := hmrLoggedPorts_contract A B 1 work borrow
  refine ⟨List.nodup_cons.mpr ⟨?_,nd⟩,?_⟩
  · intro mem
    exact ports.2.2 (0 : Fin 1) (owned (List.mem_toFinset.mpr mem))
  · intro q hq
    rcases List.mem_cons.mp (List.mem_toFinset.mp hq) with rfl | hq
    · exact ports.2.1 (0 : Fin 1)
    · rw [A.checkBorrow_live B 1 work borrow]
      exact Finset.mem_union_left _ (owned (List.mem_toFinset.mpr hq))

theorem loggedF4_contract (A : Arena) (swap control : Wire) (a b x y : List Wire)
    (P : HmrHybridF4Plan) (h : P.Logged A swap control a b x y) : P.Logged A swap control a b x y := h

end ECDSAAdd.Arithmetic.Paper935
