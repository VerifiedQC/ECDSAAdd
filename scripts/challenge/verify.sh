#!/usr/bin/env bash
# Protected worker script. Invoke only in an isolated candidate build worker.
set -euo pipefail
: "${ECDSAADD_ROOT:=$(git rev-parse --show-toplevel)}"
export ECDSAADD_ROOT
cd "$ECDSAADD_ROOT"
python3 scripts/challenge/gate.py --source-only
python3 scripts/challenge/check-layers.py
lake --wfail build ECDSAAdd.Challenge.Contract ECDSAAdd.Judge.Main ECDSAAdd.Submission.Entrant.Main
python3 scripts/challenge/gate.py --replay ECDSAAdd.Challenge
python3 scripts/challenge/gate.py --replay ECDSAAdd.Submission.Entrant
# Acceptance is performed by the protected controller after the worker stops.
