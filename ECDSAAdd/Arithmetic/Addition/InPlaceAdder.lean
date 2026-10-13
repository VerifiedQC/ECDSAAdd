import ECDSAAdd.Arithmetic.Addition.RippleAdder
import ECDSAAdd.Arithmetic.RegisterXor.MaskedConstant
import ECDSAAdd.Arithmetic.RegisterXor.Copy
import Mathlib.Data.List.OfFn

namespace ECDSAAdd.Arithmetic
open Instr
open scoped ECDSAAdd.ProofLanguage

attribute [local simp] carryBit

/-- carry ^= MAJ(a,b,cin)，MAJ 为三个输入位的多数值。 -/
def majority (a b cin carry : Wire) : Program := prog {
  CX a b; CX a cin; CCX b cin carry; CX a carry; CX a cin; CX a b
}

open GateProof
open scoped FullAdderProof

/-- The trace proves the four named bits; unchanged wires supply the full-state frame. -/
private theorem majority_finish (a b cin carry : Wire) (s : State) (m : List Bool)
    (trace :
      {{ a = s.basis a, b = s.basis b, cin = s.basis cin, carry = s.basis carry }}
        majority a b cin carry
      {{ a = s.basis a, b = s.basis b, cin = s.basis cin,
         carry = (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)) }}) :
    run (majority a b cin carry) m s =
      ⟨s.phase, writeBit s.basis carry
        (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin))⟩ := by
  let final := run (majority a b cin carry) m s
  obtain ⟨phase, ⟨⟨_, inputB⟩, inputC⟩, output⟩ :=
    trace s m ⟨⟨⟨rfl, rfl⟩, rfl⟩, rfl⟩
  have basis : final.basis = writeBit s.basis carry
      (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin)) := by
    funext w
    by_cases hk : w = carry
    · subst w; simpa [writeBit] using output
    by_cases hb : w = b
    · subst w; simpa [writeBit, hk] using inputB
    by_cases hc : w = cin
    · subst w; simpa [writeBit, hk] using inputC
    · simp [final, majority, run, writeBit, hk, hb, hc]
  change final = _
  change final.phase = s.phase at phase
  exact (show final = ⟨final.phase, final.basis⟩ from rfl).trans (by rw [phase, basis])

/-- 进位异或写入 carry，其余状态保持。 -/
theorem majority_correct (a b cin carry : Wire) (hnd : [a, b, cin, carry].Nodup)
    (s : State) (m : List Bool) :
    run (majority a b cin carry) m s =
      ⟨s.phase, writeBit s.basis carry
        (s.basis carry ^^ carryBit (s.basis a) (s.basis b) (s.basis cin))⟩ := by
  let A := s.basis a
  let B := s.basis b
  let C := s.basis cin
  let K := s.basis carry
  exact majority_finish a b cin carry s m <| hoare_steps {
    Precondition { a=A, b=B, cin=C, carry=K };
    after command { if a { b ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=C, carry=K } by cx_step;
    after command { if a { cin ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=(C ^^ A), carry=K } by cx_step;
    after command { if b AND cin { carry ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=(C ^^ A), carry=(K ^^ ((B ^^ A) && (C ^^ A))) } by ccx_step;
    after command { if a { carry ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=(C ^^ A), carry=(K ^^ carryBit A B C) } by carry_step;
    after command { if a { cin ^= 1; }; }
    get { a=A, b=(B ^^ A), cin=C, carry=(K ^^ carryBit A B C) } by restore_step;
    after command { if a { b ^= 1; }; }
    get { a=A, b=B, cin=C, carry=(K ^^ carryBit A B C) } by restore_step;
    Conclusion { a=A, b=B, cin=C, carry=(K ^^ carryBit A B C) };
  }

/-- majority 的接口：输入保持，carry 异或写入三输入位的多数值。 -/
theorem majority_spec (a b cin carry : Wire) (hnd : [a, b, cin, carry].Nodup)
    (A B C K : Bool) :
    {{ a = A, b = B, cin = C, carry = K }} majority a b cin carry
    {{ a = A, b = B, cin = C, carry = (K ^^ carryBit A B C) }} := hoare_steps {
  Precondition { a=A, b=B, cin=C, carry=K };
  after command { if a { b ^= 1; }; }
  get { a=A, b=(B ^^ A), cin=C, carry=K } by cx_step;
  after command { if a { cin ^= 1; }; }
  get { a=A, b=(B ^^ A), cin=(C ^^ A), carry=K } by cx_step;
  after command { if b AND cin { carry ^= 1; }; }
  get { a=A, b=(B ^^ A), cin=(C ^^ A), carry=(K ^^ ((B ^^ A) && (C ^^ A))) } by ccx_step;
  after command { if a { carry ^= 1; }; }
  get { a=A, b=(B ^^ A), cin=(C ^^ A), carry=(K ^^ carryBit A B C) } by carry_step;
  after command { if a { cin ^= 1; }; }
  get { a=A, b=(B ^^ A), cin=C, carry=(K ^^ carryBit A B C) } by restore_step;
  after command { if a { b ^= 1; }; }
  get { a=A, b=B, cin=C, carry=(K ^^ carryBit A B C) } by restore_step;
  Conclusion { a=A, b=B, cin=C, carry=(K ^^ carryBit A B C) };
}

/-- out ^= a XOR cin；a、cin 是两根输入线，out 是原地更新的目标线。 -/
def sumInto (a cin out : Wire) : Program := prog { CX a out; CX cin out; }

theorem sumInto_spec (a cin out : Wire) (hnd : [a, cin, out].Nodup) (A C O : Bool) :
    {{ a = A, cin = C, out = O }} sumInto a cin out
    {{ a = A, cin = C, out = (O ^^ (A ^^ C)) }} := hoare_steps {
  Precondition { a=A, cin=C, out=O };
  after command { if a { out ^= 1; }; }
  get { a=A, cin=C, out=(O ^^ A) } by cx_step;
  after command { if cin { out ^= 1; }; }
  get { a=A, cin=C, out=(O ^^ (A ^^ C)) } by gate_step [Bool.xor_assoc];
  Conclusion { a=A, cin=C, out=(O ^^ (A ^^ C)) };
}

local macro_rules
  | `(tactic| get_elem_tactic) =>
      `(tactic| (simp_all +zetaDelta only [List.length_append, List.length_cons, List.length_nil]
                 omega))

/-- y ← (y+x+cin) mod 2^n，n 是目标 y 的位数，cin 是输入进位。
x/y 等长，carry 有 n−1 位。 -/
def addInPlace (x y carry : List Wire) (cin : Wire) : Program :=
  if h : x.length = y.length ∧ carry.length + 1 = y.length then
    prog {
      let n := x.length;
      let c := [cin] ++ carry;  -- 进位链：c[0]=cin，其余保存各位进位。
      for i in range(n - 1) {
        c[i + 1] ^= MAJ(x[i], y[i], c[i]) using majority by majority_spec;
      };
      y[n - 1] ^= (x[n - 1] XOR c[n - 1]) using sumInto by sumInto_spec;
      for i in reversed(range(n - 1)) {
        c[i + 1] = 0 using (eraseCarry x[i] y[i] c[i]) by (eraseCarry_spec x[i] y[i] c[i]);
        y[i] ^= (x[i] XOR c[i]) using sumInto by sumInto_spec;
      };
    }
  else []

/-- addInPlace 的递归参考电路，仅供结构归纳证明使用。 -/
private def addInPlaceRecursive : List Wire → List Wire → List Wire → Wire → Program
  | a :: (a' :: as), b :: (b' :: bs), c :: cs, cin =>
      majority a b cin c ++ addInPlaceRecursive (a' :: as) (b' :: bs) cs c ++
        eraseCarry a b cin c ++ [CX a b, CX cin b]
  | [a], [b], _, cin => [CX a b, CX cin b]
  | _, _, _, _ => []

/-- 合法布局下，循环版与参考电路的指令列表逐项相同。 -/
private theorem addInPlace_eq_recursive (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    addInPlace x y carry cin = addInPlaceRecursive x y carry cin := by
  induction y generalizing x carry cin with
  | nil => simp at hc
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
      cases bs with
      | nil =>
        have ha : as = [] := by simpa using hx
        have hca : carry = [] := by simpa using hc
        subst ha; subst hca
        simp [addInPlace, addInPlaceRecursive, sumInto]
      | cons b' bs =>
        cases as with
        | nil => simp at hx
        | cons a' as =>
          cases carry with
          | nil => simp at hc
          | cons c cs =>
            have hx' : (a'::as).length = (b'::bs).length := by simpa using hx
            have hc' : cs.length + 1 = (b'::bs).length := by simpa using hc
            have hi := ih (a'::as) cs c hx' hc'
            simp [addInPlace, sumInto, hx', hc'] at hi
            simp [addInPlace, sumInto, hx, addInPlaceRecursive, List.ofFn_succ, List.reverse_cons,
              List.flatten_append,
              List.append_assoc] at hi ⊢
            have hcs : cs.length = bs.length := by simpa using hc'
            simp only [hcs, dite_true]
            rw [← hi]
            simp only [List.append_assoc, List.cons_append]

/-- A register value plus its frame determines the whole basis state. -/
private theorem register_snapshot (p : Program) (r : List Wire) (before after : BasisState)
    (execution : ∀ (s : State) (m : List Bool), s.basis = before →
      (run p m s).phase = s.phase ∧
      (∀ w, w ∉ r → (run p m s).basis w = after w) ∧
      regValue r (run p m s).basis = regValue r after) :
    Triple (fun st => st = before) p (fun st => st = after) := by
  intro s m initial
  obtain ⟨phase, frame, value⟩ := execution s m initial
  refine ⟨phase, funext (fun w => ?_)⟩
  by_cases hw : w ∈ r
  · exact (regValue_eq_iff r _ _).mp value w hw
  · exact frame w hw

private theorem majority_snapshot (a b cin c : Wire) (hnd : [a,b,cin,c].Nodup)
    (before : BasisState) (clean : before c = false) :
    Triple (fun st => st = before) (majority a b cin c)
      (fun st => st = writeBit before c (carryBit (before a) (before b) (before cin))) :=
  Triple.of_run_eq (by
    intro s m initial
    rw [majority_correct a b cin c hnd, initial, clean, Bool.false_xor])

private theorem eraseCarry_snapshot (a b cin c : Wire)
    (ha : a ≠ c) (hb : b ≠ c) (hc : cin ≠ c) (before : BasisState)
    (carry : before c = carryBit (before a) (before b) (before cin)) :
    Triple (fun st => st = before) (eraseCarry a b cin c)
      (fun st => st = writeBit before c false) :=
  Triple.of_run_eq (by
    intro s m initial
    rw [eraseCarry_correct a b cin c ha hb hc s (by simpa only [initial] using carry), initial])

private theorem sumInto_snapshot (a b cin c : Wire)
    (ha : a ≠ c) (hb : b ≠ c) (hc : cin ≠ c) (hcb : cin ≠ b)
    (before : BasisState) :
    Triple (fun st => st = writeBit before c false) (sumInto a cin b)
      (fun st => st = writeBit (writeBit before c false) b
        (sumBit (before a) (before b) (before cin))) :=
  Triple.of_run_eq (by
    intro s m initial
    simp only [sumInto]
    apply congrArg (State.mk s.phase)
    rw [initial]
    funext w
    by_cases hw : w = b
    · subst w
      simp only [writeBit, Function.update_self, Function.update_of_ne hcb,
        Function.update_of_ne ha, Function.update_of_ne hb, Function.update_of_ne hc, sumBit]
      cases before a <;> cases before b <;> cases before cin <;> rfl
    · simp [writeBit, hw])

private theorem inPlace_restore_frame (initial upper : BasisState) (b c : Wire)
    (ys : List Wire) (carry sum : Bool) (clean : initial c = false)
    (frame : ∀ w, w ∉ ys → upper w = (writeBit initial c carry) w) :
    ∀ w, w ∉ b :: ys → (writeBit (writeBit upper c false) b sum) w = initial w := by
  intro w hw
  have hw' : w ≠ b ∧ w ∉ ys := by simpa only [List.mem_cons, not_or] using hw
  rw [writeBit, Function.update_of_ne hw'.1]
  by_cases hc : w = c
  · subst w; simp [writeBit, clean]
  · rw [writeBit, Function.update_of_ne hc, frame w hw'.2]
    simp [writeBit, hc]

private theorem inPlace_sum_value (initial upper : BasisState) (a b cin c : Wire)
    (xs ys : List Wire) (hcxs : c ∉ xs) (hcys : c ∉ ys) (hbys : b ∉ ys)
    (higherSum :
      regValue ys upper =
        (regValue xs (writeBit initial c (carryBit (initial a) (initial b) (initial cin))) +
         regValue ys (writeBit initial c (carryBit (initial a) (initial b) (initial cin))) +
         ((writeBit initial c (carryBit (initial a) (initial b) (initial cin))) c).toNat) %
          2^ys.length) :
    regValue (b :: ys)
        (writeBit (writeBit upper c false) b (sumBit (initial a) (initial b) (initial cin))) =
      (regValue (a :: xs) initial + regValue (b :: ys) initial + (initial cin).toNat) %
        2^(b :: ys).length := by
  have tailValue : regValue ys
      (writeBit (writeBit upper c false) b (sumBit (initial a) (initial b) (initial cin))) =
      regValue ys upper := by
    apply regValue_congr
    intro w hw
    have hwb : w ≠ b := fun h => hbys (h ▸ hw)
    have hwc : w ≠ c := fun h => hcys (h ▸ hw)
    simp [writeBit, hwb, hwc]
  have sourceValue : regValue xs
      (writeBit initial c (carryBit (initial a) (initial b) (initial cin))) = regValue xs initial :=
    regValue_congr _ _ _ (fun w hw => by simp [writeBit, show w ≠ c from fun h => hcxs (h ▸ hw)])
  have targetValue : regValue ys
      (writeBit initial c (carryBit (initial a) (initial b) (initial cin))) = regValue ys initial :=
    regValue_congr _ _ _ (fun w hw => by simp [writeBit, show w ≠ c from fun h => hcys (h ▸ hw)])
  change (if (writeBit (writeBit upper c false) b (sumBit (initial a) (initial b) (initial cin))) b
      then 1 else 0) + 2 * regValue ys
        (writeBit (writeBit upper c false) b (sumBit (initial a) (initial b) (initial cin))) = _
  rw [tailValue, higherSum, sourceValue, targetValue]
  simp only [writeBit, Function.update_self, List.length_cons]
  simpa only [regValue, List.foldr_cons, Bool.toNat, Bool.cond_eq_ite] using
    sum_value_step (initial a) (initial b) (initial cin)
      (regValue xs initial) (regValue ys initial) ys.length


/-- All low/high wiring facts used by the recursive step, separate from its arithmetic. -/
private theorem addInPlace_layout_split (a b c cin : Wire) (xs ys cs : List Wire)
    (hnd : (cin :: ((a :: xs) ++ (b :: ys) ++ (c :: cs))).Nodup) :
    [a,b,cin,c].Nodup ∧ (c :: (xs ++ ys ++ cs)).Nodup ∧
      a ∉ ys ∧ b ∉ ys ∧ cin ∉ ys ∧ c ∉ ys ∧ c ∉ xs ∧ c ∉ cs ∧
      a ≠ c ∧ b ≠ c ∧ cin ≠ c ∧ cin ≠ b := by
  have hcin := (List.nodup_cons.mp hnd).1
  have hrest : ((a :: xs) ++ ((b :: ys) ++ (c :: cs))).Nodup := by
    simpa only [List.append_assoc] using (List.nodup_cons.mp hnd).2
  obtain ⟨has, hbk, hdisA⟩ := List.nodup_append'.mp hrest
  obtain ⟨hbs, hk, hdisB⟩ := List.nodup_append'.mp hbk
  have hca : cin ≠ a := fun h => hcin (by simp [h])
  have hcb : cin ≠ b := fun h => hcin (by simp [h])
  have hcbs : cin ∉ ys := fun h => hcin (by simp [h])
  have hab : a ≠ b := fun h => List.disjoint_left.mp hdisA List.mem_cons_self (by simp [h])
  have habs : a ∉ ys := fun h => List.disjoint_left.mp hdisA List.mem_cons_self (by simp [h])
  have hbbs : b ∉ ys := (List.nodup_cons.mp hbs).1
  have hbc : b ≠ c := fun h => List.disjoint_left.mp hdisB List.mem_cons_self (by simp [h])
  have hcbs' : c ∉ ys := fun h =>
    List.disjoint_left.mp hdisB (List.mem_cons_of_mem _ h) List.mem_cons_self
  have hccs : c ∉ cs := (List.nodup_cons.mp hk).1
  have hac : a ≠ c := fun h => List.disjoint_left.mp hdisA List.mem_cons_self (by simp [h])
  have hcas : c ∉ xs := fun h =>
    List.disjoint_left.mp hdisA (List.mem_cons_of_mem _ h) (by simp)
  have hcc : cin ≠ c := fun h => hcin (by simp [h])
  have h4 : [a,b,cin,c].Nodup := by
    simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, List.nodup_nil,
      not_or, not_false_eq_true, and_true]
    exact ⟨⟨hab, Ne.symm hca, hac⟩, ⟨Ne.symm hcb, hbc⟩, hcc⟩
  have upper : (c :: (xs ++ ys ++ cs)).Nodup := by
    apply List.nodup_cons.mpr
    refine ⟨by simp only [List.mem_append, not_or]; exact ⟨⟨hcas,hcbs'⟩,hccs⟩, ?_⟩
    apply List.nodup_append'.mpr
    refine ⟨List.nodup_append'.mpr ⟨(List.nodup_cons.mp has).2, (List.nodup_cons.mp hbs).2, ?_⟩,
      (List.nodup_cons.mp hk).2, ?_⟩
    · exact List.disjoint_left.mpr (fun w hw hw' =>
        List.disjoint_left.mp hdisA (List.mem_cons_of_mem _ hw)
          (List.mem_cons_of_mem _ (List.mem_append_left _ hw')))
    · exact List.disjoint_left.mpr (fun w hw hw' => by
        rcases List.mem_append.mp hw with hw | hw
        · exact List.disjoint_left.mp hdisA (List.mem_cons_of_mem _ hw)
            (List.mem_cons_of_mem _ (List.mem_append_right _ (List.mem_cons_of_mem _ hw')))
        · exact List.disjoint_left.mp hdisB (List.mem_cons_of_mem _ hw) (List.mem_cons_of_mem _ hw'))
  exact ⟨h4,upper,habs,hbbs,hcbs,hcbs',hcas,hccs,hac,hbc,hcc,hcb⟩

/-- A clean-workspace contract is independent of the supplied measurement record. -/
private theorem register_snapshot_of_clean (p : Program) (output clean : List Wire)
    (value : BasisState → Nat) (initial : State) (record : List Bool)
    (initialClean : ∀ w ∈ clean, initial.basis w = false)
    (correct : ∀ (s : State) (m : List Bool), (∀ w ∈ clean, s.basis w = false) →
      (run p m s).phase = s.phase ∧
      (∀ w, w ∉ output → (run p m s).basis w = s.basis w) ∧
      regValue output (run p m s).basis = value s.basis) :
    Triple (fun st => st = initial.basis) p (fun st => st = (run p record initial).basis) := by
  obtain ⟨_, same, result⟩ := correct initial record initialClean
  apply register_snapshot p output
  intro s m basis
  have clean' : ∀ w ∈ clean, s.basis w = false := by simpa only [basis] using initialClean
  obtain ⟨phase, frame, value'⟩ := correct s m clean'
  refine ⟨phase, ?_, ?_⟩
  · intro w hw
    exact (frame w hw).trans ((congrFun basis w).trans (same w hw).symm)
  · exact (value'.trans (congrArg value basis)).trans result.symm

/-- Add displayed register values without dropping the exact-state frame. -/
private theorem snapshot_values {P V : BasisState → Prop} {p : Program} {after : BasisState}
    (step : Triple P p (fun st => st = after)) (values : V after) :
    Triple P p (fun st => V st ∧ st = after) :=
  step.conseq (fun _ h => h) (fun _ h => ⟨h ▸ values, h⟩)


/-- 进位链初始为零时：x、cin 保持，y 原地得到低 n 位的和，进位链归零，相位对所有测量记录恢复。 -/
private theorem addInPlaceRecursive_run (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (s : State) (m : List Bool)
    (hclean : ∀ w ∈ carry, s.basis w = false) :
    (run (addInPlaceRecursive x y carry cin) m s).phase = s.phase ∧
    (∀ w, w ∉ y → (run (addInPlaceRecursive x y carry cin) m s).basis w = s.basis w) ∧
    regValue y (run (addInPlaceRecursive x y carry cin) m s).basis =
      (regValue x s.basis + regValue y s.basis + (s.basis cin).toNat) % 2^y.length := Proof
  induction y generalizing x carry cin s m with
  | nil => simp at hc
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
    have hcb : cin ≠ b := fun h => (List.nodup_cons.mp hnd).1 (by simp [h])
    let A := s.basis a
    let B := s.basis b
    let C := s.basis cin
    cases bs with
    | nil =>
      have hx0 : as = [] := List.eq_nil_of_length_eq_zero (by simpa using hx)
      have hc0 : carry = [] := List.eq_nil_of_length_eq_zero (by simpa using hc)
      subst hx0 hc0
      simp only [addInPlaceRecursive, run]
      refine ⟨trivial, ?_, ?_⟩
      · intro w hw
        have hwb : w ≠ b := by simpa using hw
        simp [writeBit, hwb]
      · simp only [regValue, List.foldr_cons, List.foldr_nil, List.length_cons, List.length_nil,
          writeBit, Function.update_self, Function.update_of_ne hcb]
        cases s.basis a <;> cases s.basis b <;> cases s.basis cin <;> simp
    | cons b' bs' =>
      cases as with
      | nil => simp at hx
      | cons a' as' =>
      cases carry with
      | nil => simp at hc
      | cons c cs =>
      have hx' : (a' :: as').length = (b' :: bs').length := by simpa using hx
      have hc' : cs.length + 1 = (b' :: bs').length := by simpa using hc
      obtain ⟨h4,hnd',habs,hbbs,hcbs,hcbs',hcas,hccs,hac,hbc,hcc,hcb⟩ :=
        addInPlace_layout_split a b c cin (a' :: as') (b' :: bs') cs hnd
      have hzero : s.basis c = false := hclean c (by simp)
      let s1 : State := ⟨s.phase, writeBit s.basis c (carryBit A B C)⟩
      have hs1 (w : Wire) (hw : w ≠ c) : s1.basis w = s.basis w := by simp [s1, writeBit, hw]
      have hclean' : ∀ d ∈ cs, s1.basis d = false := by
        intro d hd
        rw [hs1 d (fun h => hccs (h ▸ hd))]
        exact hclean d (by simp [hd])
      -- t is only a reference basis: the lemma below proves independence from every
      -- measurement record. Triple.seq still consumes the actual records in order.
      let t := run (addInPlaceRecursive (a' :: as') (b' :: bs') cs c) m s1
      -- The induction hypothesis gives the high-word sum and preserves all other bits.
      obtain ⟨_, hsame, hsum⟩ := ih (a' :: as') cs c hnd' hx' hc' s1 m hclean'
      have recursiveStep := register_snapshot_of_clean
        (addInPlaceRecursive (a' :: as') (b' :: bs') cs c) (b' :: bs') cs
        (fun st => (regValue (a' :: as') st + regValue (b' :: bs') st + (st c).toNat) %
          2^(b' :: bs').length) s1 m hclean' (ih (a' :: as') cs c hnd' hx' hc')
      have htA : t.basis a = A := by rw [hsame a habs, hs1 a hac]
      have htB : t.basis b = B := by rw [hsame b hbbs, hs1 b hbc]
      have htC : t.basis cin = C := by rw [hsame cin hcbs, hs1 cin hcc]
      have htK : t.basis c = carryBit A B C := by rw [hsame c hcbs']; simp [s1, writeBit]
      have eraseStep := eraseCarry_snapshot a b cin c hac hbc hcc t.basis
        (by rw [htA, htB, htC, htK])
      have sumStep : Triple (fun st => st = writeBit t.basis c false) (sumInto a cin b)
          (fun st => st = writeBit (writeBit t.basis c false) b (sumBit A B C)) := by
        simpa only [htA, htB, htC] using sumInto_snapshot a b cin c hac hbc hcc hcb t.basis
      let highSum := (regValue (a' :: as') s1.basis + regValue (b' :: bs') s1.basis +
        (carryBit A B C).toNat) % 2^(b' :: bs').length
      let total := (regValue (a :: a' :: as') s.basis + regValue (b :: b' :: bs') s.basis +
        C.toNat) % 2^(b :: b' :: bs').length
      have higherStep := snapshot_values (V := fun st => regValue (b' :: bs') st = highSum)
        recursiveStep (by simpa only [s1, writeBit, Function.update_self] using hsum)
      have prepareStep := snapshot_values (V := fun st => st c = carryBit A B C)
        (majority_snapshot a b cin c h4 s.basis hzero) (by simp [writeBit, A, B, C])
      have higherFromCarryStep := higherStep.conseq
        (P' := fun st => st c = carryBit A B C ∧ st = s1.basis)
        (fun _ h => h.2) (fun _ h => h)
      have eraseFromHigherStep :
          Triple (fun st => regValue (b' :: bs') st = highSum ∧ st = t.basis)
            (eraseCarry a b cin c) (fun st => st = writeBit t.basis c false) :=
        eraseStep.conseq (fun _ h => h.2) (fun _ h => h)
      have clearedStep := snapshot_values (V := fun st => st c = false)
        eraseFromHigherStep (by simp [writeBit])
      have finalStep := snapshot_values
        (V := fun st => st c = false ∧ regValue (b :: b' :: bs') st = total)
        sumStep ⟨by simp [writeBit, Ne.symm hbc],
          inPlace_sum_value s.basis t.basis a b cin c (a' :: as') (b' :: bs') hcas hcbs' hbbs hsum⟩
      have finalFromClearStep := finalStep.conseq
        (P' := fun st => st c = false ∧ st = writeBit t.basis c false)
        (fun _ h => h.2) (fun _ h => h)
      -- These are the actual four recursive stages; seq splits measurement records.
      have trace : Triple (fun st => st = s.basis)
          (addInPlaceRecursive (a :: a' :: as') (b :: b' :: bs') (c :: cs) cin)
          (fun st => (st c = false ∧ regValue (b :: b' :: bs') st = total) ∧
            st = writeBit (writeBit t.basis c false) b (sumBit A B C)) := by
        simpa only [addInPlaceRecursive, sumInto, List.append_assoc] using (hoare_steps {
          Precondition { satisfies (fun st => st = s.basis) };
          after command { call (majority a b cin c); }
          get { c=(carryBit A B C), satisfies (fun st => st = s1.basis) } by exact prepareStep;
          after command { call (addInPlaceRecursive (a' :: as') (b' :: bs') cs c); }
          get { (b' :: bs')=highSum, satisfies (fun st => st = t.basis) } by exact higherFromCarryStep;
          after command { call (eraseCarry a b cin c); }
          get { c=false, satisfies (fun st => st = writeBit t.basis c false) } by exact clearedStep;
          after command { call (sumInto a cin b); }
          get { c=false, (b :: b' :: bs')=total, satisfies (fun st => st = writeBit (writeBit t.basis c false) b (sumBit A B C)) } by exact finalFromClearStep;
          Conclusion { c=false, (b :: b' :: bs')=total, satisfies (fun st => st = writeBit (writeBit t.basis c false) b (sumBit A B C)) };
        })
      obtain ⟨phase, ⟨_, value⟩, basis⟩ := trace s m rfl
      refine ⟨phase, ?_, value⟩
      intro w hw
      rw [basis]
      exact inPlace_restore_frame s.basis t.basis b c (b' :: bs')
        (carryBit A B C) (sumBit A B C) hzero hsame w hw

/-- 循环版正确性：借助指令列表等价性，保留输入、相位并恢复零进位链。 -/
theorem addInPlace_correct (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (s : State) (m : List Bool)
    (hclean : ∀ w ∈ carry, s.basis w = false) :
    (run (addInPlace x y carry cin) m s).phase = s.phase ∧
    (∀ w, w ∉ y → (run (addInPlace x y carry cin) m s).basis w = s.basis w) ∧
    regValue y (run (addInPlace x y carry cin) m s).basis =
      (regValue x s.basis + regValue y s.basis + (s.basis cin).toNat) % 2^y.length := by
  simpa only [addInPlace_eq_recursive x y carry cin hx hc] using
    addInPlaceRecursive_run x y carry cin hnd hx hc s m hclean

/-- Extract the named-register interface from a full-state, clean-workspace contract.
This is only a frame conversion; the caller supplies the entire arithmetic proof. -/
private theorem inPlace_interface (p : Program) (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (X Y : Nat) (C : Bool)
    (execution : ∀ (s : State) (m : List Bool), (∀ w ∈ carry, s.basis w = false) →
      (run p m s).phase = s.phase ∧
      (∀ w, w ∉ y → (run p m s).basis w = s.basis w) ∧
      regValue y (run p m s).basis =
        (regValue x s.basis + regValue y s.basis + (s.basis cin).toNat) % 2^y.length) :
    {{ x = X, y = Y, cin = C, carry = 0 }} p
    {{ x = X, y = ((X + Y + C.toNat) % 2^y.length), cin = C, carry = 0 }} := by
  intro s m initial
  simp only [Holds.holds] at initial ⊢
  obtain ⟨⟨⟨hxv, hyv⟩, hcv⟩, hkv⟩ := initial
  have clean : ∀ w ∈ carry, s.basis w = false := (regValue_zero _ _).mp hkv
  obtain ⟨phase, same, sum⟩ := execution s m clean
  have hn := List.nodup_cons.mp hnd
  have hn2 := List.nodup_append'.mp
    (by simpa only [List.append_assoc] using hn.2 : (x ++ (y ++ carry)).Nodup)
  have hyc := List.nodup_append'.mp hn2.2.1
  have hxy : ∀ w ∈ x, w ∉ y := fun w hw hy =>
    List.disjoint_left.mp hn2.2.2 hw (List.mem_append_left _ hy)
  have hky : ∀ w ∈ carry, w ∉ y := fun w hw hy =>
    List.disjoint_left.mp hyc.2.2 hy hw
  have hciny : cin ∉ y := fun h => hn.1 (by simp [h])
  exact ⟨phase,
    ⟨⟨(regValue_congr _ _ _ (fun w hw => same w (hxy w hw))).trans hxv,
      by simpa only [hxv, hyv, hcv] using sum⟩, (same cin hciny).trans hcv⟩,
    (regValue_congr _ _ _ (fun w hw => same w (hky w hw))).trans hkv⟩

/-- 循环版接口：x、cin 保持，y 原地得到低 n 位的和，进位链归零。 -/
theorem addInPlace_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) (C : Bool) :
    {{ x = X, y = Y, cin = C, carry = 0 }} addInPlace x y carry cin
    {{ x = X, y = ((X + Y + C.toNat) % 2^y.length), cin = C, carry = 0 }} := hoare_steps {
  Precondition { x=X, y=Y, cin=C, carry=0 };
  after command { call (addInPlace x y carry cin); }
  get { x=X, y=((X + Y + C.toNat) % 2^y.length), cin=C, carry=0 } by exact inPlace_interface _ x y carry cin hnd X Y C (addInPlace_correct x y carry cin hnd hx hc);
  Conclusion { x=X, y=((X + Y + C.toNat) % 2^y.length), cin=C, carry=0 };
}

/-- y ← (y−x) mod 2^n，n 是目标 y 的位数；要求 cin=0、x/y 等长、carry 有 n−1 位。 -/
def subInPlace (x y carry : List Wire) (cin : Wire) : Program :=
  notRegister y ++ addInPlace x y carry cin ++ notRegister y

private theorem flip_y (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (X Y K : Nat) (C : Bool) :
    {{ x = X, y = Y, cin = C, carry = K }} notRegister y
    {{ x = X, y = (2^y.length - 1 - Y), cin = C, carry = K }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hn := List.nodup_cons.mp hnd
  have hn2 := List.nodup_append'.mp (by simpa only [List.append_assoc] using hn.2 : (x ++ (y ++ carry)).Nodup)
  have hyc := List.nodup_append'.mp hn2.2.1
  have hxy : ∀ w ∈ x, w ∉ y := fun w hw hy => List.disjoint_left.mp hn2.2.2 hw (List.mem_append_left _ hy)
  have hky : ∀ w ∈ carry, w ∉ y := fun w hw hy => List.disjoint_left.mp hyc.2.2 hy hw
  have hciny : cin ∉ y := fun hh => hn.1 (by simp [hh])
  rw [notRegister_correct y hyc.1]
  refine ⟨rfl, ⟨⟨?_, ?_⟩, ?_⟩, ?_⟩
  · exact (regValue_congr _ _ _ (fun w hw => by simp [hxy w hw])).trans h.1.1.1
  · change regValue y (fun w => if w ∈ y then !s.basis w else s.basis w) = _
    rw [regValue_congr y _ (fun w => !s.basis w) (by intro w hw; simp [hw]), regValue_complement, h.1.1.2]
  · simpa [hciny] using h.1.2
  · exact (regValue_congr _ _ _ (fun w hw => by simp [hky w hw])).trans h.2

private theorem complement_sub (X Y N : Nat) (hN : 0 < N) (hX : X < N) (hY : Y < N) :
    N - 1 - ((X + (N - 1 - Y)) % N) = (Y + N - X) % N := by
  by_cases h : X ≤ Y
  · rw [Nat.mod_eq_of_lt (show X + (N - 1 - Y) < N by omega),
      show Y + N - X = (Y - X) + N by omega, Nat.add_mod_right, Nat.mod_eq_of_lt (by omega)]
    omega
  · rw [show X + (N - 1 - Y) = (X - 1 - Y) + N by omega, Nat.add_mod_right,
      Nat.mod_eq_of_lt (show X - 1 - Y < N by omega), Nat.mod_eq_of_lt (show Y + N - X < N by omega)]
    omega

/-- Register bounds and the complement identity are bookkeeping, not new circuit steps. -/
private theorem inPlace_input_bounds (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (X Y : Nat) (st : BasisState)
    (initial : ((regValue x st = X ∧ regValue y st = Y) ∧ st cin = false) ∧
      regValue carry st = 0) : X < 2^y.length ∧ Y < 2^y.length := by
  exact ⟨by simpa only [initial.1.1.1, hx] using regValue_lt x st,
    by simpa only [initial.1.1.2] using regValue_lt y st⟩

private theorem addComplement_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) :
    {{ x = X, y = (2^y.length - 1 - Y), cin = false, carry = 0 }} addInPlace x y carry cin
    {{ x = X, y = ((X + (2^y.length - 1 - Y)) % 2^y.length), cin = false, carry = 0 }} := by
  simpa only [Bool.toNat_false, Nat.add_zero] using
    addInPlace_spec x y carry cin hnd hx hc X (2^y.length - 1 - Y) false

private theorem complementDifference_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (X Y : Nat)
    (hX : X < 2^y.length) (hY : Y < 2^y.length) :
    {{ x = X, y = ((X + (2^y.length - 1 - Y)) % 2^y.length), cin = false, carry = 0 }}
      notRegister y
    {{ x = X, y = ((Y + 2^y.length - X) % 2^y.length), cin = false, carry = 0 }} := by
  simpa only [complement_sub X Y (2^y.length) (Nat.two_pow_pos _) hX hY] using
    flip_y x y carry cin hnd X ((X + (2^y.length - 1 - Y)) % 2^y.length) 0 false

/-- x 保持，y 原地得到模 2^n 的差，进位链归零。 -/
theorem subInPlace_spec (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) (X Y : Nat) :
    {{ x = X, y = Y, cin = false, carry = 0 }} subInPlace x y carry cin
    {{ x = X, y = ((Y + 2^y.length - X) % 2^y.length), cin = false, carry = 0 }} := by
  intro s m initial
  obtain ⟨hX, hY⟩ := inPlace_input_bounds x y carry cin hx X Y s.basis initial
  let N := 2^y.length
  have trace : {{ x = X, y = Y, cin = false, carry = 0 }} subInPlace x y carry cin
      {{ x = X, y = ((Y + N - X) % N), cin = false, carry = 0 }} := by
    simpa only [subInPlace, List.append_assoc] using (hoare_steps {
      Precondition { x=X, y=Y, cin=false, carry=0 };
      after command { call (notRegister y); }
      get { x=X, y=(N - 1 - Y), cin=false, carry=0 } by exact flip_y x y carry cin hnd X Y 0 false;
      after command { call (addInPlace x y carry cin); }
      get { x=X, y=((X + (N - 1 - Y)) % N), cin=false, carry=0 } by exact addComplement_spec x y carry cin hnd hx hc X Y;
      after command { call (notRegister y); }
      get { x=X, y=((Y + N - X) % N), cin=false, carry=0 } by exact complementDifference_spec x y carry cin hnd X Y hX hY;
      Conclusion { x=X, y=((Y + N - X) % N), cin=false, carry=0 };
    })
  exact trace s m initial

private theorem addInPlaceRecursive_counts (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    toffoliCount (addInPlaceRecursive x y carry cin) = y.length - 1 ∧
    measurementCount (addInPlaceRecursive x y carry cin) = y.length - 1 := by
  induction y generalizing x carry cin with
  | nil => simp at hc
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
    cases bs with
    | nil =>
      have hx0 : as = [] := List.eq_nil_of_length_eq_zero (by simpa using hx)
      subst hx0
      simp [addInPlaceRecursive, toffoliCount, measurementCount]
    | cons b' bs' =>
      cases as with
      | nil => simp at hx
      | cons a' as' =>
      cases carry with
      | nil => simp at hc
      | cons c cs =>
      have := ih (a' :: as') cs c (by simpa using hx) (by simpa using hc)
      simp only [addInPlaceRecursive, toffoliCount_append, measurementCount_append, this.1, this.2,
        eraseCarry, majority, toffoliCount, measurementCount, List.length_cons]
      omega

theorem addInPlace_counts (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    toffoliCount (addInPlace x y carry cin) = y.length - 1 ∧
    measurementCount (addInPlace x y carry cin) = y.length - 1 := by
  simpa only [addInPlace_eq_recursive x y carry cin hx hc] using
    addInPlaceRecursive_counts x y carry cin hx hc

theorem subInPlace_counts (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    toffoliCount (subInPlace x y carry cin) = y.length - 1 ∧
    measurementCount (subInPlace x y carry cin) = y.length - 1 := by
  have h := addInPlace_counts x y carry cin hx hc
  simp only [subInPlace, toffoliCount_append, measurementCount_append,
    (notRegister_counts y).1, (notRegister_counts y).2, h.1, h.2, Nat.zero_add, Nat.add_zero, and_self]

/-- 非空寄存器时，程序恰好触及 cin、x、y 与进位链。 -/
private theorem addInPlaceRecursive_wires (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    wires (addInPlaceRecursive x y carry cin) = (cin :: (x ++ y ++ carry)).toFinset := by
  induction y generalizing x carry cin with
  | nil => simp at hc
  | cons b bs ih =>
    cases x with
    | nil => simp at hx
    | cons a as =>
    cases bs with
    | nil =>
      have hx0 : as = [] := List.eq_nil_of_length_eq_zero (by simpa using hx)
      have hc0 : carry = [] := List.eq_nil_of_length_eq_zero (by simpa using hc)
      subst hx0 hc0
      ext w
      simp [addInPlaceRecursive, wires, Instr.wires]
    | cons b' bs' =>
      cases as with
      | nil => simp at hx
      | cons a' as' =>
      cases carry with
      | nil => simp at hc
      | cons c cs =>
      have := ih (a' :: as') cs c (by simpa using hx) (by simpa using hc)
      have hm : wires (majority a b cin c) = {a, b, cin, c} := by
        ext w; simp [majority, wires, Instr.wires]; tauto
      simp only [addInPlaceRecursive, wires_append, this, hm, eraseCarry_wires]
      ext w
      simp only [wires, Instr.wires, Finset.mem_union, Finset.mem_insert, Finset.mem_singleton,
        List.mem_toFinset, List.mem_cons, List.mem_append, Finset.notMem_empty, or_false]
      tauto

theorem addInPlace_wires (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    wires (addInPlace x y carry cin) = (cin :: (x ++ y ++ carry)).toFinset := by
  simpa only [addInPlace_eq_recursive x y carry cin hx hc] using
    addInPlaceRecursive_wires x y carry cin hx hc

theorem subInPlace_wires (x y carry : List Wire) (cin : Wire)
    (hx : x.length = y.length) (hc : carry.length + 1 = y.length) :
    wires (subInPlace x y carry cin) = (cin :: (x ++ y ++ carry)).toFinset := by
  rw [subInPlace, wires_append, wires_append, addInPlace_wires x y carry cin hx hc, notRegister_wires]
  ext w
  simp only [Finset.mem_union, List.mem_toFinset, List.mem_cons, List.mem_append]
  tauto

/-- n 位原地加减：n−1 个 Toffoli、n−1 次测量、3n 根线路。 -/
theorem addInPlace_resources (x y carry : List Wire) (cin : Wire)
    (hnd : (cin :: (x ++ y ++ carry)).Nodup) (hx : x.length = y.length)
    (hc : carry.length + 1 = y.length) :
    toffoliCount (addInPlace x y carry cin) = y.length - 1 ∧
    measurementCount (addInPlace x y carry cin) = y.length - 1 ∧
    qubitCount (addInPlace x y carry cin) = 3 * y.length ∧
    toffoliCount (subInPlace x y carry cin) = y.length - 1 ∧
    measurementCount (subInPlace x y carry cin) = y.length - 1 ∧
    qubitCount (subInPlace x y carry cin) = 3 * y.length := by
  have ha := addInPlace_counts x y carry cin hx hc
  have hs := subInPlace_counts x y carry cin hx hc
  have hlen : (cin :: (x ++ y ++ carry)).length = 3 * y.length := by
    simp only [List.length_cons, List.length_append, hx]; omega
  refine ⟨ha.1, ha.2, ?_, hs.1, hs.2, ?_⟩
  · rw [qubitCount, addInPlace_wires x y carry cin hx hc, List.toFinset_card_of_nodup hnd, hlen]
  · rw [qubitCount, subInPlace_wires x y carry cin hx hc, List.toFinset_card_of_nodup hnd, hlen]


/-- y ← (y+c·K) mod 2^n，n 是目标 y 的位数，要求 K<2^n。
T 用于暂存受控常数 c·K。 -/
def maskedAddConst (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat) : Program :=
  maskedConstant c T K ++ addInPlace T y carry cin ++ maskedConstant c T K

/-- y ← (y−c·K) mod 2^n，n 是目标 y 的位数，要求 K<2^n。
T 用于暂存受控常数 c·K。 -/
def maskedSubConst (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat) : Program :=
  maskedConstant c T K ++ subInPlace T y carry cin ++ maskedConstant c T K

/-- y ← (y+c·src) mod 2^n，n 是目标 y 的位数；t 用于暂存 c·src。 -/
def maskedAddInPlace (c : Wire) (src t y carry : List Wire) (cin : Wire) : Program :=
  copyRegister (some c) src t ++ addInPlace t y carry cin ++ copyRegister (some c) src t

/-- y ← (y−c·src) mod 2^n，n 是目标 y 的位数；t 用于暂存 c·src。 -/
def maskedSubInPlace (c : Wire) (src t y carry : List Wire) (cin : Wire) : Program :=
  copyRegister (some c) src t ++ subInPlace t y carry cin ++ copyRegister (some c) src t

private theorem masked_load (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (K : Nat) (hK : K < 2^T.length)
    (C : Bool) (V Y : Nat) :
    {{ c = C, T = V, y = Y, cin = false, carry = 0 }} maskedConstant c T K
    {{ c = C, T = (V ^^^ (if C then K else 0)), y = Y, cin = false, carry = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hc := List.nodup_cons.mp hnd
  have hcin := List.nodup_cons.mp hc.2
  have hn2 := List.nodup_append'.mp (by simpa only [List.append_assoc] using hcin.2 : (T ++ (y ++ carry)).Nodup)
  have hcT : c ∉ T := fun hh => hc.1 (by simp [hh])
  have hcinT : cin ∉ T := fun hh => hcin.1 (by simp [hh])
  have hyT : ∀ w ∈ y, w ∉ T := fun w hw hT => List.disjoint_left.mp hn2.2.2 hT (List.mem_append_left _ hw)
  have hkT : ∀ w ∈ carry, w ∉ T := fun w hw hT => List.disjoint_left.mp hn2.2.2 hT (List.mem_append_right _ hw)
  obtain ⟨hp, he, hv⟩ := maskedConstant_correct c T K hn2.1 hcT hK s m
  refine ⟨hp, ⟨⟨⟨(he c hcT).trans h.1.1.1.1, ?_⟩, ?_⟩, ?_⟩, ?_⟩
  · rw [hv, h.1.1.1.2, h.1.1.1.1]
  · exact (regValue_congr _ _ _ (fun w hw => he w (hyT w hw))).trans h.1.1.2
  · exact (he cin hcinT).trans h.1.2
  · exact (regValue_congr _ _ _ (fun w hw => he w (hkT w hw))).trans h.2

private theorem masked_add (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (V Y : Nat) :
    {{ c = C, T = V, y = Y, cin = false, carry = 0 }} addInPlace T y carry cin
    {{ c = C, T = V, y = ((Y + V) % 2^y.length), cin = false, carry = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hn := List.nodup_cons.mp hnd
  obtain ⟨hp, hpost⟩ := addInPlace_spec T y carry cin hn.2 hT hc V Y false s m
    ⟨⟨⟨h.1.1.1.2, h.1.1.2⟩, h.1.2⟩, h.2⟩
  simp only [Holds.holds, Bool.toNat_false, Nat.add_zero, Nat.add_comm V Y] at hpost
  have hcw : c ∉ wires (addInPlace T y carry cin) := by
    rw [addInPlace_wires T y carry cin hT hc]
    exact fun hh => hn.1 (List.mem_toFinset.mp hh)
  exact ⟨hp, ⟨⟨⟨(run_preserves_outside _ m s c hcw).trans h.1.1.1.1, hpost.1.1.1⟩, hpost.1.1.2⟩,
    hpost.1.2⟩, hpost.2⟩

private theorem masked_sub (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (V Y : Nat) :
    {{ c = C, T = V, y = Y, cin = false, carry = 0 }} subInPlace T y carry cin
    {{ c = C, T = V, y = ((Y + 2^y.length - V) % 2^y.length), cin = false, carry = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hn := List.nodup_cons.mp hnd
  obtain ⟨hp, hpost⟩ := subInPlace_spec T y carry cin hn.2 hT hc V Y s m
    ⟨⟨⟨h.1.1.1.2, h.1.1.2⟩, h.1.2⟩, h.2⟩
  simp only [Holds.holds] at hpost
  have hcw : c ∉ wires (subInPlace T y carry cin) := by
    rw [subInPlace_wires T y carry cin hT hc]
    exact fun hh => hn.1 (List.mem_toFinset.mp hh)
  exact ⟨hp, ⟨⟨⟨(run_preserves_outside _ m s c hcw).trans h.1.1.1.1, hpost.1.1.1⟩, hpost.1.1.2⟩,
    hpost.1.2⟩, hpost.2⟩

-- Rules for loading a mask and clearing it after its source has been preserved.
private theorem masked_load_zero {c cin : Wire} {T y carry : List Wire}
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) {K : Nat} (hK : K < 2^T.length)
    (C : Bool) (Y : Nat) :
    {{ c = C, T = 0, y = Y, cin = false, carry = 0 }} maskedConstant c T K
    {{ c = C, T = (if C then K else 0), y = Y, cin = false, carry = 0 }} := by
  simpa only [Nat.zero_xor] using masked_load c cin T y carry hnd K hK C 0 Y

private theorem masked_clear {c cin : Wire} {T y carry : List Wire}
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) {K : Nat} (hK : K < 2^T.length)
    (C : Bool) (Y : Nat) :
    {{ c = C, T = (if C then K else 0), y = Y, cin = false, carry = 0 }} maskedConstant c T K
    {{ c = C, T = 0, y = Y, cin = false, carry = 0 }} := by
  simpa only [Nat.xor_self] using masked_load c cin T y carry hnd K hK C (if C then K else 0) Y

/-- 控制为真时 y 加上常数 K，为假时不变；T 与进位链回零。 -/
theorem maskedAddConst_spec (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (Y : Nat) :
    {{ c = C, T = 0, y = Y, cin = false, carry = 0 }} maskedAddConst c T y carry cin K
    {{ c = C, T = 0, y = ((Y + (if C then K else 0)) % 2^y.length), cin = false, carry = 0 }} := by
  let masked := if C then K else 0
  let result := (Y + masked) % 2^y.length
  simpa only [maskedAddConst, List.append_assoc] using (hoare_steps {
    Precondition { c=C, T=0, y=Y, cin=false, carry=0 };

    after command { call (maskedConstant c T K); }
    get { c=C, T=masked, y=Y, cin=false, carry=0 } by exact masked_load_zero hnd hK C Y;

    after command { call (addInPlace T y carry cin); }
    get { c=C, T=masked, y=result, cin=false, carry=0 } by exact masked_add c cin T y carry hnd hT hc C masked Y;

    after command { call (maskedConstant c T K); }
    get { c=C, T=0, y=result, cin=false, carry=0 } by exact masked_clear hnd hK C result;

    Conclusion { c=C, T=0, y=result, cin=false, carry=0 };
  })

/-- 控制为真时 y 减去常数 K，为假时不变；T 与进位链回零。 -/
theorem maskedSubConst_spec (c cin : Wire) (T y carry : List Wire)
    (hnd : (c :: cin :: (T ++ y ++ carry)).Nodup) (hT : T.length = y.length)
    (hc : carry.length + 1 = y.length) (K : Nat) (hK : K < 2^T.length) (C : Bool) (Y : Nat) :
    {{ c = C, T = 0, y = Y, cin = false, carry = 0 }} maskedSubConst c T y carry cin K
    {{ c = C, T = 0, y = ((Y + 2^y.length - (if C then K else 0)) % 2^y.length), cin = false, carry = 0 }} := by
  let masked := if C then K else 0
  let result := (Y + 2^y.length - masked) % 2^y.length
  simpa only [maskedSubConst, List.append_assoc] using (hoare_steps {
    Precondition { c=C, T=0, y=Y, cin=false, carry=0 };

    after command { call (maskedConstant c T K); }
    get { c=C, T=masked, y=Y, cin=false, carry=0 } by exact masked_load_zero hnd hK C Y;

    after command { call (subInPlace T y carry cin); }
    get { c=C, T=masked, y=result, cin=false, carry=0 } by exact masked_sub c cin T y carry hnd hT hc C masked Y;

    after command { call (maskedConstant c T K); }
    get { c=C, T=0, y=result, cin=false, carry=0 } by exact masked_clear hnd hK C result;

    Conclusion { c=C, T=0, y=result, cin=false, carry=0 };
  })

theorem maskedCopyWithFrame_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (C : Bool) (S V Y : Nat) :
    {{ c = C, src = S, t = V, y = Y, cin = false, carry = 0 }} copyRegister (some c) src t
    {{ c = C, src = S, t = (V ^^^ (if C then S else 0)), y = Y, cin = false, carry = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hcnt := List.nodup_iff_count.mp hnd
  have hst : (src ++ t).Nodup := by
    apply List.nodup_iff_count.mpr; intro w; have := hcnt w
    simp only [List.count_cons, List.count_append] at this ⊢; omega
  have hct : c ∉ t := fun hh => by
    have h1 := hcnt c; have h2 := List.count_pos_iff.mpr hh
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1; omega
  have hcint : cin ∉ t := fun hh => by
    have h1 := hcnt cin; have h2 := List.count_pos_iff.mpr hh
    simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1; omega
  have hyt : ∀ w ∈ y, w ∉ t := fun w hw hw' => by
    have h1 := hcnt w; have h2 := List.count_pos_iff.mpr hw; have h3 := List.count_pos_iff.mpr hw'
    simp only [List.count_cons, List.count_append] at h1; omega
  have hkt : ∀ w ∈ carry, w ∉ t := fun w hw hw' => by
    have h1 := hcnt w; have h2 := List.count_pos_iff.mpr hw; have h3 := List.count_pos_iff.mpr hw'
    simp only [List.count_cons, List.count_append] at h1; omega
  have hsrct : ∀ w ∈ src, w ∉ t := fun w hw hw' => List.disjoint_left.mp (List.nodup_append'.mp hst).2.2 hw hw'
  obtain ⟨hp, he, hv⟩ := copyRegister_correct (some c) src t hs hst (by simpa using hct) s m
  refine ⟨hp, ⟨⟨⟨⟨(he c hct).trans h.1.1.1.1.1,
    (regValue_congr _ _ _ (fun w hw => he w (hsrct w hw))).trans h.1.1.1.1.2⟩, ?_⟩,
    (regValue_congr _ _ _ (fun w hw => he w (hyt w hw))).trans h.1.1.2⟩,
    (he cin hcint).trans h.1.2⟩,
    (regValue_congr _ _ _ (fun w hw => he w (hkt w hw))).trans h.2⟩
  rw [hv]
  simp only [copyValue, h.1.1.1.1.1, h.1.1.1.1.2, h.1.1.1.2]

theorem addInPlaceWithSource_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (S V Y : Nat) :
    {{ c = C, src = S, t = V, y = Y, cin = false, carry = 0 }} addInPlace t y carry cin
    {{ c = C, src = S, t = V, y = ((Y + V) % 2^y.length), cin = false, carry = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hcnt := List.nodup_iff_count.mp hnd
  have hnd' : (cin :: (t ++ y ++ carry)).Nodup := by
    apply List.nodup_iff_count.mpr; intro w; have := hcnt w
    simp only [List.count_cons, List.count_append] at this ⊢; omega
  obtain ⟨hp, hpost⟩ := addInPlace_spec t y carry cin hnd' ht hc V Y false s m
    ⟨⟨⟨h.1.1.1.2, h.1.1.2⟩, h.1.2⟩, h.2⟩
  simp only [Holds.holds, Bool.toNat_false, Nat.add_zero, Nat.add_comm V Y] at hpost
  have hout : ∀ w, w = c ∨ w ∈ src → w ∉ wires (addInPlace t y carry cin) := by
    intro w hw
    rw [addInPlace_wires t y carry cin ht hc]
    intro hm
    have hm' := List.mem_toFinset.mp hm
    have h1 := hcnt w
    have h2 := List.count_pos_iff.mpr hm'
    rcases hw with rfl | hw
    · simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega
    · have h3 := List.count_pos_iff.mpr hw
      simp only [List.count_cons, List.count_append] at h1 h2; omega
  refine ⟨hp, ⟨⟨⟨⟨(run_preserves_outside _ m s c (hout c (Or.inl rfl))).trans h.1.1.1.1.1,
    (regValue_congr _ _ _ (fun w hw => run_preserves_outside _ m s w (hout w (Or.inr hw)))).trans h.1.1.1.1.2⟩,
    hpost.1.1.1⟩, hpost.1.1.2⟩, hpost.1.2⟩, hpost.2⟩

theorem subInPlaceWithSource_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length) (C : Bool) (S V Y : Nat) :
    {{ c = C, src = S, t = V, y = Y, cin = false, carry = 0 }} subInPlace t y carry cin
    {{ c = C, src = S, t = V, y = ((Y + 2^y.length - V) % 2^y.length), cin = false, carry = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hcnt := List.nodup_iff_count.mp hnd
  have hnd' : (cin :: (t ++ y ++ carry)).Nodup := by
    apply List.nodup_iff_count.mpr; intro w; have := hcnt w
    simp only [List.count_cons, List.count_append] at this ⊢; omega
  obtain ⟨hp, hpost⟩ := subInPlace_spec t y carry cin hnd' ht hc V Y s m
    ⟨⟨⟨h.1.1.1.2, h.1.1.2⟩, h.1.2⟩, h.2⟩
  simp only [Holds.holds] at hpost
  have hout : ∀ w, w = c ∨ w ∈ src → w ∉ wires (subInPlace t y carry cin) := by
    intro w hw
    rw [subInPlace_wires t y carry cin ht hc]
    intro hm
    have hm' := List.mem_toFinset.mp hm
    have h1 := hcnt w
    have h2 := List.count_pos_iff.mpr hm'
    rcases hw with rfl | hw
    · simp only [List.count_cons, List.count_append, beq_self_eq_true, if_true] at h1 h2; omega
    · have h3 := List.count_pos_iff.mpr hw
      simp only [List.count_cons, List.count_append] at h1 h2; omega
  refine ⟨hp, ⟨⟨⟨⟨(run_preserves_outside _ m s c (hout c (Or.inl rfl))).trans h.1.1.1.1.1,
    (regValue_congr _ _ _ (fun w hw => run_preserves_outside _ m s w (hout w (Or.inr hw)))).trans h.1.1.1.1.2⟩,
    hpost.1.1.1⟩, hpost.1.1.2⟩, hpost.1.2⟩, hpost.2⟩

-- Rules for loading a mask and clearing it after its source has been preserved.
private theorem maskedCopy_load {c cin : Wire} {src t y carry : List Wire}
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (C : Bool) (S Y : Nat) :
    {{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }} copyRegister (some c) src t
    {{ c = C, src = S, t = (if C then S else 0), y = Y, cin = false, carry = 0 }} := by
  simpa only [Nat.zero_xor] using maskedCopyWithFrame_spec c cin src t y carry hnd hs C S 0 Y

private theorem maskedCopy_clear {c cin : Wire} {src t y carry : List Wire}
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (C : Bool) (S Y : Nat) :
    {{ c = C, src = S, t = (if C then S else 0), y = Y, cin = false, carry = 0 }} copyRegister (some c) src t
    {{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }} := by
  simpa only [Nat.xor_self] using maskedCopyWithFrame_spec c cin src t y carry hnd hs C S (if C then S else 0) Y

/-- 控制为真时 y 加上寄存器 src 的值，为假时不变；临时字 t 与进位链回零，src 保持。 -/
theorem maskedAddInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat) :
    {{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }} maskedAddInPlace c src t y carry cin
    {{ c = C, src = S, t = 0, y = ((Y + (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }} := by
  let masked := if C then S else 0
  let result := (Y + masked) % 2^y.length
  simpa only [maskedAddInPlace, List.append_assoc] using (hoare_steps {
    Precondition { c=C, src=S, t=0, y=Y, cin=false, carry=0 };

    after command { call (copyRegister (some c) src t); }
    get { c=C, src=S, t=masked, y=Y, cin=false, carry=0 } by exact maskedCopy_load hnd hs C S Y;

    after command { call (addInPlace t y carry cin); }
    get { c=C, src=S, t=masked, y=result, cin=false, carry=0 } by exact addInPlaceWithSource_spec c cin src t y carry hnd ht hc C S masked Y;

    after command { call (copyRegister (some c) src t); }
    get { c=C, src=S, t=0, y=result, cin=false, carry=0 } by exact maskedCopy_clear hnd hs C S result;

    Conclusion { c=C, src=S, t=0, y=result, cin=false, carry=0 };
  })

/-- 控制为真时 y 减去寄存器 src 的值，为假时不变。 -/
theorem maskedSubInPlace_spec (c cin : Wire) (src t y carry : List Wire)
    (hnd : (c :: cin :: (src ++ t ++ y ++ carry)).Nodup) (hs : src.length = t.length)
    (ht : t.length = y.length) (hc : carry.length + 1 = y.length) (C : Bool) (S Y : Nat) :
    {{ c = C, src = S, t = 0, y = Y, cin = false, carry = 0 }} maskedSubInPlace c src t y carry cin
    {{ c = C, src = S, t = 0, y = ((Y + 2^y.length - (if C then S else 0)) % 2^y.length), cin = false, carry = 0 }} := by
  let masked := if C then S else 0
  let result := (Y + 2^y.length - masked) % 2^y.length
  simpa only [maskedSubInPlace, List.append_assoc] using (hoare_steps {
    Precondition { c=C, src=S, t=0, y=Y, cin=false, carry=0 };

    after command { call (copyRegister (some c) src t); }
    get { c=C, src=S, t=masked, y=Y, cin=false, carry=0 } by exact maskedCopy_load hnd hs C S Y;

    after command { call (subInPlace t y carry cin); }
    get { c=C, src=S, t=masked, y=result, cin=false, carry=0 } by exact subInPlaceWithSource_spec c cin src t y carry hnd ht hc C S masked Y;

    after command { call (copyRegister (some c) src t); }
    get { c=C, src=S, t=0, y=result, cin=false, carry=0 } by exact maskedCopy_clear hnd hs C S result;

    Conclusion { c=C, src=S, t=0, y=result, cin=false, carry=0 };
  })


/-- 两次受控复制与一次原地加减的字面门数。 -/
theorem maskedInPlace_counts (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length = t.length) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length) :
    (toffoliCount (maskedAddInPlace c src t y carry cin) = 3*y.length-1 ∧
      measurementCount (maskedAddInPlace c src t y carry cin) = y.length-1) ∧
    (toffoliCount (maskedSubInPlace c src t y carry cin) = 3*y.length-1 ∧
      measurementCount (maskedSubInPlace c src t y carry cin) = y.length-1) := by
  have cp := copyRegister_counts (some c) src t hs
  have ap := addInPlace_counts t y carry cin ht hc
  have sp := subInPlace_counts t y carry cin ht hc
  simp only [maskedAddInPlace,maskedSubInPlace,toffoliCount_append,measurementCount_append,
    cp.1,cp.2,ap.1,ap.2,sp.1,sp.2,Option.isSome_some,if_true]
  omega

/-- 非空目标保证受控复制确实触及控制位；支持不包含任何额外out寄存器。 -/
theorem maskedInPlace_wires (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length = t.length) (ht : t.length = y.length)
    (hc : carry.length + 1 = y.length) :
    wires (maskedAddInPlace c src t y carry cin) = (c::cin::(src++t++y++carry)).toFinset ∧
    wires (maskedSubInPlace c src t y carry cin) = (c::cin::(src++t++y++carry)).toFinset := by
  have hn : src ≠ [] := by intro h; simp [h] at hs; omega
  have cp := copyRegister_wires (some c) src t hs
  simp only [List.isEmpty_iff,hn,if_false,Option.toList_some,List.cons_append,List.nil_append] at cp
  constructor
  · rw [maskedAddInPlace,wires_append,wires_append,cp,addInPlace_wires t y carry cin ht hc]
    ext w
    simp only [Finset.mem_union,List.mem_toFinset,List.mem_cons,List.mem_append]
    tauto
  · rw [maskedSubInPlace,wires_append,wires_append,cp,subInPlace_wires t y carry cin ht hc]
    ext w
    simp only [Finset.mem_union,List.mem_toFinset,List.mem_cons,List.mem_append]
    tauto

/-- 受控加减只触及控制位、cin、常数字/临时字、目标与进位链。 -/
theorem maskedConst_wires_subset (c : Wire) (T y carry : List Wire) (cin : Wire) (K : Nat)
    (hT : T.length = y.length) (hc : carry.length + 1 = y.length) :
    wires (maskedAddConst c T y carry cin K) ⊆ (c :: cin :: (T ++ y ++ carry)).toFinset ∧
    wires (maskedSubConst c T y carry cin K) ⊆ (c :: cin :: (T ++ y ++ carry)).toFinset := by
  have hm : wires (maskedConstant c T K) ⊆ (c :: cin :: (T ++ y ++ carry)).toFinset := by
    intro w hw
    have := List.mem_toFinset.mp (maskedConstant_wires_subset c T K hw)
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at this ⊢; tauto
  have ha : wires (addInPlace T y carry cin) ⊆ (c :: cin :: (T ++ y ++ carry)).toFinset := by
    rw [addInPlace_wires T y carry cin hT hc]
    intro w hw
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hw ⊢; tauto
  have hs : wires (subInPlace T y carry cin) ⊆ (c :: cin :: (T ++ y ++ carry)).toFinset := by
    rw [subInPlace_wires T y carry cin hT hc]
    intro w hw
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hw ⊢; tauto
  constructor
  · simp only [maskedAddConst, wires_append]
    exact Finset.union_subset (Finset.union_subset hm ha) hm
  · simp only [maskedSubConst, wires_append]
    exact Finset.union_subset (Finset.union_subset hm hs) hm

theorem maskedInPlace_wires_subset (c : Wire) (src t y carry : List Wire) (cin : Wire)
    (hs : src.length = t.length) (ht : t.length = y.length) (hc : carry.length + 1 = y.length) :
    wires (maskedAddInPlace c src t y carry cin) ⊆ (c :: cin :: (src ++ t ++ y ++ carry)).toFinset ∧
    wires (maskedSubInPlace c src t y carry cin) ⊆ (c :: cin :: (src ++ t ++ y ++ carry)).toFinset := by
  have hcopy : wires (copyRegister (some c) src t) ⊆ (c :: cin :: (src ++ t ++ y ++ carry)).toFinset := by
    rw [copyRegister_wires (some c) src t hs]
    split_ifs
    · exact Finset.empty_subset _
    · intro w hw
      simp only [Option.toList_some, List.mem_toFinset, List.mem_cons, List.mem_append,
        List.cons_append, List.nil_append] at hw ⊢; tauto
  have ha : wires (addInPlace t y carry cin) ⊆ (c :: cin :: (src ++ t ++ y ++ carry)).toFinset := by
    rw [addInPlace_wires t y carry cin ht hc]
    intro w hw
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hw ⊢; tauto
  have hsu : wires (subInPlace t y carry cin) ⊆ (c :: cin :: (src ++ t ++ y ++ carry)).toFinset := by
    rw [subInPlace_wires t y carry cin ht hc]
    intro w hw
    simp only [List.mem_toFinset, List.mem_cons, List.mem_append] at hw ⊢; tauto
  constructor
  · simp only [maskedAddInPlace, wires_append]
    exact Finset.union_subset (Finset.union_subset hcopy ha) hcopy
  · simp only [maskedSubInPlace, wires_append]
    exact Finset.union_subset (Finset.union_subset hcopy hsu) hcopy

end ECDSAAdd.Arithmetic
