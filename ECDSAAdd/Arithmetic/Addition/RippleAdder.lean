import ECDSAAdd.Arithmetic.Addition.FullAdder
import ECDSAAdd.Framework.BitTranslation
import ECDSAAdd.Arithmetic.RegisterXor.Registers
import Mathlib.Data.List.OfFn

namespace ECDSAAdd.Arithmetic
open GateProof
open scoped ECDSAAdd.ProofLanguage

attribute [local simp] sumBit carryBit

/-- 每一位的两根输入线、输出线和进位工作线；列表按小端排列。 -/
structure AddBit where
  x : Wire
  y : Wire
  out : Wire
  carry : Wire

def addWires : List AddBit → List Wire
  | [] => []
  | b :: bs => b.x :: b.y :: b.out :: b.carry :: addWires bs

local macro_rules
  | `(tactic| get_elem_tactic) =>
      `(tactic| (simp_all +zetaDelta only
          [List.length_append, List.length_cons, List.length_nil, List.length_map]
                 omega))

/-- 输出 out ^= (x+y+cin) mod 2^n，n 是逐位接线列表 bs 的长度。
x/y/out 分别由 bs 中的同名字段组成；cin 是输入进位。 -/
def rippleAdder (bs : List AddBit) (cin : Wire) : Program := prog {
  let n := bs.length; -- 输入位列表 bs 的长度。
  let c := [cin] ++ bs.map AddBit.carry; -- 进位链：c[0]=cin，c[i+1] 是第 i 位的进位。
  for i in range(n) {
    let b := bs[i];
    {
      b.carry ^= MAJ(b.x, b.y, c[i]);
      b.out ^= (b.x XOR b.y XOR c[i]);
    } using fullAdder by fullAdder_spec;
  };
  for i in reversed(range(n)) {
    let b := bs[i];
    b.carry = 0 using (eraseCarry b.x b.y c[i]) by (eraseCarry_spec b.x b.y c[i]);
  };
}

private theorem rippleAdder_nil (cin : Wire) : rippleAdder [] cin = [] := rfl

/-- 循环生成的门列满足原来的递归分解，包含相同的测量顺序。 -/
private theorem rippleAdder_cons (b : AddBit) (bs : List AddBit) (cin : Wire) :
    rippleAdder (b :: bs) cin =
      fullAdder b.x b.y cin b.out b.carry ++ rippleAdder bs b.carry ++
        eraseCarry b.x b.y cin b.carry := by
  simp [rippleAdder, List.ofFn_succ, List.reverse_cons, List.flatten_append,
    List.append_assoc]

theorem mem_addWires {bs : List AddBit} {b : AddBit} (h : b ∈ bs) :
    b.x ∈ addWires bs ∧ b.y ∈ addWires bs ∧
      b.out ∈ addWires bs ∧ b.carry ∈ addWires bs := by
  induction bs with
  | nil => simp at h
  | cons a bs ih =>
    rcases List.mem_cons.mp h with rfl | h
    · simp [addWires]
    · obtain ⟨hx, hy, ho, hc⟩ := ih h
      simp [addWires, hx, hy, ho, hc]

theorem sum_value_step (A B C : Bool) (X Y n : Nat) :
    (sumBit A B C).toNat + 2 * ((X + Y + (carryBit A B C).toNat) % 2^n) =
      ((A.toNat + 2 * X) + (B.toNat + 2 * Y) + C.toNat) % 2^(n+1) := by
  have hv := fullAdder_bit_value A B C
  have hs : (sumBit A B C).toNat < 2 := by cases sumBit A B C <;> decide
  have hn : 0 < 2^n := by positivity
  have hr := Nat.mod_lt (X + Y + (carryBit A B C).toNat) hn
  have he : (A.toNat + 2 * X) + (B.toNat + 2 * Y) + C.toNat =
      (sumBit A B C).toNat + 2 * (X + Y + (carryBit A B C).toNat) := by omega
  rw [he, Nat.pow_succ, Nat.mul_comm (2^n) 2]
  have hsmod : (sumBit A B C).toNat < 2 * 2^n := by omega
  have hsmall : (sumBit A B C).toNat +
      2 * ((X + Y + (carryBit A B C).toNat) % 2^n) < 2 * 2^n := by omega
  conv_rhs => rw [Nat.add_mod, Nat.mul_mod_mul_left,
    Nat.mod_eq_of_lt hsmod, Nat.mod_eq_of_lt hsmall]

/-! Auxiliary rules for the recursive Hoare derivation. -/
namespace RippleAdderProof

/-- The XOR sum is in out; every other wire retains its initial value. -/
private def sumAndFrame (bs : List AddBit) (cin : Wire) (initial final : BasisState) : Prop :=
  (∀ w, w ∉ bs.map AddBit.out → final w = initial w) ∧
  regValue (bs.map AddBit.out) final = regValue (bs.map AddBit.out) initial ^^^
    ((regValue (bs.map AddBit.x) initial + regValue (bs.map AddBit.y) initial +
      (initial cin).toNat) % 2^bs.length)

/-- After the low full adder, only its sum output and carry have changed. -/
private def lowState (b : AddBit) (cin : Wire) (initial : BasisState) : BasisState :=
  writeBit (writeBit initial b.carry (carryBit (initial b.x) (initial b.y) (initial cin)))
    b.out (initial b.out ^^ sumBit (initial b.x) (initial b.y) (initial cin))

private def higherSumAndFrame (b : AddBit) (bs : List AddBit) (cin : Wire)
    (initial final : BasisState) : Prop :=
  (∀ w, w ∉ bs.map AddBit.out → final w = lowState b cin initial w) ∧
  regValue (bs.map AddBit.out) final = regValue (bs.map AddBit.out) initial ^^^
    ((regValue (bs.map AddBit.x) initial + regValue (bs.map AddBit.y) initial +
      (carryBit (initial b.x) (initial b.y) (initial cin)).toNat) % 2^bs.length)

private theorem low_step (b : AddBit) (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires (b :: bs)).Nodup) (initial : BasisState)
    (hzero : initial b.carry = false) :
    Triple (fun st => st = initial) (fullAdder b.x b.y cin b.out b.carry)
      (fun st => (st b.out = (initial b.out ^^ sumBit (initial b.x) (initial b.y) (initial cin)) ∧
        st b.carry = carryBit (initial b.x) (initial b.y) (initial cin)) ∧
        st = lowState b cin initial) := by
  have hn := hnd
  simp only [addWires, List.nodup_cons, List.mem_cons, not_or] at hn
  obtain ⟨⟨hcx, hcy, hco, hck, _⟩, ⟨hxy, hxo, hxk, _⟩,
    ⟨hyo, hyk, _⟩, ⟨hok, _⟩, _, _⟩ := hn
  have h5 : [b.x, b.y, cin, b.out, b.carry].Nodup := by
    simp_all [List.nodup_cons, Ne.symm hcx, Ne.symm hcy]
  intro s m h
  rw [fullAdder_correct _ _ _ _ _ h5, h, hzero]
  simp [lowState, writeBit, Ne.symm hok]

private theorem higher_step (b : AddBit) (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires (b :: bs)).Nodup) (initial : BasisState)
    (hclean : ∀ d ∈ b :: bs, initial d.carry = false)
    (recursive : ∀ s m, (∀ d ∈ bs, s.basis d.carry = false) →
      (run (rippleAdder bs b.carry) m s).phase = s.phase ∧
        sumAndFrame bs b.carry s.basis (run (rippleAdder bs b.carry) m s).basis) :
    Triple
      (fun st => (st b.out = (initial b.out ^^ sumBit (initial b.x) (initial b.y) (initial cin)) ∧
        st b.carry = carryBit (initial b.x) (initial b.y) (initial cin)) ∧
        st = lowState b cin initial)
      (rippleAdder bs b.carry) (higherSumAndFrame b bs cin initial) := by
  have hn := hnd
  simp only [addWires, List.nodup_cons, List.mem_cons, not_or] at hn
  obtain ⟨_, _, _, ⟨_, hor⟩, hkr, _⟩ := hn
  intro s m h
  have clean : ∀ d ∈ bs, s.basis d.carry = false := by
    intro d hd
    have hw := (mem_addWires hd).2.2.2
    have ho : d.carry ≠ b.out := by intro he; exact hor (he ▸ hw)
    have hk : d.carry ≠ b.carry := by intro he; exact hkr (he ▸ hw)
    rw [h.2]
    simpa [lowState, writeBit, ho, hk] using hclean d (by simp [hd])
  obtain ⟨phase, unchanged, sum⟩ := recursive s m clean
  have hread (f : AddBit → Wire) (member : ∀ d ∈ bs, f d ∈ addWires bs) :
      regValue (bs.map f) s.basis = regValue (bs.map f) initial := by
    apply regValue_congr
    intro w hw
    obtain ⟨d, hd, rfl⟩ := List.mem_map.mp hw
    have hw := member d hd
    have ho : f d ≠ b.out := by intro he; exact hor (he ▸ hw)
    have hk : f d ≠ b.carry := by intro he; exact hkr (he ▸ hw)
    simp [h.2, lowState, writeBit, ho, hk]
  have hx := hread AddBit.x (fun d hd => (mem_addWires hd).1)
  have hy := hread AddBit.y (fun d hd => (mem_addWires hd).2.1)
  have ho := hread AddBit.out (fun d hd => (mem_addWires hd).2.2.1)
  refine ⟨phase, ?_, ?_⟩
  · simpa only [h.2] using unchanged
  · simpa only [hx, hy, ho, h.1.2] using sum

/-- Erase the saved carry and combine the low sum bit with the higher-bit sum. -/
private theorem erase_step (b : AddBit) (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires (b :: bs)).Nodup) (initial : BasisState)
    (hzero : initial b.carry = false) :
    Triple (higherSumAndFrame b bs cin initial)
      (eraseCarry b.x b.y cin b.carry) (sumAndFrame (b :: bs) cin initial) := by
  have hn := hnd
  simp only [addWires, List.nodup_cons, List.mem_cons, not_or] at hn
  obtain ⟨⟨hcx, hcy, hco, hck, hcr⟩, ⟨hxy, hxo, hxk, hxr⟩,
    ⟨hyo, hyk, hyr⟩, ⟨hok, hor⟩, hkr, hrest⟩ := hn
  intro t record higherBits
  obtain ⟨hsame, hsum⟩ := higherBits
  let A := initial b.x
  let B := initial b.y
  let C := initial cin
  let low := lowState b cin initial
  have hout_mem : ∀ w ∈ bs.map AddBit.out, w ∈ addWires bs := by
    intro w hw
    obtain ⟨d, hd, rfl⟩ := List.mem_map.mp hw
    exact (mem_addWires hd).2.2.1
  have heq : ∀ w, w ∉ addWires bs → t.basis w = low w := by
    intro w hw
    exact hsame w (fun h => hw (hout_mem w h))
  have htX : t.basis b.x = A := by rw [heq _ hxr]; simp [low, lowState, writeBit, hxo, hxk, A]
  have htY : t.basis b.y = B := by rw [heq _ hyr]; simp [low, lowState, writeBit, hyo, hyk, B]
  have htC : t.basis cin = C := by rw [heq _ hcr]; simp [low, lowState, writeBit, hco, hck, C]
  have htK : t.basis b.carry = carryBit A B C := by
    rw [heq _ hkr]; simp [low, lowState, writeBit, Ne.symm hok, A, B, C]
  have htO : t.basis b.out = (initial b.out ^^ sumBit A B C) := by
    rw [heq _ hor]; simp [low, lowState, writeBit, A, B, C]
  rw [eraseCarry_correct _ _ _ _ hxk hyk hck t (by rw [htX, htY, htC, htK])]
  refine ⟨rfl, ?_, ?_⟩
  · intro w hw
    have hw' : w ≠ b.out ∧ w ∉ bs.map AddBit.out := by
      simpa only [List.map_cons, List.mem_cons, not_or] using hw
    have ht := hsame w hw'.2
    by_cases hk : w = b.carry
    · subst w; simp [writeBit, hzero]
    · simp [writeBit, hk, ht, lowState, hw'.1]
  · have ho := regValue_congr (bs.map AddBit.out)
      (writeBit t.basis b.carry false) t.basis (by
        intro w hw
        have h : w ≠ b.carry := by intro he; apply hkr; simpa [he] using hout_mem w hw
        simp [writeBit, h])
    change (if (writeBit t.basis b.carry false) b.out then 1 else 0) +
        2 * regValue (bs.map AddBit.out) (writeBit t.basis b.carry false) = _
    rw [ho, hsum]
    simp only [writeBit, Function.update_of_ne hok, htO, List.map_cons, List.length_cons]
    have hnum := sum_value_step A B C (regValue (bs.map AddBit.x) initial)
      (regValue (bs.map AddBit.y) initial) bs.length
    have hxor := xor_value_step (initial b.out) (sumBit A B C)
      (regValue (bs.map AddBit.out) initial)
      ((regValue (bs.map AddBit.x) initial + regValue (bs.map AddBit.y) initial +
        (carryBit A B C).toNat) % 2^bs.length)
    rw [hnum] at hxor
    simpa only [regValue, List.foldr_cons, Bool.toNat, Bool.cond_eq_ite, A, B, C] using hxor

end RippleAdderProof

/-- 进位工作线初始为零时，向任意输出初值异或写入低 n 位的和，其他线路恢复。 -/
theorem rippleAdder_xor_correct (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (s : State) (m : List Bool)
    (hclean : ∀ b ∈ bs, s.basis b.carry = false) :
    (run (rippleAdder bs cin) m s).phase = s.phase ∧
    (∀ w, w ∉ bs.map AddBit.out → (run (rippleAdder bs cin) m s).basis w = s.basis w) ∧
    regValue (bs.map AddBit.out) (run (rippleAdder bs cin) m s).basis =
      regValue (bs.map AddBit.out) s.basis ^^^
      ((regValue (bs.map AddBit.x) s.basis + regValue (bs.map AddBit.y) s.basis +
        (s.basis cin).toNat) % 2^bs.length) := by
  induction bs generalizing cin s m with
  | nil => simp [rippleAdder_nil, run, regValue, Nat.mod_one]
  | cons b bs ih =>
    let A := s.basis b.x
    let B := s.basis b.y
    let C := s.basis cin
    let O := s.basis b.out
    let Xhi := regValue (bs.map AddBit.x) s.basis
    let Yhi := regValue (bs.map AddBit.y) s.basis
    let Ohi := regValue (bs.map AddBit.out) s.basis
    let all := b :: bs
    let X := regValue (all.map AddBit.x) s.basis
    let Y := regValue (all.map AddBit.y) s.basis
    let initialOut := regValue (all.map AddBit.out) s.basis
    let higherFrame := fun st : BasisState =>
      ∀ w, w ∉ bs.map AddBit.out → st w = RippleAdderProof.lowState b cin s.basis w
    let finalFrame := fun st : BasisState =>
      ∀ w, w ∉ all.map AddBit.out → st w = s.basis w
    have tailWiring : (b.carry :: addWires bs).Nodup :=
      hnd.sublist (by simp only [addWires]; exact List.Sublist.refl _ |>.cons _ |>.cons _ |>.cons _ |>.cons _)
    have recursive := ih b.carry tailWiring
    have low_bit := RippleAdderProof.low_step b bs cin hnd s.basis (hclean b (by simp))
    have higher_bits := RippleAdderProof.higher_step b bs cin hnd s.basis hclean recursive
    have clear_carry := RippleAdderProof.erase_step b bs cin hnd s.basis (hclean b (by simp))
    have derivation := hoare_steps {
      Precondition { satisfies (fun st => st = s.basis) };

      after command { call (fullAdder b.x b.y cin b.out b.carry); }
      get { b.out=(O ^^ sumBit A B C), b.carry=carryBit A B C, satisfies (fun st => st = RippleAdderProof.lowState b cin s.basis) } by exact low_bit;

      after command { call (rippleAdder bs b.carry); }
      get { satisfies higherFrame, bs.map AddBit.out=(Ohi ^^^ ((Xhi + Yhi + (carryBit A B C).toNat) % 2^bs.length)) } by exact higher_bits;

      after command { call (eraseCarry b.x b.y cin b.carry); }
      get { satisfies finalFrame, all.map AddBit.out=(initialOut ^^^ ((X + Y + C.toNat) % 2^all.length)) } by exact clear_carry;

      Conclusion { satisfies finalFrame, all.map AddBit.out=(initialOut ^^^ ((X + Y + C.toNat) % 2^all.length)) };
    }
    simpa only [rippleAdder_cons, List.append_assoc] using derivation s m rfl

namespace RippleAdderProof

/-- XOR into a zero output is the ordinary sum; the existing frame is retained. -/
private theorem zero_output_step (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (initial : BasisState)
    (hclean : ∀ b ∈ bs, initial b.out = false ∧ initial b.carry = false) :
    Triple (fun st => st = initial) (rippleAdder bs cin)
      (fun st => (∀ w, w ∉ bs.map AddBit.out → st w = initial w) ∧
        regValue (bs.map AddBit.out) st =
          (regValue (bs.map AddBit.x) initial + regValue (bs.map AddBit.y) initial +
            (initial cin).toNat) % 2^bs.length) := by
  have outputInitiallyZero : regValue (bs.map AddBit.out) initial = 0 :=
    (regValue_zero _ _).mpr (by
      intro w hw
      obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hw
      exact (hclean b hb).1)
  intro s m hs
  have clean : ∀ b ∈ bs, s.basis b.carry = false := by
    simpa only [hs] using fun b hb => (hclean b hb).2
  simpa only [hs, outputInitiallyZero, Nat.zero_xor] using
    rippleAdder_xor_correct bs cin hnd s m clean

end RippleAdderProof

/-- 零输出的加法是 XOR 接口的特例。 -/
theorem rippleAdder_correct (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (s : State) (m : List Bool)
    (hclean : ∀ b ∈ bs, s.basis b.out = false ∧ s.basis b.carry = false) :
    (run (rippleAdder bs cin) m s).phase = s.phase ∧
    (∀ w, w ∉ bs.map AddBit.out → (run (rippleAdder bs cin) m s).basis w = s.basis w) ∧
    regValue (bs.map AddBit.out) (run (rippleAdder bs cin) m s).basis =
      (regValue (bs.map AddBit.x) s.basis + regValue (bs.map AddBit.y) s.basis +
        (s.basis cin).toNat) % 2^bs.length := by
  let X := regValue (bs.map AddBit.x) s.basis
  let Y := regValue (bs.map AddBit.y) s.basis
  let C := s.basis cin
  let unchanged := fun st : BasisState => ∀ w, w ∉ bs.map AddBit.out → st w = s.basis w
  have zero_output := RippleAdderProof.zero_output_step bs cin hnd s.basis hclean
  have derivation := hoare_steps {
    Precondition { satisfies (fun st => st = s.basis) };
    after command { call (rippleAdder bs cin); }
    get { satisfies unchanged, bs.map AddBit.out=((X + Y + C.toNat) % 2^bs.length) } by exact zero_output;
    Conclusion { satisfies unchanged, bs.map AddBit.out=((X + Y + C.toNat) % 2^bs.length) };
  }
  exact derivation s m rfl


theorem inputs_not_output (bs : List AddBit) (hnd : (addWires bs).Nodup) :
    ∀ b ∈ bs, b.x ∉ bs.map AddBit.out ∧ b.y ∉ bs.map AddBit.out ∧
      b.carry ∉ bs.map AddBit.out := by
  induction bs with
  | nil => simp
  | cons a bs ih =>
    simp only [addWires, List.nodup_cons, List.mem_cons, not_or] at hnd
    obtain ⟨⟨hxy, hxo, hxk, hxr⟩, ⟨hyo, hyk, hyr⟩, ⟨hok, hor⟩, hkr, hr⟩ := hnd
    have hn (w : Wire) (h : w ∉ addWires bs) : w ∉ bs.map AddBit.out := by
      intro hw
      obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hw
      exact h (mem_addWires hb).2.2.1
    intro b hb
    rcases List.mem_cons.mp hb with rfl | hb
    · simp [hn _ hxr, hn _ hyr, hn _ hkr, hxo, hyo, Ne.symm hok]
    · obtain ⟨hx, hy, hk⟩ := ih hr b hb
      obtain ⟨hx', hy', _, hk'⟩ := mem_addWires hb
      have hxo' : b.x ≠ a.out := by intro h; apply hor; simpa [h] using hx'
      have hyo' : b.y ≠ a.out := by intro h; apply hor; simpa [h] using hy'
      have hko' : b.carry ≠ a.out := by intro h; apply hor; simpa [h] using hk'
      simp [hx, hy, hk, hxo', hyo', hko']

namespace RippleAdderProof

/-- Project the already proved XOR sum and wire frame into register assertions. -/
private theorem xor_register_step (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y O : Nat) (C : Bool) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = O, bs.map AddBit.carry = (0 : Nat) }} rippleAdder bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = (O ^^^ ((X + Y + C.toNat) % 2^bs.length)),
       bs.map AddBit.carry = (0 : Nat) }} := Proof
  For every s, m assuming hP
  simp only [Holds.holds] at hP ⊢
  obtain ⟨⟨⟨⟨hx, hy⟩, hc⟩, ho⟩, hk⟩ := hP
  { ∀ b ∈ bs, s.basis b.carry = false } as hclean by (by
    intro b hb
    exact (regValue_zero _ _).mp hk _ (List.mem_map.mpr ⟨b, hb, rfl⟩));
  obtain ⟨hp, hsame, hsum⟩ := rippleAdder_xor_correct bs cin hnd s m hclean
  have hn := inputs_not_output bs (List.nodup_cons.mp hnd).2
  have hr (f : AddBit → Wire) (h : ∀ b ∈ bs, f b ∉ bs.map AddBit.out) :
      regValue (bs.map f) (run (rippleAdder bs cin) m s).basis = regValue (bs.map f) s.basis :=
    regValue_congr _ _ _ (by
      intro w hw
      obtain ⟨b, hb, rfl⟩ := List.mem_map.mp hw
      exact hsame _ (h b hb))
  have hx' := hr AddBit.x (fun b hb => (hn b hb).1)
  have hy' := hr AddBit.y (fun b hb => (hn b hb).2.1)
  have hk' := hr AddBit.carry (fun b hb => (hn b hb).2.2)
  have hc' : (run (rippleAdder bs cin) m s).basis cin = s.basis cin := by
    apply hsame
    intro h
    obtain ⟨b, hb, he⟩ := List.mem_map.mp h
    exact (List.nodup_cons.mp hnd).1 (he ▸ (mem_addWires hb).2.2.1)
  let final := run (rippleAdder bs cin) m s
  { regValue (bs.map AddBit.x) final.basis = X ∧
      regValue (bs.map AddBit.y) final.basis = Y ∧ final.basis cin = C }
    as inputs by ⟨hx'.trans hx, hy'.trans hy, hc'.trans hc⟩;
  { regValue (bs.map AddBit.out) final.basis =
      O ^^^ ((X + Y + C.toNat) % 2^bs.length) }
    as output by (by simpa only [hx, hy, hc, ho] using hsum);
  { regValue (bs.map AddBit.carry) final.basis = 0 }
    as clean by (hk'.trans hk);
  conclude { final.phase = s.phase ∧
    (((regValue (bs.map AddBit.x) final.basis = X ∧
        regValue (bs.map AddBit.y) final.basis = Y) ∧ final.basis cin = C) ∧
      regValue (bs.map AddBit.out) final.basis = O ^^^ ((X + Y + C.toNat) % 2^bs.length)) ∧
    regValue (bs.map AddBit.carry) final.basis = 0 }
    by ⟨hp, ⟨⟨⟨inputs.1, inputs.2.1⟩, inputs.2.2⟩, output⟩, clean⟩;

end RippleAdderProof

/-- n 位 XOR 加法：保持输入和输入进位，向任意输出初值异或低 n 位的和，工作位归零。 -/
theorem rippleAdder_xor_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y O : Nat) (C : Bool) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = O, bs.map AddBit.carry = (0 : Nat) }} rippleAdder bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = (O ^^^ ((X + Y + C.toNat) % 2^bs.length)),
       bs.map AddBit.carry = (0 : Nat) }} := by
  have register_step := RippleAdderProof.xor_register_step bs cin hnd X Y O C
  exact hoare_steps {
    Precondition { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=C, bs.map AddBit.out=O, bs.map AddBit.carry=(0 : Nat) };
    after command { call (rippleAdder bs cin); }
    get { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=C, bs.map AddBit.out=(O ^^^ ((X + Y + C.toNat) % 2^bs.length)), bs.map AddBit.carry=(0 : Nat) } by exact register_step;
    Conclusion { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=C, bs.map AddBit.out=(O ^^^ ((X + Y + C.toNat) % 2^bs.length)), bs.map AddBit.carry=(0 : Nat) };
  }

/-- 输出初始为零时，XOR 写入就是普通加法。 -/
theorem rippleAdder_spec (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) (X Y : Nat) (C : Bool) :
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = (0 : Nat), bs.map AddBit.carry = (0 : Nat) }} rippleAdder bs cin
    {{ bs.map AddBit.x = X, bs.map AddBit.y = Y, cin = C,
       bs.map AddBit.out = ((X + Y + C.toNat) % 2^bs.length),
       bs.map AddBit.carry = (0 : Nat) }} := by
  have zero_output := rippleAdder_xor_spec bs cin hnd X Y 0 C
  simp only [Nat.zero_xor] at zero_output
  exact hoare_steps {
    Precondition { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=C, bs.map AddBit.out=(0 : Nat), bs.map AddBit.carry=(0 : Nat) };
    after command { call (rippleAdder bs cin); }
    get { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=C, bs.map AddBit.out=((X + Y + C.toNat) % 2^bs.length), bs.map AddBit.carry=(0 : Nat) } by exact zero_output;
    Conclusion { bs.map AddBit.x=X, bs.map AddBit.y=Y, cin=C, bs.map AddBit.out=((X + Y + C.toNat) % 2^bs.length), bs.map AddBit.carry=(0 : Nat) };
  }

namespace RippleAdderProof

private theorem extra_bit_bound (bs : List AddBit) (high : AddBit) (X Y : Nat) (C : Bool)
    (hX : X < 2^bs.length) (hY : Y < 2^bs.length) :
    (X + Y + C.toNat) % 2^(bs ++ [high]).length = X + Y + C.toNat := by
  apply Nat.mod_eq_of_lt
  have hc := C.toNat_le
  simp only [List.length_append, List.length_singleton, Nat.pow_succ]
  omega

end RippleAdderProof

/-- 加一个高位后，n 位输入的和完整保留在 n+1 位输出中。
高位是输出的一部分；只清理进位工作线，不清理最高输出位。 -/
theorem rippleAdder_wide_spec (bs : List AddBit) (high : AddBit) (cin : Wire)
    (hnd : (cin :: addWires (bs ++ [high])).Nodup) (X Y : Nat) (C : Bool)
    (hX : X < 2^bs.length) (hY : Y < 2^bs.length) :
    {{ (bs ++ [high]).map AddBit.x = X, (bs ++ [high]).map AddBit.y = Y, cin = C,
       (bs ++ [high]).map AddBit.out = (0 : Nat),
       (bs ++ [high]).map AddBit.carry = (0 : Nat) }} rippleAdder (bs ++ [high]) cin
    {{ (bs ++ [high]).map AddBit.x = X, (bs ++ [high]).map AddBit.y = Y, cin = C,
       (bs ++ [high]).map AddBit.out = (X + Y + C.toNat),
       (bs ++ [high]).map AddBit.carry = (0 : Nat) }} := by
  let extended := bs ++ [high]
  have complete_sum := rippleAdder_spec extended cin hnd X Y C
  rw [RippleAdderProof.extra_bit_bound bs high X Y C hX hY] at complete_sum
  exact hoare_steps {
    Precondition { extended.map AddBit.x=X, extended.map AddBit.y=Y, cin=C, extended.map AddBit.out=(0 : Nat), extended.map AddBit.carry=(0 : Nat) };
    after command { call (rippleAdder extended cin); }
    get { extended.map AddBit.x=X, extended.map AddBit.y=Y, cin=C, extended.map AddBit.out=(X + Y + C.toNat), extended.map AddBit.carry=(0 : Nat) } by exact complete_sum;
    Conclusion { extended.map AddBit.x=X, extended.map AddBit.y=Y, cin=C, extended.map AddBit.out=(X + Y + C.toNat), extended.map AddBit.carry=(0 : Nat) };
  }

/-- 每位一次 Toffoli，进位清理不增加 Toffoli。 -/
theorem rippleAdder_toffoliCount (bs : List AddBit) (cin : Wire) :
    toffoliCount (rippleAdder bs cin) = bs.length := by
  induction bs generalizing cin with
  | nil => rfl
  | cons b bs ih =>
    simp [rippleAdder_cons, toffoliCount_append, fullAdder_toffoliCount,
      eraseCarry, toffoliCount, ih, Nat.add_comm]

/-- 每位一次测量，记录消费数与输入值无关。 -/
theorem rippleAdder_measurementCount (bs : List AddBit) (cin : Wire) :
    measurementCount (rippleAdder bs cin) = bs.length := by
  induction bs generalizing cin with
  | nil => rfl
  | cons b bs ih =>
    simp [rippleAdder_cons, measurementCount_append, fullAdder_measurementCount,
      eraseCarry, measurementCount, ih]

theorem addWires_length (bs : List AddBit) : (addWires bs).length = 4 * bs.length := by
  induction bs with
  | nil => rfl
  | cons b bs ih => simp [addWires, ih]; omega

/-- 非空进位链恰好访问输入进位线和每位的四根线路。 -/
theorem rippleAdder_wires (b : AddBit) (bs : List AddBit) (cin : Wire) :
    wires (rippleAdder (b :: bs) cin) = (cin :: addWires (b :: bs)).toFinset := by
  induction bs generalizing b cin with
  | nil =>
    ext w
    simp [rippleAdder_cons, rippleAdder_nil, wires_append, fullAdder_wires, eraseCarry_wires, addWires]
    tauto
  | cons d ds ih =>
    rw [rippleAdder_cons, wires_append, wires_append, fullAdder_wires, ih, eraseCarry_wires]
    ext w
    simp [addWires]
    tauto

/-- n 位非空加法使用 4n+1 根静态线路；空程序不访问线路。 -/
theorem rippleAdder_qubitCount (bs : List AddBit) (cin : Wire)
    (hnd : (cin :: addWires bs).Nodup) :
    qubitCount (rippleAdder bs cin) = if bs.isEmpty then 0 else 4 * bs.length + 1 := by
  cases bs with
  | nil => rfl
  | cons b bs =>
    rw [qubitCount, rippleAdder_wires, List.toFinset_card_of_nodup hnd]
    simp [addWires_length]

end ECDSAAdd.Arithmetic
