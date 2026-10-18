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

`SwapDecoder.lean` reconstructs the swap choice from updated coefficient
bit 1 with one controlled Toffoli, without a shallow-depth restriction.
`ScaleRemoval.lean` uses the existing exact controlled modular halving gate
sequence, with its actual counts/support. It proves that the frozen walk's
reversed activity schedule contains exactly the true stopping-time number
of active steps, and that these halvings cancel the endpoint's power-of-two
scale. The schedule is mathematical bookkeeping, not an allocated counter.
Interleaving the halving circuit with a complete finite-register reverse
walk and establishing the scaled accumulator endpoint remain open.

## Controlled row routing

`Arithmetic/Divsteps/Routing.lean` factors the integer divstep into row routing,
conditional negation, and a shared add/halve operation. Its physical `routeRows`
uses the existing controlled register swap to exchange both aligned row pairs,
with exact unsigned and signed value, phase, outside-frame, and resource proofs.
For integer width n and coefficient width v it costs n+v Toffoli gates, no
measurements, and 2(n+v)+1 static wires (zero for empty rows).
Composition with the shared arithmetic kernel and discharge of its finite-width
bounds are still required; routing alone does not complete checklist item 5
or establish a net resource saving.

## Shared signed row arithmetic

`Arithmetic/Divsteps/RowKernel.lean` now implements conditional target negation
followed by parity-masked source addition. Its temporary mask is also reused as
the clean source for the negation adder. Signed correctness requires explicit
fit bounds for both the negated intermediate and final sum; every non-target
wire and phase is restored for arbitrary measurement outcomes. For an n-bit
row, the actual kernel uses 3n-2 Toffolis, 3n-2 measurements, and 4n+2 static
wires. These are conservative local costs, not a whole-walk savings result.

`SignedNegate.lean` and `MaskedSignedAdd.lean` provide the supporting signed
contracts. The former excludes most-negative-word overflow when negating;
the latter lifts the existing measured mask adder without changing its gates.
`HalfRow.lean` composes the kernel with exact signed halving in a rotated
register view without adding Toffolis or measurements. `StepRows.lean` binds
both integer and coefficient outputs to `zStep`; `RowBounds.lean` supplies
evenness and intermediate fit proofs from the state bounds and a strict
twice-magnitude capacity condition. Physical control/routed-input encoding,
actual width selection, routing composition, coefficient doubling, and
frozen-state behavior remain whole-step obligations.
