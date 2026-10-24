import ECDSAAdd.Arithmetic.Paper935.HmrLoggedHybridCin
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrHybridPhysical
import ECDSAAdd.Arithmetic.Paper935.HmrHybridSupport
import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepPhysical

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrHybridRowLog_physical (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B) :
    GatePhysical (hmrHybridRow control a b carry work) ∧ GatePhysical (hmrHybridSub control a b carry work) :=
  hmrHybrid_physical control carry a b work (compileHmrHybridRowLog_geometry A B control carry a b work h).1

theorem compileHmrHybridRowLog_support (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRowLog A control carry a b work=some B) :
    wires (hmrHybridRow control a b carry work)⊆B.live ∧
    wires (hmrHybridSub control a b carry work)⊆B.live := by
  have hc := compileHmrHybridRowLog_contract A B control carry a b work h
  have live := A.checkBorrow_live B _ work hc.2.2.2.2
  have subset : (control::carry::(a++b++work)).toFinset⊆B.live := by
    intro q hq
    change q∈((control::carry::(a++b))++work).toFinset at hq
    rw [live]
    rcases List.mem_append.mp (List.mem_toFinset.mp hq) with old|fresh
    · exact Finset.mem_union_left _ (hc.2.2.2.1 q old)
    · exact Finset.mem_union_right _ (List.mem_toFinset.mpr fresh)
  have support := hmrHybrid_support control carry a b work
  exact ⟨support.1.trans subset,support.2.trans subset⟩

theorem compileHmrCounterStepLog_physical (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStepLog A early frozen qs work=some B) :
    GatePhysical (hmrCounterStep early dec frozen qs work) := by
  have hc := compileHmrCounterStepLog_contract A B early frozen qs work h
  have borrow := A.checkBorrow_contract B (if early then 4 else 5) work hc.2.2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  apply hmrCounterStep_physical
  change ((frozen::qs)++work).Nodup
  apply List.nodup_append'.mpr
  refine ⟨hc.2.1,borrow.2.1,?_⟩
  exact List.disjoint_left.mpr (fun q hq hw => Finset.disjoint_left.mp valid.2
    (hc.2.2.1 q hq) (List.mem_toFinset.mpr hw))

theorem compileHmrHybridCinLog_physical (A B : Arena) (control cin carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridCinLog A control cin carry a b work=some B) :
    GatePhysical (hmrHybridRowCin control cin carry a b work) := by
  have contract := compileHmrHybridCinLog_contract A B control cin carry a b work h
  have distinct : cin≠carry := fun eq => (List.nodup_cons.mp contract.1).1 (by simp [eq])
  have wrapper : GatePhysical [.CX cin carry] := by simp [GatePhysical,RecordedQuantum.PhysicalInstr,ProperGate,distinct]
  rw [hmrHybridRowCin,gatePhysical_append,gatePhysical_append]
  exact ⟨⟨wrapper,(compileHmrHybridRowLog_physical A B control carry a b work contract.2.2).1⟩,wrapper⟩

end ECDSAAdd.Arithmetic.Paper935
