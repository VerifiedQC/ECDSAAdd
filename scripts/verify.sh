#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
git diff --check
git diff --cached --check
lake --wfail build
python3 scripts/check-source.py

# Readable targeted disclosures, in addition to the exhaustive environment audit.
lake env lean /dev/stdin <<'LEAN'
import ECDSAAdd
#check ECDSAAdd.andComputeErase_correct
#check ECDSAAdd.andComputeErase_toffoliCount
#check ECDSAAdd.andComputeErase_measurementCount
#check ECDSAAdd.andComputeErase_qubitCount
#print axioms ECDSAAdd.andComputeErase_correct
#print axioms ECDSAAdd.andComputeErase_wellFormed
#print axioms ECDSAAdd.andComputeErase_toffoliCount
#print axioms ECDSAAdd.andComputeErase_measurementCount
#print axioms ECDSAAdd.andComputeErase_qubitCount
#print axioms ECDSAAdd.run_append
#print axioms ECDSAAdd.run_preserves_outside
#print axioms ECDSAAdd.Secp256k1.p_prime
#print axioms ECDSAAdd.Secp256k1.G_ne_zero
#print axioms ECDSAAdd.Secp256k1.affineAdd_correct
LEAN

# Pinned independent audit tool; the audited object is the imported Lean environment.
audit_sha=46024e005996495c65ef609368e11ab39c4222e3
audit_dir="$PWD/.lake/axiom-audit"
if [[ ! -d "$audit_dir/.git" ]]; then
  git init --quiet "$audit_dir"
fi
if ! git -C "$audit_dir" cat-file -e "$audit_sha^{commit}" 2>/dev/null; then
  git -C "$audit_dir" fetch --quiet --depth 1 https://github.com/leanprover-community/axiom-audit.git "$audit_sha"
fi
git -C "$audit_dir" checkout --quiet --detach "$audit_sha"
cp lean-toolchain "$audit_dir/lean-toolchain"
(cd "$audit_dir" && lake build)
lake env "$audit_dir/.lake/build/bin/axiom-audit" --root ECDSAAdd \
  --allow propext,Classical.choice,Quot.sound
