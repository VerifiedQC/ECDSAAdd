# Exact fused-half arithmetic and interface

This change proves the arithmetic obligations for investigating a cheaper signed-half cell. It does not change the entrant or claim a new score. Baseline remains Q=1543, T=2010102, Q×T=3101587386.

## Existing interface

The baseline is Layr-Labs/ecdsafail-lean commit 1aee5ea7e90c86b7fac3f97dec40e4fccdaac98c, imported unchanged as lean-leaderboard-dev. `P1Life` in MainP1.lean defines the odd-word representation and `oddFold`. Let p=2q+1 and N=2^256=p+f, f=2^32+977.

| Item | Existing cell | Proposed fused arithmetic |
|---|---|---|
| Target/source words | signed R,Y in [-q-1,q-1] | same |
| Field interpretation | R+1/2 and Y+1/2 modulo p | same |
| Negation control | existing arithmetic negate bit | same; selector wrappers unchanged |
| Raw sum | S=R+Y+1, or R-Y | same; S in [-p,p-1] |
| Output | F=oddFold(S), in [-q-1,q-1] | exactly the same integer F |
| Source/control | preserved | must be preserved by future circuit |
| Work bits and phase | restored for every measurement record | still required; no circuit proof asserted here |
| Subsequent conditional swap/history codec | consumes the same odd-word interface | no representation or record-format change proposed |

The pure definitions in FusedOddHalfMath.lean spell out the existing arithmetic formula explicitly. This module imports protected arithmetic only; it does not yet assert a gate-level equivalence to P1Life.forward.

## Single correction formula

For odd S, F=(S-1)/2. For even S<0, F=(S-1-f)/2+N/2. For even S>=0, F=(S-1+f)/2-N/2.

`fused_eq_fold` proves this identity for every integer S when N is even and N-f=2q+1. `sum_range` and `fold_range` prove the complete input/output ranges, including zero and endpoints. The high-bit adjustment is explicit: discarding a fold carry/borrow is not an allowed implementation.

## Exact cleanup predicate

The original parity is recovered by

    S odd iff -q-1 <= 2F-viewed(negate,Y) <= q-1.

Here viewed(false,Y)=Y and viewed(true,Y)=-Y-1. `parity_recovery` proves the equivalence. It reduces to one biased unsigned comparison (`parity_as_compare`, `compare_bias`):

    A + C < B,
    A = 2*magnitude(F) + [F>=0],
    B = viewed(negate XOR [F<0],Y) + N/2,
    C = N/2-q-1 = 2^31+488.

`compare_range` proves that A+C and B fit unsigned N-bit words. The constant C must remain in the predicate. A low-word implementation must account for a carry of value 2, not merely a Boolean carry, when combining the offset and subtraction.

## Cost decision still open

The current ordinary cell has exact T=256+255+255+251=1017: raw addition, fold, parity comparison, and representation restoration. A syntactic Rust-inspired count of 768T omitted exact boundary/predicate repairs. It is not a certified alternative. The new arithmetic identity isolates the real target: implement the combined correction and the biased comparison more cheaply than the current fold/comparison/restoration sequence, including phase and workspace cleanup.

## Validation

`check_fused_odd.py` exhausts both signs and every legal input pair for seven small moduli, then checks 20,098 secp256k1 boundary/random cases. It checks the exact output, output range, recovered parity, sign relation, and biased comparison, and records failures if the bias is omitted. These tests support development; Lean proofs establish the stated general identities.

Targeted Lean validation uses Lean4.28.0 and warningAsError=true. Only Entrant files are added; protected sources, entry and bounds remain unchanged. Full incumbent evaluation is tracked separately by the task owner.
