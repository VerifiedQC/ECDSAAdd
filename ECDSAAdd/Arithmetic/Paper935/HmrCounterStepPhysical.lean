import ECDSAAdd.Arithmetic.Paper935.HmrCounterStepValue
import ECDSAAdd.Arithmetic.Paper935.HmrKeeperPhysical

namespace ECDSAAdd.Arithmetic.Paper935
open RecordedQuantum

theorem hmrCarryIncrement_physical (control : Wire) (qs work : List Wire)
    (nd : (control::(qs++work)).Nodup) : GatePhysical (hmrCarryIncrement control qs work) := by
  induction qs generalizing control work with
  | nil => simp [hmrCarryIncrement,GatePhysical]
  | cons q qs ih =>
    have hn := List.nodup_cons.mp nd
    have hq := List.nodup_cons.mp hn.2
    have cq : control≠q := fun eq => hn.1 (by simp [eq])
    cases qs with
    | nil => simp [hmrCarryIncrement,GatePhysical,PhysicalInstr,ProperGate,cq]
    | cons r rest =>
      cases work with
      | nil => simp [hmrCarryIncrement,GatePhysical]
      | cons w ws =>
        have pair := List.nodup_append'.mp hq.2
        have wn := List.nodup_cons.mp pair.2.1
        have cw : control≠w := fun eq => hn.1 (by simp [eq])
        have qw : q≠w := fun eq => hq.1 (by simp [eq])
        have wo : w∉r::rest := fun h => List.disjoint_left.mp pair.2.2 h (by simp)
        have recursiveND : (w::((r::rest)++ws)).Nodup := by
          apply List.nodup_cons.mpr
          constructor
          · simp only [List.mem_append,not_or]; exact ⟨wo,wn.1⟩
          · apply List.nodup_append'.mpr
            exact ⟨pair.1,wn.2,List.disjoint_left.mpr (fun x hx hw => List.disjoint_left.mp pair.2.2 hx (List.mem_cons_of_mem w hw))⟩
        have gates := hmrPolar_physical control q w true true (by simp [cq,cw,qw])
        have recurse := ih w ws recursiveND
        simp only [hmrCarryIncrement,gatePhysical_append]
        exact ⟨⟨⟨gates.1,recurse⟩,gates.2⟩,by simp [GatePhysical,PhysicalInstr,ProperGate,cq]⟩

theorem hmrCounterStep_physical (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (nd : (frozen::(qs++work)).Nodup) : GatePhysical (hmrCounterStep early dec frozen qs work) := by
  have controlled := hmrCarryIncrement_physical frozen qs work nd
  have complements := notRegister_physical qs
  have xgate : GatePhysical [.X frozen] := by simp [GatePhysical,PhysicalInstr,ProperGate]
  cases early
  · cases dec <;> simp only [hmrCounterStep,Bool.false_eq_true,ite_false,ite_true,
      hmrArmedIncrement,hmrArmedDecrement,hmrCarryDecrement,gatePhysical_append]
    · exact ⟨⟨xgate,controlled⟩,xgate⟩
    · exact ⟨⟨xgate,⟨⟨complements,controlled⟩,complements⟩⟩,xgate⟩
  · cases qs with
    | nil => cases dec <;> simp [hmrCounterStep,hmrEarlyIncrement,hmrEarlyDecrement,notRegister,GatePhysical]
    | cons q rest =>
      have tail := hmrCarryIncrement_physical q rest work (List.nodup_cons.mp nd).2
      have last : GatePhysical [.X q] := by simp [GatePhysical,PhysicalInstr,ProperGate]
      cases dec <;> simp only [hmrCounterStep,Bool.false_eq_true,ite_false,ite_true,
        hmrEarlyIncrement,hmrEarlyDecrement,gatePhysical_append]
      · exact ⟨tail,last⟩
      · exact ⟨⟨complements,⟨tail,last⟩⟩,complements⟩

theorem compileHmrCounterStep_physical (A B : Arena) (early dec : Bool) (frozen : Wire) (qs work : List Wire)
    (h : compileHmrCounterStep A early frozen qs=some (B,work)) :
    GatePhysical (hmrCounterStep early dec frozen qs work) := by
  have hc := compileHmrCounterStep_contract A B early frozen qs work h
  have borrow := A.borrowMany_contract B (if early then 4 else 5) work hc.2.2.2
  have valid := (A.reserve_success work.toFinset).mp ⟨B,borrow.2.2⟩
  apply hmrCounterStep_physical
  change ((frozen::qs)++work).Nodup
  apply List.nodup_append'.mpr
  refine ⟨hc.2.1,borrow.2.1,?_⟩
  exact List.disjoint_left.mpr (fun q hq hw => Finset.disjoint_left.mp valid.2
    (hc.2.2.1 q hq) (List.mem_toFinset.mpr hw))

end ECDSAAdd.Arithmetic.Paper935
