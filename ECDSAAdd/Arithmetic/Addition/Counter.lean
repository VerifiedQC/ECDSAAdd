import ECDSAAdd.Arithmetic.Addition.Layout

/-!
10 位计数原语复用 AdderLayout。常用接口 counterInc_spec / counterDec_spec 从
`{{ x=K, y=0, cin=C, out=0, carry=0 }}` 出发，清空 x 并把结果写入 out。
结果分别为 (K+C) mod 1024 和 (K+1024−C) mod 1024；即使 C=false 也交换角色。
下层 XOR 接口保留来源，用于第二次前向调用清除旧值；不反转测量程序。
-/

namespace ECDSAAdd.Arithmetic
open GateProof

private theorem counter_perm (L : AdderLayout) :
    ((L.cin::L.y) ++ (L.x ++ L.out ++ L.carry)).Perm L.wires := by
  apply List.perm_iff_count.mpr
  intro w
  rcases L with ⟨bs, cin⟩
  induction bs with
  | nil => simp [AdderLayout.y, AdderLayout.x, AdderLayout.out, AdderLayout.carry, AdderLayout.wires, addWires]
  | cons b bs ih =>
    simp [AdderLayout.y, AdderLayout.x, AdderLayout.out, AdderLayout.carry,
      AdderLayout.wires, addWires, List.count_cons] at ih ⊢
    omega

/-- 翻转计数器的 cin 和 y，为补码减一准备输入。

参数：

- `L`：计数器借用的加法布局；本函数只翻转 cin 和辅助寄存器 y，为补码减一做准备。
-/
private def counterFlip (L : AdderLayout) : Program := notRegister (L.cin::L.y)

private theorem counterFlip_spec (L : AdderLayout) (hnd : L.wires.Nodup)
    (K Y O : Nat) (C : Bool) :
    {{ L.x=K, L.y=Y, L.cin=C, L.out=O, L.carry=0 }} counterFlip L
    {{ L.x=K, L.y=(2^L.width-1-Y), L.cin=(!C), L.out=O, L.carry=0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  obtain ⟨⟨⟨⟨hx, hy⟩, hc⟩, ho⟩, hcarry⟩ := h
  have hn := List.nodup_append'.mp ((counter_perm L).nodup_iff.mpr hnd)
  rw [counterFlip, notRegister_correct _ hn.1]
  have keep (r : List Wire) (hr : r ⊆ L.x ++ L.out ++ L.carry) :
      regValue r (fun w => if w ∈ L.cin::L.y then !s.basis w else s.basis w) = regValue r s.basis :=
    regValue_congr _ _ _ (by
      intro w hw
      simp [List.disjoint_right.mp hn.2.2 (hr hw)])
  refine ⟨rfl, ⟨⟨⟨?_, ?_⟩, ?_⟩, ?_⟩, ?_⟩
  · exact (keep L.x (by intro w hw; simp [hw])).trans hx
  · change regValue L.y (fun w => if w ∈ L.cin::L.y then !s.basis w else s.basis w) = _
    rw [regValue_congr L.y _ (fun w => !s.basis w) (by intro w hw; simp [hw]), regValue_complement, hy]
    simp [AdderLayout.y, AdderLayout.width]
  · simp [hc]
  · exact (keep L.out (by intro w hw; simp [hw])).trans ho
  · exact (keep L.carry (by intro w hw; simp [hw])).trans hcarry

/-- 受 L.cin 控制的计数结果 XOR 输出：L.out ^= (L.x+L.cin) mod 2^n，n=L.width。
L.x/L.cin 保持，L.y/L.carry 初始为零并恢复；此模块用其实现 10 位活动轮计数。

参数：

- `L`：计数线路布局：x 保存当前计数，cin 是是否增减一的控制位，out 接收 XOR 结果，y/carry 是零工作寄存器。
-/
def counterIncXor (L : AdderLayout) : Program := add L

/-- 受 L.cin 控制的减一结果 XOR 输出：L.out ^= (L.x−L.cin) mod 2^n，n=L.width。
L.x/L.cin 保持，L.y/L.carry 初始为零并恢复；L.cin 的值取 0 或 1。

参数：

- `L`：计数线路布局：x 保存当前计数，cin 是是否增减一的控制位，out 接收 XOR 结果，y/carry 是零工作寄存器。
-/
def counterDecXor (L : AdderLayout) : Program := counterFlip L ++ add L ++ counterFlip L

theorem counterIncXor_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 }} counterIncXor L
    {{ L.x=K, L.y=0, L.cin=C, L.out=(O ^^^ ((K+C.toNat)%1024)), L.carry=0 }} := by
  simpa only [counterIncXor, hw, Nat.add_zero] using add_spec L hnd K 0 O C

-- Complement inputs, add, then restore the complemented workspace.
private theorem counter_prepare (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 }} counterFlip L
    {{ L.x=K, L.y=1023, L.cin=(!C), L.out=O, L.carry=0 }} := by
  simpa only [hw, Nat.sub_zero] using counterFlip_spec L hnd K 0 O C

private theorem counter_subtract (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool) :
    {{ L.x=K, L.y=1023, L.cin=(!C), L.out=O, L.carry=0 }} add L
    {{ L.x=K, L.y=1023, L.cin=(!C), L.out=(O ^^^ ((K+1024-C.toNat)%1024)), L.carry=0 }} := by
  have he : K+1023+(!C).toNat = K+1024-C.toNat := by
    cases C <;> simp [Bool.toNat]
  simpa only [hw, he] using add_spec L hnd K 1023 O (!C)

private theorem counter_restore (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool) :
    {{ L.x=K, L.y=1023, L.cin=(!C), L.out=O, L.carry=0 }} counterFlip L
    {{ L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 }} := by
  simpa only [hw, Bool.not_not] using counterFlip_spec L hnd K 1023 O (!C)

theorem counterDecXor_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K O : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 }} counterDecXor L
    {{ L.x=K, L.y=0, L.cin=C, L.out=(O ^^^ ((K+1024-C.toNat)%1024)), L.carry=0 }} := by
  let result := O ^^^ ((K+1024-C.toNat)%1024)
  simpa only [counterDecXor, List.append_assoc] using (hoare_steps {
    Precondition { L.x=K, L.y=0, L.cin=C, L.out=O, L.carry=0 };

    after command { call (counterFlip L); }
    get { L.x=K, L.y=1023, L.cin=(!C), L.out=O, L.carry=0 } by exact counter_prepare L hnd hw K O C;

    after command { call (add L); }
    get { L.x=K, L.y=1023, L.cin=(!C), L.out=result, L.carry=0 } by exact counter_subtract L hnd hw K O C;

    after command { call (counterFlip L); }
    get { L.x=K, L.y=0, L.cin=C, L.out=result, L.carry=0 } by exact counter_restore L hnd hw K result C;

    Conclusion { L.x=K, L.y=0, L.cin=C, L.out=result, L.carry=0 };
  })

private theorem counter_wires (L : AdderLayout) (hw : L.width=10) :
    wires (counterIncXor L) = L.wires.toFinset ∧ wires (counterDecXor L) = L.wires.toFinset := by
  have ha : wires (add L) = L.wires.toFinset := by
    cases L with
    | mk bs cin =>
      cases bs with
      | nil => simp [AdderLayout.width] at hw
      | cons b bs => exact rippleAdder_wires b bs cin
  have hs : (L.cin::L.y).toFinset ⊆ L.wires.toFinset := by
    intro w hw
    exact List.mem_toFinset.mpr ((counter_perm L).mem_iff.mp (List.mem_append_left _ (List.mem_toFinset.mp hw)))
  refine ⟨ha, ?_⟩
  rw [counterDecXor, wires_append, wires_append, counterFlip, notRegister_wires, ha]
  rw [Finset.union_eq_right.mpr hs, Finset.union_eq_left.mpr hs]

theorem counterXor_resources (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10) :
    toffoliCount (counterIncXor L) = 10 ∧ measurementCount (counterIncXor L) = 10 ∧
    qubitCount (counterIncXor L) = 41 ∧
    toffoliCount (counterDecXor L) = 10 ∧ measurementCount (counterDecXor L) = 10 ∧
    qubitCount (counterDecXor L) = 41 := by
  have ha := add_resources L hnd
  have hf := notRegister_counts (L.cin::L.y)
  have hlen : L.wires.length = 41 := by
    simp only [AdderLayout.wires, List.length_cons, addWires_length]
    change 4*L.width+1=41
    rw [hw]
  have hi : qubitCount (counterIncXor L) = 41 := by
    rw [qubitCount, (counter_wires L hw).1, List.toFinset_card_of_nodup hnd, hlen]
  have hd : qubitCount (counterDecXor L) = 41 := by
    rw [qubitCount, (counter_wires L hw).2, List.toFinset_card_of_nodup hnd, hlen]
  refine ⟨by simpa only [hw] using ha.1, by simpa only [hw] using ha.2.1, hi, ?_, ?_, hd⟩
  · simp only [counterDecXor, toffoliCount_append, counterFlip, hf.1, ha.1, hw]
  · simp only [counterDecXor, measurementCount_append, counterFlip, hf.2, ha.2.1, hw]

def AdderLayout.swapCounter (L : AdderLayout) : AdderLayout :=
  { L with bits := L.bits.map (fun b => { b with x := b.out, out := b.x }) }

theorem AdderLayout.swapCounter_fields (L : AdderLayout) :
    L.swapCounter.x = L.out ∧ L.swapCounter.out = L.x ∧ L.swapCounter.y = L.y ∧
    L.swapCounter.carry = L.carry ∧ L.swapCounter.cin = L.cin ∧ L.swapCounter.width = L.width := by
  simp [AdderLayout.swapCounter, AdderLayout.x, AdderLayout.y, AdderLayout.out,
    AdderLayout.carry, AdderLayout.width, List.map_map, Function.comp_def]

theorem AdderLayout.swapCounter_perm (L : AdderLayout) : L.swapCounter.wires.Perm L.wires := by
  apply List.perm_iff_count.mpr
  intro w
  rcases L with ⟨bs, cin⟩
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    simp [AdderLayout.swapCounter, AdderLayout.wires, addWires, List.count_cons] at ih ⊢
    omega

/-- 将计数移入空银行：(L.x=K,L.out=0) → (L.x=0,L.out=(K+L.cin) mod 2^n)，n=L.width。
L.cin 保持，L.y/L.carry 初始为零并恢复；下一轮需交换 x/out 的角色。

参数：

- `L`：双寄存器计数布局：x 保存当前计数，out 是初始为空的下一计数寄存器，cin 控制是否增减一，y/carry 是零工作区。
-/
def counterInc (L : AdderLayout) : Program := counterIncXor L ++ counterDecXor L.swapCounter

/-- 将减量后的计数移入空银行：(L.x=K,L.out=0) → (L.x=0,L.out=(K−L.cin) mod 2^n)，n=L.width。
L.cin 保持，L.y/L.carry 初始为零并恢复；与 counterInc 配合恢复先前计数。

参数：

- `L`：双寄存器计数布局：x 保存当前计数，out 是初始为空的下一计数寄存器，cin 控制是否增减一，y/carry 是零工作区。
-/
def counterDec (L : AdderLayout) : Program := counterDecXor L ++ counterIncXor L.swapCounter

-- Stage rules for moving the counter into the empty output bank.
private theorem counter_write_inc (L : AdderLayout) (hnd : L.wires.Nodup)
    (hw : L.width=10) (K : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }} counterIncXor L
    {{ L.x=K, L.y=0, L.cin=C, L.out=((K+C.toNat)%1024), L.carry=0 }} := by
  simpa only [Nat.zero_xor] using counterIncXor_spec L hnd hw K 0 C

private theorem counter_clear_after_inc (L : AdderLayout) (hnd : L.wires.Nodup)
    (hw : L.width=10) (K : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=((K+C.toNat)%1024), L.carry=0 }}
    counterDecXor L.swapCounter
    {{ L.x=0, L.y=0, L.cin=C, L.out=((K+C.toNat)%1024), L.carry=0 }} := by
  intro s m h
  have hx : regValue L.x s.basis = K := h.1.1.1.1
  have hk : K<1024 := by
    have hh := regValue_lt L.x s.basis
    rw [hx] at hh
    simpa only [AdderLayout.x, List.length_map, show L.bits.length=10 from hw] using hh
  have hc : (((K+C.toNat)%1024)+1024-C.toNat)%1024=K := by
    cases C <;> simp [Bool.toNat] <;> omega
  obtain ⟨sx, so, sy, sc, si, sw⟩ := AdderLayout.swapCounter_fields L
  have clear := counterDecXor_spec L.swapCounter ((AdderLayout.swapCounter_perm L).nodup_iff.mpr hnd)
    (sw.trans hw) ((K+C.toNat)%1024) K C
  simp only [sx, so, sy, sc, si, hc, Nat.xor_self] at clear
  obtain ⟨phase, post⟩ := clear s m
    ⟨⟨⟨⟨h.1.2, h.1.1.1.2⟩, h.1.1.2⟩, h.1.1.1.1⟩, h.2⟩
  exact ⟨phase, ⟨⟨⟨⟨post.1.2, post.1.1.1.2⟩, post.1.1.2⟩, post.1.1.1.1⟩, post.2⟩⟩

private theorem counter_write_dec (L : AdderLayout) (hnd : L.wires.Nodup)
    (hw : L.width=10) (K : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }} counterDecXor L
    {{ L.x=K, L.y=0, L.cin=C, L.out=((K+1024-C.toNat)%1024), L.carry=0 }} := by
  simpa only [Nat.zero_xor] using counterDecXor_spec L hnd hw K 0 C

private theorem counter_clear_after_dec (L : AdderLayout) (hnd : L.wires.Nodup)
    (hw : L.width=10) (K : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=((K+1024-C.toNat)%1024), L.carry=0 }}
    counterIncXor L.swapCounter
    {{ L.x=0, L.y=0, L.cin=C, L.out=((K+1024-C.toNat)%1024), L.carry=0 }} := by
  intro s m h
  have hx : regValue L.x s.basis = K := h.1.1.1.1
  have hk : K<1024 := by
    have hh := regValue_lt L.x s.basis
    rw [hx] at hh
    simpa only [AdderLayout.x, List.length_map, show L.bits.length=10 from hw] using hh
  have hc : (((K+1024-C.toNat)%1024)+C.toNat)%1024=K := by
    cases C <;> simp [Bool.toNat] <;> omega
  obtain ⟨sx, so, sy, sc, si, sw⟩ := AdderLayout.swapCounter_fields L
  have clear := counterIncXor_spec L.swapCounter ((AdderLayout.swapCounter_perm L).nodup_iff.mpr hnd)
    (sw.trans hw) ((K+1024-C.toNat)%1024) K C
  simp only [sx, so, sy, sc, si, hc, Nat.xor_self] at clear
  obtain ⟨phase, post⟩ := clear s m
    ⟨⟨⟨⟨h.1.2, h.1.1.1.2⟩, h.1.1.2⟩, h.1.1.1.1⟩, h.2⟩
  exact ⟨phase, ⟨⟨⟨⟨post.1.2, post.1.1.1.2⟩, post.1.1.2⟩, post.1.1.1.1⟩, post.2⟩⟩

theorem counterInc_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }} counterInc L
    {{ L.x=0, L.y=0, L.cin=C, L.out=((K+C.toNat)%1024), L.carry=0 }} := by
  let result := (K+C.toNat)%1024
  exact hoare_steps {
    Precondition { L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 };

    after command { call (counterIncXor L); }
    get { L.x=K, L.y=0, L.cin=C, L.out=result, L.carry=0 } by exact counter_write_inc L hnd hw K C;

    after command { call (counterDecXor L.swapCounter); }
    get { L.x=0, L.y=0, L.cin=C, L.out=result, L.carry=0 } by exact counter_clear_after_inc L hnd hw K C;

    Conclusion { L.x=0, L.y=0, L.cin=C, L.out=result, L.carry=0 };
  }

theorem counterDec_spec (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10)
    (K : Nat) (C : Bool) :
    {{ L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 }} counterDec L
    {{ L.x=0, L.y=0, L.cin=C, L.out=((K+1024-C.toNat)%1024), L.carry=0 }} := by
  let result := (K+1024-C.toNat)%1024
  exact hoare_steps {
    Precondition { L.x=K, L.y=0, L.cin=C, L.out=0, L.carry=0 };

    after command { call (counterDecXor L); }
    get { L.x=K, L.y=0, L.cin=C, L.out=result, L.carry=0 } by exact counter_write_dec L hnd hw K C;

    after command { call (counterIncXor L.swapCounter); }
    get { L.x=0, L.y=0, L.cin=C, L.out=result, L.carry=0 } by exact counter_clear_after_dec L hnd hw K C;

    Conclusion { L.x=0, L.y=0, L.cin=C, L.out=result, L.carry=0 };
  }

theorem counter_resources (L : AdderLayout) (hnd : L.wires.Nodup) (hw : L.width=10) :
    toffoliCount (counterInc L) = 20 ∧ measurementCount (counterInc L) = 20 ∧
    qubitCount (counterInc L) = 41 ∧
    toffoliCount (counterDec L) = 20 ∧ measurementCount (counterDec L) = 20 ∧
    qubitCount (counterDec L) = 41 := by
  have h := counterXor_resources L hnd hw
  have hs := counterXor_resources L.swapCounter ((AdderLayout.swapCounter_perm L).nodup_iff.mpr hnd)
    ((AdderLayout.swapCounter_fields L).2.2.2.2.2.trans hw)
  have hwires : L.swapCounter.wires.toFinset = L.wires.toFinset := by
    ext w
    simpa only [List.mem_toFinset] using (AdderLayout.swapCounter_perm L).mem_iff
  have hc := counter_wires L hw
  have hcs := counter_wires L.swapCounter ((AdderLayout.swapCounter_fields L).2.2.2.2.2.trans hw)
  have hi : qubitCount (counterInc L) = 41 := by
    rw [qubitCount, counterInc, wires_append, hc.1, hcs.2, hwires, Finset.union_self]
    simpa only [qubitCount, hc.1] using h.2.2.1
  have hd : qubitCount (counterDec L) = 41 := by
    rw [qubitCount, counterDec, wires_append, hc.2, hcs.1, hwires, Finset.union_self]
    simpa only [qubitCount, hc.1] using h.2.2.1
  exact ⟨by simp only [counterInc, toffoliCount_append, h.1, hs.2.2.2.1],
    by simp only [counterInc, measurementCount_append, h.2.1, hs.2.2.2.2.1], hi,
    by simp only [counterDec, toffoliCount_append, h.2.2.2.1, hs.1],
    by simp only [counterDec, measurementCount_append, h.2.2.2.2.1, hs.2.1], hd⟩

/-- 移动计数器仍只使用同一布局的线路。 -/
theorem counterMove_wires (L : AdderLayout) (hw : L.width=10) :
    wires (counterInc L)=L.wires.toFinset ∧ wires (counterDec L)=L.wires.toFinset := by
  have hc := counter_wires L hw
  have hs := counter_wires L.swapCounter ((AdderLayout.swapCounter_fields L).2.2.2.2.2.trans hw)
  have he : L.swapCounter.wires.toFinset=L.wires.toFinset := by
    ext w
    simpa only [List.mem_toFinset] using (AdderLayout.swapCounter_perm L).mem_iff
  simp only [counterInc,counterDec,wires_append,hc.1,hc.2,hs.1,hs.2,he,Finset.union_self,and_self]

end ECDSAAdd.Arithmetic
