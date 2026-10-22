# Explicit Hmr parameter compilation

The existing `compileAuthorWalk` uses a seven-bit signed counter and stores
history at threshold seven. Its schedule data comes from the pinned author's
Hmr schedule. It remains unchanged; its existing certificates do not establish
that it implements `circuit.py`'s `HmrWalk` gate sequence.

This change adds `compileHmrWalk`: a six-bit signed counter, six offset bits,
and history threshold five (coefficient bits one through four). The parameter
source is `engine.py` in the author checkout at
`64b5a13aa249f1360846657392e6c66817b26d0f`: `_jflags` lines 1466–1483,
history storage lines 1622–1629, and `hmr_composed_params` lines 3398–3431.
The 533-step public schedule is reused.

`compileHistoricalSlotWidth` and its checked wrapper parameterize the physical
coefficient slice. Width six is definitionally the previous slot compiler,
as proved by `compileHistoricalSlotWidth_six`. The generalized static budget
proof constructs successful checked slots, carrying persistent ownership,
distinctness, history growth, and row widths between steps. The original
instruction checker still checks the generated gates.

`hmrHistoricalBudgets` is checked by kernel reduction of the public numerical
schedule. `compileHmrWalk_exists` derives actual successful compilation of all
533 steps from those budgets and concrete seed geometry; it does not assume
that the compiler succeeded. `hmrWalk_dials` records the counter and offset
widths and the seed's 793 live addresses.

This is a parameter-instance and compilation certificate. It is not a proof
of literal source gate equality: Hmr's shared jflags and cached decoder chains
still need a corresponding implementation and proof, including depths two
through four. Full forward/reverse semantics, updated failure events, and
the full source-level resource certificate remains open. In
particular, the old 907/28 and 620/315 resource figures must not be assigned to
this new instance or to the source circuit.

## Persistent exit and retirement layout

The actual successful `compileHmrWalk` return now has a certified live-set
cardinality of 906, leaving 29 arena wires outside that live set. The proof
uses the actual compilation result and per-step geometry, not only a scalar
schedule calculation. The final row payload widths are 3, 4, 280, 280 and the
rows remain distinct and owned by the returned arena.

`hmrClosedArena` retires the 287 f/g/gv payload wires from this exit layout.
Its live-set cardinality is 619, with 316 wires outside it. This is the
retirement layout calculation. Executing the closer safely still requires
the generic closer's successful-input conditions (g=0, |f|=1, gv=f*p) and
entry readiness. These conditions have not been derived here from the new
whole-walk semantics. No full Hmr source-gate equivalence or whole-point-add
935-wire theorem follows from these cardinalities.

## Shared source anchor flags

`HmrFlagCell`, `HmrFlagChain`, and `HmrFlags` implement the actual shared
anchor split in `engine.py:1466–1499`: three AND anchors interleaved with
six CX gates, followed by the source release order and measurement-conditioned
CZ corrections. The six temporary wires hold j2/a1/j3/a2/j4/j5p; they share
the intermediate prefixes a1 and a2. The public forward theorem gives all
six values, and the complete release theorem restores the entire input
state, including its phase, for every measurement tape. Initial distinctness
and six clean scratch wires imply the staged readiness conditions.

This block uses three Toffoli gates and consumes three measurements on
release. It has not yet been installed into `compileHmrWalk`. The source's
cached decoder cube chains, physical allocation, and the complete walk
correspondence remain open; these standalone flag proofs do not close them.

## Source counter arithmetic (local component)

`HmrCarryIncrement` implements the one-bit all-GID adder used by
`engine.py:599–608,1254–1267` (source commit
`64b5a13aa249f1360846657392e6c66817b26d0f`). Each carry is measured and
corrected before its input target is flipped. Early increment uses the low
counter bit as the ripple control, followed by an X on that low bit; armed
increment surrounds the controlled ripple with X gates on the frozen bit.
Decrement uses the source complement/add/complement construction, with the
same forward measurement order. The full-state theorems hold for arbitrary
tapes and preserve phase and all wires outside the counter.

`compileHmrCounterStep` checks the six counter wires and frozen metadata,
then actually borrows four carry cells in early steps or five in armed
steps. Its return theorem proves the measured output is ready for the
original arena and that releasing these cells succeeds. Both directions
use four/five Toffolis and four/five measurements locally. These are local
scratch counts, not the peak of the walk. The increment value theorem
includes modular overflow; no signed no-overflow premise is silently added.

This component has not yet replaced the old counter module in the whole
walk. Source F2 complements z during row routing, F5 increments it before
F6 shifts/resizes; the existing mixed front still has a different order.
The new local results do not establish whole-source arithmetic correspondence.

The counter component now also has ordinary-gate legality, decrement
modular values, and an F2/complement–body–F5 signed-value theorem. The latter
requires the intervening body's actual counter/frozen value preservation
and readiness, and preserves that body's phase; it is not a whole-front
source-equality theorem.

## Adaptive low-carry row addition

`HmrHybridRow` implements `engine.py:520–555`: low positions compute clean
AND carries, the remaining high positions use the shared MAJ/controlled-UMA
path, then the low carries are released in reverse position order before
the controlled sum writes. Its proof covers every legal number of low
positions, arbitrary incoming carry, and arbitrary measurement tape.
`compileHmrHybridRow` selects that number from the actual arena:
`min (935 - A.live.card) (width - 1)`. Successful compilation follows from
input ownership and geometry; no extra capacity hypothesis is needed.
The original arena is ready after execution, and all borrowed carries can
actually be released. The local counts are `3*width-2-k` Toffolis and `k`
measurements. The arena passed here must include the shared carry and all
other currently live temporaries, as it does in the source census.

The carry-in wrapper, explicit measured subtraction, F4 two-call assembly,
and integration into the full source walk remain separate obligations.

The carry-in wrapper is now proved for the actual measured hybrid adder.
`HmrHybridSub` explicitly emits the source low unwrite/mint and release
cells around the unmeasured high subtraction. Its inverse equation and
both full-state round trips hold for independent tapes; the measured
program is never reversed. The same actual compiler justifies its clean
scratch and return. Addition and subtraction have the same local counts.
`hmrHybridBranch_zero` gives the one-row k=0 compatibility with the old
branchRow; this does not identify the old two-branch pair with source F4.

`HmrHybridPairAdd` composes the two actual carry-in calls on one arena,
using the first call's proved readiness before the second call. The two
carry lists may overlap because they are separate lifetimes. Both target
values and the full outside frame are proved. This is the inner two-call
sequence; the shared-u mint, both pre-add complements, and single u
retirement still need to be connected to the full source front.

`HmrHybridF4` now connects the shared-u sequence: one AND mint, both target
complements before either addition, two actual adaptive carry-in calls,
and one u measurement retirement. Both target values, phase, and every
other basis bit are proved. `compileHmrHybridF4` actually borrows u and the
shared carry, checks geometry and compiles both calls; compilation exists
from the input geometry and two free arena sites. The low-carry allocations
need no further capacity assumption. Its execution proves readiness of
the original arena and actual carry/u returns. This is a static allocation
plan; placing allocation events at the exact source front stages remains
part of whole-front integration.

The local F4 counts are `1 + (3*w1-2-k1) + (3*w2-2-k2)` Toffolis and
`k1+k2+1` measurements. Each k is computed at the arena with u and the
shared carry live. The actual first/second borrowed arenas stay within 935.
Generic and compiled hybrid add/sub ordinary-gate legality is also proved.
Reverse R14 F4 composition, front window transitions, and the full walk
remain open; this local census does not establish the whole-point-add peak.

`HmrHybridF4Inverse` now emits the R14 shared-u sequence explicitly:
second/first subtraction, then second/first complement, followed by the
single flag retirement. The complete F4/R14 round trip is proved for
independent tapes and the same physical layout. The measured-envelope
lemma reconstructs the already-retired flag from preserved input controls;
it does not retain a measurement result as a quantum bit. Actual compiled
carry-in addition/subtraction round trips and hybrid wire-support bounds
are also available. Transport to separately allocated reverse flags and
the full walk's history correspondence remain integration obligations.

### Source F6 payload shifts

`HmrPlainRotate` through `HmrShiftPhysical` implement source
`_shift_down_g`, `_shift_up_free`, `_shift_up`, and their explicit inverse
orders (engine.py 1051–1100). Only payload wires participate in adjacent
SWAP/CSWAP chains; the separate sign is copied after the right rotation and
cleared before the left rotation. Signed evenness proves division by two,
and the signed window bound proves doubling, including the armed frozen-bit
wrapper. Both inverse directions restore the complete state for independent
tapes. All gates are physical, phase is preserved, and non-payload wires
(including the restored frozen bit) are unchanged. Free shifts cost no
Toffoli; controlled left shifts cost exactly the payload width, with no
measurements. This is a local component result: the four-row exit resizing,
repack, full walk trace, and resulting whole-walk resource bound remain open.

### Pairwise routing and ordered row resizing

`HmrSwapRows` emits one complete CSWAP per pair. `HmrRouteStage` follows F2
with f/g pairs, then fv/gv pairs, then counter CXs; its explicit R16 inverse
performs counter CXs, fv/gv pairs, then f/g pairs. Each pair's wire order
remains ascending. Full-state inverse and signed row semantics are proved.
`hmrSwapRows_eq_batched` proves only semantic equivalence with the old batched
register-copy network, not literal gate equality.

`HmrBankOrder` feeds the actual allocator six distinct row orders: entry
f,g,fv,gv; headroom g,f,gv,fv; forward exit g,f,fv,gv; reverse regrow
gv,fv,f,g; reverse headroom removal fv,gv,f,g; reverse exit gv,fv,g,f.
Compilation existence follows from concrete ownership, disjointness and
positive-growth capacity conditions. Signed values, widths, readiness and
external owned sites are preserved. These blocks still require whole-walk
assembly and the public schedule's actual capacity proof.

### Actual forward front compiler and partial execution bridge

`HmrSourceFront` compiles ordered entry padding, two retained flags,
headroom, shared-u F4 arithmetic, F5 counter update, physical F6 shifts,
and ordered exit shrinking. Its contract exposes the actual allocator
results. In the early case no frozen wire is allocated or assumed owned;
the counter's unused control argument uses the already owned sigma wire.

The execution bridge currently proves F1–F3 together, including the actual
sigma predicate and post-routing branch bit, and proves headroom and F4–F5
with actual scratch return, phase preservation, counter value and branch
arithmetic values. Layout disjointness and cleanliness follow from compiler
results. The full F6/exit composition, mathematical whole-step invariant,
repacking, history and complete 533-step source trace remain outstanding.
These results do not establish a new whole-walk resource number.

### F6 and ordered exit composition

`HmrSourceFrontShiftFinish.shift_exit` now composes actual g downshift,
free or frozen-controlled fv upshift, and actual ordered shrinking. It
preserves phase and metadata, returns the exit arena clean, and establishes
all four signed row values. Layout separation and nonempty payloads come
from the compiled front. Its numerical input obligations remain explicit:
g is even, fv fits its pre-doubling window whenever active, and the resulting
rows fit the exit window. These obligations still need the preceding
arithmetic and whole-step mathematical invariant. The exact gate-list
factorization `program_stages` is independent of semantic correctness and
does not assert compilation success for the public 533-step schedule.

### Entry predicates and signed arithmetic

The actual F1–F3 execution now establishes sigma as the mathematical swap
predicate and branch as `bbit`, using the signed counter and input row
encoding. It also establishes the routed four-row encoding. These are
conclusions of the actual gate execution, not supplied control assumptions.
F4–F5 signed arithmetic follows from its proven word operations and explicit
signed result bounds; f/fv and retained controls are preserved by the actual
layout. The whole-step composition and discharge of numerical window
obligations remain outstanding.

### Complete arithmetic-front semantics

`HmrSourceFront.Compiled.run_math` composes padding, F1–F3, headroom,
F4–F5, shifts and exit shrinking. It establishes the next four signed
row values, the next signed six-bit counter, phase preservation and exit
readiness. Active lanes implement `zStep`; frozen lanes retain their rows
and counter. Input f oddness and frozen g=0 imply the required g evenness;
input pair windows imply intermediate arithmetic and fv shift bounds.
Only input pair fit and output row/counter fit remain numerical window
conditions. Later repacking, freeze/history operations and their records
are outside this theorem.

Physical-address correspondence remains separate: `planRowResize` currently
uses generic `Arena.borrowMany`, while the source prefers home bands and
performs a relocation journal. The front theorem proves the gate operations
and ordering for its compiled layout; it does not identify that layout with
the source HomePool trace, nor establish all 533 compilations or a new peak.
