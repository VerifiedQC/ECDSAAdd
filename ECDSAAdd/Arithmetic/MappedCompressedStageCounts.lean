import ECDSAAdd.Arithmetic.MappedCompressedStageSupport
import ECDSAAdd.Arithmetic.CompressedCompactRestore

set_option maxRecDepth 8192
set_option maxHeartbeats 1200000
set_option linter.unusedSimpArgs false
namespace ECDSAAdd.Arithmetic.MappedCompressed
open Secp256k1
attribute [local irreducible] logicalCell dblInPlace halfInPlace copyRegister
attribute [local irreducible] compressedHistoryEncode compressedHistoryDecode
attribute [local irreducible] compactSkywalkForward compressedCompactForward compressedCompactReverse
attribute [local irreducible] toffoliCount measurementCount

private theorem renameT (f : Wire → Wire) (P : Program) :
    toffoliCount (renameProgram f P)=toffoliCount P := (renameProgram_counts f P).1
private theorem renameM (f : Wire → Wire) (P : Program) :
    measurementCount (renameProgram f P)=measurementCount P := (renameProgram_counts f P).2

private theorem swap_nd :
    (2410::(balancedSharedPorts id 2409).r++(balancedSharedPorts id 2409).y).Nodup := by
  rw [balancedSharedPorts_r,balancedSharedPorts_y]
  simp only [wireBlock,List.map_id]
  apply List.nodup_cons.mpr
  constructor
  · intro h
    rcases List.mem_append.mp h with h|h
    all_goals have bound := List.mem_range'_1.mp h; omega
  · apply List.nodup_append'.mpr
    refine ⟨List.nodup_range',List.nodup_range',List.disjoint_left.mpr ?_⟩
    intro q hr hy
    simp only [List.mem_range'_1] at hr hy
    omega

theorem logicalCell_counts (divide : Bool) (i : Nat) :
    toffoliCount (logicalCell divide i)=1281 ∧ measurementCount (logicalCell divide i)=1025 := by
  cases divide <;> simp only [logicalCell,Bool.false_eq_true,if_false,if_true]
  · exact OffsetBorrowedInverseCanonical.cell_counts id 2400 i (1028+i) 2409 2410
      (mixedTranscriptUnitTrace.getD i (false,false)).1
      (mixedTranscriptUnitTrace.getD i (false,false)).2 swap_nd
  · exact OffsetBorrowedCanonical.cell_counts id 2400 i (1028+i) 2409 2410
      (mixedTranscriptUnitTrace.getD i (false,false)).1
      (mixedTranscriptUnitTrace.getD i (false,false)).2 swap_nd

theorem mappedGroup_counts (divide : Bool) (j : Nat) :
    toffoliCount (mappedGroup divide j)=3850 ∧ measurementCount (mappedGroup divide j)=3076 := by
  have codec := compressedHistory_counts (placed j) (3*j)
  have a := logicalCell_counts divide (3*j)
  have b := logicalCell_counts divide (3*j+1)
  have c := logicalCell_counts divide (3*j+2)
  cases divide <;> simp only [mappedGroup,Bool.false_eq_true,if_false,if_true,
    toffoliCount_append,measurementCount_append,renameT,renameM,
    a.1,a.2,b.1,b.2,c.1,c.2,codec.1,codec.2.1,codec.2.2.1,codec.2.2.2]
  all_goals norm_num

theorem mappedGroups_counts (divide : Bool) (j n : Nat) :
    toffoliCount (mappedGroups divide j n)=3850*n ∧
    measurementCount (mappedGroups divide j n)=3076*n := by
  induction n generalizing j with
  | zero => simp [mappedGroups,toffoliCount,measurementCount]
  | succ n ih =>
    have head := mappedGroup_counts divide j
    have rest := ih (j+1)
    cases divide <;> simp only [mappedGroups,Bool.false_eq_true,if_false,if_true,
      toffoliCount_append,measurementCount_append,head.1,head.2,rest.1,rest.2]
    all_goals constructor <;> omega

theorem mappedReplay_counts (divide : Bool) :
    toffoliCount (mappedReplay divide)=657062 ∧ measurementCount (mappedReplay divide)=524970 := by
  have groups := mappedGroups_counts divide 0 170
  have a := logicalCell_counts divide 510
  have b := logicalCell_counts divide 511
  cases divide <;> simp only [mappedReplay,Bool.false_eq_true,if_false,if_true,
    toffoliCount_append,measurementCount_append,renameT,renameM,groups.1,groups.2,a.1,a.2,b.1,b.2]
  all_goals norm_num

theorem converterPair_counts (canonical : Bool) :
    toffoliCount (converterPair canonical)=1530 ∧ measurementCount (converterPair canonical)=1530 := by
  have target := BalancedConvert.counts (balancedSharedTargetConvert id) (balancedSharedTargetConvert_widths id)
  have source := BalancedConvert.counts (balancedSharedSourceConvert id) (balancedSharedSourceConvert_widths id)
  cases canonical <;> simp only [converterPair,Bool.false_eq_true,if_false,if_true,
    toffoliCount_append,measurementCount_append,target.1,target.2.1,target.2.2.1,target.2.2.2,
    source.1,source.2.1,source.2.2.1,source.2.2.2]
  all_goals norm_num

private theorem endpointCopy_counts :
    toffoliCount (copyRegister none (skywalkSharedField id).z (skywalkSharedField id).a)=0 ∧
    measurementCount (copyRegister none (skywalkSharedField id).z (skywalkSharedField id).a)=0 := by
  have len : (skywalkSharedField id).z.length=(skywalkSharedField id).a.length := by
    rw [skywalkShared_field_z]
    change (wireBlock id 2056 257).length=(wireBlock id 770 257).length
    simp [wireBlock]
  have copy := copyRegister_counts none (skywalkSharedField id).z (skywalkSharedField id).a len
  simpa only [Option.isSome_none,Bool.false_eq_true,if_false] using copy

theorem fieldSegment_counts (divide : Bool) :
    toffoliCount (fieldSegment divide)=(if divide then 660633 else 660634) ∧
    measurementCount (fieldSegment divide)=(if divide then 528541 else 528542) := by
  have unary := modUnary_counts (borrowedSkywalkUnary id) 256 p (borrowedSkywalkUnary_widths id) (by omega)
  have center := converterPair_counts false
  have canonical := converterPair_counts true
  have replay := mappedReplay_counts divide
  cases divide <;> simp only [fieldSegment,Bool.false_eq_true,if_false,if_true,
    toffoliCount_append,measurementCount_append,renameT,renameM,endpointCopy_counts.1,
    endpointCopy_counts.2,unary.1,unary.2.1,unary.2.2.1,unary.2.2.2,
    center.1,center.2,canonical.1,canonical.2,replay.1,replay.2]
  all_goals norm_num

theorem integer512_counts :
    toffoliCount (compressedCompactForward base 0 512)=198142 ∧
    measurementCount (compressedCompactForward base 0 512)=98858 ∧
    toffoliCount (compressedCompactReverse base 0 512)=198312 ∧
    measurementCount (compressedCompactReverse base 0 512)=98688 := by
  have recurrence := compactSkywalkForward_counts base base_pool_nodup 0 512 (by omega)
  have exactCharges := compactSkywalkForward_512_counts base base_pool_nodup
  have ht : compactSkywalkForwardT 0 512=197632 := recurrence.1.symm.trans exactCharges.1
  have hm : compactSkywalkForwardM 0 512=98688 := recurrence.2.symm.trans exactCharges.2
  have packets : compressedPackCount 0 512=170 := by rfl
  have forward := compressedCompactForward_counts base base_pool_nodup 0 512 (by omega)
  have reverse := compressedCompactReverse_counts base base_pool_nodup 0 512 (by omega)
  simpa only [ht,hm,packets,Nat.reduceMul,Nat.reduceAdd] using
    And.intro forward.1 (And.intro forward.2 reverse)

theorem kernel_counts (divide : Bool) :
    toffoliCount (kernel divide)=(if divide then 1057601 else 1057602) ∧
    measurementCount (kernel divide)=(if divide then 726601 else 726602) := by
  have seed := literalSkywalkPoolSeed_counts base p
  have integer := integer512_counts
  have clear := skywalkTerminalClear_counts (base 511) (base 512) (base 770)
  have field := fieldSegment_counts divide
  cases divide <;> simp only [kernel,skywalkArithmeticClear,Bool.false_eq_true,if_false,if_true,
    toffoliCount_append,measurementCount_append,seed.1,seed.2.1,seed.2.2.1,seed.2.2.2,
    integer.1,integer.2.1,integer.2.2.1,integer.2.2.2,clear.1,clear.2,field.1,field.2]
  all_goals norm_num

/-- Exact emitted gate and record counts for both candidate stages. The
separate support certificate includes resident ports; caller semantics are
transported separately across the public placement changes. -/
theorem controlled_counts (divide : Bool) :
    toffoliCount (controlled divide)=(if divide then 1058113 else 1058114) ∧
    measurementCount (controlled divide)=(if divide then 727111 else 727112) := by
  have width : (wireBlock base 0 255).length+1=(wireBlock base 770 256).length := by
    simp [wireBlock]
  have wrapped := directZeroControlled_counts (wireBlock base 770 256) (wireBlock base 0 255)
    (base 2313) (base 2411) (kernel divide) width
  have core := kernel_counts divide
  simp only [controlled] at ⊢
  rw [wrapped.1,wrapped.2,core.1,core.2,wireBlock_length]
  cases divide <;> norm_num

end ECDSAAdd.Arithmetic.MappedCompressed
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.mappedReplay_counts
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.kernel_counts
#print axioms ECDSAAdd.Arithmetic.MappedCompressed.controlled_counts
