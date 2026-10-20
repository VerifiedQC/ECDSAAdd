# Shared-scratch blocked zero detector

`BlockedZero.chunks` accepts a list of `(flag, input wires)` blocks and a separate scratch list. Each block pairs its input wires with the prefix of the same scratch list. `Fits` requires each block to fit that list; `chunks_inputs` proves no input is silently truncated by the zip.

`program c target (chunks xs scratch)` computes each controlled block conjunction into its flag, recurses using that flag as control, then runs the same block detector again to clear the flag. Each invocation of the existing measured zero detector restores its scratch and phase. Cleanup uses fresh measurement outcomes in forward program order, rather than reversing a measured program.

`chunks_run` proves for every initial state and every measurement tape that the only final change is

```
target := target XOR (c AND (regValue (xs.flatMap Prod.snd) = 0))
```

All flags and shared scratch start at zero. The control and target may start at either value. Phase, inputs, flags, scratch, and every outside wire are restored. For a signed two's-complement row, the existing `Paper935.signedRegValue_zero_iff` identifies this predicate with signed zero.

`Valid` records local wire separation. In each block, its control, flag, input wires and scratch wires are distinct; the final target is outside them, and the flag is outside all later blocks. The recursive condition uses that flag as the next control. Scratch may occur in multiple blocks; no global distinctness requirement prohibits that intended reuse. `chunks_physical` derives ordinary-gate validity from this condition.

`chunks_support` bounds the emitted instruction list by the explicit input wires, flags, shared scratch, control and target. With N input positions, B blocks, and S scratch wires:

- Toffoli count: exactly 2N.
- Measurement count: exactly 2N, with corresponding phase corrections.
- Total distinct wires: at most N + B + S + 2.

Thus a 256-bit row split into at most 43 blocks of at most six inputs uses at most 307 wires including the input row: 43 flags, six shared scratch wires, and control/output ports are additional. `six_bit_qubits_le` proves that bound. Other block sizes use the same API; for example, 16 blocks of 16 inputs give a bound of 290 total wires. These are detector-local bounds, not a proof of the complete 935-wire schedule, and the implementation is not claimed to match the paper's gate count.

The walk owner must supply the actual input partition, distinct flag allocation, shared scratch allocation, and `Valid`/`Fits` proofs, then replace the old zero test in the post-step circuit. No change to the existing `ZeroLatch` implementation is asserted by these modules.
