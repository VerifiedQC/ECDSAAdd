import ECDSAAdd.Arithmetic.PointDialogLayout
import ECDSAAdd.Arithmetic.MeasuredStreamedResources

namespace ECDSAAdd.Arithmetic

/-- Concrete candidate binding in the existing point-layout pool. This is
not the selected pointDialogSquare until its full functional proof passes. -/
def pointMeasuredSquareCandidate (L : ControlledPointLayout) : Program :=
  L.dialogStreamedSquareWide.measuredProgram L.core.generic

theorem pointMeasuredSquareCandidate_counts (L : ControlledPointLayout) (hw : L.Widths) :
    toffoliCount (pointMeasuredSquareCandidate L)=99902 ∧
    measurementCount (pointMeasuredSquareCandidate L)=99382 :=
  L.dialogStreamedSquareWide.measuredProgram_counts (L.dialogStreamedSquareWide_widths hw) L.core.generic

end ECDSAAdd.Arithmetic
