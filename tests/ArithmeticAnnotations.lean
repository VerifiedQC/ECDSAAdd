import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic ECDSAAdd.CertifiedTranslation
open Instr

namespace ArithmeticAnnotations

private theorem prepare (r : List Wire) (hn : r.Nodup) (hk : 1 < 2^r.length) :
    {{ r=0 }} xorConstant r 1 {{ r=1 }} := by
  simpa using xorConstant_spec r hn 1 0 hk

private theorem restore (r : List Wire) (hn : r.Nodup) (hk : 1 < 2^r.length) :
    {{ r=1 }} xorConstant r 1 {{ r=0 }} := by
  simpa using xorConstant_spec r hn 1 1 hk

private abbrev one (r : List Wire) : CircuitDSL.Computed (List Wire) :=
  ⟨r, xorConstant r 1, xorConstant r 1⟩

-- A scope emits one prepare, its body, and one restore; it does not duplicate preparation.
example (r out : List Wire) :
    (prog {
      with scratch := const(1) {
        out ^= scratch using (copyRegister none scratch out) by (copyRegister_spec scratch out);
      } using (one r) by (prepare r, restore r);
    } : Program) = xorConstant r 1 ++ copyRegister none r out ++ xorConstant r 1 := rfl

-- Standalone CheckedProgram coercion and a register read inside a multi-statement Program coexist.
example (r out : List Wire) :
    (prog {
      out ^= r using (copyRegister none r out) by (copyRegister_spec r out);
      out ^= r using (copyRegister none r out) by (copyRegister_spec r out);
    } : Program) = copyRegister none r out ++ copyRegister none r out := rfl

example (r : List Wire) :
    (prog { r = r / const(2) using (rotateRight r) by (rotateRight_spec r); } : Program) =
      rotateRight r := rfl

-- Integer division and conditional values have independent mathematical meanings.
example (r : List Wire) (s t : BasisState) :
    calculation { r = r / const(2); } s t ↔ regValue r t = regValue r s / 2 := Iff.rfl

example (r : List Wire) (c : Wire) (s t : BasisState) :
    calculation { r = if c then const(1) else const(0); } s t ↔
      regValue r t = (if s c then 1 else 0) := Iff.rfl

example (r : List Wire) (a b : Wire) (s t : BasisState) :
    calculation { if a AND (b XOR 1) { r ^= const(1); }; } s t ↔
      regValue r t = (if s a && !s b then regValue r s ^^^ 1 else regValue r s) := Iff.rfl

private def zeroCircuit (input flag : Wire) : Program := [.X flag, .CX input flag]

private theorem zeroPrepare (input flag : Wire) (hne : input ≠ flag) (A : Bool) :
    {{ input=A, flag=false }} zeroCircuit input flag {{ input=A, flag=(!A) }} := by
  intro s m h
  simp_all [zeroCircuit, run, Holds.holds, writeBit, Function.update, Ne.symm]

private theorem zeroRestore (input flag : Wire) (hne : input ≠ flag) (A : Bool) :
    {{ input=A, flag=(!A) }} zeroCircuit input flag {{ input=A, flag=false }} := by
  intro s m h
  simp_all [zeroCircuit, run, Holds.holds, writeBit, Function.update, Ne.symm]

private abbrev zeroValue (input flag : Wire) : CircuitDSL.Computed Wire :=
  ⟨flag, zeroCircuit input flag, zeroCircuit input flag⟩

@[local simp] private theorem singleton_zero (input : Wire) (s : BasisState) :
    decide (regValue [input] s = 0) = !s input := by
  cases h : s input <;> simp [regValue, h]

example (input flag : Wire) :
    (prog {
      with zeroFlag := isZero([input]) {
        X zeroFlag;
        X zeroFlag;
      } using (zeroValue input flag) by (zeroPrepare input flag, zeroRestore input flag);
    } : Program) = zeroCircuit input flag ++ [.X flag, .X flag] ++ zeroCircuit input flag := rfl

-- Certificates preserve their initialization requirements; scope syntax is not automatic reset.
private def prepared (r : List Wire) : CheckedProgram :=
  certified { r = const(1); } using (xorConstant r 1) by (prepare r)

example (r : List Wire) (s : BasisState) (h : (prepared r).requires s) : regValue r s = 0 := by
  rcases h with ⟨_, _, h⟩
  exact h

-- Reject wrong arithmetic, wrong implementation, and a preparation proof used for clearing.
example (_r _out : List Wire) : True := by
  fail_if_success
    have _bad : Program := prog {
      with scratch := const(2) {} using (one _r) by (prepare _r, restore _r);
    }
  fail_if_success
    have _bad : Program := prog {
      with scratch := const(1) {} using (one _r) by (prepare _r, prepare _r);
    }
  fail_if_success
    have _bad : Program := prog {
      _out ^= _r using [] by (copyRegister_spec _r _out);
    }
  fail_if_success
    have _bad : Program := prog {
      _r = _r / const(3) using (rotateRight _r) by (rotateRight_spec _r);
    }
  fail_if_success
    have _bad : Program := prog {
      with scratch := const(1) {} using (one _r) by (True.intro, restore _r);
    }
  trivial

example (_input _flag : Wire) : True := by
  fail_if_success
    have _bad : Program := prog {
      with zeroFlag := isZero([_input]) {} using (zeroValue _input _flag)
        by (zeroPrepare _input _flag, zeroPrepare _input _flag);
    }
  trivial

-- Exercise the production product recipe, not just a toy preparation circuit.
example (M : MontLayout) (p : Nat) :
    (prog {
      with product := ((M.x * M.y) mod p) {
        M.out ^= product using (copyRegister none product M.out) by (copyRegister_spec product M.out);
      } using (montProductValue M M.x M.y p) by (montProductPrepare_spec M p, montProductRestore_spec M p);
    } : Program) = montMulXor M p := rfl

example (_M : MontLayout) (_p : Nat) : True := by
  fail_if_success
    have _bad : Program := prog {
      with product := const(0) {
        _M.out ^= product using (copyRegister none product _M.out) by (copyRegister_spec product _M.out);
      } using (montProductValue _M _M.x _M.y _p) by (montProductPrepare_spec _M _p, montProductRestore_spec _M _p);
    }
  fail_if_success
    have _bad : Program := prog {
      with product := ((_M.x * _M.y) mod _p) {
        _M.out ^= product using (copyRegister none product _M.out) by (copyRegister_spec product _M.out);
      } using (montProductValue _M _M.x _M.y _p) by (montProductPrepare_spec _M _p, montProductPrepare_spec _M _p);
    }
  trivial

example (_L : MontStageLayout) : True := by
  fail_if_success
    have _bad : Program := prog {
      _L.acc = (_L.table - _L.acc) mod (2^_L.acc.length) using (addInPlace _L.table _L.acc _L.carry _L.cin) by (addInPlace_zero_spec _L.table _L.acc _L.carry _L.cin);
    }
  trivial

-- Point steps are independently proved before the readable public definitions.
-- These equalities also protect the original gate lists and measurement ordering.
example (L : PointAddLayout) (x out : List Wire) (k : Nat) :
    pointSubConstant L x out k = pointSubConstantKernel L x out k := rfl

example (L : PointAddLayout) : pointSquare L = pointSquareKernel L := rfl

example (L : ControlledPointLayout) (r : List Wire) (k : Fp) :
    pointInPlaceConstantAdd L r k = pointInPlaceConstantAddKernel L r k := rfl

example (L : ControlledPointLayout) : pointInPlaceNegate L = pointInPlaceNegateKernel L := rfl

example (L : ControlledPointLayout) (k : Fp) :
    pointInPlaceClearSlope L k = pointInPlaceClearSlopeKernel L k := by
  rw [pointInPlaceClearSlope_program, pointInPlaceClearSlopeKernel_program]

end ArithmeticAnnotations
