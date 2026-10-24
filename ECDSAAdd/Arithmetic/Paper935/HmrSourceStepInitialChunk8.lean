import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl7
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk7

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step63CompleteMoves : List (Wire × Wire) := []
def s6Step63CompleteOut : WindowBank := s6Step63FrontOut.repacked s6Step63CompleteMoves
def s6Step63CompleteLog : HmrEarlyStepLog := ⟨s6Step63FrontLog,s6Step63CompleteMoves,s6Step63EarlyControlLog⟩
theorem s6Step63Complete_repack : s6Step63ExitGvAfter.checkRepack s6Step63CompleteMoves=some s6Step63EarlyControlArena := by rfl
theorem s6Step63Complete_owned : (s6Step63CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step63EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step63EarlyControlArena (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step63Complete_apart : List.Disjoint (s6Step63CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] := by
  have nd : ((s6Step63CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step63CompletePlan : HmrEarlyStepPlan := ⟨s6Step63FrontPlan,s6Step63EarlyControlArena,s6Step63EarlyControlPlan,s6Step63CompleteMoves⟩
theorem s6Step63Complete_explicit_checked : compileHmrEarlyStepLog s6Step63EntryFBefore s6Step63FrontBank 237 45 ⟨237,237,46,44⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63CompleteLog=some s6Step63CompletePlan := by
  let Q := s6Step63EarlyControlPlan
  have hq := s6Step63EarlyControl_plan_checked
  have fv1 : s6Step63CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step63CompleteOut.fv.payload[2]?.getD s6Step63CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step63CompleteOut.fv.payload[3]?.getD s6Step63CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step63CompleteOut.fv.payload[4]?.getD s6Step63CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step63EntryFBefore s6Step63EarlyControlArena s6Step63FrontBank 237 45 ⟨237,237,46,44⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63CompleteLog s6Step63FrontPlan Q
    s6Step63Front_checked s6Step63Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step63Complete_owned s6Step63Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step63EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 769 888 s6Step63CompleteOut.fv.second (s6Step63CompleteOut.fv.payload[2]?.getD s6Step63CompleteOut.fv.sign) (s6Step63CompleteOut.fv.payload[3]?.getD s6Step63CompleteOut.fv.sign) (s6Step63CompleteOut.fv.payload[4]?.getD s6Step63CompleteOut.fv.sign) 778 27 s6Step63EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step63Complete_checked : (compileHmrEarlyStepLog s6Step63EntryFBefore s6Step63FrontBank 237 45 ⟨237,237,46,44⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] 27 s6Step63CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step63Complete_explicit_checked]
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
