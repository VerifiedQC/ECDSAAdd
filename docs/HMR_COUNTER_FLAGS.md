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
