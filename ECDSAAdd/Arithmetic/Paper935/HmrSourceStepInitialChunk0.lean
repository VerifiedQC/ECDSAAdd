import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.FusedRepackAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl1
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0CompleteMoves : List (Wire × Wire) := [(778,255)]
def s2Step0CompleteOut : WindowBank := s2Step0FrontOut.repacked s2Step0CompleteMoves
def s2Step0CompleteLog : HmrEarlyStepLog := ⟨s2Step0FrontLog,s2Step0CompleteMoves,s2FirstEarlyControlLog⟩
def s2Step0CompleteMoveArena : Arena := ⟨s2Step0ExitGvAfter.live∪{255},Finset.union_subset s2Step0ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step0Complete_repack : s2Step0ExitGvAfter.checkRepack s2Step0CompleteMoves=some s2FirstEarlyControlArena := by
  have owned : 778∈s2Step0ExitGvAfter.live := by norm_num [s2Step0ExitGvAfter,arenaWires]
  have reserve : s2Step0ExitGvAfter.reserve {255}=some s2Step0CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step0ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step0CompleteMoveArena.retireSet {778}=s2FirstEarlyControlArena := by
    unfold Arena.retireSet s2FirstEarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step0CompleteMoveArena,s2Step0ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step0CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step0CompleteMoveArena.retireSet {778}).checkRepack []=some s2FirstEarlyControlArena
  rw [retired]
  rfl
theorem s2Step0Complete_owned : (s2Step0CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2FirstEarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0Complete_apart : List.Disjoint (s2Step0CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [780, 781] := by
  have nd : ((s2Step0CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[780, 781]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step0CompletePlan : HmrEarlyStepPlan := ⟨s2Step0FrontPlan,s2FirstEarlyControlArena,s2FirstEarlyControlPlan,s2Step0CompleteMoves⟩
theorem s2Step0Complete_explicit_checked : compileHmrEarlyStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [772, 773, 774, 775, 776, 777] [] 1 s2Step0CompleteLog=some s2Step0CompletePlan := by
  let Q := s2FirstEarlyControlPlan
  have hq := s2FirstEarlyControl_plan_checked
  have fv1 : s2Step0CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step0CompleteOut.fv.payload[2]?.getD s2Step0CompleteOut.fv.sign=770 := by decide +kernel
  have fv3 : s2Step0CompleteOut.fv.payload[3]?.getD s2Step0CompleteOut.fv.sign=770 := by decide +kernel
  have fv4 : s2Step0CompleteOut.fv.payload[4]?.getD s2Step0CompleteOut.fv.sign=770 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step0EntryFBefore s2FirstEarlyControlArena s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [772, 773, 774, 775, 776, 777] [] 1 s2Step0CompleteLog s2Step0FrontPlan Q
    s2Step0Front_checked s2Step0Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step0Complete_owned s2Step0Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] [] 777 780 s2Step0CompleteOut.fv.second (s2Step0CompleteOut.fv.payload[2]?.getD s2Step0CompleteOut.fv.sign) (s2Step0CompleteOut.fv.payload[3]?.getD s2Step0CompleteOut.fv.sign) (s2Step0CompleteOut.fv.payload[4]?.getD s2Step0CompleteOut.fv.sign) 781 1 s2FirstEarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step0Complete_checked : (compileHmrEarlyStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [772, 773, 774, 775, 776, 777] [] 1 s2Step0CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step0Complete_explicit_checked]
  rfl
def s2Step1CompleteMoves : List (Wire × Wire) := []
def s2Step1CompleteOut : WindowBank := s2Step1FrontOut.repacked s2Step1CompleteMoves
def s2Step1CompleteLog : HmrEarlyStepLog := ⟨s2Step1FrontLog,s2Step1CompleteMoves,s2Step1EarlyControlLog⟩
theorem s2Step1Complete_repack : s2Step1ExitGvAfter.checkRepack s2Step1CompleteMoves=some s2Step1EarlyControlArena := by rfl
theorem s2Step1Complete_owned : (s2Step1CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step1EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Complete_apart : List.Disjoint (s2Step1CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 784, 795] := by
  have nd : ((s2Step1CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 784, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step1CompletePlan : HmrEarlyStepPlan := ⟨s2Step1FrontPlan,s2Step1EarlyControlArena,s2Step1EarlyControlPlan,s2Step1CompleteMoves⟩
theorem s2Step1Complete_explicit_checked : compileHmrEarlyStepLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step1CompleteLog=some s2Step1CompletePlan := by
  let Q := s2Step1EarlyControlPlan
  have hq := s2Step1EarlyControl_plan_checked
  have fv1 : s2Step1CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step1CompleteOut.fv.payload[2]?.getD s2Step1CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step1CompleteOut.fv.payload[3]?.getD s2Step1CompleteOut.fv.sign=770 := by decide +kernel
  have fv4 : s2Step1CompleteOut.fv.payload[4]?.getD s2Step1CompleteOut.fv.sign=770 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step1EntryFBefore s2Step1EarlyControlArena s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step1CompleteLog s2Step1FrontPlan Q
    s2Step1Front_checked s2Step1Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step1Complete_owned s2Step1Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step1EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 778 s2Step1CompleteOut.fv.second (s2Step1CompleteOut.fv.payload[2]?.getD s2Step1CompleteOut.fv.sign) (s2Step1CompleteOut.fv.payload[3]?.getD s2Step1CompleteOut.fv.sign) (s2Step1CompleteOut.fv.payload[4]?.getD s2Step1CompleteOut.fv.sign) 784 1 s2Step1EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step1Complete_checked : (compileHmrEarlyStepLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step1CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step1Complete_explicit_checked]
  rfl
def s2Step2CompleteMoves : List (Wire × Wire) := []
def s2Step2CompleteOut : WindowBank := s2Step2FrontOut.repacked s2Step2CompleteMoves
def s2Step2CompleteLog : HmrEarlyStepLog := ⟨s2Step2FrontLog,s2Step2CompleteMoves,s2Step2EarlyControlLog⟩
theorem s2Step2Complete_repack : s2Step2ExitGvAfter.checkRepack s2Step2CompleteMoves=some s2Step2EarlyControlArena := by rfl
theorem s2Step2Complete_owned : (s2Step2CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step2EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Complete_apart : List.Disjoint (s2Step2CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 782, 795] := by
  have nd : ((s2Step2CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 782, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step2CompletePlan : HmrEarlyStepPlan := ⟨s2Step2FrontPlan,s2Step2EarlyControlArena,s2Step2EarlyControlPlan,s2Step2CompleteMoves⟩
theorem s2Step2Complete_explicit_checked : compileHmrEarlyStepLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step2CompleteLog=some s2Step2CompletePlan := by
  let Q := s2Step2EarlyControlPlan
  have hq := s2Step2EarlyControl_plan_checked
  have fv1 : s2Step2CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step2CompleteOut.fv.payload[2]?.getD s2Step2CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step2CompleteOut.fv.payload[3]?.getD s2Step2CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step2CompleteOut.fv.payload[4]?.getD s2Step2CompleteOut.fv.sign=770 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step2EntryFBefore s2Step2EarlyControlArena s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step2CompleteLog s2Step2FrontPlan Q
    s2Step2Front_checked s2Step2Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step2Complete_owned s2Step2Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step2EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 786 s2Step2CompleteOut.fv.second (s2Step2CompleteOut.fv.payload[2]?.getD s2Step2CompleteOut.fv.sign) (s2Step2CompleteOut.fv.payload[3]?.getD s2Step2CompleteOut.fv.sign) (s2Step2CompleteOut.fv.payload[4]?.getD s2Step2CompleteOut.fv.sign) 782 1 s2Step2EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step2Complete_checked : (compileHmrEarlyStepLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step2CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step2Complete_explicit_checked]
  rfl
def s2Step3CompleteMoves : List (Wire × Wire) := []
def s2Step3CompleteOut : WindowBank := s2Step3FrontOut.repacked s2Step3CompleteMoves
def s2Step3CompleteLog : HmrEarlyStepLog := ⟨s2Step3FrontLog,s2Step3CompleteMoves,s2Step3EarlyControlLog⟩
theorem s2Step3Complete_repack : s2Step3ExitGvAfter.checkRepack s2Step3CompleteMoves=some s2Step3EarlyControlArena := by rfl
theorem s2Step3Complete_owned : (s2Step3CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step3EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Complete_apart : List.Disjoint (s2Step3CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [788, 783, 795] := by
  have nd : ((s2Step3CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[788, 783, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step3CompletePlan : HmrEarlyStepPlan := ⟨s2Step3FrontPlan,s2Step3EarlyControlArena,s2Step3EarlyControlPlan,s2Step3CompleteMoves⟩
theorem s2Step3Complete_explicit_checked : compileHmrEarlyStepLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step3CompleteLog=some s2Step3CompletePlan := by
  let Q := s2Step3EarlyControlPlan
  have hq := s2Step3EarlyControl_plan_checked
  have fv1 : s2Step3CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step3CompleteOut.fv.payload[2]?.getD s2Step3CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step3CompleteOut.fv.payload[3]?.getD s2Step3CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step3CompleteOut.fv.payload[4]?.getD s2Step3CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step3EntryFBefore s2Step3EarlyControlArena s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step3CompleteLog s2Step3FrontPlan Q
    s2Step3Front_checked s2Step3Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step3Complete_owned s2Step3Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step3EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 788 s2Step3CompleteOut.fv.second (s2Step3CompleteOut.fv.payload[2]?.getD s2Step3CompleteOut.fv.sign) (s2Step3CompleteOut.fv.payload[3]?.getD s2Step3CompleteOut.fv.sign) (s2Step3CompleteOut.fv.payload[4]?.getD s2Step3CompleteOut.fv.sign) 783 1 s2Step3EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step3Complete_checked : (compileHmrEarlyStepLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step3CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step3Complete_explicit_checked]
  rfl
def s2Step4CompleteMoves : List (Wire × Wire) := []
def s2Step4CompleteOut : WindowBank := s2Step4FrontOut.repacked s2Step4CompleteMoves
def s2Step4CompleteLog : HmrEarlyStepLog := ⟨s2Step4FrontLog,s2Step4CompleteMoves,s2Step4EarlyControlLog⟩
theorem s2Step4Complete_repack : s2Step4ExitGvAfter.checkRepack s2Step4CompleteMoves=some s2Step4EarlyControlArena := by rfl
theorem s2Step4Complete_owned : (s2Step4CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step4EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4Complete_apart : List.Disjoint (s2Step4CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [790, 781, 795] := by
  have nd : ((s2Step4CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[790, 781, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step4CompletePlan : HmrEarlyStepPlan := ⟨s2Step4FrontPlan,s2Step4EarlyControlArena,s2Step4EarlyControlPlan,s2Step4CompleteMoves⟩
theorem s2Step4Complete_explicit_checked : compileHmrEarlyStepLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step4CompleteLog=some s2Step4CompletePlan := by
  let Q := s2Step4EarlyControlPlan
  have hq := s2Step4EarlyControl_plan_checked
  have fv1 : s2Step4CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step4CompleteOut.fv.payload[2]?.getD s2Step4CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step4CompleteOut.fv.payload[3]?.getD s2Step4CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step4CompleteOut.fv.payload[4]?.getD s2Step4CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step4EntryFBefore s2Step4EarlyControlArena s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step4CompleteLog s2Step4FrontPlan Q
    s2Step4Front_checked s2Step4Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step4Complete_owned s2Step4Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step4EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 790 s2Step4CompleteOut.fv.second (s2Step4CompleteOut.fv.payload[2]?.getD s2Step4CompleteOut.fv.sign) (s2Step4CompleteOut.fv.payload[3]?.getD s2Step4CompleteOut.fv.sign) (s2Step4CompleteOut.fv.payload[4]?.getD s2Step4CompleteOut.fv.sign) 781 1 s2Step4EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step4Complete_checked : (compileHmrEarlyStepLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step4CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step4Complete_explicit_checked]
  rfl
def s2Step5CompleteMoves : List (Wire × Wire) := []
def s2Step5CompleteOut : WindowBank := s2Step5FrontOut.repacked s2Step5CompleteMoves
def s2Step5CompleteLog : HmrEarlyStepLog := ⟨s2Step5FrontLog,s2Step5CompleteMoves,s2Step5EarlyControlLog⟩
theorem s2Step5Complete_repack : s2Step5ExitGvAfter.checkRepack s2Step5CompleteMoves=some s2Step5EarlyControlArena := by rfl
theorem s2Step5Complete_owned : (s2Step5CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step5EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5Complete_apart : List.Disjoint (s2Step5CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [792, 784, 795] := by
  have nd : ((s2Step5CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[792, 784, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step5CompletePlan : HmrEarlyStepPlan := ⟨s2Step5FrontPlan,s2Step5EarlyControlArena,s2Step5EarlyControlPlan,s2Step5CompleteMoves⟩
theorem s2Step5Complete_explicit_checked : compileHmrEarlyStepLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step5CompleteLog=some s2Step5CompletePlan := by
  let Q := s2Step5EarlyControlPlan
  have hq := s2Step5EarlyControl_plan_checked
  have fv1 : s2Step5CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step5CompleteOut.fv.payload[2]?.getD s2Step5CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step5CompleteOut.fv.payload[3]?.getD s2Step5CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step5CompleteOut.fv.payload[4]?.getD s2Step5CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step5EntryFBefore s2Step5EarlyControlArena s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step5CompleteLog s2Step5FrontPlan Q
    s2Step5Front_checked s2Step5Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step5Complete_owned s2Step5Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step5EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 792 s2Step5CompleteOut.fv.second (s2Step5CompleteOut.fv.payload[2]?.getD s2Step5CompleteOut.fv.sign) (s2Step5CompleteOut.fv.payload[3]?.getD s2Step5CompleteOut.fv.sign) (s2Step5CompleteOut.fv.payload[4]?.getD s2Step5CompleteOut.fv.sign) 784 1 s2Step5EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step5Complete_checked : (compileHmrEarlyStepLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step5CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step5Complete_explicit_checked]
  rfl
def s2Step6CompleteMoves : List (Wire × Wire) := []
def s2Step6CompleteOut : WindowBank := s2Step6FrontOut.repacked s2Step6CompleteMoves
def s2Step6CompleteLog : HmrEarlyStepLog := ⟨s2Step6FrontLog,s2Step6CompleteMoves,s2Step6EarlyControlLog⟩
theorem s2Step6Complete_repack : s2Step6ExitGvAfter.checkRepack s2Step6CompleteMoves=some s2Step6EarlyControlArena := by rfl
theorem s2Step6Complete_owned : (s2Step6CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step6EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6Complete_apart : List.Disjoint (s2Step6CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 782, 795] := by
  have nd : ((s2Step6CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 782, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step6CompletePlan : HmrEarlyStepPlan := ⟨s2Step6FrontPlan,s2Step6EarlyControlArena,s2Step6EarlyControlPlan,s2Step6CompleteMoves⟩
theorem s2Step6Complete_explicit_checked : compileHmrEarlyStepLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step6CompleteLog=some s2Step6CompletePlan := by
  let Q := s2Step6EarlyControlPlan
  have hq := s2Step6EarlyControl_plan_checked
  have fv1 : s2Step6CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step6CompleteOut.fv.payload[2]?.getD s2Step6CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step6CompleteOut.fv.payload[3]?.getD s2Step6CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step6CompleteOut.fv.payload[4]?.getD s2Step6CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step6EntryFBefore s2Step6EarlyControlArena s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step6CompleteLog s2Step6FrontPlan Q
    s2Step6Front_checked s2Step6Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step6Complete_owned s2Step6Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step6EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 794 s2Step6CompleteOut.fv.second (s2Step6CompleteOut.fv.payload[2]?.getD s2Step6CompleteOut.fv.sign) (s2Step6CompleteOut.fv.payload[3]?.getD s2Step6CompleteOut.fv.sign) (s2Step6CompleteOut.fv.payload[4]?.getD s2Step6CompleteOut.fv.sign) 782 1 s2Step6EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step6Complete_checked : (compileHmrEarlyStepLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step6CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step6Complete_explicit_checked]
  rfl
def s2Step7CompleteMoves : List (Wire × Wire) := []
def s2Step7CompleteOut : WindowBank := s2Step7FrontOut.repacked s2Step7CompleteMoves
def s2Step7CompleteLog : HmrEarlyStepLog := ⟨s2Step7FrontLog,s2Step7CompleteMoves,s2Step7EarlyControlLog⟩
theorem s2Step7Complete_repack : s2Step7ExitGvAfter.checkRepack s2Step7CompleteMoves=some s2Step7EarlyControlArena := by rfl
theorem s2Step7Complete_owned : (s2Step7CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step7EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7Complete_apart : List.Disjoint (s2Step7CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 783, 795] := by
  have nd : ((s2Step7CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 783, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step7CompletePlan : HmrEarlyStepPlan := ⟨s2Step7FrontPlan,s2Step7EarlyControlArena,s2Step7EarlyControlPlan,s2Step7CompleteMoves⟩
theorem s2Step7Complete_explicit_checked : compileHmrEarlyStepLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step7CompleteLog=some s2Step7CompletePlan := by
  let Q := s2Step7EarlyControlPlan
  have hq := s2Step7EarlyControl_plan_checked
  have fv1 : s2Step7CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step7CompleteOut.fv.payload[2]?.getD s2Step7CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step7CompleteOut.fv.payload[3]?.getD s2Step7CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step7CompleteOut.fv.payload[4]?.getD s2Step7CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step7EntryFBefore s2Step7EarlyControlArena s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step7CompleteLog s2Step7FrontPlan Q
    s2Step7Front_checked s2Step7Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step7Complete_owned s2Step7Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step7EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 797 s2Step7CompleteOut.fv.second (s2Step7CompleteOut.fv.payload[2]?.getD s2Step7CompleteOut.fv.sign) (s2Step7CompleteOut.fv.payload[3]?.getD s2Step7CompleteOut.fv.sign) (s2Step7CompleteOut.fv.payload[4]?.getD s2Step7CompleteOut.fv.sign) 783 1 s2Step7EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step7Complete_checked : (compileHmrEarlyStepLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step7CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step7Complete_explicit_checked]
  rfl
def s2Step8CompleteMoves : List (Wire × Wire) := []
def s2Step8CompleteOut : WindowBank := s2Step8FrontOut.repacked s2Step8CompleteMoves
def s2Step8CompleteLog : HmrEarlyStepLog := ⟨s2Step8FrontLog,s2Step8CompleteMoves,s2Step8EarlyControlLog⟩
theorem s2Step8Complete_repack : s2Step8ExitGvAfter.checkRepack s2Step8CompleteMoves=some s2Step8EarlyControlArena := by rfl
theorem s2Step8Complete_owned : (s2Step8CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step8EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8Complete_apart : List.Disjoint (s2Step8CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 781, 795] := by
  have nd : ((s2Step8CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 781, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step8CompletePlan : HmrEarlyStepPlan := ⟨s2Step8FrontPlan,s2Step8EarlyControlArena,s2Step8EarlyControlPlan,s2Step8CompleteMoves⟩
theorem s2Step8Complete_explicit_checked : compileHmrEarlyStepLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step8CompleteLog=some s2Step8CompletePlan := by
  let Q := s2Step8EarlyControlPlan
  have hq := s2Step8EarlyControl_plan_checked
  have fv1 : s2Step8CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step8CompleteOut.fv.payload[2]?.getD s2Step8CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step8CompleteOut.fv.payload[3]?.getD s2Step8CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step8CompleteOut.fv.payload[4]?.getD s2Step8CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step8EntryFBefore s2Step8EarlyControlArena s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step8CompleteLog s2Step8FrontPlan Q
    s2Step8Front_checked s2Step8Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step8Complete_owned s2Step8Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step8EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 799 s2Step8CompleteOut.fv.second (s2Step8CompleteOut.fv.payload[2]?.getD s2Step8CompleteOut.fv.sign) (s2Step8CompleteOut.fv.payload[3]?.getD s2Step8CompleteOut.fv.sign) (s2Step8CompleteOut.fv.payload[4]?.getD s2Step8CompleteOut.fv.sign) 781 1 s2Step8EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step8Complete_checked : (compileHmrEarlyStepLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ 0 [772, 773, 774, 775, 776, 777] [795] 1 s2Step8CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step8Complete_explicit_checked]
  rfl
def s2Step9CompleteMoves : List (Wire × Wire) := []
def s2Step9CompleteOut : WindowBank := s2Step9FrontOut.repacked s2Step9CompleteMoves
def s2Step9CompleteLog : HmrEarlyStepLog := ⟨s2Step9FrontLog,s2Step9CompleteMoves,s2Step9EarlyControlLog⟩
theorem s2Step9Complete_repack : s2Step9ExitGvAfter.checkRepack s2Step9CompleteMoves=some s2Step9EarlyControlArena := by rfl
theorem s2Step9Complete_owned : (s2Step9CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step9EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9Complete_apart : List.Disjoint (s2Step9CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [801, 784, 795] := by
  have nd : ((s2Step9CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[801, 784, 795]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step9CompletePlan : HmrEarlyStepPlan := ⟨s2Step9FrontPlan,s2Step9EarlyControlArena,s2Step9EarlyControlPlan,s2Step9CompleteMoves⟩
theorem s2Step9Complete_explicit_checked : compileHmrEarlyStepLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ 0 [772, 773, 774, 775, 776, 777] [795] 2 s2Step9CompleteLog=some s2Step9CompletePlan := by
  let Q := s2Step9EarlyControlPlan
  have hq := s2Step9EarlyControl_plan_checked
  have fv1 : s2Step9CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step9CompleteOut.fv.payload[2]?.getD s2Step9CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step9CompleteOut.fv.payload[3]?.getD s2Step9CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step9CompleteOut.fv.payload[4]?.getD s2Step9CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step9EntryFBefore s2Step9EarlyControlArena s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ 0 [772, 773, 774, 775, 776, 777] [795] 2 s2Step9CompleteLog s2Step9FrontPlan Q
    s2Step9Front_checked s2Step9Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step9Complete_owned s2Step9Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step9EarlyControlArena [772, 773, 774, 775, 776, 777] [795] 777 801 s2Step9CompleteOut.fv.second (s2Step9CompleteOut.fv.payload[2]?.getD s2Step9CompleteOut.fv.sign) (s2Step9CompleteOut.fv.payload[3]?.getD s2Step9CompleteOut.fv.sign) (s2Step9CompleteOut.fv.payload[4]?.getD s2Step9CompleteOut.fv.sign) 784 2 s2Step9EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step9Complete_checked : (compileHmrEarlyStepLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ 0 [772, 773, 774, 775, 776, 777] [795] 2 s2Step9CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step9Complete_explicit_checked]
  rfl
def s2Step10CompleteMoves : List (Wire × Wire) := []
def s2Step10CompleteOut : WindowBank := s2Step10FrontOut.repacked s2Step10CompleteMoves
def s2Step10CompleteLog : HmrEarlyStepLog := ⟨s2Step10FrontLog,s2Step10CompleteMoves,s2Step10EarlyControlLog⟩
theorem s2Step10Complete_repack : s2Step10ExitGvAfter.checkRepack s2Step10CompleteMoves=some s2Step10EarlyControlArena := by rfl
theorem s2Step10Complete_owned : (s2Step10CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step10EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Complete_apart : List.Disjoint (s2Step10CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [803, 782, 795, 813] := by
  have nd : ((s2Step10CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[803, 782, 795, 813]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step10CompletePlan : HmrEarlyStepPlan := ⟨s2Step10FrontPlan,s2Step10EarlyControlArena,s2Step10EarlyControlPlan,s2Step10CompleteMoves⟩
theorem s2Step10Complete_explicit_checked : compileHmrEarlyStepLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813] 2 s2Step10CompleteLog=some s2Step10CompletePlan := by
  let Q := s2Step10EarlyControlPlan
  have hq := s2Step10EarlyControl_plan_checked
  have fv1 : s2Step10CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step10CompleteOut.fv.payload[2]?.getD s2Step10CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step10CompleteOut.fv.payload[3]?.getD s2Step10CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step10CompleteOut.fv.payload[4]?.getD s2Step10CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step10EntryFBefore s2Step10EarlyControlArena s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813] 2 s2Step10CompleteLog s2Step10FrontPlan Q
    s2Step10Front_checked s2Step10Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step10Complete_owned s2Step10Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step10EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 803 s2Step10CompleteOut.fv.second (s2Step10CompleteOut.fv.payload[2]?.getD s2Step10CompleteOut.fv.sign) (s2Step10CompleteOut.fv.payload[3]?.getD s2Step10CompleteOut.fv.sign) (s2Step10CompleteOut.fv.payload[4]?.getD s2Step10CompleteOut.fv.sign) 782 2 s2Step10EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step10Complete_checked : (compileHmrEarlyStepLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813] 2 s2Step10CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step10Complete_explicit_checked]
  rfl
def s2Step11CompleteMoves : List (Wire × Wire) := []
def s2Step11CompleteOut : WindowBank := s2Step11FrontOut.repacked s2Step11CompleteMoves
def s2Step11CompleteLog : HmrEarlyStepLog := ⟨s2Step11FrontLog,s2Step11CompleteMoves,s2Step11EarlyControlLog⟩
theorem s2Step11Complete_repack : s2Step11ExitGvAfter.checkRepack s2Step11CompleteMoves=some s2Step11EarlyControlArena := by rfl
theorem s2Step11Complete_owned : (s2Step11CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step11EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Complete_apart : List.Disjoint (s2Step11CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 783, 795, 813] := by
  have nd : ((s2Step11CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 783, 795, 813]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step11CompletePlan : HmrEarlyStepPlan := ⟨s2Step11FrontPlan,s2Step11EarlyControlArena,s2Step11EarlyControlPlan,s2Step11CompleteMoves⟩
theorem s2Step11Complete_explicit_checked : compileHmrEarlyStepLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813] 3 s2Step11CompleteLog=some s2Step11CompletePlan := by
  let Q := s2Step11EarlyControlPlan
  have hq := s2Step11EarlyControl_plan_checked
  have fv1 : s2Step11CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step11CompleteOut.fv.payload[2]?.getD s2Step11CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step11CompleteOut.fv.payload[3]?.getD s2Step11CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step11CompleteOut.fv.payload[4]?.getD s2Step11CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step11EntryFBefore s2Step11EarlyControlArena s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813] 3 s2Step11CompleteLog s2Step11FrontPlan Q
    s2Step11Front_checked s2Step11Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step11Complete_owned s2Step11Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step11EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813] 777 805 s2Step11CompleteOut.fv.second (s2Step11CompleteOut.fv.payload[2]?.getD s2Step11CompleteOut.fv.sign) (s2Step11CompleteOut.fv.payload[3]?.getD s2Step11CompleteOut.fv.sign) (s2Step11CompleteOut.fv.payload[4]?.getD s2Step11CompleteOut.fv.sign) 783 3 s2Step11EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step11Complete_checked : (compileHmrEarlyStepLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813] 3 s2Step11CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step11Complete_explicit_checked]
  rfl
def s2Step12CompleteMoves : List (Wire × Wire) := []
def s2Step12CompleteOut : WindowBank := s2Step12FrontOut.repacked s2Step12CompleteMoves
def s2Step12CompleteLog : HmrEarlyStepLog := ⟨s2Step12FrontLog,s2Step12CompleteMoves,s2Step12EarlyControlLog⟩
theorem s2Step12Complete_repack : s2Step12ExitGvAfter.checkRepack s2Step12CompleteMoves=some s2Step12EarlyControlArena := by rfl
theorem s2Step12Complete_owned : (s2Step12CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step12EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Complete_apart : List.Disjoint (s2Step12CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 781, 795, 813, 818] := by
  have nd : ((s2Step12CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 781, 795, 813, 818]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step12CompletePlan : HmrEarlyStepPlan := ⟨s2Step12FrontPlan,s2Step12EarlyControlArena,s2Step12EarlyControlPlan,s2Step12CompleteMoves⟩
theorem s2Step12Complete_explicit_checked : compileHmrEarlyStepLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818] 3 s2Step12CompleteLog=some s2Step12CompletePlan := by
  let Q := s2Step12EarlyControlPlan
  have hq := s2Step12EarlyControl_plan_checked
  have fv1 : s2Step12CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step12CompleteOut.fv.payload[2]?.getD s2Step12CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step12CompleteOut.fv.payload[3]?.getD s2Step12CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step12CompleteOut.fv.payload[4]?.getD s2Step12CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step12EntryFBefore s2Step12EarlyControlArena s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818] 3 s2Step12CompleteLog s2Step12FrontPlan Q
    s2Step12Front_checked s2Step12Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step12Complete_owned s2Step12Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step12EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 807 s2Step12CompleteOut.fv.second (s2Step12CompleteOut.fv.payload[2]?.getD s2Step12CompleteOut.fv.sign) (s2Step12CompleteOut.fv.payload[3]?.getD s2Step12CompleteOut.fv.sign) (s2Step12CompleteOut.fv.payload[4]?.getD s2Step12CompleteOut.fv.sign) 781 3 s2Step12EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step12Complete_checked : (compileHmrEarlyStepLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818] 3 s2Step12CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step12Complete_explicit_checked]
  rfl
def s2Step13CompleteMoves : List (Wire × Wire) := []
def s2Step13CompleteOut : WindowBank := s2Step13FrontOut.repacked s2Step13CompleteMoves
def s2Step13CompleteLog : HmrEarlyStepLog := ⟨s2Step13FrontLog,s2Step13CompleteMoves,s2Step13EarlyControlLog⟩
theorem s2Step13Complete_repack : s2Step13ExitGvAfter.checkRepack s2Step13CompleteMoves=some s2Step13EarlyControlArena := by rfl
theorem s2Step13Complete_owned : (s2Step13CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step13EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Complete_apart : List.Disjoint (s2Step13CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 784, 795, 813, 818] := by
  have nd : ((s2Step13CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 784, 795, 813, 818]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step13CompletePlan : HmrEarlyStepPlan := ⟨s2Step13FrontPlan,s2Step13EarlyControlArena,s2Step13EarlyControlPlan,s2Step13CompleteMoves⟩
theorem s2Step13Complete_explicit_checked : compileHmrEarlyStepLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818] 4 s2Step13CompleteLog=some s2Step13CompletePlan := by
  let Q := s2Step13EarlyControlPlan
  have hq := s2Step13EarlyControl_plan_checked
  have fv1 : s2Step13CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step13CompleteOut.fv.payload[2]?.getD s2Step13CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step13CompleteOut.fv.payload[3]?.getD s2Step13CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step13CompleteOut.fv.payload[4]?.getD s2Step13CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step13EntryFBefore s2Step13EarlyControlArena s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818] 4 s2Step13CompleteLog s2Step13FrontPlan Q
    s2Step13Front_checked s2Step13Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step13Complete_owned s2Step13Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step13EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818] 777 809 s2Step13CompleteOut.fv.second (s2Step13CompleteOut.fv.payload[2]?.getD s2Step13CompleteOut.fv.sign) (s2Step13CompleteOut.fv.payload[3]?.getD s2Step13CompleteOut.fv.sign) (s2Step13CompleteOut.fv.payload[4]?.getD s2Step13CompleteOut.fv.sign) 784 4 s2Step13EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step13Complete_checked : (compileHmrEarlyStepLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818] 4 s2Step13CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step13Complete_explicit_checked]
  rfl
def s2Step14CompleteMoves : List (Wire × Wire) := []
def s2Step14CompleteOut : WindowBank := s2Step14FrontOut.repacked s2Step14CompleteMoves
def s2Step14CompleteLog : HmrEarlyStepLog := ⟨s2Step14FrontLog,s2Step14CompleteMoves,s2Step14EarlyControlLog⟩
theorem s2Step14Complete_repack : s2Step14ExitGvAfter.checkRepack s2Step14CompleteMoves=some s2Step14EarlyControlArena := by rfl
theorem s2Step14Complete_owned : (s2Step14CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step14EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Complete_apart : List.Disjoint (s2Step14CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 782, 795, 813, 818, 823] := by
  have nd : ((s2Step14CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 782, 795, 813, 818, 823]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step14CompletePlan : HmrEarlyStepPlan := ⟨s2Step14FrontPlan,s2Step14EarlyControlArena,s2Step14EarlyControlPlan,s2Step14CompleteMoves⟩
theorem s2Step14Complete_explicit_checked : compileHmrEarlyStepLog s2Step14EntryFBefore s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 4 s2Step14CompleteLog=some s2Step14CompletePlan := by
  let Q := s2Step14EarlyControlPlan
  have hq := s2Step14EarlyControl_plan_checked
  have fv1 : s2Step14CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step14CompleteOut.fv.payload[2]?.getD s2Step14CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step14CompleteOut.fv.payload[3]?.getD s2Step14CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step14CompleteOut.fv.payload[4]?.getD s2Step14CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step14EntryFBefore s2Step14EarlyControlArena s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 4 s2Step14CompleteLog s2Step14FrontPlan Q
    s2Step14Front_checked s2Step14Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step14Complete_owned s2Step14Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step14EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 811 s2Step14CompleteOut.fv.second (s2Step14CompleteOut.fv.payload[2]?.getD s2Step14CompleteOut.fv.sign) (s2Step14CompleteOut.fv.payload[3]?.getD s2Step14CompleteOut.fv.sign) (s2Step14CompleteOut.fv.payload[4]?.getD s2Step14CompleteOut.fv.sign) 782 4 s2Step14EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step14Complete_checked : (compileHmrEarlyStepLog s2Step14EntryFBefore s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 4 s2Step14CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step14Complete_explicit_checked]
  rfl
def s2Step15CompleteMoves : List (Wire × Wire) := []
def s2Step15CompleteOut : WindowBank := s2Step15FrontOut.repacked s2Step15CompleteMoves
def s2Step15CompleteLog : HmrEarlyStepLog := ⟨s2Step15FrontLog,s2Step15CompleteMoves,s2Step15EarlyControlLog⟩
theorem s2Step15Complete_repack : s2Step15ExitGvAfter.checkRepack s2Step15CompleteMoves=some s2Step15EarlyControlArena := by rfl
theorem s2Step15Complete_owned : (s2Step15CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step15EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Complete_apart : List.Disjoint (s2Step15CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 783, 795, 813, 818, 823] := by
  have nd : ((s2Step15CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 783, 795, 813, 818, 823]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step15CompletePlan : HmrEarlyStepPlan := ⟨s2Step15FrontPlan,s2Step15EarlyControlArena,s2Step15EarlyControlPlan,s2Step15CompleteMoves⟩
theorem s2Step15Complete_explicit_checked : compileHmrEarlyStepLog s2Step15EntryFBefore s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 5 s2Step15CompleteLog=some s2Step15CompletePlan := by
  let Q := s2Step15EarlyControlPlan
  have hq := s2Step15EarlyControl_plan_checked
  have fv1 : s2Step15CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step15CompleteOut.fv.payload[2]?.getD s2Step15CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step15CompleteOut.fv.payload[3]?.getD s2Step15CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step15CompleteOut.fv.payload[4]?.getD s2Step15CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step15EntryFBefore s2Step15EarlyControlArena s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 5 s2Step15CompleteLog s2Step15FrontPlan Q
    s2Step15Front_checked s2Step15Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step15Complete_owned s2Step15Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step15EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 777 814 s2Step15CompleteOut.fv.second (s2Step15CompleteOut.fv.payload[2]?.getD s2Step15CompleteOut.fv.sign) (s2Step15CompleteOut.fv.payload[3]?.getD s2Step15CompleteOut.fv.sign) (s2Step15CompleteOut.fv.payload[4]?.getD s2Step15CompleteOut.fv.sign) 783 5 s2Step15EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step15Complete_checked : (compileHmrEarlyStepLog s2Step15EntryFBefore s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 5 s2Step15CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step15Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
