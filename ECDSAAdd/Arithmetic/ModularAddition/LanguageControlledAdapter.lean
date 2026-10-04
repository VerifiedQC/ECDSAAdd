import ECDSAAdd.Arithmetic.ModularAddition.LanguageAdapter
import ECDSAAdd.Arithmetic.ModularAddition.ModInPlaceWrappers

namespace ECDSAAdd.Arithmetic.ModAddLanguage
open ArithmeticLanguage

/-- 第二种实现借用受控模加：准备 enable=1，执行后恢复 enable=0。
用于验证实现可替换性，不声称比直接模加更省资源。 -/
def enabledAdd (enable : Wire) (L : ModInPlaceLayout) (q : Nat) : Program :=
  [.X enable] ++ controlledModAdd enable L q ++ [.X enable]

theorem enabledAdd_correct (enable : Wire) (L : ModInPlaceLayout) (n q A Z : Nat)
    (hw : L.Widths n) (hnd : (enable :: L.wires).Nodup)
    (hq : 0 < q) (hqn : q < 2^n) (hA : A < q) (hZ : Z < q)
    (s : State) (m : List Bool) (he : s.basis enable = false)
    (ha : regValue L.a s.basis = A) (hz : regValue L.z s.basis = Z)
    (hc : regValue L.work s.basis = 0) :
    (run (enabledAdd enable L q) m s).phase = s.phase ∧
    regValue L.a (run (enabledAdd enable L q) m s).basis = A ∧
    regValue L.z (run (enabledAdd enable L q) m s).basis = (A+Z)%q ∧
    ∀ v, v ∉ L.z → (run (enabledAdd enable L q) m s).basis v = s.basis v := by
  have hne : enable ∉ L.wires := (List.nodup_cons.mp hnd).1
  have away (v : Wire) (hv : v ∈ L.wires) : v ≠ enable := by
    intro h; subst v; exact hne hv
  let s₁ : State := ⟨s.phase, writeBit s.basis enable true⟩
  have same (r : List Wire) (hr : ∀ v ∈ r, v ∈ L.wires) :
      regValue r s₁.basis = regValue r s.basis :=
    regValue_congr _ _ _ (fun v hv => by simp [s₁, writeBit, away v (hr v hv)])
  have ha₁ : regValue L.a s₁.basis = A :=
    (same L.a (fun _ hh => by simp [ModInPlaceLayout.wires, hh])).trans ha
  have hz₁ : regValue L.z s₁.basis = Z :=
    (same L.z (fun _ hh => by simp [ModInPlaceLayout.wires, hh])).trans hz
  have hc₁ : regValue L.work s₁.basis = 0 :=
    (same L.work (fun _ hh => by simp [ModInPlaceLayout.wires, hh])).trans hc
  let s₂ := run (controlledModAdd enable L q) m s₁
  have h₁ : s₁.basis enable = true := by simp [s₁, writeBit]
  obtain ⟨hphase, hout⟩ := controlledModAdd_spec enable L n q A Z true hw hnd hq hqn
    (Nat.le_of_lt hA) hZ s₁ m ⟨⟨⟨h₁, ha₁⟩, hz₁⟩, hc₁⟩
  simp only [Holds.holds, if_true] at hout
  have hframe := controlledModAdd_frame enable L n q A Z true hw hnd hq hqn
    (Nat.le_of_lt hA) hZ s₁ m h₁ ha₁ hz₁ hc₁
  have execution : run (enabledAdd enable L q) m s =
      ⟨s₂.phase, writeBit s₂.basis enable false⟩ := by
    simp only [enabledAdd, run_append, run_take, measurementCount, List.drop_zero,
      run, he, Bool.not_false]
    change (⟨s₂.phase, writeBit s₂.basis enable (!s₂.basis enable)⟩ : State) = _
    rw [show s₂.basis enable = true from hout.1.1.1]
    rfl
  have finalSame (r : List Wire) (hr : ∀ v ∈ r, v ∈ L.wires) :
      regValue r (writeBit s₂.basis enable false) = regValue r s₂.basis :=
    regValue_congr _ _ _ (fun v hv => by simp [writeBit, away v (hr v hv)])
  rw [execution]
  refine ⟨hphase, ?_, ?_, ?_⟩
  · exact (finalSame L.a (fun _ hh => by simp [ModInPlaceLayout.wires, hh])).trans hout.1.1.2
  · exact (finalSame L.z (fun _ hh => by simp [ModInPlaceLayout.wires, hh])).trans
      (by simpa [Nat.add_comm] using hout.1.2)
  · intro v hv
    by_cases hve : v = enable
    · subst v; simp [writeBit, he]
    · simpa [writeBit, hve, s₁] using hframe v hv

/-- 显式提供 mask、flag 和 enable，仍不分配隐藏线路。 -/
structure ControlledWorkspace (n : Nat) extends Workspace n where
  mask : QReg (n+1)
  flag : Wire
  enable : Wire

def ControlledWorkspace.layout {n : Nat} (w : ControlledWorkspace n) (op : ModAdd n) :
    ModInPlaceLayout := { w.toWorkspace.core op with mask := w.mask.wires, flag := w.flag }

def ControlledWorkspace.wires {n : Nat} (w : ControlledWorkspace n) : List Wire :=
  w.toWorkspace.wires ++ w.mask.wires ++ [w.flag, w.enable]

theorem controlled_correct {n : Nat} (op : ModAdd n) (w : ControlledWorkspace n)
    (hv : op.Valid) (hnd : (w.enable :: (w.layout op).wires).Nodup)
    (s : State) (m : List Bool) (hp : op.Pre s.basis) (hc : Clean w.wires s.basis) :
    (run (enabledAdd w.enable (w.layout op) op.modulus) m s).phase = s.phase ∧
    op.Effect s.basis (run (enabledAdd w.enable (w.layout op) op.modulus) m s).basis := by
  let L := w.layout op
  let A := op.source.value s.basis
  let Z := op.target.value s.basis
  have hs : s.basis w.sourceHigh = false := hc _ (by
    simp [ControlledWorkspace.wires, Workspace.wires])
  have ht : s.basis w.targetHigh = false := hc _ (by
    simp [ControlledWorkspace.wires, Workspace.wires])
  have he : s.basis w.enable = false := hc _ (by simp [ControlledWorkspace.wires])
  have ha : regValue L.a s.basis = A := by
    simp [L, ControlledWorkspace.layout, Workspace.core, regValue, hs, A, QReg.value]
  have hz : regValue L.z s.basis = Z := by
    simp [L, ControlledWorkspace.layout, Workspace.core, ModInPlaceLayout.z,
      ModAddCoreLayout.z, regValue, ht, Z, QReg.value]
  have hw : regValue L.work s.basis = 0 := (regValue_zero _ _).mpr (by
    intro v hh
    apply hc v
    simp only [L, ControlledWorkspace.layout, Workspace.core, ModInPlaceLayout.work,
      ModAddCoreLayout.work, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hh
    simp only [ControlledWorkspace.wires, Workspace.wires, List.mem_append, List.mem_cons,
      List.not_mem_nil, or_false]
    tauto)
  obtain ⟨hphase, ha', hz', hframe⟩ := enabledAdd_correct w.enable L n op.modulus A Z
    ⟨w.toWorkspace.widths op, w.mask.width⟩ hnd hv.1 hv.2.1 hp.1 hp.2 s m he ha hz hw
  have hA : A < 2^n := Nat.lt_trans hp.1 hv.2.1
  have hR : (A+Z)%op.modulus < 2^n := Nat.lt_trans (Nat.mod_lt _ hv.1) hv.2.1
  refine ⟨hphase, ?_, ?_, ?_⟩
  · change regValue op.source.wires _ = A
    rw [regValue_low op.source.wires w.sourceHigh, op.source.width]
    change regValue L.a _ % 2^n = A
    rw [ha', Nat.mod_eq_of_lt hA]
  · change regValue op.target.wires _ = _
    rw [regValue_low op.target.wires w.targetHigh, op.target.width]
    change regValue L.z _ % 2^n = _
    rw [hz', Nat.mod_eq_of_lt hR]
  · intro v hnot
    by_cases heq : v = w.targetHigh
    · subst v
      have hh := regValue_highBit op.target.wires w.targetHigh
        (run (enabledAdd w.enable L op.modulus) m s).basis
      rw [op.target.width] at hh
      change _ ↔ 2^n ≤ regValue L.z _ at hh
      rw [hz'] at hh
      have hf : (run (enabledAdd w.enable L op.modulus) m s).basis w.targetHigh = false := by
        cases hb : (run (enabledAdd w.enable L op.modulus) m s).basis w.targetHigh
        · rfl
        · exact False.elim ((Nat.not_le.mpr hR) (hh.mp hb))
      exact hf.trans ht.symm
    · apply hframe v
      simpa [L, ControlledWorkspace.layout, Workspace.core, ModInPlaceLayout.z,
        ModAddCoreLayout.z] using And.intro hnot heq

/-- 与 direct 相同的高层规格，不同的掩码电路与资源。
测量数仍为 4n-1；Toffoli 为 6n-1，另需受控模加的工作线路。 -/
def viaControlled {n : Nat} (op : ModAdd n) (w : ControlledWorkspace n)
    (hv : op.Valid) (hnd : (w.enable :: (w.layout op).wires).Nodup) : Implementation op := by
  have hn : 0 < n := by
    by_contra h
    have : n = 0 := by omega
    have hp := hv.2.1
    simp only [this, pow_zero] at hp
    have := hv.1
    omega
  have hw : (w.layout op).Widths n := ⟨w.toWorkspace.widths op, w.mask.width⟩
  have counts := controlledModAdd_resources w.enable (w.layout op) n op.modulus hw hnd hn
  exact {
    circuit := enabledAdd w.enable (w.layout op) op.modulus
    workspace := w.wires
    valid := hv
    workspace_disjoint := by
      intro v hv' ht
      have h := List.nodup_iff_count.mp hnd v
      have h₁ := List.count_pos_iff.mpr hv'
      have h₂ := List.count_pos_iff.mpr ht
      simp only [ControlledWorkspace.layout, ControlledWorkspace.wires, Workspace.core,
        Workspace.wires, ModInPlaceLayout.wires, ModInPlaceLayout.work, ModInPlaceLayout.z,
        ModAddCoreLayout.z, ModAddCoreLayout.work, List.count_append, List.count_cons,
        List.count_nil] at h h₁
      omega
    correct := controlled_correct op w hv hnd
    resources := ⟨6*n-1, 4*n-1,
      (w.enable :: (w.layout op).a.take n ++ (w.layout op).maskedCore.wires).toFinset⟩
    toffoli_eq := by simpa [enabledAdd, toffoliCount] using counts.1
    measurements_eq := by simpa [enabledAdd, measurementCount] using counts.2.1
    support_eq := by
      simp only [enabledAdd, wires_append,
        controlledModAdd_wires w.enable (w.layout op) n op.modulus hw hn]
      ext v
      simp [Instr.wires, wires]
  }

end ECDSAAdd.Arithmetic.ModAddLanguage
