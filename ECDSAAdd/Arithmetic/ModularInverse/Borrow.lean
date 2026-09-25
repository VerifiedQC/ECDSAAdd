import ECDSAAdd.Arithmetic.ModularInverse.MaskedAdder
import ECDSAAdd.Arithmetic.ModularAddition.Reduction
import ECDSAAdd.Arithmetic.Comparison.Compare

namespace ECDSAAdd.Arithmetic

/-- target ^= [i<k]，k 是 L.x 保存的计数值；L.x 和另一计数银行 L.out 保持。
要求 i+1 可由布局位宽表示且线路互异，L.y/carry/cin 初始为零并恢复；装载阈值 i+1 比较后清理。

参数：

- `L`：计数比较布局：x 保存计数，y 暂存阈值，carry/cin 是零工作位，另一计数寄存器 out 不被访问。
- `target`：条件 i<计数值 的 XOR 输出 wire。
- `i`：构造期的经典阈值/轮号，内部实际装载 i+1 做比较。
-/
def counterActiveXor (L : AdderLayout) (target : Wire) (i : Nat) : Program :=
  compareLtConst none L.x L.y L.carry L.cin target (i+1) ++ [.X target]

theorem counterActiveXor_spec (L : AdderLayout) (target : Wire)
    (hnd : (target::L.wires).Nodup) (hw : L.width=10)
    (K i : Nat) (T : Bool) (hi : i<512) :
    {{ target=T, L.x=K, L.y=0, L.cin=false, L.carry=0 }} counterActiveXor L target i
    {{ target=(T ^^ decide (i < K)), L.x=K, L.y=0, L.cin=false, L.carry=0 }} := by
  have hs : (target::L.cin::(L.x++L.y++L.carry)).Nodup := by
    have hn := List.Perm.nodup_iff (List.Perm.cons target L.interface_perm)
    have h := hn.mpr hnd
    apply List.nodup_iff_count.mpr
    intro w
    have hc := List.nodup_iff_count.mp h w
    simp only [List.count_cons,List.count_append] at hc ⊢
    omega
  have hylen : L.y.length=10 := by simpa [AdderLayout.y,AdderLayout.width] using hw
  have hh := compareLtConst_spec L.x L.y L.carry L.cin target hs
    (by simp [AdderLayout.x,AdderLayout.y]) (by simp [AdderLayout.carry,AdderLayout.y])
    (i+1) (by rw [hylen]; omega) K T
  intro s m h
  rw [counterActiveXor,run_append,run_take]
  obtain ⟨hp,hv⟩ := hh s m ⟨⟨⟨⟨h.1.1.1.2,h.1.1.2⟩,h.2⟩,h.1.2⟩,h.1.1.1.1⟩
  have ht := (List.nodup_cons.mp hnd).1
  have keep (r : List Wire) (hr : r⊆L.wires) :
      regValue r (run [.X target] (m.drop (measurementCount
        (compareLtConst none L.x L.y L.carry L.cin target (i+1))))
        (run (compareLtConst none L.x L.y L.carry L.cin target (i+1)) m s)).basis =
      regValue r (run (compareLtConst none L.x L.y L.carry L.cin target (i+1)) m s).basis := by
    apply regValue_congr
    intro w hw
    have hwt : w≠target := fun e => ht (e ▸ hr hw)
    simp [run,writeBit,hwt]
  have hb : (!(T ^^ decide (K < i+1)))= (T ^^ decide (i < K)) := by
    have he : decide (K < i+1)= !decide (i < K) := by
      apply Bool.eq_iff_iff.mpr; simp
    rw [he]; cases T <;> cases decide (i < K) <;> rfl
  have hc : L.cin≠target := fun e => ht (by simp [AdderLayout.wires,← e])
  refine ⟨hp,⟨⟨⟨⟨?_,(keep L.x L.reg_subset.1).trans hv.1.1.1.1⟩,
    (keep L.y L.reg_subset.2.1).trans hv.1.1.1.2⟩,?_⟩,
    (keep L.carry L.reg_subset.2.2.2).trans hv.1.1.2⟩⟩
  · simpa only [run,Holds.holds,writeBit,Function.update_self,show (run (compareLtConst none L.x L.y L.carry L.cin target (i+1)) m s).basis target = (T ^^ decide (K < i+1)) from hv.2] using hb
  · simpa [run,Holds.holds,writeBit,hc] using hv.1.2

end ECDSAAdd.Arithmetic
