# Physical validity of the windowed arithmetic step

`WindowRoutedPhysical` and `WindowStepPhysical` certify the actual gate lists
from `WindowRouted` and `WindowStep`, in both directions. Inverse measurements
remain fresh measurements; these results do not replace measured programs by
reversed lists.

- `RoutedBankLayout.physical`: `Valid` implies `GatePhysical` for `program` and
  `inverse`. No state, tape, clean-work, or arithmetic-success premise is needed.
- `inverse_wires`: both directions have exactly the same physical support.
- `support`: the existing three arena membership conditions for routed arithmetic
  imply arena support in both directions.
- `counter_both_physical`: address uniqueness implies ordinary-gate legality for
  the counter update and its implemented inverse; no counter value assumption.
- `windowStep_physical`: combine `Valid`, `after.Planned`, and counter uniqueness.
  Resizing legality comes from the allocator's proved `ProperProgram` result.
- `windowStep_support`: combine routed support, `after.Planned`, counter address
  membership, and the existing counter length conditions. This includes the
  resize workspace and inverse counter workspace.

Apply `arena_program_qubits` to either returned support inclusion to obtain a
local bound of 935 physical addresses. This is conditional on actual address
membership in the arena, not a proof that the entire walk, history restoration,
or point-add implementation fits. The caller must still establish its concrete
layout, allocation, record-reference legality, and successful execution facts.
