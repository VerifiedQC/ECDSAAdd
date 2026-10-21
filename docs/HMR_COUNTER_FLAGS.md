# Hmr counter test and class flags

Source pinned at `64b5a13aa249f1360846657392e6c66817b26d0f`,
`tasks/modinv-point-add/circuits/divsteps/engine.py:618–672,1600–1637,1682–1730`.

`HmrPolarAnd` retains the Builder's same-order X dressing for both control
polarities. `HmrAndChain` proves forward chain evaluation and measured
reverse-order leaf release, including the complete incoming phase.

For the six-bit counter, `hmrZero6Keep` builds the five negative-literal AND
leaves, copies the top to a keeper, then releases all five leaves. With a
fresh keeper its value equals the unsigned counter register's zero test.
`hmrZero6Free` recomputes only the four-leaf penultimate prefix, measures the
keeper against that prefix and the last negative counter literal, then
releases the prefix. Its full-state formula clears only the keeper.
The full cycle restores all input wires and phase for every measurement
tape, using nine Toffoli gates and ten measurements. The early path can
retain and release the five-leaf chain directly, without a keeper.

`HmrClassFlags` follows the source's three class chains. Ports 0–4 are
counter sign, zero-test result, parity witness, frozen flag, and reverse
fire witness; ports 5–8 are clean work including the positive-counter flag
and final class flag. Early, armed-forward, and armed-reverse chains cost
2, 3, and 4 Toffoli gates respectively, with the same number of measured
releases. The reverse chain includes the additional negative fire witness.
All-state forward and release theorems require explicit distinct-port and
clean-work hypotheses; these are not yet discharged by a physical compiler.

These are source component programs, not an update to `compileHmrWalk`.
Actual allocation and lifetime binding, branch assembly, deferred record
phase correction, full walk semantics, and B5 events remain unfinished.
The counts above do not establish the full walk or point-addition peak.

`hmrClass_signed_value` relates the flag formula to a signed nonpositive
counter using the existing proved positive-counter predicate, with an
explicit binding of the zero-test port. `HmrBranchAssembly` implements R7:
prediction and parity are copied, and the armed path additionally copies
`fire && !parity` through a measured temporary AND. Only the branch output
changes; the armed part costs one Toffoli and one measurement.

`HmrRecordFixup` implements the literal R11 X/CZ/X dressing, reading the
old forward outcome by absolute ordinal. It changes phase by that outcome
AND branch AND not-j5p, leaves every basis bit unchanged, consumes no new
measurement, and is well formed when the ordinal precedes the current
cursor. This local phase formula does not establish cancellation of the
complete walk's forward measurement debt; the actual earlier value still
has to be related to the reconstructed branch.

`compileHmrCounter` now binds the test to an actual six-wire owned counter
and six sites borrowed from the arena. Existence follows from distinct
owned counter wires and `A.live.card + 6 ≤ 935`. The resulting geometry and
clean input are derived from the allocator contract. Its execution theorem
sets the keeper to the zero test of the original counter list, rather than
an unrelated abstract register. After that actual execution,
`compileHmrCounter_release_chain` proves the five chain sites can be
released: the remaining live set is precisely the original live set plus
the keeper, and the resulting arena is ready. This certifies this local
retention transition; it does not yet allocate the reverse recomputation
prefix or bind all class/decoder lifetimes in the walk compiler.
