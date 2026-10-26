# Baseline syntax-slot bounds

The ValueWalk reference entrant has a complete certificate for every public
addend, including infinity. Its declared bounds are:

| Metric | Uniform upper bound |
| --- | ---: |
| Toffoli instructions | 6,286,806 |
| Measurements | 3,779,274 |
| Distinct wires, including fixed I/O | 3,134 |
| Total syntax slots | 61,000,000 |

Total syntax slots include each measurement and both correction lists, even the
branch not taken. Normalization preserves this count. These are upper bounds,
not claims of exact cost on every addend. The observed C=G count of 49,425,562 is
only a comparison point and is not used in any proof.

The slot proof composes bounds for constant masks, carry computation and erasure,
comparison, modular operations, width-narrowed value walks, replay loops,
Karatsuba squaring, reduction, classification, and corner handling. It does not
expand the complete circuit, raise reduction limits, or assume successful input.
The reusable lemmas are in `ECDSAAdd/Baselines/Slot*.lean`; the whole-program
bound and certificate are `normalizedValueWalk_gateSlots_le` and
`valueWalkCertificate`.

`scripts/challenge/validate.sh` builds the real entrant and runs
`valuewalk_acceptance.py`. That test independently replays the entrant's compiled
module, invokes the protected kernel-based judge, and checks all reported bounds.
The protected controller still requires a deployment-supplied isolated builder;
local acceptance is not a production sandbox certification.

Skywalk's uniform slot bound remains in progress. No Skywalk Certificate or
935-qubit claim follows from this delivery.
