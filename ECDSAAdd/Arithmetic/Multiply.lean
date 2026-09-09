import ECDSAAdd.Arithmetic.Double
import ECDSAAdd.Arithmetic.MaskedAccumulate

namespace ECDSAAdd.Arithmetic

private theorem multiply_step (q acc x y : Nat) (b : Bool) :
    (((acc + if b then x else 0)%q) + ((x+x)%q)*y)%q =
      (acc + x*(b.toNat+2*y))%q := by
  calc
    _ = ((acc + if b then x else 0) + (x+x)*y)%q := by
      simp [Nat.add_mod, Nat.mul_mod]
    _ = _ := by
      congr 1
      cases b <;> simp [Bool.toNat] <;> ring


/-- 一位乘数与对应的下一倍数寄存器。只保留倍数链，不保存累加器历史。 -/
structure MulStep where
  bit : Wire
  next : List Wire

def MulStep.wires (b : MulStep) : List Wire := b.bit :: b.next

/-- 两份累加器交替，整条倍数链共用一份模加工作区。返回时逐层清理。 -/
def multiplyLoop (D A : ModLayout) (q : Nat) (src dst : List Wire) : List MulStep → Program
  | [] => copyRegister none A.x dst
  | b :: bs =>
    doubleXor D q src b.next ++ maskedAccumulate A q src b.bit ++
    multiplyLoop D A.swapXOut q b.next dst bs ++
    maskedUnaccumulate A q src b.bit ++ doubleXor D q src b.next

private theorem nodup_of_counts (ambient r : List Wire) (hnd : ambient.Nodup)
    (h : ∀ w, r.count w ≤ ambient.count w) : r.Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  exact (h w).trans (List.nodup_iff_count.mp hnd w)

private theorem disjoint_of_counts (ambient r t : List Wire) (hnd : ambient.Nodup)
    (h : ∀ w, r.count w + t.count w ≤ ambient.count w) : r.Disjoint t :=
  (List.nodup_append'.mp (nodup_of_counts ambient (r++t) hnd (by
    intro w; simpa only [List.count_append] using h w))).2.2

private theorem accum_count (A : ModLayout) (w : Wire) :
    (A.x ++ A.out).count w ≤ A.wires.count w := by
  have h := A.interface_perm.count_eq w
  simp only [List.count_append] at h ⊢
  omega

private theorem swap_clean (A : ModLayout) (v : Nat) (s : BasisState) :
    ModValues A (ModValues.clean 0 0 v) s ↔
      ModValues A.swapXOut (ModValues.clean v 0 0) s := by
  simp only [ModValues.clean_iff, ModLayout.swap_x, ModLayout.swap_y,
    ModLayout.swap_out, ModLayout.swap_work]
  tauto

/-- 任意输出 XOR 更新；返回时除输出外的每根线均恢复原值。 -/
theorem multiplyLoop_correct (bs : List MulStep) (D A : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ D.wires ++ A.wires ++ bs.flatMap MulStep.wires).Nodup)
    (hdim : D.width = A.width) (hs : src.length = A.width+1) (hd : dst.length = A.width+1)
    (hlen : ∀ b ∈ bs, b.next.length = A.width+1)
    (q X Acc : Nat) (hq0 : 0 < q) (hq : q < 2^A.width) (hX : X < q) (hAcc : Acc < q)
    (s : State) (m : List Bool) (hsrc : regValue src s.basis = X)
    (hD : regValue D.wires s.basis = 0) (hA : ModValues A (ModValues.clean Acc 0 0) s.basis)
    (hz : ∀ b ∈ bs, regValue b.next s.basis = 0) :
    (run (multiplyLoop D A q src dst bs) m s).phase = s.phase ∧
    (∀ w, w ∉ dst → (run (multiplyLoop D A q src dst bs) m s).basis w = s.basis w) ∧
    regValue dst (run (multiplyLoop D A q src dst bs) m s).basis =
      regValue dst s.basis ^^^ ((Acc + X * regValue (bs.map MulStep.bit) s.basis)%q) := by
  induction bs generalizing A src X Acc s m with
  | nil =>
    have hc : (A.x ++ dst).Nodup := nodup_of_counts _ _ hnd (by
      intro w
      have ha := accum_count A w
      simp only [List.flatMap_nil, List.count_append, List.count_nil] at ha ⊢
      omega)
    have heq : A.x.length = dst.length := by rw [ModLayout.x, A.reg_length, hd]
    obtain ⟨hp, he, ho⟩ := copyRegister_correct none A.x dst heq hc (by simp) s m
    refine ⟨hp, he, ?_⟩
    change regValue dst (run (copyRegister none A.x dst) m s).basis =
      regValue dst s.basis ^^^ ((Acc + X*0)%q)
    simpa only [copyValue, show regValue A.x s.basis = Acc from hA.1 .x,
      Nat.mul_zero, Nat.add_zero, Nat.mod_eq_of_lt hAcc] using ho
  | cons b bs ih =>
    let tail := bs.flatMap MulStep.wires
    let ambient := src ++ dst ++ D.wires ++ A.wires ++ (b::bs).flatMap MulStep.wires
    let keepNext := src ++ dst ++ D.wires ++ A.wires ++ (b.bit :: tail)
    let keepAcc := src ++ dst ++ D.wires ++ (b::bs).flatMap MulStep.wires
    let keepOut := src ++ D.wires ++ A.wires ++ (b::bs).flatMap MulStep.wires
    have hn : b.next.Disjoint keepNext := disjoint_of_counts ambient _ _ hnd (by
      intro w
      simp only [ambient, keepNext, tail, List.flatMap_cons, MulStep.wires,
        List.count_append, List.count_cons, List.cons_append]
      omega)
    have ha : (A.x ++ A.out).Disjoint keepAcc := disjoint_of_counts ambient _ _ hnd (by
      intro w
      have h := accum_count A w
      simp only [ambient, keepAcc, List.count_append] at h ⊢
      omega)
    have ho : dst.Disjoint keepOut := disjoint_of_counts ambient _ _ hnd (by
      intro w
      simp only [ambient, keepOut, List.count_append]
      omega)
    have hdouble : (src ++ b.next ++ D.wires).Nodup := nodup_of_counts ambient _ hnd (by
      intro w
      simp only [ambient, List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
      omega)
    have hmask : (b.bit :: (src ++ A.wires)).Nodup := nodup_of_counts ambient _ hnd (by
      intro w
      simp only [ambient, List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
      omega)
    have hchild : (b.next ++ dst ++ D.wires ++ A.swapXOut.wires ++ tail).Nodup :=
      nodup_of_counts ambient _ hnd (by
        intro w
        rw [List.count_append, List.count_append, A.swap_perm.count_eq]
        simp only [ambient, tail, List.flatMap_cons, MulStep.wires, List.count_append, List.count_cons]
        omega)
    have hbLen := hlen b (List.mem_cons_self ..)
    have hbZero := hz b (List.mem_cons_self ..)
    have htail (t : MulStep) (ht : t ∈ bs) : t.next ⊆ tail := by
      intro w hw
      exact List.mem_flatMap.mpr ⟨t, ht, List.mem_cons_of_mem _ hw⟩
    have hbit (w : Wire) (hw : w ∈ bs.map MulStep.bit) : w ∈ tail := by
      obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hw
      exact List.mem_flatMap.mpr ⟨t, ht, List.mem_cons_self ..⟩
    let dbl := doubleXor D q src b.next
    let add := maskedAccumulate A q src b.bit
    let child := multiplyLoop D A.swapXOut q b.next dst bs
    let undo := maskedUnaccumulate A q src b.bit
    let m1 := m.drop (measurementCount dbl)
    let m2 := m1.drop (measurementCount add)
    let m3 := m2.drop (measurementCount child)
    let m4 := m3.drop (measurementCount undo)
    let s1 := run dbl m s
    let s2 := run add m1 s1
    let s3 := run child m2 s2
    let s4 := run undo m3 s3
    let s5 := run dbl m4 s4
    let C := s.basis b.bit
    let X2 := (X+X)%q
    let V := (Acc + if C then X else 0)%q
    obtain ⟨p1, e1, v1⟩ := doubleXor_correct D src b.next hdouble
      (by omega) (by omega) q hq0 (by simpa only [hdim] using hq) s m
      (by simpa only [hsrc] using hX) hD
    have k1 (w : Wire) (hw : w ∈ keepNext) : s1.basis w = s.basis w :=
      e1 w (List.disjoint_right.mp hn hw)
    have r1 (r : List Wire) (hr : r ⊆ keepNext) : regValue r s1.basis = regValue r s.basis :=
      regValue_congr _ _ _ (fun w hw => k1 w (hr hw))
    have src1 : regValue src s1.basis = X := (r1 src (by intro w hw; simp [keepNext, hw])).trans hsrc
    have ctrl1 : s1.basis b.bit = C := k1 _ (by simp [keepNext])
    have av1 := ModValues.congr A _ s.basis s1.basis
      (by intro w hw; exact k1 w (by simp [keepNext, hw])) hA
    obtain ⟨p2, e2, v2⟩ := maskedAccumulate_correct A src b.bit hmask hs q X Acc C
      hq0 hq hX hAcc s1 m1 src1 ctrl1 av1
    have k2 (w : Wire) (hw : w ∈ keepAcc) : s2.basis w = s1.basis w :=
      e2 w (List.disjoint_right.mp ha hw)
    have r2 (r : List Wire) (hr : r ⊆ keepAcc) : regValue r s2.basis = regValue r s1.basis :=
      regValue_congr _ _ _ (fun w hw => k2 w (hr hw))
    have next1 : regValue b.next s1.basis = X2 := by
      simpa only [hsrc, hbZero, Nat.zero_xor] using v1
    have next2 : regValue b.next s2.basis = X2 :=
      (r2 b.next (by intro w hw; simp [keepAcc, List.flatMap_cons, MulStep.wires, hw])).trans next1
    have d2 : regValue D.wires s2.basis = 0 :=
      ((r2 D.wires (by intro w hw; simp [keepAcc, hw])).trans
        (r1 D.wires (by intro w hw; simp [keepNext, hw]))).trans hD
    have z2 (t : MulStep) (ht : t ∈ bs) : regValue t.next s2.basis = 0 := by
      have h1 := r1 t.next (by intro w hw; have := htail t ht hw; simp [keepNext, this])
      have h2 := r2 t.next (by
        intro w hw
        have hh := htail t ht hw
        simp only [tail] at hh
        simp [keepAcc, List.flatMap_cons, hh])
      exact (h2.trans h1).trans (hz t (List.mem_cons_of_mem _ ht))
    obtain ⟨p3, e3, v3⟩ := ih A.swapXOut b.next hchild
      (by simpa using hdim) (by simpa using hbLen) (by simpa using hd)
      (by intro t ht; simpa using hlen t (List.mem_cons_of_mem _ ht)) X2 V
      (by simpa using hq) (Nat.mod_lt _ hq0) (Nat.mod_lt _ hq0) s2 m2 next2 d2
      ((swap_clean A V _).mp v2) z2
    have k3 (w : Wire) (hw : w ∈ keepOut) : s3.basis w = s2.basis w :=
      e3 w (List.disjoint_right.mp ho hw)
    have r3 (r : List Wire) (hr : r ⊆ keepOut) : regValue r s3.basis = regValue r s2.basis :=
      regValue_congr _ _ _ (fun w hw => k3 w (hr hw))
    have src3 : regValue src s3.basis = X :=
      ((r3 src (by intro w hw; simp [keepOut, hw])).trans
        (r2 src (by intro w hw; simp [keepAcc, hw]))).trans src1
    have ctrl3 : s3.basis b.bit = C :=
      ((k3 _ (by simp [keepOut, List.flatMap_cons, MulStep.wires])).trans
        (k2 _ (by simp [keepAcc, List.flatMap_cons, MulStep.wires]))).trans ctrl1
    have av3 := ModValues.congr A _ s2.basis s3.basis
      (by intro w hw; exact k3 w (by simp [keepOut, hw])) v2
    obtain ⟨p4, e4, v4⟩ := maskedUnaccumulate_correct A src b.bit hmask hs q X Acc C
      hq0 hq hX hAcc s3 m3 src3 ctrl3 av3
    have k4 (w : Wire) (hw : w ∈ keepAcc) : s4.basis w = s3.basis w :=
      e4 w (List.disjoint_right.mp ha hw)
    have r4 (r : List Wire) (hr : r ⊆ keepAcc) : regValue r s4.basis = regValue r s3.basis :=
      regValue_congr _ _ _ (fun w hw => k4 w (hr hw))
    have src4 : regValue src s4.basis = X :=
      (r4 src (by intro w hw; simp [keepAcc, hw])).trans src3
    have d4 : regValue D.wires s4.basis = 0 :=
      ((r4 D.wires (by intro w hw; simp [keepAcc, hw])).trans
        (r3 D.wires (by intro w hw; simp [keepOut, hw]))).trans d2
    obtain ⟨p5, e5, v5⟩ := doubleXor_correct D src b.next hdouble
      (by omega) (by omega) q hq0 (by simpa only [hdim] using hq) s4 m4
      (by simpa only [src4] using hX) d4
    have k5 (w : Wire) (hw : w ∈ keepNext) : s5.basis w = s4.basis w :=
      e5 w (List.disjoint_right.mp hn hw)
    have next4 : regValue b.next s4.basis = X2 :=
      ((r4 b.next (by intro w hw; simp [keepAcc, List.flatMap_cons, MulStep.wires, hw])).trans
        (r3 b.next (by intro w hw; simp [keepOut, List.flatMap_cons, MulStep.wires, hw]))).trans next2
    have next5 : regValue b.next s5.basis = 0 := by
      simpa only [next4, src4, X2, Nat.xor_self] using v5
    have finish : run (multiplyLoop D A q src dst (b::bs)) m s = s5 := by
      simp only [multiplyLoop, List.append_assoc, run_append, run_take]
      rfl
    rw [finish]
    refine ⟨p5.trans (p4.trans (p3.trans (p2.trans p1))), ?_, ?_⟩
    · intro w hw
      by_cases hnw : w ∈ b.next
      · exact ((regValue_zero _ _).mp next5 w hnw).trans ((regValue_zero _ _).mp hbZero w hnw).symm
      by_cases haw : w ∈ A.x ++ A.out
      · have eqA : ∀ r ∈ [A.x, A.out], regValue r s4.basis = regValue r s.basis := by
          intro r hr
          simp only [List.mem_cons, List.not_mem_nil, or_false] at hr
          rcases hr with rfl | rfl
          · exact (v4.1 .x).trans (hA.1 .x).symm
          · exact (v4.1 .out).trans (hA.1 .out).symm
        rcases List.mem_append.mp haw with hx | hout
        · exact (e5 w hnw).trans ((regValue_eq_iff _ _ _).mp (eqA A.x (by simp)) w hx)
        · exact (e5 w hnw).trans ((regValue_eq_iff _ _ _).mp (eqA A.out (by simp)) w hout)
      · exact (e5 w hnw).trans ((e4 w haw).trans ((e3 w hw).trans ((e2 w haw).trans (e1 w hnw))))
    · have out5 : regValue dst s5.basis = regValue dst s3.basis :=
        (regValue_congr _ _ _ (fun w hw => k5 w (by simp [keepNext, hw]))).trans
          (r4 dst (by intro w hw; simp [keepAcc, hw]))
      have out2 : regValue dst s2.basis = regValue dst s.basis :=
        (r2 dst (by intro w hw; simp [keepAcc, hw])).trans
          (r1 dst (by intro w hw; simp [keepNext, hw]))
      have bits2 : regValue (bs.map MulStep.bit) s2.basis = regValue (bs.map MulStep.bit) s.basis :=
        (r2 _ (by
          intro w hw
          have hh := hbit w hw
          simp only [tail] at hh
          simp [keepAcc, List.flatMap_cons, hh])).trans
          (r1 _ (by intro w hw; have := hbit w hw; simp [keepNext, this]))
      rw [out5, v3, out2, bits2]
      congr 1
      simpa only [V, X2, C, List.map_cons, regValue, List.foldr_cons,
        Bool.toNat, Bool.cond_eq_ite] using multiply_step q Acc X
          (regValue (bs.map MulStep.bit) s.basis) C

end ECDSAAdd.Arithmetic
