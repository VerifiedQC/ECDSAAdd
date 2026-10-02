# Exact Skywalk development checkpoint

The production point-addition circuit remains the verified Kaliski record/replay circuit with the exact short-source square optimization: 6,880,186 static Toffolis, 4,502,202 measurements and 3,134 distinct logical wire positions. The original public point-addition specification is unchanged. This checkpoint does not claim a completed Skywalk point circuit or its resource count.

## Verified development modules

Twenty modules passed the pinned remote warnings-as-errors dependency build and a transitive axiom audit of all 180 public declarations. Only `propext`, `Classical.choice` and `Quot.sound` are allowed. The combined verification took 23 seconds, consisting of 2 seconds for the incrementally cached build and 21 seconds for the axiom audit. The earlier thirteen-module checkpoint with 121 declarations took 17 seconds. Earlier nine-module checkpoints with 92/90 declarations passed in 18/27 seconds. These are module verification times, separate from the production point circuit's 219-second full build/audit and the initial environment setup.

- `SkywalkNat`: exact min-source Stein recurrence, gcd preservation, positive odd second logical rail, universal 2n-round termination and logical width bounds.
- `SkywalkRails` and `SkywalkRailsBridge`: signed step/reversal, zero and equality cases, orientation/sign history, ternary reachable records, magnitude frame and full signed re-encoding after a step.
- `SkywalkPayload`: reversible field butterfly for every Boolean record and field payload, the trajectory invariant and mathematical division/multiplication results. The numerator may be zero.
- `SignedWord`: native source-complement signed addition/subtraction, complete carry propagation, source/control/work/phase restoration, exact support and w−1 Toffolis/measurements, plus two's-complement modular and bounded-integer lifting.
- `SignedHalf`, `SkywalkSign`, `SkywalkRoute`: real Clifford sign-extension/sign-history gates and controlled high-word routing, including state/resource proofs. `SignedWordBits` connects the physical MSB to the signed decoder.
- `SkywalkTrace`: signed trajectory re-encoding and field coupling through the actual physical-sign transcript, including both equality sign choices and zero payloads.
- `SignedWordBits`: physical MSB/parity interpretation and exact signed gate and Clifford-half bridges.
- `ControlledNegRaw` and `SkywalkSignedModAdd`: copy-mask conditional raw negation with complete carry propagation, exact source/control/work/phase restoration and 6n−1 Toffolis/measurements. At 256 bits the signed kernel costs 1,535.
- `SkywalkPayloadProgram`: exact optimized field gates with canonical outputs, restored controls/work/phase, frame/support and field-level correspondence. At 256 bits, the forward/inverse cells cost 2,303/2,302 Toffolis and 2,047/2,046 measurements, reduced from the first reference's 3,838/3,837 Toffolis. The optimized cell build and public axiom audit took 21 seconds. These are component costs; the full point circuit remains to be integrated.

All Lean execution uses the user-provided CPU pod. Run `bash scripts/verify_skywalk.sh LOG_DIRECTORY` there to reproduce the development module build, source manifest, public declaration audit and timing report. `scripts/verify.sh` remains the production entry-point verifier. The execution semantics and their limits remain those in [PROOF_SCOPE](PROOF_SCOPE.md).

## Remaining proof obligations

Compose the verified seed, complete integer loop, terminal clear, field leg, terminal restore, integer unloop and unseed into one arithmetic theorem. Its first remote check failed, so its source count formulas are not promoted as verified circuit results. Then preserve the safe divisor for inactive controls, integrate both arithmetic legs into the existing all-valid-input point-addition theorem, and derive final resources from that same concrete program and its actual wire support.

The base signed seed is `(p+x,x)`. The reference is the primary Skywalk source in the ECDSA.Fail challenge, with contributor attribution to Matt Zweil and the challenge authors preserved. The newer incumbent's alternate seeds and sampled convergence/carry schedules require independent exact proofs and are not imported by this checkpoint. No approximate widths, selected-input correctness, new axioms, `sorry` or `native_decide` are used.

## Native circuit and memory-plan checkpoint

The actual integer tick and its independently implemented inverse now match the signed recurrence and restore the complete state for arbitrary independent measurement streams. At width 258, each direction has 514 Toffolis and 257 measurements. The concrete 512-step plan uses a 1,798-wire integer universe, proves every step layout valid, and proves chained/fresh rail and history sites. This is not the complete point circuit qubit count.

Exact seed/unseed each cost 257 Toffolis/measurements. A three-Clifford terminal clear/restore makes both complete terminal rails zero for field workspace reuse while preserving orientation. The complete field division/multiplication legs use the actual 512-entry signed transcript and cost 1,179,647/1,179,136 Toffolis, totaling 2,358,783 before integer recording/cleanup. This particular field implementation already exceeds a 1.5M full-point target; further exact arithmetic optimization is required.

The generic integer loop and fixed 512-step wrapper now passed all 11 public theorem axiom checks. They prove the actual transcript, complete pool invariant and full restoration with independent measurement records, including restoration after changes to the external numerator. Each direction costs 263,168 Toffolis and 131,584 measurements. The generic core check took 45 seconds (40 build, 5 audit); the wrapper took 12 seconds (6 build, 6 audit).

The shared arithmetic layout uses 2,314 distinct wire positions and passed its 14 public audits in 13 seconds. `SkywalkPointPool` overlays two 256-bit caller words onto that layout using 1,802 workspace positions. Its seven public audits passed in 11 seconds (7 build, 4 audit), covering the coordinate views, disjointness, full physical membership, clean caller workspace and external control separation. These are component layouts and are not a completed point-circuit qubit result. The default development verifier now includes these modules; the latest combined closure remains the earlier 20-module checkpoint until that expanded check is run.
