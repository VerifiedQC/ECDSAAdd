import ECDSAAdd.Arithmetic.Paper935.HmrHybridRoundtrip
import ECDSAAdd.Arithmetic.Paper935.HmrKeeperPhysical

namespace ECDSAAdd.Arithmetic.Paper935
open RecordedQuantum

theorem hmrHybridCells_physical (control a b carry next : Wire)
    (nd : [control,carry,a,b,next].Nodup) :
    GatePhysical (hmrHybridLift a b carry next) ∧
    GatePhysical (hmrHybridDrop control a b carry next) ∧
    GatePhysical (hmrHybridUnwrite control a b carry next) ∧
    GatePhysical (hmrHybridUnlift a b carry next) := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  simp_all [hmrHybridLift,hmrHybridDrop,hmrHybridUnwrite,hmrHybridUnlift,
    hmrPolarAnd,hmrPolarRelease,hmrPolarDress,GatePhysical,PhysicalInstr,ProperGate,Ne.symm]

theorem hmrHybrid_physical (control carry : Wire) (a b work : List Wire)
    (nd : (control::carry::(a++b++work)).Nodup) :
    GatePhysical (hmrHybridRow control a b carry work) ∧ GatePhysical (hmrHybridSub control a b carry work) := by
  induction work generalizing carry a b with
  | nil =>
    have plain : (control::carry::(a++b)).Nodup := by simpa using nd
    have proper := rowAdd_proper control carry a b plain
    have forward := (physical_embed (rowAdd control a b carry)).mp (physical_of_proper _ proper)
    have backward := (physical_embed (rowSub control a b carry)).mp
      (physical_of_proper _ (properProgram_reverse _ proper))
    simpa only [hmrHybridRow,hmrHybridSub] using And.intro forward backward
  | cons next work ih =>
    cases a with
    | nil => simp [hmrHybridRow,hmrHybridSub,GatePhysical]
    | cons x xs =>
      cases b with
      | nil => simp [hmrHybridRow,hmrHybridSub,GatePhysical]
      | cons y ys =>
        have cnt := List.nodup_iff_count.mp nd
        have localND : [control,carry,x,y,next].Nodup := by
          apply List.nodup_iff_count.mpr
          intro q
          have h := cnt q
          simp only [List.count_cons,List.count_append,List.count_nil] at h ⊢
          omega
        have tailND : (control::next::(xs++ys++work)).Nodup := by
          apply List.nodup_iff_count.mpr
          intro q
          have h := cnt q
          simp only [List.count_cons,List.count_append] at h ⊢
          omega
        have tail := ih next xs ys tailND
        have cells := hmrHybridCells_physical control x y carry next localND
        simp only [hmrHybridRow,hmrHybridSub,gatePhysical_append]
        exact ⟨⟨⟨cells.1,tail.1⟩,cells.2.1⟩,⟨cells.2.2.1,tail.2⟩,cells.2.2.2⟩

theorem compileHmrHybridRow_physical (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    GatePhysical (hmrHybridRow control a b carry work) ∧ GatePhysical (hmrHybridSub control a b carry work) :=
  hmrHybrid_physical control carry a b work (compileHmrHybridRow_geometry A B control carry a b work h).1

end ECDSAAdd.Arithmetic.Paper935
