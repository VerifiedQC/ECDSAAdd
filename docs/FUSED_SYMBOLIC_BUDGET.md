# Symbolic nine-event budget

`FusedSymbolicBudget.lean` uses exactly the nine disjoint cells already defined
by `FusedFailureEvents`: counter, history, deadline, window, scaling, row,
lift, Horner, and sign. All are subsets of the same original input-label space.
The four fused events are aggregated over enabled modeled calls on each label;
replayed calls do not introduce independent random inputs.

`fusedExactBounds_total` identifies the sum of these nine exact cell masses
with the mass of the existing combined bad set. `fused_error_exact` then proves
the measured output error bound `2 * sqrt(total)` for any `InputLaw`, normalized
input amplitudes matching its encoded pushforward, and total below one.
The typed circuit supplies physical legality. The complete all-tape
`RecordedAgreement` outside the bad set remains an explicit hypothesis;
this theorem does not certify the unfinished point-add circuit by itself.
The mathematical ideal permutation is a separate argument, not extracted
from the implementation.

For later certified estimates, `FusedMassBounds` permits nine upper bounds
on these same exclusive cells. Nonnegativity of their total is derived from
the mass inequality. No independence assumption or numerical epsilon occurs.

## Outstanding application data

The counter/history/deadline/window and scaling masses remain pending symbolic
terms. No actual input distribution or numerical estimates are selected here.
The selected source caller correspondence and physical execution proof are
also still required. This is the symbolic portion of task #52 only.

No empirical table is supplied by this change. Any future table must be labeled
“empirical estimate, not a theorem” and include its sample size. Such numbers
must not be used as Lean upper-bound hypotheses without separate justification.
