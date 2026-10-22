# Composing declared live-set censuses

This is the route-neutral preparation for task #53. It does not instantiate
or certify a complete source circuit and does not establish its 935-wire bound.

`liveCensus` takes arbitrary finite wire sets, without an Arena or a fixed
capacity. `livePeak` is the maximum of their cardinalities (zero for an empty
trace). `livePeak_append` and `livePeak_stages` prove that sequential stages
compose by maximum. `livePeak_le_iff` reduces a bound to every declared snapshot.
Simultaneous components instead add their sizes only under proved disjointness,
as stated by `census_disjoint`.

For successful Arena operations, `reserve_card` proves the exact increase and
`release_card` proves the exact decrease. Release still requires the existing
allocator's zero-wire check; this is not a reset. `reserve_release_peak` proves
that the three-snapshot stage peaks at its reserved state. `borrowMany_census`
computes the peak for a successful n-wire reservation.

`Arena.checkBorrow` is a new **arithmetic budget check**, not an allocator or
semantic checker. It checks `live.card + n ≤ budget` for an arbitrary budget.
`checkedBorrow_peak` relates it to the actual two-snapshot peak only with a
successful `borrowMany` equation. A passing arithmetic check alone does not
supply an allocation, clean wires or program correctness.

`arenaChain_peak` specializes sequential composition to any list of Arena
stage traces. Although the existing Arena type carries its own physical bound,
none of these cardinality/max equations uses that fixed number as a premise
or conclusion. The underlying Finset theorems also work outside that Arena.

To apply these results to the full point-add program, each stage must supply
all interior live sets and prove they correspond to the actual allocation and
release sequence. Merely listing initial/final sets can miss an interior peak.
Boundary compatibility, program support, semantic cleanup, completeness of the
trace, and the concrete census values remain implementation obligations.
