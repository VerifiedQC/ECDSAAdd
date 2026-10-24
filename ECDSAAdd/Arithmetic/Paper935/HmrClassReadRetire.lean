import ECDSAAdd.Arithmetic.Paper935.HmrClassState
import ECDSAAdd.Arithmetic.Paper935.HmrReadReleasedFrame

namespace ECDSAAdd.Arithmetic.Paper935

/-- The concrete R4--R12 recovery basis supplies the value-preservation
premise for delayed class cleanup; history and recovered branch may change. -/
theorem compileHmrClass_read_retire (A B C : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (hclass : compileHmrClass A mode inputs=some (B,work))
    (P : HmrReadPlan) (L : HmrReadLayout) (compiled : P.Compiled B L)
    (recordOwned : L.record.toFinset⊆B.live) (apart : List.Disjoint (inputs++work) L.record)
    (s : State) (classTape readTape releaseTape : List Bool) (ready : A.Ready s.basis)
    (phase branch : Bool) (contains : B.live⊆C.live)
    (finalReady : C.Ready (hmrClearFlags P.flag (writeBit
      (run (P.readHistory L) readTape
        (run (hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) classTape s)).basis
      P.output branch))) :
    let beforeRead := run (hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) classTape s
    let current : State := ⟨phase,hmrClearFlags P.flag (writeBit (run (P.readHistory L) readTape beforeRead).basis P.output branch)⟩
    let out := run (hmrAndUnsweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) releaseTape current
    out.phase=phase ∧ out.basis=hmrAndPatch (inputs++work).toFinset s.basis current.basis ∧
    ∃ D,C.release work.toFinset out.basis=some D ∧ D.Ready out.basis ∧ D.live=C.live\work.toFinset := by
  let beforeRead := run (hmrAndSweep (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work))) classTape s
  let current : State := ⟨phase,hmrClearFlags P.flag (writeBit (run (P.readHistory L) readTape beforeRead).basis P.output branch)⟩
  have cs := compileHmrClass_state A B mode inputs work hclass s classTape ready
  have hc := compileHmrClass_contract A B mode inputs work hclass
  have owned : (inputs++work).toFinset⊆B.live := by
    intro q hq
    rw [(A.borrowMany_live B _ work hc.2.2.2).1]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with hi|hw
    · exact Finset.mem_union_left _ (hc.2.2.1 (List.mem_toFinset.mpr hi))
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr hw)
  have preserved (q : Wire) (hq : q∈(inputs++work).toFinset) :
      current.basis q=hmrAndAdvance (hmrClassChain mode (hmrAllocatedClassPorts mode inputs work)) s.basis q := by
    have frame := compiled.released_frame P B L recordOwned beforeRead readTape cs.2.1 branch q (owned hq)
      (fun hr => List.disjoint_left.mp apart (List.mem_toFinset.mp hq) hr)
    change current.basis q=beforeRead.basis q at frame
    rw [frame]
    exact congrArg (fun t : State => t.basis q) (compileHmrClass_run A B mode inputs work hclass s classTape ready)
  exact compileHmrClass_delayed A B C mode inputs work hclass contains s.basis ready current releaseTape finalReady preserved

end ECDSAAdd.Arithmetic.Paper935
