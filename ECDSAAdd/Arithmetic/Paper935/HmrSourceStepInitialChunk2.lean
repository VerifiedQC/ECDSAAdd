import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.FusedRepackAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl5
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32CompleteMoves : List (Wire × Wire) := [(788,764)]
def s2Step32CompleteOut : WindowBank := s2Step32FrontOut.repacked s2Step32CompleteMoves
def s2Step32CompleteLog : HmrEarlyStepLog := ⟨s2Step32FrontLog,s2Step32CompleteMoves,s2Step32EarlyControlLog⟩
def s2Step32CompleteMoveArena : Arena := ⟨s2Step32ExitGvAfter.live∪{764},Finset.union_subset s2Step32ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step32Complete_repack : s2Step32ExitGvAfter.checkRepack s2Step32CompleteMoves=some s2Step32EarlyControlArena := by
  have owned : 788∈s2Step32ExitGvAfter.live := by norm_num [s2Step32ExitGvAfter,arenaWires]
  have reserve : s2Step32ExitGvAfter.reserve {764}=some s2Step32CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step32ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step32CompleteMoveArena.retireSet {788}=s2Step32EarlyControlArena := by
    unfold Arena.retireSet s2Step32EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step32CompleteMoveArena,s2Step32ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step32CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step32CompleteMoveArena.retireSet {788}).checkRepack []=some s2Step32EarlyControlArena
  rw [retired]
  rfl
theorem s2Step32Complete_owned : (s2Step32CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step32EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (789≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Complete_apart : List.Disjoint (s2Step32CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [789, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] := by
  have nd : ((s2Step32CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[789, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step32CompletePlan : HmrEarlyStepPlan := ⟨s2Step32FrontPlan,s2Step32EarlyControlArena,s2Step32EarlyControlPlan,s2Step32CompleteMoves⟩
theorem s2Step32Complete_explicit_checked : compileHmrEarlyStepLog s2Step32EntryFBefore s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32CompleteLog=some s2Step32CompletePlan := by
  let Q := s2Step32EarlyControlPlan
  have hq := s2Step32EarlyControl_plan_checked
  have fv1 : s2Step32CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step32CompleteOut.fv.payload[2]?.getD s2Step32CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step32CompleteOut.fv.payload[3]?.getD s2Step32CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step32CompleteOut.fv.payload[4]?.getD s2Step32CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step32EntryFBefore s2Step32EarlyControlArena s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32CompleteLog s2Step32FrontPlan Q
    s2Step32Front_checked s2Step32Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step32Complete_owned s2Step32Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step32EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 s2Step32CompleteOut.fv.second (s2Step32CompleteOut.fv.payload[2]?.getD s2Step32CompleteOut.fv.sign) (s2Step32CompleteOut.fv.payload[3]?.getD s2Step32CompleteOut.fv.sign) (s2Step32CompleteOut.fv.payload[4]?.getD s2Step32CompleteOut.fv.sign) 839 13 s2Step32EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step32Complete_checked : (compileHmrEarlyStepLog s2Step32EntryFBefore s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 13 s2Step32CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step32Complete_explicit_checked]
  rfl
def s2Step33CompleteMoves : List (Wire × Wire) := [(790,763)]
def s2Step33CompleteOut : WindowBank := s2Step33FrontOut.repacked s2Step33CompleteMoves
def s2Step33CompleteLog : HmrEarlyStepLog := ⟨s2Step33FrontLog,s2Step33CompleteMoves,s2Step33EarlyControlLog⟩
def s2Step33CompleteMoveArena : Arena := ⟨s2Step33ExitGvAfter.live∪{763},Finset.union_subset s2Step33ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step33Complete_repack : s2Step33ExitGvAfter.checkRepack s2Step33CompleteMoves=some s2Step33EarlyControlArena := by
  have owned : 790∈s2Step33ExitGvAfter.live := by norm_num [s2Step33ExitGvAfter,arenaWires]
  have reserve : s2Step33ExitGvAfter.reserve {763}=some s2Step33CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step33ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step33CompleteMoveArena.retireSet {790}=s2Step33EarlyControlArena := by
    unfold Arena.retireSet s2Step33EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step33CompleteMoveArena,s2Step33ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step33CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step33CompleteMoveArena.retireSet {790}).checkRepack []=some s2Step33EarlyControlArena
  rw [retired]
  rfl
theorem s2Step33Complete_owned : (s2Step33CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step33EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Complete_apart : List.Disjoint (s2Step33CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [789, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] := by
  have nd : ((s2Step33CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[789, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step33CompletePlan : HmrEarlyStepPlan := ⟨s2Step33FrontPlan,s2Step33EarlyControlArena,s2Step33EarlyControlPlan,s2Step33CompleteMoves⟩
theorem s2Step33Complete_explicit_checked : compileHmrEarlyStepLog s2Step33EntryFBefore s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33CompleteLog=some s2Step33CompletePlan := by
  let Q := s2Step33EarlyControlPlan
  have hq := s2Step33EarlyControl_plan_checked
  have fv1 : s2Step33CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step33CompleteOut.fv.payload[2]?.getD s2Step33CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step33CompleteOut.fv.payload[3]?.getD s2Step33CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step33CompleteOut.fv.payload[4]?.getD s2Step33CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step33EntryFBefore s2Step33EarlyControlArena s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33CompleteLog s2Step33FrontPlan Q
    s2Step33Front_checked s2Step33Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step33Complete_owned s2Step33Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step33EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 777 789 s2Step33CompleteOut.fv.second (s2Step33CompleteOut.fv.payload[2]?.getD s2Step33CompleteOut.fv.sign) (s2Step33CompleteOut.fv.payload[3]?.getD s2Step33CompleteOut.fv.sign) (s2Step33CompleteOut.fv.payload[4]?.getD s2Step33CompleteOut.fv.sign) 788 14 s2Step33EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step33Complete_checked : (compileHmrEarlyStepLog s2Step33EntryFBefore s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 14 s2Step33CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step33Complete_explicit_checked]
  rfl
def s2Step34CompleteMoves : List (Wire × Wire) := [(793,250)]
def s2Step34CompleteOut : WindowBank := s2Step34FrontOut.repacked s2Step34CompleteMoves
def s2Step34CompleteLog : HmrEarlyStepLog := ⟨s2Step34FrontLog,s2Step34CompleteMoves,s2Step34EarlyControlLog⟩
def s2Step34CompleteMoveArena : Arena := ⟨s2Step34ExitGvAfter.live∪{250},Finset.union_subset s2Step34ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step34Complete_repack : s2Step34ExitGvAfter.checkRepack s2Step34CompleteMoves=some s2Step34EarlyControlArena := by
  have owned : 793∈s2Step34ExitGvAfter.live := by norm_num [s2Step34ExitGvAfter,arenaWires]
  have reserve : s2Step34ExitGvAfter.reserve {250}=some s2Step34CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step34ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step34CompleteMoveArena.retireSet {793}=s2Step34EarlyControlArena := by
    unfold Arena.retireSet s2Step34EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step34CompleteMoveArena,s2Step34ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step34CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step34CompleteMoveArena.retireSet {793}).checkRepack []=some s2Step34EarlyControlArena
  rw [retired]
  rfl
theorem s2Step34Complete_owned : (s2Step34CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step34EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Complete_apart : List.Disjoint (s2Step34CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [789, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] := by
  have nd : ((s2Step34CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[789, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step34CompletePlan : HmrEarlyStepPlan := ⟨s2Step34FrontPlan,s2Step34EarlyControlArena,s2Step34EarlyControlPlan,s2Step34CompleteMoves⟩
theorem s2Step34Complete_explicit_checked : compileHmrEarlyStepLog s2Step34EntryFBefore s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34CompleteLog=some s2Step34CompletePlan := by
  let Q := s2Step34EarlyControlPlan
  have hq := s2Step34EarlyControl_plan_checked
  have fv1 : s2Step34CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step34CompleteOut.fv.payload[2]?.getD s2Step34CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step34CompleteOut.fv.payload[3]?.getD s2Step34CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step34CompleteOut.fv.payload[4]?.getD s2Step34CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step34EntryFBefore s2Step34EarlyControlArena s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34CompleteLog s2Step34FrontPlan Q
    s2Step34Front_checked s2Step34Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step34Complete_owned s2Step34Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step34EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 s2Step34CompleteOut.fv.second (s2Step34CompleteOut.fv.payload[2]?.getD s2Step34CompleteOut.fv.sign) (s2Step34CompleteOut.fv.payload[3]?.getD s2Step34CompleteOut.fv.sign) (s2Step34CompleteOut.fv.payload[4]?.getD s2Step34CompleteOut.fv.sign) 790 14 s2Step34EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step34Complete_checked : (compileHmrEarlyStepLog s2Step34EntryFBefore s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 14 s2Step34CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step34Complete_explicit_checked]
  rfl
def s2Step35CompleteMoves : List (Wire × Wire) := [(792,762)]
def s2Step35CompleteOut : WindowBank := s2Step35FrontOut.repacked s2Step35CompleteMoves
def s2Step35CompleteLog : HmrEarlyStepLog := ⟨s2Step35FrontLog,s2Step35CompleteMoves,s2Step35EarlyControlLog⟩
def s2Step35CompleteMoveArena : Arena := ⟨s2Step35ExitGvAfter.live∪{762},Finset.union_subset s2Step35ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step35Complete_repack : s2Step35ExitGvAfter.checkRepack s2Step35CompleteMoves=some s2Step35EarlyControlArena := by
  have owned : 792∈s2Step35ExitGvAfter.live := by norm_num [s2Step35ExitGvAfter,arenaWires]
  have reserve : s2Step35ExitGvAfter.reserve {762}=some s2Step35CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step35ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step35CompleteMoveArena.retireSet {792}=s2Step35EarlyControlArena := by
    unfold Arena.retireSet s2Step35EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step35CompleteMoveArena,s2Step35ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step35CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step35CompleteMoveArena.retireSet {792}).checkRepack []=some s2Step35EarlyControlArena
  rw [retired]
  rfl
theorem s2Step35Complete_owned : (s2Step35CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step35EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Complete_apart : List.Disjoint (s2Step35CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [789, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] := by
  have nd : ((s2Step35CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[789, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step35CompletePlan : HmrEarlyStepPlan := ⟨s2Step35FrontPlan,s2Step35EarlyControlArena,s2Step35EarlyControlPlan,s2Step35CompleteMoves⟩
theorem s2Step35Complete_explicit_checked : compileHmrEarlyStepLog s2Step35EntryFBefore s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35CompleteLog=some s2Step35CompletePlan := by
  let Q := s2Step35EarlyControlPlan
  have hq := s2Step35EarlyControl_plan_checked
  have fv1 : s2Step35CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step35CompleteOut.fv.payload[2]?.getD s2Step35CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step35CompleteOut.fv.payload[3]?.getD s2Step35CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step35CompleteOut.fv.payload[4]?.getD s2Step35CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step35EntryFBefore s2Step35EarlyControlArena s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35CompleteLog s2Step35FrontPlan Q
    s2Step35Front_checked s2Step35Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step35Complete_owned s2Step35Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step35EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 777 789 s2Step35CompleteOut.fv.second (s2Step35CompleteOut.fv.payload[2]?.getD s2Step35CompleteOut.fv.sign) (s2Step35CompleteOut.fv.payload[3]?.getD s2Step35CompleteOut.fv.sign) (s2Step35CompleteOut.fv.payload[4]?.getD s2Step35CompleteOut.fv.sign) 793 15 s2Step35EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step35Complete_checked : (compileHmrEarlyStepLog s2Step35EntryFBefore s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 15 s2Step35CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step35Complete_explicit_checked]
  rfl
def s2Step36CompleteMoves : List (Wire × Wire) := []
def s2Step36CompleteOut : WindowBank := s2Step36FrontOut.repacked s2Step36CompleteMoves
def s2Step36CompleteLog : HmrEarlyStepLog := ⟨s2Step36FrontLog,s2Step36CompleteMoves,s2Step36EarlyControlLog⟩
theorem s2Step36Complete_repack : s2Step36ExitGvAfter.checkRepack s2Step36CompleteMoves=some s2Step36EarlyControlArena := by rfl
theorem s2Step36Complete_owned : (s2Step36CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step36EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Complete_apart : List.Disjoint (s2Step36CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [792, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] := by
  have nd : ((s2Step36CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[792, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step36CompletePlan : HmrEarlyStepPlan := ⟨s2Step36FrontPlan,s2Step36EarlyControlArena,s2Step36EarlyControlPlan,s2Step36CompleteMoves⟩
theorem s2Step36Complete_explicit_checked : compileHmrEarlyStepLog s2Step36EntryFBefore s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36CompleteLog=some s2Step36CompletePlan := by
  let Q := s2Step36EarlyControlPlan
  have hq := s2Step36EarlyControl_plan_checked
  have fv1 : s2Step36CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step36CompleteOut.fv.payload[2]?.getD s2Step36CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step36CompleteOut.fv.payload[3]?.getD s2Step36CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step36CompleteOut.fv.payload[4]?.getD s2Step36CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step36EntryFBefore s2Step36EarlyControlArena s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36CompleteLog s2Step36FrontPlan Q
    s2Step36Front_checked s2Step36Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step36Complete_owned s2Step36Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step36EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 792 s2Step36CompleteOut.fv.second (s2Step36CompleteOut.fv.payload[2]?.getD s2Step36CompleteOut.fv.sign) (s2Step36CompleteOut.fv.payload[3]?.getD s2Step36CompleteOut.fv.sign) (s2Step36CompleteOut.fv.payload[4]?.getD s2Step36CompleteOut.fv.sign) 787 15 s2Step36EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step36Complete_checked : (compileHmrEarlyStepLog s2Step36EntryFBefore s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 15 s2Step36CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step36Complete_explicit_checked]
  rfl
def s2Step37CompleteMoves : List (Wire × Wire) := [(796,249)]
def s2Step37CompleteOut : WindowBank := s2Step37FrontOut.repacked s2Step37CompleteMoves
def s2Step37CompleteLog : HmrEarlyStepLog := ⟨s2Step37FrontLog,s2Step37CompleteMoves,s2Step37EarlyControlLog⟩
def s2Step37CompleteMoveArena : Arena := ⟨s2Step37ExitGvAfter.live∪{249},Finset.union_subset s2Step37ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step37Complete_repack : s2Step37ExitGvAfter.checkRepack s2Step37CompleteMoves=some s2Step37EarlyControlArena := by
  have owned : 796∈s2Step37ExitGvAfter.live := by norm_num [s2Step37ExitGvAfter,s2Step37ExitFAfter,arenaWires]
  have reserve : s2Step37ExitGvAfter.reserve {249}=some s2Step37CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step37ExitGvAfter,s2Step37ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step37CompleteMoveArena.retireSet {796}=s2Step37EarlyControlArena := by
    unfold Arena.retireSet s2Step37EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step37CompleteMoveArena,s2Step37ExitGvAfter,s2Step37ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step37CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step37CompleteMoveArena.retireSet {796}).checkRepack []=some s2Step37EarlyControlArena
  rw [retired]
  rfl
theorem s2Step37Complete_owned : (s2Step37CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step37EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Complete_apart : List.Disjoint (s2Step37CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] := by
  have nd : ((s2Step37CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 792, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step37CompletePlan : HmrEarlyStepPlan := ⟨s2Step37FrontPlan,s2Step37EarlyControlArena,s2Step37EarlyControlPlan,s2Step37CompleteMoves⟩
theorem s2Step37Complete_explicit_checked : compileHmrEarlyStepLog s2Step37EntryFBefore s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37CompleteLog=some s2Step37CompletePlan := by
  let Q := s2Step37EarlyControlPlan
  have hq := s2Step37EarlyControl_plan_checked
  have fv1 : s2Step37CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step37CompleteOut.fv.payload[2]?.getD s2Step37CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step37CompleteOut.fv.payload[3]?.getD s2Step37CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step37CompleteOut.fv.payload[4]?.getD s2Step37CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step37EntryFBefore s2Step37EarlyControlArena s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37CompleteLog s2Step37FrontPlan Q
    s2Step37Front_checked s2Step37Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step37Complete_owned s2Step37Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step37EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 777 787 s2Step37CompleteOut.fv.second (s2Step37CompleteOut.fv.payload[2]?.getD s2Step37CompleteOut.fv.sign) (s2Step37CompleteOut.fv.payload[3]?.getD s2Step37CompleteOut.fv.sign) (s2Step37CompleteOut.fv.payload[4]?.getD s2Step37CompleteOut.fv.sign) 792 16 s2Step37EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step37Complete_checked : (compileHmrEarlyStepLog s2Step37EntryFBefore s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 16 s2Step37CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step37Complete_explicit_checked]
  rfl
def s2Step38CompleteMoves : List (Wire × Wire) := [(794,761)]
def s2Step38CompleteOut : WindowBank := s2Step38FrontOut.repacked s2Step38CompleteMoves
def s2Step38CompleteLog : HmrEarlyStepLog := ⟨s2Step38FrontLog,s2Step38CompleteMoves,s2Step38EarlyControlLog⟩
def s2Step38CompleteMoveArena : Arena := ⟨s2Step38ExitGvAfter.live∪{761},Finset.union_subset s2Step38ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step38Complete_repack : s2Step38ExitGvAfter.checkRepack s2Step38CompleteMoves=some s2Step38EarlyControlArena := by
  have owned : 794∈s2Step38ExitGvAfter.live := by norm_num [s2Step38ExitGvAfter,arenaWires]
  have reserve : s2Step38ExitGvAfter.reserve {761}=some s2Step38CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step38ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step38CompleteMoveArena.retireSet {794}=s2Step38EarlyControlArena := by
    unfold Arena.retireSet s2Step38EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step38CompleteMoveArena,s2Step38ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step38CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step38CompleteMoveArena.retireSet {794}).checkRepack []=some s2Step38EarlyControlArena
  rw [retired]
  rfl
theorem s2Step38Complete_owned : (s2Step38CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step38EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Complete_apart : List.Disjoint (s2Step38CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] := by
  have nd : ((s2Step38CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step38CompletePlan : HmrEarlyStepPlan := ⟨s2Step38FrontPlan,s2Step38EarlyControlArena,s2Step38EarlyControlPlan,s2Step38CompleteMoves⟩
theorem s2Step38Complete_explicit_checked : compileHmrEarlyStepLog s2Step38EntryFBefore s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38CompleteLog=some s2Step38CompletePlan := by
  let Q := s2Step38EarlyControlPlan
  have hq := s2Step38EarlyControl_plan_checked
  have fv1 : s2Step38CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step38CompleteOut.fv.payload[2]?.getD s2Step38CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step38CompleteOut.fv.payload[3]?.getD s2Step38CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step38CompleteOut.fv.payload[4]?.getD s2Step38CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step38EntryFBefore s2Step38EarlyControlArena s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38CompleteLog s2Step38FrontPlan Q
    s2Step38Front_checked s2Step38Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step38Complete_owned s2Step38Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step38EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 787 s2Step38CompleteOut.fv.second (s2Step38CompleteOut.fv.payload[2]?.getD s2Step38CompleteOut.fv.sign) (s2Step38CompleteOut.fv.payload[3]?.getD s2Step38CompleteOut.fv.sign) (s2Step38CompleteOut.fv.payload[4]?.getD s2Step38CompleteOut.fv.sign) 796 16 s2Step38EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step38Complete_checked : (compileHmrEarlyStepLog s2Step38EntryFBefore s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 16 s2Step38CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step38Complete_explicit_checked]
  rfl
def s2Step39CompleteMoves : List (Wire × Wire) := [(798,248)]
def s2Step39CompleteOut : WindowBank := s2Step39FrontOut.repacked s2Step39CompleteMoves
def s2Step39CompleteLog : HmrEarlyStepLog := ⟨s2Step39FrontLog,s2Step39CompleteMoves,s2Step39EarlyControlLog⟩
def s2Step39CompleteMoveArena : Arena := ⟨s2Step39ExitGvAfter.live∪{248},Finset.union_subset s2Step39ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step39Complete_repack : s2Step39ExitGvAfter.checkRepack s2Step39CompleteMoves=some s2Step39EarlyControlArena := by
  have owned : 798∈s2Step39ExitGvAfter.live := by norm_num [s2Step39ExitGvAfter,arenaWires]
  have reserve : s2Step39ExitGvAfter.reserve {248}=some s2Step39CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step39ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step39CompleteMoveArena.retireSet {798}=s2Step39EarlyControlArena := by
    unfold Arena.retireSet s2Step39EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step39CompleteMoveArena,s2Step39ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step39CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step39CompleteMoveArena.retireSet {798}).checkRepack []=some s2Step39EarlyControlArena
  rw [retired]
  rfl
theorem s2Step39Complete_owned : (s2Step39CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step39EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Complete_apart : List.Disjoint (s2Step39CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] := by
  have nd : ((s2Step39CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step39CompletePlan : HmrEarlyStepPlan := ⟨s2Step39FrontPlan,s2Step39EarlyControlArena,s2Step39EarlyControlPlan,s2Step39CompleteMoves⟩
theorem s2Step39Complete_explicit_checked : compileHmrEarlyStepLog s2Step39EntryFBefore s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39CompleteLog=some s2Step39CompletePlan := by
  let Q := s2Step39EarlyControlPlan
  have hq := s2Step39EarlyControl_plan_checked
  have fv1 : s2Step39CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step39CompleteOut.fv.payload[2]?.getD s2Step39CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step39CompleteOut.fv.payload[3]?.getD s2Step39CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step39CompleteOut.fv.payload[4]?.getD s2Step39CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step39EntryFBefore s2Step39EarlyControlArena s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39CompleteLog s2Step39FrontPlan Q
    s2Step39Front_checked s2Step39Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step39Complete_owned s2Step39Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step39EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 777 796 s2Step39CompleteOut.fv.second (s2Step39CompleteOut.fv.payload[2]?.getD s2Step39CompleteOut.fv.sign) (s2Step39CompleteOut.fv.payload[3]?.getD s2Step39CompleteOut.fv.sign) (s2Step39CompleteOut.fv.payload[4]?.getD s2Step39CompleteOut.fv.sign) 787 17 s2Step39EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step39Complete_checked : (compileHmrEarlyStepLog s2Step39EntryFBefore s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 17 s2Step39CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step39Complete_explicit_checked]
  rfl
def s2Step40CompleteMoves : List (Wire × Wire) := [(797,760)]
def s2Step40CompleteOut : WindowBank := s2Step40FrontOut.repacked s2Step40CompleteMoves
def s2Step40CompleteLog : HmrEarlyStepLog := ⟨s2Step40FrontLog,s2Step40CompleteMoves,s2Step40EarlyControlLog⟩
def s2Step40CompleteMoveArena : Arena := ⟨s2Step40ExitGvAfter.live∪{760},Finset.union_subset s2Step40ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step40Complete_repack : s2Step40ExitGvAfter.checkRepack s2Step40CompleteMoves=some s2Step40EarlyControlArena := by
  have owned : 797∈s2Step40ExitGvAfter.live := by norm_num [s2Step40ExitGvAfter,arenaWires]
  have reserve : s2Step40ExitGvAfter.reserve {760}=some s2Step40CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step40ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step40CompleteMoveArena.retireSet {797}=s2Step40EarlyControlArena := by
    unfold Arena.retireSet s2Step40EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step40CompleteMoveArena,s2Step40ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step40CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step40CompleteMoveArena.retireSet {797}).checkRepack []=some s2Step40EarlyControlArena
  rw [retired]
  rfl
theorem s2Step40Complete_owned : (s2Step40CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step40EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Complete_apart : List.Disjoint (s2Step40CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] := by
  have nd : ((s2Step40CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step40CompletePlan : HmrEarlyStepPlan := ⟨s2Step40FrontPlan,s2Step40EarlyControlArena,s2Step40EarlyControlPlan,s2Step40CompleteMoves⟩
theorem s2Step40Complete_explicit_checked : compileHmrEarlyStepLog s2Step40EntryFBefore s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40CompleteLog=some s2Step40CompletePlan := by
  let Q := s2Step40EarlyControlPlan
  have hq := s2Step40EarlyControl_plan_checked
  have fv1 : s2Step40CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step40CompleteOut.fv.payload[2]?.getD s2Step40CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step40CompleteOut.fv.payload[3]?.getD s2Step40CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step40CompleteOut.fv.payload[4]?.getD s2Step40CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step40EntryFBefore s2Step40EarlyControlArena s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40CompleteLog s2Step40FrontPlan Q
    s2Step40Front_checked s2Step40Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step40Complete_owned s2Step40Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step40EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 s2Step40CompleteOut.fv.second (s2Step40CompleteOut.fv.payload[2]?.getD s2Step40CompleteOut.fv.sign) (s2Step40CompleteOut.fv.payload[3]?.getD s2Step40CompleteOut.fv.sign) (s2Step40CompleteOut.fv.payload[4]?.getD s2Step40CompleteOut.fv.sign) 791 17 s2Step40EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step40Complete_checked : (compileHmrEarlyStepLog s2Step40EntryFBefore s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 17 s2Step40CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step40Complete_explicit_checked]
  rfl
def s2Step41CompleteMoves : List (Wire × Wire) := []
def s2Step41CompleteOut : WindowBank := s2Step41FrontOut.repacked s2Step41CompleteMoves
def s2Step41CompleteLog : HmrEarlyStepLog := ⟨s2Step41FrontLog,s2Step41CompleteMoves,s2Step41EarlyControlLog⟩
theorem s2Step41Complete_repack : s2Step41ExitGvAfter.checkRepack s2Step41CompleteMoves=some s2Step41EarlyControlArena := by rfl
theorem s2Step41Complete_owned : (s2Step41CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step41EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Complete_apart : List.Disjoint (s2Step41CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] := by
  have nd : ((s2Step41CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step41CompletePlan : HmrEarlyStepPlan := ⟨s2Step41FrontPlan,s2Step41EarlyControlArena,s2Step41EarlyControlPlan,s2Step41CompleteMoves⟩
theorem s2Step41Complete_explicit_checked : compileHmrEarlyStepLog s2Step41EntryFBefore s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41CompleteLog=some s2Step41CompletePlan := by
  let Q := s2Step41EarlyControlPlan
  have hq := s2Step41EarlyControl_plan_checked
  have fv1 : s2Step41CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step41CompleteOut.fv.payload[2]?.getD s2Step41CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step41CompleteOut.fv.payload[3]?.getD s2Step41CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step41CompleteOut.fv.payload[4]?.getD s2Step41CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step41EntryFBefore s2Step41EarlyControlArena s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41CompleteLog s2Step41FrontPlan Q
    s2Step41Front_checked s2Step41Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step41Complete_owned s2Step41Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step41EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 777 798 s2Step41CompleteOut.fv.second (s2Step41CompleteOut.fv.payload[2]?.getD s2Step41CompleteOut.fv.sign) (s2Step41CompleteOut.fv.payload[3]?.getD s2Step41CompleteOut.fv.sign) (s2Step41CompleteOut.fv.payload[4]?.getD s2Step41CompleteOut.fv.sign) 797 18 s2Step41EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step41Complete_checked : (compileHmrEarlyStepLog s2Step41EntryFBefore s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 18 s2Step41CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step41Complete_explicit_checked]
  rfl
def s2Step42CompleteMoves : List (Wire × Wire) := [(800,247),(799,759)]
def s2Step42CompleteOut : WindowBank := s2Step42FrontOut.repacked s2Step42CompleteMoves
def s2Step42CompleteLog : HmrEarlyStepLog := ⟨s2Step42FrontLog,s2Step42CompleteMoves,s2Step42EarlyControlLog⟩
def s2Step42CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,759),(760,787),(788,790),(791,792),(793,800),(801,844),(848,849),(850,851),(852,856),(857,860),(861,862)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step42CompleteRelocationMove0Borrowed : Arena := ⟨s2Step42ExitGvAfter.live∪{247},Finset.union_subset s2Step42ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step42CompleteRelocation_move0_owned : 800∈s2Step42ExitGvAfter.live := by norm_num [s2Step42ExitGvAfter,s2Step42ExitFvAfter,arenaWires]
theorem s2Step42CompleteRelocation_move0_reserve : s2Step42ExitGvAfter.reserve {247}=some s2Step42CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step42ExitGvAfter,s2Step42ExitFvAfter,arenaWires]
  · rfl
theorem s2Step42CompleteRelocation_move0_retire : s2Step42CompleteRelocationMove0Borrowed.retireSet {800}=s2Step42CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step42CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step42CompleteRelocationMove0Borrowed,s2Step42ExitGvAfter,s2Step42ExitFvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step42CompleteRelocationMove1Borrowed : Arena := ⟨s2Step42CompleteRelocationMove0After.live∪{759},Finset.union_subset s2Step42CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step42CompleteRelocation_move1_owned : 799∈s2Step42CompleteRelocationMove0After.live := by norm_num [s2Step42CompleteRelocationMove0After,arenaWires]
theorem s2Step42CompleteRelocation_move1_reserve : s2Step42CompleteRelocationMove0After.reserve {759}=some s2Step42CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step42CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step42CompleteRelocation_move1_retire : s2Step42CompleteRelocationMove1Borrowed.retireSet {799}=s2Step42EarlyControlArena := by
  unfold Arena.retireSet s2Step42EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step42CompleteRelocationMove1Borrowed,s2Step42CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step42CompleteRelocation_checked : s2Step42ExitGvAfter.checkRepack [(800,247),(799,759)]=some s2Step42EarlyControlArena := by
  have tail2 : s2Step42EarlyControlArena.checkRepack []=some s2Step42EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step42CompleteRelocationMove0After s2Step42CompleteRelocationMove1Borrowed s2Step42EarlyControlArena s2Step42EarlyControlArena 799 759 []
    s2Step42CompleteRelocation_move1_owned s2Step42CompleteRelocation_move1_reserve s2Step42CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step42ExitGvAfter s2Step42CompleteRelocationMove0Borrowed s2Step42CompleteRelocationMove0After s2Step42EarlyControlArena 800 247 [(799,759)]
    s2Step42CompleteRelocation_move0_owned s2Step42CompleteRelocation_move0_reserve s2Step42CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step42Complete_repack : s2Step42ExitGvAfter.checkRepack s2Step42CompleteMoves=some s2Step42EarlyControlArena := by
  simpa only [s2Step42CompleteMoves] using s2Step42CompleteRelocation_checked
theorem s2Step42Complete_owned : (s2Step42CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step42EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Complete_apart : List.Disjoint (s2Step42CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] := by
  have nd : ((s2Step42CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 791, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step42CompletePlan : HmrEarlyStepPlan := ⟨s2Step42FrontPlan,s2Step42EarlyControlArena,s2Step42EarlyControlPlan,s2Step42CompleteMoves⟩
theorem s2Step42Complete_explicit_checked : compileHmrEarlyStepLog s2Step42EntryFBefore s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42CompleteLog=some s2Step42CompletePlan := by
  let Q := s2Step42EarlyControlPlan
  have hq := s2Step42EarlyControl_plan_checked
  have fv1 : s2Step42CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step42CompleteOut.fv.payload[2]?.getD s2Step42CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step42CompleteOut.fv.payload[3]?.getD s2Step42CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step42CompleteOut.fv.payload[4]?.getD s2Step42CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step42EntryFBefore s2Step42EarlyControlArena s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42CompleteLog s2Step42FrontPlan Q
    s2Step42Front_checked s2Step42Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step42Complete_owned s2Step42Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step42EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 s2Step42CompleteOut.fv.second (s2Step42CompleteOut.fv.payload[2]?.getD s2Step42CompleteOut.fv.sign) (s2Step42CompleteOut.fv.payload[3]?.getD s2Step42CompleteOut.fv.sign) (s2Step42CompleteOut.fv.payload[4]?.getD s2Step42CompleteOut.fv.sign) 791 18 s2Step42EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step42Complete_checked : (compileHmrEarlyStepLog s2Step42EntryFBefore s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 18 s2Step42CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step42Complete_explicit_checked]
  rfl
def s2Step43CompleteMoves : List (Wire × Wire) := [(802,246),(801,758)]
def s2Step43CompleteOut : WindowBank := s2Step43FrontOut.repacked s2Step43CompleteMoves
def s2Step43CompleteLog : HmrEarlyStepLog := ⟨s2Step43FrontLog,s2Step43CompleteMoves,s2Step43EarlyControlLog⟩
def s2Step43CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,758),(759,787),(788,790),(793,800),(801,802),(803,844),(848,849),(850,851),(852,856),(857,860),(861,862)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step43CompleteRelocationMove0Borrowed : Arena := ⟨s2Step43ExitGvAfter.live∪{246},Finset.union_subset s2Step43ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step43CompleteRelocation_move0_owned : 802∈s2Step43ExitGvAfter.live := by norm_num [s2Step43ExitGvAfter,arenaWires]
theorem s2Step43CompleteRelocation_move0_reserve : s2Step43ExitGvAfter.reserve {246}=some s2Step43CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step43ExitGvAfter,arenaWires]
  · rfl
theorem s2Step43CompleteRelocation_move0_retire : s2Step43CompleteRelocationMove0Borrowed.retireSet {802}=s2Step43CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step43CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step43CompleteRelocationMove0Borrowed,s2Step43ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step43CompleteRelocationMove1Borrowed : Arena := ⟨s2Step43CompleteRelocationMove0After.live∪{758},Finset.union_subset s2Step43CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step43CompleteRelocation_move1_owned : 801∈s2Step43CompleteRelocationMove0After.live := by norm_num [s2Step43CompleteRelocationMove0After,arenaWires]
theorem s2Step43CompleteRelocation_move1_reserve : s2Step43CompleteRelocationMove0After.reserve {758}=some s2Step43CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step43CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step43CompleteRelocation_move1_retire : s2Step43CompleteRelocationMove1Borrowed.retireSet {801}=s2Step43EarlyControlArena := by
  unfold Arena.retireSet s2Step43EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step43CompleteRelocationMove1Borrowed,s2Step43CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step43CompleteRelocation_checked : s2Step43ExitGvAfter.checkRepack [(802,246),(801,758)]=some s2Step43EarlyControlArena := by
  have tail2 : s2Step43EarlyControlArena.checkRepack []=some s2Step43EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step43CompleteRelocationMove0After s2Step43CompleteRelocationMove1Borrowed s2Step43EarlyControlArena s2Step43EarlyControlArena 801 758 []
    s2Step43CompleteRelocation_move1_owned s2Step43CompleteRelocation_move1_reserve s2Step43CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step43ExitGvAfter s2Step43CompleteRelocationMove0Borrowed s2Step43CompleteRelocationMove0After s2Step43EarlyControlArena 802 246 [(801,758)]
    s2Step43CompleteRelocation_move0_owned s2Step43CompleteRelocation_move0_reserve s2Step43CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step43Complete_repack : s2Step43ExitGvAfter.checkRepack s2Step43CompleteMoves=some s2Step43EarlyControlArena := by
  simpa only [s2Step43CompleteMoves] using s2Step43CompleteRelocation_checked
theorem s2Step43Complete_owned : (s2Step43CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step43EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Complete_apart : List.Disjoint (s2Step43CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] := by
  have nd : ((s2Step43CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step43CompletePlan : HmrEarlyStepPlan := ⟨s2Step43FrontPlan,s2Step43EarlyControlArena,s2Step43EarlyControlPlan,s2Step43CompleteMoves⟩
theorem s2Step43Complete_explicit_checked : compileHmrEarlyStepLog s2Step43EntryFBefore s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43CompleteLog=some s2Step43CompletePlan := by
  let Q := s2Step43EarlyControlPlan
  have hq := s2Step43EarlyControl_plan_checked
  have fv1 : s2Step43CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step43CompleteOut.fv.payload[2]?.getD s2Step43CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step43CompleteOut.fv.payload[3]?.getD s2Step43CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step43CompleteOut.fv.payload[4]?.getD s2Step43CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step43EntryFBefore s2Step43EarlyControlArena s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43CompleteLog s2Step43FrontPlan Q
    s2Step43Front_checked s2Step43Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step43Complete_owned s2Step43Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step43EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 777 798 s2Step43CompleteOut.fv.second (s2Step43CompleteOut.fv.payload[2]?.getD s2Step43CompleteOut.fv.sign) (s2Step43CompleteOut.fv.payload[3]?.getD s2Step43CompleteOut.fv.sign) (s2Step43CompleteOut.fv.payload[4]?.getD s2Step43CompleteOut.fv.sign) 799 19 s2Step43EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step43Complete_checked : (compileHmrEarlyStepLog s2Step43EntryFBefore s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 19 s2Step43CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step43Complete_explicit_checked]
  rfl
def s2Step44CompleteMoves : List (Wire × Wire) := [(804,245)]
def s2Step44CompleteOut : WindowBank := s2Step44FrontOut.repacked s2Step44CompleteMoves
def s2Step44CompleteLog : HmrEarlyStepLog := ⟨s2Step44FrontLog,s2Step44CompleteMoves,s2Step44EarlyControlLog⟩
def s2Step44CompleteMoveArena : Arena := ⟨s2Step44ExitGvAfter.live∪{245},Finset.union_subset s2Step44ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step44Complete_repack : s2Step44ExitGvAfter.checkRepack s2Step44CompleteMoves=some s2Step44EarlyControlArena := by
  have owned : 804∈s2Step44ExitGvAfter.live := by norm_num [s2Step44ExitGvAfter,arenaWires]
  have reserve : s2Step44ExitGvAfter.reserve {245}=some s2Step44CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step44ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step44CompleteMoveArena.retireSet {804}=s2Step44EarlyControlArena := by
    unfold Arena.retireSet s2Step44EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step44CompleteMoveArena,s2Step44ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step44CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step44CompleteMoveArena.retireSet {804}).checkRepack []=some s2Step44EarlyControlArena
  rw [retired]
  rfl
theorem s2Step44Complete_owned : (s2Step44CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step44EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Complete_apart : List.Disjoint (s2Step44CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] := by
  have nd : ((s2Step44CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 801, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step44CompletePlan : HmrEarlyStepPlan := ⟨s2Step44FrontPlan,s2Step44EarlyControlArena,s2Step44EarlyControlPlan,s2Step44CompleteMoves⟩
theorem s2Step44Complete_explicit_checked : compileHmrEarlyStepLog s2Step44EntryFBefore s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44CompleteLog=some s2Step44CompletePlan := by
  let Q := s2Step44EarlyControlPlan
  have hq := s2Step44EarlyControl_plan_checked
  have fv1 : s2Step44CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step44CompleteOut.fv.payload[2]?.getD s2Step44CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step44CompleteOut.fv.payload[3]?.getD s2Step44CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step44CompleteOut.fv.payload[4]?.getD s2Step44CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step44EntryFBefore s2Step44EarlyControlArena s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44CompleteLog s2Step44FrontPlan Q
    s2Step44Front_checked s2Step44Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step44Complete_owned s2Step44Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step44EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 s2Step44CompleteOut.fv.second (s2Step44CompleteOut.fv.payload[2]?.getD s2Step44CompleteOut.fv.sign) (s2Step44CompleteOut.fv.payload[3]?.getD s2Step44CompleteOut.fv.sign) (s2Step44CompleteOut.fv.payload[4]?.getD s2Step44CompleteOut.fv.sign) 801 19 s2Step44EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step44Complete_checked : (compileHmrEarlyStepLog s2Step44EntryFBefore s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 19 s2Step44CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step44Complete_explicit_checked]
  rfl
def s2Step45CompleteMoves : List (Wire × Wire) := [(803,757)]
def s2Step45CompleteOut : WindowBank := s2Step45FrontOut.repacked s2Step45CompleteMoves
def s2Step45CompleteLog : HmrEarlyStepLog := ⟨s2Step45FrontLog,s2Step45CompleteMoves,s2Step45EarlyControlLog⟩
def s2Step45CompleteMoveArena : Arena := ⟨s2Step45ExitGvAfter.live∪{757},Finset.union_subset s2Step45ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step45Complete_repack : s2Step45ExitGvAfter.checkRepack s2Step45CompleteMoves=some s2Step45EarlyControlArena := by
  have owned : 803∈s2Step45ExitGvAfter.live := by norm_num [s2Step45ExitGvAfter,arenaWires]
  have reserve : s2Step45ExitGvAfter.reserve {757}=some s2Step45CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step45ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step45CompleteMoveArena.retireSet {803}=s2Step45EarlyControlArena := by
    unfold Arena.retireSet s2Step45EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step45CompleteMoveArena,s2Step45ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step45CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step45CompleteMoveArena.retireSet {803}).checkRepack []=some s2Step45EarlyControlArena
  rw [retired]
  rfl
theorem s2Step45Complete_owned : (s2Step45CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step45EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Complete_apart : List.Disjoint (s2Step45CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 804, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] := by
  have nd : ((s2Step45CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 804, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step45CompletePlan : HmrEarlyStepPlan := ⟨s2Step45FrontPlan,s2Step45EarlyControlArena,s2Step45EarlyControlPlan,s2Step45CompleteMoves⟩
theorem s2Step45Complete_explicit_checked : compileHmrEarlyStepLog s2Step45EntryFBefore s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45CompleteLog=some s2Step45CompletePlan := by
  let Q := s2Step45EarlyControlPlan
  have hq := s2Step45EarlyControl_plan_checked
  have fv1 : s2Step45CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step45CompleteOut.fv.payload[2]?.getD s2Step45CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step45CompleteOut.fv.payload[3]?.getD s2Step45CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step45CompleteOut.fv.payload[4]?.getD s2Step45CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step45EntryFBefore s2Step45EarlyControlArena s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45CompleteLog s2Step45FrontPlan Q
    s2Step45Front_checked s2Step45Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step45Complete_owned s2Step45Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step45EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 777 798 s2Step45CompleteOut.fv.second (s2Step45CompleteOut.fv.payload[2]?.getD s2Step45CompleteOut.fv.sign) (s2Step45CompleteOut.fv.payload[3]?.getD s2Step45CompleteOut.fv.sign) (s2Step45CompleteOut.fv.payload[4]?.getD s2Step45CompleteOut.fv.sign) 804 20 s2Step45EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step45Complete_checked : (compileHmrEarlyStepLog s2Step45EntryFBefore s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 20 s2Step45CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step45Complete_explicit_checked]
  rfl
def s2Step46CompleteMoves : List (Wire × Wire) := [(806,244),(805,756)]
def s2Step46CompleteOut : WindowBank := s2Step46FrontOut.repacked s2Step46CompleteMoves
def s2Step46CompleteLog : HmrEarlyStepLog := ⟨s2Step46FrontLog,s2Step46CompleteMoves,s2Step46EarlyControlLog⟩
def s2Step46CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,756),(757,787),(788,790),(793,800),(802,806),(807,844),(848,849),(850,851),(852,862)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step46CompleteRelocationMove0Borrowed : Arena := ⟨s2Step46ExitGvAfter.live∪{244},Finset.union_subset s2Step46ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step46CompleteRelocation_move0_owned : 806∈s2Step46ExitGvAfter.live := by norm_num [s2Step46ExitGvAfter,arenaWires]
theorem s2Step46CompleteRelocation_move0_reserve : s2Step46ExitGvAfter.reserve {244}=some s2Step46CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step46ExitGvAfter,arenaWires]
  · rfl
theorem s2Step46CompleteRelocation_move0_retire : s2Step46CompleteRelocationMove0Borrowed.retireSet {806}=s2Step46CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step46CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step46CompleteRelocationMove0Borrowed,s2Step46ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step46CompleteRelocationMove1Borrowed : Arena := ⟨s2Step46CompleteRelocationMove0After.live∪{756},Finset.union_subset s2Step46CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step46CompleteRelocation_move1_owned : 805∈s2Step46CompleteRelocationMove0After.live := by norm_num [s2Step46CompleteRelocationMove0After,arenaWires]
theorem s2Step46CompleteRelocation_move1_reserve : s2Step46CompleteRelocationMove0After.reserve {756}=some s2Step46CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step46CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step46CompleteRelocation_move1_retire : s2Step46CompleteRelocationMove1Borrowed.retireSet {805}=s2Step46EarlyControlArena := by
  unfold Arena.retireSet s2Step46EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step46CompleteRelocationMove1Borrowed,s2Step46CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step46CompleteRelocation_checked : s2Step46ExitGvAfter.checkRepack [(806,244),(805,756)]=some s2Step46EarlyControlArena := by
  have tail2 : s2Step46EarlyControlArena.checkRepack []=some s2Step46EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step46CompleteRelocationMove0After s2Step46CompleteRelocationMove1Borrowed s2Step46EarlyControlArena s2Step46EarlyControlArena 805 756 []
    s2Step46CompleteRelocation_move1_owned s2Step46CompleteRelocation_move1_reserve s2Step46CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step46ExitGvAfter s2Step46CompleteRelocationMove0Borrowed s2Step46CompleteRelocationMove0After s2Step46EarlyControlArena 806 244 [(805,756)]
    s2Step46CompleteRelocation_move0_owned s2Step46CompleteRelocation_move0_reserve s2Step46CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step46Complete_repack : s2Step46ExitGvAfter.checkRepack s2Step46CompleteMoves=some s2Step46EarlyControlArena := by
  simpa only [s2Step46CompleteMoves] using s2Step46CompleteRelocation_checked
theorem s2Step46Complete_owned : (s2Step46CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step46EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Complete_apart : List.Disjoint (s2Step46CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] := by
  have nd : ((s2Step46CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step46CompletePlan : HmrEarlyStepPlan := ⟨s2Step46FrontPlan,s2Step46EarlyControlArena,s2Step46EarlyControlPlan,s2Step46CompleteMoves⟩
theorem s2Step46Complete_explicit_checked : compileHmrEarlyStepLog s2Step46EntryFBefore s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46CompleteLog=some s2Step46CompletePlan := by
  let Q := s2Step46EarlyControlPlan
  have hq := s2Step46EarlyControl_plan_checked
  have fv1 : s2Step46CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step46CompleteOut.fv.payload[2]?.getD s2Step46CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step46CompleteOut.fv.payload[3]?.getD s2Step46CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step46CompleteOut.fv.payload[4]?.getD s2Step46CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step46EntryFBefore s2Step46EarlyControlArena s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46CompleteLog s2Step46FrontPlan Q
    s2Step46Front_checked s2Step46Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step46Complete_owned s2Step46Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step46EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 798 s2Step46CompleteOut.fv.second (s2Step46CompleteOut.fv.payload[2]?.getD s2Step46CompleteOut.fv.sign) (s2Step46CompleteOut.fv.payload[3]?.getD s2Step46CompleteOut.fv.sign) (s2Step46CompleteOut.fv.payload[4]?.getD s2Step46CompleteOut.fv.sign) 803 20 s2Step46EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step46Complete_checked : (compileHmrEarlyStepLog s2Step46EntryFBefore s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 20 s2Step46CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step46Complete_explicit_checked]
  rfl
def s2Step47CompleteMoves : List (Wire × Wire) := []
def s2Step47CompleteOut : WindowBank := s2Step47FrontOut.repacked s2Step47CompleteMoves
def s2Step47CompleteLog : HmrEarlyStepLog := ⟨s2Step47FrontLog,s2Step47CompleteMoves,s2Step47EarlyControlLog⟩
theorem s2Step47Complete_repack : s2Step47ExitGvAfter.checkRepack s2Step47CompleteMoves=some s2Step47EarlyControlArena := by rfl
theorem s2Step47Complete_owned : (s2Step47CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step47EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Complete_apart : List.Disjoint (s2Step47CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [803, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] := by
  have nd : ((s2Step47CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[803, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step47CompletePlan : HmrEarlyStepPlan := ⟨s2Step47FrontPlan,s2Step47EarlyControlArena,s2Step47EarlyControlPlan,s2Step47CompleteMoves⟩
theorem s2Step47Complete_explicit_checked : compileHmrEarlyStepLog s2Step47EntryFBefore s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47CompleteLog=some s2Step47CompletePlan := by
  let Q := s2Step47EarlyControlPlan
  have hq := s2Step47EarlyControl_plan_checked
  have fv1 : s2Step47CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step47CompleteOut.fv.payload[2]?.getD s2Step47CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step47CompleteOut.fv.payload[3]?.getD s2Step47CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step47CompleteOut.fv.payload[4]?.getD s2Step47CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step47EntryFBefore s2Step47EarlyControlArena s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47CompleteLog s2Step47FrontPlan Q
    s2Step47Front_checked s2Step47Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step47Complete_owned s2Step47Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step47EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 777 803 s2Step47CompleteOut.fv.second (s2Step47CompleteOut.fv.payload[2]?.getD s2Step47CompleteOut.fv.sign) (s2Step47CompleteOut.fv.payload[3]?.getD s2Step47CompleteOut.fv.sign) (s2Step47CompleteOut.fv.payload[4]?.getD s2Step47CompleteOut.fv.sign) 798 21 s2Step47EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step47Complete_checked : (compileHmrEarlyStepLog s2Step47EntryFBefore s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 21 s2Step47CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step47Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
