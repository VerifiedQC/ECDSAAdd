import ECDSAAdd.Framework.ArithmeticCompiler
import ECDSAAdd.Arithmetic.ModularAddition.ModInPlace

namespace ECDSAAdd.Arithmetic.ModAddLanguage
open ArithmeticLanguage

/-- n 位逻辑寄存器之外的接线；两个扩展高位、常数与进位均初始为零。 -/
structure Workspace (n : Nat) where
  sourceHigh : Wire
  targetHigh : Wire
  constant : QReg (n+1)
  carry : QReg n
  cin : Wire

def Workspace.core {n : Nat} (w : Workspace n) (op : ModAdd n) : ModAddCoreLayout := {
  a := op.source.wires ++ [w.sourceHigh]
  low := op.target.wires
  high := w.targetHigh
  constant := w.constant.wires
  carry := w.carry.wires
  cin := w.cin
}

def Workspace.wires {n : Nat} (w : Workspace n) : List Wire :=
  [w.sourceHigh, w.targetHigh] ++ w.constant.wires ++ w.carry.wires ++ [w.cin]

theorem Workspace.widths {n : Nat} (w : Workspace n) (op : ModAdd n) :
    (w.core op).Widths n := by
  exact ⟨by simp [Workspace.core, op.source.width], op.target.width,
    w.constant.width, w.carry.width⟩

theorem Workspace.disjoint {n : Nat} (w : Workspace n) (op : ModAdd n)
    (hnd : (w.core op).wires.Nodup) : ∀ v ∈ w.wires, v ∉ op.target.wires := by
  intro v hv ht
  have h := List.nodup_iff_count.mp hnd v
  have h₁ := List.count_pos_iff.mpr hv
  have h₂ := List.count_pos_iff.mpr ht
  simp only [Workspace.core, Workspace.wires, ModAddCoreLayout.wires,
    ModAddCoreLayout.z, ModAddCoreLayout.work, List.count_append, List.count_cons,
    List.count_nil] at h h₁
  omega

/-- 把已有核的 n+1 位规格提升为 n 位逻辑接口；高位属于工作区并恢复为零。 -/
theorem direct_correct {n : Nat} (op : ModAdd n) (w : Workspace n)
    (hv : op.Valid) (hnd : (w.core op).wires.Nodup)
    (s : State) (m : List Bool) (hp : op.Pre s.basis) (hc : Clean w.wires s.basis) :
    (run (modAddCore (w.core op) op.modulus) m s).phase = s.phase ∧
    op.Effect s.basis (run (modAddCore (w.core op) op.modulus) m s).basis := by
  let L := w.core op
  let A := op.source.value s.basis
  let Z := op.target.value s.basis
  have hs : s.basis w.sourceHigh = false := hc _ (by simp [Workspace.wires])
  have ht : s.basis w.targetHigh = false := hc _ (by simp [Workspace.wires])
  have ha : regValue L.a s.basis = A := by
    simp [L, Workspace.core, regValue, hs, A, QReg.value]
  have hz : regValue L.z s.basis = Z := by
    simp [L, Workspace.core, ModAddCoreLayout.z, regValue, ht, Z, QReg.value]
  have hw : regValue L.work s.basis = 0 := (regValue_zero _ _).mpr (by
    intro v hh
    apply hc v
    simp only [L, Workspace.core, ModAddCoreLayout.work, List.mem_append,
      List.mem_cons, List.not_mem_nil, or_false] at hh
    simp only [Workspace.wires, List.mem_append, List.mem_cons, List.not_mem_nil, or_false]
    tauto)
  obtain ⟨hphase, hout⟩ := modAddCore_spec L n op.modulus A Z (w.widths op) hnd
    hv.1 hv.2.1 (Nat.le_of_lt hp.1) hp.2 s m ⟨⟨ha, hz⟩, hw⟩
  simp only [Holds.holds] at hout
  have hA : A < 2^n := Nat.lt_trans hp.1 hv.2.1
  have hR : (A+Z)%op.modulus < 2^n := Nat.lt_trans (Nat.mod_lt _ hv.1) hv.2.1
  have sourceValue : op.source.value (run (modAddCore L op.modulus) m s).basis = A := by
    change regValue op.source.wires _ = A
    rw [regValue_low op.source.wires w.sourceHigh, op.source.width]
    change regValue L.a _ % 2^n = A
    rw [hout.1.1, Nat.mod_eq_of_lt hA]
  have targetValue : op.target.value (run (modAddCore L op.modulus) m s).basis =
      (A+Z)%op.modulus := by
    change regValue op.target.wires _ = _
    rw [regValue_low op.target.wires w.targetHigh, op.target.width]
    change regValue L.z _ % 2^n = _
    rw [hout.1.2, Nat.mod_eq_of_lt hR]
  refine ⟨hphase, sourceValue, targetValue, ?_⟩
  intro v hnot
  by_cases he : v = w.targetHigh
  · subst v
    have hh := regValue_highBit op.target.wires w.targetHigh
      (run (modAddCore L op.modulus) m s).basis
    rw [op.target.width] at hh
    change _ ↔ 2^n ≤ regValue L.z _ at hh
    rw [hout.1.2] at hh
    have hf : (run (modAddCore L op.modulus) m s).basis w.targetHigh = false := by
      cases hb : (run (modAddCore L op.modulus) m s).basis w.targetHigh
      · rfl
      · exact False.elim ((Nat.not_le.mpr hR) (hh.mp hb))
    exact hf.trans ht.symm
  · exact modAddCore_frame L n op.modulus A Z (w.widths op) hnd hv.1 hv.2.1
      (Nat.le_of_lt hp.1) hp.2 s m ha hz hw v (by
        simpa [L, Workspace.core, ModAddCoreLayout.z] using And.intro hnot he)

/-- 已认证的直接模加实现；显式接线，隐藏辅助参数而不隐藏前提或资源。 -/
def direct {n : Nat} (op : ModAdd n) (w : Workspace n)
    (hv : op.Valid) (hnd : (w.core op).wires.Nodup) : Implementation op := by
  have hn : 0 < n := by
    by_contra h
    have : n = 0 := by omega
    have hp := hv.2.1
    simp only [this, pow_zero] at hp
    have := hv.1
    omega
  exact {
    circuit := modAddCore (w.core op) op.modulus
    workspace := w.wires
    valid := hv
    workspace_disjoint := w.disjoint op hnd
    correct := direct_correct op w hv hnd
    resources := ⟨4*n-1, 4*n-1, (w.core op).wires.toFinset⟩
    toffoli_eq := (modAddCore_counts (w.core op) n op.modulus (w.widths op) hn).1
    measurements_eq := (modAddCore_counts (w.core op) n op.modulus (w.widths op) hn).2
    support_eq := modAddCore_wires (w.core op) n op.modulus (w.widths op) hn
  }

/-- 连续两次模加复用同一工作区；门数翻倍，实际静态线路数不翻倍。 -/
theorem direct_twice_resources {n : Nat} (op : ModAdd n) (w : Workspace n)
    (hv : op.Valid) (hnd : (w.core op).wires.Nodup) :
    let p := (direct op w hv hnd).circuit
    toffoliCount (p ++ p) = 2*(4*n-1) ∧
    measurementCount (p ++ p) = 2*(4*n-1) ∧ qubitCount (p ++ p) = 4*n+4 := by
  have hn : 0 < n := by
    by_contra h
    have : n = 0 := by omega
    have hp := hv.2.1
    simp only [this, pow_zero] at hp
    have := hv.1
    omega
  obtain ⟨hT, hM, hQ⟩ := modAddCore_resources (w.core op) n op.modulus (w.widths op) hnd hn
  change toffoliCount (_ ++ _) = _ ∧ measurementCount (_ ++ _) = _ ∧ qubitCount (_ ++ _) = _
  simp only [direct, toffoliCount_append, measurementCount_append, hT, hM,
    qubitCount, wires_append, Finset.union_self] at ⊢
  exact ⟨by omega, by omega, hQ⟩

end ECDSAAdd.Arithmetic.ModAddLanguage
