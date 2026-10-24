# Pinned author parameters

`author-constants.json` is copied byte-for-byte from `tasks/modinv-point-add/circuits/divsteps/constants.json` in [andigu/uncompute, commit 64b5a13aa249f1360846657392e6c66817b26d0f](https://github.com/andigu/uncompute/tree/64b5a13aa249f1360846657392e6c66817b26d0f). Copyright Gu, Kemeny, Yelin and Lukin (2026), Apache-2.0. The retained license is [LICENSE-uncompute](../../ECDSAAdd/Math/Divsteps/LICENSE-uncompute).

The JSON is unmodified. The Lean translation and extraction script are new. The generated file records the SHA256 of the source bytes; `python3 scripts/paper935/generate_schedule.py --check` verifies exact reproducibility and is run by `scripts/verify.sh`.

These are sampled/fitted parameter tables. Importing them does not certify their claimed error budget or the safety of every trajectory.

`hmr-source-resize.json.gz` records forward row-resize and repack observations
from the same pinned `circuit.py` run as `../fused-hmr935-repack.json`. It covers
both 533-step walks (`s2-walkA`, `s6-walkC`), with 2,132 arithmetic stages and
12,792 row resize calls. Addresses are observed from the original allocator,
not selected by a replacement allocator. The compressed JSON includes source
hashes, row layouts, home-pool free lists, and logical-live snapshots.

Reproduce from a clean checkout of the pinned source commit above (Python 3.10+
required by the source; this export used Python 3.13):

```sh
python3.13 scripts/extract_fused_repack.py --source ../uncompute-paper \
  --output data/fused-hmr935-repack.json \
  --resize-output data/paper935/hmr-source-resize.json.gz \
  --allocation-output data/paper935/hmr-source-allocations.json.gz \
  --control-output data/paper935/hmr-source-control.json.gz
python3 scripts/paper935/generate_resize_instances.py
python3 scripts/paper935/generate_control_instances.py
python3 scripts/paper935/check_fused_repack.py
```

The existing checker checks all recorded resize transactions and exact Lean
transcription of the generated initial headroom examples. Those examples cover
four growth calls in each walk's first step. The generic log-driven Lean
checker proves semantics for accepted row/bank resizes; it does not choose
addresses. Neither the data checker nor these initial examples prove the
complete walk's gate correspondence, arithmetic invariants, or peak space.
Gzip timestamps are fixed to zero; comparisons may use decompressed JSON to
avoid compression-library differences.

The generated `HmrSourceExitInitial` also checks the first exit's relocation
journal and resulting four row views for each walk. `HmrSourceExitReplay`
checks the composed four exit resizes and relocation against those recorded
physical row views. These are first-step examples, not all-step certificates.

`hmr-source-allocations.json.gz` observes the original Builder and HomePool
methods during add, counter and shift-exit stages: 3,198 stages and 195,080
ordered take/give events. Nested Builder allocation inside HomePool is
recorded once at the logical ownership boundary. Hybrid-call boundaries and
the source's actual active-qubit census are recorded, as are counter inputs
and early/armed mode. The checker replays ownership, compares matching resize
snapshots, and checks the counter and hybrid borrow/return order and sizes.
This replay does not assert quantum cleanliness at a return.

`HmrSourceScratchInitial` checks six generated allocation examples: each
walk's first early and armed counter, and its first narrow hybrid addition.
The generic logged compilers prove actual counter/hybrid execution and clean
returns from arena readiness. The logged arithmetic front now composes these generic checks; acceptance of
all source front logs remains open.

`hmr-source-control.json.gz` observes the post-shift body of the same 1,066
forward steps, with 36,926 allocation events and 14,296 gadget calls. It
records blocked zero tests, fresh-prefix cleanup, timestamp equality tests,
and surrounding control calls. The original source methods execute unchanged;
the optional instrumentation also reproduces the three earlier exports.
The same checker validates ownership transitions, retained keeper counts,
F7/F16 call parameters and the observed cleanup borrow/return order.

`generate_control_instances.py --check` checks exact generation of
`HmrSourceFreezeInitial` and `HmrSourceFreezeCleanupInitial`: each walk's first armed F7 checks its actual keeper
addresses, fire and retained census; F16 checks acceptance using the then-current
arena and independently observed prefix addresses, with the resulting live
set matched to the source snapshot. These four kernel checks are selected
examples, not certification of all calls, whole-step semantics or peak space.

The same control journal also records each actual `_r_fit(t)` call, its
incoming/outgoing history list and the precise allocation-event interval.
All 1,066 forward calls are checked: 120 grow the history and none trim it.
This is an observation of the pinned schedule, not a general no-trim theorem.
`HmrSourceRecordGrowInitial` checks the first and last growing calls of each
walk (steps 0 and 322), while the j-flags remain live. The generated proofs
separate input ownership/distinctness from the explicit borrow, then check
compiler acceptance and resulting live cardinality.

The control journal additionally observes fv read ports and each actual
`_s_death` call. `early_control_log` checks all 996 early-stage call patterns
and extracts the five actual allocation lists consumed by
`compileHmrEarlyControlLog`. `HmrSourceEarlyControlInitial` checks each walk's
first whole early control sequence and final live cardinality; these two
examples do not replace all-stage kernel acceptance.
