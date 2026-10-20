# Fused calls: entry, exit and placement

Source: `andigu/uncompute@64b5a13aa249f1360846657392e6c66817b26d0f`,
`tasks/modinv-point-add/circuits/divsteps/engine.py`. This is the source contract
for the three `FusedCallSites` labels; caller invariants below still need Lean
binding. Addresses are logical wire lists, not an asserted fixed 935-wire map.

Let `R = inv.walk.fv.ids` **after closer/repack**, `s = fv.sign`,
`P = ma["anc"]`, and `C` be the signed endpoint coefficient. Here `R` has
280 payload bits, `P` has 24 clean bits, and the sign is separate. Closer
changes ownership and may repack wire IDs (1162–1178); do not identify `R`
with a contiguous portion of `x1` without proving that placement.

| Call / source | Entry to row_mul | Exit from row_mul |
|---|---|---|
| s2 quotientApply, 3882 | `R` encodes `C` in two's complement, sign `s`; multiplicand `y1 = Y−Q.y`; output `A=0`, freed by closer. `mm.on(24,seam=True)` supplies clean `P` and one flag (3880–3881). | `A` contains the unsigned fixed-scale product, before sign_fix; `R[:256]` is the folded scan word, `R[256:]` remains the high magnitude, sign retained. `y1` unchanged; pool clean. **Row remains parked**, not restored. |
| s6 productRecompute, 3936 | Signed `R` for the second denominator; multiplicand `A` is the product after walk-C's rider halvings, **not raw slope**. Output `y1=0` after its HMR, host use and closer; clean plateau pool (3925–3935). | Same parked folded row; `y1` contains unsigned fixed-scale product before sign_fix; `A` unchanged; pool clean. |
| s6 productErase, 3945 | **Parked magnitude/folded `R`, not a new signed-lift input.** `y1` has been sign-fixed, phase-corrected, then inverse-sign-fixed (3937–3940); `A` is the same scaled operand. | Inverse fixed halves and inverse scan return `y1=0`; inverse fold borrows it, then inverse lift restores signed `R`, sign retained and pool clean (3286–3294). Any phase from the intervening correction belongs to the lifecycle proof. |

The two s6 model labels share one `FusedCall` (`fusedPointCall_erase`); this
identifies mathematical data, not identical physical entry states.

## Reference-to-caller maps

| Proven component reference | Actual role |
|---|---|
| lift `0`; `1+i` for `i<280`; `281+j` for `j<24` | `s`; `R[i]`; `P[j]` |
| fold `i<24`; `24+i` for `i<256`; `280+i` for `i<256`; `536` | `R[256+i]`; `R[i]`; borrowed zero word `Z[i]`; **`P[0]`** |
| Horner scan controls; multiplicand; accumulator | `R[:256]`; `y`; `out` (2999–3038) |

Thus lift's low window 1–58 is `R[:58]`; its 24-wire pool is exactly the
Horner pool, reused sequentially. Fold's carry is a pool bit, **not**
`ma["carry"]`: seam allocation leaves that single absent (2909–2923,
3312–3324). Injectivity/disjointness must hold within each component; the
sequential reuse of `P[0]` does not require an extra live wire.

## Borrow/restore boundary

Forward fold borrows `out` only before Horner starts. PR200 restores it to
zero before the first copy round. At s2, after sign_fix, HMR demolishes
`y1` (3884); **that** zero word supplies deferred inverse fold in
`row_unpark(y1,ma)` (3885,3326–3333), then inverse lift restores `R` before
pool release and closer_inv. At s6 erase, inverse Horner first returns
`out=y1` to zero, and inverse fold reuses it. No forward call emits an
immediate unlift.

Proved component facts: lift magnitude under LiftGood; fold output under
RowGood; non-low frame, pool/word/carry cleanup and ordinary-gate legality.
Remaining caller obligations: actual row lengths and injective maps after
repack, signed input encoding, zero hosts/pool at each boundary, Horner's
output/cleanup, HMR phase correction, and complete lifecycle/935 support.
The row-fold output equals the model scan word via PR200's
`fusedRowFoldSource_of_good` and PR196's `FusedCall.scanWord_eq`.

## Lean boundary bindings

`FusedBoundaryLayout` reads the actual compiled endpoint row length (280)
and proves that an explicit relocation journal preserves this length and
distinctness. Finite lift and fold placements use list lookup; their
injectivity follows from row/host ownership and a successful 24-wire pool
reservation. Fold order is `R.drop 256 ++ R.take 256 ++ Z ++ P.take 1`.
The allocator has capacity for this pool after the compiled closer.

`FusedBoundaryZero` transports an explicitly zero initial A host through the
actual seeded walk and closer using their proven support exclusion. Actual
successful closer readiness and pool reservation imply every pool bit is
zero. HMR demolition clears every word bit for every tape, including an
absolute recorded cursor; an explicit repack transports those zero bits.
No HMR phase-restoration theorem is asserted here.

Still uninstantiated: the concrete journal chosen by the source closer's
`_repack()` (the existing Lean closer releases payloads but does not compile
that source selection), its post-repack ownership transaction, and the
three full caller programs. The maps are finite injective reference maps,
not yet complete renamed lift/fold executions. The s6 inverse-scan zero
boundary remains the Horner contract, not an assumption discharged here.
