# Conditional HMR row-multiply consumers

These interfaces implement the task #49/#50 → #51 agreement. They are
parameterized certificates, **not instances for the source circuit**. No
axiom, admitted theorem, or placeholder implementation is introduced.

## Producer obligations

`HmrRowMulLayout` names a 280-bit signed row, 256-bit multiplier and output,
24-bit anc pool, and extra comparison/flag scratch. It records widths and
separation. It does not assert that the HMR compiler reaches these views.

`HmrRowMulSpec L H` requires the actual program to begin with the existing
placed lift and fold, followed by the producer's scan/halves program. Its
execution field proves output `call.beforeSign`, unchanged multiplier and
sign, the row parked in the actual lift/fold representation, clean scratch,
and a precise Boolean phase-debt equation. The debt is a function of the tape,
absolute cursor and input state supplied with its execution proof. It is not
a caller hypothesis that phase is correct. Record legality is explicit through
`legalCursor`, so a fixed recorded program is not required to work with its
record references arbitrarily shifted. This contract alone does not construct
a typed quantum circuit or prove the ordinary gates have no aliases.

`HmrRowMulInvSpec` and `HmrRowUnparkSpec` are distinct: erase restores the
original signed row and zeroes out; unpark restores the row using the demolished
multiplier word and preserves out. Their input relations take the original
state, actual current state, global tape and cursor. The producer must prove
those relations at the actual lifecycle boundary. Their execution fields expose
phase debt; global cancellation is still a lifecycle obligation.

## Proved consumers

`hmrRowMul_consumer` derives lift encoding and the fold input magnitude from the
physical signed row and allocator readiness, then consumes the producer output
postcondition. `repacked_hmrRowMul_consumer` executes the actual swap journal
first and derives the coefficient equation from the original signed row.
`s2_hmrRowMul_consumer` and `s6_hmrRowMul_consumer` specialize to the pinned source
journals. No independent scanWord premise is added. Source-view identification,
input values and successful allocation remain explicit.

The unpark/erase consumers use the state after the intervening program and
advance the absolute cursor by its actual measurement count. They preserve the
phase-debt equation rather than silently replacing it with phase restoration.

## Three-call ownership schedule

`HmrArenaLease.release` derives exact return to the original arena and readiness
from successful reservation, support and actual final zeroes. It does not assume
a release postcondition. Existing data/output wires are never reserved again.

`hmr_s2_release` retains anc across forward multiply, HMR/corrections and unpark.
`hmr_s6_release` retains one anc lease across apply, corrections and erase.
`hmr_three_call_schedule` composes these two leases around an explicit
`HmrArenaTransfer` for the intervening caller segment. All states and tape
cursors are those of the concatenated execution. It derives both releases,
final readiness, and the two live-set increments of exactly 24 wires.

This is a **conditional schedule**, not the concrete source allocation trace.
The actual support/reservations, transition precondition/readiness, unpark and
erase preconditions, and new `compileHmrWalk` row addresses remain producer
obligations. No old 907/28 or 620/315 layout is used, and no whole-circuit 935
resource conclusion is claimed. Forward scratch cleanup does not cause an
early release before the end of a lease.

## Exact phase composition

`HmrLifecyclePhase.lean` defines `hmrPhaseDelta` from the actual run result of
a segment. This does not assert that any correction is effective. Its append
and three-segment laws use each preceding output state and the absolute cursor
advanced by `recordedMeasurementCount`; the tape is never restarted.

The s2 and s6 phase theorems are separate. Each combines the producer's forward
debt, the actual HMR/correction segment's phase change, and the unpark/erase
debt. Each has an exact `restored_iff` theorem for equality with the input phase.
The necessary and sufficient remaining equation is that the middle segment's
actual phase change equals the XOR of the forward and final debts. There is
no assumption that the middle segment preserves phase. Deferred Z and CZ
correction lemmas evaluate their contributions as the stored outcome AND the
current recomputed data bit(s); legality of record indices remains separate.

Basis postconditions are stated separately for s2 and s6. A restored row or
zero output does not establish phase cancellation. Concrete programs, producer
Spec instances and lifecycle input relations still need implementation; the
new cancellation criterion is not a proof that the source meets it.
