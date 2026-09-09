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
