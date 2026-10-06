import ECDSAAdd.Arithmetic.EntryMappedFieldSegmentTrimTerminal
import ECDSAAdd.Arithmetic.EntryMappedFieldSegmentTrimInverse

set_option maxRecDepth 8192
set_option maxHeartbeats 1500000
set_option linter.unusedSimpArgs false
namespace ECDSAAdd.Arithmetic.MappedCompressed
open Secp256k1 OffsetBorrowedCanonical CompressedFieldSupport CompressedAllocation
attribute [local irreducible] run wires toffoliCount measurementCount

/-- Both exact entry cancellations retain the terminal omission and original
field contract. Native integer recording remains 512 rounds. -/
def selectedFieldSegment (divide : Bool) : Program :=
  if divide then EntryMappedFieldSegmentTrim.terminalFieldSegment true
  else EntryMappedFieldSegmentTrim.terminalFieldSegment false

theorem selectedFieldSegment_support (divide : Bool) :
    wires (selectedFieldSegment divide) ⊆ slots.toFinset := by
  cases divide
  · simpa only [selectedFieldSegment, Bool.false_eq_true, if_false] using
      EntryMappedFieldSegmentTrim.inverse_entry_support
  · simpa only [selectedFieldSegment, if_true] using
      EntryMappedFieldSegmentTrim.terminalFieldSegment_support true

theorem selectedFieldSegment_counts (divide : Bool) :
    toffoliCount (selectedFieldSegment divide)=657817 ∧
    measurementCount (selectedFieldSegment divide)=525981 := by
  cases divide
  · simpa only [selectedFieldSegment, Bool.false_eq_true, if_false] using
      EntryMappedFieldSegmentTrim.inverse_entry_resources
  · simpa only [selectedFieldSegment, if_true] using
      EntryMappedFieldSegmentTrim.terminalFieldSegment_counts true

/-- Same hypotheses and conclusion as the current complete field contract.
Every record stream and incoming phase remains quantified. -/
theorem selectedFieldSegment_spec (divide : Bool)
    (hn : (skywalkSharedWires base).Nodup) (hlo : CompressedHistoryAbove base)
    (ho : ∀ q ∈ [base 2400,base 2409,base 2410],q ∉ skywalkSharedWires base)
    (hp : ∀ q ∈ [base 2400,base 2409,base 2410],q ∉ skywalkPoolWires base)
    (hf : MixedTranscriptReplayLayout base (base 2400) (base 2409) (base 2410) (mixedTranscriptTape base))
    (origin : BasisState) (hg0 : origin (base 2409)=false) (hs0 : origin (base 2410)=false)
    (env : Env base origin) (legal : RawGroupLegal base 170 origin)
    (hw : regValue (skywalkSharedField base).work origin=0)
    (hu : regValue (skywalkSharedUnused base) origin=0)
    (hr : origin (base 2312)=false) (hy : origin (base 1026)=false)
    (x : Nat) (hx0 : 0<x) (hx : x<p)
    (trace : skywalkTapeControls origin (skywalkSharedTape base)=
      SkywalkTrace.trace 512 (SkywalkRails.encode false false (x:Int) (p:Int)))
    (Y : Fp) (s : State) (m : List Bool) (input : EncodedCanonicalFrame origin Y 0 s) :
    let out := run (selectedFieldSegment divide) m s
    out.phase=s.phase ∧ EncodedCanonicalFrame origin (fieldResult divide origin x Y) 0 out := by
  cases divide
  · simpa only [selectedFieldSegment, Bool.false_eq_true, if_false] using
      EntryMappedFieldSegmentTrim.terminalFieldTrimSegment_inverse_spec hn hlo ho hp hf origin hg0 hs0 env legal
        hw hu hr hy x hx0 hx trace Y s m input
  · simpa only [selectedFieldSegment, if_true] using
      EntryMappedFieldSegmentTrim.terminalFieldTrimSegment_forward_spec
        hn hlo ho hp hf origin hg0 hs0 env legal hw hu hr hy x hx0 hx trace Y s m input

end ECDSAAdd.Arithmetic.MappedCompressed
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.selectedFieldSegment_support
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.selectedFieldSegment_counts
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.selectedFieldSegment_spec
