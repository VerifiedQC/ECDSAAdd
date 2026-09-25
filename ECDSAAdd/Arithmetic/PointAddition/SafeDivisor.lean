import ECDSAAdd.Arithmetic.RegisterXor.Copy

namespace ECDSAAdd.Arithmetic

/-- head::tail 的寄存器值 ^= (g=1 ? src : 1)，保留 g/src；清零目标上得到所选除数。
有效等宽互异布局下，g=0 时选常量 1；g=1 时仍须由调用者保证 src 非零，才是安全除数。

参数：

- `g`：选择 wire：1 选择 src，0 选择经典常量 1。
- `src`：小端候选除数寄存器，保持不变。
- `head`：目标除数寄存器的最低位 wire。
- `tail`：目标除数的其余位，从低到高排列；完整 XOR 目标是 head::tail。
-/
def safeDivisor (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire) : Program :=
  [.X head,.CX g head]++copyRegister (some g) src (head::tail)

theorem safeDivisor_correct (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire)
    (hlen : src.length=(head::tail).length) (hnd : (g::src++(head::tail)).Nodup)
    (s : State) (m : List Bool) :
    (run (safeDivisor g src head tail) m s).phase=s.phase ∧
    (∀ w∉head::tail,(run (safeDivisor g src head tail) m s).basis w=s.basis w) ∧
    regValue (head::tail) (run (safeDivisor g src head tail) m s).basis=
      regValue (head::tail) s.basis ^^^
        (if s.basis g then regValue src s.basis else 1) := by
  have hg : g∉head::tail := by
    intro h; exact (List.nodup_cons.mp hnd).1 (List.mem_append_right _ h)
  have hgh : g≠head := fun h => hg (by simp [h])
  have hs : (src++(head::tail)).Nodup := (List.nodup_cons.mp hnd).2
  have hhead : head∉tail := (List.nodup_cons.mp (List.nodup_append'.mp hs).2.1).1
  have hhsrc : head∉src := by
    intro h
    exact List.disjoint_left.mp (List.nodup_append'.mp hs).2.2 h (by simp)
  let u : State := ⟨s.phase,writeBit s.basis head (s.basis head ^^ !s.basis g)⟩
  have hu : run [.X head,.CX g head] m s=u := by
    simp only [run]
    apply congrArg (State.mk s.phase)
    funext w
    by_cases h : w=head
    · subst w; cases s.basis head <;> cases hb : s.basis g <;> simp [writeBit,hgh,hb]
    · simp [writeBit,h]
  have hue (w : Wire) (hw : w≠head) : u.basis w=s.basis w := by simp [u,writeBit,hw]
  have huc : u.basis g=s.basis g := hue _ hgh
  have hus : regValue src u.basis=regValue src s.basis :=
    regValue_congr _ _ _ (fun w hw => hue w (fun h => hhsrc (h ▸ hw)))
  have hut : regValue tail u.basis=regValue tail s.basis :=
    regValue_congr _ _ _ (fun w hw => hue w (fun h => hhead (h ▸ hw)))
  have hud : regValue (head::tail) u.basis=
      regValue (head::tail) s.basis ^^^ (if s.basis g then 0 else 1) := by
    have hh := xor_value_step (s.basis head) (!s.basis g) (regValue tail s.basis) 0
    change (if u.basis head then 1 else 0)+2*regValue tail u.basis=_
    rw [hut]
    cases h : s.basis g <;>
      simpa only [u,writeBit,Function.update_self,h,regValue,List.foldr_cons,
        Bool.toNat,Bool.cond_eq_ite,Bool.not_false,Bool.not_true,
        Nat.xor_zero,Nat.mul_zero,Nat.add_zero,Bool.false_eq_true,
        if_false,if_true] using hh
  obtain ⟨hp,he,hv⟩ := copyRegister_correct (some g) src (head::tail) hlen hs
    (by simpa using hg) u m
  rw [safeDivisor,run_append,run_take,hu]
  simp only [measurementCount,List.drop_zero]
  refine ⟨hp,?_,?_⟩
  · intro w hw
    exact (he w hw).trans (hue w (fun h => hw (by simp [h])))
  · rw [hv,hud,copyValue,huc,hus]
    cases s.basis g <;> simp

theorem safeDivisor_counts (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire)
    (hlen : src.length=(head::tail).length) :
    toffoliCount (safeDivisor g src head tail)=src.length ∧
    measurementCount (safeDivisor g src head tail)=0 := by
  simp [safeDivisor,toffoliCount,
    measurementCount,copyRegister_counts _ _ _ hlen]

end ECDSAAdd.Arithmetic
