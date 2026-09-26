import ECDSAAdd.Arithmetic.ModularAddition.ModInPlaceSubtract
import ECDSAAdd.Arithmetic.Shift.Rotate

namespace ECDSAAdd.Arithmetic
open Instr

/-- 单目模算术借用同一目标与 scratch；mask 在半倍期间保持零。 -/
structure ModUnaryLayout where
  low : List Wire
  high : Wire
  constant : List Wire
  carry : List Wire
  cin : Wire
  mask : List Wire
  flag : Wire

namespace ModUnaryLayout

def z (U : ModUnaryLayout) : List Wire := U.low++[U.high]
def core (U : ModUnaryLayout) : ModAddCoreLayout :=
  ⟨U.mask,U.low,U.high,U.constant,U.carry,U.cin⟩
def work (U : ModUnaryLayout) : List Wire := U.core.work++U.mask++[U.flag]
def wires (U : ModUnaryLayout) : List Wire := U.z++U.work
/-- 合法位宽下 low 非空；回退值仅使构造对所有布局有定义。 -/
def bit (U : ModUnaryLayout) : Wire := U.low.headD U.high

structure Widths (U : ModUnaryLayout) (n : Nat) : Prop where
  low : U.low.length=n
  constant : U.constant.length=n+1
  carry : U.carry.length=n
  mask : U.mask.length=n+1

theorem core_widths (U : ModUnaryLayout) (n : Nat) (hw : U.Widths n) : U.core.Widths n :=
  ⟨hw.mask,hw.low,hw.constant,hw.carry⟩

theorem core_nodup (U : ModUnaryLayout) (hnd : U.wires.Nodup) : U.core.wires.Nodup := by
  apply List.nodup_iff_count.mpr; intro q
  have h := List.nodup_iff_count.mp hnd q
  simp only [wires,work,core,z,ModAddCoreLayout.wires,ModAddCoreLayout.work,ModAddCoreLayout.z,
    List.count_append,List.count_cons,List.count_nil] at h ⊢
  omega

theorem bit_mem (U : ModUnaryLayout) (n : Nat) (hw : U.Widths n) (hn : 0<n) : U.bit∈U.low := by
  cases h : U.low with
  | nil => have hh := hw.low; simp [h] at hh; omega
  | cons a as => simp [bit,h]

theorem bit_value (U : ModUnaryLayout) (n : Nat) (hw : U.Widths n) (hn : 0<n) (s : BasisState) :
    (s U.bit).toNat=regValue U.z s%2 := by
  cases h : U.low with
  | nil => have hh := hw.low; simp [h] at hh; omega
  | cons a as => simp [z,bit,h,regValue,Bool.toNat]; cases s a <;> simp

end ModUnaryLayout

/-- 模倍增/减半的逻辑接口；low/全宽两个加常数接口明确区分位宽。 -/
structure ModUnaryOps where
  subInPlace : List Wire → List Wire → Program
  maskedAddConst : Wire → List Wire → Nat → Program
  maskedAddConstLow : Wire → List Wire → Nat → Program
  compareLtConst : List Wire → Nat → Wire → Program

/-- U 提供零 constant/carry/cin；Low 接口取低 n 位常数及 n-1 根进位，其他使用全宽。
compareLtConst 比较低 n 位目标与经典常数，使用 n 根 carry；不分配新的辅助位。 -/
def modUnaryContext (U : ModUnaryLayout) : CircuitDSL.Context ModUnaryOps := {
  operations := {
    subInPlace := fun source target => subInPlace source target U.carry U.cin
    maskedAddConst := fun control target k => maskedAddConst control U.constant target U.carry U.cin k
    maskedAddConstLow := fun control target k =>
      maskedAddConst control (U.constant.take U.low.length) target
        (U.carry.take (U.low.length-1)) U.cin k
    compareLtConst := fun target k out =>
      compareLtConst none target (U.constant.take U.low.length) U.carry U.cin out k
  }
}

/-- 原地模倍增：U.z ← 2*U.z mod p，要求 p 为奇数、U.z<p，并满足布局/位宽条件。
零工作区（含 high）最终恢复为零；左旋加倍、试减 p、按借位加回，最后利用奇偶清借位。

参数：

- `U`：一元模运算布局：z（low 加 high）是原地更新目标，bit 是最低位，flag 暂存奇偶，constant/carry/cin 是零工作区。
- `p`：构造期的经典奇模数，使模倍增与模减半互逆。
-/
def dblInPlace (U : ModUnaryLayout) (p : Nat) : Program := prog using (modUnaryContext U) {
  let target := U.z;       -- low 加一根零 high，保存扩宽后的目标数值。
  let borrow := U.high;    -- 目标最高位，试减 p 后暂存借位。
  let leastBit := U.bit;   -- 目标最低位，用结果奇偶清除借位。
  rotateLeft(target);                                  -- 零 high 移到最低位：target = 2Z
  xorConstant(U.constant, p);                           -- constant = p
  subInPlace U.constant target;                        -- target -= p；borrow = [2Z < p]
  xorConstant(U.constant, p);                           -- constant 清零
  maskedAddConstLow borrow U.low p;                    -- 有借位则低 n 位加回 p
  X borrow;                                     -- p 为奇数，结果奇偶记录是否约减。
  CX leastBit borrow;                           -- borrow 清零
}

/-- Proof-facing expansion of the readable program; the instruction sequence is unchanged. -/
theorem dblInPlace_program (U : ModUnaryLayout) (p : Nat) :
    dblInPlace U p =
  rotateLeft U.z ++ xorConstant U.constant p ++ subInPlace U.constant U.z U.carry U.cin ++
  xorConstant U.constant p ++
  maskedAddConst U.high (U.constant.take U.low.length) U.low
    (U.carry.take (U.low.length-1)) U.cin p ++ [.X U.high,.CX U.bit U.high] := by
  simp only [dblInPlace, List.append_assoc]
  rfl

/-- 原地模减半：U.z ← (U.z+(U.z mod 2)*p)/2，结果仍在 [0,p)，等价于乘 2⁻¹ mod p。
要求 p 为奇数、U.z<p，并满足布局/位宽条件；零工作区最终恢复为零。
奇数先加 p 再右旋，最后利用结果与 (p+1)/2 的比较清除奇偶标志。

参数：

- `U`：一元模运算布局：z（low 加 high）是原地更新目标，bit 是最低位，flag 暂存奇偶，constant/carry/cin 是零工作区。
- `p`：构造期的经典奇模数，使模倍增与模减半互逆。
-/
def halfInPlace (U : ModUnaryLayout) (p : Nat) : Program := prog using (modUnaryContext U) {
  let target := U.z;       -- low 加一根零 high，容纳奇数时加 p 的完整结果。
  let wasOdd := U.flag;    -- 零辅助位，暂存输入的奇偶，最后清零。
  CX U.bit wasOdd;                             -- wasOdd = Z mod 2
  maskedAddConst wasOdd target p;                      -- 奇数时 target += p
  rotateRight(target);                                -- 偶数右旋：target /= 2
  compareLtConst U.low ((p+1)/2) wasOdd;                -- wasOdd ^= [减半后的 low<(p+1)/2]，随后 X 将其清零。
  X wasOdd;                                     -- 原 Z 为奇数 iff 新值 ≥ (p+1)/2，清零标志。
}

/-- 半倍门列均复用 scratch，不增加量子控制或历史寄存器。 -/
theorem modUnary_counts (U : ModUnaryLayout) (n p : Nat) (hw : U.Widths n) (hn : 0<n) :
    toffoliCount (dblInPlace U p)=2*n-1 ∧ measurementCount (dblInPlace U p)=2*n-1 ∧
    toffoliCount (halfInPlace U p)=2*n ∧ measurementCount (halfInPlace U p)=2*n := by
  have hz : U.z.length=n+1 := by simp [ModUnaryLayout.z,hw.low]
  have ht : (U.constant.take U.low.length).length=n := by simp [hw.constant,hw.low]
  have hc : (U.carry.take (U.low.length-1)).length=n-1 := by simp [hw.carry,hw.low]
  have ha := addInPlace_counts U.constant U.z U.carry U.cin (hw.constant.trans hz.symm)
    (by rw [hw.carry,hz])
  have hs := subInPlace_counts U.constant U.z U.carry U.cin (hw.constant.trans hz.symm)
    (by rw [hw.carry,hz])
  have hl := addInPlace_counts (U.constant.take U.low.length) U.low
    (U.carry.take (U.low.length-1)) U.cin (ht.trans hw.low.symm)
    (by rw [hc,hw.low]; omega)
  have hm := compareLt_counts none U.low (U.constant.take U.low.length) U.carry U.cin U.flag
    (hw.low.trans ht.symm) (hw.carry.trans ht.symm)
  simp only [hw.low] at hl hm
  simp only [dblInPlace_program,halfInPlace,maskedAddConst,compareLtConst,toffoliCount_append,measurementCount_append,
    (rotate_counts U.z).1,(rotate_counts U.z).2.1,(rotate_counts U.z).2.2.1,(rotate_counts U.z).2.2.2,
    (xorConstant_counts _ _).1,(xorConstant_counts _ _).2,(maskedConstant_counts _ _ _).1,
    (maskedConstant_counts _ _ _).2,ha.1,ha.2,hs.1,hs.2,hl.1,hl.2,hm.1,hm.2.1,
    toffoliCount,measurementCount,hw.low,hz,Option.isSome_none,Bool.false_eq_true,if_false,
    List.length_take,hw.constant]
  simp only [Nat.min_eq_left (by omega : n≤n+1)]
  omega

/-- 资源按实际支持计：加倍不触及 mask/flag，减半不触及 mask。 -/
theorem modUnary_wires (U : ModUnaryLayout) (n p : Nat) (hw : U.Widths n) (hn : 0<n) :
    wires (dblInPlace U p)=(U.z++U.core.work).toFinset ∧
    wires (halfInPlace U p)=(U.z++U.core.work++[U.flag]).toFinset := by
  have hz : U.z.length=n+1 := by simp [ModUnaryLayout.z,hw.low]
  have hlen : ¬U.z.length<2 := by omega
  have ht : (U.constant.take U.low.length).length=n := by simp [hw.low,hw.constant]
  have hc : (U.carry.take (U.low.length-1)).length=n-1 := by simp [hw.low,hw.carry]
  have ha := addInPlace_wires U.constant U.z U.carry U.cin (hw.constant.trans hz.symm)
    (by rw [hw.carry,hz])
  have hs := subInPlace_wires U.constant U.z U.carry U.cin (hw.constant.trans hz.symm)
    (by rw [hw.carry,hz])
  have hcmp := (compareLt_wires none U.low (U.constant.take U.low.length) U.carry U.cin U.flag
    (hw.low.trans ht.symm) (hw.carry.trans ht.symm)).2 ((p+1)/2)
  have hdend : wires [.X U.high,.CX U.bit U.high]=[U.bit,U.high].toFinset := by
    ext q; simp [wires,Instr.wires]
  have hstart : wires [.CX U.bit U.flag]=[U.bit,U.flag].toFinset := by
    ext q; simp [wires,Instr.wires]
  have hend : wires [.X U.flag]=[U.flag].toFinset := by simp [wires,Instr.wires]
  constructor
  · simp only [dblInPlace_program,wires_append,(rotate_wires U.z).2,hlen,if_false,hs,hdend]
    ext q
    have hx : q∈wires (xorConstant U.constant p) → q∈U.constant :=
      fun hh => List.mem_toFinset.mp (xorConstant_wires_subset U.constant p hh)
    have hm : q∈wires (maskedAddConst U.high (U.constant.take U.low.length) U.low
        (U.carry.take (U.low.length-1)) U.cin p) →
        q∈U.high::U.cin::U.constant++U.low++U.carry := by
      intro hh
      have ht' := List.mem_toFinset.mp ((maskedConst_wires_subset U.high
        (U.constant.take U.low.length) U.low (U.carry.take (U.low.length-1)) U.cin p
        (ht.trans hw.low.symm) (by rw [hc,hw.low]; omega)).1 hh)
      have tsub := (List.take_sublist U.low.length U.constant).subset
      have csub := (List.take_sublist (U.low.length-1) U.carry).subset
      simp only [List.mem_cons,List.mem_append] at ht' ⊢
      rcases ht' with hh | hh | (hh | hh) | hh
      · exact Or.inl (Or.inl (Or.inl hh))
      · exact Or.inl (Or.inl (Or.inr (Or.inl hh)))
      · exact Or.inl (Or.inl (Or.inr (Or.inr (tsub hh))))
      · exact Or.inl (Or.inr hh)
      · exact Or.inr (csub hh)
    have hb : q=U.bit → q∈U.low := fun he => he.symm ▸ U.bit_mem n hw hn
    simp only [Finset.mem_union,List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,
      or_false,ModUnaryLayout.core,ModAddCoreLayout.work,ModUnaryLayout.z] at hx hm hb ⊢
    clear hw hn hz ht hc ha hs hcmp hdend hstart hend hlen
    aesop
  · simp only [halfInPlace,maskedAddConst,wires_append,ha,hcmp,(rotate_wires U.z).1,
      hlen,if_false,hstart,hend]
    ext q
    have hm : q∈wires (maskedConstant U.flag U.constant p) → q∈U.flag::U.constant :=
      fun hh => List.mem_toFinset.mp (maskedConstant_wires_subset U.flag U.constant p hh)
    have hts : q∈U.constant.take U.low.length → q∈U.constant :=
      fun hh => (List.take_sublist U.low.length U.constant).subset hh
    have hb : q=U.bit → q∈U.low := fun he => he.symm ▸ U.bit_mem n hw hn
    simp only [Finset.mem_union,List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,
      or_false,Option.toList_none,List.nil_append,ModUnaryLayout.core,ModAddCoreLayout.work,
      ModUnaryLayout.z] at hm hb ⊢
    clear hw hn hz ht hc ha hs hcmp hdend hstart hend hlen
    aesop

end ECDSAAdd.Arithmetic
