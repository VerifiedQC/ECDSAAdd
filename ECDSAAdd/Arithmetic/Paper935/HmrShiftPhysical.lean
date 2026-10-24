import ECDSAAdd.Arithmetic.Paper935.HmrShiftInverse
import ECDSAAdd.Arithmetic.MeasuredArithmeticPhysical

namespace ECDSAAdd.Arithmetic.Paper935
open RecordedQuantum

theorem hmrShift_physical (alive sign : Wire) (payload : List Wire)
    (nd : (alive::sign::payload).Nodup) :
    GatePhysical (hmrShiftDown sign payload) ∧ GatePhysical (hmrShiftUpFree sign payload) ∧
    GatePhysical (hmrShiftUp alive sign payload) ∧ GatePhysical (hmrShiftUpInv alive sign payload) ∧
    GatePhysical (hmrShiftUpArmed alive sign payload) ∧ GatePhysical (hmrShiftUpArmedInv alive sign payload) := by
  have free := hmrShift_free_proper sign payload (List.nodup_cons.mp nd).2
  have core := hmrShiftUp_proper alive sign payload nd
  have inverse : ProperProgram (hmrShiftUpInv alive sign payload) := by
    rw [←hmrShiftUp_reverse]; exact properProgram_reverse _ core
  have xgate : GatePhysical [.X alive] := by simp [GatePhysical,PhysicalInstr,ProperGate]
  have convert (p : Program) (h : ProperProgram p) : GatePhysical p :=
    (physical_embed p).mp (physical_of_proper p h)
  refine ⟨convert _ free.1,convert _ free.2,convert _ core,convert _ inverse,?_,?_⟩
  · simp only [hmrShiftUpArmed,gatePhysical_append]
    exact ⟨⟨xgate,convert _ core⟩,xgate⟩
  · simp only [hmrShiftUpArmedInv,gatePhysical_append]
    exact ⟨⟨xgate,convert _ inverse⟩,xgate⟩

end ECDSAAdd.Arithmetic.Paper935
