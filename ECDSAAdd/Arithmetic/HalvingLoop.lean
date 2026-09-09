import ECDSAAdd.Arithmetic.HalveRoundResources
import ECDSAAdd.Arithmetic.BorrowFrame

namespace ECDSAAdd.Arithmetic

/-- 固定轮号比较借用两组计数寄存器，输入 k 全程不变。 -/
structure HalvingLoopLayout where
  data : HalveLayout
  counterLow : List AddBit
  counterHigh : AddBit
  compareCin : Wire

namespace HalvingLoopLayout

def counter (L : HalvingLoopLayout) : AdderLayout :=
  ⟨L.counterLow ++ [L.counterHigh], L.compareCin⟩
def wires (L : HalvingLoopLayout) : List Wire := L.data.wires ++ L.counter.wires
def swap (L : HalvingLoopLayout) : HalvingLoopLayout := { L with data := L.data.swap }

theorem counter_out (L : HalvingLoopLayout) :
    L.counter.out = L.counterLow.map AddBit.out ++ [L.counterHigh.out] := by
  simp [counter,AdderLayout.out]

theorem swap_perm (L : HalvingLoopLayout) : L.swap.wires.Perm L.wires :=
  L.data.swap_perm.append_right L.counter.wires

theorem active_nodup (L : HalvingLoopLayout) (h : L.wires.Nodup) :
    (L.data.active :: L.counter.wires).Nodup := by
  have hh := List.nodup_append'.mp h
  exact List.nodup_cons.mpr ⟨List.disjoint_left.mp hh.2.2 (by simp [HalveLayout.wires]),hh.2.1⟩

end HalvingLoopLayout

def phaseActive (L : HalvingLoopLayout) (i : Nat) : Program :=
  counterActiveXor L.counter L.counterHigh.out L.data.active i

def halvingStep (L : HalvingLoopLayout) (q i : Nat) : Program :=
  phaseActive L i ++ halveRound L.data q ++ phaseActive L i

def halvingUnstep (L : HalvingLoopLayout) (q i : Nat) : Program :=
  phaseActive L i ++ halveUnround L.data q ++ phaseActive L i

def halvingLoop (L : HalvingLoopLayout) (q i : Nat) : Nat → Program
  | 0 => []
  | n+1 => halvingStep L q i ++ halvingLoop L.swap q (i+1) n

def halvingUnloop (L : HalvingLoopLayout) (q i : Nat) : Nat → Program
  | 0 => []
  | n+1 => halvingUnloop L.swap q (i+1) n ++ halvingUnstep L q i

def halvingEnd (L : HalvingLoopLayout) : Nat → HalvingLoopLayout
  | 0 => L
  | n+1 => halvingEnd L.swap n

def halvingRun (q K i : Nat) : Nat → Nat → Nat
  | 0, X => X
  | n+1, X => halvingRun q K (i+1) n (if i<K then halveMod q X else X)

/-- 计数输入和值域不变；比较工作区为空。 -/
def PhaseCounter (L : AdderLayout) (K : Nat) (s : BasisState) : Prop :=
  regValue L.x s = K ∧ regValue L.y s = 0 ∧ s L.cin = false ∧
    regValue L.out s = 0 ∧ regValue L.carry s = 0

def PhaseValues (L : HalvingLoopLayout) (K A B : Nat) (C : Bool) (s : BasisState) : Prop :=
  HalveValues L.data A B C s ∧ PhaseCounter L.counter K s

end ECDSAAdd.Arithmetic
