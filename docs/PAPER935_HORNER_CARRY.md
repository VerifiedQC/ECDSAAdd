# Author Horner copy and quantum carry sweeps

Source: `uncompute-paper` commit `64b5a13aa249f1360846657392e6c66817b26d0f`.
Paths below are relative to `tasks/modinv-point-add/circuits/`.

This is the first circuit block of the fused endpoint implementation. It does
not yet implement the lazy modular adder or establish its successful-input
conditions. In particular, a cleanup identity is not forward arithmetic
correctness for a controlled modular addition.

| Lean definition | Author source | Meaning |
| --- | --- | --- |
| `hornerCopy` | `divsteps/engine.py:3026–3028`, inverse `3033–3036` | Increasing-order CCX fan for the first forward / last inverse Horner round |
| `hornerCarryForward` | `_shared/luo_core.py:882–894` | Quantum/quantum carry cell; both operands are dressed by the incoming carry |
| `hornerCarryBackward` | `_shared/luo_core.py:897–910` | Optional measured AND release with correction, optional controlled sum, then operand undressing |
| `hornerCarrySweep` | `_shared/luo_core.py:882–894` | Increasing forward sweep |
| `hornerCarryUnsweep` | `_shared/luo_core.py:897–910` | Descending cleanup, retaining only the highest carry when requested |
| `hornerCarryTop` | `_shared/luo_core.py:883–894` | Last carry address, or incoming carry for an empty block |
| `HornerCarryCell.advance`, `hornerCarryAdvance` | mathematical model of `_shared/luo_core.py:882–894` | Pure carry and operand-dressing recurrence, without running a program |
| `HornerCarrySweepReady`, `HornerCarryEraseReady` | preconditions for those sweeps | Cell distinctness and clean carry scratch on the pure recurrence; erase readiness additionally reserves the external control |

## Proved

- The CCX fan updates the output by XOR with the selected multiplicand, keeps
  the phase and all other bits, and restores the complete state when repeated
  in the same increasing order. On zero target its value is the selected input.
- The quantum carry cell has an exact whole-state forward formula and an exact
  forward/backward formula, for both values of the sum and retained-carry flags.
  Measured release restores the phase for every tape.
- A forward sweep equals the pure carry recurrence and preserves phase.
- A release-only sweep with no retained top carry restores the complete original
  state. Forward and backward tapes may be chosen independently. The emitted
  backward program performs measurements and corrections, rather than reversing
  a list containing measurements.
- Exact counts: a forward sweep on n cells uses n Toffoli gates and no measurements;
  backward uses n Toffoli gates when sums are enabled, zero otherwise, and
  n measurements minus one when a nonempty block retains the highest carry.
  The empty-block subtraction uses natural subtraction and therefore remains zero.

## Still to prove / integrate

| Obligation | Status |
| --- | --- |
| Derive recursive readiness from concrete arena placement and entry scratch conditions | Pending |
| Whole-block arithmetic with controlled sums and retained top carry | Pending; only the individual cell formula is proved |
| Keeper placement, carry recomputation and keeper erasure between blocks | Pending |
| Truncated comparator, windowed correction, and actual `gc_lazy_cma` | Pending; no replacement with an ordinary controlled adder |
| Correspondence with `fusedLazyAdd` / `FusedAddGood` and their sufficiency | Pending |
| Complete halve-Horner / `row_mul`, s2 and s6 operand binding | Pending |
| Delayed unpark, measured endpoint lifecycle, concrete E contract and whole-machine 935 bound | Pending |

These modules keep all geometry and scratch hypotheses explicit. They neither
assert a physical 935 placement nor introduce numerical failure probabilities.
