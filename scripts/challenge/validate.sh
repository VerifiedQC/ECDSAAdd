#!/usr/bin/env bash
# Organizer development checks; separate from untrusted candidate worker script.
set -euo pipefail
cd "$(dirname "$0")/../.."
export ECDSAADD_ROOT="$PWD"
bash -n scripts/benchmark.sh scripts/challenge/verify.sh
python3 scripts/challenge/test-editable.py
python3 scripts/challenge/test-runner-boundary.py
python3 scripts/challenge/check-layers.py
lake --wfail build ECDSAAdd.Challenge.Regression ECDSAAdd.Judge.Main
python3 scripts/challenge/gate.py --replay ECDSAAdd.Challenge
python3 scripts/challenge/gate.py --replay ECDSAAdd.Judge
python3 scripts/challenge/judge_regressions.py
lake env lean scripts/challenge/audit.lean
