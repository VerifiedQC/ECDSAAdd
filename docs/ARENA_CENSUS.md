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

`Arena.withinBudget` is a new **arithmetic budget check**, not an allocator or
semantic checker. It checks `live.card + n ≤ budget` for an arbitrary budget.
`borrowMany_withinBudget_iff` relates it to the actual two-snapshot peak only with a
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

## Executable allocation-log validation

`ArenaLogAction` records either a reservation or a release with a supplied
boundary basis-state sample. `checkArenaLog` executes each operation through
`Arena.reserve` / `Arena.release`, fails on an invalid operation, and generates
the entire list of intermediate live sets. It does not accept a manually
supplied list of occupancy counts. A log of n actions produces n+1 snapshots,
including both the initial and terminal states.

`checkArenaLog_iff` proves acceptance exactly matches the inductive valid-log
relation, whose transitions require successful allocator equations.
`checkedArenaPeak_sound` returns that relation and the exact maximum of all
generated counts. `checkedArenaPeak_bound` equates an arbitrary budget bound
with the bound on every generated snapshot. Reservations cannot overlap live
wires; releases require ownership and zero values in the supplied sample.
Kernel-checked examples cover an interior peak that disappears after release,
overlapping reservations, and rejection of a dirty release sample.

This checker validates **the given log**. It does not prove that the log contains
all allocations emitted by the source program, that its initial Arena is the
actual initial ownership, or that a release sample is the actual program state.
Those three correspondence obligations must be discharged before its peak can
be attributed to the circuit. In particular, passing a made-up all-zero sample
does not prove that a cleaning circuit ran. The validator does not interpret
quantum gates, establish phase cancellation, or reset a released qubit.
