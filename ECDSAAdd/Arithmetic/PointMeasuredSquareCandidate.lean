import ECDSAAdd.Arithmetic.PointDialogLayout
import ECDSAAdd.Arithmetic.MeasuredStreamedResources
import ECDSAAdd.Arithmetic.MeasuredStreamedSupport

set_option maxHeartbeats 3000000

namespace ECDSAAdd.Arithmetic

/-- Concrete candidate binding in the existing point-layout pool. This is
not the selected pointDialogSquare until its full functional proof passes. -/
def pointMeasuredSquareCandidate (L : ControlledPointLayout) : Program :=
  L.dialogStreamedSquareWide.measuredProgram L.core.generic

theorem pointMeasuredSquareCandidate_counts (L : ControlledPointLayout) (hw : L.Widths) :
    toffoliCount (pointMeasuredSquareCandidate L)=99902 ∧
    measurementCount (pointMeasuredSquareCandidate L)=99382 :=
  L.dialogStreamedSquareWide.measuredProgram_counts (L.dialogStreamedSquareWide_widths hw) L.core.generic

/-- This allocates the resident point/control/classification registers and
the complete stage workspace in at most 1,297 distinct sites. It is a safe
peak-live ceiling, not a claim about the minimum or exact live peak. -/
theorem pointMeasuredSquareCandidate_stage_support (L : ControlledPointLayout) (hw : L.Widths)
    (hn : L.wires.Nodup) :
    wires (pointMeasuredSquareCandidate L)⊆L.streamedSquareStageSites.toFinset := by
  have support := L.dialogStreamedSquareWide.measuredProgram_support
    (L.dialogStreamedSquareWide_widths hw) (L.dialogStreamedSquareWide_nodup hw hn) L.core.generic
  rw [L.streamedSquare_wires_eq hw] at support
  have small : L.dialogPool.take 775⊆L.dialogPool.take 776 := by
    intro q hq
    have e : (L.dialogPool.take 776).take 775=L.dialogPool.take 775 := by
      rw [List.take_take,Nat.min_eq_left (by omega)]
    rw [←e] at hq
    exact List.mem_of_mem_take hq
  intro q hq
  have h := support hq
  simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at h
  simp only [ControlledPointLayout.streamedSquareStageSites,PointAddLayout.pointWires,
    ControlledPointLayout.inPlaceFlags,List.mem_toFinset,List.mem_append,List.mem_cons,
    List.not_mem_nil,or_false]
  have hp : q∈L.dialogPool.take 775 → q∈L.dialogPool.take 776 := fun h => small h
  tauto

theorem pointMeasuredSquareCandidate_stage_sites (L : ControlledPointLayout) (hw : L.Widths)
    (hn : L.wires.Nodup) :
    L.streamedSquareStageSites.Nodup ∧ L.streamedSquareStageSites.length=1297 ∧
      qubitCount (pointMeasuredSquareCandidate L)≤1297 := by
  have sites := pointStreamedSquare_stage_sites L hw hn
  refine ⟨sites.1,sites.2.1,?_⟩
  rw [qubitCount]
  calc
    _ ≤ L.streamedSquareStageSites.toFinset.card :=
      Finset.card_le_card (pointMeasuredSquareCandidate_stage_support L hw hn)
    _ = 1297 := by rw [List.toFinset_card_of_nodup sites.1,sites.2.1]

end ECDSAAdd.Arithmetic
