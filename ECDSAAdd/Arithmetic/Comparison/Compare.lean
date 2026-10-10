import ECDSAAdd.Arithmetic.Addition.InPlaceAdder
import ECDSAAdd.Arithmetic.RegisterXor.Constant
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open Instr
open scoped ECDSAAdd.ProofLanguage

attribute [local simp] carryBit

/-- 无控制时 t ^= NOT top；control=some c 时 t ^= c AND NOT top。
top 是最高进位。 -/
def flipBelow : Option Wire → Wire → Wire → Program
  | none, top, t => prog { CX (top XOR 1) t; }
  | some c, top, t => prog { CCX c (top XOR 1) t; }

local macro_rules
  | `(tactic| get_elem_tactic) =>
      `(tactic| (simp_all +zetaDelta only [List.length_cons]; omega))

/-- target ^= [x+y+cin < 2^n]，n 是输入 x 的位数，x/y/carry 等长。
control=some c 时仅在 c=1 时更新 target；none 时无条件更新。 -/
def compareChain (control : Option Wire) (x y carry : List Wire) (cin target : Wire) : Program :=
  let n := min x.length (min y.length carry.length)
  let c := cin :: carry
  let readout := if x.length = y.length ∧ y.length = carry.length then
      flipBelow control c[n] target else []
  prog {
    for i in range(n) {
      carry[i] ^= MAJ(x[i], y[i], c[i]) using majority by majority_spec;
    };
    readout(); -- target ^= NOT c[n]；有控制时仅在 control=1 执行。
    for i in reversed(range(n)) {
      carry[i] = 0 using (eraseCarry x[i] y[i] c[i]) by (eraseCarry_spec x[i] y[i] c[i]);
    };
  }

private theorem compareChain_nil (control : Option Wire) (cin target : Wire) :
    compareChain control [] [] [] cin target = flipBelow control cin target := by simp [compareChain]

private theorem compareChain_cons (control : Option Wire) (a b c cin target : Wire)
    (as bs cs : List Wire) :
    compareChain control (a :: as) (b :: bs) (c :: cs) cin target =
      majority a b cin c ++ compareChain control as bs cs c target ++ eraseCarry a b cin c := by
  simp [compareChain, Nat.succ_min_succ, List.ofFn_succ, List.reverse_cons,
    List.flatten_append, List.append_assoc]

/-- target ^= [x<y]；control=some c 时改为 target ^= c AND [x<y]。
x/y/carry 等长，cin=0。 -/
def compareLt (control : Option Wire) (x y carry : List Wire) (cin target : Wire) : Program := prog {
  notRegister(cin :: y);  -- 准备 x+¬y+1。
  compareChain(control, x, y, carry, cin, target);  -- target ^= [x<原 y]；有控制时仅在 control=1 执行。
  notRegister(cin :: y);  -- 恢复 y，清零 cin。
}

/-- target ^= [x<K]；control=some c 时改为 target ^= c AND [x<K]。
K<2^n，n 是输入 x 的位数；T 用于保存 K。 -/
def compareLtConst (control : Option Wire) (x T carry : List Wire) (cin target : Wire) (K : Nat) : Program := prog {
  xorConstant(T, K);  -- T = K
  compareLt(control, x, T, carry, cin, target);  -- target ^= [x<K]；有控制时仅在 control=1 执行。
  xorConstant(T, K);  -- 清零 T。
}

/-- 控制位的值：无控制视为真。 -/
def controlValue : Option Wire → BasisState → Bool
  | none, _ => true
  | some c, st => st c

theorem flipBelow_correct (control : Option Wire) (top t : Wire) (hnt : t ≠ top)
    (hc : ∀ c ∈ control, c ≠ t) (s : State) (m : List Bool) :
    run (flipBelow control top t) m s =
      ⟨s.phase, writeBit s.basis t (s.basis t ^^ (controlValue control s.basis && !s.basis top))⟩ := by
  cases control with
  | none =>
    simp only [flipBelow, controlValue]
    apply congrArg (State.mk s.phase)
    funext w
    by_cases hw : w = t
    · subst hw
      simp [writeBit, Ne.symm hnt]
    · simp [writeBit, hw]
  | some c =>
    have hct : c ≠ t := hc c (by simp)
    simp only [flipBelow, controlValue]
    apply congrArg (State.mk s.phase)
    funext w
    by_cases hw : w = t
    · subst hw
      simp [writeBit, Ne.symm hnt, hct]
      cases s.basis w <;> cases s.basis c <;> cases s.basis top <;> rfl
    · simp [writeBit, hw]

/-- 进位与和的分解：2^(n+1) ≤ 三输入之和 ⇔ 2^n ≤ 高位之和加进位。 -/
private theorem carry_threshold (A B C : Bool) (X Y n : Nat) :
    (2^(n+1) ≤ (A.toNat + 2*X) + (B.toNat + 2*Y) + C.toNat) ↔
      (2^n ≤ X + Y + (carryBit A B C).toNat) := by
  have hv := fullAdder_bit_value A B C
  have hs : (sumBit A B C).toNat ≤ 1 := by cases sumBit A B C <;> decide
  rw [pow_succ]
  omega

/-- 进位链只改 target：进位辅助位算完又擦回零，x、y、cin 与控制位保持，相位对所有测量记录恢复。 -/
theorem compareChain_correct (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup)
    (hctl : ∀ c ∈ control, c ∉ target :: cin :: (x ++ y ++ carry))
    (hx : x.length = y.length) (hc : carry.length = y.length) (s : State) (m : List Bool)
    (hclean : ∀ w ∈ carry, s.basis w = false) :
    (run (compareChain control x y carry cin target) m s).phase = s.phase ∧
    (∀ w, w ≠ target → (run (compareChain control x y carry cin target) m s).basis w = s.basis w) ∧
    (run (compareChain control x y carry cin target) m s).basis target =
      (s.basis target ^^ (controlValue control s.basis &&
        !decide (2^y.length ≤ regValue x s.basis + regValue y s.basis + (s.basis cin).toNat))) := Proof
  induction y generalizing x carry cin s m with
  | nil =>
    have hx0 : x = [] := List.eq_nil_of_length_eq_zero hx
    have hc0 : carry = [] := List.eq_nil_of_length_eq_zero hc
    subst hx0 hc0
    have hnt : target ≠ cin := by
      have := (List.nodup_cons.mp hnd).1; simpa using this
    have hct : ∀ c ∈ control, c ≠ target := fun c hc' hh => hctl c hc' (by simp [hh])
    simp only [compareChain_nil]
    rw [flipBelow_correct control cin target hnt hct]
    refine ⟨rfl, ?_, ?_⟩
    · intro w hw; simp [writeBit, hw]
    · simp only [writeBit, Function.update_self, regValue, List.foldr_nil, Nat.zero_add,
        List.length_nil, pow_zero]
      cases s.basis cin <;> simp
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
    cases carry with
    | nil => simp at hc
    | cons c cs =>
    have hx' : as.length = bs.length := by simpa using hx
    have hc' : cs.length = bs.length := by simpa using hc
    -- 互异
    have hcnt := List.nodup_iff_count.mp hnd
    have hnd' : (target :: c :: (as ++ bs ++ cs)).Nodup := by
      apply List.nodup_iff_count.mpr; intro w; have := hcnt w
      simp only [List.count_cons, List.count_append] at this ⊢; omega
    have hctl' : ∀ d ∈ control, d ∉ target :: c :: (as ++ bs ++ cs) := by
      intro d hd hm
      apply hctl d hd
      simp only [List.mem_cons, List.mem_append] at hm ⊢
      tauto
    have h4 : [a, b, cin, c].Nodup := by
      apply List.nodup_iff_count.mpr; intro w; have := hcnt w
      simp only [List.count_cons, List.count_append, List.count_nil] at this ⊢; omega
    have hta : target ≠ a := fun h => by
      have := hcnt a; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have htb : target ≠ b := fun h => by
      have := hcnt b; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have htcin : target ≠ cin := fun h => by
      have := hcnt cin; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have htc : target ≠ c := fun h => by
      have := hcnt c; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have hac : a ≠ c := fun h => by
      have := hcnt c; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have hbc : b ≠ c := fun h => by
      have := hcnt c; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have hcc : cin ≠ c := fun h => by
      have := hcnt c; subst h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at this; omega
    have hccs : c ∉ cs := fun h => by
      have h1 := hcnt c; have h2 := List.count_pos_iff.mpr h
      simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1; omega
    let A := s.basis a
    let B := s.basis b
    let C := s.basis cin
    have hzero : s.basis c = false := hclean c (by simp)
    let s1 : State := ⟨s.phase, writeBit s.basis c (carryBit A B C)⟩
    { ∀ record, run (majority a b cin c) record s = s1 } as hfirst by (by
      intro record
      rw [majority_correct _ _ _ _ h4]; simp [s1, hzero, A, B, C]);
    have hs1 (w : Wire) (hw : w ≠ c) : s1.basis w = s.basis w := by simp [s1, writeBit, hw]
    have hclean' : ∀ d ∈ cs, s1.basis d = false := by
      intro d hd; rw [hs1 d (fun h => hccs (h ▸ hd))]; exact hclean d (by simp [hd])
    obtain ⟨hp, hsame, hval⟩ := ih as cs c hnd' hctl' hx' hc' s1 m hclean'
    set t := run (compareChain control as bs cs c target) m s1 with ht
    have htA : t.basis a = A := by rw [hsame a hta.symm, hs1 a hac]
    have htB : t.basis b = B := by rw [hsame b htb.symm, hs1 b hbc]
    have htC : t.basis cin = C := by rw [hsame cin htcin.symm, hs1 cin hcc]
    have htK : t.basis c = carryBit A B C := by rw [hsame c htc.symm]; simp [s1, writeBit]
    { ∀ record, run (eraseCarry a b cin c) record t =
        ⟨t.phase, writeBit t.basis c false⟩ } as herase by
      (fun record => eraseCarry_correct _ _ _ _ hac hbc hcc t (by rw [htA, htB, htC, htK]) record);
    have hm0 : measurementCount (majority a b cin c) = 0 := rfl
    let restored : State := ⟨t.phase, writeBit t.basis c false⟩
    -- Compute this carry, recurse through the higher bits, then erase this carry.
    { run (compareChain control (a::as) (b::bs) (c::cs) cin target) m s = restored }
      as execution by (by
        simp only [compareChain_cons, List.append_assoc, run_append, run_take, hm0,
          List.take_zero, List.drop_zero]
        rw [hfirst, ← ht, herase]);
    { ∀ w, w ≠ target → restored.basis w = s.basis w } as preserved by (by
      intro w hw
      dsimp [restored]
      by_cases hwc : w = c
      · subst hwc; simp [writeBit, hzero]
      · simp only [writeBit, Function.update_of_ne hwc]
        rw [hsame w hw, hs1 w hwc]);
    { restored.basis target =
        (s.basis target ^^ (controlValue control s.basis &&
          !decide (2^(b::bs).length ≤ regValue (a::as) s.basis +
            regValue (b::bs) s.basis + (s.basis cin).toNat))) }
      as comparison by (by
      dsimp only [restored]
      simp only [writeBit, Function.update_of_ne htc]
      rw [hval]
      have hctlv : controlValue control s1.basis = controlValue control s.basis := by
        cases control with
        | none => rfl
        | some d =>
          have hdc : d ≠ c := fun h => hctl d (by simp) (by simp [h])
          simp [controlValue, s1, writeBit, hdc]
      have hxs : regValue as s1.basis = regValue as s.basis :=
        regValue_congr _ _ _ (fun w hw => hs1 w (fun h => by
          have h1 := hcnt c; have h2 := List.count_pos_iff.mpr (h ▸ hw : c ∈ as)
          simp [List.count_cons] at h1; omega))
      have hys : regValue bs s1.basis = regValue bs s.basis :=
        regValue_congr _ _ _ (fun w hw => hs1 w (fun h => by
          have h1 := hcnt c; have h2 := List.count_pos_iff.mpr (h ▸ hw : c ∈ bs)
          simp [List.count_cons] at h1; omega))
      have hts : s1.basis target = s.basis target := hs1 target htc
      have hc1 : s1.basis c = carryBit A B C := by simp [s1, writeBit]
      rw [hctlv, hxs, hys, hts, hc1]
      have hthr := carry_threshold A B C (regValue as s.basis) (regValue bs s.basis) bs.length
      simp only [regValue, List.foldr_cons, Bool.toNat, Bool.cond_eq_ite, List.length_cons, A, B, C] at hthr ⊢
      simp only [hthr]);
    conclude {
      (run (compareChain control (a::as) (b::bs) (c::cs) cin target) m s).phase = s.phase ∧
      (∀ w, w ≠ target →
        (run (compareChain control (a::as) (b::bs) (c::cs) cin target) m s).basis w = s.basis w) ∧
      (run (compareChain control (a::as) (b::bs) (c::cs) cin target) m s).basis target =
        (s.basis target ^^ (controlValue control s.basis &&
          !decide (2^(b::bs).length ≤ regValue (a::as) s.basis +
            regValue (b::bs) s.basis + (s.basis cin).toNat)))
    } by (by rw [execution]; exact ⟨hp, preserved, comparison⟩);


/-- 比较器整体：只改 target，x、y、cin、进位链与控制位保持，相位对所有测量记录恢复。 -/
theorem compareLt_correct (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup)
    (hctl : ∀ c ∈ control, c ∉ target :: cin :: (x ++ y ++ carry))
    (hx : x.length = y.length) (hc : carry.length = y.length) (s : State) (m : List Bool)
    (hcin : s.basis cin = false) (hclean : ∀ w ∈ carry, s.basis w = false) :
    (run (compareLt control x y carry cin target) m s).phase = s.phase ∧
    (∀ w, w ≠ target → (run (compareLt control x y carry cin target) m s).basis w = s.basis w) ∧
    (run (compareLt control x y carry cin target) m s).basis target =
      (s.basis target ^^ (controlValue control s.basis &&
        decide (regValue x s.basis < regValue y s.basis))) := Proof
  have hcnt := List.nodup_iff_count.mp hnd
  have hny : (cin :: y).Nodup := by
    apply List.nodup_iff_count.mpr; intro w; have := hcnt w
    simp only [List.count_cons, List.count_append] at this ⊢; omega
  have htcy : target ∉ cin :: y := fun h => by
    have h1 := hcnt target; have h2 := List.count_pos_iff.mpr h
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega
  have hxcy : ∀ w ∈ x, w ∉ cin :: y := fun w hw h => by
    have h1 := hcnt w; have h2 := List.count_pos_iff.mpr h; have h3 := List.count_pos_iff.mpr hw
    simp only [List.count_cons, List.count_append] at h1 h2; omega
  have hkcy : ∀ w ∈ carry, w ∉ cin :: y := fun w hw h => by
    have h1 := hcnt w; have h2 := List.count_pos_iff.mpr h; have h3 := List.count_pos_iff.mpr hw
    simp only [List.count_cons, List.count_append] at h1 h2; omega
  have hctlcy : ∀ c ∈ control, c ∉ cin :: y := fun c hc' h => hctl c hc' (by
    simp only [List.mem_cons, List.mem_append] at h ⊢; tauto)
  let s1 : State := ⟨s.phase, fun w => if w ∈ cin :: y then !s.basis w else s.basis w⟩
  have hfirst (record : List Bool) : run (notRegister (cin :: y)) record s = s1 :=
    notRegister_correct _ hny s record
  have hclean1 : ∀ w ∈ carry, s1.basis w = false := fun w hw => by
    simp [s1, hkcy w hw, hclean w hw]
  obtain ⟨hp, hsame, hval⟩ := compareChain_correct control x y carry cin target hnd hctl hx hc s1 m hclean1
  set t := run (compareChain control x y carry cin target) m s1 with ht
  have hX : regValue x s.basis < 2^y.length := by
    have := regValue_lt x s.basis; rwa [hx] at this
  have hY : regValue y s.basis < 2^y.length := regValue_lt y s.basis
  -- Complement y and set the carry-in: the carry chain now tests the borrow of x-y.
  { regValue x s1.basis = regValue x s.basis } as hx1
    by (regValue_congr _ _ _ (fun w hw => by simp [s1, hxcy w hw]));
  { regValue y s1.basis = 2^y.length - 1 - regValue y s.basis } as hy1
    by (by rw [regValue_congr y _ (fun w => !s.basis w)
      (by intro w hw; simp [s1, hw]), regValue_complement]);
  have hcin1 : s1.basis cin = true := by simp [s1, hcin]
  have htgt1 : s1.basis target = s.basis target := by simp [s1, htcy]
  have hctl1 : controlValue control s1.basis = controlValue control s.basis := by
    cases control with
    | none => rfl
    | some c => simp [controlValue, s1, hctlcy c (by simp)]
  have hm0 : measurementCount (notRegister (cin :: y)) = 0 := (notRegister_counts _).2
  { (2^y.length ≤ regValue x s.basis +
        (2^y.length - 1 - regValue y s.basis) + true.toNat) ↔
      regValue y s.basis ≤ regValue x s.basis } as carryMeaning
    by (by simp only [Bool.toNat_true]; omega);
  { (!decide (regValue y s.basis ≤ regValue x s.basis)) =
      decide (regValue x s.basis < regValue y s.basis) } as borrowMeaning
    by (by rw [← decide_not]; exact decide_eq_decide.mpr Nat.not_le);
  let restored : State :=
    ⟨t.phase, fun w => if w ∈ cin :: y then !t.basis w else t.basis w⟩
  { run (compareLt control x y carry cin target) m s = restored } as execution
    by (by
      simp only [compareLt, List.append_assoc, run_append, run_take, hm0,
        List.take_zero, List.drop_zero]
      rw [hfirst, ← ht, notRegister_correct _ hny]);
  -- Undoing the complement restores all inputs and clean carries.
  { ∀ w, w ≠ target → restored.basis w = s.basis w } as preserved
    by (by
      intro w hw
      dsimp [restored]
      rw [hsame w hw]
      by_cases hm : w ∈ cin :: y <;> simp [s1, hm]);
  { restored.basis target = (s.basis target ^^
      (controlValue control s.basis && decide (regValue x s.basis < regValue y s.basis))) }
    as output by (by
      dsimp [restored]
      simp only [htcy, if_false]
      rw [hval, hx1, hy1, hcin1, htgt1, hctl1]
      simp only [carryMeaning, borrowMeaning]);
  conclude { (run (compareLt control x y carry cin target) m s).phase = s.phase ∧
      (∀ w, w ≠ target → (run (compareLt control x y carry cin target) m s).basis w = s.basis w) ∧
      (run (compareLt control x y carry cin target) m s).basis target =
        (s.basis target ^^ (controlValue control s.basis &&
          decide (regValue x s.basis < regValue y s.basis))) }
    by (by rw [execution]; exact ⟨hp, preserved, output⟩);

/-- target ^= [x < y]；x、y 保持，进位链回零。 -/
theorem compareLt_spec (x y carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length = y.length) (X Y : Nat) (T : Bool) :
    {{ x = X, y = Y, carry = 0, cin = false, target = T }} compareLt none x y carry cin target
    {{ x = X, y = Y, carry = 0, cin = false, target = (T ^^ decide (X < Y)) }} := by
  intro s m h
  let final := run (compareLt (none) x y carry cin target) m s
  simp only [Holds.holds] at h ⊢
  obtain ⟨⟨⟨⟨hxv, hyv⟩, hkv⟩, hcv⟩, htv⟩ := h
  obtain ⟨hp, hsame, hval⟩ := compareLt_correct none x y carry cin target hnd (by simp) hx hc s m hcv
    (fun w hw => (regValue_zero _ _).mp hkv w hw)
  have hcnt := List.nodup_iff_count.mp hnd
  have hnt : ∀ w ∈ x ++ y ++ carry, w ≠ target := fun w hw h => by
    have h1 := hcnt target; have h2 := List.count_pos_iff.mpr (h ▸ hw)
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega
  have hcint : cin ≠ target := fun h => by
    have h1 := hcnt target; subst h
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1; omega
  { regValue x final.basis = X } as inputX
    by ((regValue_congr _ _ _ (fun w hw => hsame w (hnt w (by simp [hw])))).trans hxv);
  { regValue y final.basis = Y } as inputY
    by ((regValue_congr _ _ _ (fun w hw => hsame w (hnt w (by simp [hw])))).trans hyv);
  { regValue carry final.basis = 0 } as cleanCarry
    by ((regValue_congr _ _ _ (fun w hw => hsame w (hnt w (by simp [hw])))).trans hkv);
  { final.basis cin = false } as cleanInputCarry by ((hsame cin hcint).trans hcv);
  { final.basis target = (T ^^ decide (X < Y)) } as comparison
    by (by rw [hval, hxv, hyv, htv]; simp [controlValue]);
  conclude { final.phase = s.phase ∧
      (((regValue x final.basis = X ∧
       regValue y final.basis = Y) ∧
      regValue carry final.basis = 0) ∧
      final.basis cin = false) ∧
      final.basis target = (T ^^ decide (X < Y)) }
    by ⟨hp, ⟨⟨⟨inputX, inputY⟩, cleanCarry⟩, cleanInputCarry⟩, comparison⟩;

/-- 受控版：target ^= c ∧ [x < y]，控制位保持。 -/
theorem maskedCompareLt_spec (c : Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (c :: target :: cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length = y.length) (C : Bool) (X Y : Nat) (T : Bool) :
    {{ c = C, x = X, y = Y, carry = 0, cin = false, target = T }} compareLt (some c) x y carry cin target
    {{ c = C, x = X, y = Y, carry = 0, cin = false, target = (T ^^ (C && decide (X < Y))) }} := by
  intro s m h
  let final := run (compareLt (some c) x y carry cin target) m s
  simp only [Holds.holds] at h ⊢
  obtain ⟨⟨⟨⟨⟨hcv', hxv⟩, hyv⟩, hkv⟩, hcv⟩, htv⟩ := h
  have hn := List.nodup_cons.mp hnd
  have hctl : ∀ d ∈ some c, d ∉ target :: cin :: (x ++ y ++ carry) := by
    intro d hd; simp only [Option.mem_def, Option.some.injEq] at hd; subst hd; exact hn.1
  obtain ⟨hp, hsame, hval⟩ := compareLt_correct (some c) x y carry cin target hn.2 hctl hx hc s m hcv
    (fun w hw => (regValue_zero _ _).mp hkv w hw)
  have hcnt := List.nodup_iff_count.mp hn.2
  have hnt : ∀ w ∈ x ++ y ++ carry, w ≠ target := fun w hw h => by
    have h1 := hcnt target; have h2 := List.count_pos_iff.mpr (h ▸ hw)
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega
  have hcint : cin ≠ target := fun h => by
    have h1 := hcnt target; subst h
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1; omega
  have hct : c ≠ target := fun h => hn.1 (by simp [h])
  { regValue x final.basis = X } as inputX
    by ((regValue_congr _ _ _ (fun w hw => hsame w (hnt w (by simp [hw])))).trans hxv);
  { regValue y final.basis = Y } as inputY
    by ((regValue_congr _ _ _ (fun w hw => hsame w (hnt w (by simp [hw])))).trans hyv);
  { regValue carry final.basis = 0 } as cleanCarry
    by ((regValue_congr _ _ _ (fun w hw => hsame w (hnt w (by simp [hw])))).trans hkv);
  { final.basis cin = false } as cleanInputCarry by ((hsame cin hcint).trans hcv);
  { final.basis target = (T ^^ (C && decide (X < Y))) } as comparison
    by (by rw [hval, hxv, hyv, htv]; simp [controlValue, hcv']);
  conclude { final.phase = s.phase ∧
      ((((final.basis c = C ∧ regValue x final.basis = X) ∧
       regValue y final.basis = Y) ∧
      regValue carry final.basis = 0) ∧
      final.basis cin = false) ∧
      final.basis target = (T ^^ (C && decide (X < Y))) }
    by ⟨hp, ⟨⟨⟨⟨(hsame c hct).trans hcv', inputX⟩, inputY⟩, cleanCarry⟩, cleanInputCarry⟩, comparison⟩;

/-- 与经典常量比较：T 从零装入 K，比较后卸载回零。 -/
theorem compareLtConst_spec (x T carry : List Wire) (cin target : Wire)
    (hnd : (target :: cin :: (x ++ T ++ carry)).Nodup) (hx : x.length = T.length)
    (hc : carry.length = T.length) (K : Nat) (hK : K < 2^T.length) (X : Nat) (B : Bool) :
    {{ x = X, T = 0, carry = 0, cin = false, target = B }} compareLtConst none x T carry cin target K
    {{ x = X, T = 0, carry = 0, cin = false, target = (B ^^ decide (X < K)) }} := by
  have hcnt := List.nodup_iff_count.mp hnd
  have hT : T.Nodup := by
    apply List.nodup_iff_count.mpr; intro w; have := hcnt w
    simp only [List.count_cons, List.count_append] at this ⊢; omega
  have load (V : Nat) (Bt : Bool) :
      {{ x = X, T = V, carry = 0, cin = false, target = Bt }} xorConstant T K
      {{ x = X, T = (V ^^^ K), carry = 0, cin = false, target = Bt }} := by
    intro s m h
    simp only [Holds.holds] at h ⊢
    obtain ⟨hp, he, hv⟩ := xorConstant_correct T hT K hK s m
    have hout : ∀ w, w ∈ target :: cin :: (x ++ carry) → w ∉ T := fun w hw hT' => by
      have h1 := hcnt w; have h2 := List.count_pos_iff.mpr hw; have h3 := List.count_pos_iff.mpr hT'
      simp only [List.count_cons, List.count_append] at h1 h2; omega
    refine ⟨hp, ⟨⟨⟨(regValue_congr _ _ _ (fun w hw => he w (hout w (by simp [hw])))).trans h.1.1.1.1,
      by rw [hv, h.1.1.1.2]⟩,
      (regValue_congr _ _ _ (fun w hw => he w (hout w (by simp [hw])))).trans h.1.1.2⟩,
      (he cin (hout cin (by simp))).trans h.1.2⟩, (he target (hout target (by simp))).trans h.2⟩
  { {{ x = X, T = 0, carry = 0, cin = false, target = B }} xorConstant T K
    {{ x = X, T = K, carry = 0, cin = false, target = B }} }
    as loaded by (by simpa only [Nat.zero_xor] using load 0 B);
  { {{ x = X, T = K, carry = 0, cin = false, target = B }}
      compareLt (none) x T carry cin target
    {{ x = X, T = K, carry = 0, cin = false, target = (B ^^ decide (X < K)) }} }
    as compared by (compareLt_spec x T carry cin target hnd hx hc X K B);
  { {{ x = X, T = K, carry = 0, cin = false, target = (B ^^ decide (X < K)) }} xorConstant T K
    {{ x = X, T = 0, carry = 0, cin = false, target = (B ^^ decide (X < K)) }} }
    as cleared by (by simpa only [Nat.xor_self] using load K (B ^^ decide (X < K)));
  conclude { {{ x = X, T = 0, carry = 0, cin = false, target = B }}
      compareLtConst (none) x T carry cin target K
    {{ x = X, T = 0, carry = 0, cin = false, target = (B ^^ decide (X < K)) }} }
    by (by simpa only [compareLtConst, List.append_assoc] using loaded.seq (compared.seq cleared));

/-- 受控常量比较：target ^= c ∧ [x < K]。 -/
theorem maskedCompareLtConst_spec (c : Wire) (x T carry : List Wire) (cin target : Wire)
    (hnd : (c :: target :: cin :: (x ++ T ++ carry)).Nodup) (hx : x.length = T.length)
    (hc : carry.length = T.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (X : Nat) (B : Bool) :
    {{ c = C, x = X, T = 0, carry = 0, cin = false, target = B }} compareLtConst (some c) x T carry cin target K
    {{ c = C, x = X, T = 0, carry = 0, cin = false, target = (B ^^ (C && decide (X < K))) }} := by
  have hcnt := List.nodup_iff_count.mp hnd
  have hT : T.Nodup := by
    apply List.nodup_iff_count.mpr; intro w; have := hcnt w
    simp only [List.count_cons, List.count_append] at this ⊢; omega
  have load (V : Nat) (Bt : Bool) :
      {{ c = C, x = X, T = V, carry = 0, cin = false, target = Bt }} xorConstant T K
      {{ c = C, x = X, T = (V ^^^ K), carry = 0, cin = false, target = Bt }} := by
    intro s m h
    simp only [Holds.holds] at h ⊢
    obtain ⟨hp, he, hv⟩ := xorConstant_correct T hT K hK s m
    have hout : ∀ w, w ∈ c :: target :: cin :: (x ++ carry) → w ∉ T := fun w hw hT' => by
      have h1 := hcnt w; have h2 := List.count_pos_iff.mpr hw; have h3 := List.count_pos_iff.mpr hT'
      simp only [List.count_cons, List.count_append] at h1 h2; omega
    refine ⟨hp, ⟨⟨⟨⟨(he c (hout c (by simp))).trans h.1.1.1.1.1,
      (regValue_congr _ _ _ (fun w hw => he w (hout w (by simp [hw])))).trans h.1.1.1.1.2⟩,
      by rw [hv, h.1.1.1.2]⟩,
      (regValue_congr _ _ _ (fun w hw => he w (hout w (by simp [hw])))).trans h.1.1.2⟩,
      (he cin (hout cin (by simp))).trans h.1.2⟩, (he target (hout target (by simp))).trans h.2⟩
  { {{ c = C, x = X, T = 0, carry = 0, cin = false, target = B }} xorConstant T K
    {{ c = C, x = X, T = K, carry = 0, cin = false, target = B }} }
    as loaded by (by simpa only [Nat.zero_xor] using load 0 B);
  { {{ c = C, x = X, T = K, carry = 0, cin = false, target = B }}
      compareLt (some c) x T carry cin target
    {{ c = C, x = X, T = K, carry = 0, cin = false, target = (B ^^ (C && decide (X < K))) }} }
    as compared by (maskedCompareLt_spec c x T carry cin target hnd hx hc C X K B);
  { {{ c = C, x = X, T = K, carry = 0, cin = false, target = (B ^^ (C && decide (X < K))) }} xorConstant T K
    {{ c = C, x = X, T = 0, carry = 0, cin = false, target = (B ^^ (C && decide (X < K))) }} }
    as cleared by (by simpa only [Nat.xor_self] using load K (B ^^ (C && decide (X < K))));
  conclude { {{ c = C, x = X, T = 0, carry = 0, cin = false, target = B }}
      compareLtConst (some c) x T carry cin target K
    {{ c = C, x = X, T = 0, carry = 0, cin = false, target = (B ^^ (C && decide (X < K))) }} }
    by (by simpa only [compareLtConst, List.append_assoc] using loaded.seq (compared.seq cleared));

theorem flipBelow_counts (control : Option Wire) (top t : Wire) :
    toffoliCount (flipBelow control top t) = (if control.isSome then 1 else 0) ∧
    measurementCount (flipBelow control top t) = 0 := by
  cases control <;> simp [flipBelow, toffoliCount, measurementCount]

theorem compareChain_counts (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length) :
    toffoliCount (compareChain control x y carry cin target) = y.length + (if control.isSome then 1 else 0) ∧
    measurementCount (compareChain control x y carry cin target) = y.length := by
  induction y generalizing x carry cin with
  | nil =>
    have hx0 : x = [] := List.eq_nil_of_length_eq_zero hx
    have hc0 : carry = [] := List.eq_nil_of_length_eq_zero hc
    subst hx0 hc0
    simpa [compareChain_cons, compareChain_nil] using flipBelow_counts control cin target
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
    cases carry with
    | nil => simp at hc
    | cons c cs =>
    have := ih as cs c (by simpa using hx) (by simpa using hc)
    simp only [compareChain_cons, toffoliCount_append, measurementCount_append, this.1, this.2,
      majority, eraseCarry, toffoliCount, measurementCount, List.length_cons]
    omega

/-- 比较器 Toffoli = 位宽（受控版 +1），测量 = 位宽。 -/
theorem compareLt_counts (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length) :
    toffoliCount (compareLt control x y carry cin target) = y.length + (if control.isSome then 1 else 0) ∧
    measurementCount (compareLt control x y carry cin target) = y.length ∧
    ∀ K, toffoliCount (compareLtConst control x y carry cin target K) =
        y.length + (if control.isSome then 1 else 0) ∧
      measurementCount (compareLtConst control x y carry cin target K) = y.length := by
  have h := compareChain_counts control x y carry cin target hx hc
  have hn := notRegister_counts (cin :: y)
  refine ⟨?_, ?_, fun K => ⟨?_, ?_⟩⟩ <;>
    simp only [compareLt, compareLtConst, toffoliCount_append, measurementCount_append,
      h.1, h.2, hn.1, hn.2, (xorConstant_counts _ _).1, (xorConstant_counts _ _).2] <;> omega

theorem flipBelow_wires (control : Option Wire) (top t : Wire) :
    wires (flipBelow control top t) = (control.toList ++ [top, t]).toFinset := by
  cases control with
  | none => ext w; simp [flipBelow, wires, Instr.wires]
  | some c => ext w; simp [flipBelow, wires, Instr.wires]; tauto

theorem compareChain_wires (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length) :
    wires (compareChain control x y carry cin target) =
      (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset := by
  induction y generalizing x carry cin with
  | nil =>
    have hx0 : x = [] := List.eq_nil_of_length_eq_zero hx
    have hc0 : carry = [] := List.eq_nil_of_length_eq_zero hc
    subst hx0 hc0
    rw [compareChain_nil, flipBelow_wires]
    ext w; simp; tauto
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
    cases carry with
    | nil => simp at hc
    | cons c cs =>
    have := ih as cs c (by simpa using hx) (by simpa using hc)
    have hm : wires (majority a b cin c) = {a, b, cin, c} := by
      ext w; simp [majority, wires, Instr.wires]; tauto
    simp only [compareChain_cons, wires_append, this, hm, eraseCarry_wires]
    ext w
    simp only [Finset.mem_union, Finset.mem_insert, Finset.mem_singleton, List.mem_toFinset,
      List.mem_cons, List.mem_append]
    tauto

theorem compareLt_wires (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hx : x.length = y.length) (hc : carry.length = y.length) :
    wires (compareLt control x y carry cin target) =
      (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset ∧
    ∀ K, wires (compareLtConst control x y carry cin target K) =
      (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset := by
  have hchain := compareChain_wires control x y carry cin target hx hc
  have hsub : (cin :: y).toFinset ⊆ (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset := by
    intro w hw
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hw ⊢
    tauto
  have h1 : wires (compareLt control x y carry cin target) =
      (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset := by
    rw [compareLt, wires_append, wires_append, notRegister_wires, hchain,
      Finset.union_eq_right.mpr hsub, Finset.union_eq_left.mpr hsub]
  refine ⟨h1, fun K => ?_⟩
  have hK : wires (xorConstant y K) ⊆ (control.toList ++ target :: cin :: (x ++ y ++ carry)).toFinset := by
    intro w hw
    have := List.mem_toFinset.mp (xorConstant_wires_subset y K hw)
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append]
    tauto
  rw [compareLtConst, wires_append, wires_append, h1, Finset.union_eq_right.mpr hK,
    Finset.union_eq_left.mpr hK]

/-- n 位比较：n(+1) 个 Toffoli、n 次测量、3n+2(+1) 根线路。 -/
theorem compareLt_resources (control : Option Wire) (x y carry : List Wire) (cin target : Wire)
    (hnd : (control.toList ++ target :: cin :: (x ++ y ++ carry)).Nodup)
    (hx : x.length = y.length) (hc : carry.length = y.length) :
    toffoliCount (compareLt control x y carry cin target) = y.length + (if control.isSome then 1 else 0) ∧
    measurementCount (compareLt control x y carry cin target) = y.length ∧
    qubitCount (compareLt control x y carry cin target) = 3 * y.length + 2 + control.toList.length := by
  have h := compareLt_counts control x y carry cin target hx hc
  refine ⟨h.1, h.2.1, ?_⟩
  rw [qubitCount, (compareLt_wires control x y carry cin target hx hc).1, List.toFinset_card_of_nodup hnd]
  simp only [List.length_append, List.length_cons, hx, hc]
  omega

end ECDSAAdd.Arithmetic
