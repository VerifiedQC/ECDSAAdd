import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontHeadroom
import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepValue

namespace ECDSAAdd.Arithmetic.Paper935

def HmrSourceFront.addCounter (P : HmrSourceFront) (early : Bool) (frozen : Wire) (counter : List Wire) : Program :=
  P.arithmetic.program P.sigma P.branch P.headBank.f.wires P.headBank.g.wires P.headBank.fv.wires P.headBank.gv.wires ++
  hmrCounterStep early false (hmrFrontCounterControl early P.sigma frozen) counter P.counterWork

theorem HmrSourceFront.Compiled.addCounter_state (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool) (ready : P.headArena.Ready s.basis) :
    let out := run (P.addCounter early frozen counter) m s
    out.phase=s.phase ∧ P.headArena.Ready out.basis ∧
    regValue counter out.basis=(regValue counter s.basis+(if early then true else !s.basis frozen).toNat)%2^counter.length ∧
    regValue P.headBank.g.wires out.basis=branchWord P.headBank.g.wires.length
      (s.basis P.sigma) (s.basis P.branch) (regValue P.headBank.f.wires s.basis) (regValue P.headBank.g.wires s.basis) ∧
    regValue P.headBank.gv.wires out.basis=branchWord P.headBank.gv.wires.length
      (s.basis P.sigma) (s.basis P.branch) (regValue P.headBank.fv.wires s.basis) (regValue P.headBank.gv.wires s.basis) := by
  let body := P.arithmetic.program P.sigma P.branch P.headBank.f.wires P.headBank.g.wires P.headBank.fv.wires P.headBank.gv.wires
  let mid := run body m s
  let tape := m.drop (measurementCount body)
  have compiled := compileHmrHybridF4_contract _ _ _ _ _ _ _ _ h.arithmetic
  have arithmetic := compiled.run_state P.arithmetic _ _ _ _ _ _ _ s m ready
  have counterState := compileHmrCounterStep_return _ _ early false _ _ _ h.counter mid tape arithmetic.2.1
  have counterValue := compileHmrCounterStep_value _ _ early false _ _ _ h.counter mid tape arithmetic.2.1
  have geometry := (h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter).1
  have separated : (P.branch::P.sigma::hmrFrontInputs early frozen counter).Disjoint
      (P.headBank.rows.flatMap WindowRow.wires) := (List.nodup_append'.mp geometry).2.2
  have targetRows (q : Wire) (hq : q∈P.headBank.g.wires++P.headBank.gv.wires) :
      q∈P.headBank.rows.flatMap WindowRow.wires := by
    simp only [WindowBank.rows,List.flatMap_cons,List.flatMap_nil,List.mem_append,List.not_mem_nil,or_false]
    simp only [List.mem_append] at hq
    tauto
  have counterMeta (q : Wire) (hq : q∈counter) : q∈P.branch::P.sigma::hmrFrontInputs early frozen counter := by
    simp [hmrFrontInputs,hq]
  have before : regValue counter mid.basis=regValue counter s.basis := regValue_congr _ _ _ (by
    intro q hq
    exact arithmetic.2.2.2.2.1 q (fun ht => List.disjoint_left.mp separated (counterMeta q hq) (targetRows q ht)))
  have controlMeta : hmrFrontCounterControl early P.sigma frozen∈P.branch::P.sigma::hmrFrontInputs early frozen counter := by
    cases early <;> simp [hmrFrontCounterControl,hmrFrontInputs]
  have control : mid.basis (hmrFrontCounterControl early P.sigma frozen)=s.basis (hmrFrontCounterControl early P.sigma frozen) :=
    arithmetic.2.2.2.2.1 _ (fun ht => List.disjoint_left.mp separated controlMeta (targetRows _ ht))
  have enabled : (if early then true else !mid.basis (hmrFrontCounterControl early P.sigma frozen))=
      (if early then true else !s.basis frozen) := by
    rw [control]; cases early <;> rfl
  have rowsAfter (qs : List Wire) (subset : ∀q∈qs,q∈P.headBank.g.wires++P.headBank.gv.wires) :
      regValue qs (run (hmrCounterStep early false (hmrFrontCounterControl early P.sigma frozen) counter P.counterWork) tape mid).basis=
        regValue qs mid.basis := regValue_congr _ _ _ (by
    intro q hq
    exact counterState.2.2.2 q (fun hc => List.disjoint_left.mp separated (counterMeta q hc) (targetRows q (subset q hq))))
  dsimp only
  rw [HmrSourceFront.addCounter,run_append,run_take]
  refine ⟨counterState.1.trans arithmetic.1,counterState.2.1,?_,?_,?_⟩
  · simpa only [Bool.false_eq_true,if_false,before,enabled] using counterValue
  · rw [rowsAfter P.headBank.g.wires (fun q hq => List.mem_append_left _ hq)]
    exact arithmetic.2.2.2.2.2.1
  · rw [rowsAfter P.headBank.gv.wires (fun q hq => List.mem_append_right _ hq)]
    exact arithmetic.2.2.2.2.2.2

end ECDSAAdd.Arithmetic.Paper935
