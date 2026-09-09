#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
lake --wfail build

# Report and check only the public proof entry points.
axioms=$(lake env lean /dev/stdin <<'LEAN'
import ECDSAAdd
#print axioms ECDSAAdd.andComputeErase_spec
#print axioms ECDSAAdd.andComputeErase_correct
#print axioms ECDSAAdd.andComputeErase_toffoliCount
#print axioms ECDSAAdd.andComputeErase_measurementCount
#print axioms ECDSAAdd.andComputeErase_qubitCount
#print axioms ECDSAAdd.Triple.seq
#print axioms ECDSAAdd.Triple.conseq
#print axioms ECDSAAdd.Triple.frame
#print axioms ECDSAAdd.Arithmetic.fullAdder_spec
#print axioms ECDSAAdd.Arithmetic.eraseCarry_spec
#print axioms ECDSAAdd.Arithmetic.notRegister_spec
#print axioms ECDSAAdd.Arithmetic.add_spec
#print axioms ECDSAAdd.Arithmetic.sub_spec
#print axioms ECDSAAdd.Arithmetic.add_erase_spec
#print axioms ECDSAAdd.Arithmetic.sub_erase_spec
#print axioms ECDSAAdd.Arithmetic.add_twice_spec
#print axioms ECDSAAdd.Arithmetic.add_resources
#print axioms ECDSAAdd.Arithmetic.sub_resources
#print axioms ECDSAAdd.Arithmetic.modAdd_spec
#print axioms ECDSAAdd.Arithmetic.modSub_spec
#print axioms ECDSAAdd.Arithmetic.modAdd_resources
#print axioms ECDSAAdd.Arithmetic.modSub_resources
#print axioms ECDSAAdd.Arithmetic.fieldAdd_zero_spec
#print axioms ECDSAAdd.Arithmetic.fieldSub_zero_spec
#print axioms ECDSAAdd.Arithmetic.fieldAdd_spec
#print axioms ECDSAAdd.Arithmetic.fieldSub_spec
#print axioms ECDSAAdd.Arithmetic.fieldAdd_resources
#print axioms ECDSAAdd.Arithmetic.fieldSub_resources
#print axioms ECDSAAdd.Arithmetic.modMul_zero_spec
#print axioms ECDSAAdd.Arithmetic.modMul_spec
#print axioms ECDSAAdd.Arithmetic.modMul_resources
#print axioms ECDSAAdd.Arithmetic.fieldMul_zero_spec
#print axioms ECDSAAdd.Arithmetic.fieldMul_spec
#print axioms ECDSAAdd.Arithmetic.fieldMul_resources
#print axioms ECDSAAdd.Arithmetic.cswap_spec
#print axioms ECDSAAdd.Arithmetic.cswap_resources
#print axioms ECDSAAdd.Arithmetic.shiftRight_spec
#print axioms ECDSAAdd.Arithmetic.shiftLeft_spec
#print axioms ECDSAAdd.Arithmetic.shiftRight_left_cancel
#print axioms ECDSAAdd.Arithmetic.shift_resources
#print axioms ECDSAAdd.Arithmetic.counterIncXor_spec
#print axioms ECDSAAdd.Arithmetic.counterDecXor_spec
#print axioms ECDSAAdd.Arithmetic.counterXor_resources
#print axioms ECDSAAdd.Arithmetic.counterInc_spec
#print axioms ECDSAAdd.Arithmetic.counterDec_spec
#print axioms ECDSAAdd.Arithmetic.counter_resources
#print axioms ECDSAAdd.kaliski_unstep_step
#print axioms ECDSAAdd.kaliski_round_active
#print axioms ECDSAAdd.Arithmetic.kaliskiRound_spec
#print axioms ECDSAAdd.Arithmetic.kaliskiUnround_spec
#print axioms ECDSAAdd.Arithmetic.kaliskiRound_counts
#print axioms ECDSAAdd.Arithmetic.kaliskiRound_wires
#print axioms ECDSAAdd.Arithmetic.kaliskiRound_qubits
#print axioms ECDSAAdd.Arithmetic.kaliskiRound_257_resources
#print axioms ECDSAAdd.Arithmetic.fieldInverse_spec
#print axioms ECDSAAdd.Arithmetic.fieldInverse_xor_spec
#print axioms ECDSAAdd.Arithmetic.fieldInverse_wires
#print axioms ECDSAAdd.Arithmetic.fieldInverse_resources
#print axioms ECDSAAdd.Arithmetic.fieldInverse_contract
#print axioms ECDSAAdd.Arithmetic.inverseLoop_spec
#print axioms ECDSAAdd.Arithmetic.inverseLoop_xor_spec
#print axioms ECDSAAdd.Arithmetic.inverseLoop_wires
#print axioms ECDSAAdd.Arithmetic.inverseLoop_resources
#print axioms ECDSAAdd.Arithmetic.inverseLoop_257_resources
#print axioms ECDSAAdd.Arithmetic.kaliskiLoop_correct
#print axioms ECDSAAdd.Arithmetic.kaliskiLoop_qubits
#print axioms ECDSAAdd.Arithmetic.halvingLoop_correct
#print axioms ECDSAAdd.Arithmetic.halvingLoop_counts
#print axioms ECDSAAdd.Arithmetic.halveXor_spec
#print axioms ECDSAAdd.Arithmetic.negativeInit_spec
#print axioms ECDSAAdd.kaliski_invariant
#print axioms ECDSAAdd.kaliski_terminates
#print axioms ECDSAAdd.kaliski_register_bounds
#print axioms ECDSAAdd.halve_mod_correct
#print axioms ECDSAAdd.halveFixed_correct
#print axioms ECDSAAdd.kaliski_correct
#print axioms ECDSAAdd.kaliski_inverse_p
#print axioms ECDSAAdd.Secp256k1.p_prime
#print axioms ECDSAAdd.Secp256k1.G_ne_zero
#print axioms ECDSAAdd.Secp256k1.affineAdd_correct
LEAN
)
printf '%s\n' "$axioms"
printf '%s\n' "$axioms" | awk '
/depends on axioms:/ {
  sub(/^.*\[/, ""); sub(/\].*$/, "")
  n = split($0, names, /, */)
  for (i = 1; i <= n; i++)
    if (names[i] != "propext" && names[i] != "Classical.choice" && names[i] != "Quot.sound") exit 1
}'
