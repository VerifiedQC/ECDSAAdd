# Source-gap composition (task #58)

This increment connects the actual source gaps from PR218 to the producer
interfaces and the original-input failure events. It does not supply the
unproved producer certificates or assert whole-machine phase cancellation.

Planned proof interfaces:

- A forward certificate for the actual s2 layout provides the pre-sign output
  value and scratch cleanup. Combine those with the actual K2 cleanup, row
  frame, and demolition to prove `HmrUnparkBoundary`, then `unpark.pre` under
  the producer's input rule and explicit record condition.
- A forward certificate for the actual s6 layout plus the proved full-basis
  K6 roundtrip gives `HmrEraseBoundary` and `erase.pre` under the producer's
  input rule and explicit record condition.
- At a reached call after program P, `hmr_pre_of_not_bad` supplies SignGood and
  the forward precondition from original-label good input and physical input
  binding. The forward output supplies the beforeSign encoding. The negate
  binding remains a separate premise at the actual post-forward state. Apply
  `s2SourceSign_of_good` / `s6SourceSign_of_good` with the advanced cursor.
- Evaluate actual K6 phase through sign, recorded corrections and inverse
  sign. Preserve the recorded-Z contribution on the actual signed state. Do
  not assume that contribution is zero.

All new theorems will be in the strict root and contain no admissions. A
producer specification remains an explicit parameter until its actual
implementation proof is available. Tasks #58/#59/#60 remain incomplete.
