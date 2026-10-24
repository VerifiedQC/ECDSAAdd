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

### Pinned resize observations and checked replay

`HmrLoggedResize` checks explicitly recorded growth addresses with
`Arena.reserve`; it leaves the original allocator unchanged. `HmrLoggedBank`,
`HmrLoggedRows`, and `HmrLoggedBankCorrect` compose these checks in the six
source row orders. Accepted resizes preserve row values (under the requested
numeric window), phase and arena readiness, with ownership, width, frame,
proper-gate and support proofs. This is a log-driven checker, not a second
implementation of HomePool.

The same pinned-source extractor and existing repack checker now cover 12,792
forward resize observations across both 533-step walks, including shift-exit
repack journals. `HmrSourceResizeInitial` is generated from that export and
kernel-checks the output physical row layouts of the first four headroom
resizes in each walk. The full trace remains data, not a Lean certificate for
all 533 steps. Complete trace acceptance and integration into the source walk remain open. The earlier arithmetic-front
correctness theorem retains its generic address-selection policy.

`compileHmrLoggedExit` now composes accepted exit resizes with the actual
checked repack gates. It preserves signed row values, phase, readiness and
widths, and proves proper gates, zero Toffolis/measurements and arena support.
`HmrRepackFrame` proves that an owned wire not named as a relocation source
remains at its address; destination freshness follows from the checker.
`HmrSourceFrontRepack` composes the earlier parameterized arithmetic front
with checked relocation, with the counter view transported by the same
permutation. The generic front allocator is still unchanged. Generated
first-step examples check the two full exit resize/repack output banks;
source allocation of the remaining stages and whole-walk integration remain
open.

Logged scratch allocation is now checked by `Arena.checkBorrow` (length,
distinctness and `reserve`, with no address selection). The logged counter
and hybrid/carry-in compilers prove their existing source gate programs,
clean scratch return, local counts and physical gate legality. Hybrid k
remains derived from the current arena cardinality. A second pinned export
records the actual allocation events and hybrid-call active census; data
checks verify their correspondence to resize snapshots and source call sizes.
Six generated early/armed-counter and narrow-add examples are kernel checked.
These initial examples do not prove complete forward/reverse walk correspondence.

`compileHmrHybridF4Log` now checks the shared flag/carry and both low-carry
logs, reusing the existing F4 gate program. Its execution theorem proves
both target words and clean return of the shared flag/carry. Both k values
are computed on the arena that includes those two retained temporaries;
local counts and allocation censuses refer to this same checked plan.
Original counter/hybrid compilers are proved to be accepted logged instances.
Logged bank resizes also expose static widths, ownership and separated
metadata/frame preservation, independently of numeric window assumptions.

`compileHmrSourceFrontLog` now checks all F1–F6 allocations from explicit
logs, including entry/headroom/exit resizes, sigma/branch, shared flag/carry,
both hybrid calls and counter scratch. It returns the existing front plan
and gate program. Counter scratch is borrowed from the head arena after F4
has returned its shared flag/carry; readiness follows from the F4 execution
proof, not from an assumed clean intermediate state.

`compileHmrSourceFrontLog_run` derives phase preservation, exit readiness,
the four next signed rows and the next signed six-bit counter directly from
compiler success. Its numerical input/output-window conditions and active
versus frozen behavior match the generic front theorem.
`compileHmrSourceFrontLog_repack_run` composes checked relocation, preserving
the original counter when no relocation source is a counter wire. The
`HmrSourceFront.Logged` certificate contains static checks only, not assumed
execution conclusions. No new whole-walk resource claim follows: acceptance
of all source front logs, subsequent freeze/history gates and the complete
forward/reverse measurement-phase proof remain open.


### Logged freeze and keeper lifetimes

The blocked zero test now accepts an explicit scratch list per block, with
no address selection. Its actual program returns every chain intermediate
and retains exactly one keeper per block: the retained test increases live
cardinality by the number of blocks, not by one for the whole test. F7 then
borrows its fire bit from that retained arena. `HmrFreezePlan.Logged.run_spec`
proves the zero predicate, freeze latch, timestamp update, phase and readiness;
`frame` preserves incoming owned wires outside the latch and timestamp.

Cleanup accepts separate prefix logs and checks each borrow against the
then-current arena. It proves actual measured clearing before release, without
requiring original scratch addresses. The logged F16 equality ladder, w1 and
fire return compose with reverse-order keeper retirement in
`HmrFreezePlan.Logged.cycle`. The intervening body must preserve the keeper
and witness equations and have owned support; those obligations are not yet
discharged for the full history body.

`pin_armed` and `pin_scheduled` identify the latch/timestamp result with the
independent integer `pinStep`, using the signed post-arithmetic g value and
`PinState.RecordValid`. Before Tmin the scheduled program is empty; at and
after Tmin it tests next.g=0. The signed-zero/physical-zero equivalence is
proved, not supplied as an assumption. These are parameterized checked plans;
the source export now records forward freeze/cleanup allocation calls, but
complete forward/reverse compilation and the whole-walk peak remain open.


The same pinned extractor now observes all 1,066 forward post-shift bodies,
including F7/F16 calls and independently reborrowed cleanup prefixes.
`HmrSourceFreezeInitial` checks both walks' first armed F7 keeper addresses/fire/census
and F16's resulting live set against this export. The existing data checker
validates call/ownership structure and exact regeneration; it does not prove
measurement semantics or the remaining complete history-body obligations.


### Logged history storage

`hmrLoggedStore_run` composes the actual allocated j-flags, finite history
push and measured flag retirement. Under the stated history-capacity bound,
it proves the resulting branch bit, history value, phase, restored incoming
arena readiness and scratch release. The flag equations needed for cleanup
follow from the finite push's bit-preservation theorem; they are not supplied
as assumptions about an abstract body. This covers F9/F13 storage, not the
remaining full F8--F15 composition or reverse history phase cancellation.

`HmrSourceClassPlan.Logged` checks F8 with the actual two early inputs or
three armed inputs, without unused placeholder ports. Its execution theorem
proves the class predicate and preserves incoming data. `erase_return`
retires the equality chain and positive bit after a body with the stated
computed-bit equations, restoring the incoming arena and preserving the
body's phase and owned data. `store_cycle` discharges these equations for the actual class/deep-history
storage composition and proves the branch/history values, phase, restored
arena readiness and data frame. It retains the explicit capacity condition.
The counter zero-test lifetime, sigma/branch retirement, complete F7--F17
integration and reverse phase cancellation are not covered by this composition.


The counter-test envelopes now compose this storage body with early full-chain
retirement or armed keeper retirement from newly checked prefix logs. Both
prove the incoming arena is ready again and retain the data frame. Logged
F15 separately checks the guard borrow, proves sigma clearing from its stated
value equation, and releases sigma only after clearing. F17 explicitly keeps
the measurement-dependent phase debt while clearing and releasing the branch.

These envelopes assume the history port is already owned. The source calls
`_r_fit(t)` after computing the j-flags, so whole-step correspondence still
requires that intervening record growth/trim and its actual allocation order.
The F15 witness must also be connected to the arithmetic/row invariant in the
assembled step, and F17's phase debt must be cancelled by the reverse leg.


### Record growth while flags remain live

`compileHmrRecordGrowLog` checks the observed fresh addresses and old history
ownership. Its readiness theorem derives zero values for the new cells,
preserves the numerical history value and proves the enlarged register's
length, distinctness and ownership. The forward checker rejects trimming.
The pinned control journal has 1,066 fit calls, with 120 growth calls and no
trim calls; its validator checks their exact event intervals.

`hmrLoggedGrowingStore_run` consumes the actual ordering of flag allocation
followed by history growth. Checked disjoint reservations commute as arena
certificates, allowing reuse of the unchanged gate proof while retaining
the original ordering checks. `growing_store_cycle` also includes class
computation and retirement and leaves the enlarged history in the output
arena. No new allocator or changed gate sequence is used. Complete counter
test/freeze/sigma/branch composition and reverse phase cancellation remain
separate obligations.

`hmrSourceGrowingEarlyStore_run` further encloses this body with the early
counter zero-test and measured retirement. It derives the enlarged history
arena after cleanup from the actual growth result, preserving the body's
phase and incoming non-history data. Complete freeze/sigma/branch composition
and the reverse leg are still not supplied by this theorem.


### Early control sequence

`compileHmrEarlyControlLog` combines the actual early F8--F17 allocation
checks into one entry point: six-bit counter test, class and j-flags, history
growth, sigma retirement and branch retirement. Its execution theorem
proves output readiness and the final basis/phase formula, with the branch
measurement debt retained. `ready_of_rows` derives sigma's cleanup equation
from the independent divsteps row invariant and the current fv row. The
history-capacity condition remains explicit.

The control export now includes actual fv reads and the `_s_death` event
interval. The checker extracts and validates the call/allocation pattern of
all 996 early stages. Generated first-step examples check whole early-control
compiler acceptance and final live cardinality for each walk. This is not
yet all-stage kernel acceptance, armed control integration, or complete
forward/reverse walk correctness.


### Armed control and arithmetic-to-control values

`compileHmrArmedControlLog` combines F7--F17 with explicit allocation logs:
freeze keepers/fire, blocked counter test, class/history body, counter prefix
reborrow, sigma retirement, timestamp/fire/freeze retirement, and bare branch
measurement. The execution theorem derives cleanup of retained ports from
the actual body's frame and sigma write; its result retains the final branch
measurement's phase debt and proves output arena readiness. `sigma_witness`
connects the cleanup equation to the independent row invariant and actual F7.
Armed history growth is explicitly empty, as in the pinned source trace.

The trace checker validates all 70 armed control segments. Two generated
first-armed-step fixtures check whole compiler acceptance in
the kernel. These finite fixtures do not prove all-stage acceptance.

`run_control_values` proves that the actual arithmetic front preserves its
computed sigma and old-branch values and the armed frozen input. The repacked
version derives the same conclusion from checked moves excluding those
source ports; destination exclusion follows from arena ownership. These
lemmas connect the arithmetic output to subsequent control witnesses without
assuming those output values separately. Full 533-step induction, reverse
phase cancellation, and whole-walk peak accounting remain open.

The early and armed control frame lemmas preserve incoming owned data
outside the actual history, sigma, branch and (for armed control) freeze
metadata ports. `HmrSourceFront.Logged.early_step` now composes the actual
arithmetic front, checked relocation and whole early control sequence. From
the independent divsteps invariant it derives sigma cleanup and concludes
output readiness, all four next rows and the next signed counter. Static
ownership/disjointness, row/counter fits and history capacity remain explicit;
it neither assumes these output values nor erases the branch phase debt.

`compileHmrEarlyStepLog` checks the complete early step and its remaining
static layout conditions in one entry point. The returned plan's `run_math`
uses its checked front, relocation and control certificates; callers retain
only the mathematical state, range and history-capacity hypotheses. Coefficient
bit reads saturate to the row sign port as in the pinned short-row source.

The same armed plan also has independent symbolic resource accounting:
`final_live` proves that its final live set is exactly the incoming set minus
sigma and branch, and `final_card` proves a net reduction of two sites. The
source examples' `_card` theorems obtain 914 from an independently checked
incoming count of 916 and this generic theorem; they do not evaluate the
compiled plan's output arena. These are boundary counts, not peak bounds.

The armed checker avoids two redundant computations. Zero-test/drop arena
identity is derived by `compileHmrZeroLog_drop_return`; unchanged history fit
is derived from checked length equality, the incoming distinctness and the
monotone ownership chain through the actual borrows. The returned `Logged`
certificate still contains both original component acceptance equations.
No cleanup condition or range premise is removed by these optimizations.

`HmrSourceFront.Logged.armed_step` supplies the corresponding armed
arithmetic/repack/F7--F17 composition. It derives the coefficient cleanup
witness through the actual freeze operation and preserves the four resulting
rows and counter through control retirement. Timestamp range/unfrozen-zero
and history capacity are still required at their actual intermediate inputs;
this theorem does not yet prove the full walk invariant or phase cancellation.

Both early and armed steps now have a single logged compiler and a returned
plan execution theorem. The armed source examples use component equations:
small gate-plan projections are checked by the kernel, while complete arena
identities are reconstructed from the allocation/live-set theorems. Canonical
live sets are rendered from the observed addresses; no allocator selects
replacement sites. The final acceptance theorem composes these checked
equations, avoiding one giant normalization of the whole plan.

The armed metadata theorem also carries F7's frozen flag and timestamp through
the actual F8--F17 cleanup. Its chronological corollary proves that the final
timestamp is below the next offset and remains zero while unfrozen. This is
a control-segment invariant; preserving it through the next arithmetic front
and proving the complete walk induction remain separate obligations.

`run_locality` and its repacked counterpart now prove that incoming owned
storage outside the arithmetic rows/counter keeps its value through the
actual F1--F6 program. Applying them to the timestamp moves the chronological
hypotheses back to the complete step's entry state. The chronological step
checker verifies this storage separation and exclusion from relocation sources;
its execution theorem returns the next rows/counter, output readiness, and
the next timestamp bound/unfrozen-zero invariant. Arithmetic range and actual
history-capacity hypotheses remain explicit. This does not yet establish
all 533 source instances or the reverse phase cancellation.

The scheduled step checker now covers both early and armed source journals.
Its correctness theorem returns the complete independent `pinStep` encoding:
four rows, counter, frozen flag and timestamp, together with `Inv` and
`RecordValid`. The latter is obtained directly from `pinStep_record`.

`compileHmrLoggedWalk` threads the arena, row view and growing history register
through the actual step compilers. Its forward theorem inducts on the source
journal list with `pinWalk` as the specification; no per-step output agreement
is assumed. It remains conditional on compiler acceptance and explicit integer
range/actual record-capacity obligations. No complete 533-step source journal
acceptance certificate, reverse phase cancellation, or whole-walk peak bound
is claimed by this generic induction.


### Physical arm boundary

The preceding `compileHmrLoggedWalk` theorem requires pre-reserved physical
freeze metadata. It is not a literal instance of the complete source walk:
`engine.py` 910–920 allocates the timestamp and frozen site at `_arm_alloc`
and releases them at `_arm_free`; `_fwd_add` 1213–1214 calls allocation exactly
at step 498, before row padding. Earlier source steps have no such sites.

`compileHmrSourceStepLog` and `compileHmrSourceWalk` model this lifetime
explicitly. Early steps encode the mathematical zero freeze fields without
physical metadata; at Tmin the checker borrows the observed timestamp sites
followed by the frozen site. Incoming `Arena.Ready` proves all seven fresh
sites zero. Subsequent armed steps retain this metadata. The forward theorem
uses independent `pinWalk`, `Inv` and `RecordValid`, with the same explicit
numeric and actual record-capacity obligations. Phase guards reject early
steps at or after Tmin and reject allocation at any other index.

`HmrSourceArmInitial` checks both observed allocation boundaries, extracted
from the pinned allocation/control/resize traces. The extractor verifies the
seven leading takes and the resulting live set before the first row resize.
These are boundary counts, not whole-program peak bounds.

`releaseHmrArmLog` checks the paired physical release; it preserves readiness
and the early mathematical encoding, and matched borrow/release restores the
original live set. Its zero-state premise must come from the actual inverse
program. The forward result does not authorize returning dirty metadata.
A complete 533-step source acceptance certificate, inverse cleanup/phase
cancellation, observed reverse release census, and whole-walk peak proof
remain outstanding.


Selected headroom transactions now also have split certificates in
`HmrSourceHeadroomParts`: each observed row layout is checked for distinctness
and ownership, its exact source reservation is checked separately, and
`planRowResizeLog_of_growth` assembles the original checker result. The
examples cover all four headroom rows at steps 0 and 498 of both walks.
Sorting is used only to prove distinctness; emitted wire order is unchanged.
This avoids normalizing a complete arena/gate plan in one kernel reduction.
The generated file is checked by the pinned-source checker. These selected
transactions are not a whole-walk acceptance certificate.


`HmrSourceFrontInitial` now assembles each complete arithmetic front for
steps 0 and 498 of both walks. Its exact returned plan is derived from the
observed entry padding, sigma/branch borrows, four-row headroom transaction,
two hybrid additions with shared flag/carry, counter scratch, and measured
exit shrinking. Component arenas and ordered row views are joined explicitly;
no front acceptance or execution agreement is assumed. All generated pieces
are reproduced by the pinned-source checker. The chronological control and
repack composition after these fronts still need their corresponding complete
step certificates. The full two 533-step compiler probes return true at runtime;
that diagnostic result remains distinct from a whole-walk kernel certificate.


`HmrSourceStepInitial` now composes those same four fronts with their actual
relocation journals and previously checked control blocks. The lifecycle
certificates in `HmrSourceLifecycleInitial` additionally check timestamp
separation and the exact seven-site arm borrow at step 498, starting from
the pre-arm arena. Early steps retain the physically absent metadata state.
Each named lifecycle plan is extracted only after acceptance is proved, and
has an explicit `compileHmrSourceStepLog = some Plan` theorem. These are
complete selected step certificates, still not all 533-step certificates.


The complete source journals are now library data in `HmrSourceS2WalkLogs`
and `HmrSourceS6WalkLogs`: each has 533 steps, generated in 16-step chunks
by `generate_walk_logs.py` and reproduced by the pinned-source checker.
`HmrSourceWalkLogFixtures` identifies every selected lifecycle log at
its actual list index. The diagnostic runner imports these same lists.
These data and length/index proofs do not establish whole-walk acceptance.

`compileHmrSourceWalk_append` permits separate segment acceptance proofs to
compose while requiring the suffix to start at the prefix's returned arena,
row bank, record, freeze metadata and next step number. Early control checks
also have an exact-plan converse to their `Logged` contract. These helpers
avoid repeating a monolithic reduction when extending the selected coverage.


Early controls use
explicit returned plans assembled from separate equality, class, flag,
history-growth and retirement checks. This exposes the boundary arenas and
row banks without re-running the complete control checker during composition.


The current generated selection extends the continuous prefix to steps 0–63
of both walks (and retains the isolated arm-boundary checks at step 498).
`HmrSourceWalkPrefix` composes the actual first 64 entries, proving each
intermediate arena, row view and history register matches the next checker.
`HmrRowsSuffix` lets bank certificates reuse one full-bank distinctness or
ownership check for their ordered suffixes. Neither change establishes the
remaining 469 steps or the reverse program.


The relocation composition also handles more than one move. The first
observed two-move and three-move journals (steps 24 and 200 of each walk)
have exact `checkRepack` certificates in `HmrSourceMultiRepack`. Each move
uses the arena returned by its predecessor. Step 24 is included in the
continuous prefix; step 200 remains an isolated relocation component. Sample
arenas use a Boolean interval-list predicate so their decidability does not
require a large nested proposition during instance synthesis.

Early control certificates now use `HmrControlCheckParts`: input ownership,
borrow shape, reservation, and release facts are established separately and
then imply the original compiler's exact returned plan. Large arena filters
stay symbolic during these checks. The public projection and exact-plan
statements retain their previous names and types.

Early control modules contain eight source steps each. Other selected-step
certificate generators use `generated_chunks.py` to emit at most sixteen
source steps per module, retaining an umbrella at the original import path.
Chunks import their predecessor where shared definitions require it.
`arena_sharing.py` replaces identical literal resize arenas with direct
aliases of the first occurrence; the original observed wire sets are not
changed. This also shares adjacent Before/After states. Proofs explicitly
unfold the corresponding canonical arena when needed.

The exit generator reads its pinned resize log once per invocation rather
than once per step. All generated files remain covered by `--check` through
the pinned-source checker. These changes optimize verification; the accepted
continuous prefix covers sixty-four steps of each walk.

The 64-step proof is split into four 16-step segment modules per walk. A
separate join uses `compileHmrSourceWalk_append`, supplying the exact arena,
bank, record and metadata returned by the accumulated prefix. The generator
checks equality with the actual exported list prefix.

Large interval predicates use `List.any` with a Boolean membership test.
`hmrInterval_any_iff` relates it to mathematical interval membership.
`HmrArenaFiniteChecks` derives exact set unions, differences and updates
from kernel-checked pointwise equivalences on the bounded 935-wire universe;
no proof limit is increased. `HmrSourceFragmentedControl` checks an isolated
actual s6 step 36 control block whose output has 43 disjoint live intervals,
then binds the returned arena to that interval list. This is the state before
step 37; the control input later within step 37 has only 41 intervals. The
pinned-log generator checks that 43 is the maximum over all early control
allocation states. Source step 36 is also inside the certified 64-step
prefix; this separate theorem characterizes its fragmented output arena.

Generated certificate imports now name the modules providing their referenced
declarations. Explicit predecessor imports remain to bound parallel build
work. Removing import lines from the import-only checkpoint leaves every Lean
module body unchanged; future prefix expansions add the new step certificates
separately.

## Private component certificates for steps 64–95

`HmrSourcePrivatePrefix96` extends both source prefixes to 96 steps. The
existing 0–63 instance modules and their public declarations are retained.
Each new step has a separate `HmrSourceS2PrivateStepN` or
`HmrSourceS6PrivateStepN` module. Its public interface contains four concrete
definitions (input arena, row bank, source specification and output plan),
an exact `compileHmrSourceStepLog ... = some plan` theorem, and a theorem
binding the specification to the corresponding entry of the pinned source
journal. All component facts and local instances in that module are private.

The generator executes the existing source-driven component generators into
memory for the selected new step. It collects the needed dependency closure
and emits it in the same file as the public certificate; it does not copy
previously generated instance modules. The two new 16-step segments per walk
use the same `_cons` rule and exact arena/bank/record boundaries, then append
to the existing 64-step certificate. The final theorem concerns the actual
first 96 entries of the original 533-step journal, not a separate synthetic
list. The remaining 437 forward steps, actual reverse program, phase
cancellation and whole-program resource theorem remain outstanding.

`data/paper935/hmr-private-certificate-manifest.json` records every public
declaration in all 71 new modules. Regeneration checks the exact module set,
contents and public declaration list. The four-definition/two-theorem step
interface is asserted independently of the emitted text. The checker also
pins the existing registry prefixes by hash. The original 180 theorem
registrations were supplemented with all 274 public definitions after review;
the corrected 96-step registry contains 24029 entries. Both definitions and
theorems must occur in the manifest and audit registry. Every private proof
still undergoes kernel checking and is traversed by the public certificate's
recursive axiom audit.

The verification runner reports source checks, build and axiom-audit phase
times separately. Set `ECDSA_VERIFY_PHASE_LOG` to a file path to collect JSON
records as well. At the 96-step checkpoint, audit commands ran in sequential
batches of 1000 with the
same imports; the original ordered registry and exact axiom whitelist are
checked against their concatenated output.


### 128-step source checkpoint

The next checkpoint appends source steps 96–127 for both walks to the checked
96-step prefix. Existing 0–95 Lean modules are unchanged. Each new step keeps
its component facts private and exports the same four data definitions plus
the exact compiler-result and source-binding theorems. Two 16-step segments
per walk are connected using the existing append theorem, with all arena,
bank, record and metadata boundaries checked.

`HmrSourcePrivatePrefix128` imports both final certificates. The generated
manifest covers both private checkpoints (64–95 and 96–127), preserves the
first 24029 audit entries by hash and checks each appended checkpoint's
public declaration list separately. The extension adds 454 public entries
(180 theorems and 274 definitions) without reordering any prior entry. Full verification must pass before publication.

This remains a forward-prefix certificate: 405 forward steps, the complete
reverse program, phase cancellation and the whole point-addition resource
claim remain outstanding. The batch audit runner uses 2000 commands per
process, with unchanged imports, ordered commands, whitelist and exact output
comparison; individual batch times are now reported. No stack or Lean limits
are increased. Timing and the bounded comparison with the former 1000-entry
batches are recorded in the PR description.

### 160-step source checkpoint

This extension appends actual source steps 128–159 for both walks. All prior
0–127 Lean modules are unchanged. Each walk adds two consecutive 16-step
segments and joins them to its checked 128-step prefix using the existing
append theorem; intermediate arena, row bank and measurement-record boundaries
are checked rather than assumed. `HmrSourcePrivatePrefix160` imports both final
160-step certificates.

The manifest now covers all three private checkpoints and freezes the first
24621 audit commands by hash. Another 454 public declarations (274 definitions
and 180 theorems) are appended, bringing the registry to 25075 entries. The
2000-command audit batches and exact whitelist are unchanged. The initial direct verification included the new builds without a separate
warm-up build. After the log-binding proof correction, the complete verification
passed using the completed artifacts. Both runs are timed separately in the PR
description.

There remain 373 forward steps, the complete reverse program, phase cancellation
and the whole-program resource theorem. This prefix is not a completed walk or
a 935-qubit point-addition claim.

The merged prefix includes main 61311f7's 138 audit entries before this PR's
entries. Every historical baseline hashes the complete merged prefix directly.
The 160-step log-binding proof reuses the 128-step binding and two 16-step
source blocks; it avoids expanding all row data at once, without changing any
recursion limit or the exact compiler result. The initial direct build attempt
and the corrected complete verification are reported separately.

The subsequent separate merge of main 4d0f000 adds 35 row-multiplication data and
normalization entries after the previous 138 main entries. The current registry
therefore contains 25110 commands. All historical hashes are updated over the
complete merged prefixes (23748, 23928, 24202 and 24656 entries), without
filtering. The preceding full 25075-entry verification and the new merge's
incremental checks are reported separately; this merge does not change any of
the 160-step Lean certificate modules.

### 192-step source checkpoint

The next extension appends actual source steps 160–191 for both walks, retaining
all previous 0–159 Lean modules unchanged. Each walk adds two 16-step segments
and joins them to the checked 160-step prefix. Every adjacent arena, row-bank,
history and metadata boundary uses the same exact compiler interface.

The manifest covers 284 private-certificate modules and freezes all 25110 prior
audit commands by hash. It appends 454 public declarations (274 definitions and
180 theorems), for 25564 total. The source checker regenerates the new modules;
the log equality composes the 160-step binding with the two new source blocks.
No proof, recursion or stack limit is increased. Verification and its build cost
are reported in the PR description before publication.

This remains a forward-prefix certificate: 341 forward steps, the actual reverse
program, record-phase cancellation and the whole-program resource theorem remain
outstanding. It does not establish the whole 935-qubit point-addition bound.

### 224-step source checkpoint

This verified extension adds source steps 192–223 for both walks as two new
16-step segments per walk, joined to the checked 192-step prefix. All previous
0–191 Lean modules remain unchanged. The manifest contains 355 modules and locks
the complete 25564-entry registry prefix; another 454 declarations (274 definitions
and 180 theorems) bring the prepared audit registry to 26018 entries.

The full build and exact public axiom audit passed; the PR description records
the complete verification and first-build costs. There remain 309 forward steps,
the reverse program, phase cancellation and the whole-program resource theorem.

### 256-step source checkpoint

This generated extension adds source steps 224–255 for both walks as two new
16-step segments per walk, joined to the checked 224-step prefix. All previous
0–223 Lean modules remain unchanged. The manifest contains 426 modules and locks
the complete 26018-entry registry prefix; another 454 declarations (274 definitions
and 180 theorems) bring the audited registry to 26472 entries.

Full verification passed: 5602 build jobs and all 26472 exact public axiom
audits, in 2175.481 seconds (36.26 minutes). The first incremental build took
1253.955 seconds and the three-process audit took 790.520 seconds. Batch size
remains 2000; output retains registry order and the whitelist/parser are unchanged.
The runner was committed separately from this proof extension.

The remaining work includes 277 forward steps, the reverse program, phase
cancellation and the whole-program resource theorem.

### 288-step source checkpoint

This generated extension adds source steps 256–287 for both walks as two new
16-step segments per walk, joined to the checked 256-step prefix. All previous
0–255 Lean modules remain unchanged. The manifest contains 497 modules and locks
the complete 26472-entry registry prefix; another 454 declarations (274 definitions
and 180 theorems) bring the audited registry to 26926 entries.

Full verification passed: 5673 build jobs and all 26926 exact public axiom
audits, in 2265.813 seconds (37.76 minutes). The first incremental build took
1310.657 seconds and the three-process audit took 817.023 seconds. The source
check took 117.387 seconds. No separate pre-warm or targeted build preceded it.

The remaining work includes 245 forward steps, the reverse program, phase
cancellation and the whole-program resource theorem.
