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
exit/closer resource certificates are not exported by this change. In
particular, the old 907/28 and 620/315 resource figures must not be assigned to
this new instance or to the source circuit.
