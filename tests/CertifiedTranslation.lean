import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic ECDSAAdd.CertifiedTranslation

namespace CertifiedTranslationTests

-- New expression helpers must not reserve ordinary Lean identifiers.
example (field inverse : Nat) : field + inverse = field + inverse := rfl

-- Every readable entry emits exactly one original implementation, in exactly the original order.

example (L : ModLayout) (q : Nat) : (Certified.modAddOn L q).circuit = modAdd L q := rfl

example (L : ModLayout) (q : Nat) : (Certified.modSubOn L q).circuit = modSub L q := rfl

example (L : ModAddCoreLayout) (q : Nat) : (Certified.modAddCore L q).circuit = modAddCore L q := rfl

example (L : ModUnaryLayout) (q : Nat) : (Certified.dblInPlace L q).circuit = dblInPlace L q := rfl

example (L : MontStageLayout) (a : List Wire) (K : Nat) : (Certified.montLookupAdd L a K).circuit = montLookupAdd L a K := rfl

example (L : MontStageLayout) (a : List Wire) (K : Nat) : (Certified.montLookupSub L a K).circuit = montLookupSub L a K := rfl

example (L : MontStageLayout) (K : Nat) : (Certified.montConstantAdd L K).circuit = montConstantAdd L K := rfl

example (L : MontStageLayout) (K : Nat) : (Certified.montConstantSub L K).circuit = montConstantSub L K := rfl

example (M : MontLayout) (q : Nat) [Fact q.Prime] : (Certified.montMulXor M q).circuit = montMulXor M q := rfl

example (M : MontLayout) (q : Nat) [Fact q.Prime] : (Certified.montMulAdd M q).circuit = montMulAdd M q := rfl

example (M : MontLayout) (q : Nat) [Fact q.Prime] : (Certified.montMulSub M q).circuit = montMulSub M q := rfl

example (c : Wire) (M : MontLayout) (q : Nat) [Fact q.Prime] : (Certified.montMulControlledAdd c M q).circuit = montMulControlledAdd c M q := rfl

example (c : Wire) (M : MontLayout) (q : Nat) [Fact q.Prime] : (Certified.montMulControlledSub c M q).circuit = montMulControlledSub c M q := rfl

example (L : InverseLoopLayout) (q : Nat) : (Certified.inverseLoop L q).circuit = inverseLoop L q := rfl

example (L : DivideLayout) : (Certified.divideAdd L).circuit = divideAdd L := rfl

example (L : DivideLayout) : (Certified.divideSub L).circuit = divideSub L := rfl

example (L : PointAddLayout) (a o : CandidateField) (k : Nat) : (Certified.pointSubConstant L a o k).circuit = pointSubConstant L (L.reg a) (L.reg o) k := rfl

example (L : PointAddLayout) : (Certified.pointSquare L).circuit = pointSquare L := rfl

example (L : ControlledPointLayout) (r : List Wire) (k : Fp) : (Certified.pointInPlaceConstantAdd L r k).circuit = pointInPlaceConstantAdd L r k := rfl

example (L : ControlledPointLayout) (k : Fp) : (Certified.pointInPlaceClearSlope L k).circuit = pointInPlaceClearSlope L k := rfl

example (L : ControlledPointLayout) (cx cy k : Fp) : (Certified.pointInPlaceGeneric L cx cy k).circuit = pointInPlaceGeneric L cx cy k := rfl

-- Source semantics are independent of implementation selection.
example (x y out : List Wire) (q : Nat) (s t : BasisState) :
    (calculation { out ^= (x + y) mod q; }) s t ↔
      regValue out t = regValue out s ^^^ ((regValue x s + regValue y s)%q) := Iff.rfl

-- Modular subtraction is not saturating subtraction on Nat.
example (x y out : List Wire) (s t : BasisState)
    (hx : regValue x s=1) (hy : regValue y s=6) (ho : regValue out s=0) :
    (calculation { out ^= (x - y) mod 7; }) s t ↔ regValue out t=2 := by
  simp [hx, hy, ho]

-- Sequential use of a previous assignment, with parentheses and whitespace normalized.
example (out : List Wire) (s t : BasisState) :
    (calculation { out = const(2); (out) ^= const(3); }) s t ↔ regValue out t=1 := by
  change regValue out t = 1 ↔ regValue out t = 1
  rfl

-- let binds a mathematical snapshot, not an allocated qubit or a later re-read.
example (out : List Wire) (s t : BasisState) :
    (calculation { let old := out; out = const(0); out ^= old; }) s t ↔
      regValue out t=regValue out s := by simp

example (c : Wire) (out : List Wire) (s t : BasisState) :
    (calculation { if (c XOR 1) { out = const(3); }; }) s t ↔
      regValue out t=(if !s c then 3 else regValue out s) := Iff.rfl

-- Comparison values are computed once at the source level.
example (x y out : List Wire) (s t : BasisState) :
    (calculation {
      let borrow := x < y;
      if borrow { out = const(1); };
      if (borrow XOR 1) { out = const(0); };
    }) s t ↔ regValue out t=(if regValue x s < regValue y s then 1 else 0) := by
  by_cases h : regValue x s < regValue y s <;> simp [h]

private def bit (i : Nat) : ModBit :=
  ⟨8*i, 8*i+1, 8*i+2, 8*i+3, 8*i+4, 8*i+5, 8*i+6, 8*i+7⟩
private def small : ModLayout := ⟨[bit 0, bit 1, bit 2], bit 3, 32, 33⟩

-- A shared implementation computes the one-bit difference only once, uses it twice,
-- then restores its scratch. Grouping is not an automatic optimizer.
private def sharedDifference : Program :=
  [.CX 0 2, .CX 1 2, .CX 2 3, .X 2, .CX 2 4, .X 2, .CX 1 2, .CX 0 2]

private def sharedEffect : Effect := calculation {
  let difference := ([0] - [1]) mod 2;
  [3] ^= difference;
  [4] ^= (difference + const(1)) mod 2;
}

private theorem sharedDifference_spec (initial : BasisState) (clean : initial 2=false) :
    Triple (fun s => s=initial) sharedDifference
      (fun t => sharedEffect initial t ∧ t 2=false ∧ t 0=initial 0 ∧ t 1=initial 1) := by
  intro s m h
  subst initial
  cases h0 : s.basis 0 <;> cases h1 : s.basis 1 <;>
    cases h3 : s.basis 3 <;> cases h4 : s.basis 4 <;>
    simp [sharedEffect, sharedDifference, run, writeBit, Function.update, regValue,
      h0, h1, clean, h3, h4]

private def shared : CheckedProgram :=
  certified {
    let difference := ([0] - [1]) mod 2;
    [3] ^= difference;
    [4] ^= (difference + const(1)) mod 2;
  } using sharedDifference by sharedDifference_spec

example : shared.circuit=sharedDifference := rfl
example : shared.circuit.length=8 := rfl

example (s : State) (m : List Bool) (h : s.basis 2=false) :
    shared.effect s.basis (run shared.circuit m s).basis :=
  (shared.correct s m ⟨s.basis, h, rfl⟩).2.1

-- Readiness is not automatic. Supply layout, modulus, input bounds and clean workspace.
example (s : State) (m : List Bool)
    (hx : regValue small.x s.basis < 7) (hy : regValue small.y s.basis < 7)
    (hw : regValue small.work s.basis=0) :
    (run (Certified.modAddOn small 7).circuit m s).phase=s.phase ∧
    regValue small.out (run (Certified.modAddOn small 7).circuit m s).basis =
      regValue small.out s.basis ^^^ ((regValue small.x s.basis + regValue small.y s.basis)%7) := by
  have ready : (Certified.modAddOn small 7).requires s.basis :=
    ⟨by decide, by decide, by decide, _, _, _, hx, hy, ⟨⟨⟨rfl, rfl⟩, rfl⟩, hw⟩⟩
  have result := (Certified.modAddOn small 7).correct s m ready
  exact ⟨result.1, result.2.1⟩

-- Gate identity also preserves resource counts, rather than estimating them from the source.
example (L : ModLayout) (q : Nat) :
    toffoliCount (Certified.modAddOn L q).circuit=toffoliCount (modAdd L q) ∧
    measurementCount (Certified.modAddOn L q).circuit=measurementCount (modAdd L q) ∧
    wires (Certified.modAddOn L q).circuit=wires (modAdd L q) := ⟨rfl,rfl,rfl⟩

-- Neither a wrong theorem nor a changed source computation may be silently accepted.
example (_L : ModLayout) (_q : Nat) : True := by
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.out ^= (_L.x - _L.y) mod _q;
    } using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q)
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.out ^= (_L.x + _L.y) mod _q;
    } using (modSub _L _q) by (fun hn => modAddOn_mod_spec _L hn _q)
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.out ^= (_L.x + _L.x) mod _q;
    } using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q)
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.out ^= (_L.x + _L.y) mod (_q+1);
    } using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q)
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.x ^= (_L.x + _L.y) mod _q;
    } using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q)
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.out = (_L.x + _L.y) mod _q;
    } using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q)
  fail_if_success
    have bad : CheckedProgram := certified {
      _L.out ^= (_L.x + _L.y) mod _q;
    } using (modAdd _L _q) by (True.intro)
  trivial

example (_x _y _out : List Wire) : True := by
  fail_if_success have bad : Effect := calculation { _out ^= (_x-_y); }
  fail_if_success have bad : Effect := calculation { _out ^= inverse(_x); }
  fail_if_success have bad : Effect := calculation { }
  fail_if_success have bad : Effect := calculation { if (0 XOR 2) { _out = const(1); }; }
  fail_if_success have bad : Effect := calculation {
    let duplicate := _x;
    let duplicate := _y;
    _out ^= duplicate;
  }
  trivial

-- A proof of the positive-control operation is not a proof of its complement.
example (_c : Wire) (_M : MontLayout) (_p : Nat) [Fact _p.Prime] : True := by
  fail_if_success
    have bad : CheckedProgram := certified {
      if (_c XOR 1) { _M.out = (_M.out + _M.x * _M.y) mod _p; };
    } using (montMulControlledAdd _c _M _p)
      by (fun B => montMulControlledAdd_spec _c B _M _p)
  trivial

-- Layout obligations remain real: an invalid aliased layout has no readiness witness.
example (L : ModLayout) (q : Nat) (s : BasisState) (h : ¬ L.wires.Nodup) :
    ¬ (Certified.modAddOn L q).requires s := by
  rintro ⟨hn, _⟩
  exact h hn

end CertifiedTranslationTests
