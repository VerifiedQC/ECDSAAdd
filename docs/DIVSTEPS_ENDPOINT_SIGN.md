# Sign-adjusted physical endpoint reduction

`EndpointSign.lean` reduces a signed physical coefficient into an initially
zero `ModUnaryLayout.z`. An independent control bit selects the coefficient
or its negative. The resulting integer is the canonical remainder modulo `p`.

The program temporarily XORs the control into every source bit, runs the
existing signed reduction, restores those bits, and adds one modulo `p` when
the control is set. Complementing a signed word represents `-x-1`, including
the most-negative word; the modular increment gives `-x` without requiring
that its integer negation fit the source width.

`endpointSign_run` and `endpointSign_remainder` prove, for arbitrary measurement
records, unchanged phase, canonical output, clean work, and restoration of
every nonoutput bit. Assumptions are `1 < p < 2^n`, accumulator width and
uniqueness, a unique nonempty source row disjoint from accumulator wires,
and a control outside both. No endpoint convergence assumption is needed
for these local reduction statements.

The support is contained in the source, control and existing accumulator.
For source width `k`, the Toffoli and measurement counts are both
`(k+1)*(4*n-1)`. With a 592-bit source and 256-bit accumulator, each count is
606,639, an additional 1,023 over unsigned-control signed reduction. The two
fanouts contain only Clifford gates. No extra sign workspace is allocated.

This component does not reduce the 4,337-wire conservative walk allocation.
The accumulator remains additional to that bound. It has not yet been
inserted at the leaf of the shared-swap walk, nor connected to a proof that
its control is the sign of terminal `f = ±1`. It is not an inverse provider,
a global 590-step termination theorem, or a 935-qubit implementation.
