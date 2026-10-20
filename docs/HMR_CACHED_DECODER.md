# Hmr shared cached decoder

Source: `uncompute-paper` at `64b5a13aa249f1360846657392e6c66817b26d0f`,
`tasks/modinv-point-add/circuits/divsteps/engine.py:1501–1553` and
`uncompute/builder.py:1863–1937`. The existing seven-bit mixed walk is unchanged.

The production constants give the following XOR cube covers. Cube variable v
reads f[1+v]; af i reads fv[j+i], and ag i reads gv[j-1+i].

| Depth | Term | Cubes |
|---|---|---|
| 3 | af2 | empty |
| 3 | ag0 | f-window bit 1 is zero |
| 4 | af1, af2 | bit 0 is zero XOR bit 1 is one |
| 4 | af3 | empty |
| 4 | ag0 | bit 0 is zero XOR bit 1 is zero XOR bit 2 is zero |

The cache creates five different AND leaves, reuses them for twelve payload
CCX gates, and releases the leaves in reverse creation order. Negative
controls retain the literal X sandwiches used by the Builder. This is not
the previous ten-bit truth-table lookup. The source comment describing
eight chain ANDs counts the unshared cube occurrences; the actual cache
has five unique leaves.

`hmrDecoderCompute_run_aliased` gives the complete forward state.
`hmrDecoder_run_aliased` preserves the prediction and releases the five
leaves. That compute/leaf-release oracle costs 17 Toffoli gates and five
measurements, but does not include the prediction's own retirement.

The source retires prediction separately, while its twelve CZ anchors are
still live. `hmrPredictionDeath_run` proves this preserves the incoming phase
and clears prediction. `hmrDecoderErase` performs prediction retirement
before leaf release. `hmrDecoderCopy_run` computes prediction, copies it into
an external branch wire, and retires prediction and all leaves; its complete
state formula changes only that external wire. This costs 17 Toffoli gates
and six measurements. These are local component counts, excluding jflags,
class flags, the counter test, branch assembly, and the old-record correction.

Read-only row ports may coincide: WRow.pos returns a row's sign wire for
positions beyond its payload. The new geometry requires only flag,
prediction, and cached-leaf ports to be separate from other ports. The
shared-jflags proofs also allow their coefficient reads to coincide.

For depths three and four, kernel-checked finite residue identities relate
the production grouped forms to the independent shallow-decoder formulas.
The required coefficient congruence follows from the determinant invariant
and the valuation hypothesis. Depth two uses the independent `j2_law`.
`hmrDecoder_depth2_run`, `hmrDecoder_depth3_run`, and `hmrDecoder_depth4_run`
then connect the actual cached gates to the old branch. They require explicit
selector, bit/residue, invariant, and negative-counter hypotheses; they do
not assume that the decoder already computes that branch.

The concrete walk compiler has not yet been changed to allocate and execute
these source blocks. Physical row/selector bindings, source branch assembly
and record-phase correction, whole-walk semantics, and updated B5 events
remain open. No full source-walk equivalence or whole-point-add 935-wire
bound is claimed by these component theorems.
