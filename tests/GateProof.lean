import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic Instr

namespace GateProofTests

-- New syntax does not reserve names used by existing Lean functions or variables.
example (verified gatePlan : Nat) : verified + gatePlan = gatePlan + verified := Nat.add_comm _ _

open ECDSAAdd.GateProof

-- The exact nine original gates remain the executable program.
example (a b cin out carry : Wire) : fullAdder a b cin out carry =
    [.CX a b, .CX a cin, .CCX b cin carry, .CX a carry, .CX a cin, .CX a b,
     .CX a out, .CX b out, .CX cin out] := rfl

example (a b cin out carry : Wire) :
    toffoliCount (fullAdder a b cin out carry) = 1 ∧
    measurementCount (fullAdder a b cin out carry) = 0 ∧
    (fullAdder a b cin out carry).length = 9 := ⟨rfl, rfl, rfl⟩

-- The generated wiring obligation is actually discharged, not silently assumed.
example (a b cin out carry : Wire) (h : [a, b, cin, out, carry].Nodup) :
    fullAdder.requires a b cin out carry := by
  simp_all [fullAdder.requires, fullAdder.checked, Plan.seq, Plan.step, Plan.empty,
    Control.Valid, List.nodup_cons, List.mem_cons]

example (s : State) (m : List Bool) :
    run (fullAdder 0 1 2 3 4) m s = ⟨s.phase, fullAdder.model 0 1 2 3 4 s.basis⟩ :=
  fullAdder.translation 0 1 2 3 4 (by
    simp [fullAdder.requires, fullAdder.checked, Plan.seq, Plan.step, Plan.empty,
      Control.Valid]) s m

-- Either outcome of a control is supported; no wire is measured.
example (c t : Wire) (h : c ≠ t) (s : State) (m : List Bool) (off : s.basis c = false) :
    run [.CX c t] m s = s := by
  rw [cx_correct c t h]
  cases s
  simp_all [flipIf, Control.read]

example (c t : Wire) (h : c ≠ t) (s : State) (m : List Bool) (on : s.basis c = true) :
    run [.CX c t] m s = ⟨s.phase, writeBit s.basis t (!s.basis t)⟩ := by
  rw [cx_correct c t h]
  simp [flipIf, Control.read, on]

example (a b t w : Wire) (h : [a, b, t].Nodup) (hw : w ≠ t)
    (s : State) (m : List Bool) :
    (run [.CCX a b t] m s).basis w = s.basis w := by
  rw [ccx_correct a b t h, flipIf_eq_xor]
  simp [writeBit, hw]

example (a b t : Wire) (h : [a, b, t].Nodup) (s : State) (m : List Bool) :
    (run [.CCX a b t] m s).phase = s.phase := by
  rw [ccx_correct a b t h]

-- A later control reads the bit changed by the preceding statement.
verified def dynamicControl (a b c : Wire) : Program := prog {
  if a { b ^= 1; } using CX by cx_correct;
  if b { c ^= 1; } using CX by cx_correct;
}

example : dynamicControl.model 0 1 2 (fun w => w == 0) 2 = true := by decide

example (phase : Bool) (m : List Bool) :
    (run (dynamicControl 0 1 2) m ⟨phase, fun w => w == 0⟩).basis 2 = true := by
  rw [dynamicControl.translation 0 1 2 (by
    simp [dynamicControl.requires, dynamicControl.checked, Plan.seq, Plan.step,
      Plan.empty, Control.Valid])]
  change dynamicControl.model 0 1 2 (fun w => w == 0) 2 = true
  decide

-- A bit literal 1 is not a read from physical wire number 1.
verified def literalFlip (c t : Wire) : Program := prog {
  if c { t ^= 1; } using CX by cx_correct;
}

example : literalFlip.model 5 6 (fun w => w == 5) 6 = true := by decide

-- Arbitrary initial outputs and phase remain covered by the public theorem.
example (phase : Bool) (m : List Bool) :
    run (fullAdder 0 1 2 3 4) m ⟨phase, fun _ => true⟩ =
      ⟨phase, writeBit (writeBit (fun _ => true) 4 false) 3 false⟩ := by
  simpa [sumBit, carryBit] using
    fullAdder_correct 0 1 2 3 4 (by decide) ⟨phase, fun _ => true⟩ m

example (s : State) (m : List Bool) :
    (run (fullAdder 0 1 2 3 4) m s).basis 5 = s.basis 5 := by
  rw [fullAdder_correct 0 1 2 3 4 (by decide)]
  simp [writeBit]

-- An annotated definition is not a proof that an invalid wiring is usable.
example : ¬ fullAdder.requires 0 0 2 3 4 := by
  simp [fullAdder.requires, fullAdder.checked, Plan.seq, Plan.step, Plan.empty, Control.Valid]
example : ¬ fullAdder.requires 0 1 2 3 1 := by
  simp [fullAdder.requires, fullAdder.checked, Plan.seq, Plan.step, Plan.empty, Control.Valid]
example : ¬ (gatePlan% { if 0 AND 0 { 1 ^= 1; } using CCX by ccx_correct; }).requires := by
  simp [Plan.seq, Plan.step, Plan.empty, Control.Valid]

-- Locally valid gates alone do not establish the full-adder arithmetic contract:
-- sharing out/carry is legal for each gate but violates the five-wire specification.
example : fullAdder.requires 0 1 2 3 3 := by
  simp [fullAdder.requires, fullAdder.checked, Plan.seq, Plan.step, Plan.empty, Control.Valid]
example : (run (fullAdder 0 1 2 3 3) [] ⟨false, fun _ => true⟩).basis 3 ≠
    (true ^^ sumBit true true true) := by decide

-- Wrong implementation, wrong wiring, wrong proof and unsupported bit operations are rejected.
example (_a _b _t : Wire) : True := by
  fail_if_success
    have _bad : Plan := gatePlan% { if _a { _t ^= 1; } using X by cx_correct; }
  fail_if_success
    have _bad : Plan := gatePlan% {
      if _a { _t ^= 1; } using (fun c t => CX t c) by cx_correct;
    }
  fail_if_success
    have _bad : Plan := gatePlan% {
      if _a { _t ^= 1; } using (fun _ t => X t) by cx_correct;
    }
  fail_if_success
    have _bad : Plan := gatePlan% { if _a { _t ^= 1; } using CX by True.intro; }
  fail_if_success
    have _bad : Plan := gatePlan% { if _a AND _b { _t ^= 1; } using CCX by cx_correct; }
  fail_if_success
    have _bad : Plan := gatePlan% {
      if _a AND _b { _t ^= 1; } using (fun a _ t => CX a t) by ccx_correct;
    }
  fail_if_success
    have _bad : Plan := gatePlan% { if _a { _t ^= 0; } using CX by cx_correct; }
  fail_if_success
    have _bad : Plan := gatePlan% { if _a { _t ^= 2; } using CX by cx_correct; }
  trivial

-- A basis-only proof is insufficient: a valid certificate must also preserve phase.
example (c t : Wire)
    (_onlyBits : (Control.bit c).Valid t → ∀ s m,
      (run [.CX c t] m s).basis = flipIf (.bit c) t s.basis) : True := by
  fail_if_success
    have _bad := Plan.step (.bit c) t [.CX c t] _onlyBits
  trivial

-- Lock the proof dependency chain, so annotations cannot become unused decorations.
run_cmd do
  let env ← Lean.getEnv
  for (root, required) in [
      (``fullAdder_correct, ``fullAdder.translation),
      (``fullAdder_spec, ``fullAdder_correct),
      (``fullAdder.translation, ``fullAdder.checked),
      (``fullAdder.checked, ``cx_correct),
      (``fullAdder.checked, ``ccx_correct),
      (``fullAdder.checked, ``Plan.seq)] do
    let some info := env.find? root | throwError "Missing declaration {root}"
    let some proof := info.value? | throwError "Missing definition of {root}"
    unless proof.getUsedConstants.contains required do
      throwError "{root} must use {required}"

  -- Lean may store the seq proof in an auxiliary declaration; follow its dependencies.
  let mut pending := [``Plan.seq]
  let mut seen : Lean.NameSet := {}
  while !pending.isEmpty do
    let name := pending.head!
    pending := pending.tail
    if seen.contains name then continue
    seen := seen.insert name
    let some info := env.find? name | throwError "Missing dependency {name}"
    let some proof := info.value? | continue
    for dep in proof.getUsedConstants do
      if dep.toString.startsWith "ECDSAAdd." then pending := dep :: pending
  unless seen.contains ``run_append do
    throwError "Sequential certification must depend on run_append"

end GateProofTests
