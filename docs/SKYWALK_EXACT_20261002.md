# Exact Skywalk development checkpoint

The production point-addition circuit remains the verified Kaliski record/replay circuit with the exact short-source square optimization: 6,880,186 static Toffolis, 4,502,202 measurements and 3,134 distinct logical wire positions. The original public point-addition specification is unchanged. This checkpoint does not claim a completed Skywalk point circuit or its resource count.

## Verified development modules

Nine new modules passed the pinned remote warnings-as-errors dependency build and a transitive axiom audit of all 92 public declarations. Only `propext`, `Classical.choice` and `Quot.sound` are allowed. Verification took 18 seconds, consisting of 7 seconds for the incrementally cached build and 11 seconds for the axiom audit. An earlier version with 90 declarations passed in 27 seconds. These are module verification times, separate from the production point circuit's 219-second full build/audit and the initial environment setup.

- `SkywalkNat`: exact min-source Stein recurrence, gcd preservation, positive odd second logical rail, universal 2n-round termination and logical width bounds.
- `SkywalkRails` and `SkywalkRailsBridge`: signed step/reversal, zero and equality cases, orientation/sign history, ternary reachable records, magnitude frame and full signed re-encoding after a step.
- `SkywalkPayload`: reversible field butterfly for every Boolean record and field payload, the trajectory invariant and mathematical division/multiplication results. The numerator may be zero.
- `SignedWord`: native source-complement signed addition/subtraction, complete carry propagation, source/control/work/phase restoration, exact support and w−1 Toffolis/measurements, plus two's-complement modular and bounded-integer lifting.
- `SignedHalf`, `SkywalkSign`, `SkywalkRoute`: real Clifford sign-extension/sign-history gates and controlled high-word routing, including state/resource proofs. Connecting the physical MSB to the signed decoder remains an integration obligation.
- `SkywalkPayloadProgram`: exact reference field gates with canonical outputs, restored controls/work/phase, frame/support and field-level correspondence. At 256 bits, the forward/inverse cells cost 3,838/3,837 Toffolis. These reference costs are not an optimized full-circuit result.

All Lean execution uses the user-provided CPU pod. Run `bash scripts/verify_skywalk.sh LOG_DIRECTORY` there to reproduce the development module build, source manifest, public declaration audit and timing report. `scripts/verify.sh` remains the production entry-point verifier. The execution semantics and their limits remain those in [PROOF_SCOPE](PROOF_SCOPE.md).

## Remaining proof obligations

Compose the signed trajectory with its actual recorded bits, establish physical MSB/LSB and width semantics, connect the executable complete tick to the integer recurrence for every measurement record, prove seed/unseed and transcript cleanup, then integrate both field arithmetic legs into the existing all-valid-input point-addition theorem. Derive final resources from that same concrete program and its actual wire support.

The base signed seed is `(p+x,x)`. The reference is the primary Skywalk source in the ECDSA.Fail challenge, with contributor attribution to Matt Zweil and the challenge authors preserved. The newer incumbent's alternate seeds and sampled convergence/carry schedules require independent exact proofs and are not imported by this checkpoint. No approximate widths, selected-input correctness, new axioms, `sorry` or `native_decide` are used.
