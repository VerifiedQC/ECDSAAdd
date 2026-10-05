import ECDSAAdd.Arithmetic.BalancedSharedFieldSupportLayout
import ECDSAAdd.Arithmetic.BalancedSharedDivision
import ECDSAAdd.Arithmetic.BalancedInverseSharedMultiplication
set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
namespace ECDSAAdd.Arithmetic.BalancedSharedFieldSupport
attribute [local irreducible] wireBlock dblInPlace halfInPlace copyRegister
attribute [local irreducible] balancedTranscriptReplay balancedInverseTranscriptReplay

/-- Support of the proof-independent, actual entry/replay/exit emissions. -/
theorem replayPrograms (w : Nat → Wire) (b effG effS : Wire) (W : Finset Wire)
    (hW : (skywalkSharedWires w).toFinset⊆W) (hb : b∈W) (hg : effG∈W) (hs : effS∈W) :
    wires (balancedSharedReplayProgram w b effG effS)⊆W ∧
    wires (balancedInverseSharedReplayProgram w b effG effS)⊆W := by
  have hc := converters w W hW
  have hr := replay w b effG effS (mixedTranscriptTape w) W hW hb hg hs
    (DirectSupport.tapeSupport w W hW)
  simp only [balancedSharedReplayProgram,balancedInverseSharedReplayProgram,
    wires_append,Finset.union_subset_iff]
  exact ⟨⟨⟨⟨⟨hc.1.1,hc.1.2⟩,hr.1⟩,hc.2.1⟩,hc.2.2⟩,
    ⟨⟨⟨⟨hc.1.1,hc.1.2⟩,hr.2⟩,hc.2.1⟩,hc.2.2⟩⟩

/-- Both production balanced field segments, including every measured
phase-correction branch, fit the original shared bank and external controls. -/
theorem endpoints (w : Nat → Wire) (b effG effS : Wire) (W : Finset Wire)
    (hW : (skywalkSharedWires w).toFinset⊆W) (hb : b∈W) (hg : effG∈W) (hs : effS∈W) :
    wires (balancedSharedFieldDivision w b effG effS)⊆W ∧
    wires (balancedInverseSharedFieldMultiplication w b effG effS)⊆W := by
  have hu := unary w W hW
  have hc := copy w W hW
  have hr := replayPrograms w b effG effS W hW hb hg hs
  simp only [balancedSharedFieldDivision,balancedInverseSharedFieldMultiplication,
    wires_append,Finset.union_subset_iff]
  exact ⟨⟨⟨hu.1,hr.1⟩,hc⟩,⟨⟨hc,hr.2⟩,hu.2⟩⟩

theorem declaredEndpoints (w : Nat → Wire) (b effG effS : Wire) :
    wires (balancedSharedFieldDivision w b effG effS)⊆
      ([b,effG,effS]++skywalkSharedWires w).toFinset ∧
    wires (balancedInverseSharedFieldMultiplication w b effG effS)⊆
      ([b,effG,effS]++skywalkSharedWires w).toFinset := by
  apply endpoints
  · intro q hq
    simp only [List.mem_toFinset,List.mem_append]
    exact Or.inr (List.mem_toFinset.mp hq)
  · simp
  · simp
  · simp
end ECDSAAdd.Arithmetic.BalancedSharedFieldSupport
#print axioms ECDSAAdd.Arithmetic.BalancedSharedFieldSupport.replayPrograms
#print axioms ECDSAAdd.Arithmetic.BalancedSharedFieldSupport.endpoints
#print axioms ECDSAAdd.Arithmetic.BalancedSharedFieldSupport.declaredEndpoints
