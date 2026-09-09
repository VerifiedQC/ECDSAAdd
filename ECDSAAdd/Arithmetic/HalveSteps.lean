import ECDSAAdd.Arithmetic.ExternalMod
import ECDSAAdd.Arithmetic.KaliskiRound
import ECDSAAdd.Arithmetic.Shift

namespace ECDSAAdd.Arithmetic
open ExternalMod

/-- 模减半使用的奇数条件加数。 -/
def halveAddend (q X : Nat) : Nat := if X%2=0 then 0 else q

theorem ExternalMod.update (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O : Nat) (v : ModField → Nat)
    (f : ModField) (z : Nat) (s t : BasisState) (hv : Values L src dst X O v s)
    (he : ∀ w, w ∉ L.reg f → t w = s w) (hz : regValue (L.reg f) t = z) :
    Values L src dst X O (Function.update v f z) t := by
  obtain ⟨hs, hd⟩ := external_disjoint src dst L hnd
  refine ⟨?_, ?_, ModValues.update L (List.nodup_append'.mp hnd).2.1 v f z s t hv.2.2 he hz⟩
  · exact (regValue_congr _ _ _ (fun w hw => he w
      (fun hh => List.disjoint_left.mp hs hw (field_subset L f hh)))).trans hv.1
  · exact (regValue_congr _ _ _ (fun w hw => he w
      (fun hh => List.disjoint_left.mp hd hw (field_subset L f hh)))).trans hv.2.1

theorem ExternalMod.constant (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O : Nat) (v : ModField → Nat)
    (target : ModField) (k : Nat) (hk : k < 2^(L.width+1)) :
    Triple (Values L src dst X O v) (xorConstant (L.reg target) k)
      (Values L src dst X O (Function.update v target (v target ^^^ k))) := by
  intro s m hv
  have hl := (List.nodup_append'.mp hnd).2.1
  obtain ⟨hp, he, hz⟩ := xorConstant_correct (L.reg target) (L.reg_nodup hl target) k
    (by simpa only [ModLayout.reg_length] using hk) s m
  refine ⟨hp, ExternalMod.update L src dst hnd X O v target _ s.basis _ hv he ?_⟩
  simpa only [hv.2.2.1 target] using hz

theorem ExternalMod.add_step (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O : Nat) (v : ModField → Nat)
    (a b target carry : ModField) (hf : [a, b, target, carry].Nodup)
    (cin : Wire) (hcin : cin = L.cinSum ∨ cin = L.cinDiff) (hcarry : v carry = 0) :
    Triple (Values L src dst X O v) (add (L.adder a b target carry cin))
      (Values L src dst X O (Function.update v target (v target ^^^ ((v a + v b) % 2^(L.width+1))))) := by
  intro s m hv
  have hl := (List.nodup_append'.mp hnd).2.1
  let A := L.adder a b target carry cin
  have hc : s.basis cin = false := by
    rcases hcin with rfl | rfl
    · exact hv.2.2.2.1
    · exact hv.2.2.2.2
  have hclean : regValue A.carry s.basis = 0 := by
    simpa only [A, ModLayout.adder_carry, hcarry] using hv.2.2.1 carry
  obtain ⟨hp, he, hz⟩ := rippleAdder_xor_correct A.bits A.cin (L.adder_nodup hl a b target carry hf cin hcin) s m (by
    intro bit hb
    exact (regValue_zero _ _).mp hclean _ (List.mem_map.mpr ⟨bit, hb, rfl⟩))
  change ∀ w, w ∉ A.out → (run (add A) m s).basis w = s.basis w at he
  change regValue A.out (run (add A) m s).basis = regValue A.out s.basis ^^^
    ((regValue A.x s.basis + regValue A.y s.basis + (s.basis cin).toNat) % 2^A.width) at hz
  simp only [A, ModLayout.adder_out] at he
  refine ⟨hp, ExternalMod.update L src dst hnd X O v target _ s.basis _ hv he ?_⟩
  simpa only [A, ModLayout.adder_out, ModLayout.adder_x, ModLayout.adder_y,
    ModLayout.adder_width, hv.2.2.1 a, hv.2.2.1 b, hv.2.2.1 target, hc, Bool.toNat_false, Nat.add_zero] using hz

theorem halve_mask (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src ≠ [])
    (X O : Nat) (v : ModField → Nat) :
    Triple (Values L src dst X O v)
      (copyRegister (some src.head!) (L.reg .modulus) L.y)
      (Values L src dst X O (Function.update v .y (v .y ^^^ halveAddend (v .modulus) X))) := by
  intro s m h
  have hl := (List.nodup_append'.mp hnd).2.1
  have hc : src.head! ∉ L.y := by
    have hm : src.head! ∈ src := by cases src <;> simp_all
    exact fun hh => List.disjoint_left.mp (external_disjoint src dst L hnd).1 hm
      (field_subset L .y hh)
  obtain ⟨hp, he, hz⟩ := copyRegister_correct (some src.head!) (L.reg .modulus) L.y
    (by simp [ModLayout.y, L.reg_length])
    (List.nodup_append'.mpr ⟨L.reg_nodup hl .modulus, L.reg_nodup hl .y,
      L.reg_disjoint hl .modulus .y (by decide)⟩) (by simpa using hc) s m
  refine ⟨hp, ExternalMod.update L src dst hnd X O v .y _ s.basis _ h he ?_⟩
  simp only [copyValue] at hz
  rw [regValue_headBit src hs s.basis, h.1] at hz
  by_cases hh : X % 2 = 0
  · simpa [halveAddend, hh, h.2.2.1 .modulus,
      show regValue L.y s.basis = v .y from h.2.2.1 .y] using hz
  · have hh1 : X % 2 = 1 := by omega
    simpa [halveAddend, hh, hh1, h.2.2.1 .modulus,
      show regValue L.y s.basis = v .y from h.2.2.1 .y] using hz

theorem halve_shift (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O : Nat) (v : ModField → Nat)
    (hq : v .modulus % 2 = 1) (heven : v .out % 2 = 0) :
    Triple (Values L src dst X O v) (shiftRight (L.reg .modulus).head! L.out)
      (Values L src dst X O (Function.update v .out (v .out / 2))) := by
  intro s m h
  have hl := (List.nodup_append'.mp hnd).2.1
  have hn : L.reg .modulus ≠ [] := by
    intro he; have hh := L.reg_length .modulus; rw [he] at hh; simp at hh
  have hm : (L.reg .modulus).head! ∈ L.reg .modulus := by
    generalize he : L.reg .modulus = r at *; cases r <;> simp_all
  have hc : (L.reg .modulus).head! ∉ L.out :=
    List.disjoint_left.mp (L.reg_disjoint hl .modulus .out (by decide)) hm
  have hb : s.basis (L.reg .modulus).head! = true := by
    rw [regValue_headBit _ hn s.basis, h.2.2.1 .modulus, hq]; rfl
  obtain ⟨hp, hz⟩ := shiftRight_spec (L.reg .modulus).head! L.out
    (List.nodup_cons.mpr ⟨hc, L.reg_nodup hl .out⟩) true (v .out)
    (fun _ => heven) s m ⟨hb, h.2.2.1 .out⟩
  exact ⟨hp, ExternalMod.update L src dst hnd X O v .out _ s.basis _ h
    (shift_frame _ _ s m).2.1 (by simpa using hz.2)⟩

theorem halve_unshift (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (X O : Nat) (v : ModField → Nat)
    (hq : v .modulus % 2 = 1) (hfit : 2 * v .out < 2^(L.width+1)) :
    Triple (Values L src dst X O v) (shiftLeft (L.reg .modulus).head! L.out)
      (Values L src dst X O (Function.update v .out (2 * v .out))) := by
  intro s m h
  have hl := (List.nodup_append'.mp hnd).2.1
  have hn : L.reg .modulus ≠ [] := by
    intro he; have hh := L.reg_length .modulus; rw [he] at hh; simp at hh
  have hm : (L.reg .modulus).head! ∈ L.reg .modulus := by
    generalize he : L.reg .modulus = r at *; cases r <;> simp_all
  have hc : (L.reg .modulus).head! ∉ L.out :=
    List.disjoint_left.mp (L.reg_disjoint hl .modulus .out (by decide)) hm
  have hb : s.basis (L.reg .modulus).head! = true := by
    rw [regValue_headBit _ hn s.basis, h.2.2.1 .modulus, hq]; rfl
  obtain ⟨hp, hz⟩ := shiftLeft_spec (L.reg .modulus).head! L.out
    (List.nodup_cons.mpr ⟨hc, L.reg_nodup hl .out⟩) true (v .out)
    (by simpa [ModLayout.out, L.reg_length] using fun (_ : true = true) => hfit)
    s m ⟨hb, h.2.2.1 .out⟩
  exact ⟨hp, ExternalMod.update L src dst hnd X O v .out _ s.basis _ h
    (shift_frame _ _ s m).2.2.2 (by simpa using hz.2)⟩

end ECDSAAdd.Arithmetic
