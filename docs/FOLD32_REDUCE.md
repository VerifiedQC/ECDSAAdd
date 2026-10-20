# Exact bounded reduction with retained comparison

This component is not connected to an endpoint route. It gives canonical
reduction for a bounded 257-bit word, retaining the comparison information
needed to distinguish inputs with the same remainder. It is not a complete
935-wire implementation or a placement into the author arena.

The modulus `fold32Prime` is exactly 2^256 - 2^32 - 977. Kernel proofs connect
the existing odd-bit-literal adder to the concrete constants 1, p and 2^257-p.
The reference layout uses control 0, data 1–257, shared pool 258–289, and
comparison flag 290. Control must start true, the pool and flag zero, and
the input value x must satisfy x < 2p.

The actual program subtracts p modulo 2^257, copies its actual high bit
into the flag, and restores p controlled by that flag. The second adder
is obtained by an injective wire permutation exchanging controls 0 and 290
while fixing every data and pool address. The comparison is derived from
the actual first execution, rather than supplied as a correctness premise.

For every measurement tape, `fold32Reduce_contract` proves output x mod p,
a clean 32-wire pool, flag [x < p], and unchanged phase. Separate theorems
establish unchanged original control, a zero high data bit, ordinary gate
legality, support in range 291, and preservation of all outside addresses.
`fold32Reduce_reconstruct` proves x = output + (if flag then 0 else p).
This is an information-preservation statement, not an inverse gate program.

The comparison flag remains live and is not part of the cleared pool.
A caller must retain it or prove a valid uncomputation strategy; it cannot
simply be erased. Inputs outside [0,2p) and initially dirty auxiliary bits
are not covered. Wider signed coefficient normalization, repeated reduction,
physical relocation, input range derivation from the actual endpoint,
comparison cleanup, inverse implementation, and complete resource accounting
remain separate obligations. No new failure events or numerical failure
bounds are asserted here.
