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
the keeper, and the resulting arena is ready. This certifies the local retention transition. The following results
handle fresh reverse-prefix allocation; full class/decoder lifetimes
remain to be bound in the walk compiler.

The reverse prefix is now allocated independently by
`compileHmrFreshCounter`: it borrows **four new sites** from the current
arena, retaining the already-owned keeper. Their addresses need not equal
any of the original five chain addresses. Its geometry and all four zero
inputs follow from the borrow contract and that arena's `Ready` predicate.
The eleven-port interface omits the old unused top-leaf port and is proved
definitionally equal to the earlier release program under the port map.

`compileHmrCounter_fresh_cycle` composes the actual initial test, release of
its five leaves, a fresh four-site borrow, and the source release program.
It proves restoration of the original full state and phase, deriving both
the second borrow's capacity and clean entry from the first allocation and
run. `compileHmrFreshCounter_release` then permits return of the new four
sites and the old keeper, with a ready arena and exact resulting live set.

`compileHmrCounter_class_value` connects the class zero port directly to
the actual first program's keeper output and proves the signed predicate
on the post-state. It has no independent zero-flag assumption. The explicit
counter/sign view and the remaining class/decoder allocation still need
binding inside the walk compiler. These component results address the
fresh-prefix and keeper-value review requirements; they do not close the
global walk or its record-phase proof.

## Actual class, shared flags and decoder allocation

The class allocator borrows two, three or four wires according to the source
mode. Its final port is mapped to the last borrowed wire; unused intermediate
ports are not charged. The allocation contract derives stage legality,
clean inputs, the class value, arena readiness and measured release from the
actual borrow result.

The shared-flag allocator borrows six wires. Coefficient reads may alias
one another through sign extension; they must remain separate from the class
flag. Its computed state preserves arena readiness and its measured release
returns exactly the original arena. The decoder allocator checks the three
selector ports against the ten row reads, permits aliases among row reads,
and borrows six wires for prediction and five cached leaves. Copying to an
owned external output followed by prediction/cache retirement restores all
borrowed wires and returns the original arena, with only the output XOR changed.

These are physical allocation and execution contracts for the components.
They do not establish whole-walk source correspondence or a new global peak.
In particular, the old SlotFront.program uses retiredWindow, which erases
sigma before history processing. The source retains sigma until F15; a front
with that lifetime is needed before the new components can replace the old
walk implementation. The retained branch bit and sigma are different ports.

The retained-sigma front is now available as SlotFront.taggedProgram with
SlotFront.Compiled.run_tagged_math. It proves the actual arithmetic/padding
execution's rows, counter, phase and retained sigma value; it does not claim
that this existing arithmetic implementation is the entire literal source.
HmrSigmaDeath implements source F15 (early CX, armed one guard AND followed by
two measured retirements). Its witness follows from the independent row
invariant and the actual F7 freezeLatch execution: newFrozen AND NOT fire
equals oldFrozen. This prevents incorrectly using newFrozen alone to clear
sigma on the step that just froze. Full intervening history/flag composition,
the blocked g-zero keeper lifetime through F16, and global record phase
cancellation remain open.

## Arbitrary-width blocked keepers

The source literal ladder is now length-parametric. Its output is proved to
equal the conjunction of its input literals, independently of temporary
addresses. A one-literal block uses the source polarity-dressed CX; a longer
block computes the AND ladder, copies its top and measures/releases all
ladder targets. The complementary generic release reconstructs only the
prefix and allows fresh prefix addresses, including the two-literal case
with no prefix computation.

compileHmrBlock/compileHmrBlockKeep allocate actual sites and validate
geometry and input bindings. Execution changes only the retained keeper;
the checked release returns all other borrowed sites, leaving exactly one
additional live wire and preserving Ready. compileHmrBlocked composes those
actual programs with a previous positive keeper and negative row bits.
compileHmrZero partitions by a positive public block size and proves the
final keeper equals the zero predicate of the original owned input row.
This covers the forward size-16 and reverse size-8 interfaces.

The generic free program is proved, but its fresh-prefix compiler and the
reverse multi-block deallocation are still being connected. Whole-walk
compilation success, global phase-debt cancellation and the final peak
certificate remain separate unfinished obligations.

The fresh-prefix free compiler is now connected. compileHmrBlockFree borrows
only length(literals)-2 sites, validates their roles, and executes the actual
prefix recomputation and measured retirement. compileHmrBlockDrop checks
return of that prefix and the old keeper. compileHmrBlockedDrop emits these
block releases in reverse block order (it never reverses a measured gate
list). compileHmrBlocked_roundtrip proves full state/phase and original arena
restoration for separately compiled keep/drop plans and arbitrary two tapes.

Actual program counts are proved at chain and block level, along with
ordinary-gate legality. These roundtrips alone do not yet cover intervening
F7/F16/R13 operations; their frame/value bindings must be composed with the
zero-test lifetimes. The existing retained-sigma arithmetic front also keeps
the old arithmetic/counter schedule: its counterUpdate follows resize,
whereas source F5 precedes F6. It is a proved arithmetic component, not an
assertion of literal source gate order.

The F7 entry now has its own checked allocator (`compileHmrFreeze`): it
compiles the size-16 zero-test blocks, then borrows fire from their returned
arena and checks separation of the record, frozen flag, and controls.
`HmrFreezePlan.Compiled.run_spec` proves the actual program's phase,
fire/frozen values, record update, arena readiness, and every retained
keeper equation. Those equations follow from the emitted zero-test program
and survive the latch; they are not caller-supplied output assumptions.

`compileHmrBlockedDrop_run` permits delayed cleanup from the current keeper
equations and the compiled keeper order. `cleanup_after` composes F7, an
intervening program that preserves the keeper/input values, and the
separately compiled cleanup, preserving its phase and proving final arena
readiness. This is a conditional composition interface: the whole source
body still needs to prove that value-preservation condition. Fire's equality-test
retirement and the complete F16/R13 placement remain separate obligations.

F16 now has a checked source-order compiler. The equality literals are
proved equal to the source enumerate/testBit list, and their conjunction
is exactly the physical register's equality to the offset. The equality
allocator borrows length(record)-1 sites and retains the whole ladder;
only afterwards does the fire compiler borrow w1. The executed sequence
computes w1, measures fire, measures w1, then releases the equality chain.
Its theorem restores every other bit and preserves phase. Actual release
returns both work allocations and the retired fire site.

`compileHmrFreezeEnd` follows this with fresh-prefix reverse cleanup of
the retained g-zero-test blocks. `HmrFreezePlan.Compiled.cycle` joins F7,
a framed body, and F16. Its fire witness is derived from actual F7 execution
and the independent chronological record invariant (old record < offset,
and an unfrozen lane has zero record). The body still owes explicit
value-preservation and ownership conditions; this theorem does not assume or establish
that an entire source walk has already been compiled. R1/R13, global R11
phase cancellation, and the full source arithmetic schedule remain open.

R1 and R13 now have separate source-order allocation and execution proofs.
R1 compiles the live equality ladder, borrows fireR, computes eqt AND frz,
then releases the ladder before toggling frozen and the record. Its keep
compiler returns the comparison work while retaining all old live ports
and fireR; the subsequent record fan preserves the returned arena's Ready.
R13 compiles a size-8 zero test, retires fireR against zero AND NOT frozen,
then frees the zero-test keepers with fresh prefixes. Its actual execution
restores every bit except the cleared fireR and preserves phase.

`hmrUnfreeze_cycle` connects R1 and R13 around a body with explicit value-preservation
conditions. The R13 witness follows from R1 execution and the successful
lane invariant that entry g=0 agrees with frozen; it is not supplied as an
assumed fireR output equation. The invariant and the body's frame must
still be instantiated from the entire physical walk. These components do
not yet prove global R11 cancellation or source arithmetic correspondence.

The body interfaces use equality of the actual before/after port values,
not absence from the gate support. Frozen, fire, and keeper ports may thus
be controls in F8--F15 or the reverse body. The separate support bound only
requires every addressed wire to belong to the live arena. This corrects
the overly restrictive initial composition interfaces identified in review.

The local history/branch recovery now uses the source depth partition
2--4 versus divisibility by 32. Actual push, bare forward measurement, and
pop may use different branch addresses; they restore the complete history,
produce the stored branch contribution, and leave an explicitly derived
old-outcome phase term. The cached R6 program obtains its shallow prediction
from selector and integer-residue input bindings. Actual R7 reconstructs
the old mathematical branch, and literal R11 cancels that measurement term.
R12 then retires prediction and caches while preserving the recovered branch
and corrected phase (`hmrHistory_decode_recover`).

This is a local execution theorem, not the full nested walk's phase theorem.
Its reverse flag and residue bindings still need to come from the actual
compiled layouts and row values. The all-slot measurement ordinals, pending
phase invariant, class/flag retirement, and whole source arithmetic schedule
remain integration obligations. No whole-walk or peak-resource conclusion
is claimed by these local recovery results.
