import ECDSAAdd.Framework.Cost

namespace ECDSAAdd

/-- 计算 AND，然后测量辅助位并按结果立即做 CZ 修正。 -/
def andComputeErase (a b anc : Wire) : Program :=
  [.gate (.CCX a b anc), .measureX anc [] [.CZ a b]]

/-- a、b、anc 互异时，这个三线路 AND 程序的所有门均合法。 -/
theorem andComputeErase_wellFormed (a b anc : Wire)
    (hab : a ≠ b) (ha : a ≠ anc) (hb : b ≠ anc) :
    WellFormed (andComputeErase a b anc) := by
  simp [WellFormed, andComputeErase, Instr.WellFormed, Gate.WellFormed,
    Correction.WellFormed, hab, ha, hb]

/-- 对任意初始相位、任意数据位和任意测量结果：
AND 计算加测量反计算恢复整个输入状态，包括相位、数据和所有外部线路。
唯一状态前提是辅助位初始为零；a、b 与辅助位互异。 -/
theorem andComputeErase_correct (a b anc : Wire)
    (_hab : a ≠ b) (ha : a ≠ anc) (hb : b ≠ anc)
    (s : State) (hclean : s.basis anc = false)
    (m : Outcomes (andComputeErase a b anc)) :
    run (andComputeErase a b anc) m s = s := by
  have hclear : writeBit s.basis anc false = s.basis := by
    funext w
    by_cases h : w = anc
    · subst w; simp [writeBit, hclean]
    · simp [writeBit, h]
  simp only [andComputeErase, run]
  cases hm : m ⟨0, by change 0 < 1; decide⟩ <;>
    simp [measureAndCorrect, ECDSAAdd.correct, applyCorrection, applyGate,
      writeBit, hclean, ha, hb] <;>
    change State.mk s.phase (writeBit s.basis anc false) = s <;>
    rw [hclear]

/-- 此程序恰好使用一个 Toffoli，不依赖测量结果。 -/
theorem andComputeErase_toffoliCount (a b anc : Wire) :
    toffoliCount (andComputeErase a b anc) = 1 := rfl

/-- 此程序恰好测量一次，结果 0 和 1 都合法。 -/
theorem andComputeErase_measurementCount (a b anc : Wire) :
    measurementCount (andComputeErase a b anc) = 1 := rfl

/-- 声明支持集就是 a、b、anc 三根线路（包括测量修正）。 -/
theorem andComputeErase_wires (a b anc : Wire) :
    wires (andComputeErase a b anc) = {a, b, anc} := by
  ext w
  simp [andComputeErase, wires, Instr.wires, Gate.wires, correctionWires,
    Correction.wires]
  tauto

/-- 三根线路互异时，静态物理线路数恰好为 3。 -/
theorem andComputeErase_qubitCount (a b anc : Wire)
    (hab : a ≠ b) (ha : a ≠ anc) (hb : b ≠ anc) :
    qubitCount (andComputeErase a b anc) = 3 := by
  rw [qubitCount, andComputeErase_wires]
  simp [hab, ha, hb]

end ECDSAAdd
