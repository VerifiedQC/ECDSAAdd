# Wide signed coefficient: mathematical range reduction

This change proves a mathematical transformation, not a circuit that produces
the transformed register. It selects no endpoint route and allocates no hosts.

Let p = 2^256 - (2^32 + 977), and assume |z| < 2^280. For a = |z|, split
lo = a mod 2^256 and hi = floor(a / 2^256). The proved bounds are lo < 2^256
and hi < 2^24. Define t = lo + hi * (2^32 + 977).

`wideMagnitudeFold_decomposition` proves the exact identity a = t + hi*p.
`wideMagnitudeFold_bound` proves t < 2p. The full high contribution is retained;
there is no truncation of a low-word overflow and no probabilistic escape.
This mathematical result does not validate the author's truncated row_reduce
program or remove its failure event.

For nonnegative z, `wideSignedFold z` is t. For negative z, it is zero when
t = 0 and otherwise 2p-t. The zero case prevents the excluded value 2p.
The result is a natural number strictly below 2p and has the same value as z
in ZMod p. `wideSignedFold_signed` proves the same facts for either +v or -v
from the explicit magnitude bound on v.

`fold32PlacedReduce_wide_input` connects this mathematical value to the
existing physical bounded reducer, provided the caller has ALREADY encoded
wideSignedFold z in its mapped data register. It discharges the reducer's
range premise and proves canonical output congruent to z, pool cleanup,
comparison behavior, control preservation and phase preservation. It does
not produce or assume proof of a physical folding implementation: the
encoding equality remains an explicit precondition.

Outstanding obligations include deriving the magnitude bound from the actual
endpoint state, obtaining the magnitude/sign representation, implementing the
wide fold with full-state/phase and overflow accounting, producing the stated
encoding, preserving enough information for reversible cleanup, assigning
hosts/ownership, and connecting the endpoint. The existing exact bounded
reducer and its inverse do not discharge these obligations. No numerical
failure bound, new failure event, or complete 935-wire resource bound is
claimed. task #37 remains incomplete.
