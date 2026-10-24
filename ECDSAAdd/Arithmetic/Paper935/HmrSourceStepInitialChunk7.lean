import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl7
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47CompleteMoves : List (Wire × Wire) := []
def s6Step47CompleteOut : WindowBank := s6Step47FrontOut.repacked s6Step47CompleteMoves
def s6Step47CompleteLog : HmrEarlyStepLog := ⟨s6Step47FrontLog,s6Step47CompleteMoves,s6Step47EarlyControlLog⟩
theorem s6Step47Complete_repack : s6Step47ExitGvAfter.checkRepack s6Step47CompleteMoves=some s6Step47EarlyControlArena := by rfl
theorem s6Step47Complete_owned : (s6Step47CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step47EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step47EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Complete_apart : List.Disjoint (s6Step47CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [863, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] := by
  have nd : ((s6Step47CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[863, 845, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step47CompletePlan : HmrEarlyStepPlan := ⟨s6Step47FrontPlan,s6Step47EarlyControlArena,s6Step47EarlyControlPlan,s6Step47CompleteMoves⟩
theorem s6Step47Complete_explicit_checked : compileHmrEarlyStepLog s6Step47EntryFBefore s6Step47FrontBank 244 36 ⟨244,244,37,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47CompleteLog=some s6Step47CompletePlan := by
  let Q := s6Step47EarlyControlPlan
  have hq := s6Step47EarlyControl_plan_checked
  have fv1 : s6Step47CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step47CompleteOut.fv.payload[2]?.getD s6Step47CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step47CompleteOut.fv.payload[3]?.getD s6Step47CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step47CompleteOut.fv.payload[4]?.getD s6Step47CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step47EntryFBefore s6Step47EarlyControlArena s6Step47FrontBank 244 36 ⟨244,244,37,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47CompleteLog s6Step47FrontPlan Q
    s6Step47Front_checked s6Step47Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step47Complete_owned s6Step47Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step47EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 769 863 s6Step47CompleteOut.fv.second (s6Step47CompleteOut.fv.payload[2]?.getD s6Step47CompleteOut.fv.sign) (s6Step47CompleteOut.fv.payload[3]?.getD s6Step47CompleteOut.fv.sign) (s6Step47CompleteOut.fv.payload[4]?.getD s6Step47CompleteOut.fv.sign) 845 21 s6Step47EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step47Complete_checked : (compileHmrEarlyStepLog s6Step47EntryFBefore s6Step47FrontBank 244 36 ⟨244,244,37,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 21 s6Step47CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step47Complete_explicit_checked]
  rfl
def s6Step48CompleteMoves : List (Wire × Wire) := [(789,243)]
def s6Step48CompleteOut : WindowBank := s6Step48FrontOut.repacked s6Step48CompleteMoves
def s6Step48CompleteLog : HmrEarlyStepLog := ⟨s6Step48FrontLog,s6Step48CompleteMoves,s6Step48EarlyControlLog⟩
def s6Step48CompleteRelocationMove0Borrowed : Arena := ⟨s6Step48ExitGvAfter.live∪{243},Finset.union_subset s6Step48ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step48CompleteRelocation_move0_owned : 789∈s6Step48ExitGvAfter.live := by norm_num [s6Step48ExitGvAfter,arenaWires]
theorem s6Step48CompleteRelocation_move0_reserve : s6Step48ExitGvAfter.reserve {243}=some s6Step48CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step48ExitGvAfter,arenaWires]
  · rfl
theorem s6Step48CompleteRelocation_move0_retire : s6Step48CompleteRelocationMove0Borrowed.retireSet {789}=s6Step48EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step48CompleteRelocationMove0Borrowed s6Step48EarlyControlArena {789}
  change s6Step48EarlyControlArena.live=(s6Step48ExitGvAfter.live∪{243})\{789}
  apply hmrArena_update_of_filter_check s6Step48ExitGvAfter s6Step48EarlyControlArena (fun q => ([(0,243),(244,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [243] [789] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step48CompleteRelocation_checked : s6Step48ExitGvAfter.checkRepack [(789,243)]=some s6Step48EarlyControlArena := by
  have tail1 : s6Step48EarlyControlArena.checkRepack []=some s6Step48EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step48ExitGvAfter s6Step48CompleteRelocationMove0Borrowed s6Step48EarlyControlArena s6Step48EarlyControlArena 789 243 []
    s6Step48CompleteRelocation_move0_owned s6Step48CompleteRelocation_move0_reserve s6Step48CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step48Complete_repack : s6Step48ExitGvAfter.checkRepack s6Step48CompleteMoves=some s6Step48EarlyControlArena := by
  simpa only [s6Step48CompleteMoves] using s6Step48CompleteRelocation_checked
theorem s6Step48Complete_owned : (s6Step48CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step48EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step48EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Complete_apart : List.Disjoint (s6Step48CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] := by
  have nd : ((s6Step48CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step48CompletePlan : HmrEarlyStepPlan := ⟨s6Step48FrontPlan,s6Step48EarlyControlArena,s6Step48EarlyControlPlan,s6Step48CompleteMoves⟩
theorem s6Step48Complete_explicit_checked : compileHmrEarlyStepLog s6Step48EntryFBefore s6Step48FrontBank 244 37 ⟨244,243,37,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48CompleteLog=some s6Step48CompletePlan := by
  let Q := s6Step48EarlyControlPlan
  have hq := s6Step48EarlyControl_plan_checked
  have fv1 : s6Step48CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step48CompleteOut.fv.payload[2]?.getD s6Step48CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step48CompleteOut.fv.payload[3]?.getD s6Step48CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step48CompleteOut.fv.payload[4]?.getD s6Step48CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step48EntryFBefore s6Step48EarlyControlArena s6Step48FrontBank 244 37 ⟨244,243,37,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48CompleteLog s6Step48FrontPlan Q
    s6Step48Front_checked s6Step48Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step48Complete_owned s6Step48Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step48EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 s6Step48CompleteOut.fv.second (s6Step48CompleteOut.fv.payload[2]?.getD s6Step48CompleteOut.fv.sign) (s6Step48CompleteOut.fv.payload[3]?.getD s6Step48CompleteOut.fv.sign) (s6Step48CompleteOut.fv.payload[4]?.getD s6Step48CompleteOut.fv.sign) 863 21 s6Step48EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step48Complete_checked : (compileHmrEarlyStepLog s6Step48EntryFBefore s6Step48FrontBank 244 37 ⟨244,243,37,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 21 s6Step48CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step48Complete_explicit_checked]
  rfl
def s6Step49CompleteMoves : List (Wire × Wire) := [(880,499)]
def s6Step49CompleteOut : WindowBank := s6Step49FrontOut.repacked s6Step49CompleteMoves
def s6Step49CompleteLog : HmrEarlyStepLog := ⟨s6Step49FrontLog,s6Step49CompleteMoves,s6Step49EarlyControlLog⟩
def s6Step49CompleteRelocationMove0Borrowed : Arena := ⟨s6Step49ExitGvAfter.live∪{499},Finset.union_subset s6Step49ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step49CompleteRelocation_move0_owned : 880∈s6Step49ExitGvAfter.live := by norm_num [s6Step49ExitGvAfter,arenaWires]
theorem s6Step49CompleteRelocation_move0_reserve : s6Step49ExitGvAfter.reserve {499}=some s6Step49CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step49ExitGvAfter,arenaWires]
  · rfl
theorem s6Step49CompleteRelocation_move0_retire : s6Step49CompleteRelocationMove0Borrowed.retireSet {880}=s6Step49EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step49CompleteRelocationMove0Borrowed s6Step49EarlyControlArena {880}
  change s6Step49EarlyControlArena.live=(s6Step49ExitGvAfter.live∪{499})\{880}
  apply hmrArena_update_of_filter_check s6Step49ExitGvAfter s6Step49EarlyControlArena (fun q => ([(0,499),(500,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [499] [880] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step49CompleteRelocation_checked : s6Step49ExitGvAfter.checkRepack [(880,499)]=some s6Step49EarlyControlArena := by
  have tail1 : s6Step49EarlyControlArena.checkRepack []=some s6Step49EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step49ExitGvAfter s6Step49CompleteRelocationMove0Borrowed s6Step49EarlyControlArena s6Step49EarlyControlArena 880 499 []
    s6Step49CompleteRelocation_move0_owned s6Step49CompleteRelocation_move0_reserve s6Step49CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step49Complete_repack : s6Step49ExitGvAfter.checkRepack s6Step49CompleteMoves=some s6Step49EarlyControlArena := by
  simpa only [s6Step49CompleteMoves] using s6Step49CompleteRelocation_checked
theorem s6Step49Complete_owned : (s6Step49CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step49EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step49EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Complete_apart : List.Disjoint (s6Step49CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] := by
  have nd : ((s6Step49CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step49CompletePlan : HmrEarlyStepPlan := ⟨s6Step49FrontPlan,s6Step49EarlyControlArena,s6Step49EarlyControlPlan,s6Step49CompleteMoves⟩
theorem s6Step49Complete_explicit_checked : compileHmrEarlyStepLog s6Step49EntryFBefore s6Step49FrontBank 244 37 ⟨243,243,38,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49CompleteLog=some s6Step49CompletePlan := by
  let Q := s6Step49EarlyControlPlan
  have hq := s6Step49EarlyControl_plan_checked
  have fv1 : s6Step49CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step49CompleteOut.fv.payload[2]?.getD s6Step49CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step49CompleteOut.fv.payload[3]?.getD s6Step49CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step49CompleteOut.fv.payload[4]?.getD s6Step49CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step49EntryFBefore s6Step49EarlyControlArena s6Step49FrontBank 244 37 ⟨243,243,38,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49CompleteLog s6Step49FrontPlan Q
    s6Step49Front_checked s6Step49Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step49Complete_owned s6Step49Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step49EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 769 845 s6Step49CompleteOut.fv.second (s6Step49CompleteOut.fv.payload[2]?.getD s6Step49CompleteOut.fv.sign) (s6Step49CompleteOut.fv.payload[3]?.getD s6Step49CompleteOut.fv.sign) (s6Step49CompleteOut.fv.payload[4]?.getD s6Step49CompleteOut.fv.sign) 789 22 s6Step49EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step49Complete_checked : (compileHmrEarlyStepLog s6Step49EntryFBefore s6Step49FrontBank 244 37 ⟨243,243,38,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 22 s6Step49CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step49Complete_explicit_checked]
  rfl
def s6Step50CompleteMoves : List (Wire × Wire) := [(818,242)]
def s6Step50CompleteOut : WindowBank := s6Step50FrontOut.repacked s6Step50CompleteMoves
def s6Step50CompleteLog : HmrEarlyStepLog := ⟨s6Step50FrontLog,s6Step50CompleteMoves,s6Step50EarlyControlLog⟩
def s6Step50CompleteRelocationMove0Borrowed : Arena := ⟨s6Step50ExitGvAfter.live∪{242},Finset.union_subset s6Step50ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step50CompleteRelocation_move0_owned : 818∈s6Step50ExitGvAfter.live := by norm_num [s6Step50ExitGvAfter,arenaWires]
theorem s6Step50CompleteRelocation_move0_reserve : s6Step50ExitGvAfter.reserve {242}=some s6Step50CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step50ExitGvAfter,arenaWires]
  · rfl
theorem s6Step50CompleteRelocation_move0_retire : s6Step50CompleteRelocationMove0Borrowed.retireSet {818}=s6Step50EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step50CompleteRelocationMove0Borrowed s6Step50EarlyControlArena {818}
  change s6Step50EarlyControlArena.live=(s6Step50ExitGvAfter.live∪{242})\{818}
  apply hmrArena_update_of_filter_check s6Step50ExitGvAfter s6Step50EarlyControlArena (fun q => ([(0,242),(243,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [242] [818] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step50CompleteRelocation_checked : s6Step50ExitGvAfter.checkRepack [(818,242)]=some s6Step50EarlyControlArena := by
  have tail1 : s6Step50EarlyControlArena.checkRepack []=some s6Step50EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step50ExitGvAfter s6Step50CompleteRelocationMove0Borrowed s6Step50EarlyControlArena s6Step50EarlyControlArena 818 242 []
    s6Step50CompleteRelocation_move0_owned s6Step50CompleteRelocation_move0_reserve s6Step50CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step50Complete_repack : s6Step50ExitGvAfter.checkRepack s6Step50CompleteMoves=some s6Step50EarlyControlArena := by
  simpa only [s6Step50CompleteMoves] using s6Step50CompleteRelocation_checked
theorem s6Step50Complete_owned : (s6Step50CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step50EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step50EarlyControlArena (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Complete_apart : List.Disjoint (s6Step50CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [845, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] := by
  have nd : ((s6Step50CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[845, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step50CompletePlan : HmrEarlyStepPlan := ⟨s6Step50FrontPlan,s6Step50EarlyControlArena,s6Step50EarlyControlPlan,s6Step50CompleteMoves⟩
theorem s6Step50Complete_explicit_checked : compileHmrEarlyStepLog s6Step50EntryFBefore s6Step50FrontBank 243 38 ⟨243,242,38,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50CompleteLog=some s6Step50CompletePlan := by
  let Q := s6Step50EarlyControlPlan
  have hq := s6Step50EarlyControl_plan_checked
  have fv1 : s6Step50CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step50CompleteOut.fv.payload[2]?.getD s6Step50CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step50CompleteOut.fv.payload[3]?.getD s6Step50CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step50CompleteOut.fv.payload[4]?.getD s6Step50CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step50EntryFBefore s6Step50EarlyControlArena s6Step50FrontBank 243 38 ⟨243,242,38,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50CompleteLog s6Step50FrontPlan Q
    s6Step50Front_checked s6Step50Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step50Complete_owned s6Step50Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step50EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 845 s6Step50CompleteOut.fv.second (s6Step50CompleteOut.fv.payload[2]?.getD s6Step50CompleteOut.fv.sign) (s6Step50CompleteOut.fv.payload[3]?.getD s6Step50CompleteOut.fv.sign) (s6Step50CompleteOut.fv.payload[4]?.getD s6Step50CompleteOut.fv.sign) 880 22 s6Step50EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step50Complete_checked : (compileHmrEarlyStepLog s6Step50EntryFBefore s6Step50FrontBank 243 38 ⟨243,242,38,37⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 22 s6Step50CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step50Complete_explicit_checked]
  rfl
def s6Step51CompleteMoves : List (Wire × Wire) := [(864,498)]
def s6Step51CompleteOut : WindowBank := s6Step51FrontOut.repacked s6Step51CompleteMoves
def s6Step51CompleteLog : HmrEarlyStepLog := ⟨s6Step51FrontLog,s6Step51CompleteMoves,s6Step51EarlyControlLog⟩
def s6Step51CompleteRelocationMove0Borrowed : Arena := ⟨s6Step51ExitGvAfter.live∪{498},Finset.union_subset s6Step51ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step51CompleteRelocation_move0_owned : 864∈s6Step51ExitGvAfter.live := by norm_num [s6Step51ExitGvAfter,arenaWires]
theorem s6Step51CompleteRelocation_move0_reserve : s6Step51ExitGvAfter.reserve {498}=some s6Step51CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step51ExitGvAfter,arenaWires]
  · rfl
theorem s6Step51CompleteRelocation_move0_retire : s6Step51CompleteRelocationMove0Borrowed.retireSet {864}=s6Step51EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step51CompleteRelocationMove0Borrowed s6Step51EarlyControlArena {864}
  change s6Step51EarlyControlArena.live=(s6Step51ExitGvAfter.live∪{498})\{864}
  apply hmrArena_update_of_filter_check s6Step51ExitGvAfter s6Step51EarlyControlArena (fun q => ([(0,498),(499,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [498] [864] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step51CompleteRelocation_checked : s6Step51ExitGvAfter.checkRepack [(864,498)]=some s6Step51EarlyControlArena := by
  have tail1 : s6Step51EarlyControlArena.checkRepack []=some s6Step51EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step51ExitGvAfter s6Step51CompleteRelocationMove0Borrowed s6Step51EarlyControlArena s6Step51EarlyControlArena 864 498 []
    s6Step51CompleteRelocation_move0_owned s6Step51CompleteRelocation_move0_reserve s6Step51CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step51Complete_repack : s6Step51ExitGvAfter.checkRepack s6Step51CompleteMoves=some s6Step51EarlyControlArena := by
  simpa only [s6Step51CompleteMoves] using s6Step51CompleteRelocation_checked
theorem s6Step51Complete_owned : (s6Step51CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step51EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step51EarlyControlArena (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Complete_apart : List.Disjoint (s6Step51CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] := by
  have nd : ((s6Step51CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 789, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step51CompletePlan : HmrEarlyStepPlan := ⟨s6Step51FrontPlan,s6Step51EarlyControlArena,s6Step51EarlyControlPlan,s6Step51CompleteMoves⟩
theorem s6Step51Complete_explicit_checked : compileHmrEarlyStepLog s6Step51EntryFBefore s6Step51FrontBank 243 38 ⟨242,242,39,38⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51CompleteLog=some s6Step51CompletePlan := by
  let Q := s6Step51EarlyControlPlan
  have hq := s6Step51EarlyControl_plan_checked
  have fv1 : s6Step51CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step51CompleteOut.fv.payload[2]?.getD s6Step51CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step51CompleteOut.fv.payload[3]?.getD s6Step51CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step51CompleteOut.fv.payload[4]?.getD s6Step51CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step51EntryFBefore s6Step51EarlyControlArena s6Step51FrontBank 243 38 ⟨242,242,39,38⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51CompleteLog s6Step51FrontPlan Q
    s6Step51Front_checked s6Step51Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step51Complete_owned s6Step51Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step51EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 769 818 s6Step51CompleteOut.fv.second (s6Step51CompleteOut.fv.payload[2]?.getD s6Step51CompleteOut.fv.sign) (s6Step51CompleteOut.fv.payload[3]?.getD s6Step51CompleteOut.fv.sign) (s6Step51CompleteOut.fv.payload[4]?.getD s6Step51CompleteOut.fv.sign) 789 23 s6Step51EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step51Complete_checked : (compileHmrEarlyStepLog s6Step51EntryFBefore s6Step51FrontBank 243 38 ⟨242,242,39,38⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] 23 s6Step51CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step51Complete_explicit_checked]
  rfl
def s6Step52CompleteMoves : List (Wire × Wire) := [(892,241),(828,497)]
def s6Step52CompleteOut : WindowBank := s6Step52FrontOut.repacked s6Step52CompleteMoves
def s6Step52CompleteLog : HmrEarlyStepLog := ⟨s6Step52FrontLog,s6Step52CompleteMoves,s6Step52EarlyControlLog⟩
def s6Step52CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,497),(498,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step52CompleteRelocationMove0Borrowed : Arena := ⟨s6Step52ExitGvAfter.live∪{241},Finset.union_subset s6Step52ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step52CompleteRelocation_move0_owned : 892∈s6Step52ExitGvAfter.live := by norm_num [s6Step52ExitGvAfter,arenaWires]
theorem s6Step52CompleteRelocation_move0_reserve : s6Step52ExitGvAfter.reserve {241}=some s6Step52CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step52ExitGvAfter,arenaWires]
  · rfl
theorem s6Step52CompleteRelocation_move0_retire : s6Step52CompleteRelocationMove0Borrowed.retireSet {892}=s6Step52CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step52CompleteRelocationMove0Borrowed s6Step52CompleteRelocationMove0After {892}
  change s6Step52CompleteRelocationMove0After.live=(s6Step52ExitGvAfter.live∪{241})\{892}
  apply hmrArena_update_of_filter_check s6Step52ExitGvAfter s6Step52CompleteRelocationMove0After (fun q => ([(0,241),(242,497),(498,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,497),(498,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [241] [892] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step52CompleteRelocationMove1Borrowed : Arena := ⟨s6Step52CompleteRelocationMove0After.live∪{497},Finset.union_subset s6Step52CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step52CompleteRelocation_move1_owned : 828∈s6Step52CompleteRelocationMove0After.live := by norm_num [s6Step52CompleteRelocationMove0After,arenaWires]
theorem s6Step52CompleteRelocation_move1_reserve : s6Step52CompleteRelocationMove0After.reserve {497}=some s6Step52CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step52CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step52CompleteRelocation_move1_retire : s6Step52CompleteRelocationMove1Borrowed.retireSet {828}=s6Step52EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step52CompleteRelocationMove1Borrowed s6Step52EarlyControlArena {828}
  change s6Step52EarlyControlArena.live=(s6Step52CompleteRelocationMove0After.live∪{497})\{828}
  apply hmrArena_update_of_filter_check s6Step52CompleteRelocationMove0After s6Step52EarlyControlArena (fun q => ([(0,497),(498,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [497] [828] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step52CompleteRelocation_checked : s6Step52ExitGvAfter.checkRepack [(892,241),(828,497)]=some s6Step52EarlyControlArena := by
  have tail2 : s6Step52EarlyControlArena.checkRepack []=some s6Step52EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step52CompleteRelocationMove0After s6Step52CompleteRelocationMove1Borrowed s6Step52EarlyControlArena s6Step52EarlyControlArena 828 497 []
    s6Step52CompleteRelocation_move1_owned s6Step52CompleteRelocation_move1_reserve s6Step52CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step52ExitGvAfter s6Step52CompleteRelocationMove0Borrowed s6Step52CompleteRelocationMove0After s6Step52EarlyControlArena 892 241 [(828,497)]
    s6Step52CompleteRelocation_move0_owned s6Step52CompleteRelocation_move0_reserve s6Step52CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step52Complete_repack : s6Step52ExitGvAfter.checkRepack s6Step52CompleteMoves=some s6Step52EarlyControlArena := by
  simpa only [s6Step52CompleteMoves] using s6Step52CompleteRelocation_checked
theorem s6Step52Complete_owned : (s6Step52CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step52EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step52EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Complete_apart : List.Disjoint (s6Step52CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] := by
  have nd : ((s6Step52CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 864, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step52CompletePlan : HmrEarlyStepPlan := ⟨s6Step52FrontPlan,s6Step52EarlyControlArena,s6Step52EarlyControlPlan,s6Step52CompleteMoves⟩
theorem s6Step52Complete_explicit_checked : compileHmrEarlyStepLog s6Step52EntryFBefore s6Step52FrontBank 242 39 ⟨241,241,39,38⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52CompleteLog=some s6Step52CompletePlan := by
  let Q := s6Step52EarlyControlPlan
  have hq := s6Step52EarlyControl_plan_checked
  have fv1 : s6Step52CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step52CompleteOut.fv.payload[2]?.getD s6Step52CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step52CompleteOut.fv.payload[3]?.getD s6Step52CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step52CompleteOut.fv.payload[4]?.getD s6Step52CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step52EntryFBefore s6Step52EarlyControlArena s6Step52FrontBank 242 39 ⟨241,241,39,38⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52CompleteLog s6Step52FrontPlan Q
    s6Step52Front_checked s6Step52Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step52Complete_owned s6Step52Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step52EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 s6Step52CompleteOut.fv.second (s6Step52CompleteOut.fv.payload[2]?.getD s6Step52CompleteOut.fv.sign) (s6Step52CompleteOut.fv.payload[3]?.getD s6Step52CompleteOut.fv.sign) (s6Step52CompleteOut.fv.payload[4]?.getD s6Step52CompleteOut.fv.sign) 864 23 s6Step52EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step52Complete_checked : (compileHmrEarlyStepLog s6Step52EntryFBefore s6Step52FrontBank 242 39 ⟨241,241,39,38⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 23 s6Step52CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step52Complete_explicit_checked]
  rfl
def s6Step53CompleteMoves : List (Wire × Wire) := []
def s6Step53CompleteOut : WindowBank := s6Step53FrontOut.repacked s6Step53CompleteMoves
def s6Step53CompleteLog : HmrEarlyStepLog := ⟨s6Step53FrontLog,s6Step53CompleteMoves,s6Step53EarlyControlLog⟩
theorem s6Step53Complete_repack : s6Step53ExitGvAfter.checkRepack s6Step53CompleteMoves=some s6Step53EarlyControlArena := by rfl
theorem s6Step53Complete_owned : (s6Step53CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step53EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step53EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Complete_apart : List.Disjoint (s6Step53CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] := by
  have nd : ((s6Step53CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 828, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step53CompletePlan : HmrEarlyStepPlan := ⟨s6Step53FrontPlan,s6Step53EarlyControlArena,s6Step53EarlyControlPlan,s6Step53CompleteMoves⟩
theorem s6Step53Complete_explicit_checked : compileHmrEarlyStepLog s6Step53EntryFBefore s6Step53FrontBank 241 39 ⟨241,241,40,39⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53CompleteLog=some s6Step53CompletePlan := by
  let Q := s6Step53EarlyControlPlan
  have hq := s6Step53EarlyControl_plan_checked
  have fv1 : s6Step53CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step53CompleteOut.fv.payload[2]?.getD s6Step53CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step53CompleteOut.fv.payload[3]?.getD s6Step53CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step53CompleteOut.fv.payload[4]?.getD s6Step53CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step53EntryFBefore s6Step53EarlyControlArena s6Step53FrontBank 241 39 ⟨241,241,40,39⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53CompleteLog s6Step53FrontPlan Q
    s6Step53Front_checked s6Step53Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step53Complete_owned s6Step53Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step53EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 769 818 s6Step53CompleteOut.fv.second (s6Step53CompleteOut.fv.payload[2]?.getD s6Step53CompleteOut.fv.sign) (s6Step53CompleteOut.fv.payload[3]?.getD s6Step53CompleteOut.fv.sign) (s6Step53CompleteOut.fv.payload[4]?.getD s6Step53CompleteOut.fv.sign) 828 24 s6Step53EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step53Complete_checked : (compileHmrEarlyStepLog s6Step53EntryFBefore s6Step53FrontBank 241 39 ⟨241,241,40,39⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] 24 s6Step53CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step53Complete_explicit_checked]
  rfl
def s6Step54CompleteMoves : List (Wire × Wire) := [(882,240)]
def s6Step54CompleteOut : WindowBank := s6Step54FrontOut.repacked s6Step54CompleteMoves
def s6Step54CompleteLog : HmrEarlyStepLog := ⟨s6Step54FrontLog,s6Step54CompleteMoves,s6Step54EarlyControlLog⟩
def s6Step54CompleteRelocationMove0Borrowed : Arena := ⟨s6Step54ExitGvAfter.live∪{240},Finset.union_subset s6Step54ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step54CompleteRelocation_move0_owned : 882∈s6Step54ExitGvAfter.live := by norm_num [s6Step54ExitGvAfter,arenaWires]
theorem s6Step54CompleteRelocation_move0_reserve : s6Step54ExitGvAfter.reserve {240}=some s6Step54CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step54ExitGvAfter,arenaWires]
  · rfl
theorem s6Step54CompleteRelocation_move0_retire : s6Step54CompleteRelocationMove0Borrowed.retireSet {882}=s6Step54EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step54CompleteRelocationMove0Borrowed s6Step54EarlyControlArena {882}
  change s6Step54EarlyControlArena.live=(s6Step54ExitGvAfter.live∪{240})\{882}
  apply hmrArena_update_of_filter_check s6Step54ExitGvAfter s6Step54EarlyControlArena (fun q => ([(0,240),(241,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [240] [882] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step54CompleteRelocation_checked : s6Step54ExitGvAfter.checkRepack [(882,240)]=some s6Step54EarlyControlArena := by
  have tail1 : s6Step54EarlyControlArena.checkRepack []=some s6Step54EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step54ExitGvAfter s6Step54CompleteRelocationMove0Borrowed s6Step54EarlyControlArena s6Step54EarlyControlArena 882 240 []
    s6Step54CompleteRelocation_move0_owned s6Step54CompleteRelocation_move0_reserve s6Step54CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step54Complete_repack : s6Step54ExitGvAfter.checkRepack s6Step54CompleteMoves=some s6Step54EarlyControlArena := by
  simpa only [s6Step54CompleteMoves] using s6Step54CompleteRelocation_checked
theorem s6Step54Complete_owned : (s6Step54CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step54EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step54EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Complete_apart : List.Disjoint (s6Step54CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] := by
  have nd : ((s6Step54CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step54CompletePlan : HmrEarlyStepPlan := ⟨s6Step54FrontPlan,s6Step54EarlyControlArena,s6Step54EarlyControlPlan,s6Step54CompleteMoves⟩
theorem s6Step54Complete_explicit_checked : compileHmrEarlyStepLog s6Step54EntryFBefore s6Step54FrontBank 241 40 ⟨241,240,41,40⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54CompleteLog=some s6Step54CompletePlan := by
  let Q := s6Step54EarlyControlPlan
  have hq := s6Step54EarlyControl_plan_checked
  have fv1 : s6Step54CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step54CompleteOut.fv.payload[2]?.getD s6Step54CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step54CompleteOut.fv.payload[3]?.getD s6Step54CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step54CompleteOut.fv.payload[4]?.getD s6Step54CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step54EntryFBefore s6Step54EarlyControlArena s6Step54FrontBank 241 40 ⟨241,240,41,40⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54CompleteLog s6Step54FrontPlan Q
    s6Step54Front_checked s6Step54Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step54Complete_owned s6Step54Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step54EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 818 s6Step54CompleteOut.fv.second (s6Step54CompleteOut.fv.payload[2]?.getD s6Step54CompleteOut.fv.sign) (s6Step54CompleteOut.fv.payload[3]?.getD s6Step54CompleteOut.fv.sign) (s6Step54CompleteOut.fv.payload[4]?.getD s6Step54CompleteOut.fv.sign) 880 24 s6Step54EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step54Complete_checked : (compileHmrEarlyStepLog s6Step54EntryFBefore s6Step54FrontBank 241 40 ⟨241,240,41,40⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 24 s6Step54CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step54Complete_explicit_checked]
  rfl
def s6Step55CompleteMoves : List (Wire × Wire) := [(822,496)]
def s6Step55CompleteOut : WindowBank := s6Step55FrontOut.repacked s6Step55CompleteMoves
def s6Step55CompleteLog : HmrEarlyStepLog := ⟨s6Step55FrontLog,s6Step55CompleteMoves,s6Step55EarlyControlLog⟩
def s6Step55CompleteRelocationMove0Borrowed : Arena := ⟨s6Step55ExitGvAfter.live∪{496},Finset.union_subset s6Step55ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step55CompleteRelocation_move0_owned : 822∈s6Step55ExitGvAfter.live := by norm_num [s6Step55ExitGvAfter,arenaWires]
theorem s6Step55CompleteRelocation_move0_reserve : s6Step55ExitGvAfter.reserve {496}=some s6Step55CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step55ExitGvAfter,arenaWires]
  · rfl
theorem s6Step55CompleteRelocation_move0_retire : s6Step55CompleteRelocationMove0Borrowed.retireSet {822}=s6Step55EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step55CompleteRelocationMove0Borrowed s6Step55EarlyControlArena {822}
  change s6Step55EarlyControlArena.live=(s6Step55ExitGvAfter.live∪{496})\{822}
  apply hmrArena_update_of_filter_check s6Step55ExitGvAfter s6Step55EarlyControlArena (fun q => ([(0,496),(497,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [496] [822] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step55CompleteRelocation_checked : s6Step55ExitGvAfter.checkRepack [(822,496)]=some s6Step55EarlyControlArena := by
  have tail1 : s6Step55EarlyControlArena.checkRepack []=some s6Step55EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step55ExitGvAfter s6Step55CompleteRelocationMove0Borrowed s6Step55EarlyControlArena s6Step55EarlyControlArena 822 496 []
    s6Step55CompleteRelocation_move0_owned s6Step55CompleteRelocation_move0_reserve s6Step55CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step55Complete_repack : s6Step55ExitGvAfter.checkRepack s6Step55CompleteMoves=some s6Step55EarlyControlArena := by
  simpa only [s6Step55CompleteMoves] using s6Step55CompleteRelocation_checked
theorem s6Step55Complete_owned : (s6Step55CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step55EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step55EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Complete_apart : List.Disjoint (s6Step55CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [882, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] := by
  have nd : ((s6Step55CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[882, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step55CompletePlan : HmrEarlyStepPlan := ⟨s6Step55FrontPlan,s6Step55EarlyControlArena,s6Step55EarlyControlPlan,s6Step55CompleteMoves⟩
theorem s6Step55Complete_explicit_checked : compileHmrEarlyStepLog s6Step55EntryFBefore s6Step55FrontBank 241 41 ⟨240,240,40,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55CompleteLog=some s6Step55CompletePlan := by
  let Q := s6Step55EarlyControlPlan
  have hq := s6Step55EarlyControl_plan_checked
  have fv1 : s6Step55CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step55CompleteOut.fv.payload[2]?.getD s6Step55CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step55CompleteOut.fv.payload[3]?.getD s6Step55CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step55CompleteOut.fv.payload[4]?.getD s6Step55CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step55EntryFBefore s6Step55EarlyControlArena s6Step55FrontBank 241 41 ⟨240,240,40,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55CompleteLog s6Step55FrontPlan Q
    s6Step55Front_checked s6Step55Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step55Complete_owned s6Step55Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step55EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 769 882 s6Step55CompleteOut.fv.second (s6Step55CompleteOut.fv.payload[2]?.getD s6Step55CompleteOut.fv.sign) (s6Step55CompleteOut.fv.payload[3]?.getD s6Step55CompleteOut.fv.sign) (s6Step55CompleteOut.fv.payload[4]?.getD s6Step55CompleteOut.fv.sign) 793 25 s6Step55EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step55Complete_checked : (compileHmrEarlyStepLog s6Step55EntryFBefore s6Step55FrontBank 241 41 ⟨240,240,40,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] 25 s6Step55CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step55Complete_explicit_checked]
  rfl
def s6Step56CompleteMoves : List (Wire × Wire) := [(833,239)]
def s6Step56CompleteOut : WindowBank := s6Step56FrontOut.repacked s6Step56CompleteMoves
def s6Step56CompleteLog : HmrEarlyStepLog := ⟨s6Step56FrontLog,s6Step56CompleteMoves,s6Step56EarlyControlLog⟩
def s6Step56CompleteRelocationMove0Borrowed : Arena := ⟨s6Step56ExitGvAfter.live∪{239},Finset.union_subset s6Step56ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step56CompleteRelocation_move0_owned : 833∈s6Step56ExitGvAfter.live := by norm_num [s6Step56ExitGvAfter,arenaWires]
theorem s6Step56CompleteRelocation_move0_reserve : s6Step56ExitGvAfter.reserve {239}=some s6Step56CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step56ExitGvAfter,arenaWires]
  · rfl
theorem s6Step56CompleteRelocation_move0_retire : s6Step56CompleteRelocationMove0Borrowed.retireSet {833}=s6Step56EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step56CompleteRelocationMove0Borrowed s6Step56EarlyControlArena {833}
  change s6Step56EarlyControlArena.live=(s6Step56ExitGvAfter.live∪{239})\{833}
  apply hmrArena_update_of_filter_check s6Step56ExitGvAfter s6Step56EarlyControlArena (fun q => ([(0,239),(240,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [239] [833] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step56CompleteRelocation_checked : s6Step56ExitGvAfter.checkRepack [(833,239)]=some s6Step56EarlyControlArena := by
  have tail1 : s6Step56EarlyControlArena.checkRepack []=some s6Step56EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step56ExitGvAfter s6Step56CompleteRelocationMove0Borrowed s6Step56EarlyControlArena s6Step56EarlyControlArena 833 239 []
    s6Step56CompleteRelocation_move0_owned s6Step56CompleteRelocation_move0_reserve s6Step56CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step56Complete_repack : s6Step56ExitGvAfter.checkRepack s6Step56CompleteMoves=some s6Step56EarlyControlArena := by
  simpa only [s6Step56CompleteMoves] using s6Step56CompleteRelocation_checked
theorem s6Step56Complete_owned : (s6Step56CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step56EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step56EarlyControlArena (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Complete_apart : List.Disjoint (s6Step56CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [882, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step56CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[882, 822, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step56CompletePlan : HmrEarlyStepPlan := ⟨s6Step56FrontPlan,s6Step56EarlyControlArena,s6Step56EarlyControlPlan,s6Step56CompleteMoves⟩
theorem s6Step56Complete_explicit_checked : compileHmrEarlyStepLog s6Step56EntryFBefore s6Step56FrontBank 240 41 ⟨240,239,41,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56CompleteLog=some s6Step56CompletePlan := by
  let Q := s6Step56EarlyControlPlan
  have hq := s6Step56EarlyControl_plan_checked
  have fv1 : s6Step56CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step56CompleteOut.fv.payload[2]?.getD s6Step56CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step56CompleteOut.fv.payload[3]?.getD s6Step56CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step56CompleteOut.fv.payload[4]?.getD s6Step56CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step56EntryFBefore s6Step56EarlyControlArena s6Step56FrontBank 240 41 ⟨240,239,41,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56CompleteLog s6Step56FrontPlan Q
    s6Step56Front_checked s6Step56Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step56Complete_owned s6Step56Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step56EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 s6Step56CompleteOut.fv.second (s6Step56CompleteOut.fv.payload[2]?.getD s6Step56CompleteOut.fv.sign) (s6Step56CompleteOut.fv.payload[3]?.getD s6Step56CompleteOut.fv.sign) (s6Step56CompleteOut.fv.payload[4]?.getD s6Step56CompleteOut.fv.sign) 822 25 s6Step56EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step56Complete_checked : (compileHmrEarlyStepLog s6Step56EntryFBefore s6Step56FrontBank 240 41 ⟨240,239,41,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step56CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step56Complete_explicit_checked]
  rfl
def s6Step57CompleteMoves : List (Wire × Wire) := [(886,238),(780,495)]
def s6Step57CompleteOut : WindowBank := s6Step57FrontOut.repacked s6Step57CompleteMoves
def s6Step57CompleteLog : HmrEarlyStepLog := ⟨s6Step57FrontLog,s6Step57CompleteMoves,s6Step57EarlyControlLog⟩
def s6Step57CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step57CompleteRelocationMove0Borrowed : Arena := ⟨s6Step57ExitGvAfter.live∪{238},Finset.union_subset s6Step57ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step57CompleteRelocation_move0_owned : 886∈s6Step57ExitGvAfter.live := by norm_num [s6Step57ExitGvAfter,arenaWires]
theorem s6Step57CompleteRelocation_move0_reserve : s6Step57ExitGvAfter.reserve {238}=some s6Step57CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step57ExitGvAfter,arenaWires]
  · rfl
theorem s6Step57CompleteRelocation_move0_retire : s6Step57CompleteRelocationMove0Borrowed.retireSet {886}=s6Step57CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step57CompleteRelocationMove0Borrowed s6Step57CompleteRelocationMove0After {886}
  change s6Step57CompleteRelocationMove0After.live=(s6Step57ExitGvAfter.live∪{238})\{886}
  apply hmrArena_update_of_filter_check s6Step57ExitGvAfter s6Step57CompleteRelocationMove0After (fun q => ([(0,238),(239,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [238] [886] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step57CompleteRelocationMove1Borrowed : Arena := ⟨s6Step57CompleteRelocationMove0After.live∪{495},Finset.union_subset s6Step57CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step57CompleteRelocation_move1_owned : 780∈s6Step57CompleteRelocationMove0After.live := by norm_num [s6Step57CompleteRelocationMove0After,arenaWires]
theorem s6Step57CompleteRelocation_move1_reserve : s6Step57CompleteRelocationMove0After.reserve {495}=some s6Step57CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step57CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step57CompleteRelocation_move1_retire : s6Step57CompleteRelocationMove1Borrowed.retireSet {780}=s6Step57EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step57CompleteRelocationMove1Borrowed s6Step57EarlyControlArena {780}
  change s6Step57EarlyControlArena.live=(s6Step57CompleteRelocationMove0After.live∪{495})\{780}
  apply hmrArena_update_of_filter_check s6Step57CompleteRelocationMove0After s6Step57EarlyControlArena (fun q => ([(0,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [495] [780] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step57CompleteRelocation_checked : s6Step57ExitGvAfter.checkRepack [(886,238),(780,495)]=some s6Step57EarlyControlArena := by
  have tail2 : s6Step57EarlyControlArena.checkRepack []=some s6Step57EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step57CompleteRelocationMove0After s6Step57CompleteRelocationMove1Borrowed s6Step57EarlyControlArena s6Step57EarlyControlArena 780 495 []
    s6Step57CompleteRelocation_move1_owned s6Step57CompleteRelocation_move1_reserve s6Step57CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step57ExitGvAfter s6Step57CompleteRelocationMove0Borrowed s6Step57CompleteRelocationMove0After s6Step57EarlyControlArena 886 238 [(780,495)]
    s6Step57CompleteRelocation_move0_owned s6Step57CompleteRelocation_move0_reserve s6Step57CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step57Complete_repack : s6Step57ExitGvAfter.checkRepack s6Step57CompleteMoves=some s6Step57EarlyControlArena := by
  simpa only [s6Step57CompleteMoves] using s6Step57CompleteRelocation_checked
theorem s6Step57Complete_owned : (s6Step57CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step57EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step57EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Complete_apart : List.Disjoint (s6Step57CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [882, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step57CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[882, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step57CompletePlan : HmrEarlyStepPlan := ⟨s6Step57FrontPlan,s6Step57EarlyControlArena,s6Step57EarlyControlPlan,s6Step57CompleteMoves⟩
theorem s6Step57Complete_explicit_checked : compileHmrEarlyStepLog s6Step57EntryFBefore s6Step57FrontBank 240 41 ⟨239,238,41,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57CompleteLog=some s6Step57CompletePlan := by
  let Q := s6Step57EarlyControlPlan
  have hq := s6Step57EarlyControl_plan_checked
  have fv1 : s6Step57CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step57CompleteOut.fv.payload[2]?.getD s6Step57CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step57CompleteOut.fv.payload[3]?.getD s6Step57CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step57CompleteOut.fv.payload[4]?.getD s6Step57CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step57EntryFBefore s6Step57EarlyControlArena s6Step57FrontBank 240 41 ⟨239,238,41,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57CompleteLog s6Step57FrontPlan Q
    s6Step57Front_checked s6Step57Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step57Complete_owned s6Step57Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step57EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 s6Step57CompleteOut.fv.second (s6Step57CompleteOut.fv.payload[2]?.getD s6Step57CompleteOut.fv.sign) (s6Step57CompleteOut.fv.payload[3]?.getD s6Step57CompleteOut.fv.sign) (s6Step57CompleteOut.fv.payload[4]?.getD s6Step57CompleteOut.fv.sign) 833 25 s6Step57EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step57Complete_checked : (compileHmrEarlyStepLog s6Step57EntryFBefore s6Step57FrontBank 240 41 ⟨239,238,41,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step57CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step57Complete_explicit_checked]
  rfl
def s6Step58CompleteMoves : List (Wire × Wire) := []
def s6Step58CompleteOut : WindowBank := s6Step58FrontOut.repacked s6Step58CompleteMoves
def s6Step58CompleteLog : HmrEarlyStepLog := ⟨s6Step58FrontLog,s6Step58CompleteMoves,s6Step58EarlyControlLog⟩
theorem s6Step58Complete_repack : s6Step58ExitGvAfter.checkRepack s6Step58CompleteMoves=some s6Step58EarlyControlArena := by rfl
theorem s6Step58Complete_owned : (s6Step58CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step58EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step58EarlyControlArena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Complete_apart : List.Disjoint (s6Step58CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [882, 780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step58CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[882, 780, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step58CompletePlan : HmrEarlyStepPlan := ⟨s6Step58FrontPlan,s6Step58EarlyControlArena,s6Step58EarlyControlPlan,s6Step58CompleteMoves⟩
theorem s6Step58Complete_explicit_checked : compileHmrEarlyStepLog s6Step58EntryFBefore s6Step58FrontBank 239 41 ⟨239,238,42,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58CompleteLog=some s6Step58CompletePlan := by
  let Q := s6Step58EarlyControlPlan
  have hq := s6Step58EarlyControl_plan_checked
  have fv1 : s6Step58CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step58CompleteOut.fv.payload[2]?.getD s6Step58CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step58CompleteOut.fv.payload[3]?.getD s6Step58CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step58CompleteOut.fv.payload[4]?.getD s6Step58CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step58EntryFBefore s6Step58EarlyControlArena s6Step58FrontBank 239 41 ⟨239,238,42,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58CompleteLog s6Step58FrontPlan Q
    s6Step58Front_checked s6Step58Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step58Complete_owned s6Step58Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step58EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 882 s6Step58CompleteOut.fv.second (s6Step58CompleteOut.fv.payload[2]?.getD s6Step58CompleteOut.fv.sign) (s6Step58CompleteOut.fv.payload[3]?.getD s6Step58CompleteOut.fv.sign) (s6Step58CompleteOut.fv.payload[4]?.getD s6Step58CompleteOut.fv.sign) 780 25 s6Step58EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step58Complete_checked : (compileHmrEarlyStepLog s6Step58EntryFBefore s6Step58FrontBank 239 41 ⟨239,238,42,41⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step58CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step58Complete_explicit_checked]
  rfl
def s6Step59CompleteMoves : List (Wire × Wire) := []
def s6Step59CompleteOut : WindowBank := s6Step59FrontOut.repacked s6Step59CompleteMoves
def s6Step59CompleteLog : HmrEarlyStepLog := ⟨s6Step59FrontLog,s6Step59CompleteMoves,s6Step59EarlyControlLog⟩
theorem s6Step59Complete_repack : s6Step59ExitGvAfter.checkRepack s6Step59CompleteMoves=some s6Step59EarlyControlArena := by rfl
theorem s6Step59Complete_owned : (s6Step59CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step59EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step59EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Complete_apart : List.Disjoint (s6Step59CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [868, 875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step59CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[868, 875, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step59CompletePlan : HmrEarlyStepPlan := ⟨s6Step59FrontPlan,s6Step59EarlyControlArena,s6Step59EarlyControlPlan,s6Step59CompleteMoves⟩
theorem s6Step59Complete_explicit_checked : compileHmrEarlyStepLog s6Step59EntryFBefore s6Step59FrontBank 239 42 ⟨239,238,43,42⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59CompleteLog=some s6Step59CompletePlan := by
  let Q := s6Step59EarlyControlPlan
  have hq := s6Step59EarlyControl_plan_checked
  have fv1 : s6Step59CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step59CompleteOut.fv.payload[2]?.getD s6Step59CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step59CompleteOut.fv.payload[3]?.getD s6Step59CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step59CompleteOut.fv.payload[4]?.getD s6Step59CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step59EntryFBefore s6Step59EarlyControlArena s6Step59FrontBank 239 42 ⟨239,238,43,42⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59CompleteLog s6Step59FrontPlan Q
    s6Step59Front_checked s6Step59Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step59Complete_owned s6Step59Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step59EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 868 s6Step59CompleteOut.fv.second (s6Step59CompleteOut.fv.payload[2]?.getD s6Step59CompleteOut.fv.sign) (s6Step59CompleteOut.fv.payload[3]?.getD s6Step59CompleteOut.fv.sign) (s6Step59CompleteOut.fv.payload[4]?.getD s6Step59CompleteOut.fv.sign) 875 25 s6Step59EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step59Complete_checked : (compileHmrEarlyStepLog s6Step59EntryFBefore s6Step59FrontBank 239 42 ⟨239,238,43,42⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step59CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step59Complete_explicit_checked]
  rfl
def s6Step60CompleteMoves : List (Wire × Wire) := [(838,237)]
def s6Step60CompleteOut : WindowBank := s6Step60FrontOut.repacked s6Step60CompleteMoves
def s6Step60CompleteLog : HmrEarlyStepLog := ⟨s6Step60FrontLog,s6Step60CompleteMoves,s6Step60EarlyControlLog⟩
def s6Step60CompleteRelocationMove0Borrowed : Arena := ⟨s6Step60ExitGvAfter.live∪{237},Finset.union_subset s6Step60ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step60CompleteRelocation_move0_owned : 838∈s6Step60ExitGvAfter.live := by norm_num [s6Step60ExitGvAfter,arenaWires]
theorem s6Step60CompleteRelocation_move0_reserve : s6Step60ExitGvAfter.reserve {237}=some s6Step60CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step60ExitGvAfter,arenaWires]
  · rfl
theorem s6Step60CompleteRelocation_move0_retire : s6Step60CompleteRelocationMove0Borrowed.retireSet {838}=s6Step60EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step60CompleteRelocationMove0Borrowed s6Step60EarlyControlArena {838}
  change s6Step60EarlyControlArena.live=(s6Step60ExitGvAfter.live∪{237})\{838}
  apply hmrArena_update_of_filter_check s6Step60ExitGvAfter s6Step60EarlyControlArena (fun q => ([(0,237),(238,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [237] [838] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step60CompleteRelocation_checked : s6Step60ExitGvAfter.checkRepack [(838,237)]=some s6Step60EarlyControlArena := by
  have tail1 : s6Step60EarlyControlArena.checkRepack []=some s6Step60EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step60ExitGvAfter s6Step60CompleteRelocationMove0Borrowed s6Step60EarlyControlArena s6Step60EarlyControlArena 838 237 []
    s6Step60CompleteRelocation_move0_owned s6Step60CompleteRelocation_move0_reserve s6Step60CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step60Complete_repack : s6Step60ExitGvAfter.checkRepack s6Step60CompleteMoves=some s6Step60EarlyControlArena := by
  simpa only [s6Step60CompleteMoves] using s6Step60CompleteRelocation_checked
theorem s6Step60Complete_owned : (s6Step60CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step60EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step60EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Complete_apart : List.Disjoint (s6Step60CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step60CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 886, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step60CompletePlan : HmrEarlyStepPlan := ⟨s6Step60FrontPlan,s6Step60EarlyControlArena,s6Step60EarlyControlPlan,s6Step60CompleteMoves⟩
theorem s6Step60Complete_explicit_checked : compileHmrEarlyStepLog s6Step60EntryFBefore s6Step60FrontBank 239 43 ⟨239,237,44,43⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60CompleteLog=some s6Step60CompletePlan := by
  let Q := s6Step60EarlyControlPlan
  have hq := s6Step60EarlyControl_plan_checked
  have fv1 : s6Step60CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step60CompleteOut.fv.payload[2]?.getD s6Step60CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step60CompleteOut.fv.payload[3]?.getD s6Step60CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step60CompleteOut.fv.payload[4]?.getD s6Step60CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step60EntryFBefore s6Step60EarlyControlArena s6Step60FrontBank 239 43 ⟨239,237,44,43⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60CompleteLog s6Step60FrontPlan Q
    s6Step60Front_checked s6Step60Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step60Complete_owned s6Step60Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step60EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 822 s6Step60CompleteOut.fv.second (s6Step60CompleteOut.fv.payload[2]?.getD s6Step60CompleteOut.fv.sign) (s6Step60CompleteOut.fv.payload[3]?.getD s6Step60CompleteOut.fv.sign) (s6Step60CompleteOut.fv.payload[4]?.getD s6Step60CompleteOut.fv.sign) 886 25 s6Step60EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step60Complete_checked : (compileHmrEarlyStepLog s6Step60EntryFBefore s6Step60FrontBank 239 43 ⟨239,237,44,43⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step60CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step60Complete_explicit_checked]
  rfl
def s6Step61CompleteMoves : List (Wire × Wire) := [(888,494)]
def s6Step61CompleteOut : WindowBank := s6Step61FrontOut.repacked s6Step61CompleteMoves
def s6Step61CompleteLog : HmrEarlyStepLog := ⟨s6Step61FrontLog,s6Step61CompleteMoves,s6Step61EarlyControlLog⟩
def s6Step61CompleteRelocationMove0Borrowed : Arena := ⟨s6Step61ExitGvAfter.live∪{494},Finset.union_subset s6Step61ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step61CompleteRelocation_move0_owned : 888∈s6Step61ExitGvAfter.live := by norm_num [s6Step61ExitGvAfter,arenaWires]
theorem s6Step61CompleteRelocation_move0_reserve : s6Step61ExitGvAfter.reserve {494}=some s6Step61CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step61ExitGvAfter,arenaWires]
  · rfl
theorem s6Step61CompleteRelocation_move0_retire : s6Step61CompleteRelocationMove0Borrowed.retireSet {888}=s6Step61EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step61CompleteRelocationMove0Borrowed s6Step61EarlyControlArena {888}
  change s6Step61EarlyControlArena.live=(s6Step61ExitGvAfter.live∪{494})\{888}
  apply hmrArena_update_of_filter_check s6Step61ExitGvAfter s6Step61EarlyControlArena (fun q => ([(0,494),(495,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [494] [888] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step61CompleteRelocation_checked : s6Step61ExitGvAfter.checkRepack [(888,494)]=some s6Step61EarlyControlArena := by
  have tail1 : s6Step61EarlyControlArena.checkRepack []=some s6Step61EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step61ExitGvAfter s6Step61CompleteRelocationMove0Borrowed s6Step61EarlyControlArena s6Step61EarlyControlArena 888 494 []
    s6Step61CompleteRelocation_move0_owned s6Step61CompleteRelocation_move0_reserve s6Step61CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step61Complete_repack : s6Step61ExitGvAfter.checkRepack s6Step61CompleteMoves=some s6Step61EarlyControlArena := by
  simpa only [s6Step61CompleteMoves] using s6Step61CompleteRelocation_checked
theorem s6Step61Complete_owned : (s6Step61CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step61EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step61EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Complete_apart : List.Disjoint (s6Step61CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [880, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step61CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[880, 833, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step61CompletePlan : HmrEarlyStepPlan := ⟨s6Step61FrontPlan,s6Step61EarlyControlArena,s6Step61EarlyControlPlan,s6Step61CompleteMoves⟩
theorem s6Step61Complete_explicit_checked : compileHmrEarlyStepLog s6Step61EntryFBefore s6Step61FrontBank 239 44 ⟨238,237,44,43⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61CompleteLog=some s6Step61CompletePlan := by
  let Q := s6Step61EarlyControlPlan
  have hq := s6Step61EarlyControl_plan_checked
  have fv1 : s6Step61CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step61CompleteOut.fv.payload[2]?.getD s6Step61CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step61CompleteOut.fv.payload[3]?.getD s6Step61CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step61CompleteOut.fv.payload[4]?.getD s6Step61CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step61EntryFBefore s6Step61EarlyControlArena s6Step61FrontBank 239 44 ⟨238,237,44,43⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61CompleteLog s6Step61FrontPlan Q
    s6Step61Front_checked s6Step61Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step61Complete_owned s6Step61Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step61EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 880 s6Step61CompleteOut.fv.second (s6Step61CompleteOut.fv.payload[2]?.getD s6Step61CompleteOut.fv.sign) (s6Step61CompleteOut.fv.payload[3]?.getD s6Step61CompleteOut.fv.sign) (s6Step61CompleteOut.fv.payload[4]?.getD s6Step61CompleteOut.fv.sign) 833 25 s6Step61EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step61Complete_checked : (compileHmrEarlyStepLog s6Step61EntryFBefore s6Step61FrontBank 239 44 ⟨238,237,44,43⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 25 s6Step61CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step61Complete_explicit_checked]
  rfl
def s6Step62CompleteMoves : List (Wire × Wire) := [(778,493)]
def s6Step62CompleteOut : WindowBank := s6Step62FrontOut.repacked s6Step62CompleteMoves
def s6Step62CompleteLog : HmrEarlyStepLog := ⟨s6Step62FrontLog,s6Step62CompleteMoves,s6Step62EarlyControlLog⟩
def s6Step62CompleteRelocationMove0Borrowed : Arena := ⟨s6Step62ExitGvAfter.live∪{493},Finset.union_subset s6Step62ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step62CompleteRelocation_move0_owned : 778∈s6Step62ExitGvAfter.live := by norm_num [s6Step62ExitGvAfter,arenaWires]
theorem s6Step62CompleteRelocation_move0_reserve : s6Step62ExitGvAfter.reserve {493}=some s6Step62CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step62ExitGvAfter,arenaWires]
  · rfl
theorem s6Step62CompleteRelocation_move0_retire : s6Step62CompleteRelocationMove0Borrowed.retireSet {778}=s6Step62EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step62CompleteRelocationMove0Borrowed s6Step62EarlyControlArena {778}
  change s6Step62EarlyControlArena.live=(s6Step62ExitGvAfter.live∪{493})\{778}
  apply hmrArena_update_of_filter_check s6Step62ExitGvAfter s6Step62EarlyControlArena (fun q => ([(0,493),(494,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [493] [778] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step62CompleteRelocation_checked : s6Step62ExitGvAfter.checkRepack [(778,493)]=some s6Step62EarlyControlArena := by
  have tail1 : s6Step62EarlyControlArena.checkRepack []=some s6Step62EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step62ExitGvAfter s6Step62CompleteRelocationMove0Borrowed s6Step62EarlyControlArena s6Step62EarlyControlArena 778 493 []
    s6Step62CompleteRelocation_move0_owned s6Step62CompleteRelocation_move0_reserve s6Step62CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step62Complete_repack : s6Step62ExitGvAfter.checkRepack s6Step62CompleteMoves=some s6Step62EarlyControlArena := by
  simpa only [s6Step62CompleteMoves] using s6Step62CompleteRelocation_checked
theorem s6Step62Complete_owned : (s6Step62CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step62EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step62EarlyControlArena (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Complete_apart : List.Disjoint (s6Step62CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := by
  have nd : ((s6Step62CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step62CompletePlan : HmrEarlyStepPlan := ⟨s6Step62FrontPlan,s6Step62EarlyControlArena,s6Step62EarlyControlPlan,s6Step62CompleteMoves⟩
theorem s6Step62Complete_explicit_checked : compileHmrEarlyStepLog s6Step62EntryFBefore s6Step62FrontBank 238 44 ⟨237,237,45,44⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62CompleteLog=some s6Step62CompletePlan := by
  let Q := s6Step62EarlyControlPlan
  have hq := s6Step62EarlyControl_plan_checked
  have fv1 : s6Step62CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step62CompleteOut.fv.payload[2]?.getD s6Step62CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step62CompleteOut.fv.payload[3]?.getD s6Step62CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step62CompleteOut.fv.payload[4]?.getD s6Step62CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step62EntryFBefore s6Step62EarlyControlArena s6Step62FrontBank 238 44 ⟨237,237,45,44⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62CompleteLog s6Step62FrontPlan Q
    s6Step62Front_checked s6Step62Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step62Complete_owned s6Step62Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step62EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 769 888 s6Step62CompleteOut.fv.second (s6Step62CompleteOut.fv.payload[2]?.getD s6Step62CompleteOut.fv.sign) (s6Step62CompleteOut.fv.payload[3]?.getD s6Step62CompleteOut.fv.sign) (s6Step62CompleteOut.fv.payload[4]?.getD s6Step62CompleteOut.fv.sign) 838 26 s6Step62EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step62Complete_checked : (compileHmrEarlyStepLog s6Step62EntryFBefore s6Step62FrontBank 238 44 ⟨237,237,45,44⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] 26 s6Step62CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step62Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
