import ECDSAAdd.Arithmetic.ModularInverse.RoundSpec

namespace ECDSAAdd.Arithmetic

/-- 每轮独占两根历史线路；数据与计数工作区逐轮复用。 -/
structure RoundRecord where
  swap : Wire
  subtract : Wire

def RoundRecord.wires (r : RoundRecord) : List Wire := [r.swap,r.subtract]

namespace KaliskiRoundLayout

def withRecord (L : KaliskiRoundLayout) (r : RoundRecord) : KaliskiRoundLayout :=
  {L with swap:=r.swap,subtract:=r.subtract}

def sharedWires (L : KaliskiRoundLayout) : List Wire :=
  [L.done,L.oddWork,L.bothWork,L.compareCin]++L.data.wires++L.counter.wires

def tapeWires (L : KaliskiRoundLayout) (rs : List RoundRecord) : List Wire :=
  rs.flatMap RoundRecord.wires++L.sharedWires

theorem withRecord_perm (L : KaliskiRoundLayout) (r : RoundRecord) :
    (L.withRecord r).wires.Perm (r.wires++L.sharedWires) := by
  apply List.perm_iff_count.mpr
  intro w
  simp [wires,withRecord,sharedWires,RoundRecord.wires,List.count_cons,data,counter]
  omega

theorem swapCounter_data (L : KaliskiRoundLayout) : L.swapCounter.data=L.data := rfl

theorem swapCounter_counter (L : KaliskiRoundLayout) : L.swapCounter.counter=L.counter.swapCounter := by
  simp [swapCounter,counter,AdderLayout.swapCounter]

theorem shared_swap_perm (L : KaliskiRoundLayout) : L.swapCounter.sharedWires.Perm L.sharedWires := by
  change (_++L.swapCounter.data.wires++L.swapCounter.counter.wires).Perm (_++L.data.wires++L.counter.wires)
  rw [L.swapCounter_data,L.swapCounter_counter]
  exact List.Perm.append_left _ L.counter.swapCounter_perm

theorem withRecord_nodup (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) : (L.withRecord r).wires.Nodup := by
  apply (L.withRecord_perm r).nodup_iff.mpr
  apply List.nodup_iff_count.mpr
  intro w
  have h := List.nodup_iff_count.mp hnd w
  simp only [tapeWires,List.flatMap_cons,List.count_append] at h ⊢
  omega

theorem tail_nodup (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) : (L.swapCounter.tapeWires rs).Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have h := List.nodup_iff_count.mp hnd w
  have hp := L.shared_swap_perm.count_eq w
  simp only [tapeWires,List.flatMap_cons,List.count_append] at h ⊢
  omega

end KaliskiRoundLayout

def loopEndLayout (L : KaliskiRoundLayout) : Nat → KaliskiRoundLayout
  | 0 => L
  | n+1 => loopEndLayout L.swapCounter n

/-- 从轮号 i 起执行 rs.length 轮 Kaliski 更新，更新 u/v/r/s 和活动轮计数 k；v=0 后数值不再变化。
rs 每项保存一轮的 swap/subtract 两位记录，供恢复使用。 -/
def kaliskiLoop (L : KaliskiRoundLayout) (i : Nat) (rs : List RoundRecord) : Program := prog {
  for j in range(rs.length) {
    let round := (loopEndLayout L j).withRecord rs[j]; -- 第 j 轮接线，分支记录用 rs[j]。
    kaliskiRound(round, i+j);  -- 更新 u/v/r/s/k/done，保存本轮分支。
  };
}

theorem kaliskiLoop_nil (L : KaliskiRoundLayout) (i : Nat) : kaliskiLoop L i [] = [] := rfl

theorem kaliskiLoop_cons (L : KaliskiRoundLayout) (i : Nat) (r : RoundRecord) (rs : List RoundRecord) :
    kaliskiLoop L i (r :: rs) =
      kaliskiRound (L.withRecord r) i ++ kaliskiLoop L.swapCounter (i+1) rs := by
  simp [kaliskiLoop, List.ofFn_succ, loopEndLayout, Nat.add_comm, Nat.add_left_comm]

/-- 用 rs 中匹配的分支记录，逆序撤销从轮号 i 开始的 Kaliski 循环，并清零 rs。 -/
def kaliskiUnloop (L : KaliskiRoundLayout) (i : Nat) (rs : List RoundRecord) : Program := prog {
  for j in reversed(range(rs.length)) {
    let round := (loopEndLayout L j).withRecord rs[j]; -- 第 j 轮接线，分支记录用 rs[j]。
    kaliskiUnround(round, i+j);  -- 恢复轮前状态，清零 rs[j]。
  };
}

theorem kaliskiUnloop_nil (L : KaliskiRoundLayout) (i : Nat) : kaliskiUnloop L i [] = [] := rfl

theorem kaliskiUnloop_cons (L : KaliskiRoundLayout) (i : Nat) (r : RoundRecord) (rs : List RoundRecord) :
    kaliskiUnloop L i (r :: rs) =
      kaliskiUnloop L.swapCounter (i+1) rs ++ kaliskiUnround (L.withRecord r) i := by
  simp [kaliskiUnloop, List.ofFn_succ, loopEndLayout, List.reverse_cons, List.flatten_append,
    Nat.add_comm, Nat.add_left_comm]

def kaliskiCodes : Nat → KState → List (Bool×Bool)
  | 0,_ => []
  | n+1,z => kaliskiCode z::kaliskiCodes n (kaliskiStep z)

/-- 两位记录按轮保存精确布尔值，不由已更新数据重新猜测。 -/
def TapeValues : List RoundRecord → List (Bool×Bool) → BasisState → Prop
  | [],[],_ => True
  | r::rs,c::cs,st => st r.swap=c.1 ∧ st r.subtract=c.2 ∧ TapeValues rs cs st
  | _,_,_ => False

theorem TapeValues.congr (rs : List RoundRecord) (cs : List (Bool×Bool)) (s t : BasisState)
    (h : TapeValues rs cs s) (he : ∀ w, w∈rs.flatMap RoundRecord.wires → t w=s w) : TapeValues rs cs t := by
  induction rs generalizing cs with
  | nil => cases cs <;> exact h
  | cons r rs ih =>
    cases cs with
    | nil => exact h
    | cons c cs =>
      refine ⟨(he _ (by simp [RoundRecord.wires])).trans h.1,
        (he _ (by simp [RoundRecord.wires])).trans h.2.1,ih cs h.2.2 ?_⟩
      intro w hw
      exact he w (by simp [hw])

end ECDSAAdd.Arithmetic
