import ECDSAAdd.Arithmetic.RoundLayout

namespace ECDSAAdd.Arithmetic

/-- 组合轮内操作时同时保留整个布局外部的状态，而非只列出少数控制位。 -/
def RoundFrame (L : RoundDataLayout) (v : RoundField → Nat) (base : BasisState)
    (st : BasisState) : Prop := RoundValues L v st ∧ ∀ w, w∉L.wires → st w=base w

/-- 加减后以无控制交换把结果放回固定目标，借用 out 恢复为零。 -/
def inplaceArithmetic (L : RoundDataLayout) (f g : RoundField) (c : Wire) (negative : Bool) : Program :=
  (if negative then maskedSub (L.adder f) (L.reg g) c else maskedAdd (L.adder f) (L.reg g) c) ++
  exchangeRegisters (L.reg f) (L.reg .out)

namespace RoundFrame

private theorem lift_one (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f : RoundField) (X : Nat) (p : Program)
    (hp : Triple (RoundFrame L v base) p (fun st => regValue (L.reg f) st=X))
    (he : ∀ (s : State) (m : List Bool), ∀ w, w∉L.reg f → (run p m s).basis w=s.basis w) :
    Triple (RoundFrame L v base) p (RoundFrame L (Function.update v f X) base) := by
  intro s m hv
  obtain ⟨hphase,hx⟩ := hp s m hv
  refine ⟨hphase, RoundValues.update L hnd v f X s.basis _ hv.1 (he s m) hx, ?_⟩
  intro w hw
  exact (he s m w (fun h => hw (L.reg_mem f h))).trans (hv.2 w hw)

theorem shift_right (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (v : RoundField → Nat) (base : BasisState) (f : RoundField)
    (heven : base c=true → v f%2=0) :
    Triple (RoundFrame L v base) (shiftRight c (L.reg f))
      (RoundFrame L (Function.update v f (if base c then v f/2 else v f)) base) := by
  have hh := List.nodup_cons.mp hnd
  have hr : (c::L.reg f).Nodup := List.nodup_cons.mpr
    ⟨fun hm => hh.1 (L.reg_mem f hm),L.reg_nodup hh.2 f⟩
  apply lift_one L hh.2 v base f _ _
  · intro s m hv
    obtain ⟨hp,h⟩ := shiftRight_spec c (L.reg f) hr (base c) (v f) heven s m
      ⟨hv.2 c hh.1,hv.1.1 f⟩
    exact ⟨hp,h.2⟩
  · intro s m
    exact (shift_frame c (L.reg f) s m).2.1

theorem shift_left (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (v : RoundField → Nat) (base : BasisState) (f : RoundField)
    (hfit : base c=true → 2*v f<2^L.width) :
    Triple (RoundFrame L v base) (shiftLeft c (L.reg f))
      (RoundFrame L (Function.update v f (if base c then 2*v f else v f)) base) := by
  have hh := List.nodup_cons.mp hnd
  have hr : (c::L.reg f).Nodup := List.nodup_cons.mpr
    ⟨fun hm => hh.1 (L.reg_mem f hm),L.reg_nodup hh.2 f⟩
  apply lift_one L hh.2 v base f _ _
  · intro s m hv
    obtain ⟨hp,h⟩ := shiftLeft_spec c (L.reg f) hr (base c) (v f)
      (by simpa only [L.reg_length] using hfit) s m ⟨hv.2 c hh.1,hv.1.1 f⟩
    exact ⟨hp,h.2⟩
  · intro s m
    exact (shift_frame c (L.reg f) s m).2.2.2

private theorem lift_two (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f g : RoundField) (X Y : Nat) (p : Program)
    (hp : Triple (RoundFrame L v base) p (fun st => regValue (L.reg f) st=X ∧ regValue (L.reg g) st=Y))
    (he : ∀ (s : State) (m : List Bool), RoundFrame L v base s.basis →
      ∀ w, w∉L.reg f → w∉L.reg g → (run p m s).basis w=s.basis w) :
    Triple (RoundFrame L v base) p
      (RoundFrame L (Function.update (Function.update v f X) g Y) base) := by
  intro s m hv
  obtain ⟨hphase,hx,hy⟩ := hp s m hv
  refine ⟨hphase, RoundValues.update_two L hnd v f g X Y s.basis _ hv.1 (he s m hv) hx hy, ?_⟩
  intro w hw
  exact (he s m hv w (fun h => hw (L.reg_mem f h)) (fun h => hw (L.reg_mem g h))).trans (hv.2 w hw)

theorem swap (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (v : RoundField → Nat) (base : BasisState) (f g : RoundField) (hne : f≠g) :
    Triple (RoundFrame L v base) (swapRegisters c (L.reg f) (L.reg g))
      (RoundFrame L (Function.update (Function.update v f (if base c then v g else v f))
        g (if base c then v f else v g)) base) := by
  have hh := List.nodup_cons.mp hnd
  have hr : (c::(L.reg f++L.reg g)).Nodup := List.nodup_cons.mpr
    ⟨by intro hm; simp only [List.mem_append] at hm; rcases hm with hm | hm
        exact hh.1 (L.reg_mem f hm)
        exact hh.1 (L.reg_mem g hm),
      List.nodup_append'.mpr ⟨L.reg_nodup hh.2 f,L.reg_nodup hh.2 g,L.reg_disjoint hh.2 f g hne⟩⟩
  have hlen : (L.reg f).length=(L.reg g).length := by rw [L.reg_length,L.reg_length]
  apply lift_two L hh.2 v base f g _ _ _
  · intro s m hv
    obtain ⟨hp,_,hf,hg⟩ := swapRegisters_correct c (L.reg f) (L.reg g) hlen hr s m
    exact ⟨hp,by simpa only [hv.2 c hh.1,hv.1.1 f,hv.1.1 g] using hf,
      by simpa only [hv.2 c hh.1,hv.1.1 f,hv.1.1 g] using hg⟩
  · intro s m _
    exact (swapRegisters_correct c (L.reg f) (L.reg g) hlen hr s m).2.1

theorem exchange (L : RoundDataLayout) (hnd : L.wires.Nodup)
    (v : RoundField → Nat) (base : BasisState) (f g : RoundField) (hne : f≠g) :
    Triple (RoundFrame L v base) (exchangeRegisters (L.reg f) (L.reg g))
      (RoundFrame L (Function.update (Function.update v f (v g)) g (v f)) base) := by
  have hr : (L.reg f++L.reg g).Nodup := List.nodup_append'.mpr
    ⟨L.reg_nodup hnd f,L.reg_nodup hnd g,L.reg_disjoint hnd f g hne⟩
  have hlen : (L.reg f).length=(L.reg g).length := by rw [L.reg_length,L.reg_length]
  apply lift_two L hnd v base f g _ _ _
  · intro s m hv
    exact exchangeRegisters_spec (L.reg f) (L.reg g) hlen hr (v f) (v g) s m ⟨hv.1.1 f,hv.1.1 g⟩
  · intro s m _ w hf hg
    apply run_preserves_outside
    intro hm
    have he := exchangeRegisters_wires (L.reg f) (L.reg g) hlen hm
    simp [hf,hg] at he

/-- 编译期选择加或减；运行时的控制仅用于来源复制。旧目标归零、结果写入共用 out。 -/
theorem masked (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (hpos : 0<L.width) (v : RoundField → Nat) (base : BasisState)
    (f g : RoundField) (hf : RoundDataLayout.DataField f) (hg : RoundDataLayout.DataField g) (hne : f≠g)
    (hy : v .y=0) (ho : v .out=0) (hcarry : v .carry=0) (negative : Bool) :
    let R := if negative then (v f+2^L.width-(if base c then v g else 0))%2^L.width
      else (v f+(if base c then v g else 0))%2^L.width
    Triple (RoundFrame L v base)
      (if negative then maskedSub (L.adder f) (L.reg g) c else maskedAdd (L.adder f) (L.reg g) c)
      (RoundFrame L (Function.update (Function.update v f 0) .out R) base) := by
  dsimp only
  let A := L.adder f
  obtain ⟨ax,ay,ao,ac,ai,aw⟩ := L.adder_fields f
  change A.x=L.reg f at ax
  change A.y=L.reg .y at ay
  change A.out=L.reg .out at ao
  change A.carry=L.reg .carry at ac
  change A.cin=L.cin at ai
  change A.width=L.width at aw
  have hh := List.nodup_cons.mp hnd
  have hn : (c::(L.reg g++A.wires)).Nodup := List.nodup_cons.mpr
    ⟨fun hm => hh.1 (List.count_pos_iff.mp ((List.count_pos_iff.mpr hm).trans_le
        (L.source_adder_count f g hf hg hne c))),L.source_adder_nodup hh.2 f g hf hg hne⟩
  have hlen : (L.reg g).length=A.width := by rw [L.reg_length,aw]
  let R := if negative then (v f+2^L.width-(if base c then v g else 0))%2^L.width
      else (v f+(if base c then v g else 0))%2^L.width
  let p := if negative then maskedSub A (L.reg g) c else maskedAdd A (L.reg g) c
  have hs : {{ L.reg g=v g, c=base c, L.reg f=v f, L.reg .y=0, L.cin=false,
      L.reg .out=0, L.reg .carry=0 }} p
      {{ L.reg g=v g, c=base c, L.reg f=0, L.reg .y=0, L.cin=false,
        L.reg .out=R, L.reg .carry=0 }} := by
    cases negative
    · simpa only [p,R,Bool.false_eq_true,if_false,ax,ay,ao,ac,ai,aw] using
        maskedAdd_spec A (L.reg g) c hn hlen (v g) (v f) (base c)
    · simpa only [p,R,if_true,ax,ay,ao,ac,ai,aw] using
        maskedSub_spec A (L.reg g) c hn hlen (v g) (v f) (base c)
  have hw : wires p=(c::(L.reg g++A.wires)).toFinset := by
    have h := maskedAdder_wires A (L.reg g) c hlen (by simpa only [aw] using hpos)
    cases negative
    · exact h.1
    · exact h.2
  apply lift_two L hh.2 v base f .out 0 R p
  · intro s m hv
    obtain ⟨hp,h⟩ := hs s m ⟨⟨⟨⟨⟨⟨hv.1.1 g,hv.2 c hh.1⟩,hv.1.1 f⟩,
      (hv.1.1 .y).trans hy⟩,hv.1.2⟩,(hv.1.1 .out).trans ho⟩,(hv.1.1 .carry).trans hcarry⟩
    exact ⟨hp,h.1.1.1.1.2,h.1.2⟩
  · intro s m hv
    obtain ⟨_,h⟩ := hs s m ⟨⟨⟨⟨⟨⟨hv.1.1 g,hv.2 c hh.1⟩,hv.1.1 f⟩,
      (hv.1.1 .y).trans hy⟩,hv.1.2⟩,(hv.1.1 .out).trans ho⟩,(hv.1.1 .carry).trans hcarry⟩
    have he : ∀ w, w∉c::(L.reg g++A.wires) → (run p m s).basis w=s.basis w := by
      intro w hn
      apply run_preserves_outside
      rw [hw]
      exact fun hm => hn (List.mem_toFinset.mp hm)
    have hframe := A.masked_frame (L.reg g) c s.basis _
      (h.1.1.1.1.1.1.trans (hv.1.1 g).symm)
      (h.1.1.1.1.1.2.trans (hv.2 c hh.1).symm)
      (by simpa only [ay] using h.1.1.1.2.trans ((hv.1.1 .y).trans hy).symm)
      (by simpa only [ai] using h.1.1.2.trans hv.1.2.symm)
      (by simpa only [ac] using h.2.trans ((hv.1.1 .carry).trans hcarry).symm) he
    simpa only [ax,ao] using hframe

theorem inplace (L : RoundDataLayout) (c : Wire) (hnd : (c::L.wires).Nodup)
    (hpos : 0<L.width) (v : RoundField → Nat) (base : BasisState)
    (f g : RoundField) (hf : RoundDataLayout.DataField f) (hg : RoundDataLayout.DataField g) (hne : f≠g)
    (hy : v .y=0) (ho : v .out=0) (hcarry : v .carry=0) (negative : Bool) :
    let R := if negative then (v f+2^L.width-(if base c then v g else 0))%2^L.width
      else (v f+(if base c then v g else 0))%2^L.width
    Triple (RoundFrame L v base) (inplaceArithmetic L f g c negative)
      (RoundFrame L (Function.update v f R) base) := by
  dsimp only
  let R := if negative then (v f+2^L.width-(if base c then v g else 0))%2^L.width
      else (v f+(if base c then v g else 0))%2^L.width
  let v1 := Function.update (Function.update v f 0) .out R
  have hfo : f≠.out := by rcases hf with rfl | rfl | rfl | rfl <;> decide
  have h1 := masked L c hnd hpos v base f g hf hg hne hy ho hcarry negative
  have h2 := exchange L (List.nodup_cons.mp hnd).2 v1 base f .out hfo
  have he : Function.update (Function.update v1 f (v1 .out)) .out (v1 f) = Function.update v f R := by
    funext k
    by_cases hkf : k=f
    · subst k; simp [v1,hfo]
    by_cases hko : k=.out
    · subst k; simp [v1,hfo,hkf,ho]
    · simp [v1,hkf,hko]
  have hh := h1.seq h2
  simpa only [inplaceArithmetic, he] using hh

theorem copy (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f g : RoundField) (hne : f≠g) :
    Triple (RoundFrame L v base) (copyRegister none (L.reg f) (L.reg g))
      (RoundFrame L (Function.update v g (v g ^^^ v f)) base) := by
  have hn : (L.reg f++L.reg g).Nodup := List.nodup_append'.mpr
    ⟨L.reg_nodup hnd f,L.reg_nodup hnd g,L.reg_disjoint hnd f g hne⟩
  have hlen : (L.reg f).length=(L.reg g).length := by rw [L.reg_length,L.reg_length]
  apply lift_one L hnd v base g _ _
  · intro s m hv
    obtain ⟨hp,_,ho⟩ := copyRegister_correct none (L.reg f) (L.reg g) hlen hn (by simp) s m
    exact ⟨hp,by simpa only [copyValue,hv.1.1 f,hv.1.1 g] using ho⟩
  · intro s m
    exact (copyRegister_correct none (L.reg f) (L.reg g) hlen hn (by simp) s m).2.1

theorem subtract (L : RoundDataLayout) (hnd : L.wires.Nodup) (v : RoundField → Nat)
    (base : BasisState) (f : RoundField) (hf : RoundDataLayout.DataField f) (hcarry : v .carry=0) :
    Triple (RoundFrame L v base) (sub (L.adder f))
      (RoundFrame L (Function.update v .out (v .out ^^^ ((v f+2^L.width-v .y)%2^L.width))) base) := by
  let A := L.adder f
  obtain ⟨ax,ay,ao,ac,ai,aw⟩ := L.adder_fields f
  change A.x=L.reg f at ax
  change A.y=L.reg .y at ay
  change A.out=L.reg .out at ao
  change A.carry=L.reg .carry at ac
  change A.cin=L.cin at ai
  change A.width=L.width at aw
  have hn := L.adder_nodup hnd f hf
  have hp : Triple (RoundFrame L v base) (sub A)
      (fun st => regValue (L.reg .out) st=v .out ^^^ ((v f+2^L.width-v .y)%2^L.width)) := by
    intro s m hv
    have hs := sub_spec A hn (v f) (v .y) (v .out)
    simp only [ax,ay,ao,ac,ai,aw] at hs
    obtain ⟨hp,h⟩ := hs s m ⟨⟨⟨⟨hv.1.1 f,hv.1.1 .y⟩,hv.1.2⟩,hv.1.1 .out⟩,
      (hv.1.1 .carry).trans hcarry⟩
    exact ⟨hp,h.1.2⟩
  intro s m hv
  obtain ⟨hphase,hout⟩ := hp s m hv
  have hc : s.basis A.cin=false := by simpa only [ai] using hv.1.2
  have hz : ∀ b∈A.bits, s.basis b.carry=false := by
    intro b hb
    have hh : regValue A.carry s.basis=0 := by simpa only [ac] using (hv.1.1 .carry).trans hcarry
    exact (regValue_zero _ _).mp hh b.carry (List.mem_map.mpr ⟨b,hb,rfl⟩)
  have he : ∀ w, w∉L.reg .out → (run (sub A) m s).basis w=s.basis w := by
    have hh := (rippleSubtractor_xor_correct A.bits A.cin hn s m hc hz).2.1
    simpa only [← ao] using hh
  refine ⟨hphase,RoundValues.update L hnd v .out _ s.basis _ hv.1 he hout,?_⟩
  intro w hw
  exact (he w (fun h => hw (L.reg_mem .out h))).trans (hv.2 w hw)

end RoundFrame
end ECDSAAdd.Arithmetic
