# Physical row-window resizing

`RowWindowResize`, `RowAllocation`, `WindowAllocator`, `WindowRows`, and
`WindowBank` compile public signed-row width changes into actual gates in the
935-address arena.

Growth borrows the least free addresses and copies the sign into each new high
bit. Shrinkage applies the inverse sign copies before returning the high
addresses. `shrinkRow_values` derives that those addresses become zero from
the integer fitting the smaller signed payload window. No allocator operation
resets a quantum wire.

`Arena.borrowMany_capacity` characterizes successful batch allocation by
`A.live.card + n ≤ 935`. `planRowResize` records both the emitted program and
the new physical view. Its correctness theorem proves the requested width,
value preservation, ownership, and cleanliness of every free arena address.
Its locality theorem preserves every other initially live wire.

`planWindowRows` composes these transitions for a finite bank, checking initial
and final disjoint ownership as public compiler conditions. `WindowBank`
specializes it to f, g, fv, gv and the existing `RowWindow` schedule interface.
The bank theorem preserves all four encoded integers and every other live
register. The emitted stream has no Toffoli or measurement gates, is proper,
and has support contained in the same 935 addresses. Its reverse is proved an
exact full-state inverse with independent measurement tapes.

These results do not yet prove that every step of the 533-entry public table
compiles, or integrate the arithmetic, counter, history, and freeze circuits
into a complete finite walk. Compiler success and numeric target-window fit
remain explicit hypotheses. In particular the bounded support of resizing
alone is not the global point-addition resource claim or a numerical failure
probability bound.
