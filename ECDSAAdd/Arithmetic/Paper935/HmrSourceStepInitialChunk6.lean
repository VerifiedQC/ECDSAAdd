import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl5
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31CompleteMoves : List (Wire × Wire) := [(779,251)]
def s6Step31CompleteOut : WindowBank := s6Step31FrontOut.repacked s6Step31CompleteMoves
def s6Step31CompleteLog : HmrEarlyStepLog := ⟨s6Step31FrontLog,s6Step31CompleteMoves,s6Step31EarlyControlLog⟩
def s6Step31CompleteRelocationMove0Borrowed : Arena := ⟨s6Step31ExitGvAfter.live∪{251},Finset.union_subset s6Step31ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step31CompleteRelocation_move0_owned : 779∈s6Step31ExitGvAfter.live := by norm_num [s6Step31ExitGvAfter,arenaWires]
theorem s6Step31CompleteRelocation_move0_reserve : s6Step31ExitGvAfter.reserve {251}=some s6Step31CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step31ExitGvAfter,arenaWires]
  · rfl
theorem s6Step31CompleteRelocation_move0_retire : s6Step31CompleteRelocationMove0Borrowed.retireSet {779}=s6Step31EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step31CompleteRelocationMove0Borrowed s6Step31EarlyControlArena {779}
  change s6Step31EarlyControlArena.live=(s6Step31ExitGvAfter.live∪{251})\{779}
  apply hmrArena_update_of_filter_check s6Step31ExitGvAfter s6Step31EarlyControlArena (fun q => ([(0,251),(252,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [251] [779] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step31CompleteRelocation_checked : s6Step31ExitGvAfter.checkRepack [(779,251)]=some s6Step31EarlyControlArena := by
  have tail1 : s6Step31EarlyControlArena.checkRepack []=some s6Step31EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step31ExitGvAfter s6Step31CompleteRelocationMove0Borrowed s6Step31EarlyControlArena s6Step31EarlyControlArena 779 251 []
    s6Step31CompleteRelocation_move0_owned s6Step31CompleteRelocation_move0_reserve s6Step31CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step31Complete_repack : s6Step31ExitGvAfter.checkRepack s6Step31CompleteMoves=some s6Step31EarlyControlArena := by
  simpa only [s6Step31CompleteMoves] using s6Step31CompleteRelocation_checked
theorem s6Step31Complete_owned : (s6Step31CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step31EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Complete_apart : List.Disjoint (s6Step31CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] := by
  have nd : ((s6Step31CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step31CompletePlan : HmrEarlyStepPlan := ⟨s6Step31FrontPlan,s6Step31EarlyControlArena,s6Step31EarlyControlPlan,s6Step31CompleteMoves⟩
theorem s6Step31Complete_explicit_checked : compileHmrEarlyStepLog s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31CompleteLog=some s6Step31CompletePlan := by
  let Q := s6Step31EarlyControlPlan
  have hq := s6Step31EarlyControl_plan_checked
  have fv1 : s6Step31CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step31CompleteOut.fv.payload[2]?.getD s6Step31CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step31CompleteOut.fv.payload[3]?.getD s6Step31CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step31CompleteOut.fv.payload[4]?.getD s6Step31CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step31EntryFBefore s6Step31EarlyControlArena s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31CompleteLog s6Step31FrontPlan Q
    s6Step31Front_checked s6Step31Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step31Complete_owned s6Step31Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step31EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 874 s6Step31CompleteOut.fv.second (s6Step31CompleteOut.fv.payload[2]?.getD s6Step31CompleteOut.fv.sign) (s6Step31CompleteOut.fv.payload[3]?.getD s6Step31CompleteOut.fv.sign) (s6Step31CompleteOut.fv.payload[4]?.getD s6Step31CompleteOut.fv.sign) 859 13 s6Step31EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step31Complete_checked : (compileHmrEarlyStepLog s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 13 s6Step31CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step31Complete_explicit_checked]
  rfl
def s6Step32CompleteMoves : List (Wire × Wire) := [(927,508)]
def s6Step32CompleteOut : WindowBank := s6Step32FrontOut.repacked s6Step32CompleteMoves
def s6Step32CompleteLog : HmrEarlyStepLog := ⟨s6Step32FrontLog,s6Step32CompleteMoves,s6Step32EarlyControlLog⟩
def s6Step32CompleteRelocationMove0Borrowed : Arena := ⟨s6Step32ExitGvAfter.live∪{508},Finset.union_subset s6Step32ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step32CompleteRelocation_move0_owned : 927∈s6Step32ExitGvAfter.live := by norm_num [s6Step32ExitGvAfter,arenaWires]
theorem s6Step32CompleteRelocation_move0_reserve : s6Step32ExitGvAfter.reserve {508}=some s6Step32CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step32ExitGvAfter,arenaWires]
  · rfl
theorem s6Step32CompleteRelocation_move0_retire : s6Step32CompleteRelocationMove0Borrowed.retireSet {927}=s6Step32EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step32CompleteRelocationMove0Borrowed s6Step32EarlyControlArena {927}
  change s6Step32EarlyControlArena.live=(s6Step32ExitGvAfter.live∪{508})\{927}
  apply hmrArena_update_of_filter_check s6Step32ExitGvAfter s6Step32EarlyControlArena (fun q => ([(0,508),(509,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [508] [927] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step32CompleteRelocation_checked : s6Step32ExitGvAfter.checkRepack [(927,508)]=some s6Step32EarlyControlArena := by
  have tail1 : s6Step32EarlyControlArena.checkRepack []=some s6Step32EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step32ExitGvAfter s6Step32CompleteRelocationMove0Borrowed s6Step32EarlyControlArena s6Step32EarlyControlArena 927 508 []
    s6Step32CompleteRelocation_move0_owned s6Step32CompleteRelocation_move0_reserve s6Step32CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step32Complete_repack : s6Step32ExitGvAfter.checkRepack s6Step32CompleteMoves=some s6Step32EarlyControlArena := by
  simpa only [s6Step32CompleteMoves] using s6Step32CompleteRelocation_checked
theorem s6Step32Complete_owned : (s6Step32CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step32EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step32EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Complete_apart : List.Disjoint (s6Step32CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [802, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] := by
  have nd : ((s6Step32CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[802, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step32CompletePlan : HmrEarlyStepPlan := ⟨s6Step32FrontPlan,s6Step32EarlyControlArena,s6Step32EarlyControlPlan,s6Step32CompleteMoves⟩
theorem s6Step32Complete_explicit_checked : compileHmrEarlyStepLog s6Step32EntryFBefore s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32CompleteLog=some s6Step32CompletePlan := by
  let Q := s6Step32EarlyControlPlan
  have hq := s6Step32EarlyControl_plan_checked
  have fv1 : s6Step32CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step32CompleteOut.fv.payload[2]?.getD s6Step32CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step32CompleteOut.fv.payload[3]?.getD s6Step32CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step32CompleteOut.fv.payload[4]?.getD s6Step32CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step32EntryFBefore s6Step32EarlyControlArena s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32CompleteLog s6Step32FrontPlan Q
    s6Step32Front_checked s6Step32Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step32Complete_owned s6Step32Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step32EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 s6Step32CompleteOut.fv.second (s6Step32CompleteOut.fv.payload[2]?.getD s6Step32CompleteOut.fv.sign) (s6Step32CompleteOut.fv.payload[3]?.getD s6Step32CompleteOut.fv.sign) (s6Step32CompleteOut.fv.payload[4]?.getD s6Step32CompleteOut.fv.sign) 881 13 s6Step32EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step32Complete_checked : (compileHmrEarlyStepLog s6Step32EntryFBefore s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 13 s6Step32CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step32Complete_explicit_checked]
  rfl
def s6Step33CompleteMoves : List (Wire × Wire) := [(875,507)]
def s6Step33CompleteOut : WindowBank := s6Step33FrontOut.repacked s6Step33CompleteMoves
def s6Step33CompleteLog : HmrEarlyStepLog := ⟨s6Step33FrontLog,s6Step33CompleteMoves,s6Step33EarlyControlLog⟩
def s6Step33CompleteRelocationMove0Borrowed : Arena := ⟨s6Step33ExitGvAfter.live∪{507},Finset.union_subset s6Step33ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step33CompleteRelocation_move0_owned : 875∈s6Step33ExitGvAfter.live := by norm_num [s6Step33ExitGvAfter,arenaWires]
theorem s6Step33CompleteRelocation_move0_reserve : s6Step33ExitGvAfter.reserve {507}=some s6Step33CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step33ExitGvAfter,arenaWires]
  · rfl
theorem s6Step33CompleteRelocation_move0_retire : s6Step33CompleteRelocationMove0Borrowed.retireSet {875}=s6Step33EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step33CompleteRelocationMove0Borrowed s6Step33EarlyControlArena {875}
  change s6Step33EarlyControlArena.live=(s6Step33ExitGvAfter.live∪{507})\{875}
  apply hmrArena_update_of_filter_check s6Step33ExitGvAfter s6Step33EarlyControlArena (fun q => ([(0,507),(508,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [507] [875] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step33CompleteRelocation_checked : s6Step33ExitGvAfter.checkRepack [(875,507)]=some s6Step33EarlyControlArena := by
  have tail1 : s6Step33EarlyControlArena.checkRepack []=some s6Step33EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step33ExitGvAfter s6Step33CompleteRelocationMove0Borrowed s6Step33EarlyControlArena s6Step33EarlyControlArena 875 507 []
    s6Step33CompleteRelocation_move0_owned s6Step33CompleteRelocation_move0_reserve s6Step33CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step33Complete_repack : s6Step33ExitGvAfter.checkRepack s6Step33CompleteMoves=some s6Step33EarlyControlArena := by
  simpa only [s6Step33CompleteMoves] using s6Step33CompleteRelocation_checked
theorem s6Step33Complete_owned : (s6Step33CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step33EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step33EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Complete_apart : List.Disjoint (s6Step33CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [802, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] := by
  have nd : ((s6Step33CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[802, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step33CompletePlan : HmrEarlyStepPlan := ⟨s6Step33FrontPlan,s6Step33EarlyControlArena,s6Step33EarlyControlPlan,s6Step33CompleteMoves⟩
theorem s6Step33Complete_explicit_checked : compileHmrEarlyStepLog s6Step33EntryFBefore s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33CompleteLog=some s6Step33CompletePlan := by
  let Q := s6Step33EarlyControlPlan
  have hq := s6Step33EarlyControl_plan_checked
  have fv1 : s6Step33CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step33CompleteOut.fv.payload[2]?.getD s6Step33CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step33CompleteOut.fv.payload[3]?.getD s6Step33CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step33CompleteOut.fv.payload[4]?.getD s6Step33CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step33EntryFBefore s6Step33EarlyControlArena s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33CompleteLog s6Step33FrontPlan Q
    s6Step33Front_checked s6Step33Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step33Complete_owned s6Step33Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step33EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 769 802 s6Step33CompleteOut.fv.second (s6Step33CompleteOut.fv.payload[2]?.getD s6Step33CompleteOut.fv.sign) (s6Step33CompleteOut.fv.payload[3]?.getD s6Step33CompleteOut.fv.sign) (s6Step33CompleteOut.fv.payload[4]?.getD s6Step33CompleteOut.fv.sign) 927 14 s6Step33EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step33Complete_checked : (compileHmrEarlyStepLog s6Step33EntryFBefore s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 14 s6Step33CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step33Complete_explicit_checked]
  rfl
def s6Step34CompleteMoves : List (Wire × Wire) := [(857,250)]
def s6Step34CompleteOut : WindowBank := s6Step34FrontOut.repacked s6Step34CompleteMoves
def s6Step34CompleteLog : HmrEarlyStepLog := ⟨s6Step34FrontLog,s6Step34CompleteMoves,s6Step34EarlyControlLog⟩
def s6Step34CompleteRelocationMove0Borrowed : Arena := ⟨s6Step34ExitGvAfter.live∪{250},Finset.union_subset s6Step34ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step34CompleteRelocation_move0_owned : 857∈s6Step34ExitGvAfter.live := by norm_num [s6Step34ExitGvAfter,arenaWires]
theorem s6Step34CompleteRelocation_move0_reserve : s6Step34ExitGvAfter.reserve {250}=some s6Step34CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step34ExitGvAfter,arenaWires]
  · rfl
theorem s6Step34CompleteRelocation_move0_retire : s6Step34CompleteRelocationMove0Borrowed.retireSet {857}=s6Step34EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step34CompleteRelocationMove0Borrowed s6Step34EarlyControlArena {857}
  change s6Step34EarlyControlArena.live=(s6Step34ExitGvAfter.live∪{250})\{857}
  apply hmrArena_update_of_filter_check s6Step34ExitGvAfter s6Step34EarlyControlArena (fun q => ([(0,250),(251,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [250] [857] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step34CompleteRelocation_checked : s6Step34ExitGvAfter.checkRepack [(857,250)]=some s6Step34EarlyControlArena := by
  have tail1 : s6Step34EarlyControlArena.checkRepack []=some s6Step34EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step34ExitGvAfter s6Step34CompleteRelocationMove0Borrowed s6Step34EarlyControlArena s6Step34EarlyControlArena 857 250 []
    s6Step34CompleteRelocation_move0_owned s6Step34CompleteRelocation_move0_reserve s6Step34CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step34Complete_repack : s6Step34ExitGvAfter.checkRepack s6Step34CompleteMoves=some s6Step34EarlyControlArena := by
  simpa only [s6Step34CompleteMoves] using s6Step34CompleteRelocation_checked
theorem s6Step34Complete_owned : (s6Step34CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step34EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step34EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Complete_apart : List.Disjoint (s6Step34CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [802, 875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] := by
  have nd : ((s6Step34CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[802, 875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step34CompletePlan : HmrEarlyStepPlan := ⟨s6Step34FrontPlan,s6Step34EarlyControlArena,s6Step34EarlyControlPlan,s6Step34CompleteMoves⟩
theorem s6Step34Complete_explicit_checked : compileHmrEarlyStepLog s6Step34EntryFBefore s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34CompleteLog=some s6Step34CompletePlan := by
  let Q := s6Step34EarlyControlPlan
  have hq := s6Step34EarlyControl_plan_checked
  have fv1 : s6Step34CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step34CompleteOut.fv.payload[2]?.getD s6Step34CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step34CompleteOut.fv.payload[3]?.getD s6Step34CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step34CompleteOut.fv.payload[4]?.getD s6Step34CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step34EntryFBefore s6Step34EarlyControlArena s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34CompleteLog s6Step34FrontPlan Q
    s6Step34Front_checked s6Step34Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step34Complete_owned s6Step34Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step34EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 s6Step34CompleteOut.fv.second (s6Step34CompleteOut.fv.payload[2]?.getD s6Step34CompleteOut.fv.sign) (s6Step34CompleteOut.fv.payload[3]?.getD s6Step34CompleteOut.fv.sign) (s6Step34CompleteOut.fv.payload[4]?.getD s6Step34CompleteOut.fv.sign) 875 14 s6Step34EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step34Complete_checked : (compileHmrEarlyStepLog s6Step34EntryFBefore s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 14 s6Step34CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step34Complete_explicit_checked]
  rfl
def s6Step35CompleteMoves : List (Wire × Wire) := [(868,506)]
def s6Step35CompleteOut : WindowBank := s6Step35FrontOut.repacked s6Step35CompleteMoves
def s6Step35CompleteLog : HmrEarlyStepLog := ⟨s6Step35FrontLog,s6Step35CompleteMoves,s6Step35EarlyControlLog⟩
def s6Step35CompleteRelocationMove0Borrowed : Arena := ⟨s6Step35ExitGvAfter.live∪{506},Finset.union_subset s6Step35ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step35CompleteRelocation_move0_owned : 868∈s6Step35ExitGvAfter.live := by norm_num [s6Step35ExitGvAfter,arenaWires]
theorem s6Step35CompleteRelocation_move0_reserve : s6Step35ExitGvAfter.reserve {506}=some s6Step35CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step35ExitGvAfter,arenaWires]
  · rfl
theorem s6Step35CompleteRelocation_move0_retire : s6Step35CompleteRelocationMove0Borrowed.retireSet {868}=s6Step35EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step35CompleteRelocationMove0Borrowed s6Step35EarlyControlArena {868}
  change s6Step35EarlyControlArena.live=(s6Step35ExitGvAfter.live∪{506})\{868}
  apply hmrArena_update_of_filter_check s6Step35ExitGvAfter s6Step35EarlyControlArena (fun q => ([(0,506),(507,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [506] [868] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step35CompleteRelocation_checked : s6Step35ExitGvAfter.checkRepack [(868,506)]=some s6Step35EarlyControlArena := by
  have tail1 : s6Step35EarlyControlArena.checkRepack []=some s6Step35EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step35ExitGvAfter s6Step35CompleteRelocationMove0Borrowed s6Step35EarlyControlArena s6Step35EarlyControlArena 868 506 []
    s6Step35CompleteRelocation_move0_owned s6Step35CompleteRelocation_move0_reserve s6Step35CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step35Complete_repack : s6Step35ExitGvAfter.checkRepack s6Step35CompleteMoves=some s6Step35EarlyControlArena := by
  simpa only [s6Step35CompleteMoves] using s6Step35CompleteRelocation_checked
theorem s6Step35Complete_owned : (s6Step35CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step35EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step35EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Complete_apart : List.Disjoint (s6Step35CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [802, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] := by
  have nd : ((s6Step35CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[802, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step35CompletePlan : HmrEarlyStepPlan := ⟨s6Step35FrontPlan,s6Step35EarlyControlArena,s6Step35EarlyControlPlan,s6Step35CompleteMoves⟩
theorem s6Step35Complete_explicit_checked : compileHmrEarlyStepLog s6Step35EntryFBefore s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35CompleteLog=some s6Step35CompletePlan := by
  let Q := s6Step35EarlyControlPlan
  have hq := s6Step35EarlyControl_plan_checked
  have fv1 : s6Step35CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step35CompleteOut.fv.payload[2]?.getD s6Step35CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step35CompleteOut.fv.payload[3]?.getD s6Step35CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step35CompleteOut.fv.payload[4]?.getD s6Step35CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step35EntryFBefore s6Step35EarlyControlArena s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35CompleteLog s6Step35FrontPlan Q
    s6Step35Front_checked s6Step35Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step35Complete_owned s6Step35Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step35EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 769 802 s6Step35CompleteOut.fv.second (s6Step35CompleteOut.fv.payload[2]?.getD s6Step35CompleteOut.fv.sign) (s6Step35CompleteOut.fv.payload[3]?.getD s6Step35CompleteOut.fv.sign) (s6Step35CompleteOut.fv.payload[4]?.getD s6Step35CompleteOut.fv.sign) 857 15 s6Step35EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step35Complete_checked : (compileHmrEarlyStepLog s6Step35EntryFBefore s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 15 s6Step35CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step35Complete_explicit_checked]
  rfl
def s6Step36CompleteMoves : List (Wire × Wire) := []
def s6Step36CompleteOut : WindowBank := s6Step36FrontOut.repacked s6Step36CompleteMoves
def s6Step36CompleteLog : HmrEarlyStepLog := ⟨s6Step36FrontLog,s6Step36CompleteMoves,s6Step36EarlyControlLog⟩
theorem s6Step36Complete_repack : s6Step36ExitGvAfter.checkRepack s6Step36CompleteMoves=some s6Step36EarlyControlArena := by rfl
theorem s6Step36Complete_owned : (s6Step36CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step36EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step36EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Complete_apart : List.Disjoint (s6Step36CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [868, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] := by
  have nd : ((s6Step36CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[868, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step36CompletePlan : HmrEarlyStepPlan := ⟨s6Step36FrontPlan,s6Step36EarlyControlArena,s6Step36EarlyControlPlan,s6Step36CompleteMoves⟩
theorem s6Step36Complete_explicit_checked : compileHmrEarlyStepLog s6Step36EntryFBefore s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36CompleteLog=some s6Step36CompletePlan := by
  let Q := s6Step36EarlyControlPlan
  have hq := s6Step36EarlyControl_plan_checked
  have fv1 : s6Step36CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step36CompleteOut.fv.payload[2]?.getD s6Step36CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step36CompleteOut.fv.payload[3]?.getD s6Step36CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step36CompleteOut.fv.payload[4]?.getD s6Step36CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step36EntryFBefore s6Step36EarlyControlArena s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36CompleteLog s6Step36FrontPlan Q
    s6Step36Front_checked s6Step36Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step36Complete_owned s6Step36Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step36EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 868 s6Step36CompleteOut.fv.second (s6Step36CompleteOut.fv.payload[2]?.getD s6Step36CompleteOut.fv.sign) (s6Step36CompleteOut.fv.payload[3]?.getD s6Step36CompleteOut.fv.sign) (s6Step36CompleteOut.fv.payload[4]?.getD s6Step36CompleteOut.fv.sign) 793 15 s6Step36EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step36Complete_checked : (compileHmrEarlyStepLog s6Step36EntryFBefore s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 15 s6Step36CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step36Complete_explicit_checked]
  rfl
def s6Step37CompleteMoves : List (Wire × Wire) := [(858,249)]
def s6Step37CompleteOut : WindowBank := s6Step37FrontOut.repacked s6Step37CompleteMoves
def s6Step37CompleteLog : HmrEarlyStepLog := ⟨s6Step37FrontLog,s6Step37CompleteMoves,s6Step37EarlyControlLog⟩
def s6Step37CompleteRelocationMove0Borrowed : Arena := ⟨s6Step37ExitGvAfter.live∪{249},Finset.union_subset s6Step37ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step37CompleteRelocation_move0_owned : 858∈s6Step37ExitGvAfter.live := by norm_num [s6Step37ExitGvAfter,s6Step37ExitFAfter,arenaWires]
theorem s6Step37CompleteRelocation_move0_reserve : s6Step37ExitGvAfter.reserve {249}=some s6Step37CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step37ExitGvAfter,s6Step37ExitFAfter,arenaWires]
  · rfl
theorem s6Step37CompleteRelocation_move0_retire : s6Step37CompleteRelocationMove0Borrowed.retireSet {858}=s6Step37EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step37CompleteRelocationMove0Borrowed s6Step37EarlyControlArena {858}
  change s6Step37EarlyControlArena.live=(s6Step37ExitGvAfter.live∪{249})\{858}
  apply hmrArena_update_of_filter_check s6Step37ExitGvAfter s6Step37EarlyControlArena (fun q => ([(0,249),(250,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [249] [858] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step37CompleteRelocation_checked : s6Step37ExitGvAfter.checkRepack [(858,249)]=some s6Step37EarlyControlArena := by
  have tail1 : s6Step37EarlyControlArena.checkRepack []=some s6Step37EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step37ExitGvAfter s6Step37CompleteRelocationMove0Borrowed s6Step37EarlyControlArena s6Step37EarlyControlArena 858 249 []
    s6Step37CompleteRelocation_move0_owned s6Step37CompleteRelocation_move0_reserve s6Step37CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step37Complete_repack : s6Step37ExitGvAfter.checkRepack s6Step37CompleteMoves=some s6Step37EarlyControlArena := by
  simpa only [s6Step37CompleteMoves] using s6Step37CompleteRelocation_checked
theorem s6Step37Complete_owned : (s6Step37CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step37EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step37EarlyControlArena (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Complete_apart : List.Disjoint (s6Step37CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 868, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] := by
  have nd : ((s6Step37CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 868, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step37CompletePlan : HmrEarlyStepPlan := ⟨s6Step37FrontPlan,s6Step37EarlyControlArena,s6Step37EarlyControlPlan,s6Step37CompleteMoves⟩
theorem s6Step37Complete_explicit_checked : compileHmrEarlyStepLog s6Step37EntryFBefore s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37CompleteLog=some s6Step37CompletePlan := by
  let Q := s6Step37EarlyControlPlan
  have hq := s6Step37EarlyControl_plan_checked
  have fv1 : s6Step37CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step37CompleteOut.fv.payload[2]?.getD s6Step37CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step37CompleteOut.fv.payload[3]?.getD s6Step37CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step37CompleteOut.fv.payload[4]?.getD s6Step37CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step37EntryFBefore s6Step37EarlyControlArena s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37CompleteLog s6Step37FrontPlan Q
    s6Step37Front_checked s6Step37Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step37Complete_owned s6Step37Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step37EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 769 793 s6Step37CompleteOut.fv.second (s6Step37CompleteOut.fv.payload[2]?.getD s6Step37CompleteOut.fv.sign) (s6Step37CompleteOut.fv.payload[3]?.getD s6Step37CompleteOut.fv.sign) (s6Step37CompleteOut.fv.payload[4]?.getD s6Step37CompleteOut.fv.sign) 868 16 s6Step37EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step37Complete_checked : (compileHmrEarlyStepLog s6Step37EntryFBefore s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 16 s6Step37CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step37Complete_explicit_checked]
  rfl
def s6Step38CompleteMoves : List (Wire × Wire) := [(907,505)]
def s6Step38CompleteOut : WindowBank := s6Step38FrontOut.repacked s6Step38CompleteMoves
def s6Step38CompleteLog : HmrEarlyStepLog := ⟨s6Step38FrontLog,s6Step38CompleteMoves,s6Step38EarlyControlLog⟩
def s6Step38CompleteRelocationMove0Borrowed : Arena := ⟨s6Step38ExitGvAfter.live∪{505},Finset.union_subset s6Step38ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step38CompleteRelocation_move0_owned : 907∈s6Step38ExitGvAfter.live := by norm_num [s6Step38ExitGvAfter,arenaWires]
theorem s6Step38CompleteRelocation_move0_reserve : s6Step38ExitGvAfter.reserve {505}=some s6Step38CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step38ExitGvAfter,arenaWires]
  · rfl
theorem s6Step38CompleteRelocation_move0_retire : s6Step38CompleteRelocationMove0Borrowed.retireSet {907}=s6Step38EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step38CompleteRelocationMove0Borrowed s6Step38EarlyControlArena {907}
  change s6Step38EarlyControlArena.live=(s6Step38ExitGvAfter.live∪{505})\{907}
  apply hmrArena_update_of_filter_check s6Step38ExitGvAfter s6Step38EarlyControlArena (fun q => ([(0,505),(506,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [505] [907] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step38CompleteRelocation_checked : s6Step38ExitGvAfter.checkRepack [(907,505)]=some s6Step38EarlyControlArena := by
  have tail1 : s6Step38EarlyControlArena.checkRepack []=some s6Step38EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step38ExitGvAfter s6Step38CompleteRelocationMove0Borrowed s6Step38EarlyControlArena s6Step38EarlyControlArena 907 505 []
    s6Step38CompleteRelocation_move0_owned s6Step38CompleteRelocation_move0_reserve s6Step38CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step38Complete_repack : s6Step38ExitGvAfter.checkRepack s6Step38CompleteMoves=some s6Step38EarlyControlArena := by
  simpa only [s6Step38CompleteMoves] using s6Step38CompleteRelocation_checked
theorem s6Step38Complete_owned : (s6Step38CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step38EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step38EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Complete_apart : List.Disjoint (s6Step38CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] := by
  have nd : ((s6Step38CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 858, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step38CompletePlan : HmrEarlyStepPlan := ⟨s6Step38FrontPlan,s6Step38EarlyControlArena,s6Step38EarlyControlPlan,s6Step38CompleteMoves⟩
theorem s6Step38Complete_explicit_checked : compileHmrEarlyStepLog s6Step38EntryFBefore s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38CompleteLog=some s6Step38CompletePlan := by
  let Q := s6Step38EarlyControlPlan
  have hq := s6Step38EarlyControl_plan_checked
  have fv1 : s6Step38CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step38CompleteOut.fv.payload[2]?.getD s6Step38CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step38CompleteOut.fv.payload[3]?.getD s6Step38CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step38CompleteOut.fv.payload[4]?.getD s6Step38CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step38EntryFBefore s6Step38EarlyControlArena s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38CompleteLog s6Step38FrontPlan Q
    s6Step38Front_checked s6Step38Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step38Complete_owned s6Step38Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step38EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 793 s6Step38CompleteOut.fv.second (s6Step38CompleteOut.fv.payload[2]?.getD s6Step38CompleteOut.fv.sign) (s6Step38CompleteOut.fv.payload[3]?.getD s6Step38CompleteOut.fv.sign) (s6Step38CompleteOut.fv.payload[4]?.getD s6Step38CompleteOut.fv.sign) 858 16 s6Step38EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step38Complete_checked : (compileHmrEarlyStepLog s6Step38EntryFBefore s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 16 s6Step38CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step38Complete_explicit_checked]
  rfl
def s6Step39CompleteMoves : List (Wire × Wire) := [(845,248)]
def s6Step39CompleteOut : WindowBank := s6Step39FrontOut.repacked s6Step39CompleteMoves
def s6Step39CompleteLog : HmrEarlyStepLog := ⟨s6Step39FrontLog,s6Step39CompleteMoves,s6Step39EarlyControlLog⟩
def s6Step39CompleteRelocationMove0Borrowed : Arena := ⟨s6Step39ExitGvAfter.live∪{248},Finset.union_subset s6Step39ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step39CompleteRelocation_move0_owned : 845∈s6Step39ExitGvAfter.live := by norm_num [s6Step39ExitGvAfter,arenaWires]
theorem s6Step39CompleteRelocation_move0_reserve : s6Step39ExitGvAfter.reserve {248}=some s6Step39CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step39ExitGvAfter,arenaWires]
  · rfl
theorem s6Step39CompleteRelocation_move0_retire : s6Step39CompleteRelocationMove0Borrowed.retireSet {845}=s6Step39EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step39CompleteRelocationMove0Borrowed s6Step39EarlyControlArena {845}
  change s6Step39EarlyControlArena.live=(s6Step39ExitGvAfter.live∪{248})\{845}
  apply hmrArena_update_of_filter_check s6Step39ExitGvAfter s6Step39EarlyControlArena (fun q => ([(0,248),(249,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [248] [845] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step39CompleteRelocation_checked : s6Step39ExitGvAfter.checkRepack [(845,248)]=some s6Step39EarlyControlArena := by
  have tail1 : s6Step39EarlyControlArena.checkRepack []=some s6Step39EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step39ExitGvAfter s6Step39CompleteRelocationMove0Borrowed s6Step39EarlyControlArena s6Step39EarlyControlArena 845 248 []
    s6Step39CompleteRelocation_move0_owned s6Step39CompleteRelocation_move0_reserve s6Step39CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step39Complete_repack : s6Step39ExitGvAfter.checkRepack s6Step39CompleteMoves=some s6Step39EarlyControlArena := by
  simpa only [s6Step39CompleteMoves] using s6Step39CompleteRelocation_checked
theorem s6Step39Complete_owned : (s6Step39CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step39EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step39EarlyControlArena (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Complete_apart : List.Disjoint (s6Step39CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [858, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] := by
  have nd : ((s6Step39CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[858, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step39CompletePlan : HmrEarlyStepPlan := ⟨s6Step39FrontPlan,s6Step39EarlyControlArena,s6Step39EarlyControlPlan,s6Step39CompleteMoves⟩
theorem s6Step39Complete_explicit_checked : compileHmrEarlyStepLog s6Step39EntryFBefore s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39CompleteLog=some s6Step39CompletePlan := by
  let Q := s6Step39EarlyControlPlan
  have hq := s6Step39EarlyControl_plan_checked
  have fv1 : s6Step39CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step39CompleteOut.fv.payload[2]?.getD s6Step39CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step39CompleteOut.fv.payload[3]?.getD s6Step39CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step39CompleteOut.fv.payload[4]?.getD s6Step39CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step39EntryFBefore s6Step39EarlyControlArena s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39CompleteLog s6Step39FrontPlan Q
    s6Step39Front_checked s6Step39Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step39Complete_owned s6Step39Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step39EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 769 858 s6Step39CompleteOut.fv.second (s6Step39CompleteOut.fv.payload[2]?.getD s6Step39CompleteOut.fv.sign) (s6Step39CompleteOut.fv.payload[3]?.getD s6Step39CompleteOut.fv.sign) (s6Step39CompleteOut.fv.payload[4]?.getD s6Step39CompleteOut.fv.sign) 793 17 s6Step39EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step39Complete_checked : (compileHmrEarlyStepLog s6Step39EntryFBefore s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 17 s6Step39CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step39Complete_explicit_checked]
  rfl
def s6Step40CompleteMoves : List (Wire × Wire) := [(908,504)]
def s6Step40CompleteOut : WindowBank := s6Step40FrontOut.repacked s6Step40CompleteMoves
def s6Step40CompleteLog : HmrEarlyStepLog := ⟨s6Step40FrontLog,s6Step40CompleteMoves,s6Step40EarlyControlLog⟩
def s6Step40CompleteRelocationMove0Borrowed : Arena := ⟨s6Step40ExitGvAfter.live∪{504},Finset.union_subset s6Step40ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step40CompleteRelocation_move0_owned : 908∈s6Step40ExitGvAfter.live := by norm_num [s6Step40ExitGvAfter,arenaWires]
theorem s6Step40CompleteRelocation_move0_reserve : s6Step40ExitGvAfter.reserve {504}=some s6Step40CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step40ExitGvAfter,arenaWires]
  · rfl
theorem s6Step40CompleteRelocation_move0_retire : s6Step40CompleteRelocationMove0Borrowed.retireSet {908}=s6Step40EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step40CompleteRelocationMove0Borrowed s6Step40EarlyControlArena {908}
  change s6Step40EarlyControlArena.live=(s6Step40ExitGvAfter.live∪{504})\{908}
  apply hmrArena_update_of_filter_check s6Step40ExitGvAfter s6Step40EarlyControlArena (fun q => ([(0,504),(505,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [504] [908] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step40CompleteRelocation_checked : s6Step40ExitGvAfter.checkRepack [(908,504)]=some s6Step40EarlyControlArena := by
  have tail1 : s6Step40EarlyControlArena.checkRepack []=some s6Step40EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step40ExitGvAfter s6Step40CompleteRelocationMove0Borrowed s6Step40EarlyControlArena s6Step40EarlyControlArena 908 504 []
    s6Step40CompleteRelocation_move0_owned s6Step40CompleteRelocation_move0_reserve s6Step40CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step40Complete_repack : s6Step40ExitGvAfter.checkRepack s6Step40CompleteMoves=some s6Step40EarlyControlArena := by
  simpa only [s6Step40CompleteMoves] using s6Step40CompleteRelocation_checked
theorem s6Step40Complete_owned : (s6Step40CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step40EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step40EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Complete_apart : List.Disjoint (s6Step40CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] := by
  have nd : ((s6Step40CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step40CompletePlan : HmrEarlyStepPlan := ⟨s6Step40FrontPlan,s6Step40EarlyControlArena,s6Step40EarlyControlPlan,s6Step40CompleteMoves⟩
theorem s6Step40Complete_explicit_checked : compileHmrEarlyStepLog s6Step40EntryFBefore s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40CompleteLog=some s6Step40CompletePlan := by
  let Q := s6Step40EarlyControlPlan
  have hq := s6Step40EarlyControl_plan_checked
  have fv1 : s6Step40CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step40CompleteOut.fv.payload[2]?.getD s6Step40CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step40CompleteOut.fv.payload[3]?.getD s6Step40CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step40CompleteOut.fv.payload[4]?.getD s6Step40CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step40EntryFBefore s6Step40EarlyControlArena s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40CompleteLog s6Step40FrontPlan Q
    s6Step40Front_checked s6Step40Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step40Complete_owned s6Step40Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step40EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 s6Step40CompleteOut.fv.second (s6Step40CompleteOut.fv.payload[2]?.getD s6Step40CompleteOut.fv.sign) (s6Step40CompleteOut.fv.payload[3]?.getD s6Step40CompleteOut.fv.sign) (s6Step40CompleteOut.fv.payload[4]?.getD s6Step40CompleteOut.fv.sign) 779 17 s6Step40EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step40Complete_checked : (compileHmrEarlyStepLog s6Step40EntryFBefore s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 17 s6Step40CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step40Complete_explicit_checked]
  rfl
def s6Step41CompleteMoves : List (Wire × Wire) := []
def s6Step41CompleteOut : WindowBank := s6Step41FrontOut.repacked s6Step41CompleteMoves
def s6Step41CompleteLog : HmrEarlyStepLog := ⟨s6Step41FrontLog,s6Step41CompleteMoves,s6Step41EarlyControlLog⟩
theorem s6Step41Complete_repack : s6Step41ExitGvAfter.checkRepack s6Step41CompleteMoves=some s6Step41EarlyControlArena := by rfl
theorem s6Step41Complete_owned : (s6Step41CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step41EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step41EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Complete_apart : List.Disjoint (s6Step41CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] := by
  have nd : ((s6Step41CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 908, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step41CompletePlan : HmrEarlyStepPlan := ⟨s6Step41FrontPlan,s6Step41EarlyControlArena,s6Step41EarlyControlPlan,s6Step41CompleteMoves⟩
theorem s6Step41Complete_explicit_checked : compileHmrEarlyStepLog s6Step41EntryFBefore s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41CompleteLog=some s6Step41CompletePlan := by
  let Q := s6Step41EarlyControlPlan
  have hq := s6Step41EarlyControl_plan_checked
  have fv1 : s6Step41CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step41CompleteOut.fv.payload[2]?.getD s6Step41CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step41CompleteOut.fv.payload[3]?.getD s6Step41CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step41CompleteOut.fv.payload[4]?.getD s6Step41CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step41EntryFBefore s6Step41EarlyControlArena s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41CompleteLog s6Step41FrontPlan Q
    s6Step41Front_checked s6Step41Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step41Complete_owned s6Step41Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step41EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 769 845 s6Step41CompleteOut.fv.second (s6Step41CompleteOut.fv.payload[2]?.getD s6Step41CompleteOut.fv.sign) (s6Step41CompleteOut.fv.payload[3]?.getD s6Step41CompleteOut.fv.sign) (s6Step41CompleteOut.fv.payload[4]?.getD s6Step41CompleteOut.fv.sign) 908 18 s6Step41EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step41Complete_checked : (compileHmrEarlyStepLog s6Step41EntryFBefore s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 18 s6Step41CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step41Complete_explicit_checked]
  rfl
def s6Step42CompleteMoves : List (Wire × Wire) := [(805,247),(890,503)]
def s6Step42CompleteOut : WindowBank := s6Step42FrontOut.repacked s6Step42CompleteMoves
def s6Step42CompleteLog : HmrEarlyStepLog := ⟨s6Step42FrontLog,s6Step42CompleteMoves,s6Step42EarlyControlLog⟩
def s6Step42CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step42CompleteRelocationMove0Borrowed : Arena := ⟨s6Step42ExitGvAfter.live∪{247},Finset.union_subset s6Step42ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step42CompleteRelocation_move0_owned : 805∈s6Step42ExitGvAfter.live := by norm_num [s6Step42ExitGvAfter,s6Step42ExitFvAfter,arenaWires]
theorem s6Step42CompleteRelocation_move0_reserve : s6Step42ExitGvAfter.reserve {247}=some s6Step42CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step42ExitGvAfter,s6Step42ExitFvAfter,arenaWires]
  · rfl
theorem s6Step42CompleteRelocation_move0_retire : s6Step42CompleteRelocationMove0Borrowed.retireSet {805}=s6Step42CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step42CompleteRelocationMove0Borrowed s6Step42CompleteRelocationMove0After {805}
  change s6Step42CompleteRelocationMove0After.live=(s6Step42ExitGvAfter.live∪{247})\{805}
  apply hmrArena_update_of_filter_check s6Step42ExitGvAfter s6Step42CompleteRelocationMove0After (fun q => ([(0,247),(248,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [247] [805] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step42CompleteRelocationMove1Borrowed : Arena := ⟨s6Step42CompleteRelocationMove0After.live∪{503},Finset.union_subset s6Step42CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step42CompleteRelocation_move1_owned : 890∈s6Step42CompleteRelocationMove0After.live := by norm_num [s6Step42CompleteRelocationMove0After,arenaWires]
theorem s6Step42CompleteRelocation_move1_reserve : s6Step42CompleteRelocationMove0After.reserve {503}=some s6Step42CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step42CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step42CompleteRelocation_move1_retire : s6Step42CompleteRelocationMove1Borrowed.retireSet {890}=s6Step42EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step42CompleteRelocationMove1Borrowed s6Step42EarlyControlArena {890}
  change s6Step42EarlyControlArena.live=(s6Step42CompleteRelocationMove0After.live∪{503})\{890}
  apply hmrArena_update_of_filter_check s6Step42CompleteRelocationMove0After s6Step42EarlyControlArena (fun q => ([(0,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [503] [890] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step42CompleteRelocation_checked : s6Step42ExitGvAfter.checkRepack [(805,247),(890,503)]=some s6Step42EarlyControlArena := by
  have tail2 : s6Step42EarlyControlArena.checkRepack []=some s6Step42EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step42CompleteRelocationMove0After s6Step42CompleteRelocationMove1Borrowed s6Step42EarlyControlArena s6Step42EarlyControlArena 890 503 []
    s6Step42CompleteRelocation_move1_owned s6Step42CompleteRelocation_move1_reserve s6Step42CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step42ExitGvAfter s6Step42CompleteRelocationMove0Borrowed s6Step42CompleteRelocationMove0After s6Step42EarlyControlArena 805 247 [(890,503)]
    s6Step42CompleteRelocation_move0_owned s6Step42CompleteRelocation_move0_reserve s6Step42CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step42Complete_repack : s6Step42ExitGvAfter.checkRepack s6Step42CompleteMoves=some s6Step42EarlyControlArena := by
  simpa only [s6Step42CompleteMoves] using s6Step42CompleteRelocation_checked
theorem s6Step42Complete_owned : (s6Step42CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step42EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step42EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Complete_apart : List.Disjoint (s6Step42CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] := by
  have nd : ((s6Step42CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step42CompletePlan : HmrEarlyStepPlan := ⟨s6Step42FrontPlan,s6Step42EarlyControlArena,s6Step42EarlyControlPlan,s6Step42CompleteMoves⟩
theorem s6Step42Complete_explicit_checked : compileHmrEarlyStepLog s6Step42EntryFBefore s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42CompleteLog=some s6Step42CompletePlan := by
  let Q := s6Step42EarlyControlPlan
  have hq := s6Step42EarlyControl_plan_checked
  have fv1 : s6Step42CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step42CompleteOut.fv.payload[2]?.getD s6Step42CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step42CompleteOut.fv.payload[3]?.getD s6Step42CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step42CompleteOut.fv.payload[4]?.getD s6Step42CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step42EntryFBefore s6Step42EarlyControlArena s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42CompleteLog s6Step42FrontPlan Q
    s6Step42Front_checked s6Step42Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step42Complete_owned s6Step42Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step42EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 s6Step42CompleteOut.fv.second (s6Step42CompleteOut.fv.payload[2]?.getD s6Step42CompleteOut.fv.sign) (s6Step42CompleteOut.fv.payload[3]?.getD s6Step42CompleteOut.fv.sign) (s6Step42CompleteOut.fv.payload[4]?.getD s6Step42CompleteOut.fv.sign) 779 18 s6Step42EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step42Complete_checked : (compileHmrEarlyStepLog s6Step42EntryFBefore s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 18 s6Step42CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step42Complete_explicit_checked]
  rfl
def s6Step43CompleteMoves : List (Wire × Wire) := [(796,246),(873,502)]
def s6Step43CompleteOut : WindowBank := s6Step43FrontOut.repacked s6Step43CompleteMoves
def s6Step43CompleteLog : HmrEarlyStepLog := ⟨s6Step43FrontLog,s6Step43CompleteMoves,s6Step43EarlyControlLog⟩
def s6Step43CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,502),(503,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step43CompleteRelocationMove0Borrowed : Arena := ⟨s6Step43ExitGvAfter.live∪{246},Finset.union_subset s6Step43ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step43CompleteRelocation_move0_owned : 796∈s6Step43ExitGvAfter.live := by norm_num [s6Step43ExitGvAfter,arenaWires]
theorem s6Step43CompleteRelocation_move0_reserve : s6Step43ExitGvAfter.reserve {246}=some s6Step43CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step43ExitGvAfter,arenaWires]
  · rfl
theorem s6Step43CompleteRelocation_move0_retire : s6Step43CompleteRelocationMove0Borrowed.retireSet {796}=s6Step43CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step43CompleteRelocationMove0Borrowed s6Step43CompleteRelocationMove0After {796}
  change s6Step43CompleteRelocationMove0After.live=(s6Step43ExitGvAfter.live∪{246})\{796}
  apply hmrArena_update_of_filter_check s6Step43ExitGvAfter s6Step43CompleteRelocationMove0After (fun q => ([(0,246),(247,502),(503,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,502),(503,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [246] [796] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step43CompleteRelocationMove1Borrowed : Arena := ⟨s6Step43CompleteRelocationMove0After.live∪{502},Finset.union_subset s6Step43CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step43CompleteRelocation_move1_owned : 873∈s6Step43CompleteRelocationMove0After.live := by norm_num [s6Step43CompleteRelocationMove0After,arenaWires]
theorem s6Step43CompleteRelocation_move1_reserve : s6Step43CompleteRelocationMove0After.reserve {502}=some s6Step43CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step43CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step43CompleteRelocation_move1_retire : s6Step43CompleteRelocationMove1Borrowed.retireSet {873}=s6Step43EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step43CompleteRelocationMove1Borrowed s6Step43EarlyControlArena {873}
  change s6Step43EarlyControlArena.live=(s6Step43CompleteRelocationMove0After.live∪{502})\{873}
  apply hmrArena_update_of_filter_check s6Step43CompleteRelocationMove0After s6Step43EarlyControlArena (fun q => ([(0,502),(503,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [502] [873] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step43CompleteRelocation_checked : s6Step43ExitGvAfter.checkRepack [(796,246),(873,502)]=some s6Step43EarlyControlArena := by
  have tail2 : s6Step43EarlyControlArena.checkRepack []=some s6Step43EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step43CompleteRelocationMove0After s6Step43CompleteRelocationMove1Borrowed s6Step43EarlyControlArena s6Step43EarlyControlArena 873 502 []
    s6Step43CompleteRelocation_move1_owned s6Step43CompleteRelocation_move1_reserve s6Step43CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step43ExitGvAfter s6Step43CompleteRelocationMove0Borrowed s6Step43CompleteRelocationMove0After s6Step43EarlyControlArena 796 246 [(873,502)]
    s6Step43CompleteRelocation_move0_owned s6Step43CompleteRelocation_move0_reserve s6Step43CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step43Complete_repack : s6Step43ExitGvAfter.checkRepack s6Step43CompleteMoves=some s6Step43EarlyControlArena := by
  simpa only [s6Step43CompleteMoves] using s6Step43CompleteRelocation_checked
theorem s6Step43Complete_owned : (s6Step43CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step43EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step43EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Complete_apart : List.Disjoint (s6Step43CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] := by
  have nd : ((s6Step43CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 890, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step43CompletePlan : HmrEarlyStepPlan := ⟨s6Step43FrontPlan,s6Step43EarlyControlArena,s6Step43EarlyControlPlan,s6Step43CompleteMoves⟩
theorem s6Step43Complete_explicit_checked : compileHmrEarlyStepLog s6Step43EntryFBefore s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43CompleteLog=some s6Step43CompletePlan := by
  let Q := s6Step43EarlyControlPlan
  have hq := s6Step43EarlyControl_plan_checked
  have fv1 : s6Step43CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step43CompleteOut.fv.payload[2]?.getD s6Step43CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step43CompleteOut.fv.payload[3]?.getD s6Step43CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step43CompleteOut.fv.payload[4]?.getD s6Step43CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step43EntryFBefore s6Step43EarlyControlArena s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43CompleteLog s6Step43FrontPlan Q
    s6Step43Front_checked s6Step43Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step43Complete_owned s6Step43Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step43EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 769 845 s6Step43CompleteOut.fv.second (s6Step43CompleteOut.fv.payload[2]?.getD s6Step43CompleteOut.fv.sign) (s6Step43CompleteOut.fv.payload[3]?.getD s6Step43CompleteOut.fv.sign) (s6Step43CompleteOut.fv.payload[4]?.getD s6Step43CompleteOut.fv.sign) 890 19 s6Step43EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step43Complete_checked : (compileHmrEarlyStepLog s6Step43EntryFBefore s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 19 s6Step43CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step43Complete_explicit_checked]
  rfl
def s6Step44CompleteMoves : List (Wire × Wire) := [(856,245)]
def s6Step44CompleteOut : WindowBank := s6Step44FrontOut.repacked s6Step44CompleteMoves
def s6Step44CompleteLog : HmrEarlyStepLog := ⟨s6Step44FrontLog,s6Step44CompleteMoves,s6Step44EarlyControlLog⟩
def s6Step44CompleteRelocationMove0Borrowed : Arena := ⟨s6Step44ExitGvAfter.live∪{245},Finset.union_subset s6Step44ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step44CompleteRelocation_move0_owned : 856∈s6Step44ExitGvAfter.live := by norm_num [s6Step44ExitGvAfter,arenaWires]
theorem s6Step44CompleteRelocation_move0_reserve : s6Step44ExitGvAfter.reserve {245}=some s6Step44CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step44ExitGvAfter,arenaWires]
  · rfl
theorem s6Step44CompleteRelocation_move0_retire : s6Step44CompleteRelocationMove0Borrowed.retireSet {856}=s6Step44EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step44CompleteRelocationMove0Borrowed s6Step44EarlyControlArena {856}
  change s6Step44EarlyControlArena.live=(s6Step44ExitGvAfter.live∪{245})\{856}
  apply hmrArena_update_of_filter_check s6Step44ExitGvAfter s6Step44EarlyControlArena (fun q => ([(0,245),(246,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [245] [856] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step44CompleteRelocation_checked : s6Step44ExitGvAfter.checkRepack [(856,245)]=some s6Step44EarlyControlArena := by
  have tail1 : s6Step44EarlyControlArena.checkRepack []=some s6Step44EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step44ExitGvAfter s6Step44CompleteRelocationMove0Borrowed s6Step44EarlyControlArena s6Step44EarlyControlArena 856 245 []
    s6Step44CompleteRelocation_move0_owned s6Step44CompleteRelocation_move0_reserve s6Step44CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step44Complete_repack : s6Step44ExitGvAfter.checkRepack s6Step44CompleteMoves=some s6Step44EarlyControlArena := by
  simpa only [s6Step44CompleteMoves] using s6Step44CompleteRelocation_checked
theorem s6Step44Complete_owned : (s6Step44CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step44EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step44EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Complete_apart : List.Disjoint (s6Step44CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] := by
  have nd : ((s6Step44CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step44CompletePlan : HmrEarlyStepPlan := ⟨s6Step44FrontPlan,s6Step44EarlyControlArena,s6Step44EarlyControlPlan,s6Step44CompleteMoves⟩
theorem s6Step44Complete_explicit_checked : compileHmrEarlyStepLog s6Step44EntryFBefore s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44CompleteLog=some s6Step44CompletePlan := by
  let Q := s6Step44EarlyControlPlan
  have hq := s6Step44EarlyControl_plan_checked
  have fv1 : s6Step44CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step44CompleteOut.fv.payload[2]?.getD s6Step44CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step44CompleteOut.fv.payload[3]?.getD s6Step44CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step44CompleteOut.fv.payload[4]?.getD s6Step44CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step44EntryFBefore s6Step44EarlyControlArena s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44CompleteLog s6Step44FrontPlan Q
    s6Step44Front_checked s6Step44Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step44Complete_owned s6Step44Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step44EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 s6Step44CompleteOut.fv.second (s6Step44CompleteOut.fv.payload[2]?.getD s6Step44CompleteOut.fv.sign) (s6Step44CompleteOut.fv.payload[3]?.getD s6Step44CompleteOut.fv.sign) (s6Step44CompleteOut.fv.payload[4]?.getD s6Step44CompleteOut.fv.sign) 873 19 s6Step44EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step44Complete_checked : (compileHmrEarlyStepLog s6Step44EntryFBefore s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 19 s6Step44CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step44Complete_explicit_checked]
  rfl
def s6Step45CompleteMoves : List (Wire × Wire) := [(863,501)]
def s6Step45CompleteOut : WindowBank := s6Step45FrontOut.repacked s6Step45CompleteMoves
def s6Step45CompleteLog : HmrEarlyStepLog := ⟨s6Step45FrontLog,s6Step45CompleteMoves,s6Step45EarlyControlLog⟩
def s6Step45CompleteRelocationMove0Borrowed : Arena := ⟨s6Step45ExitGvAfter.live∪{501},Finset.union_subset s6Step45ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step45CompleteRelocation_move0_owned : 863∈s6Step45ExitGvAfter.live := by norm_num [s6Step45ExitGvAfter,arenaWires]
theorem s6Step45CompleteRelocation_move0_reserve : s6Step45ExitGvAfter.reserve {501}=some s6Step45CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step45ExitGvAfter,arenaWires]
  · rfl
theorem s6Step45CompleteRelocation_move0_retire : s6Step45CompleteRelocationMove0Borrowed.retireSet {863}=s6Step45EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step45CompleteRelocationMove0Borrowed s6Step45EarlyControlArena {863}
  change s6Step45EarlyControlArena.live=(s6Step45ExitGvAfter.live∪{501})\{863}
  apply hmrArena_update_of_filter_check s6Step45ExitGvAfter s6Step45EarlyControlArena (fun q => ([(0,501),(502,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [501] [863] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step45CompleteRelocation_checked : s6Step45ExitGvAfter.checkRepack [(863,501)]=some s6Step45EarlyControlArena := by
  have tail1 : s6Step45EarlyControlArena.checkRepack []=some s6Step45EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step45ExitGvAfter s6Step45CompleteRelocationMove0Borrowed s6Step45EarlyControlArena s6Step45EarlyControlArena 863 501 []
    s6Step45CompleteRelocation_move0_owned s6Step45CompleteRelocation_move0_reserve s6Step45CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step45Complete_repack : s6Step45ExitGvAfter.checkRepack s6Step45CompleteMoves=some s6Step45EarlyControlArena := by
  simpa only [s6Step45CompleteMoves] using s6Step45CompleteRelocation_checked
theorem s6Step45Complete_owned : (s6Step45CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step45EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step45EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Complete_apart : List.Disjoint (s6Step45CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 856, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] := by
  have nd : ((s6Step45CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 856, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step45CompletePlan : HmrEarlyStepPlan := ⟨s6Step45FrontPlan,s6Step45EarlyControlArena,s6Step45EarlyControlPlan,s6Step45CompleteMoves⟩
theorem s6Step45Complete_explicit_checked : compileHmrEarlyStepLog s6Step45EntryFBefore s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45CompleteLog=some s6Step45CompletePlan := by
  let Q := s6Step45EarlyControlPlan
  have hq := s6Step45EarlyControl_plan_checked
  have fv1 : s6Step45CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step45CompleteOut.fv.payload[2]?.getD s6Step45CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step45CompleteOut.fv.payload[3]?.getD s6Step45CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step45CompleteOut.fv.payload[4]?.getD s6Step45CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step45EntryFBefore s6Step45EarlyControlArena s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45CompleteLog s6Step45FrontPlan Q
    s6Step45Front_checked s6Step45Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step45Complete_owned s6Step45Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step45EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 769 845 s6Step45CompleteOut.fv.second (s6Step45CompleteOut.fv.payload[2]?.getD s6Step45CompleteOut.fv.sign) (s6Step45CompleteOut.fv.payload[3]?.getD s6Step45CompleteOut.fv.sign) (s6Step45CompleteOut.fv.payload[4]?.getD s6Step45CompleteOut.fv.sign) 856 20 s6Step45EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step45Complete_checked : (compileHmrEarlyStepLog s6Step45EntryFBefore s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 20 s6Step45CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step45Complete_explicit_checked]
  rfl
def s6Step46CompleteMoves : List (Wire × Wire) := [(865,244),(823,500)]
def s6Step46CompleteOut : WindowBank := s6Step46FrontOut.repacked s6Step46CompleteMoves
def s6Step46CompleteLog : HmrEarlyStepLog := ⟨s6Step46FrontLog,s6Step46CompleteMoves,s6Step46EarlyControlLog⟩
def s6Step46CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,500),(501,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step46CompleteRelocationMove0Borrowed : Arena := ⟨s6Step46ExitGvAfter.live∪{244},Finset.union_subset s6Step46ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step46CompleteRelocation_move0_owned : 865∈s6Step46ExitGvAfter.live := by norm_num [s6Step46ExitGvAfter,arenaWires]
theorem s6Step46CompleteRelocation_move0_reserve : s6Step46ExitGvAfter.reserve {244}=some s6Step46CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step46ExitGvAfter,arenaWires]
  · rfl
theorem s6Step46CompleteRelocation_move0_retire : s6Step46CompleteRelocationMove0Borrowed.retireSet {865}=s6Step46CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step46CompleteRelocationMove0Borrowed s6Step46CompleteRelocationMove0After {865}
  change s6Step46CompleteRelocationMove0After.live=(s6Step46ExitGvAfter.live∪{244})\{865}
  apply hmrArena_update_of_filter_check s6Step46ExitGvAfter s6Step46CompleteRelocationMove0After (fun q => ([(0,244),(245,500),(501,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,500),(501,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [244] [865] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step46CompleteRelocationMove1Borrowed : Arena := ⟨s6Step46CompleteRelocationMove0After.live∪{500},Finset.union_subset s6Step46CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step46CompleteRelocation_move1_owned : 823∈s6Step46CompleteRelocationMove0After.live := by norm_num [s6Step46CompleteRelocationMove0After,arenaWires]
theorem s6Step46CompleteRelocation_move1_reserve : s6Step46CompleteRelocationMove0After.reserve {500}=some s6Step46CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step46CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step46CompleteRelocation_move1_retire : s6Step46CompleteRelocationMove1Borrowed.retireSet {823}=s6Step46EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step46CompleteRelocationMove1Borrowed s6Step46EarlyControlArena {823}
  change s6Step46EarlyControlArena.live=(s6Step46CompleteRelocationMove0After.live∪{500})\{823}
  apply hmrArena_update_of_filter_check s6Step46CompleteRelocationMove0After s6Step46EarlyControlArena (fun q => ([(0,500),(501,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [500] [823] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step46CompleteRelocation_checked : s6Step46ExitGvAfter.checkRepack [(865,244),(823,500)]=some s6Step46EarlyControlArena := by
  have tail2 : s6Step46EarlyControlArena.checkRepack []=some s6Step46EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step46CompleteRelocationMove0After s6Step46CompleteRelocationMove1Borrowed s6Step46EarlyControlArena s6Step46EarlyControlArena 823 500 []
    s6Step46CompleteRelocation_move1_owned s6Step46CompleteRelocation_move1_reserve s6Step46CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step46ExitGvAfter s6Step46CompleteRelocationMove0Borrowed s6Step46CompleteRelocationMove0After s6Step46EarlyControlArena 865 244 [(823,500)]
    s6Step46CompleteRelocation_move0_owned s6Step46CompleteRelocation_move0_reserve s6Step46CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step46Complete_repack : s6Step46ExitGvAfter.checkRepack s6Step46CompleteMoves=some s6Step46EarlyControlArena := by
  simpa only [s6Step46CompleteMoves] using s6Step46CompleteRelocation_checked
theorem s6Step46Complete_owned : (s6Step46CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step46EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step46EarlyControlArena (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Complete_apart : List.Disjoint (s6Step46CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] := by
  have nd : ((s6Step46CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step46CompletePlan : HmrEarlyStepPlan := ⟨s6Step46FrontPlan,s6Step46EarlyControlArena,s6Step46EarlyControlPlan,s6Step46CompleteMoves⟩
theorem s6Step46Complete_explicit_checked : compileHmrEarlyStepLog s6Step46EntryFBefore s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46CompleteLog=some s6Step46CompletePlan := by
  let Q := s6Step46EarlyControlPlan
  have hq := s6Step46EarlyControl_plan_checked
  have fv1 : s6Step46CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step46CompleteOut.fv.payload[2]?.getD s6Step46CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step46CompleteOut.fv.payload[3]?.getD s6Step46CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step46CompleteOut.fv.payload[4]?.getD s6Step46CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step46EntryFBefore s6Step46EarlyControlArena s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46CompleteLog s6Step46FrontPlan Q
    s6Step46Front_checked s6Step46Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step46Complete_owned s6Step46Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step46EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 845 s6Step46CompleteOut.fv.second (s6Step46CompleteOut.fv.payload[2]?.getD s6Step46CompleteOut.fv.sign) (s6Step46CompleteOut.fv.payload[3]?.getD s6Step46CompleteOut.fv.sign) (s6Step46CompleteOut.fv.payload[4]?.getD s6Step46CompleteOut.fv.sign) 863 20 s6Step46EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step46Complete_checked : (compileHmrEarlyStepLog s6Step46EntryFBefore s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 20 s6Step46CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step46Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
