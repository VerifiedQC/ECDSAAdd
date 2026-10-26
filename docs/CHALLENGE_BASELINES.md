# Baseline inventory for the controlled point-addition challenge

Source checkpoint: main `ee41923`. This inventory covers the existing programs; it does not certify the new fixed-interface challenge. Tracked by issue #222, section B.

## Definitions and existing evidence

| Concern | Source / declaration | Established result and remaining obligation |
|---|---|---|
| Point type | `Math/BitcoinCurve.lean` | Constants and inputs are curve points, not arbitrary coordinate pairs. A finite point carries curve validity. |
| Canonical encoding | `Framework/Hoare.lean`: `PointReg`, `Holds PointReg Point`, `regValue` | Finite flag and little-endian coordinates using canonical field representatives. Infinity has false flag and zero coordinates. The challenge must fix the physical register, not accept an entrant's encoding. |
| Execution | `Framework/Syntax.lean`, `Semantics.lean` | A program is a fixed list of X/CX/CCX and X-measurement instructions with phase corrections. Execution takes a signed basis state and a measurement tape. |
| Specification | `Framework/Hoare.lean`: `Triple` | Every initial sign and every tape preserve the sign and satisfy the postcondition. This is not a probability or channel-equivalence statement. |
| Abstract layout | `Arithmetic/PointAddLayout.lean`, `ControlledPointPorts.lean` | `Widths` and `wires.Nodup` are explicit premises. The shared legacy layout contains many unused fields; its allocated size is not the actual support count. |
| Skywalk program | `Submissions/Skywalk.lean`: `program`, `correctness` | Calls `controlledPointAdd`. All controls and input/addend points are covered under the layout premises; phase and named work register are restored. |
| Skywalk cost | `Arithmetic/ControlledPointResources.lean`: `controlledPointAdd_finite_resources` | For every finite addend: 2,217,386 Toffoli; 1,557,928 measurements; support cardinality at most 1,899. The qubit bound is not an equality or peak-live claim. |
| Skywalk support | `Arithmetic/CompressedPointDialogResources.lean`: `finite_support`, `sites_subset` | Actual finite program support is contained in declared sites, themselves contained in `dialogUsedWires`. These lemmas support the external-zero proof. |
| ValueWalk program | `Submissions/ValueWalk.lean`: `program`, `correctness` | Calls `valueWalkPointDialogFinite` for finite addends. Same layout premises and full-record signed-basis specification. |
| ValueWalk cost/support | `Arithmetic/ValueWalkPointResources.lean`, `ValueWalkPointWires.lean`: `valueWalkPointDialogFinite_wires` | For every finite addend: 6,286,806 Toffoli; 3,779,274 measurements; exact support cardinality 3,134. |
| Zero addend | Both submissions: `zero_resources` | Empty program and zero counted resources. It must not be used as the resource representative for finite addends. |
| External frame | `Framework/Cost.lean`: `run_preserves_outside` | Every wire outside actual support is unchanged. Together with named-work restoration and the fixed-layout partition, this can establish zero on **every** non-I/O wire. |

Paths in the table are relative to `ECDSAAdd/`.

## What the example adapters still need

1. Instantiate a concrete layout with the protected I/O wires, and prove its width and no-alias conditions. The existing generic submission theorems do not provide that instance.
2. Prove all non-I/O wires are initially/finally zero: named work follows from the Triple; all remaining wires follow from actual support containment and the external-frame theorem. Merely choosing an entrant work list is insufficient.
3. Discharge the contract's exact instruction-legality predicate. The existing public submission wrappers do not carry a whole-program physical-instruction theorem. Correctness and support cardinality cannot substitute for this obligation.
4. Construct the protected Certificate for the **same** program used by the resource theorems, for every addend, including the empty infinity branch.
5. Register both baseline declarations in the challenge audit and independently replay their certificates.

No new Certificate is claimed by this inventory. The proposed adapter numbering is control 0, finite flag 1, x bits 2–257, y bits 258–513; the protected contract author must finalize it before integration.

## Scope and reporting

Report Toffoli and measurements separately. Qubits mean cardinality of the static wire support, including correction wires; they do not mean the largest wire index, the legacy layout size, peak live allocation, or fault-tolerant hardware qubits. A total instruction/phase-correction metric needs its own explicit definition and proof.

The existing baseline results are exact functional results in the fixed-record signed-basis model. Newer quantum-semantics infrastructure elsewhere in the repository does not automatically upgrade these particular baseline theorems into channel certificates. Keep the accepted statement's scope explicit.

The unfinished 935-qubit research route and temporary producer obligations are separate from these two completed baseline program theorems. They must not be used to advertise a certified 935-qubit challenge entrant.
