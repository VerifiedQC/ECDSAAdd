# Conditional arithmetic provider and complete point-add consumer

The existing `RecordedPointArithmeticBackend` requires correct arithmetic on
all valid operands. It cannot represent an implementation that is allowed to
fail on a small, identified input set. The new `ConditionalPointArithmeticBackend`
adds a tape-independent `safe multiply X Y control` predicate. Its correctness
field is required only when that predicate holds; support and record-reference
validity remain unconditional.

No failure is discarded or postselected. Correctness still means arbitrary
incoming phase and arbitrary measurement tape, the intended output value,
and every non-output wire restored. `ofExact` embeds existing providers with
`safe = True`; `program_ofExact` proves equality of the complete emitted program
with the existing exact consumer.

## Actual arithmetic operands

The ordinary point-add path uses two calls. For input coordinates `(X,Y)` and
constant `(cx,cy)`, let `a = (Y-cy)/(X-cx)` and
`d = cx - genericX X Y cx cy`.

1. Division is called on denominator `X-cx` and numerator `Y-cy`.
2. Multiplication is called on denominator `d` and numerator `a`.

`GenericSafe` requires the provider's corresponding two predicates. On disabled
paths both calls instead receive the unchanged `(X,Y)` with control false.
`Safe` pulls these conditions back to the original control and input point,
after the actual exceptional-branch classification. Addition of infinity emits
an empty program and needs no arithmetic condition. The existing curve proofs
establish nonzero denominators on enabled ordinary calls; the inactive provider
must still preserve arbitrary operands, including zero, under its safe contract.

The two calls are not treated as independent, nor are their operands assigned
fresh uniform distributions. A concrete trace-based exceptional set must cover
failure of either call under the original input law.

## Completed conditional theorems

- `add_spec`: complete controlled point addition for every input and constant
  point satisfying `Safe`, including infinity, doubling and exceptional cases;
  the original control and entire allocated workspace are restored.
- `add_frame`: every non-point wire is restored, including unused ancillas.
- `recorded_agreement`: the full emitted program has the required all-phase,
  all-tape state equality outside a supplied original-input exceptional set.
- `pointAddPerm`: independent mathematical controlled translation by the fixed
  point, with controlled subtraction as inverse.
- `pointAdd_budget`: the typed physical circuit realizing this same emitted
  program satisfies the measured `QuantumBudget` relative to that permutation.
  It requires the concrete clean-state encoding, its non-point frame property,
  a specified original input law and exceptional mass bound, and safe-call
  proofs on good inputs. The standard `QuantumBudget.error_le` then gives
  `2 * sqrt epsilon` for matching normalized input states.

These are proved conditional statements, with no admitted provider correctness.
The remaining provider implementation must prove its `correct`, `support` and
`wellFormed` fields and establish `Safe` outside actual failure events.

## Resource boundary

This consumer reuses the existing point-add layout and fixed arithmetic stages,
including their existing large workspace. It is **not** a 935-qubit circuit or a
proof that the compact inverse can fit that entire pipeline into 935 live wires.
The compact arena, schedule, inverse/walk implementation, numerical event bounds
and resource proofs remain separate implementation obligations. Existing exact
specifications and programs are unchanged.


## Concrete clean encoding

`PointInputEncoding.basis` constructs the actual point bits and control value,
with every other wire zero. Constant XOR from a temporary true control defines
this mathematical bit string; those initialization gates are not added to the
point-add execution. The point is read back correctly, and the encoding is
injective. A proved finite-wire restriction yields `encoding : (Bool × Point) ↪
Bits n` whenever the point and control wires lie below `n`.

`encoding_boundary` discharges the clean-input hypothesis, and `encoding_frame`
proves that the independent controlled translation leaves every non-point wire
unchanged. `PointInputEncoding.budget` instantiates the earlier quantum theorem
with this encoding, removing those two assumptions from the consumer interface.
`pointFintype` derives finiteness from the injective 513-bit point code; it does
not assume a curve group-order theorem. The actual circuit, conditional provider
and failure-budget obligations described above remain unchanged.
