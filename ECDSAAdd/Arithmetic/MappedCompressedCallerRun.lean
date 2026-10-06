import ECDSAAdd.Arithmetic.MappedCompressedCallerStates
import ECDSAAdd.Arithmetic.MappedCompressedStageSupport
set_option maxRecDepth 8192
set_option maxHeartbeats 1800000
namespace ECDSAAdd.Arithmetic.MappedCompressed
open Secp256k1
attribute [local irreducible] run measurementCount literalSkywalkSeed literalSkywalkUnseed
  compressedCompactForward compressedCompactReverse fieldTrimSegment skywalkArithmeticClear

/-- Abstract composition prevents semantic reduction of the emitted
million-gate caller while retaining the actual take/drop measurement split. -/
private theorem run_seven_states (a b c d e f g : Program) (P : State → State → Prop)
    (h : ∀ (s s1 s2 s3 s4 s5 s6 s7 : State) (m1 m2 m3 m4 m5 m6 m7 : List Bool),
      run a m1 s=s1 → run b m2 s1=s2 → run c m3 s2=s3 → run d m4 s3=s4 →
      run e m5 s4=s5 → run f m6 s5=s6 → run g m7 s6=s7 → P s s7)
    (s : State) (m : List Bool) : P s (run (a++(b++(c++(d++(e++(f++g)))))) m s) := by
  simp only [run_append]
  apply h s _ _ _ _ _ _ _ _ _ _ _ _ _ _ <;> rfl

/-- Complete actual mapped kernel semantics on the existing strong caller
domain, with arbitrary incoming phase and every full measurement record. -/
theorem kernel_spec (divide : Bool)
    (hn : (skywalkSharedWires base).Nodup) (hlo : CompressedHistoryAbove base)
    (ho : ∀ q ∈ [base 2400,base 2409,base 2410],q ∉ skywalkSharedWires base)
    (hf : MixedTranscriptReplayLayout base (base 2400) (base 2409) (base 2410) (mixedTranscriptTape base))
    (x : Nat) (Y : Fp) (hx0 : 0 < x) (hx : x < p) (s : State) (m : List Bool)
    (hin : SkywalkArithmeticInput base x Y.val s.basis)
    (hg0 : s.basis (base 2409) = false) (hs0 : s.basis (base 2410) = false) :
    DirectSkywalkArithmeticStrong divide base (base 2400) x Y s (run (kernel divide) m s) := by
  let P : State → State → Prop := fun initial out =>
    SkywalkArithmeticInput base x Y.val initial.basis →
    initial.basis (base 2409)=false → initial.basis (base 2410)=false →
    DirectSkywalkArithmeticStrong divide base (base 2400) x Y initial out
  have all := run_seven_states
    (literalSkywalkSeed (literalSkywalkPoolSeed base) p)
    (compressedCompactForward base 0 512) (skywalkArithmeticClear base) (fieldTrimSegment divide)
    (skywalkArithmeticClear base) (compressedCompactReverse base 0 512)
    (literalSkywalkUnseed (literalSkywalkPoolSeed base) p) P
    (by
      intro initial s1 s2 s3 s4 s5 s6 s7 m1 m2 m3 m4 m5 m6 m7 h1 h2 h3 h4 h5 h6 h7 input hg hs
      exact kernel_states divide hn hlo ho hf x Y hx0 hx initial m1 m2 m3 m4 m5 m6 m7
        input hg hs s1 s2 s3 s4 s5 s6 s7 h1 h2 h3 h4 h5 h6 h7) s m
  simpa only [kernel,List.append_assoc] using all hin hg0 hs0

end ECDSAAdd.Arithmetic.MappedCompressed
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.kernel_spec
