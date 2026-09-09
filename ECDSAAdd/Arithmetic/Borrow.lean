import ECDSAAdd.Arithmetic.MaskedAdder
import ECDSAAdd.Arithmetic.Reduction
import ECDSAAdd.Arithmetic.Constant

namespace ECDSAAdd.Arithmetic

/-- 有符号差落在 [-q,q) 时，模 2q 表示的最高位恰好给借位。 -/
theorem subtraction_high (X Y q : Nat) (hq : 0<q) (hlo : Y≤X+q) (hhi : X<Y+q) :
    q ≤ (X+2*q-Y)%(2*q) ↔ X<Y := by
  by_cases h : X<Y
  · rw [Nat.mod_eq_of_lt (show X+2*q-Y<2*q by omega)]
    omega
  · rw [show X+2*q-Y = (X-Y)+2*q by omega, Nat.add_mod_right,
      Nat.mod_eq_of_lt (show X-Y<2*q by omega)]
    omega

/-- 借位 XOR 写出后再次前向减法清空差寄存器。 -/
def borrowXor (L : AdderLayout) (high target : Wire) : Program :=
  sub L ++ [.CX high target] ++ sub L

private def BorrowValues (L : AdderLayout) (target : Wire) (T : Bool) (X Y O : Nat)
    (st : BasisState) : Prop :=
  st target=T ∧ regValue L.x st=X ∧ regValue L.y st=Y ∧ st L.cin=false ∧
    regValue L.out st=O ∧ regValue L.carry st=0

private theorem sub_keep (L : AdderLayout) (target : Wire) (hnd : (target::L.wires).Nodup)
    (T : Bool) (X Y O : Nat) :
    Triple (BorrowValues L target T X Y O) (sub L)
      (BorrowValues L target T X Y (O ^^^ ((X+2^L.width-Y)%2^L.width))) := by
  intro s m h
  have ht := (List.nodup_cons.mp hnd).1
  obtain ⟨hp, hv⟩ := sub_spec L (List.nodup_cons.mp hnd).2 X Y O s m
    ⟨⟨⟨⟨h.2.1,h.2.2.1⟩,h.2.2.2.1⟩,h.2.2.2.2.1⟩,h.2.2.2.2.2⟩
  have he := run_preserves_outside (sub L) m s target
    (by rw [sub, rippleSubtractor_wires]; exact fun h => ht (List.mem_toFinset.mp h))
  exact ⟨hp,he.trans h.1,hv.1.1.1.1,hv.1.1.1.2,hv.1.1.2,hv.1.2,hv.2⟩

private theorem copy_high (L : AdderLayout) (low : List Wire) (high target : Wire)
    (hnd : (target::L.wires).Nodup) (hout : L.out=low++[high])
    (T H : Bool) (X Y O : Nat) (hh : (H=true ↔ 2^low.length≤O)) :
    Triple (BorrowValues L target T X Y O) [.CX high target]
      (BorrowValues L target (T ^^ H) X Y O) := by
  intro s m h
  have he : s.basis high=H := by
    apply Bool.eq_iff_iff.mpr
    rw [regValue_highBit, ← hout, h.2.2.2.2.1]
    exact hh.symm
  have hn := (List.nodup_cons.mp hnd).1
  have keep (r : List Wire) (hr : r⊆L.wires) :
      regValue r (run [.CX high target] m s).basis=regValue r s.basis := by
    apply regValue_congr
    intro w hw
    have hwt : w≠target := fun h => hn (h ▸ hr hw)
    simp [run, writeBit, hwt]
  refine ⟨rfl, ?_, (keep L.x L.reg_subset.1).trans h.2.1,
    (keep L.y L.reg_subset.2.1).trans h.2.2.1, ?_,
    (keep L.out L.reg_subset.2.2.1).trans h.2.2.2.2.1,
    (keep L.carry L.reg_subset.2.2.2).trans h.2.2.2.2.2⟩
  · simp [run, writeBit, he, h.1]
  · have hct : L.cin≠target := fun he => hn (by simp [AdderLayout.wires, ← he])
    simpa [run, writeBit, hct] using h.2.2.2.1

/-- 范围条件允许差为 -2^n，但排除 +2^n，覆盖 10 位计数器的 512 边界。 -/
theorem borrowXor_spec (L : AdderLayout) (low : List Wire) (high target : Wire)
    (hnd : (target::L.wires).Nodup) (hout : L.out=low++[high]) (X Y : Nat) (T : Bool)
    (hlo : Y≤X+2^low.length) (hhi : X<Y+2^low.length) :
    {{ target=T, L.x=X, L.y=Y, L.cin=false, L.out=0, L.carry=0 }} borrowXor L high target
    {{ target=(T ^^ decide (X<Y)), L.x=X, L.y=Y, L.cin=false, L.out=0, L.carry=0 }} := by
  have hwidth : L.width=low.length+1 := by
    have h := congrArg List.length hout
    simpa [AdderLayout.out, AdderLayout.width] using h
  let D := (X+2^L.width-Y)%2^L.width
  have hsign : (decide (X<Y)=true ↔ 2^low.length≤D) := by
    rw [decide_eq_true_eq]
    dsimp [D]
    rw [hwidth, pow_succ, Nat.mul_comm (2^low.length) 2]
    exact (subtraction_high X Y _ (Nat.two_pow_pos _) hlo hhi).symm
  have h1 := sub_keep L target hnd T X Y 0
  simp only [Nat.zero_xor] at h1
  have h2 := copy_high L low high target hnd hout T (decide (X<Y)) X Y D hsign
  have h3 := sub_keep L target hnd (T ^^ decide (X<Y)) X Y D
  simp only [show D ^^^ ((X+2^L.width-Y)%2^L.width)=0 from Nat.xor_self D] at h3
  have hh := h1.seq (h2.seq h3)
  simp only [borrowXor, List.append_assoc]
  intro s m h
  obtain ⟨hp,hv⟩ := hh s m ⟨h.1.1.1.1.1,h.1.1.1.1.2,h.1.1.1.2,h.1.1.2,h.1.2,h.2⟩
  exact ⟨hp, ⟨⟨⟨⟨⟨hv.1,hv.2.1⟩,hv.2.2.1⟩,hv.2.2.2.1⟩,hv.2.2.2.2.1⟩,hv.2.2.2.2.2⟩⟩

private theorem constant_y (L : AdderLayout) (target : Wire) (hnd : (target::L.wires).Nodup)
    (K : Nat) (hk : K<2^L.width) (T : Bool) (X Y O : Nat) :
    Triple (BorrowValues L target T X Y O) (xorConstant L.y K)
      (BorrowValues L target T X (Y ^^^ K) O) := by
  intro s m h
  have ht := (List.nodup_cons.mp hnd).1
  have hi := L.interface_perm.nodup_iff.mpr (List.nodup_cons.mp hnd).2
  have hxy := List.nodup_append'.mp (List.nodup_append'.mp (List.nodup_append'.mp hi).1).1
  have hyrest : L.y.Disjoint (L.out++(L.cin::L.carry)) := by
    have hh : (L.x ++ (L.y ++ (L.out ++ (L.cin::L.carry)))).Nodup := by
      simpa only [List.append_assoc] using hi
    exact (List.nodup_append'.mp (List.nodup_append'.mp hh).2.1).2.2
  obtain ⟨hp,he,hy⟩ := xorConstant_correct L.y hxy.2.1 K
    (by simpa [AdderLayout.y,AdderLayout.width] using hk) s m
  have keep (r : List Wire) (hd : r.Disjoint L.y) :
      regValue r (run (xorConstant L.y K) m s).basis=regValue r s.basis :=
    regValue_congr _ _ _ (fun w hw => he w (List.disjoint_left.mp hd hw))
  have hot : L.out.Disjoint L.y := List.disjoint_left.mpr
    (fun _ ho hy => List.disjoint_left.mp hyrest hy (List.mem_append_left _ ho))
  have hcarry : L.carry.Disjoint L.y := List.disjoint_left.mpr
    (fun _ hc hy => List.disjoint_left.mp hyrest hy (by simp [hc]))
  refine ⟨hp,(he target (fun hm => ht (L.reg_subset.2.1 hm))).trans h.1,
    (keep L.x hxy.2.2).trans h.2.1,?_,
    (he L.cin (fun hm => List.disjoint_left.mp hyrest hm (by simp))).trans h.2.2.2.1,
    (keep L.out hot).trans h.2.2.2.2.1,(keep L.carry hcarry).trans h.2.2.2.2.2⟩
  simpa only [h.2.2.1] using hy

/-- 与经典常量比较，临时常量、差和进位全部恢复为零。 -/
def constantBorrowXor (L : AdderLayout) (high target : Wire) (K : Nat) : Program :=
  xorConstant L.y K ++ borrowXor L high target ++ xorConstant L.y K

theorem constantBorrowXor_spec (L : AdderLayout) (low : List Wire) (high target : Wire)
    (hnd : (target::L.wires).Nodup) (hout : L.out=low++[high]) (X K : Nat) (T : Bool)
    (hk : K<2^L.width) (hlo : K≤X+2^low.length) (hhi : X<K+2^low.length) :
    {{ target=T, L.x=X, L.y=0, L.cin=false, L.out=0, L.carry=0 }} constantBorrowXor L high target K
    {{ target=(T ^^ decide (X<K)), L.x=X, L.y=0, L.cin=false, L.out=0, L.carry=0 }} := by
  have h1 := constant_y L target hnd K hk T X 0 0
  simp only [Nat.zero_xor] at h1
  have h2 : Triple (BorrowValues L target T X K 0) (borrowXor L high target)
      (BorrowValues L target (T ^^ decide (X<K)) X K 0) := by
    simpa only [BorrowValues,Holds.holds,and_assoc] using borrowXor_spec L low high target hnd hout X K T hlo hhi
  have h3 := constant_y L target hnd K hk (T ^^ decide (X<K)) X K 0
  simp only [Nat.xor_self] at h3
  have h := h1.seq (h2.seq h3)
  simpa only [constantBorrowXor,List.append_assoc,BorrowValues,Holds.holds,and_assoc] using h

/-- 固定轮号 i 的活动谓词 XOR：比较阈值是 i+1，k 本身保持。 -/
def counterActiveXor (L : AdderLayout) (high target : Wire) (i : Nat) : Program :=
  constantBorrowXor L high target (i+1) ++ [.X target]

theorem counterActiveXor_spec (L : AdderLayout) (low : List Wire) (high target : Wire)
    (hnd : (target::L.wires).Nodup) (hout : L.out=low++[high]) (hw : L.width=10)
    (K i : Nat) (T : Bool) (hk : K≤512) (hi : i<512) :
    {{ target=T, L.x=K, L.y=0, L.cin=false, L.out=0, L.carry=0 }} counterActiveXor L high target i
    {{ target=(T ^^ decide (i < K)), L.x=K, L.y=0, L.cin=false, L.out=0, L.carry=0 }} := by
  have hlen : low.length=9 := by
    have h := congrArg List.length hout
    simp only [List.length_append,List.length_cons,List.length_nil] at h
    simp only [AdderLayout.out,List.length_map] at h
    change L.width=low.length+1 at h
    omega
  have h1 := constantBorrowXor_spec L low high target hnd hout K (i+1) T
    (by rw [hw]; omega) (by rw [hlen]; omega) (by rw [hlen]; omega)
  intro s m h
  rw [counterActiveXor,run_append,run_take]
  obtain ⟨hp,hv⟩ := h1 s m h
  have hn := (List.nodup_cons.mp hnd).1
  have keep (r : List Wire) (hr : r⊆L.wires) :
      regValue r (run [.X target] (m.drop (measurementCount (constantBorrowXor L high target (i+1))))
        (run (constantBorrowXor L high target (i+1)) m s)).basis =
        regValue r (run (constantBorrowXor L high target (i+1)) m s).basis := by
    apply regValue_congr
    intro w hw
    have hnw : w≠target := fun he => hn (he ▸ hr hw)
    simp [run,writeBit,hnw]
  have hbit : (!(T ^^ decide (K < i+1))) = (T ^^ decide (i < K)) := by
    have he : decide (K < i+1) = !decide (i < K) := by
      apply Bool.eq_iff_iff.mpr
      simp
    rw [he]
    cases T <;> cases decide (i < K) <;> rfl
  refine ⟨hp,⟨⟨⟨⟨⟨?_,(keep L.x L.reg_subset.1).trans hv.1.1.1.1.2⟩,
    (keep L.y L.reg_subset.2.1).trans hv.1.1.1.2⟩,?_⟩,
    (keep L.out L.reg_subset.2.2.1).trans hv.1.2⟩,(keep L.carry L.reg_subset.2.2.2).trans hv.2⟩⟩
  · have ht : (run (constantBorrowXor L high target (i+1)) m s).basis target =
        (T ^^ decide (K < i+1)) := hv.1.1.1.1.1
    simpa only [run,Holds.holds,writeBit,Function.update_self,ht] using hbit
  · have hct : L.cin≠target := fun he => hn (by simp [AdderLayout.wires,← he])
    simpa [run,Holds.holds,writeBit,hct] using hv.1.1.2

end ECDSAAdd.Arithmetic
