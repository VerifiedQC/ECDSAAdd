import ECDSAAdd.Arithmetic.InPlaceAdder
import ECDSAAdd.Arithmetic.Compare
import ECDSAAdd.Math.ModInPlace

namespace ECDSAAdd.Arithmetic

/-- 模加核的固定线路：最高位借作约减标志；mask/flag 属于外层，不放入核工作区。 -/
structure ModAddCoreLayout where
  a : List Wire
  low : List Wire
  high : Wire
  constant : List Wire
  carry : List Wire
  cin : Wire

namespace ModAddCoreLayout

def z (L : ModAddCoreLayout) : List Wire := L.low ++ [L.high]
def work (L : ModAddCoreLayout) : List Wire := L.constant ++ L.carry ++ [L.cin]
def wires (L : ModAddCoreLayout) : List Wire := L.a ++ L.z ++ L.work

/-- 低位 n 根，扩宽数据与常数 n+1 根，完整进位链 n 根。 -/
structure Widths (L : ModAddCoreLayout) (n : Nat) : Prop where
  a : L.a.length = n+1
  low : L.low.length = n
  constant : L.constant.length = n+1
  carry : L.carry.length = n

end ModAddCoreLayout

/-- 四个可辨认阶段：计算扩宽和、试减 p、借位时低位加回 p、由结果与源比较清借位。
constant/carry/cin 初末零；核源可以是外层已装载的 mask，不能提前清该源。 -/
def modAddCore (L : ModAddCoreLayout) (p : Nat) : Program :=
  -- 1. 高位初始零；扩宽寄存器容纳完整 A+Z。
  addInPlace L.a L.z L.carry L.cin ++
  -- 2. 试减 p；结果最高位记录 A+Z<p。装卸常数不影响该标志。
  xorConstant L.constant p ++ subInPlace L.constant L.z L.carry L.cin ++
  xorConstant L.constant p ++
  -- 3. 借位为真时只向低位加回 p，最高位保持直到最后比较。
  maskedAddConst L.high (L.constant.take L.low.length) L.low
    (L.carry.take (L.low.length-1)) L.cin p ++
  -- 4. 规范结果小于源当且仅当曾约减；比较后 X 清原借位。
  compareLt none L.low (L.a.take L.low.length) L.carry L.cin L.high ++ [.X L.high]

/-- 同一核门列的计数，不把尚未证明的正确性或支持集作为假设。 -/
theorem modAddCore_counts (L : ModAddCoreLayout) (n p : Nat)
    (hw : L.Widths n) (hn : 0 < n) :
    toffoliCount (modAddCore L p) = 4*n-1 ∧
    measurementCount (modAddCore L p) = 4*n-1 := by
  have hz : L.z.length = n+1 := by simp [ModAddCoreLayout.z, hw.low]
  have ha := addInPlace_counts L.a L.z L.carry L.cin (hw.a.trans hz.symm)
    (by rw [hw.carry, hz])
  have hs := subInPlace_counts L.constant L.z L.carry L.cin
    (hw.constant.trans hz.symm) (by rw [hw.carry, hz])
  have ht : (L.constant.take L.low.length).length = n := by
    simp [hw.low, hw.constant]
  have hk : (L.carry.take (L.low.length-1)).length = n-1 := by
    simp [hw.low, hw.carry]
  have hm := addInPlace_counts (L.constant.take L.low.length) L.low
    (L.carry.take (L.low.length-1)) L.cin (ht.trans hw.low.symm)
    (by rw [hk, hw.low]; omega)
  have hx : (L.a.take L.low.length).length = n := by simp [hw.low, hw.a]
  have hc := compareLt_counts none L.low (L.a.take L.low.length) L.carry L.cin L.high
    (hw.low.trans hx.symm) (hw.carry.trans hx.symm)
  simp only [hw.low] at hm hc
  simp only [modAddCore, maskedAddConst, toffoliCount_append, measurementCount_append,
    ha.1, ha.2, hs.1, hs.2, hm.1, hm.2, hc.1, hc.2,
    (xorConstant_counts _ _).1, (xorConstant_counts _ _).2,
    (maskedConstant_counts _ _ _).1, (maskedConstant_counts _ _ _).2,
    hz, hw.low, toffoliCount, measurementCount]
  simp only [List.length_take, hw.a, Nat.min_eq_left (by omega : n ≤ n+1)]
  simp
  omega

end ECDSAAdd.Arithmetic
