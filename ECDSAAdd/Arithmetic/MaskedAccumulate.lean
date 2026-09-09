import ECDSAAdd.Arithmetic.Accumulate
import ECDSAAdd.Arithmetic.Copy
import ECDSAAdd.Arithmetic.ModularFrame

namespace ECDSAAdd.Arithmetic

/-- 控制只作用于逐位 CCX 复制，模加减和测量流程固定。 -/
def maskedAccumulate (L : ModLayout) (q : Nat) (src : List Wire) (c : Wire) : Program :=
  copyRegister (some c) src L.y ++ accumulate L q ++ copyRegister (some c) src L.y

def maskedUnaccumulate (L : ModLayout) (q : Nat) (src : List Wire) (c : Wire) : Program :=
  copyRegister (some c) src L.y ++ unaccumulate L q ++ copyRegister (some c) src L.y

private def MaskValues (L : ModLayout) (src : List Wire) (c : Wire) (X : Nat) (C : Bool)
    (A B O : Nat) (st : BasisState) : Prop :=
  regValue src st = X ∧ st c = C ∧ ModValues L (ModValues.clean A B O) st

private theorem mask_iff (L : ModLayout) (src : List Wire) (c : Wire) (X : Nat) (C : Bool)
    (A B O : Nat) (st : BasisState) :
    MaskValues L src c X C A B O st ↔
      (((((regValue src st = X ∧ st c = C) ∧ regValue L.x st = A) ∧ regValue L.y st = B) ∧
        regValue L.out st = O) ∧ regValue L.work st = 0) := by
  rw [MaskValues, ModValues.clean_iff]
  tauto

private theorem mask_copy (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1)
    (X : Nat) (C : Bool) (A B O : Nat) :
    Triple (MaskValues L src c X C A B O) (copyRegister (some c) src L.y)
      (MaskValues L src c X C A (B ^^^ (if C then X else 0)) O) := by
  intro s m hv
  obtain ⟨hc, hrest⟩ := List.nodup_cons.mp hnd
  obtain ⟨hs, hl, hsl⟩ := List.nodup_append'.mp hrest
  have hreg {w : Wire} (h : w ∈ L.y) : w ∈ L.wires :=
    List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (L.reg_mem .y h))
  have hsy : src.Disjoint L.y := List.disjoint_left.mpr
    (fun _ h₁ h₂ => List.disjoint_left.mp hsl h₁ (hreg h₂))
  have hcy : c ∉ L.y := fun h => hc (List.mem_append_right _ (hreg h))
  obtain ⟨hp, he, hz⟩ := copyRegister_correct (some c) src L.y
    (by rw [ModLayout.y, L.reg_length]; exact hlen)
    (List.nodup_append'.mpr ⟨hs, L.reg_nodup hl .y, hsy⟩) (by simpa using hcy) s m
  have hv' := ModValues.update L hl (ModValues.clean A B O) .y
    (B ^^^ (if C then X else 0)) s.basis _ hv.2.2 he (by
      simpa only [copyValue, hv.1, hv.2.1,
        show regValue L.y s.basis = B from hv.2.2.1 .y] using hz)
  have hfun : Function.update (ModValues.clean A B O) .y (B ^^^ (if C then X else 0)) =
      ModValues.clean A (B ^^^ (if C then X else 0)) O := by
    funext f; cases f <;> simp [ModValues.clean]
  rw [hfun] at hv'
  exact ⟨hp, (regValue_congr _ _ _ (fun w hw => he w (List.disjoint_left.mp hsy hw))).trans hv.1,
    (he c hcy).trans hv.2.1, hv'⟩

private theorem inside (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (X : Nat) (C : Bool) (A B O A' B' O' : Nat)
    (program : Program) (hwire : wires program ⊆ L.wires.toFinset)
    (hprogram : {{ L.x = A, L.y = B, L.out = O, L.work = 0 }} program
      {{ L.x = A', L.y = B', L.out = O', L.work = 0 }}) :
    Triple (MaskValues L src c X C A B O) program (MaskValues L src c X C A' B' O') := by
  intro s m hv
  obtain ⟨hc, hrest⟩ := List.nodup_cons.mp hnd
  have hs := (List.nodup_append'.mp hrest).2.2
  obtain ⟨hp, h⟩ := hprogram s m ((ModValues.clean_iff L A B O s.basis).mp hv.2.2)
  have he (w : Wire) (hw : w ∉ L.wires) : (run program m s).basis w = s.basis w :=
    run_preserves_outside program m s w (fun h => hw (List.mem_toFinset.mp (hwire h)))
  exact ⟨hp, (regValue_congr _ _ _ (fun w hw => he w (List.disjoint_left.mp hs hw))).trans hv.1,
    (he c (fun h => hc (List.mem_append_right _ h))).trans hv.2.1,
    (ModValues.clean_iff L A' B' O' _).mpr h⟩

private theorem masked_values (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1)
    (q X A : Nat) (C : Bool) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) (hA : A < q) :
    Triple (MaskValues L src c X C A 0 0) (maskedAccumulate L q src c)
      (MaskValues L src c X C 0 0 ((A + if C then X else 0)%q)) := by
  let M := if C then X else 0
  have hM : M < q := by dsimp [M]; split_ifs <;> assumption
  have hl : L.wires.Nodup := (List.nodup_append'.mp (List.nodup_cons.mp hnd).2).2.1
  have h0 := mask_copy L src c hnd hlen X C A 0 0
  simp only [Nat.zero_xor] at h0
  have h1 := inside L src c hnd X C A M 0 0 M ((A+M)%q) (accumulate L q)
    (by rw [accumulate_wires]) (accumulate_spec L hl q hq0 hq A M hA hM)
  have h2 := mask_copy L src c hnd hlen X C 0 M ((A+M)%q)
  have hMxor : M ^^^ (if C then X else 0) = 0 := Nat.xor_self M
  rw [hMxor] at h2
  simpa only [maskedAccumulate, List.append_assoc, M] using h0.seq (h1.seq h2)

/-- 一位乘数控制加入源寄存器；旧累加器清零并保留控制和源。 -/
theorem maskedAccumulate_spec (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1)
    (q X A : Nat) (C : Bool) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) (hA : A < q) :
    {{ src = X, c = C, L.x = A, L.y = 0, L.out = 0, L.work = 0 }} maskedAccumulate L q src c
    {{ src = X, c = C, L.x = 0, L.y = 0, L.out = ((A + if C then X else 0)%q), L.work = 0 }} :=
  Triple.conseq (fun st h => (mask_iff L src c X C A 0 0 st).mpr h)
    (masked_values L src c hnd hlen q X A C hq0 hq hX hA)
    (fun st h => (mask_iff L src c X C 0 0 ((A + if C then X else 0)%q) st).mp h)

theorem maskedUnaccumulate_spec (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1)
    (q X A : Nat) (C : Bool) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) (hA : A < q) :
    {{ src = X, c = C, L.x = 0, L.y = 0, L.out = ((A + if C then X else 0)%q), L.work = 0 }}
      maskedUnaccumulate L q src c
    {{ src = X, c = C, L.x = A, L.y = 0, L.out = 0, L.work = 0 }} := by
  let M := if C then X else 0
  have hM : M < q := by dsimp [M]; split_ifs <;> assumption
  have hl : L.wires.Nodup := (List.nodup_append'.mp (List.nodup_cons.mp hnd).2).2.1
  have h0 := mask_copy L src c hnd hlen X C 0 0 ((A+M)%q)
  simp only [Nat.zero_xor] at h0
  have h1 := inside L src c hnd X C 0 M ((A+M)%q) A M 0 (unaccumulate L q)
    (by rw [unaccumulate_wires]) (unaccumulate_spec L hl q hq0 hq A M hA hM)
  have h2 := mask_copy L src c hnd hlen X C A M 0
  rw [show M ^^^ (if C then X else 0) = 0 from Nat.xor_self M] at h2
  have h := h0.seq (h1.seq h2)
  have h' := Triple.conseq
    (fun st h => (mask_iff L src c X C 0 0 ((A+M)%q) st).mpr h) h
    (fun st h => (mask_iff L src c X C A 0 0 st).mp h)
  simpa only [maskedUnaccumulate, List.append_assoc, M] using h'

private theorem mask_wires (L : ModLayout) (src : List Wire) (c : Wire)
    (hlen : src.length = L.width+1) :
    wires (copyRegister (some c) src L.y) = (c :: (src ++ L.y)).toFinset := by
  have hy : src.length = L.y.length := by rw [ModLayout.y, L.reg_length]; exact hlen
  have hn : src.isEmpty = false := by cases src <;> simp_all
  rw [copyRegister_wires _ _ _ hy]
  simp [hn]

theorem maskedAccumulate_wires (L : ModLayout) (src : List Wire) (c : Wire) (q : Nat)
    (hlen : src.length = L.width+1) :
    wires (maskedAccumulate L q src c) = (c :: (src ++ L.wires)).toFinset := by
  ext w
  have hy : w ∈ L.y → w ∈ L.wires := fun h =>
    List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (L.reg_mem .y h))
  simp only [maskedAccumulate, wires_append, mask_wires L src c hlen, accumulate_wires,
    Finset.mem_union, List.mem_toFinset, List.mem_cons, List.mem_append]
  tauto

theorem maskedUnaccumulate_wires (L : ModLayout) (src : List Wire) (c : Wire) (q : Nat)
    (hlen : src.length = L.width+1) :
    wires (maskedUnaccumulate L q src c) = (c :: (src ++ L.wires)).toFinset := by
  simpa only [maskedAccumulate, maskedUnaccumulate, wires_append, accumulate_wires,
    unaccumulate_wires] using maskedAccumulate_wires L src c q hlen

theorem maskedAccumulate_resources (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1) (q : Nat) :
    toffoliCount (maskedAccumulate L q src c) = 12*L.width+10 ∧
    measurementCount (maskedAccumulate L q src c) = 8*(L.width+1) ∧
    qubitCount (maskedAccumulate L q src c) = 9*(L.width+1)+3 := by
  have hl : L.wires.Nodup := (List.nodup_append'.mp (List.nodup_cons.mp hnd).2).2.1
  have hy : src.length = L.y.length := by rw [ModLayout.y, L.reg_length]; exact hlen
  have hm := copyRegister_counts (some c) src L.y hy
  have ha := accumulate_resources L hl q
  refine ⟨?_, ?_, ?_⟩
  · simp only [maskedAccumulate, toffoliCount_append, hm.1, ha.1,
      Option.isSome_some, if_true, hlen]; omega
  · simp only [maskedAccumulate, measurementCount_append, hm.2, ha.2.1]; omega
  · rw [qubitCount, maskedAccumulate_wires L src c q hlen, List.toFinset_card_of_nodup hnd]
    have h (bs : List ModBit) : (bs.flatMap ModBit.all).length = 8*bs.length := by
      induction bs with
      | nil => rfl
      | cons b bs ih => simp [ModBit.all, ih]; omega
    simp [List.length_append, hlen, ModLayout.wires, h, ModLayout.bits, ModLayout.width, ModBit.all]
    omega

theorem maskedUnaccumulate_resources (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1) (q : Nat) :
    toffoliCount (maskedUnaccumulate L q src c) = 12*L.width+10 ∧
    measurementCount (maskedUnaccumulate L q src c) = 8*(L.width+1) ∧
    qubitCount (maskedUnaccumulate L q src c) = 9*(L.width+1)+3 := by
  have hl : L.wires.Nodup := (List.nodup_append'.mp (List.nodup_cons.mp hnd).2).2.1
  have ha := accumulate_resources L hl q
  have hu := unaccumulate_resources L hl q
  simpa only [maskedAccumulate, maskedUnaccumulate, toffoliCount_append, measurementCount_append,
    ha.1, hu.1, ha.2.1, hu.2.1, qubitCount, wires_append, accumulate_wires, unaccumulate_wires]
    using maskedAccumulate_resources L src c hnd hlen q

private theorem mask_preserve (L : ModLayout) (src : List Wire) (c : Wire)
    (program : Program) (hwire : wires program = (c :: (src ++ L.wires)).toFinset)
    (s : State) (m : List Bool)
    (hs : regValue src (run program m s).basis = regValue src s.basis)
    (hc : (run program m s).basis c = s.basis c)
    (hy : regValue L.y (run program m s).basis = regValue L.y s.basis)
    (hw : regValue L.work (run program m s).basis = regValue L.work s.basis) :
    ∀ w, w ∉ L.x ++ L.out → (run program m s).basis w = s.basis w := by
  intro w hn
  by_cases hl : w ∈ L.wires
  · rcases L.cover hl with h | h | h | h
    · exact False.elim (hn (List.mem_append_left _ h))
    · exact (regValue_eq_iff _ _ _).mp hy w h
    · exact False.elim (hn (List.mem_append_right _ h))
    · exact (regValue_eq_iff _ _ _).mp hw w h
  by_cases hsrc : w ∈ src
  · exact (regValue_eq_iff _ _ _).mp hs w hsrc
  by_cases hctrl : w = c
  · subst w; exact hc
  · apply run_preserves_outside
    rw [hwire]
    simpa only [List.mem_toFinset, List.mem_cons, List.mem_append, not_or] using
      ⟨hctrl, hsrc, hl⟩

theorem maskedAccumulate_correct (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1)
    (q X A : Nat) (C : Bool) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) (hA : A < q)
    (s : State) (m : List Bool) (hs : regValue src s.basis = X) (hc : s.basis c = C)
    (hv : ModValues L (ModValues.clean A 0 0) s.basis) :
    (run (maskedAccumulate L q src c) m s).phase = s.phase ∧
    (∀ w, w ∉ L.x ++ L.out → (run (maskedAccumulate L q src c) m s).basis w = s.basis w) ∧
    ModValues L (ModValues.clean 0 0 ((A + if C then X else 0)%q))
      (run (maskedAccumulate L q src c) m s).basis := by
  obtain ⟨hp, h⟩ := masked_values L src c hnd hlen q X A C hq0 hq hX hA s m ⟨hs, hc, hv⟩
  refine ⟨hp, mask_preserve L src c _ (maskedAccumulate_wires L src c q hlen) s m
    (h.1.trans hs.symm) (h.2.1.trans hc.symm) ?_ ?_, h.2.2⟩
  · exact (h.2.2.1 .y).trans (hv.1 .y).symm
  · exact ((ModValues.clean_iff L _ _ _ _).mp h.2.2).2.trans
      ((ModValues.clean_iff L _ _ _ _).mp hv).2.symm

theorem maskedUnaccumulate_correct (L : ModLayout) (src : List Wire) (c : Wire)
    (hnd : (c :: (src ++ L.wires)).Nodup) (hlen : src.length = L.width+1)
    (q X A : Nat) (C : Bool) (hq0 : 0 < q) (hq : q < 2^L.width) (hX : X < q) (hA : A < q)
    (s : State) (m : List Bool) (hs : regValue src s.basis = X) (hc : s.basis c = C)
    (hv : ModValues L (ModValues.clean 0 0 ((A + if C then X else 0)%q)) s.basis) :
    (run (maskedUnaccumulate L q src c) m s).phase = s.phase ∧
    (∀ w, w ∉ L.x ++ L.out → (run (maskedUnaccumulate L q src c) m s).basis w = s.basis w) ∧
    ModValues L (ModValues.clean A 0 0) (run (maskedUnaccumulate L q src c) m s).basis := by
  have hi := (mask_iff L src c X C 0 0 ((A + if C then X else 0)%q) s.basis).mp ⟨hs, hc, hv⟩
  obtain ⟨hp, h⟩ := maskedUnaccumulate_spec L src c hnd hlen q X A C hq0 hq hX hA s m hi
  have ho := (mask_iff L src c X C A 0 0 _).mpr h
  refine ⟨hp, mask_preserve L src c _ (maskedUnaccumulate_wires L src c q hlen) s m
    (ho.1.trans hs.symm) (ho.2.1.trans hc.symm) ?_ ?_, ho.2.2⟩
  · exact (ho.2.2.1 .y).trans (hv.1 .y).symm
  · exact ((ModValues.clean_iff L _ _ _ _).mp ho.2.2).2.trans
      ((ModValues.clean_iff L _ _ _ _).mp hv).2.symm

end ECDSAAdd.Arithmetic
