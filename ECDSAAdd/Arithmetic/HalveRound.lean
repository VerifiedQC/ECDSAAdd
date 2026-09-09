import ECDSAAdd.Arithmetic.HalveResources
import ECDSAAdd.Arithmetic.Double
import ECDSAAdd.Arithmetic.ConditionalXor
import ECDSAAdd.Math.HalvingBijection

namespace ECDSAAdd.Arithmetic

/-- 第二阶段的两组交替数据寄存器；temp 和 arithmetic 在每次 XOR 核后归零。 -/
structure HalveLayout where
  arithmetic : ModLayout
  a : List Wire
  b : List Wire
  temp : List Wire
  active : Wire

namespace HalveLayout

def wires (L : HalveLayout) : List Wire := L.active :: (L.a ++ L.temp ++ L.b ++ L.arithmetic.wires)
def work (L : HalveLayout) : List Wire := L.temp ++ L.arithmetic.wires
def swap (L : HalveLayout) : HalveLayout := { L with a := L.b, b := L.a }

theorem swap_perm (L : HalveLayout) : L.swap.wires.Perm L.wires := by
  apply List.perm_iff_count.mpr
  intro w
  simp [swap, wires, List.count_cons]
  omega

theorem kernel_nodup (L : HalveLayout) (h : L.wires.Nodup) :
    (L.a ++ L.temp ++ L.arithmetic.wires).Nodup := by
  have h0 := List.nodup_append'.mp (List.nodup_cons.mp h).2
  have h1 := List.nodup_append'.mp h0.1
  exact List.nodup_append'.mpr ⟨h1.1,h0.2.1,List.disjoint_left.mpr
    (fun _ ha hb => List.disjoint_left.mp h0.2.2 (List.mem_append_left _ ha) hb)⟩

end HalveLayout

def conditionalHalve (L : HalveLayout) (q : Nat) : Program :=
  conditionalXor (halveXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b

def conditionalDouble (L : HalveLayout) (q : Nat) : Program :=
  conditionalXor (doubleXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b

def halveRound (L : HalveLayout) (q : Nat) : Program :=
  conditionalHalve L q ++ conditionalDouble L.swap q

def halveUnround (L : HalveLayout) (q : Nat) : Program :=
  conditionalDouble L.swap q ++ conditionalHalve L q

set_option maxHeartbeats 800000 in
theorem conditionalHalve_correct (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) (hq : q < 2^L.arithmetic.width) (ho : q%2=1)
    (s : State) (m : List Bool) (hx : regValue L.a s.basis < q)
    (hw : regValue L.work s.basis = 0) :
    (run (conditionalHalve L q) m s).phase = s.phase ∧
    (∀ w, w ∉ L.b → (run (conditionalHalve L q) m s).basis w = s.basis w) ∧
    regValue L.b (run (conditionalHalve L q) m s).basis = regValue L.b s.basis ^^^
      (if s.basis L.active then halveMod q (regValue L.a s.basis) else regValue L.a s.basis) := by
  have hz := (regValue_zero _ _).mp hw
  exact conditionalXor_correct (halveXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b L.arithmetic.wires hnd (ha.trans hb.symm) (ht.trans hb.symm)
    (halveMod q) q (fun st ms hx hw => halveXor_correct L.arithmetic L.a L.temp
      (L.kernel_nodup hnd) ha ht q hq ho st ms hx hw) s m hx
    ((regValue_zero _ _).mpr (fun w hh => hz w (List.mem_append_left _ hh)))
    ((regValue_zero _ _).mpr (fun w hh => hz w (List.mem_append_right _ hh)))

theorem conditionalDouble_correct (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q : Nat) (hq : q < 2^L.arithmetic.width) (hq0 : 0<q)
    (s : State) (m : List Bool) (hx : regValue L.a s.basis < q)
    (hw : regValue L.work s.basis = 0) :
    (run (conditionalDouble L q) m s).phase = s.phase ∧
    (∀ w, w ∉ L.b → (run (conditionalDouble L q) m s).basis w = s.basis w) ∧
    regValue L.b (run (conditionalDouble L q) m s).basis = regValue L.b s.basis ^^^
      (if s.basis L.active then (2*regValue L.a s.basis)%q else regValue L.a s.basis) := by
  have hz := (regValue_zero _ _).mp hw
  apply conditionalXor_correct (doubleXor L.arithmetic q L.a L.temp) L.active L.a L.temp L.b L.arithmetic.wires hnd (ha.trans hb.symm) (ht.trans hb.symm)
    (fun x => (2*x)%q) q ?_ s m hx
    ((regValue_zero _ _).mpr (fun w hh => hz w (List.mem_append_left _ hh)))
    ((regValue_zero _ _).mpr (fun w hh => hz w (List.mem_append_right _ hh)))
  intro st ms hx hw
  simpa [two_mul] using doubleXor_correct L.arithmetic L.a L.temp (L.kernel_nodup hnd)
    ha ht q hq0 hq st ms hx hw

def HalveValues (L : HalveLayout) (A B : Nat) (C : Bool) (s : BasisState) : Prop :=
  regValue L.a s = A ∧ regValue L.b s = B ∧ s L.active = C ∧ regValue L.work s = 0

theorem HalveValues.update (L : HalveLayout) (hnd : L.wires.Nodup)
    (A B Z : Nat) (C : Bool) (s t : BasisState) (h : HalveValues L A B C s)
    (he : ∀ w, w ∉ L.b → t w = s w) (hz : regValue L.b t = Z) :
    HalveValues L A Z C t := by
  have h0 := List.nodup_append'.mp (List.nodup_cons.mp hnd).2
  have h1 := List.nodup_append'.mp h0.1
  have ha : L.a.Disjoint L.b := List.disjoint_left.mpr (fun _ ha hb =>
    List.disjoint_left.mp h1.2.2 (List.mem_append_left _ ha) hb)
  have hw : L.work.Disjoint L.b := List.disjoint_left.mpr (fun w hw hb => by
    rcases List.mem_append.mp hw with ht | hc
    · exact List.disjoint_left.mp h1.2.2 (List.mem_append_right _ ht) hb
    · exact List.disjoint_left.mp h0.2.2 (List.mem_append_right _ hb) hc)
  have hc : L.active ∉ L.b := fun hh => (List.nodup_cons.mp hnd).1 (by simp [hh])
  exact ⟨(regValue_congr _ _ _ (fun w hh => he w (List.disjoint_left.mp ha hh))).trans h.1,
    hz, (he _ hc).trans h.2.2.1,
    (regValue_congr _ _ _ (fun w hh => he w (List.disjoint_left.mp hw hh))).trans h.2.2.2⟩

theorem HalveValues.swap (L : HalveLayout) (A B : Nat) (C : Bool) (s : BasisState) :
    HalveValues L.swap A B C s ↔ HalveValues L B A C s := by
  simp only [HalveValues, HalveLayout.swap, HalveLayout.work]
  tauto

theorem HalveValues.swap_eq (L : HalveLayout) (A B : Nat) (C : Bool) :
    HalveValues L.swap A B C = HalveValues L B A C :=
  funext (fun s => propext (HalveValues.swap L A B C s))

theorem conditionalHalve_values (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q A B : Nat) (C : Bool)
    (hq : q < 2^L.arithmetic.width) (ho : q%2=1) (hx : A<q) :
    Triple (HalveValues L A B C) (conditionalHalve L q)
      (HalveValues L A (B ^^^ (if C then halveMod q A else A)) C) := by
  intro s m h
  obtain ⟨hp,he,hz⟩ := conditionalHalve_correct L hnd ha hb ht q hq ho s m
    (by simpa [h.1] using hx) h.2.2.2
  exact ⟨hp, HalveValues.update L hnd A B _ C s.basis _ h he
    (by simpa [h.1,h.2.1,h.2.2.1] using hz)⟩

theorem conditionalDouble_values (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q A B : Nat) (C : Bool)
    (hq : q < 2^L.arithmetic.width) (hq0 : 0<q) (hx : A<q) :
    Triple (HalveValues L A B C) (conditionalDouble L q)
      (HalveValues L A (B ^^^ (if C then (2*A)%q else A)) C) := by
  intro s m h
  obtain ⟨hp,he,hz⟩ := conditionalDouble_correct L hnd ha hb ht q hq hq0 s m
    (by simpa [h.1] using hx) h.2.2.2
  exact ⟨hp, HalveValues.update L hnd A B _ C s.basis _ h he
    (by simpa [h.1,h.2.1,h.2.2.1] using hz)⟩

theorem halveRound_values (L : HalveLayout) (hnd : L.wires.Nodup)
    (ha : L.a.length = L.arithmetic.width+1) (hb : L.b.length = L.arithmetic.width+1)
    (ht : L.temp.length = L.arithmetic.width+1) (q X : Nat) (C : Bool)
    (hq : q < 2^L.arithmetic.width) (ho : q%2=1) (hx : X<q) :
    Triple (HalveValues L X 0 C) (halveRound L q)
      (HalveValues L 0 (if C then halveMod q X else X) C) ∧
    Triple (HalveValues L 0 (if C then halveMod q X else X) C) (halveUnround L q)
      (HalveValues L X 0 C) := by
  let Y := if C then halveMod q X else X
  have hy : Y<q := by cases hc : C <;> simp [Y,hc,hx,halve_mod_bound q X ho hx]
  have hrev : (if C then (2*Y)%q else Y) = X := by
    cases hc : C <;> simp [Y,hc,double_halve_mod q X ho hx]
  have h0 : Triple (HalveValues L X 0 C) (conditionalHalve L q)
      (HalveValues L X Y C) := by
    simpa [Y] using conditionalHalve_values L hnd ha hb ht q X 0 C hq ho hx
  have h1 : Triple (HalveValues L X Y C) (conditionalDouble L.swap q)
      (HalveValues L 0 Y C) := by
    have h := conditionalDouble_values L.swap (L.swap_perm.nodup_iff.mpr hnd)
      hb ha ht q Y X C hq (by omega) hy
    simpa only [HalveValues.swap_eq, hrev, Nat.xor_self] using h
  have h2 : Triple (HalveValues L 0 Y C) (conditionalDouble L.swap q)
      (HalveValues L X Y C) := by
    have h := conditionalDouble_values L.swap (L.swap_perm.nodup_iff.mpr hnd)
      hb ha ht q Y 0 C hq (by omega) hy
    simpa only [HalveValues.swap_eq, hrev, Nat.zero_xor] using h
  have h3 : Triple (HalveValues L X Y C) (conditionalHalve L q)
      (HalveValues L X 0 C) := by
    simpa [Y] using conditionalHalve_values L hnd ha hb ht q X Y C hq ho hx
  exact ⟨h0.seq h1, h2.seq h3⟩

end ECDSAAdd.Arithmetic
