import ECDSAAdd.Arithmetic.ModUnaryResources
import ECDSAAdd.Math.HornerMultiply

namespace ECDSAAdd.Arithmetic

/-- Horner 内核只保存输入与一个累加器；半倍和模加减借用同一 scratch。 -/
structure MulInPlaceLayout where
  x : List Wire
  y : List Wire
  unary : ModUnaryLayout

namespace MulInPlaceLayout

def acc (M : MulInPlaceLayout) : List Wire := M.unary.z
def work (M : MulInPlaceLayout) : List Wire := M.unary.work
def wires (M : MulInPlaceLayout) : List Wire := M.x++M.y++M.acc++M.work
def addView (M : MulInPlaceLayout) : ModInPlaceLayout :=
  { toModAddCoreLayout := { M.unary.core with a := M.x }, mask := M.unary.mask, flag := M.unary.flag }
def bit (M : MulInPlaceLayout) (i : Nat) : Wire := M.y.getD i M.unary.flag

structure Widths (M : MulInPlaceLayout) (n : Nat) : Prop where
  x : M.x.length=n+1
  y : M.y.length=n
  unary : M.unary.Widths n

theorem add_widths (M : MulInPlaceLayout) (n : Nat) (hw : M.Widths n) : M.addView.Widths n :=
  ⟨⟨hw.x,hw.unary.low,hw.unary.constant,hw.unary.carry⟩,hw.unary.mask⟩

theorem unary_nodup (M : MulInPlaceLayout) (hnd : M.wires.Nodup) : M.unary.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,acc,work,ModUnaryLayout.wires,List.count_append] at h ⊢
  omega

theorem bit_mem (M : MulInPlaceLayout) (i : Nat) (hi : i<M.y.length) : M.bit i∈M.y := by
  unfold bit
  generalize M.y=r at hi ⊢
  induction r generalizing i with
  | nil => simp at hi
  | cons a as ih =>
    cases i with
    | zero => simp
    | succ i => simp only [List.getD_cons_succ]; exact List.mem_cons_of_mem _ (ih i (by simpa using hi))

theorem add_nodup (M : MulInPlaceLayout) (i : Nat) (hnd : M.wires.Nodup) (hi : i<M.y.length) :
    (M.bit i::M.addView.wires).Nodup := by
  apply List.nodup_cons.mpr
  constructor
  · intro hmem
    have h1 := List.count_pos_iff.mpr hmem
    have h2 := List.count_pos_iff.mpr (M.bit_mem i hi)
    have h := List.nodup_iff_count.mp hnd (M.bit i)
    simp only [wires,acc,work,addView,ModInPlaceLayout.wires,ModInPlaceLayout.work,
      ModInPlaceLayout.z,ModUnaryLayout.core,ModUnaryLayout.z,ModUnaryLayout.work,
      ModAddCoreLayout.work,ModAddCoreLayout.z,List.count_append] at h h1
    omega
  · apply List.nodup_iff_count.mpr; intro q
    have h := List.nodup_iff_count.mp hnd q
    simp only [wires,acc,work,addView,ModInPlaceLayout.wires,ModInPlaceLayout.work,
      ModInPlaceLayout.z,ModUnaryLayout.core,ModUnaryLayout.z,ModUnaryLayout.work,
      ModAddCoreLayout.work,ModAddCoreLayout.z,List.count_append] at h ⊢
    omega

end MulInPlaceLayout

/-- 小端寄存器第 i 位与自然数除法表示一致。 -/
theorem regValue_bit (r : List Wire) (i : Nat) (fallback : Wire) (s : BasisState) (hi : i<r.length) :
    (s (r.getD i fallback)).toNat=(regValue r s/2^i)%2 := by
  induction r generalizing i with
  | nil => simp at hi
  | cons a as ih =>
    cases i with
    | zero => simp [regValue,Bool.toNat]; cases s a <;> simp
    | succ i =>
      simp only [List.getD_cons_succ]
      rw [ih i (by simpa using hi)]
      have hd : regValue (a::as) s/2=regValue as s := by
        change ((if s a then 1 else 0)+2*regValue as s)/2=regValue as s
        cases s a <;> simp only [Bool.false_eq_true,if_false,if_true] <;> omega
      rw [Nat.pow_succ,Nat.mul_comm (2^i) 2,← Nat.div_div_eq_div_mul,hd]

/-- 一轮前向：加倍累加器，再按乘数第 i 位加被乘数。 -/
def hornerIntoStep (M : MulInPlaceLayout) (p i : Nat) : Program :=
  dblInPlace M.unary p ++ controlledModAdd (M.bit i) M.addView p

/-- 一轮清理：先减本位贡献，再模减半。两段都是前向门列。 -/
def hornerClearStep (M : MulInPlaceLayout) (p i : Nat) : Program :=
  controlledModSub (M.bit i) M.addView p ++ halfInPlace M.unary p

def mulIntoRounds (M : MulInPlaceLayout) (p : Nat) : Nat → Program
  | 0 => []
  | k+1 => mulIntoRounds M p k ++ hornerIntoStep M p (M.y.length-(k+1))

def mulClearRounds (M : MulInPlaceLayout) (p : Nat) : Nat → Program
  | 0 => []
  | k+1 => hornerClearStep M p (M.y.length-(k+1)) ++ mulClearRounds M p k

def mulInto (M : MulInPlaceLayout) (p : Nat) : Program := mulIntoRounds M p M.y.length
def mulClear (M : MulInPlaceLayout) (p : Nat) : Program := mulClearRounds M p M.y.length

end ECDSAAdd.Arithmetic
