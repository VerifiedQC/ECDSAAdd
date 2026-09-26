import ECDSAAdd.Arithmetic.ModularInverse.RoundFrame
import ECDSAAdd.Math.ModularInverse.KaliskiRound

namespace ECDSAAdd.Arithmetic

/-- 数据寄存器承载 u/v/r/s，其他字段均为本轮清零的工作区；k 由独立计数器处理。 -/
def roundDataValues (z : KState) : RoundField → Nat
  | .u => z.u | .v => z.v | .r => z.r | .s => z.s | _ => 0

private theorem data_updates (z : KState) (X : Nat) :
    Function.update (roundDataValues z) .u X = roundDataValues {z with u:=X} ∧
    Function.update (roundDataValues z) .r X = roundDataValues {z with r:=X} ∧
    Function.update (roundDataValues z) .s X = roundDataValues {z with s:=X} := by
  refine ⟨?_,?_,?_⟩ <;> funext f <;> cases f <;> rfl

/-- c=1 时同时交换 L.u↔L.v、L.r↔L.s；c=0 时四个寄存器不变，c 保持。
要求两对寄存器各自等长且参与线路互异，使数值与对应系数同步交换。

参数：

- `L`：Kaliski 数据布局：u/v 是约简数据，r/s 是配套系数，y/carry/cin 是受控加减借用的工作位；此参数不含独立的分支控制位。
- `c`：控制 wire：为 1 时同时交换 u/v 与 r/s，为 0 时保持。
-/
def swapDataPairs (L : RoundDataLayout) (c : Wire) : Program := prog {
  swapRegisters(c, L.u, L.v);  -- c=1 时 u↔v，否则两者保持。
  swapRegisters(c, L.r, L.s);  -- c=1 时 r↔s，使系数与 u/v 的角色同步交换。
}

private theorem swap_pairs_frame (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (z : KState) (base : BasisState) :
    Triple (RoundFrame L (roundDataValues z) base) (swapDataPairs L c)
      (RoundFrame L (roundDataValues (kaliskiSwap (base c) z)) base) := by
  let v := roundDataValues z
  let v1 := Function.update (Function.update v .u (if base c then v .v else v .u))
    .v (if base c then v .u else v .v)
  have h1 := RoundFrame.swap L c hnd v base .u .v (by decide)
  have h2 := RoundFrame.swap L c hnd v1 base .r .s (by decide)
  have he : Function.update (Function.update v1 .r (if base c then v1 .s else v1 .r))
      .s (if base c then v1 .r else v1 .s) = roundDataValues (kaliskiSwap (base c) z) := by
    cases hc : base c <;> funext f <;> cases f <;> simp [v1,v,roundDataValues,kaliskiSwap,hc]
  have h := h1.seq h2
  simpa only [swapDataPairs, RoundDataLayout.u,RoundDataLayout.v,RoundDataLayout.r,RoundDataLayout.s,he] using h

/-- 受控原地加减的逻辑参数依次为 control、source、target。 -/
structure RoundArithmeticOps where
  controlledAdd : Wire → List Wire → List Wire → Program
  controlledSub : Wire → List Wire → List Wire → Program

/-- L 提供本轮的固定工作区：mask 暂存 control·source，carry/cin 为进位链及零进位。
两次加减按顺序复用它们；每次调用均清零这些工作位，使用已有测量清理电路。 -/
def roundArithmeticContext (L : RoundDataLayout) : CircuitDSL.Context RoundArithmeticOps :=
  let mask := L.reg .y                        -- 初始为零的受控源副本，调用后清零。
  let carry := (L.reg .carry).take (L.width-1) -- width-1 根零进位辅助线。
  {
    operations := {
      controlledAdd := fun control source target =>
        measuredMaskedAddInPlace control source mask target carry L.cin
      controlledSub := fun control source target =>
        measuredMaskedSubInPlace control source mask target carry L.cin
    }
  }

/-- Kaliski 一轮的数据更新：先按 swap 交换 u/v 和 r/s；subtract=1 时 u←u−v、r←r+s；
active=1 时 u←u/2、s←2*s，最后按 swap 换回。工作区初始为零并恢复，控制位保持。
整数解释要求本轮不变量保证待减数足够、待除数为偶数及无溢出；一般门列实际按位宽运算/循环移位。

参数：

- `L`：Kaliski 数据布局：u/v 是约简数据，r/s 是配套系数，y/carry/cin 是受控加减借用的工作位；此参数不含独立的分支控制位。
- `active`：本轮使能 wire，控制除以 2/乘以 2 的循环移位；已经结束的轮为 0。
- `swap`：是否临时交换 u/v 和 r/s 的分支 wire，须与本轮奇偶/大小条件匹配。
- `subtract`：是否执行 u−v、r+s 的分支 wire；恢复方向撤销对应加减，值始终保留。
-/
def kaliskiBodyProgram (L : RoundDataLayout) (active swap subtract : Wire) : Program :=
    prog using (roundArithmeticContext L) {
  let u := L.u; -- 当前约简数据，本轮选中的偶数/较大数移到这里处理。
  let v := L.v; -- 另一约简数据，在减法中用作源。
  let r := L.r; -- 与 u 配对的系数，执行受控加法。
  let s := L.s; -- 与 v 配对的系数，执行受控倍增。
  swapDataPairs(L, swap);                    -- swap=1 时交换 u↔v、r↔s
  controlledSub subtract v u;                -- subtract=1 时 u -= v
  controlledAdd subtract s r;                -- subtract=1 时 r += s
  shiftRight(active, u);                     -- active=1 时，偶数 u /= 2
  shiftLeft(active, s);                      -- active=1 时 s *= 2
  swapDataPairs(L, swap);                    -- 将寄存器角色交换回来
}

/-- 撤销 kaliskiBodyProgram 的数据更新：在同样的交换视图中先 s←s/2、u←2*u，
再按 subtract 做 r←r−s、u←u+v，最后换回；移位仍受 active 控制。
要求来自匹配的正轮数据和分支记录、满足轮不变量；零工作区恢复，控制位保持，不倒放测量。

参数：

- `L`：Kaliski 数据布局：u/v 是约简数据，r/s 是配套系数，y/carry/cin 是受控加减借用的工作位；此参数不含独立的分支控制位。
- `active`：本轮使能 wire，控制除以 2/乘以 2 的循环移位；已经结束的轮为 0。
- `swap`：是否临时交换 u/v 和 r/s 的分支 wire，须与本轮奇偶/大小条件匹配。
- `subtract`：是否执行 u−v、r+s 的分支 wire；恢复方向撤销对应加减，值始终保留。
-/
def kaliskiUnbodyProgram (L : RoundDataLayout) (active swap subtract : Wire) : Program :=
    prog using (roundArithmeticContext L) {
  let u := L.u; -- 待恢复的约简数据，与正轮使用同一寄存器。
  let v := L.v; -- 另一约简数据，用于撤销 u 的减法。
  let r := L.r; -- 与 u 配对的系数，撤销先前的受控加法。
  let s := L.s; -- 与 v 配对的系数，先撤销倍增再作为减法源。
  swapDataPairs(L, swap);                    -- 重建正向运算时的寄存器角色
  shiftRight(active, s);                     -- 撤销 s *= 2
  shiftLeft(active, u);                      -- 撤销 u /= 2
  controlledSub subtract s r;                -- 撤销 r += s
  controlledAdd subtract v u;                -- 撤销 u -= v
  swapDataPairs(L, swap);                    -- u/v/r/s 恢复轮前值
}

/-- 供既有证明使用；直接寄存器接口与原布局调用生成同一门列。 -/
theorem kaliskiBodyProgram_program (L : RoundDataLayout) (active swap subtract : Wire) :
    kaliskiBodyProgram L active swap subtract =
      swapDataPairs L swap ++ inplaceArithmetic L .u .v subtract true ++
      inplaceArithmetic L .r .s subtract false ++ shiftRight active L.u ++
      shiftLeft active L.s ++ swapDataPairs L swap := rfl

/-- 供既有证明使用；直接寄存器接口与原布局调用生成同一门列。 -/
theorem kaliskiUnbodyProgram_program (L : RoundDataLayout) (active swap subtract : Wire) :
    kaliskiUnbodyProgram L active swap subtract =
      swapDataPairs L swap ++ shiftRight active L.s ++ shiftLeft active L.u ++
      inplaceArithmetic L .r .s subtract true ++ inplaceArithmetic L .u .v subtract false ++
      swapDataPairs L swap := rfl

private theorem control_nodup (L : RoundDataLayout) (cs : List Wire)
    (hnd : (cs++L.wires).Nodup) (c : Wire) (hc : c∈cs) : (c::L.wires).Nodup := by
  have h := List.nodup_append'.mp hnd
  exact List.nodup_cons.mpr ⟨List.disjoint_left.mp h.2.2 hc,h.2.1⟩

/-- 统一正体的布局级证明；范围条件正好来自 I1 的整数不变量。 -/
theorem kaliskiBodyProgram_frame (L : RoundDataLayout) (active swap subtract : Wire)
    (hnd : ([active,swap,subtract]++L.wires).Nodup) (hpos : 0<L.width)
    (z : KState) (base : BasisState)
    (hU : (kaliskiSwap (base swap) z).u<2^L.width)
    (hsub : (if base subtract then (kaliskiSwap (base swap) z).v else 0)≤(kaliskiSwap (base swap) z).u)
    (hR : (kaliskiSwap (base swap) z).r+(if base subtract then (kaliskiSwap (base swap) z).s else 0)<2^L.width)
    (heven : base active=true → ((kaliskiSwap (base swap) z).u-
      (if base subtract then (kaliskiSwap (base swap) z).v else 0))%2=0)
    (hfit : base active=true → 2*(kaliskiSwap (base swap) z).s<2^L.width) :
    Triple (RoundFrame L (roundDataValues z) base) (kaliskiBodyProgram L active swap subtract)
      (RoundFrame L (roundDataValues (kaliskiBody (base active) (base swap,base subtract) z)) base) := by
  have ha := control_nodup L [active,swap,subtract] hnd active (by simp)
  have hs := control_nodup L [active,swap,subtract] hnd swap (by simp)
  have hd := control_nodup L [active,swap,subtract] hnd subtract (by simp)
  let t := kaliskiSwap (base swap) z
  let U := t.u-(if base subtract then t.v else 0)
  let R := t.r+(if base subtract then t.s else 0)
  change t.u<2^L.width at hU
  change (if base subtract then t.v else 0)≤t.u at hsub
  change R<2^L.width at hR
  let z1 : KState := {t with u:=U}
  let z2 : KState := {z1 with r:=R}
  let z3 : KState := {z2 with u:=if base active then U/2 else U}
  let z4 : KState := {z3 with s:=if base active then 2*t.s else t.s}
  have hdiff : (t.u+2^L.width-(if base subtract then t.v else 0))%2^L.width=U := by
    rw [show t.u+2^L.width-(if base subtract then t.v else 0)=U+2^L.width by dsimp [U]; omega,
      Nat.add_mod_right, Nat.mod_eq_of_lt (show U<2^L.width by dsimp [U]; omega)]
  have h0 := swap_pairs_frame L swap hs z base
  have h1 : Triple (RoundFrame L (roundDataValues t) base) (inplaceArithmetic L .u .v subtract true)
      (RoundFrame L (roundDataValues z1) base) := by
    have h := RoundFrame.inplace L subtract hd hpos (roundDataValues t) base .u .v
      (by simp [RoundDataLayout.DataField]) (by simp [RoundDataLayout.DataField]) (by decide) rfl rfl true
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues t) .u
      ((t.u+2^L.width-(if base subtract then t.v else 0))%2^L.width)) base) at h
    rw [hdiff,(data_updates t U).1] at h
    exact h
  have h2 : Triple (RoundFrame L (roundDataValues z1) base) (inplaceArithmetic L .r .s subtract false)
      (RoundFrame L (roundDataValues z2) base) := by
    have h := RoundFrame.inplace L subtract hd hpos (roundDataValues z1) base .r .s
      (by simp [RoundDataLayout.DataField]) (by simp [RoundDataLayout.DataField]) (by decide) rfl rfl false
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z1) .r (R%2^L.width)) base) at h
    rw [Nat.mod_eq_of_lt hR,(data_updates z1 R).2.1] at h
    exact h
  have h3 : Triple (RoundFrame L (roundDataValues z2) base) (shiftRight active L.u)
      (RoundFrame L (roundDataValues z3) base) := by
    have h := RoundFrame.shift_right L active ha (roundDataValues z2) base .u heven
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z2) .u (if base active then U/2 else U)) base) at h
    rw [(data_updates z2 (if base active then U/2 else U)).1] at h
    exact h
  have h4 : Triple (RoundFrame L (roundDataValues z3) base) (shiftLeft active L.s)
      (RoundFrame L (roundDataValues z4) base) := by
    have h := RoundFrame.shift_left L active ha (roundDataValues z3) base .s hfit
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z3) .s (if base active then 2*t.s else t.s)) base) at h
    rw [(data_updates z3 (if base active then 2*t.s else t.s)).2.2] at h
    exact h
  have h5 := swap_pairs_frame L swap hs z4 base
  have he : roundDataValues (kaliskiSwap (base swap) z4) =
      roundDataValues (kaliskiBody (base active) (base swap,base subtract) z) := by
    cases hc : base swap <;> funext f <;> cases f <;>
      simp [roundDataValues,kaliskiBody,kaliskiSwap,z4,z3,z2,z1,U,R,t,hc]
  rw [he] at h5
  simpa only [kaliskiBodyProgram,List.append_assoc] using h0.seq (h1.seq (h2.seq (h3.seq (h4.seq h5))))

/-- 对应逆体恢复正体前的四份数据与工作区，始终读保存的分支位。 -/
theorem kaliskiUnbodyProgram_frame (L : RoundDataLayout) (active swap subtract : Wire)
    (hnd : ([active,swap,subtract]++L.wires).Nodup) (hpos : 0<L.width)
    (z : KState) (base : BasisState)
    (hU : (kaliskiSwap (base swap) z).u<2^L.width)
    (hsub : (if base subtract then (kaliskiSwap (base swap) z).v else 0)≤(kaliskiSwap (base swap) z).u)
    (hR : (kaliskiSwap (base swap) z).r+(if base subtract then (kaliskiSwap (base swap) z).s else 0)<2^L.width)
    (heven : base active=true → ((kaliskiSwap (base swap) z).u-
      (if base subtract then (kaliskiSwap (base swap) z).v else 0))%2=0) :
    Triple (RoundFrame L (roundDataValues (kaliskiBody (base active) (base swap,base subtract) z)) base)
      (kaliskiUnbodyProgram L active swap subtract) (RoundFrame L (roundDataValues z) base) := by
  have ha := control_nodup L [active,swap,subtract] hnd active (by simp)
  have hs := control_nodup L [active,swap,subtract] hnd swap (by simp)
  have hd := control_nodup L [active,swap,subtract] hnd subtract (by simp)
  let t := kaliskiSwap (base swap) z
  let U := t.u-(if base subtract then t.v else 0)
  let R := t.r+(if base subtract then t.s else 0)
  change t.u<2^L.width at hU
  change (if base subtract then t.v else 0)≤t.u at hsub
  change R<2^L.width at hR
  let z0 : KState :=
    { t with
      u := if base active then U/2 else U
      r := R
      s := if base active then 2*t.s else t.s }
  let z1 : KState := {z0 with s:=t.s}
  let z2 : KState := {z1 with u:=U}
  let z3 : KState := {z2 with r:=t.r}
  have hsHalf : (if base active then (if base active then 2*t.s else t.s)/2
      else (if base active then 2*t.s else t.s))=t.s := by
    cases base active <;> simp
  have huDouble : (if base active then 2*(if base active then U/2 else U)
      else (if base active then U/2 else U))=U := by
    cases hc : base active
    · rfl
    · have he := heven hc
      simp only [if_true]
      dsimp [U,t] at *
      omega
  have hswap : roundDataValues (kaliskiSwap (base swap)
      (kaliskiBody (base active) (base swap,base subtract) z)) = roundDataValues z0 := by
    cases hc : base swap <;> funext f <;> cases f <;>
      simp [roundDataValues,kaliskiBody,kaliskiSwap,z0,U,R,t,hc]
  have h0 := swap_pairs_frame L swap hs (kaliskiBody (base active) (base swap,base subtract) z) base
  rw [hswap] at h0
  have h1 : Triple (RoundFrame L (roundDataValues z0) base) (shiftRight active L.s)
      (RoundFrame L (roundDataValues z1) base) := by
    have he : base active=true → roundDataValues z0 .s%2=0 := by
      intro hc
      simp [roundDataValues,z0,hc]
    have h := RoundFrame.shift_right L active ha (roundDataValues z0) base .s he
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z0) .s
      (if base active then (if base active then 2*t.s else t.s)/2 else (if base active then 2*t.s else t.s))) base) at h
    rw [hsHalf,(data_updates z0 t.s).2.2] at h
    exact h
  have h2 : Triple (RoundFrame L (roundDataValues z1) base) (shiftLeft active L.u)
      (RoundFrame L (roundDataValues z2) base) := by
    have hf : base active=true → 2*roundDataValues z1 .u<2^L.width := by
      intro hc
      change 2*(if base active then U/2 else U)<2^L.width
      rw [hc,if_pos rfl]
      have hu : U≤t.u := Nat.sub_le _ _
      have hhalf : 2*(U/2)≤U := by omega
      omega
    have h := RoundFrame.shift_left L active ha (roundDataValues z1) base .u hf
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z1) .u
      (if base active then 2*(if base active then U/2 else U) else (if base active then U/2 else U))) base) at h
    rw [huDouble,(data_updates z1 U).1] at h
    exact h
  have hdiff : (R+2^L.width-(if base subtract then t.s else 0))%2^L.width=t.r := by
    rw [show R+2^L.width-(if base subtract then t.s else 0)=t.r+2^L.width by dsimp [R]; omega,
      Nat.add_mod_right,Nat.mod_eq_of_lt (show t.r<2^L.width by dsimp [R] at hR; omega)]
  have h3 : Triple (RoundFrame L (roundDataValues z2) base) (inplaceArithmetic L .r .s subtract true)
      (RoundFrame L (roundDataValues z3) base) := by
    have h := RoundFrame.inplace L subtract hd hpos (roundDataValues z2) base .r .s
      (by simp [RoundDataLayout.DataField]) (by simp [RoundDataLayout.DataField]) (by decide) rfl rfl true
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z2) .r
      ((R+2^L.width-(if base subtract then t.s else 0))%2^L.width)) base) at h
    rw [hdiff,(data_updates z2 t.r).2.1] at h
    exact h
  have hsum : (U+(if base subtract then t.v else 0))%2^L.width=t.u := by
    rw [show U+(if base subtract then t.v else 0)=t.u from Nat.sub_add_cancel hsub,
      Nat.mod_eq_of_lt hU]
  have h4 : Triple (RoundFrame L (roundDataValues z3) base) (inplaceArithmetic L .u .v subtract false)
      (RoundFrame L (roundDataValues t) base) := by
    have h := RoundFrame.inplace L subtract hd hpos (roundDataValues z3) base .u .v
      (by simp [RoundDataLayout.DataField]) (by simp [RoundDataLayout.DataField]) (by decide) rfl rfl false
    change Triple _ _ (RoundFrame L (Function.update (roundDataValues z3) .u
      ((U+(if base subtract then t.v else 0))%2^L.width)) base) at h
    rw [hsum,(data_updates z3 t.u).1] at h
    exact h
  have h5 := swap_pairs_frame L swap hs t base
  have he : kaliskiSwap (base swap) t=z := by cases hc : base swap <;> simp [t,kaliskiSwap,hc]
  rw [he] at h5
  simpa only [kaliskiUnbodyProgram,List.append_assoc] using h0.seq (h1.seq (h2.seq (h3.seq (h4.seq h5))))

end ECDSAAdd.Arithmetic
