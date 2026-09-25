import ECDSAAdd.Arithmetic.ModularInverse.RoundBody
import ECDSAAdd.Arithmetic.ModularInverse.Borrow

namespace ECDSAAdd.Arithmetic
open Instr

/-- 单轮布局：数据、共享工作区、双银行计数器、两位记录与常数个控制工作位。 -/
structure KaliskiRoundLayout where
  low : List RoundBit
  high : RoundBit
  cin : Wire
  counterLow : List AddBit
  counterHigh : AddBit
  active : Wire
  compareCin : Wire
  done : Wire
  swap : Wire
  subtract : Wire
  oddWork : Wire
  bothWork : Wire

namespace KaliskiRoundLayout

def data (L : KaliskiRoundLayout) : RoundDataLayout := ⟨L.low++[L.high],L.cin⟩
def counter (L : KaliskiRoundLayout) : AdderLayout := ⟨L.counterLow++[L.counterHigh],L.active⟩

/-- 更新后的 k 在 counter.out；比较借用旧的空银行，cin 单独保持为零。 -/
def comparator (L : KaliskiRoundLayout) : AdderLayout :=
  { L.counter.swapCounter with cin:=L.compareCin }

def u (L : KaliskiRoundLayout) : List Wire := L.data.u
def v (L : KaliskiRoundLayout) : List Wire := L.data.v
def r (L : KaliskiRoundLayout) : List Wire := L.data.r
def s (L : KaliskiRoundLayout) : List Wire := L.data.s
def k (L : KaliskiRoundLayout) : List Wire := L.counter.x
def kNext (L : KaliskiRoundLayout) : List Wire := L.counter.out

def scratch (L : KaliskiRoundLayout) : List Wire :=
  L.data.work ++ L.counter.y ++ L.counter.carry ++ [L.active,L.compareCin,L.oddWork,L.bothWork]

def wires (L : KaliskiRoundLayout) : List Wire :=
  [L.done,L.swap,L.subtract,L.oddWork,L.bothWork,L.compareCin] ++ L.data.wires ++ L.counter.wires

/-- 下一轮仅交换计数器两份银行的角色；数据及算术工作区保持相同位置。 -/
def swapCounter (L : KaliskiRoundLayout) : KaliskiRoundLayout :=
  { L with
    counterLow := L.counterLow.map (fun b => {b with x:=b.out,out:=b.x})
    counterHigh := {L.counterHigh with x:=L.counterHigh.out,out:=L.counterHigh.x} }

def controls (L : KaliskiRoundLayout) : List Wire :=
  [L.active,L.done,L.swap,L.subtract,L.oddWork,L.bothWork,L.compareCin]

theorem data_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) : L.data.wires.Nodup :=
  (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).2.1

theorem counter_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) : L.counter.wires.Nodup :=
  (List.nodup_append'.mp hnd).2.1

theorem controls_data_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) :
    (L.controls++L.data.wires).Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have hh := List.nodup_iff_count.mp hnd w
  simp only [wires,controls,List.count_append,List.count_cons,List.count_nil,counter,AdderLayout.wires] at hh ⊢
  omega

theorem control_not_data (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) (c : Wire) (hc : c∈L.controls) :
    c∉L.data.wires := List.disjoint_left.mp (List.nodup_append'.mp (L.controls_data_nodup hnd)).2.2 hc

theorem comparator_nodup (L : KaliskiRoundLayout) (hnd : L.wires.Nodup) :
    (L.active::L.comparator.wires).Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have hh := List.nodup_iff_count.mp hnd w
  have hp := L.counter.swapCounter_perm.count_eq w
  simp only [comparator,AdderLayout.wires,List.count_cons,AdderLayout.swapCounter] at hp ⊢
  simp only [wires,List.count_append,List.count_cons,List.count_nil,counter,AdderLayout.wires] at hh hp ⊢
  omega

theorem comparator_fields (L : KaliskiRoundLayout) :
    L.comparator.x=L.kNext ∧ L.comparator.out=L.k ∧
    L.comparator.y=L.counter.y ∧ L.comparator.carry=L.counter.carry ∧
    L.comparator.cin=L.compareCin ∧ L.comparator.width=L.counter.width := by
  have h := L.counter.swapCounter_fields
  exact ⟨h.1,h.2.1,h.2.2.1,h.2.2.2.1,rfl,h.2.2.2.2.2⟩

theorem data_reg_length (L : KaliskiRoundLayout) (f : RoundField) :
    (L.data.reg f).length=L.low.length+1 := by
  simp [RoundDataLayout.reg,data]

end KaliskiRoundLayout

/-- 非空小端寄存器的最低位等于读值的奇偶位。 -/
theorem regValue_headBit (r : List Wire) (hn : r≠[]) (s : BasisState) :
    s r.head! = decide (regValue r s%2≠0) := by
  cases r with
  | nil => contradiction
  | cons a r => cases ha : s a <;> simp [regValue,ha]


/-- 先保存奇偶条件，直接把受控比较 XOR 到记录位，再清条件；不生成差寄存器。 -/
def recordRound (L : KaliskiRoundLayout) : Program := prog {
  let uOdd := L.u.head!;
  let vOdd := L.v.head!;
  let activeUOdd := L.oddWork;
  let bothOdd := L.bothWork;
  let carry := L.data.reg .carry;
  CCX L.active uOdd activeUOdd;         -- activeUOdd = active AND (u 为奇数)
  CCX activeUOdd vOdd bothOdd;          -- bothOdd = active AND (u、v 均为奇数)
  CX bothOdd L.subtract;                -- 保存本轮是否需要相减
  CX activeUOdd L.swap;
  compareLt(some bothOdd, L.v, L.u, carry, L.cin, L.swap);  -- swap ^= bothOdd AND [v<u]；输入与进位工作区恢复。
  -- swap = activeUOdd XOR (bothOdd AND v<u)，决定先交换哪组数据。
  CCX activeUOdd vOdd bothOdd;          -- 临时条件清零；swap/subtract 保留
  CCX L.active uOdd activeUOdd;
}

/-- Proof-facing expansion of the readable program; the instruction sequence is unchanged. -/
theorem recordRound_program (L : KaliskiRoundLayout) :
    recordRound L =
  [.CCX L.active L.u.head! L.oddWork, .CCX L.oddWork L.v.head! L.bothWork,
   .CX L.bothWork L.subtract, .CX L.oddWork L.swap] ++
  compareLt (some L.bothWork) L.v L.u (L.data.reg .carry) L.cin L.swap ++
  [.CCX L.oddWork L.v.head! L.bothWork, .CCX L.active L.u.head! L.oddWork] := by
  simp only [recordRound, List.append_assoc]
  rfl

/-- 只翻转活动辅助位，既用于装入 !done，也用于恢复 done 后的清理。 -/
def loadActive (L : KaliskiRoundLayout) : Program := [.X L.active,.CX L.done L.active]

def roundActiveXor (L : KaliskiRoundLayout) (i : Nat) : Program :=
  counterActiveXor L.comparator L.active i

/-- 终止轮先更新并计数，再改变 done；最后用 i<新 k 清理活动工作位。 -/
def kaliskiRound (L : KaliskiRoundLayout) (i : Nat) : Program := prog {
  let vZeroBits := L.data.zeroBits .v; -- 将 v 的每一位接到零检测工作位。
  loadActive(L);                                         -- active = NOT done
  recordRound(L);                                        -- 保存 swap/subtract，供日后恢复
  kaliskiBodyProgram(L.data, L.active, L.swap, L.subtract); -- 按条件更新 u/v/r/s
  counterInc(L.counter);                                 -- kNext = k+active，旧 k 银行清零
  zeroControlled(L.active, L.done, vZeroBits);             -- 活动轮的 v=0 时，将 done 置 1
  roundActiveXor(L, i);                                   -- 由 i<kNext 重算 active 并清零
}

/-- 逆轮先由新 k 恢复活动位和旧 done，再恢复数据/计数，最后清两位记录。 -/
def kaliskiUnround (L : KaliskiRoundLayout) (i : Nat) : Program := prog {
  let vZeroBits := L.data.zeroBits .v;
  roundActiveXor(L, i);                                   -- 从 kNext 恢复该轮 active
  zeroControlled(L.active, L.done, vZeroBits);             -- 恢复轮前 done
  kaliskiUnbodyProgram(L.data, L.active, L.swap, L.subtract); -- 恢复 u/v/r/s
  counterDec(L.counter.swapCounter);                      -- 恢复 k，清空 kNext 银行
  recordRound(L);                                        -- 从已恢复数据重算并清 swap/subtract
  loadActive(L);                                         -- active 清零
}

end ECDSAAdd.Arithmetic
