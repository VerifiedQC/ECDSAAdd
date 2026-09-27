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


/-- L.subtract ^= active AND uOdd AND vOdd；
L.swap ^= (active AND uOdd) XOR (active AND uOdd AND vOdd AND [v<u])。
uOdd/vOdd 表示 u/v 是否为奇数。 -/
def recordRound (L : KaliskiRoundLayout) : Program := prog {
  let uOdd := L.u.head!; -- u 的最低位：0 为偶数，1 为奇数。
  let vOdd := L.v.head!; -- v 的最低位：0 为偶数，1 为奇数。
  let activeUOdd := L.oddWork; -- 用于保存 active AND uOdd。
  let bothOdd := L.bothWork; -- 用于保存 active AND uOdd AND vOdd。
  let carry := L.data.reg .carry; -- 比较 v<u 所用的进位工作区。
  CCX L.active uOdd activeUOdd;         -- activeUOdd = active AND uOdd
  CCX activeUOdd vOdd bothOdd;          -- bothOdd = activeUOdd AND vOdd
  CX bothOdd L.subtract;                -- subtract ^= bothOdd
  CX activeUOdd L.swap;
  compareLt(some bothOdd, L.v, L.u, carry, L.cin, L.swap);  -- swap ^= bothOdd AND [v<u]
  CCX activeUOdd vOdd bothOdd;          -- 清零 bothOdd。
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

/-- L.active ^= NOT L.done；done=0 表示尚未结束，done=1 表示已结束。 -/
def loadActive (L : KaliskiRoundLayout) : Program := [.X L.active,.CX L.done L.active]

/-- L.active ^= [i<kNext]，i 是当前轮号，kNext 是本轮更新后的活动轮计数。 -/
def roundActiveXor (L : KaliskiRoundLayout) (i : Nat) : Program :=
  counterActiveXor L.comparator L.active i

/-- 执行第 i 轮 Kaliski 更新：done=0 时更新 u/v/r/s 并令 k←k+1，新 v=0 时置 done=1。
done=1 时数值不变；swap/subtract 保存本轮分支，计数转入 kNext。 -/
def kaliskiRound (L : KaliskiRoundLayout) (i : Nat) : Program := prog {
  let vZeroBits := L.data.zeroBits .v; -- v 与零检测工作位的接线。
  loadActive(L);                                         -- active = NOT done
  recordRound(L);                                        -- 保存 swap/subtract。
  kaliskiBodyProgram(L.data, L.active, L.swap, L.subtract); -- 按条件更新 u/v/r/s。
  counterInc(L.counter);                                 -- kNext = k+active，清零旧 k。
  zeroControlled(L.active, L.done, vZeroBits);             -- active=1 且新 v=0 时置 done=1。
  roundActiveXor(L, i);                                   -- 由 i<kNext 清零 active。
}

/-- 用第 i 轮匹配的 swap/subtract 记录恢复轮前 u/v/r/s、k 和 done，并清零记录。 -/
def kaliskiUnround (L : KaliskiRoundLayout) (i : Nat) : Program := prog {
  let vZeroBits := L.data.zeroBits .v; -- v 与零检测工作位的接线。
  roundActiveXor(L, i);                                   -- active = [i<kNext]
  zeroControlled(L.active, L.done, vZeroBits);             -- 恢复 done。
  kaliskiUnbodyProgram(L.data, L.active, L.swap, L.subtract); -- 恢复 u/v/r/s。
  counterDec(L.counter.swapCounter);                      -- 恢复 k，清零 kNext。
  recordRound(L);                                        -- 清零 swap/subtract。
  loadActive(L);                                         -- 清零 active。
}

end ECDSAAdd.Arithmetic
