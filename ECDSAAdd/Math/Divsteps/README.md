# Exact divsteps foundations

This directory ports the mathematical divsteps development from
[andigu/uncompute](https://github.com/andigu/uncompute/tree/64b5a13aa249f1360846657392e6c66817b26d0f/lean/divsteps)
to the repository's Lean 4.28.0 toolchain. See `THIRD_PARTY.md` and the retained licenses.

The generic convex-hull termination theorem, number-theoretic invariants,
branch-recovery laws, conservative register bounds, and exact reverse step
are proved. `Arithmetic/Divsteps/Decoder.lean` contains a real two-Toffoli
shallow decoder with an arbitrary-state, arbitrary-record correctness theorem.
The decoder is also connected to the reachable-state depth-two law: it
erases a recorded branch bit under explicit physical encoding hypotheses.
These are foundations, **not a complete new point-addition submission**.

The upstream `native_decide` certificate is not imported. `g_reaches_zero`
requires a certificate as a hypothesis. No unconditional 590-step bound is
claimed here. A replacement certificate must be checked using only the
repository's permitted axioms before an inverse can rely on that bound.

The checker uses structural insertion sort in place of upstream merge sort.
Its sortedness and point-set preservation are proved in `Semantics.lean`,
so the generic termination theorem remains tied to the actual checker.
This change permits kernel reduction of small closed certificates on 4.28.

`Bounds.lean` proves, for every canonical input and every scheduled step `t`,
that `|f|, |g| ≤ p`, `|z| ≤ t`, and `|fv|, |gv| ≤ 2^t`. These deliberately
conservative bounds do not use sampling. They are not a total qubit estimate.
`Reverse.lean` proves restoration from an active/frozen marker and the branch
history, including zero input and negative intermediate integers.

Still required: a practical kernel-checked 256-bit termination certificate,
finite-register divstep circuits, full inverse/division composition, point
exception handling, restoration, and resource theorems for the resulting
single concrete program. Existing ValueWalk and Skywalk submission claims
are independent of this work.

`Endpoint.lean` explicitly tracks the first stopping time: a frozen endpoint
is scaled by `2^t` for its active step count, not automatically by `2^N` for
the scheduled slot count. `CheckerStages.lean` factors the exact checker
into independently certifiable branch-image and hull computations.

`ShallowRecovery.lean` connects the reachable negative-counter depth-three
and depth-four laws to the finite odd-residue formulas. The caller supplies
explicit residues for the updated integer and divided coefficient rows.
`Arithmetic/Divsteps/ShallowDecoder.lean` implements those formulas and
proves branch erasure under the physical encoding hypotheses. Depth three
uses two Toffolis and no scratch; depth four uses nine Toffolis and one
clean scratch, restored along with temporarily modified inputs. The latter
has exactly nine static wires including flag, six inputs, target and scratch.
Both circuits preserve phase for arbitrary measurement records and support
an arbitrary initial target bit. The depth-four construction directly
implements (56c); it does not claim the paper's residue-selected optimal cost.
Depth selection and whole-walk register encoding remain to be implemented;
these local counts do not establish a net qubit saving for the submission.

`DepthSelector.lean` reads five encoded low bits, toggles the exact depth
2/3/4 tags and cleans three scratch bits (nine Toffolis, eleven static
wires). `DepthBits.lean` proves that selected tags imply the corresponding
integer valuation, including negative integers. Active/negative-counter
classification and a whole-walk layout remain separate obligations.

`DeferredDecoder.lean` uses the existing RecordedProgram interpreter:
a forward bare measurement releases a branch wire, and a later shallow
decoder reconstructs it before correction using the original measurement
ordinal. Contracts prove phase cancellation for arbitrary tapes, recording
legality and resources. A forward/gap/recovery composition theorem explicitly
requires the intervening program's phase and decoder contracts; it does not
claim an arbitrary gap is harmless. The pair must be relocated as a unit.
The complete divsteps forward/reverse walk still must discharge these
contracts. Classical record identifiers are counted separately from wires.
