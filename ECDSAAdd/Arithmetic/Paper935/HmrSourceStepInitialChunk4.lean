import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl3
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk3

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
def s6Step498CompleteMoves : List (Wire × Wire) := []
def s6Step498CompleteOut : WindowBank := s6Step498FrontOut.repacked s6Step498CompleteMoves
def s6Step498CompleteLog : HmrArmedStepLog := ⟨s6Step498FrontLog,s6Step498CompleteMoves,s6FirstArmedControlLog⟩
theorem s6Step498Complete_repack : s6Step498ExitGvAfter.checkRepack s6Step498CompleteMoves=some s6FirstArmedControlArena := by rfl
theorem s6Step498Complete_owned : (s6Step498CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6FirstArmedControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstArmedControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Complete_apart : List.Disjoint (s6Step498CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [791, 842, 819, 843, 874, 892, 881, 879, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step498CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[791, 842, 819, 843, 874, 892, 881, 879, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
theorem s6Step498Complete_checked : (compileHmrArmedStepLog s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ 819 [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 1 60 s6Step498CompleteLog).map (fun _ => true)=some true := by
  obtain ⟨Q,hq,_⟩ := Option.map_eq_some_iff.mp s6FirstArmedControl_checked
  have fv1 : s6Step498CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step498CompleteOut.fv.payload[2]?.getD s6Step498CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step498CompleteOut.fv.payload[3]?.getD s6Step498CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step498CompleteOut.fv.payload[4]?.getD s6Step498CompleteOut.fv.sign=251 := by decide +kernel
  have gEq : s6Step498CompleteOut.g.wires=s6FirstArmedControlG := by decide +kernel
  have result := compileHmrArmedStepLog_of_parts s6Step498EntryFBefore s6FirstArmedControlArena s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ 819 [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 1 60 s6Step498CompleteLog s6Step498FrontPlan Q
    s6Step498Front_checked s6Step498Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step498Complete_owned s6Step498Complete_apart)))
    (by
      change compileHmrArmedControlLog s6FirstArmedControlArena s6Step498CompleteOut.g.wires [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 819 769 791 s6Step498CompleteOut.fv.second (s6Step498CompleteOut.fv.payload[2]?.getD s6Step498CompleteOut.fv.sign) (s6Step498CompleteOut.fv.payload[3]?.getD s6Step498CompleteOut.fv.sign) (s6Step498CompleteOut.fv.payload[4]?.getD s6Step498CompleteOut.fv.sign) 842 1 60 s6FirstArmedControlLog=some Q
      rw [fv1,fv2,fv3,fv4,gEq]
      exact hq)
  rw [result]
  rfl

end ECDSAAdd.Arithmetic.Paper935
