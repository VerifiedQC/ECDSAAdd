import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.FusedRepackAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2EarlyControl7
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48CompleteMoves : List (Wire × Wire) := [(808,243)]
def s2Step48CompleteOut : WindowBank := s2Step48FrontOut.repacked s2Step48CompleteMoves
def s2Step48CompleteLog : HmrEarlyStepLog := ⟨s2Step48FrontLog,s2Step48CompleteMoves,s2Step48EarlyControlLog⟩
def s2Step48CompleteMoveArena : Arena := ⟨s2Step48ExitGvAfter.live∪{243},Finset.union_subset s2Step48ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step48Complete_repack : s2Step48ExitGvAfter.checkRepack s2Step48CompleteMoves=some s2Step48EarlyControlArena := by
  have owned : 808∈s2Step48ExitGvAfter.live := by norm_num [s2Step48ExitGvAfter,arenaWires]
  have reserve : s2Step48ExitGvAfter.reserve {243}=some s2Step48CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step48ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step48CompleteMoveArena.retireSet {808}=s2Step48EarlyControlArena := by
    unfold Arena.retireSet s2Step48EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step48CompleteMoveArena,s2Step48ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step48CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step48CompleteMoveArena.retireSet {808}).checkRepack []=some s2Step48EarlyControlArena
  rw [retired]
  rfl
theorem s2Step48Complete_owned : (s2Step48CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step48EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Complete_apart : List.Disjoint (s2Step48CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] := by
  have nd : ((s2Step48CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step48CompletePlan : HmrEarlyStepPlan := ⟨s2Step48FrontPlan,s2Step48EarlyControlArena,s2Step48EarlyControlPlan,s2Step48CompleteMoves⟩
theorem s2Step48Complete_explicit_checked : compileHmrEarlyStepLog s2Step48EntryFBefore s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48CompleteLog=some s2Step48CompletePlan := by
  let Q := s2Step48EarlyControlPlan
  have hq := s2Step48EarlyControl_plan_checked
  have fv1 : s2Step48CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step48CompleteOut.fv.payload[2]?.getD s2Step48CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step48CompleteOut.fv.payload[3]?.getD s2Step48CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step48CompleteOut.fv.payload[4]?.getD s2Step48CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step48EntryFBefore s2Step48EarlyControlArena s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48CompleteLog s2Step48FrontPlan Q
    s2Step48Front_checked s2Step48Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step48Complete_owned s2Step48Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step48EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 s2Step48CompleteOut.fv.second (s2Step48CompleteOut.fv.payload[2]?.getD s2Step48CompleteOut.fv.sign) (s2Step48CompleteOut.fv.payload[3]?.getD s2Step48CompleteOut.fv.sign) (s2Step48CompleteOut.fv.payload[4]?.getD s2Step48CompleteOut.fv.sign) 803 21 s2Step48EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step48Complete_checked : (compileHmrEarlyStepLog s2Step48EntryFBefore s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 21 s2Step48CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step48Complete_explicit_checked]
  rfl
def s2Step49CompleteMoves : List (Wire × Wire) := [(807,755)]
def s2Step49CompleteOut : WindowBank := s2Step49FrontOut.repacked s2Step49CompleteMoves
def s2Step49CompleteLog : HmrEarlyStepLog := ⟨s2Step49FrontLog,s2Step49CompleteMoves,s2Step49EarlyControlLog⟩
def s2Step49CompleteMoveArena : Arena := ⟨s2Step49ExitGvAfter.live∪{755},Finset.union_subset s2Step49ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step49Complete_repack : s2Step49ExitGvAfter.checkRepack s2Step49CompleteMoves=some s2Step49EarlyControlArena := by
  have owned : 807∈s2Step49ExitGvAfter.live := by norm_num [s2Step49ExitGvAfter,arenaWires]
  have reserve : s2Step49ExitGvAfter.reserve {755}=some s2Step49CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step49ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step49CompleteMoveArena.retireSet {807}=s2Step49EarlyControlArena := by
    unfold Arena.retireSet s2Step49EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step49CompleteMoveArena,s2Step49ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step49CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step49CompleteMoveArena.retireSet {807}).checkRepack []=some s2Step49EarlyControlArena
  rw [retired]
  rfl
theorem s2Step49Complete_owned : (s2Step49CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step49EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Complete_apart : List.Disjoint (s2Step49CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] := by
  have nd : ((s2Step49CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step49CompletePlan : HmrEarlyStepPlan := ⟨s2Step49FrontPlan,s2Step49EarlyControlArena,s2Step49EarlyControlPlan,s2Step49CompleteMoves⟩
theorem s2Step49Complete_explicit_checked : compileHmrEarlyStepLog s2Step49EntryFBefore s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49CompleteLog=some s2Step49CompletePlan := by
  let Q := s2Step49EarlyControlPlan
  have hq := s2Step49EarlyControl_plan_checked
  have fv1 : s2Step49CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step49CompleteOut.fv.payload[2]?.getD s2Step49CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step49CompleteOut.fv.payload[3]?.getD s2Step49CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step49CompleteOut.fv.payload[4]?.getD s2Step49CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step49EntryFBefore s2Step49EarlyControlArena s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49CompleteLog s2Step49FrontPlan Q
    s2Step49Front_checked s2Step49Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step49Complete_owned s2Step49Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step49EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 777 798 s2Step49CompleteOut.fv.second (s2Step49CompleteOut.fv.payload[2]?.getD s2Step49CompleteOut.fv.sign) (s2Step49CompleteOut.fv.payload[3]?.getD s2Step49CompleteOut.fv.sign) (s2Step49CompleteOut.fv.payload[4]?.getD s2Step49CompleteOut.fv.sign) 808 22 s2Step49EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step49Complete_checked : (compileHmrEarlyStepLog s2Step49EntryFBefore s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 22 s2Step49CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step49Complete_explicit_checked]
  rfl
def s2Step50CompleteMoves : List (Wire × Wire) := [(810,242)]
def s2Step50CompleteOut : WindowBank := s2Step50FrontOut.repacked s2Step50CompleteMoves
def s2Step50CompleteLog : HmrEarlyStepLog := ⟨s2Step50FrontLog,s2Step50CompleteMoves,s2Step50EarlyControlLog⟩
def s2Step50CompleteMoveArena : Arena := ⟨s2Step50ExitGvAfter.live∪{242},Finset.union_subset s2Step50ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step50Complete_repack : s2Step50ExitGvAfter.checkRepack s2Step50CompleteMoves=some s2Step50EarlyControlArena := by
  have owned : 810∈s2Step50ExitGvAfter.live := by norm_num [s2Step50ExitGvAfter,arenaWires]
  have reserve : s2Step50ExitGvAfter.reserve {242}=some s2Step50CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step50ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step50CompleteMoveArena.retireSet {810}=s2Step50EarlyControlArena := by
    unfold Arena.retireSet s2Step50EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step50CompleteMoveArena,s2Step50ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step50CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step50CompleteMoveArena.retireSet {810}).checkRepack []=some s2Step50EarlyControlArena
  rw [retired]
  rfl
theorem s2Step50Complete_owned : (s2Step50CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step50EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Complete_apart : List.Disjoint (s2Step50CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [798, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] := by
  have nd : ((s2Step50CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[798, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step50CompletePlan : HmrEarlyStepPlan := ⟨s2Step50FrontPlan,s2Step50EarlyControlArena,s2Step50EarlyControlPlan,s2Step50CompleteMoves⟩
theorem s2Step50Complete_explicit_checked : compileHmrEarlyStepLog s2Step50EntryFBefore s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50CompleteLog=some s2Step50CompletePlan := by
  let Q := s2Step50EarlyControlPlan
  have hq := s2Step50EarlyControl_plan_checked
  have fv1 : s2Step50CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step50CompleteOut.fv.payload[2]?.getD s2Step50CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step50CompleteOut.fv.payload[3]?.getD s2Step50CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step50CompleteOut.fv.payload[4]?.getD s2Step50CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step50EntryFBefore s2Step50EarlyControlArena s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50CompleteLog s2Step50FrontPlan Q
    s2Step50Front_checked s2Step50Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step50Complete_owned s2Step50Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step50EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 798 s2Step50CompleteOut.fv.second (s2Step50CompleteOut.fv.payload[2]?.getD s2Step50CompleteOut.fv.sign) (s2Step50CompleteOut.fv.payload[3]?.getD s2Step50CompleteOut.fv.sign) (s2Step50CompleteOut.fv.payload[4]?.getD s2Step50CompleteOut.fv.sign) 807 22 s2Step50EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step50Complete_checked : (compileHmrEarlyStepLog s2Step50EntryFBefore s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 22 s2Step50CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step50Complete_explicit_checked]
  rfl
def s2Step51CompleteMoves : List (Wire × Wire) := [(809,754)]
def s2Step51CompleteOut : WindowBank := s2Step51FrontOut.repacked s2Step51CompleteMoves
def s2Step51CompleteLog : HmrEarlyStepLog := ⟨s2Step51FrontLog,s2Step51CompleteMoves,s2Step51EarlyControlLog⟩
def s2Step51CompleteMoveArena : Arena := ⟨s2Step51ExitGvAfter.live∪{754},Finset.union_subset s2Step51ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step51Complete_repack : s2Step51ExitGvAfter.checkRepack s2Step51CompleteMoves=some s2Step51EarlyControlArena := by
  have owned : 809∈s2Step51ExitGvAfter.live := by norm_num [s2Step51ExitGvAfter,arenaWires]
  have reserve : s2Step51ExitGvAfter.reserve {754}=some s2Step51CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step51ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step51CompleteMoveArena.retireSet {809}=s2Step51EarlyControlArena := by
    unfold Arena.retireSet s2Step51EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step51CompleteMoveArena,s2Step51ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step51CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step51CompleteMoveArena.retireSet {809}).checkRepack []=some s2Step51EarlyControlArena
  rw [retired]
  rfl
theorem s2Step51Complete_owned : (s2Step51CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step51EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Complete_apart : List.Disjoint (s2Step51CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] := by
  have nd : ((s2Step51CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 808, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step51CompletePlan : HmrEarlyStepPlan := ⟨s2Step51FrontPlan,s2Step51EarlyControlArena,s2Step51EarlyControlPlan,s2Step51CompleteMoves⟩
theorem s2Step51Complete_explicit_checked : compileHmrEarlyStepLog s2Step51EntryFBefore s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51CompleteLog=some s2Step51CompletePlan := by
  let Q := s2Step51EarlyControlPlan
  have hq := s2Step51EarlyControl_plan_checked
  have fv1 : s2Step51CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step51CompleteOut.fv.payload[2]?.getD s2Step51CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step51CompleteOut.fv.payload[3]?.getD s2Step51CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step51CompleteOut.fv.payload[4]?.getD s2Step51CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step51EntryFBefore s2Step51EarlyControlArena s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51CompleteLog s2Step51FrontPlan Q
    s2Step51Front_checked s2Step51Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step51Complete_owned s2Step51Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step51EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 777 810 s2Step51CompleteOut.fv.second (s2Step51CompleteOut.fv.payload[2]?.getD s2Step51CompleteOut.fv.sign) (s2Step51CompleteOut.fv.payload[3]?.getD s2Step51CompleteOut.fv.sign) (s2Step51CompleteOut.fv.payload[4]?.getD s2Step51CompleteOut.fv.sign) 808 23 s2Step51EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step51Complete_checked : (compileHmrEarlyStepLog s2Step51EntryFBefore s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 23 s2Step51CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step51Complete_explicit_checked]
  rfl
def s2Step52CompleteMoves : List (Wire × Wire) := [(812,241),(811,753)]
def s2Step52CompleteOut : WindowBank := s2Step52FrontOut.repacked s2Step52CompleteMoves
def s2Step52CompleteLog : HmrEarlyStepLog := ⟨s2Step52FrontLog,s2Step52CompleteMoves,s2Step52EarlyControlLog⟩
def s2Step52CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,753),(754,787),(788,790),(791,792),(793,800),(801,803),(804,807),(809,812),(813,844),(848,849),(850,851),(852,865)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step52CompleteRelocationMove0Borrowed : Arena := ⟨s2Step52ExitGvAfter.live∪{241},Finset.union_subset s2Step52ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step52CompleteRelocation_move0_owned : 812∈s2Step52ExitGvAfter.live := by norm_num [s2Step52ExitGvAfter,arenaWires]
theorem s2Step52CompleteRelocation_move0_reserve : s2Step52ExitGvAfter.reserve {241}=some s2Step52CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step52ExitGvAfter,arenaWires]
  · rfl
theorem s2Step52CompleteRelocation_move0_retire : s2Step52CompleteRelocationMove0Borrowed.retireSet {812}=s2Step52CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step52CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step52CompleteRelocationMove0Borrowed,s2Step52ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step52CompleteRelocationMove1Borrowed : Arena := ⟨s2Step52CompleteRelocationMove0After.live∪{753},Finset.union_subset s2Step52CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step52CompleteRelocation_move1_owned : 811∈s2Step52CompleteRelocationMove0After.live := by norm_num [s2Step52CompleteRelocationMove0After,arenaWires]
theorem s2Step52CompleteRelocation_move1_reserve : s2Step52CompleteRelocationMove0After.reserve {753}=some s2Step52CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step52CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step52CompleteRelocation_move1_retire : s2Step52CompleteRelocationMove1Borrowed.retireSet {811}=s2Step52EarlyControlArena := by
  unfold Arena.retireSet s2Step52EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step52CompleteRelocationMove1Borrowed,s2Step52CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step52CompleteRelocation_checked : s2Step52ExitGvAfter.checkRepack [(812,241),(811,753)]=some s2Step52EarlyControlArena := by
  have tail2 : s2Step52EarlyControlArena.checkRepack []=some s2Step52EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step52CompleteRelocationMove0After s2Step52CompleteRelocationMove1Borrowed s2Step52EarlyControlArena s2Step52EarlyControlArena 811 753 []
    s2Step52CompleteRelocation_move1_owned s2Step52CompleteRelocation_move1_reserve s2Step52CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step52ExitGvAfter s2Step52CompleteRelocationMove0Borrowed s2Step52CompleteRelocationMove0After s2Step52EarlyControlArena 812 241 [(811,753)]
    s2Step52CompleteRelocation_move0_owned s2Step52CompleteRelocation_move0_reserve s2Step52CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step52Complete_repack : s2Step52ExitGvAfter.checkRepack s2Step52CompleteMoves=some s2Step52EarlyControlArena := by
  simpa only [s2Step52CompleteMoves] using s2Step52CompleteRelocation_checked
theorem s2Step52Complete_owned : (s2Step52CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step52EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Complete_apart : List.Disjoint (s2Step52CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] := by
  have nd : ((s2Step52CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step52CompletePlan : HmrEarlyStepPlan := ⟨s2Step52FrontPlan,s2Step52EarlyControlArena,s2Step52EarlyControlPlan,s2Step52CompleteMoves⟩
theorem s2Step52Complete_explicit_checked : compileHmrEarlyStepLog s2Step52EntryFBefore s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52CompleteLog=some s2Step52CompletePlan := by
  let Q := s2Step52EarlyControlPlan
  have hq := s2Step52EarlyControl_plan_checked
  have fv1 : s2Step52CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step52CompleteOut.fv.payload[2]?.getD s2Step52CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step52CompleteOut.fv.payload[3]?.getD s2Step52CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step52CompleteOut.fv.payload[4]?.getD s2Step52CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step52EntryFBefore s2Step52EarlyControlArena s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52CompleteLog s2Step52FrontPlan Q
    s2Step52Front_checked s2Step52Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step52Complete_owned s2Step52Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step52EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 s2Step52CompleteOut.fv.second (s2Step52CompleteOut.fv.payload[2]?.getD s2Step52CompleteOut.fv.sign) (s2Step52CompleteOut.fv.payload[3]?.getD s2Step52CompleteOut.fv.sign) (s2Step52CompleteOut.fv.payload[4]?.getD s2Step52CompleteOut.fv.sign) 809 23 s2Step52EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step52Complete_checked : (compileHmrEarlyStepLog s2Step52EntryFBefore s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 23 s2Step52CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step52Complete_explicit_checked]
  rfl
def s2Step53CompleteMoves : List (Wire × Wire) := []
def s2Step53CompleteOut : WindowBank := s2Step53FrontOut.repacked s2Step53CompleteMoves
def s2Step53CompleteLog : HmrEarlyStepLog := ⟨s2Step53FrontLog,s2Step53CompleteMoves,s2Step53EarlyControlLog⟩
theorem s2Step53Complete_repack : s2Step53ExitGvAfter.checkRepack s2Step53CompleteMoves=some s2Step53EarlyControlArena := by rfl
theorem s2Step53Complete_owned : (s2Step53CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step53EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Complete_apart : List.Disjoint (s2Step53CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] := by
  have nd : ((s2Step53CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step53CompletePlan : HmrEarlyStepPlan := ⟨s2Step53FrontPlan,s2Step53EarlyControlArena,s2Step53EarlyControlPlan,s2Step53CompleteMoves⟩
theorem s2Step53Complete_explicit_checked : compileHmrEarlyStepLog s2Step53EntryFBefore s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53CompleteLog=some s2Step53CompletePlan := by
  let Q := s2Step53EarlyControlPlan
  have hq := s2Step53EarlyControl_plan_checked
  have fv1 : s2Step53CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step53CompleteOut.fv.payload[2]?.getD s2Step53CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step53CompleteOut.fv.payload[3]?.getD s2Step53CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step53CompleteOut.fv.payload[4]?.getD s2Step53CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step53EntryFBefore s2Step53EarlyControlArena s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53CompleteLog s2Step53FrontPlan Q
    s2Step53Front_checked s2Step53Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step53Complete_owned s2Step53Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step53EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 777 810 s2Step53CompleteOut.fv.second (s2Step53CompleteOut.fv.payload[2]?.getD s2Step53CompleteOut.fv.sign) (s2Step53CompleteOut.fv.payload[3]?.getD s2Step53CompleteOut.fv.sign) (s2Step53CompleteOut.fv.payload[4]?.getD s2Step53CompleteOut.fv.sign) 811 24 s2Step53EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step53Complete_checked : (compileHmrEarlyStepLog s2Step53EntryFBefore s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 24 s2Step53CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step53Complete_explicit_checked]
  rfl
def s2Step54CompleteMoves : List (Wire × Wire) := [(815,240)]
def s2Step54CompleteOut : WindowBank := s2Step54FrontOut.repacked s2Step54CompleteMoves
def s2Step54CompleteLog : HmrEarlyStepLog := ⟨s2Step54FrontLog,s2Step54CompleteMoves,s2Step54EarlyControlLog⟩
def s2Step54CompleteMoveArena : Arena := ⟨s2Step54ExitGvAfter.live∪{240},Finset.union_subset s2Step54ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step54Complete_repack : s2Step54ExitGvAfter.checkRepack s2Step54CompleteMoves=some s2Step54EarlyControlArena := by
  have owned : 815∈s2Step54ExitGvAfter.live := by norm_num [s2Step54ExitGvAfter,arenaWires]
  have reserve : s2Step54ExitGvAfter.reserve {240}=some s2Step54CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step54ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step54CompleteMoveArena.retireSet {815}=s2Step54EarlyControlArena := by
    unfold Arena.retireSet s2Step54EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step54CompleteMoveArena,s2Step54ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step54CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step54CompleteMoveArena.retireSet {815}).checkRepack []=some s2Step54EarlyControlArena
  rw [retired]
  rfl
theorem s2Step54Complete_owned : (s2Step54CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step54EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Complete_apart : List.Disjoint (s2Step54CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] := by
  have nd : ((s2Step54CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step54CompletePlan : HmrEarlyStepPlan := ⟨s2Step54FrontPlan,s2Step54EarlyControlArena,s2Step54EarlyControlPlan,s2Step54CompleteMoves⟩
theorem s2Step54Complete_explicit_checked : compileHmrEarlyStepLog s2Step54EntryFBefore s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54CompleteLog=some s2Step54CompletePlan := by
  let Q := s2Step54EarlyControlPlan
  have hq := s2Step54EarlyControl_plan_checked
  have fv1 : s2Step54CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step54CompleteOut.fv.payload[2]?.getD s2Step54CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step54CompleteOut.fv.payload[3]?.getD s2Step54CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step54CompleteOut.fv.payload[4]?.getD s2Step54CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step54EntryFBefore s2Step54EarlyControlArena s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54CompleteLog s2Step54FrontPlan Q
    s2Step54Front_checked s2Step54Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step54Complete_owned s2Step54Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step54EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 810 s2Step54CompleteOut.fv.second (s2Step54CompleteOut.fv.payload[2]?.getD s2Step54CompleteOut.fv.sign) (s2Step54CompleteOut.fv.payload[3]?.getD s2Step54CompleteOut.fv.sign) (s2Step54CompleteOut.fv.payload[4]?.getD s2Step54CompleteOut.fv.sign) 807 24 s2Step54EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step54Complete_checked : (compileHmrEarlyStepLog s2Step54EntryFBefore s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 24 s2Step54CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step54Complete_explicit_checked]
  rfl
def s2Step55CompleteMoves : List (Wire × Wire) := [(814,752)]
def s2Step55CompleteOut : WindowBank := s2Step55FrontOut.repacked s2Step55CompleteMoves
def s2Step55CompleteLog : HmrEarlyStepLog := ⟨s2Step55FrontLog,s2Step55CompleteMoves,s2Step55EarlyControlLog⟩
def s2Step55CompleteMoveArena : Arena := ⟨s2Step55ExitGvAfter.live∪{752},Finset.union_subset s2Step55ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step55Complete_repack : s2Step55ExitGvAfter.checkRepack s2Step55CompleteMoves=some s2Step55EarlyControlArena := by
  have owned : 814∈s2Step55ExitGvAfter.live := by norm_num [s2Step55ExitGvAfter,arenaWires]
  have reserve : s2Step55ExitGvAfter.reserve {752}=some s2Step55CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step55ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step55CompleteMoveArena.retireSet {814}=s2Step55EarlyControlArena := by
    unfold Arena.retireSet s2Step55EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step55CompleteMoveArena,s2Step55ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step55CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step55CompleteMoveArena.retireSet {814}).checkRepack []=some s2Step55EarlyControlArena
  rw [retired]
  rfl
theorem s2Step55Complete_owned : (s2Step55CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step55EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Complete_apart : List.Disjoint (s2Step55CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] := by
  have nd : ((s2Step55CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step55CompletePlan : HmrEarlyStepPlan := ⟨s2Step55FrontPlan,s2Step55EarlyControlArena,s2Step55EarlyControlPlan,s2Step55CompleteMoves⟩
theorem s2Step55Complete_explicit_checked : compileHmrEarlyStepLog s2Step55EntryFBefore s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55CompleteLog=some s2Step55CompletePlan := by
  let Q := s2Step55EarlyControlPlan
  have hq := s2Step55EarlyControl_plan_checked
  have fv1 : s2Step55CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step55CompleteOut.fv.payload[2]?.getD s2Step55CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step55CompleteOut.fv.payload[3]?.getD s2Step55CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step55CompleteOut.fv.payload[4]?.getD s2Step55CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step55EntryFBefore s2Step55EarlyControlArena s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55CompleteLog s2Step55FrontPlan Q
    s2Step55Front_checked s2Step55Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step55Complete_owned s2Step55Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step55EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 777 815 s2Step55CompleteOut.fv.second (s2Step55CompleteOut.fv.payload[2]?.getD s2Step55CompleteOut.fv.sign) (s2Step55CompleteOut.fv.payload[3]?.getD s2Step55CompleteOut.fv.sign) (s2Step55CompleteOut.fv.payload[4]?.getD s2Step55CompleteOut.fv.sign) 787 25 s2Step55EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step55Complete_checked : (compileHmrEarlyStepLog s2Step55EntryFBefore s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 25 s2Step55CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step55Complete_explicit_checked]
  rfl
def s2Step56CompleteMoves : List (Wire × Wire) := [(817,239)]
def s2Step56CompleteOut : WindowBank := s2Step56FrontOut.repacked s2Step56CompleteMoves
def s2Step56CompleteLog : HmrEarlyStepLog := ⟨s2Step56FrontLog,s2Step56CompleteMoves,s2Step56EarlyControlLog⟩
def s2Step56CompleteMoveArena : Arena := ⟨s2Step56ExitGvAfter.live∪{239},Finset.union_subset s2Step56ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step56Complete_repack : s2Step56ExitGvAfter.checkRepack s2Step56CompleteMoves=some s2Step56EarlyControlArena := by
  have owned : 817∈s2Step56ExitGvAfter.live := by norm_num [s2Step56ExitGvAfter,arenaWires]
  have reserve : s2Step56ExitGvAfter.reserve {239}=some s2Step56CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step56ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step56CompleteMoveArena.retireSet {817}=s2Step56EarlyControlArena := by
    unfold Arena.retireSet s2Step56EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step56CompleteMoveArena,s2Step56ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step56CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step56CompleteMoveArena.retireSet {817}).checkRepack []=some s2Step56EarlyControlArena
  rw [retired]
  rfl
theorem s2Step56Complete_owned : (s2Step56CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step56EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Complete_apart : List.Disjoint (s2Step56CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step56CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step56CompletePlan : HmrEarlyStepPlan := ⟨s2Step56FrontPlan,s2Step56EarlyControlArena,s2Step56EarlyControlPlan,s2Step56CompleteMoves⟩
theorem s2Step56Complete_explicit_checked : compileHmrEarlyStepLog s2Step56EntryFBefore s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56CompleteLog=some s2Step56CompletePlan := by
  let Q := s2Step56EarlyControlPlan
  have hq := s2Step56EarlyControl_plan_checked
  have fv1 : s2Step56CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step56CompleteOut.fv.payload[2]?.getD s2Step56CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step56CompleteOut.fv.payload[3]?.getD s2Step56CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step56CompleteOut.fv.payload[4]?.getD s2Step56CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step56EntryFBefore s2Step56EarlyControlArena s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56CompleteLog s2Step56FrontPlan Q
    s2Step56Front_checked s2Step56Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step56Complete_owned s2Step56Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step56EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 s2Step56CompleteOut.fv.second (s2Step56CompleteOut.fv.payload[2]?.getD s2Step56CompleteOut.fv.sign) (s2Step56CompleteOut.fv.payload[3]?.getD s2Step56CompleteOut.fv.sign) (s2Step56CompleteOut.fv.payload[4]?.getD s2Step56CompleteOut.fv.sign) 814 25 s2Step56EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step56Complete_checked : (compileHmrEarlyStepLog s2Step56EntryFBefore s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step56CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step56Complete_explicit_checked]
  rfl
def s2Step57CompleteMoves : List (Wire × Wire) := [(820,238),(816,751)]
def s2Step57CompleteOut : WindowBank := s2Step57FrontOut.repacked s2Step57CompleteMoves
def s2Step57CompleteLog : HmrEarlyStepLog := ⟨s2Step57FrontLog,s2Step57CompleteMoves,s2Step57EarlyControlLog⟩
def s2Step57CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,751),(752,790),(791,792),(793,800),(801,807),(809,812),(813,814),(815,820),(821,844),(848,849),(850,851),(852,867)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step57CompleteRelocationMove0Borrowed : Arena := ⟨s2Step57ExitGvAfter.live∪{238},Finset.union_subset s2Step57ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step57CompleteRelocation_move0_owned : 820∈s2Step57ExitGvAfter.live := by norm_num [s2Step57ExitGvAfter,arenaWires]
theorem s2Step57CompleteRelocation_move0_reserve : s2Step57ExitGvAfter.reserve {238}=some s2Step57CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step57ExitGvAfter,arenaWires]
  · rfl
theorem s2Step57CompleteRelocation_move0_retire : s2Step57CompleteRelocationMove0Borrowed.retireSet {820}=s2Step57CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step57CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step57CompleteRelocationMove0Borrowed,s2Step57ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step57CompleteRelocationMove1Borrowed : Arena := ⟨s2Step57CompleteRelocationMove0After.live∪{751},Finset.union_subset s2Step57CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step57CompleteRelocation_move1_owned : 816∈s2Step57CompleteRelocationMove0After.live := by norm_num [s2Step57CompleteRelocationMove0After,arenaWires]
theorem s2Step57CompleteRelocation_move1_reserve : s2Step57CompleteRelocationMove0After.reserve {751}=some s2Step57CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step57CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step57CompleteRelocation_move1_retire : s2Step57CompleteRelocationMove1Borrowed.retireSet {816}=s2Step57EarlyControlArena := by
  unfold Arena.retireSet s2Step57EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step57CompleteRelocationMove1Borrowed,s2Step57CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step57CompleteRelocation_checked : s2Step57ExitGvAfter.checkRepack [(820,238),(816,751)]=some s2Step57EarlyControlArena := by
  have tail2 : s2Step57EarlyControlArena.checkRepack []=some s2Step57EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step57CompleteRelocationMove0After s2Step57CompleteRelocationMove1Borrowed s2Step57EarlyControlArena s2Step57EarlyControlArena 816 751 []
    s2Step57CompleteRelocation_move1_owned s2Step57CompleteRelocation_move1_reserve s2Step57CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step57ExitGvAfter s2Step57CompleteRelocationMove0Borrowed s2Step57CompleteRelocationMove0After s2Step57EarlyControlArena 820 238 [(816,751)]
    s2Step57CompleteRelocation_move0_owned s2Step57CompleteRelocation_move0_reserve s2Step57CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step57Complete_repack : s2Step57ExitGvAfter.checkRepack s2Step57CompleteMoves=some s2Step57EarlyControlArena := by
  simpa only [s2Step57CompleteMoves] using s2Step57CompleteRelocation_checked
theorem s2Step57Complete_owned : (s2Step57CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step57EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Complete_apart : List.Disjoint (s2Step57CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step57CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step57CompletePlan : HmrEarlyStepPlan := ⟨s2Step57FrontPlan,s2Step57EarlyControlArena,s2Step57EarlyControlPlan,s2Step57CompleteMoves⟩
theorem s2Step57Complete_explicit_checked : compileHmrEarlyStepLog s2Step57EntryFBefore s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57CompleteLog=some s2Step57CompletePlan := by
  let Q := s2Step57EarlyControlPlan
  have hq := s2Step57EarlyControl_plan_checked
  have fv1 : s2Step57CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step57CompleteOut.fv.payload[2]?.getD s2Step57CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step57CompleteOut.fv.payload[3]?.getD s2Step57CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step57CompleteOut.fv.payload[4]?.getD s2Step57CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step57EntryFBefore s2Step57EarlyControlArena s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57CompleteLog s2Step57FrontPlan Q
    s2Step57Front_checked s2Step57Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step57Complete_owned s2Step57Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step57EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 s2Step57CompleteOut.fv.second (s2Step57CompleteOut.fv.payload[2]?.getD s2Step57CompleteOut.fv.sign) (s2Step57CompleteOut.fv.payload[3]?.getD s2Step57CompleteOut.fv.sign) (s2Step57CompleteOut.fv.payload[4]?.getD s2Step57CompleteOut.fv.sign) 817 25 s2Step57EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step57Complete_checked : (compileHmrEarlyStepLog s2Step57EntryFBefore s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step57CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step57Complete_explicit_checked]
  rfl
def s2Step58CompleteMoves : List (Wire × Wire) := []
def s2Step58CompleteOut : WindowBank := s2Step58FrontOut.repacked s2Step58CompleteMoves
def s2Step58CompleteLog : HmrEarlyStepLog := ⟨s2Step58FrontLog,s2Step58CompleteMoves,s2Step58EarlyControlLog⟩
theorem s2Step58Complete_repack : s2Step58ExitGvAfter.checkRepack s2Step58CompleteMoves=some s2Step58EarlyControlArena := by rfl
theorem s2Step58Complete_owned : (s2Step58CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step58EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Complete_apart : List.Disjoint (s2Step58CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 816, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step58CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 816, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step58CompletePlan : HmrEarlyStepPlan := ⟨s2Step58FrontPlan,s2Step58EarlyControlArena,s2Step58EarlyControlPlan,s2Step58CompleteMoves⟩
theorem s2Step58Complete_explicit_checked : compileHmrEarlyStepLog s2Step58EntryFBefore s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58CompleteLog=some s2Step58CompletePlan := by
  let Q := s2Step58EarlyControlPlan
  have hq := s2Step58EarlyControl_plan_checked
  have fv1 : s2Step58CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step58CompleteOut.fv.payload[2]?.getD s2Step58CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step58CompleteOut.fv.payload[3]?.getD s2Step58CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step58CompleteOut.fv.payload[4]?.getD s2Step58CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step58EntryFBefore s2Step58EarlyControlArena s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58CompleteLog s2Step58FrontPlan Q
    s2Step58Front_checked s2Step58Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step58Complete_owned s2Step58Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step58EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 815 s2Step58CompleteOut.fv.second (s2Step58CompleteOut.fv.payload[2]?.getD s2Step58CompleteOut.fv.sign) (s2Step58CompleteOut.fv.payload[3]?.getD s2Step58CompleteOut.fv.sign) (s2Step58CompleteOut.fv.payload[4]?.getD s2Step58CompleteOut.fv.sign) 816 25 s2Step58EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step58Complete_checked : (compileHmrEarlyStepLog s2Step58EntryFBefore s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step58CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step58Complete_explicit_checked]
  rfl
def s2Step59CompleteMoves : List (Wire × Wire) := []
def s2Step59CompleteOut : WindowBank := s2Step59FrontOut.repacked s2Step59CompleteMoves
def s2Step59CompleteLog : HmrEarlyStepLog := ⟨s2Step59FrontLog,s2Step59CompleteMoves,s2Step59EarlyControlLog⟩
theorem s2Step59Complete_repack : s2Step59ExitGvAfter.checkRepack s2Step59CompleteMoves=some s2Step59EarlyControlArena := by rfl
theorem s2Step59Complete_owned : (s2Step59CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step59EarlyControlArena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Complete_apart : List.Disjoint (s2Step59CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [792, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step59CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[792, 790, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step59CompletePlan : HmrEarlyStepPlan := ⟨s2Step59FrontPlan,s2Step59EarlyControlArena,s2Step59EarlyControlPlan,s2Step59CompleteMoves⟩
theorem s2Step59Complete_explicit_checked : compileHmrEarlyStepLog s2Step59EntryFBefore s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59CompleteLog=some s2Step59CompletePlan := by
  let Q := s2Step59EarlyControlPlan
  have hq := s2Step59EarlyControl_plan_checked
  have fv1 : s2Step59CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step59CompleteOut.fv.payload[2]?.getD s2Step59CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step59CompleteOut.fv.payload[3]?.getD s2Step59CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step59CompleteOut.fv.payload[4]?.getD s2Step59CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step59EntryFBefore s2Step59EarlyControlArena s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59CompleteLog s2Step59FrontPlan Q
    s2Step59Front_checked s2Step59Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step59Complete_owned s2Step59Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step59EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 792 s2Step59CompleteOut.fv.second (s2Step59CompleteOut.fv.payload[2]?.getD s2Step59CompleteOut.fv.sign) (s2Step59CompleteOut.fv.payload[3]?.getD s2Step59CompleteOut.fv.sign) (s2Step59CompleteOut.fv.payload[4]?.getD s2Step59CompleteOut.fv.sign) 790 25 s2Step59EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step59Complete_checked : (compileHmrEarlyStepLog s2Step59EntryFBefore s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step59CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step59Complete_explicit_checked]
  rfl
def s2Step60CompleteMoves : List (Wire × Wire) := [(822,237)]
def s2Step60CompleteOut : WindowBank := s2Step60FrontOut.repacked s2Step60CompleteMoves
def s2Step60CompleteLog : HmrEarlyStepLog := ⟨s2Step60FrontLog,s2Step60CompleteMoves,s2Step60EarlyControlLog⟩
def s2Step60CompleteMoveArena : Arena := ⟨s2Step60ExitGvAfter.live∪{237},Finset.union_subset s2Step60ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step60Complete_repack : s2Step60ExitGvAfter.checkRepack s2Step60CompleteMoves=some s2Step60EarlyControlArena := by
  have owned : 822∈s2Step60ExitGvAfter.live := by norm_num [s2Step60ExitGvAfter,arenaWires]
  have reserve : s2Step60ExitGvAfter.reserve {237}=some s2Step60CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step60ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step60CompleteMoveArena.retireSet {822}=s2Step60EarlyControlArena := by
    unfold Arena.retireSet s2Step60EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step60CompleteMoveArena,s2Step60ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step60CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step60CompleteMoveArena.retireSet {822}).checkRepack []=some s2Step60EarlyControlArena
  rw [retired]
  rfl
theorem s2Step60Complete_owned : (s2Step60CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step60EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Complete_apart : List.Disjoint (s2Step60CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step60CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 820, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step60CompletePlan : HmrEarlyStepPlan := ⟨s2Step60FrontPlan,s2Step60EarlyControlArena,s2Step60EarlyControlPlan,s2Step60CompleteMoves⟩
theorem s2Step60Complete_explicit_checked : compileHmrEarlyStepLog s2Step60EntryFBefore s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60CompleteLog=some s2Step60CompletePlan := by
  let Q := s2Step60EarlyControlPlan
  have hq := s2Step60EarlyControl_plan_checked
  have fv1 : s2Step60CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step60CompleteOut.fv.payload[2]?.getD s2Step60CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step60CompleteOut.fv.payload[3]?.getD s2Step60CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step60CompleteOut.fv.payload[4]?.getD s2Step60CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step60EntryFBefore s2Step60EarlyControlArena s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60CompleteLog s2Step60FrontPlan Q
    s2Step60Front_checked s2Step60Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step60Complete_owned s2Step60Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step60EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 814 s2Step60CompleteOut.fv.second (s2Step60CompleteOut.fv.payload[2]?.getD s2Step60CompleteOut.fv.sign) (s2Step60CompleteOut.fv.payload[3]?.getD s2Step60CompleteOut.fv.sign) (s2Step60CompleteOut.fv.payload[4]?.getD s2Step60CompleteOut.fv.sign) 820 25 s2Step60EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step60Complete_checked : (compileHmrEarlyStepLog s2Step60EntryFBefore s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step60CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step60Complete_explicit_checked]
  rfl
def s2Step61CompleteMoves : List (Wire × Wire) := [(819,750)]
def s2Step61CompleteOut : WindowBank := s2Step61FrontOut.repacked s2Step61CompleteMoves
def s2Step61CompleteLog : HmrEarlyStepLog := ⟨s2Step61FrontLog,s2Step61CompleteMoves,s2Step61EarlyControlLog⟩
def s2Step61CompleteMoveArena : Arena := ⟨s2Step61ExitGvAfter.live∪{750},Finset.union_subset s2Step61ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step61Complete_repack : s2Step61ExitGvAfter.checkRepack s2Step61CompleteMoves=some s2Step61EarlyControlArena := by
  have owned : 819∈s2Step61ExitGvAfter.live := by norm_num [s2Step61ExitGvAfter,arenaWires]
  have reserve : s2Step61ExitGvAfter.reserve {750}=some s2Step61CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step61ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step61CompleteMoveArena.retireSet {819}=s2Step61EarlyControlArena := by
    unfold Arena.retireSet s2Step61EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step61CompleteMoveArena,s2Step61ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step61CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step61CompleteMoveArena.retireSet {819}).checkRepack []=some s2Step61EarlyControlArena
  rw [retired]
  rfl
theorem s2Step61Complete_owned : (s2Step61CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step61EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Complete_apart : List.Disjoint (s2Step61CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [807, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step61CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[807, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step61CompletePlan : HmrEarlyStepPlan := ⟨s2Step61FrontPlan,s2Step61EarlyControlArena,s2Step61EarlyControlPlan,s2Step61CompleteMoves⟩
theorem s2Step61Complete_explicit_checked : compileHmrEarlyStepLog s2Step61EntryFBefore s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61CompleteLog=some s2Step61CompletePlan := by
  let Q := s2Step61EarlyControlPlan
  have hq := s2Step61EarlyControl_plan_checked
  have fv1 : s2Step61CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step61CompleteOut.fv.payload[2]?.getD s2Step61CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step61CompleteOut.fv.payload[3]?.getD s2Step61CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step61CompleteOut.fv.payload[4]?.getD s2Step61CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step61EntryFBefore s2Step61EarlyControlArena s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61CompleteLog s2Step61FrontPlan Q
    s2Step61Front_checked s2Step61Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step61Complete_owned s2Step61Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step61EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 807 s2Step61CompleteOut.fv.second (s2Step61CompleteOut.fv.payload[2]?.getD s2Step61CompleteOut.fv.sign) (s2Step61CompleteOut.fv.payload[3]?.getD s2Step61CompleteOut.fv.sign) (s2Step61CompleteOut.fv.payload[4]?.getD s2Step61CompleteOut.fv.sign) 817 25 s2Step61EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step61Complete_checked : (compileHmrEarlyStepLog s2Step61EntryFBefore s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 25 s2Step61CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step61Complete_explicit_checked]
  rfl
def s2Step62CompleteMoves : List (Wire × Wire) := [(821,749)]
def s2Step62CompleteOut : WindowBank := s2Step62FrontOut.repacked s2Step62CompleteMoves
def s2Step62CompleteLog : HmrEarlyStepLog := ⟨s2Step62FrontLog,s2Step62CompleteMoves,s2Step62EarlyControlLog⟩
def s2Step62CompleteMoveArena : Arena := ⟨s2Step62ExitGvAfter.live∪{749},Finset.union_subset s2Step62ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step62Complete_repack : s2Step62ExitGvAfter.checkRepack s2Step62CompleteMoves=some s2Step62EarlyControlArena := by
  have owned : 821∈s2Step62ExitGvAfter.live := by norm_num [s2Step62ExitGvAfter,arenaWires]
  have reserve : s2Step62ExitGvAfter.reserve {749}=some s2Step62CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step62ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step62CompleteMoveArena.retireSet {821}=s2Step62EarlyControlArena := by
    unfold Arena.retireSet s2Step62EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step62CompleteMoveArena,s2Step62ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step62CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step62CompleteMoveArena.retireSet {821}).checkRepack []=some s2Step62EarlyControlArena
  rw [retired]
  rfl
theorem s2Step62Complete_owned : (s2Step62CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step62EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Complete_apart : List.Disjoint (s2Step62CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := by
  have nd : ((s2Step62CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step62CompletePlan : HmrEarlyStepPlan := ⟨s2Step62FrontPlan,s2Step62EarlyControlArena,s2Step62EarlyControlPlan,s2Step62CompleteMoves⟩
theorem s2Step62Complete_explicit_checked : compileHmrEarlyStepLog s2Step62EntryFBefore s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62CompleteLog=some s2Step62CompletePlan := by
  let Q := s2Step62EarlyControlPlan
  have hq := s2Step62EarlyControl_plan_checked
  have fv1 : s2Step62CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step62CompleteOut.fv.payload[2]?.getD s2Step62CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step62CompleteOut.fv.payload[3]?.getD s2Step62CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step62CompleteOut.fv.payload[4]?.getD s2Step62CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step62EntryFBefore s2Step62EarlyControlArena s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62CompleteLog s2Step62FrontPlan Q
    s2Step62Front_checked s2Step62Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step62Complete_owned s2Step62Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step62EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 777 819 s2Step62CompleteOut.fv.second (s2Step62CompleteOut.fv.payload[2]?.getD s2Step62CompleteOut.fv.sign) (s2Step62CompleteOut.fv.payload[3]?.getD s2Step62CompleteOut.fv.sign) (s2Step62CompleteOut.fv.payload[4]?.getD s2Step62CompleteOut.fv.sign) 822 26 s2Step62EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step62Complete_checked : (compileHmrEarlyStepLog s2Step62EntryFBefore s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 26 s2Step62CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step62Complete_explicit_checked]
  rfl
def s2Step63CompleteMoves : List (Wire × Wire) := []
def s2Step63CompleteOut : WindowBank := s2Step63FrontOut.repacked s2Step63CompleteMoves
def s2Step63CompleteLog : HmrEarlyStepLog := ⟨s2Step63FrontLog,s2Step63CompleteMoves,s2Step63EarlyControlLog⟩
theorem s2Step63Complete_repack : s2Step63ExitGvAfter.checkRepack s2Step63CompleteMoves=some s2Step63EarlyControlArena := by rfl
theorem s2Step63Complete_owned : (s2Step63CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step63EarlyControlArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Complete_apart : List.Disjoint (s2Step63CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] := by
  have nd : ((s2Step63CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 821, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step63CompletePlan : HmrEarlyStepPlan := ⟨s2Step63FrontPlan,s2Step63EarlyControlArena,s2Step63EarlyControlPlan,s2Step63CompleteMoves⟩
theorem s2Step63Complete_explicit_checked : compileHmrEarlyStepLog s2Step63EntryFBefore s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63CompleteLog=some s2Step63CompletePlan := by
  let Q := s2Step63EarlyControlPlan
  have hq := s2Step63EarlyControl_plan_checked
  have fv1 : s2Step63CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step63CompleteOut.fv.payload[2]?.getD s2Step63CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step63CompleteOut.fv.payload[3]?.getD s2Step63CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step63CompleteOut.fv.payload[4]?.getD s2Step63CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step63EntryFBefore s2Step63EarlyControlArena s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63CompleteLog s2Step63FrontPlan Q
    s2Step63Front_checked s2Step63Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step63Complete_owned s2Step63Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step63EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 777 819 s2Step63CompleteOut.fv.second (s2Step63CompleteOut.fv.payload[2]?.getD s2Step63CompleteOut.fv.sign) (s2Step63CompleteOut.fv.payload[3]?.getD s2Step63CompleteOut.fv.sign) (s2Step63CompleteOut.fv.payload[4]?.getD s2Step63CompleteOut.fv.sign) 821 27 s2Step63EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step63Complete_checked : (compileHmrEarlyStepLog s2Step63EntryFBefore s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 27 s2Step63CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step63Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
