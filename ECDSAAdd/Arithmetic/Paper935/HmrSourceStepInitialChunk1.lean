import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEarlyControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step498CompleteMoves : List (Wire × Wire) := []
def s2Step498CompleteOut : WindowBank := s2Step498FrontOut.repacked s2Step498CompleteMoves
def s2Step498CompleteLog : HmrArmedStepLog := ⟨s2Step498FrontLog,s2Step498CompleteMoves,s2FirstArmedControlLog⟩
theorem s2Step498Complete_repack : s2Step498ExitGvAfter.checkRepack s2Step498CompleteMoves=some s2FirstArmedControlArena := by rfl
theorem s2Step498Complete_owned : (s2Step498CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2FirstArmedControlArena.live := by
  apply hmrLayout_owned_of_filter s2FirstArmedControlArena (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (920≤q ∧ q<921)) rfl
  decide +kernel
theorem s2Step498Complete_apart : List.Disjoint (s2Step498CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [879, 916, 914, 827, 786, 812, 839, 849, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step498CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[879, 916, 914, 827, 786, 812, 839, 849, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
theorem s2Step498Complete_checked : (compileHmrArmedStepLog s2Step498EntryFBefore s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ 914 [772, 773, 774, 775, 776, 777] [827, 786, 812, 839, 849, 844] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 1 60 s2Step498CompleteLog).map (fun _ => true)=some true := by
  obtain ⟨Q,hq,_⟩ := Option.map_eq_some_iff.mp s2FirstArmedControl_checked
  have fv1 : s2Step498CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step498CompleteOut.fv.payload[2]?.getD s2Step498CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step498CompleteOut.fv.payload[3]?.getD s2Step498CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step498CompleteOut.fv.payload[4]?.getD s2Step498CompleteOut.fv.sign=251 := by decide +kernel
  have gEq : s2Step498CompleteOut.g.wires=s2FirstArmedControlG := by decide +kernel
  have result := compileHmrArmedStepLog_of_parts s2Step498EntryFBefore s2FirstArmedControlArena s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ 914 [772, 773, 774, 775, 776, 777] [827, 786, 812, 839, 849, 844] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 1 60 s2Step498CompleteLog s2Step498FrontPlan Q
    s2Step498Front_checked s2Step498Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step498Complete_owned s2Step498Complete_apart)))
    (by
      change compileHmrArmedControlLog s2FirstArmedControlArena s2Step498CompleteOut.g.wires [772, 773, 774, 775, 776, 777] [827, 786, 812, 839, 849, 844] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 914 777 879 s2Step498CompleteOut.fv.second (s2Step498CompleteOut.fv.payload[2]?.getD s2Step498CompleteOut.fv.sign) (s2Step498CompleteOut.fv.payload[3]?.getD s2Step498CompleteOut.fv.sign) (s2Step498CompleteOut.fv.payload[4]?.getD s2Step498CompleteOut.fv.sign) 916 1 60 s2FirstArmedControlLog=some Q
      rw [fv1,fv2,fv3,fv4,gEq]
      exact hq)
  rw [result]
  rfl
def s6Step0CompleteMoves : List (Wire × Wire) := [(768,255)]
def s6Step0CompleteOut : WindowBank := s6Step0FrontOut.repacked s6Step0CompleteMoves
def s6Step0CompleteLog : HmrEarlyStepLog := ⟨s6Step0FrontLog,s6Step0CompleteMoves,s6FirstEarlyControlLog⟩
def s6Step0CompleteMoveArena : Arena := ⟨s6Step0ExitGvAfter.live∪{255},Finset.union_subset s6Step0ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step0Complete_repack : s6Step0ExitGvAfter.checkRepack s6Step0CompleteMoves=some s6FirstEarlyControlArena := by
  have owned : 768∈s6Step0ExitGvAfter.live := by norm_num [s6Step0ExitGvAfter,arenaWires]
  have reserve : s6Step0ExitGvAfter.reserve {255}=some s6Step0CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s6Step0ExitGvAfter,arenaWires]
    · rfl
  have retired : s6Step0CompleteMoveArena.retireSet {768}=s6FirstEarlyControlArena := by
    unfold Arena.retireSet s6FirstEarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s6Step0CompleteMoveArena,s6Step0ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s6Step0CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s6Step0CompleteMoveArena.retireSet {768}).checkRepack []=some s6FirstEarlyControlArena
  rw [retired]
  rfl
theorem s6Step0Complete_owned : (s6Step0CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6FirstEarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstEarlyControlArena (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Complete_apart : List.Disjoint (s6Step0CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [887, 813] := by
  have nd : ((s6Step0CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[887, 813]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step0CompletePlan : HmrEarlyStepPlan := ⟨s6Step0FrontPlan,s6FirstEarlyControlArena,s6FirstEarlyControlPlan,s6Step0CompleteMoves⟩
theorem s6Step0Complete_explicit_checked : compileHmrEarlyStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [774, 773, 772, 771, 770, 769] [] 1 s6Step0CompleteLog=some s6Step0CompletePlan := by
  let Q := s6FirstEarlyControlPlan
  have hq := s6FirstEarlyControl_plan_checked
  have fv1 : s6Step0CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step0CompleteOut.fv.payload[2]?.getD s6Step0CompleteOut.fv.sign=776 := by decide +kernel
  have fv3 : s6Step0CompleteOut.fv.payload[3]?.getD s6Step0CompleteOut.fv.sign=776 := by decide +kernel
  have fv4 : s6Step0CompleteOut.fv.payload[4]?.getD s6Step0CompleteOut.fv.sign=776 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step0EntryFBefore s6FirstEarlyControlArena s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [774, 773, 772, 771, 770, 769] [] 1 s6Step0CompleteLog s6Step0FrontPlan Q
    s6Step0Front_checked s6Step0Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step0Complete_owned s6Step0Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] [] 769 887 s6Step0CompleteOut.fv.second (s6Step0CompleteOut.fv.payload[2]?.getD s6Step0CompleteOut.fv.sign) (s6Step0CompleteOut.fv.payload[3]?.getD s6Step0CompleteOut.fv.sign) (s6Step0CompleteOut.fv.payload[4]?.getD s6Step0CompleteOut.fv.sign) 813 1 s6FirstEarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step0Complete_checked : (compileHmrEarlyStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [774, 773, 772, 771, 770, 769] [] 1 s6Step0CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step0Complete_explicit_checked]
  rfl
def s6Step1CompleteMoves : List (Wire × Wire) := []
def s6Step1CompleteOut : WindowBank := s6Step1FrontOut.repacked s6Step1CompleteMoves
def s6Step1CompleteLog : HmrEarlyStepLog := ⟨s6Step1FrontLog,s6Step1CompleteMoves,s6Step1EarlyControlLog⟩
theorem s6Step1Complete_repack : s6Step1ExitGvAfter.checkRepack s6Step1CompleteMoves=some s6Step1EarlyControlArena := by rfl
theorem s6Step1Complete_owned : (s6Step1CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step1EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step1EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1Complete_apart : List.Disjoint (s6Step1CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 860, 895] := by
  have nd : ((s6Step1CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 860, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step1CompletePlan : HmrEarlyStepPlan := ⟨s6Step1FrontPlan,s6Step1EarlyControlArena,s6Step1EarlyControlPlan,s6Step1CompleteMoves⟩
theorem s6Step1Complete_explicit_checked : compileHmrEarlyStepLog s6Step1EntryFBefore s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step1CompleteLog=some s6Step1CompletePlan := by
  let Q := s6Step1EarlyControlPlan
  have hq := s6Step1EarlyControl_plan_checked
  have fv1 : s6Step1CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step1CompleteOut.fv.payload[2]?.getD s6Step1CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step1CompleteOut.fv.payload[3]?.getD s6Step1CompleteOut.fv.sign=776 := by decide +kernel
  have fv4 : s6Step1CompleteOut.fv.payload[4]?.getD s6Step1CompleteOut.fv.sign=776 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step1EntryFBefore s6Step1EarlyControlArena s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step1CompleteLog s6Step1FrontPlan Q
    s6Step1Front_checked s6Step1Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step1Complete_owned s6Step1Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step1EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 768 s6Step1CompleteOut.fv.second (s6Step1CompleteOut.fv.payload[2]?.getD s6Step1CompleteOut.fv.sign) (s6Step1CompleteOut.fv.payload[3]?.getD s6Step1CompleteOut.fv.sign) (s6Step1CompleteOut.fv.payload[4]?.getD s6Step1CompleteOut.fv.sign) 860 1 s6Step1EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step1Complete_checked : (compileHmrEarlyStepLog s6Step1EntryFBefore s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step1CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step1Complete_explicit_checked]
  rfl
def s6Step2CompleteMoves : List (Wire × Wire) := []
def s6Step2CompleteOut : WindowBank := s6Step2FrontOut.repacked s6Step2CompleteMoves
def s6Step2CompleteLog : HmrEarlyStepLog := ⟨s6Step2FrontLog,s6Step2CompleteMoves,s6Step2EarlyControlLog⟩
theorem s6Step2Complete_repack : s6Step2ExitGvAfter.checkRepack s6Step2CompleteMoves=some s6Step2EarlyControlArena := by rfl
theorem s6Step2Complete_owned : (s6Step2CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step2EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step2EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2Complete_apart : List.Disjoint (s6Step2CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [874, 862, 895] := by
  have nd : ((s6Step2CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[874, 862, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step2CompletePlan : HmrEarlyStepPlan := ⟨s6Step2FrontPlan,s6Step2EarlyControlArena,s6Step2EarlyControlPlan,s6Step2CompleteMoves⟩
theorem s6Step2Complete_explicit_checked : compileHmrEarlyStepLog s6Step2EntryFBefore s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step2CompleteLog=some s6Step2CompletePlan := by
  let Q := s6Step2EarlyControlPlan
  have hq := s6Step2EarlyControl_plan_checked
  have fv1 : s6Step2CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step2CompleteOut.fv.payload[2]?.getD s6Step2CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step2CompleteOut.fv.payload[3]?.getD s6Step2CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step2CompleteOut.fv.payload[4]?.getD s6Step2CompleteOut.fv.sign=776 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step2EntryFBefore s6Step2EarlyControlArena s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step2CompleteLog s6Step2FrontPlan Q
    s6Step2Front_checked s6Step2Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step2Complete_owned s6Step2Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step2EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 874 s6Step2CompleteOut.fv.second (s6Step2CompleteOut.fv.payload[2]?.getD s6Step2CompleteOut.fv.sign) (s6Step2CompleteOut.fv.payload[3]?.getD s6Step2CompleteOut.fv.sign) (s6Step2CompleteOut.fv.payload[4]?.getD s6Step2CompleteOut.fv.sign) 862 1 s6Step2EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step2Complete_checked : (compileHmrEarlyStepLog s6Step2EntryFBefore s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step2CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step2Complete_explicit_checked]
  rfl
def s6Step3CompleteMoves : List (Wire × Wire) := []
def s6Step3CompleteOut : WindowBank := s6Step3FrontOut.repacked s6Step3CompleteMoves
def s6Step3CompleteLog : HmrEarlyStepLog := ⟨s6Step3FrontLog,s6Step3CompleteMoves,s6Step3EarlyControlLog⟩
theorem s6Step3Complete_repack : s6Step3ExitGvAfter.checkRepack s6Step3CompleteMoves=some s6Step3EarlyControlArena := by rfl
theorem s6Step3Complete_owned : (s6Step3CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step3EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step3EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step3Complete_apart : List.Disjoint (s6Step3CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [927, 807, 895] := by
  have nd : ((s6Step3CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[927, 807, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step3CompletePlan : HmrEarlyStepPlan := ⟨s6Step3FrontPlan,s6Step3EarlyControlArena,s6Step3EarlyControlPlan,s6Step3CompleteMoves⟩
theorem s6Step3Complete_explicit_checked : compileHmrEarlyStepLog s6Step3EntryFBefore s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step3CompleteLog=some s6Step3CompletePlan := by
  let Q := s6Step3EarlyControlPlan
  have hq := s6Step3EarlyControl_plan_checked
  have fv1 : s6Step3CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step3CompleteOut.fv.payload[2]?.getD s6Step3CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step3CompleteOut.fv.payload[3]?.getD s6Step3CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step3CompleteOut.fv.payload[4]?.getD s6Step3CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step3EntryFBefore s6Step3EarlyControlArena s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step3CompleteLog s6Step3FrontPlan Q
    s6Step3Front_checked s6Step3Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step3Complete_owned s6Step3Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step3EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 927 s6Step3CompleteOut.fv.second (s6Step3CompleteOut.fv.payload[2]?.getD s6Step3CompleteOut.fv.sign) (s6Step3CompleteOut.fv.payload[3]?.getD s6Step3CompleteOut.fv.sign) (s6Step3CompleteOut.fv.payload[4]?.getD s6Step3CompleteOut.fv.sign) 807 1 s6Step3EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step3Complete_checked : (compileHmrEarlyStepLog s6Step3EntryFBefore s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step3CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step3Complete_explicit_checked]
  rfl
def s6Step4CompleteMoves : List (Wire × Wire) := []
def s6Step4CompleteOut : WindowBank := s6Step4FrontOut.repacked s6Step4CompleteMoves
def s6Step4CompleteLog : HmrEarlyStepLog := ⟨s6Step4FrontLog,s6Step4CompleteMoves,s6Step4EarlyControlLog⟩
theorem s6Step4Complete_repack : s6Step4ExitGvAfter.checkRepack s6Step4CompleteMoves=some s6Step4EarlyControlArena := by rfl
theorem s6Step4Complete_owned : (s6Step4CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step4EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step4EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step4Complete_apart : List.Disjoint (s6Step4CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [875, 813, 895] := by
  have nd : ((s6Step4CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[875, 813, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step4CompletePlan : HmrEarlyStepPlan := ⟨s6Step4FrontPlan,s6Step4EarlyControlArena,s6Step4EarlyControlPlan,s6Step4CompleteMoves⟩
theorem s6Step4Complete_explicit_checked : compileHmrEarlyStepLog s6Step4EntryFBefore s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step4CompleteLog=some s6Step4CompletePlan := by
  let Q := s6Step4EarlyControlPlan
  have hq := s6Step4EarlyControl_plan_checked
  have fv1 : s6Step4CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step4CompleteOut.fv.payload[2]?.getD s6Step4CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step4CompleteOut.fv.payload[3]?.getD s6Step4CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step4CompleteOut.fv.payload[4]?.getD s6Step4CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step4EntryFBefore s6Step4EarlyControlArena s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step4CompleteLog s6Step4FrontPlan Q
    s6Step4Front_checked s6Step4Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step4Complete_owned s6Step4Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step4EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 875 s6Step4CompleteOut.fv.second (s6Step4CompleteOut.fv.payload[2]?.getD s6Step4CompleteOut.fv.sign) (s6Step4CompleteOut.fv.payload[3]?.getD s6Step4CompleteOut.fv.sign) (s6Step4CompleteOut.fv.payload[4]?.getD s6Step4CompleteOut.fv.sign) 813 1 s6Step4EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step4Complete_checked : (compileHmrEarlyStepLog s6Step4EntryFBefore s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step4CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step4Complete_explicit_checked]
  rfl
def s6Step5CompleteMoves : List (Wire × Wire) := []
def s6Step5CompleteOut : WindowBank := s6Step5FrontOut.repacked s6Step5CompleteMoves
def s6Step5CompleteLog : HmrEarlyStepLog := ⟨s6Step5FrontLog,s6Step5CompleteMoves,s6Step5EarlyControlLog⟩
theorem s6Step5Complete_repack : s6Step5ExitGvAfter.checkRepack s6Step5CompleteMoves=some s6Step5EarlyControlArena := by rfl
theorem s6Step5Complete_owned : (s6Step5CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step5EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step5EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5Complete_apart : List.Disjoint (s6Step5CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [868, 860, 895] := by
  have nd : ((s6Step5CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[868, 860, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step5CompletePlan : HmrEarlyStepPlan := ⟨s6Step5FrontPlan,s6Step5EarlyControlArena,s6Step5EarlyControlPlan,s6Step5CompleteMoves⟩
theorem s6Step5Complete_explicit_checked : compileHmrEarlyStepLog s6Step5EntryFBefore s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step5CompleteLog=some s6Step5CompletePlan := by
  let Q := s6Step5EarlyControlPlan
  have hq := s6Step5EarlyControl_plan_checked
  have fv1 : s6Step5CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step5CompleteOut.fv.payload[2]?.getD s6Step5CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step5CompleteOut.fv.payload[3]?.getD s6Step5CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step5CompleteOut.fv.payload[4]?.getD s6Step5CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step5EntryFBefore s6Step5EarlyControlArena s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step5CompleteLog s6Step5FrontPlan Q
    s6Step5Front_checked s6Step5Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step5Complete_owned s6Step5Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step5EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 868 s6Step5CompleteOut.fv.second (s6Step5CompleteOut.fv.payload[2]?.getD s6Step5CompleteOut.fv.sign) (s6Step5CompleteOut.fv.payload[3]?.getD s6Step5CompleteOut.fv.sign) (s6Step5CompleteOut.fv.payload[4]?.getD s6Step5CompleteOut.fv.sign) 860 1 s6Step5EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step5Complete_checked : (compileHmrEarlyStepLog s6Step5EntryFBefore s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step5CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step5Complete_explicit_checked]
  rfl
def s6Step6CompleteMoves : List (Wire × Wire) := []
def s6Step6CompleteOut : WindowBank := s6Step6FrontOut.repacked s6Step6CompleteMoves
def s6Step6CompleteLog : HmrEarlyStepLog := ⟨s6Step6FrontLog,s6Step6CompleteMoves,s6Step6EarlyControlLog⟩
theorem s6Step6Complete_repack : s6Step6ExitGvAfter.checkRepack s6Step6CompleteMoves=some s6Step6EarlyControlArena := by rfl
theorem s6Step6Complete_owned : (s6Step6CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step6EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step6EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6Complete_apart : List.Disjoint (s6Step6CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [907, 862, 895] := by
  have nd : ((s6Step6CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[907, 862, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step6CompletePlan : HmrEarlyStepPlan := ⟨s6Step6FrontPlan,s6Step6EarlyControlArena,s6Step6EarlyControlPlan,s6Step6CompleteMoves⟩
theorem s6Step6Complete_explicit_checked : compileHmrEarlyStepLog s6Step6EntryFBefore s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step6CompleteLog=some s6Step6CompletePlan := by
  let Q := s6Step6EarlyControlPlan
  have hq := s6Step6EarlyControl_plan_checked
  have fv1 : s6Step6CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step6CompleteOut.fv.payload[2]?.getD s6Step6CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step6CompleteOut.fv.payload[3]?.getD s6Step6CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step6CompleteOut.fv.payload[4]?.getD s6Step6CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step6EntryFBefore s6Step6EarlyControlArena s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step6CompleteLog s6Step6FrontPlan Q
    s6Step6Front_checked s6Step6Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step6Complete_owned s6Step6Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step6EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 907 s6Step6CompleteOut.fv.second (s6Step6CompleteOut.fv.payload[2]?.getD s6Step6CompleteOut.fv.sign) (s6Step6CompleteOut.fv.payload[3]?.getD s6Step6CompleteOut.fv.sign) (s6Step6CompleteOut.fv.payload[4]?.getD s6Step6CompleteOut.fv.sign) 862 1 s6Step6EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step6Complete_checked : (compileHmrEarlyStepLog s6Step6EntryFBefore s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step6CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step6Complete_explicit_checked]
  rfl
def s6Step7CompleteMoves : List (Wire × Wire) := []
def s6Step7CompleteOut : WindowBank := s6Step7FrontOut.repacked s6Step7CompleteMoves
def s6Step7CompleteLog : HmrEarlyStepLog := ⟨s6Step7FrontLog,s6Step7CompleteMoves,s6Step7EarlyControlLog⟩
theorem s6Step7Complete_repack : s6Step7ExitGvAfter.checkRepack s6Step7CompleteMoves=some s6Step7EarlyControlArena := by rfl
theorem s6Step7Complete_owned : (s6Step7CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step7EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step7EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7Complete_apart : List.Disjoint (s6Step7CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [908, 807, 895] := by
  have nd : ((s6Step7CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[908, 807, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step7CompletePlan : HmrEarlyStepPlan := ⟨s6Step7FrontPlan,s6Step7EarlyControlArena,s6Step7EarlyControlPlan,s6Step7CompleteMoves⟩
theorem s6Step7Complete_explicit_checked : compileHmrEarlyStepLog s6Step7EntryFBefore s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step7CompleteLog=some s6Step7CompletePlan := by
  let Q := s6Step7EarlyControlPlan
  have hq := s6Step7EarlyControl_plan_checked
  have fv1 : s6Step7CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step7CompleteOut.fv.payload[2]?.getD s6Step7CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step7CompleteOut.fv.payload[3]?.getD s6Step7CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step7CompleteOut.fv.payload[4]?.getD s6Step7CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step7EntryFBefore s6Step7EarlyControlArena s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step7CompleteLog s6Step7FrontPlan Q
    s6Step7Front_checked s6Step7Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step7Complete_owned s6Step7Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step7EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 908 s6Step7CompleteOut.fv.second (s6Step7CompleteOut.fv.payload[2]?.getD s6Step7CompleteOut.fv.sign) (s6Step7CompleteOut.fv.payload[3]?.getD s6Step7CompleteOut.fv.sign) (s6Step7CompleteOut.fv.payload[4]?.getD s6Step7CompleteOut.fv.sign) 807 1 s6Step7EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step7Complete_checked : (compileHmrEarlyStepLog s6Step7EntryFBefore s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step7CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step7Complete_explicit_checked]
  rfl
def s6Step8CompleteMoves : List (Wire × Wire) := []
def s6Step8CompleteOut : WindowBank := s6Step8FrontOut.repacked s6Step8CompleteMoves
def s6Step8CompleteLog : HmrEarlyStepLog := ⟨s6Step8FrontLog,s6Step8CompleteMoves,s6Step8EarlyControlLog⟩
theorem s6Step8Complete_repack : s6Step8ExitGvAfter.checkRepack s6Step8CompleteMoves=some s6Step8EarlyControlArena := by rfl
theorem s6Step8Complete_owned : (s6Step8CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step8EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step8EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8Complete_apart : List.Disjoint (s6Step8CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [890, 813, 895] := by
  have nd : ((s6Step8CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[890, 813, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step8CompletePlan : HmrEarlyStepPlan := ⟨s6Step8FrontPlan,s6Step8EarlyControlArena,s6Step8EarlyControlPlan,s6Step8CompleteMoves⟩
theorem s6Step8Complete_explicit_checked : compileHmrEarlyStepLog s6Step8EntryFBefore s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step8CompleteLog=some s6Step8CompletePlan := by
  let Q := s6Step8EarlyControlPlan
  have hq := s6Step8EarlyControl_plan_checked
  have fv1 : s6Step8CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step8CompleteOut.fv.payload[2]?.getD s6Step8CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step8CompleteOut.fv.payload[3]?.getD s6Step8CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step8CompleteOut.fv.payload[4]?.getD s6Step8CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step8EntryFBefore s6Step8EarlyControlArena s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step8CompleteLog s6Step8FrontPlan Q
    s6Step8Front_checked s6Step8Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step8Complete_owned s6Step8Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step8EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 890 s6Step8CompleteOut.fv.second (s6Step8CompleteOut.fv.payload[2]?.getD s6Step8CompleteOut.fv.sign) (s6Step8CompleteOut.fv.payload[3]?.getD s6Step8CompleteOut.fv.sign) (s6Step8CompleteOut.fv.payload[4]?.getD s6Step8CompleteOut.fv.sign) 813 1 s6Step8EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step8Complete_checked : (compileHmrEarlyStepLog s6Step8EntryFBefore s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ 0 [774, 773, 772, 771, 770, 769] [895] 1 s6Step8CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step8Complete_explicit_checked]
  rfl
def s6Step9CompleteMoves : List (Wire × Wire) := []
def s6Step9CompleteOut : WindowBank := s6Step9FrontOut.repacked s6Step9CompleteMoves
def s6Step9CompleteLog : HmrEarlyStepLog := ⟨s6Step9FrontLog,s6Step9CompleteMoves,s6Step9EarlyControlLog⟩
theorem s6Step9Complete_repack : s6Step9ExitGvAfter.checkRepack s6Step9CompleteMoves=some s6Step9EarlyControlArena := by rfl
theorem s6Step9Complete_owned : (s6Step9CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step9EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step9EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9Complete_apart : List.Disjoint (s6Step9CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [873, 860, 895] := by
  have nd : ((s6Step9CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[873, 860, 895]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step9CompletePlan : HmrEarlyStepPlan := ⟨s6Step9FrontPlan,s6Step9EarlyControlArena,s6Step9EarlyControlPlan,s6Step9CompleteMoves⟩
theorem s6Step9Complete_explicit_checked : compileHmrEarlyStepLog s6Step9EntryFBefore s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ 0 [774, 773, 772, 771, 770, 769] [895] 2 s6Step9CompleteLog=some s6Step9CompletePlan := by
  let Q := s6Step9EarlyControlPlan
  have hq := s6Step9EarlyControl_plan_checked
  have fv1 : s6Step9CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step9CompleteOut.fv.payload[2]?.getD s6Step9CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step9CompleteOut.fv.payload[3]?.getD s6Step9CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step9CompleteOut.fv.payload[4]?.getD s6Step9CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step9EntryFBefore s6Step9EarlyControlArena s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ 0 [774, 773, 772, 771, 770, 769] [895] 2 s6Step9CompleteLog s6Step9FrontPlan Q
    s6Step9Front_checked s6Step9Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step9Complete_owned s6Step9Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step9EarlyControlArena [774, 773, 772, 771, 770, 769] [895] 769 873 s6Step9CompleteOut.fv.second (s6Step9CompleteOut.fv.payload[2]?.getD s6Step9CompleteOut.fv.sign) (s6Step9CompleteOut.fv.payload[3]?.getD s6Step9CompleteOut.fv.sign) (s6Step9CompleteOut.fv.payload[4]?.getD s6Step9CompleteOut.fv.sign) 860 2 s6Step9EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step9Complete_checked : (compileHmrEarlyStepLog s6Step9EntryFBefore s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ 0 [774, 773, 772, 771, 770, 769] [895] 2 s6Step9CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step9Complete_explicit_checked]
  rfl
def s6Step10CompleteMoves : List (Wire × Wire) := []
def s6Step10CompleteOut : WindowBank := s6Step10FrontOut.repacked s6Step10CompleteMoves
def s6Step10CompleteLog : HmrEarlyStepLog := ⟨s6Step10FrontLog,s6Step10CompleteMoves,s6Step10EarlyControlLog⟩
theorem s6Step10Complete_repack : s6Step10ExitGvAfter.checkRepack s6Step10CompleteMoves=some s6Step10EarlyControlArena := by rfl
theorem s6Step10Complete_owned : (s6Step10CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step10EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step10EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10Complete_apart : List.Disjoint (s6Step10CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [863, 862, 895, 870] := by
  have nd : ((s6Step10CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[863, 862, 895, 870]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step10CompletePlan : HmrEarlyStepPlan := ⟨s6Step10FrontPlan,s6Step10EarlyControlArena,s6Step10EarlyControlPlan,s6Step10CompleteMoves⟩
theorem s6Step10Complete_explicit_checked : compileHmrEarlyStepLog s6Step10EntryFBefore s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870] 2 s6Step10CompleteLog=some s6Step10CompletePlan := by
  let Q := s6Step10EarlyControlPlan
  have hq := s6Step10EarlyControl_plan_checked
  have fv1 : s6Step10CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step10CompleteOut.fv.payload[2]?.getD s6Step10CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step10CompleteOut.fv.payload[3]?.getD s6Step10CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step10CompleteOut.fv.payload[4]?.getD s6Step10CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step10EntryFBefore s6Step10EarlyControlArena s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870] 2 s6Step10CompleteLog s6Step10FrontPlan Q
    s6Step10Front_checked s6Step10Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step10Complete_owned s6Step10Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step10EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 863 s6Step10CompleteOut.fv.second (s6Step10CompleteOut.fv.payload[2]?.getD s6Step10CompleteOut.fv.sign) (s6Step10CompleteOut.fv.payload[3]?.getD s6Step10CompleteOut.fv.sign) (s6Step10CompleteOut.fv.payload[4]?.getD s6Step10CompleteOut.fv.sign) 862 2 s6Step10EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step10Complete_checked : (compileHmrEarlyStepLog s6Step10EntryFBefore s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870] 2 s6Step10CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step10Complete_explicit_checked]
  rfl
def s6Step11CompleteMoves : List (Wire × Wire) := []
def s6Step11CompleteOut : WindowBank := s6Step11FrontOut.repacked s6Step11CompleteMoves
def s6Step11CompleteLog : HmrEarlyStepLog := ⟨s6Step11FrontLog,s6Step11CompleteMoves,s6Step11EarlyControlLog⟩
theorem s6Step11Complete_repack : s6Step11ExitGvAfter.checkRepack s6Step11CompleteMoves=some s6Step11EarlyControlArena := by rfl
theorem s6Step11Complete_owned : (s6Step11CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step11EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step11EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11Complete_apart : List.Disjoint (s6Step11CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [823, 807, 895, 870] := by
  have nd : ((s6Step11CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[823, 807, 895, 870]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step11CompletePlan : HmrEarlyStepPlan := ⟨s6Step11FrontPlan,s6Step11EarlyControlArena,s6Step11EarlyControlPlan,s6Step11CompleteMoves⟩
theorem s6Step11Complete_explicit_checked : compileHmrEarlyStepLog s6Step11EntryFBefore s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870] 3 s6Step11CompleteLog=some s6Step11CompletePlan := by
  let Q := s6Step11EarlyControlPlan
  have hq := s6Step11EarlyControl_plan_checked
  have fv1 : s6Step11CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step11CompleteOut.fv.payload[2]?.getD s6Step11CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step11CompleteOut.fv.payload[3]?.getD s6Step11CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step11CompleteOut.fv.payload[4]?.getD s6Step11CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step11EntryFBefore s6Step11EarlyControlArena s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870] 3 s6Step11CompleteLog s6Step11FrontPlan Q
    s6Step11Front_checked s6Step11Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step11Complete_owned s6Step11Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step11EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870] 769 823 s6Step11CompleteOut.fv.second (s6Step11CompleteOut.fv.payload[2]?.getD s6Step11CompleteOut.fv.sign) (s6Step11CompleteOut.fv.payload[3]?.getD s6Step11CompleteOut.fv.sign) (s6Step11CompleteOut.fv.payload[4]?.getD s6Step11CompleteOut.fv.sign) 807 3 s6Step11EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step11Complete_checked : (compileHmrEarlyStepLog s6Step11EntryFBefore s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870] 3 s6Step11CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step11Complete_explicit_checked]
  rfl
def s6Step12CompleteMoves : List (Wire × Wire) := []
def s6Step12CompleteOut : WindowBank := s6Step12FrontOut.repacked s6Step12CompleteMoves
def s6Step12CompleteLog : HmrEarlyStepLog := ⟨s6Step12FrontLog,s6Step12CompleteMoves,s6Step12EarlyControlLog⟩
theorem s6Step12Complete_repack : s6Step12ExitGvAfter.checkRepack s6Step12CompleteMoves=some s6Step12EarlyControlArena := by rfl
theorem s6Step12Complete_owned : (s6Step12CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step12EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step12EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12Complete_apart : List.Disjoint (s6Step12CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [880, 813, 895, 870, 872] := by
  have nd : ((s6Step12CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[880, 813, 895, 870, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step12CompletePlan : HmrEarlyStepPlan := ⟨s6Step12FrontPlan,s6Step12EarlyControlArena,s6Step12EarlyControlPlan,s6Step12CompleteMoves⟩
theorem s6Step12Complete_explicit_checked : compileHmrEarlyStepLog s6Step12EntryFBefore s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872] 3 s6Step12CompleteLog=some s6Step12CompletePlan := by
  let Q := s6Step12EarlyControlPlan
  have hq := s6Step12EarlyControl_plan_checked
  have fv1 : s6Step12CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step12CompleteOut.fv.payload[2]?.getD s6Step12CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step12CompleteOut.fv.payload[3]?.getD s6Step12CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step12CompleteOut.fv.payload[4]?.getD s6Step12CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step12EntryFBefore s6Step12EarlyControlArena s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872] 3 s6Step12CompleteLog s6Step12FrontPlan Q
    s6Step12Front_checked s6Step12Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step12Complete_owned s6Step12Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step12EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 880 s6Step12CompleteOut.fv.second (s6Step12CompleteOut.fv.payload[2]?.getD s6Step12CompleteOut.fv.sign) (s6Step12CompleteOut.fv.payload[3]?.getD s6Step12CompleteOut.fv.sign) (s6Step12CompleteOut.fv.payload[4]?.getD s6Step12CompleteOut.fv.sign) 813 3 s6Step12EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step12Complete_checked : (compileHmrEarlyStepLog s6Step12EntryFBefore s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872] 3 s6Step12CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step12Complete_explicit_checked]
  rfl
def s6Step13CompleteMoves : List (Wire × Wire) := []
def s6Step13CompleteOut : WindowBank := s6Step13FrontOut.repacked s6Step13CompleteMoves
def s6Step13CompleteLog : HmrEarlyStepLog := ⟨s6Step13FrontLog,s6Step13CompleteMoves,s6Step13EarlyControlLog⟩
theorem s6Step13Complete_repack : s6Step13ExitGvAfter.checkRepack s6Step13CompleteMoves=some s6Step13EarlyControlArena := by rfl
theorem s6Step13Complete_owned : (s6Step13CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step13EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step13EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13Complete_apart : List.Disjoint (s6Step13CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [864, 860, 895, 870, 872] := by
  have nd : ((s6Step13CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[864, 860, 895, 870, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step13CompletePlan : HmrEarlyStepPlan := ⟨s6Step13FrontPlan,s6Step13EarlyControlArena,s6Step13EarlyControlPlan,s6Step13CompleteMoves⟩
theorem s6Step13Complete_explicit_checked : compileHmrEarlyStepLog s6Step13EntryFBefore s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872] 4 s6Step13CompleteLog=some s6Step13CompletePlan := by
  let Q := s6Step13EarlyControlPlan
  have hq := s6Step13EarlyControl_plan_checked
  have fv1 : s6Step13CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step13CompleteOut.fv.payload[2]?.getD s6Step13CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step13CompleteOut.fv.payload[3]?.getD s6Step13CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step13CompleteOut.fv.payload[4]?.getD s6Step13CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step13EntryFBefore s6Step13EarlyControlArena s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872] 4 s6Step13CompleteLog s6Step13FrontPlan Q
    s6Step13Front_checked s6Step13Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step13Complete_owned s6Step13Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step13EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872] 769 864 s6Step13CompleteOut.fv.second (s6Step13CompleteOut.fv.payload[2]?.getD s6Step13CompleteOut.fv.sign) (s6Step13CompleteOut.fv.payload[3]?.getD s6Step13CompleteOut.fv.sign) (s6Step13CompleteOut.fv.payload[4]?.getD s6Step13CompleteOut.fv.sign) 860 4 s6Step13EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step13Complete_checked : (compileHmrEarlyStepLog s6Step13EntryFBefore s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872] 4 s6Step13CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step13Complete_explicit_checked]
  rfl
def s6Step14CompleteMoves : List (Wire × Wire) := []
def s6Step14CompleteOut : WindowBank := s6Step14FrontOut.repacked s6Step14CompleteMoves
def s6Step14CompleteLog : HmrEarlyStepLog := ⟨s6Step14FrontLog,s6Step14CompleteMoves,s6Step14EarlyControlLog⟩
theorem s6Step14Complete_repack : s6Step14ExitGvAfter.checkRepack s6Step14CompleteMoves=some s6Step14EarlyControlArena := by rfl
theorem s6Step14Complete_owned : (s6Step14CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step14EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step14EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14Complete_apart : List.Disjoint (s6Step14CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [828, 862, 895, 870, 872, 883] := by
  have nd : ((s6Step14CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[828, 862, 895, 870, 872, 883]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step14CompletePlan : HmrEarlyStepPlan := ⟨s6Step14FrontPlan,s6Step14EarlyControlArena,s6Step14EarlyControlPlan,s6Step14CompleteMoves⟩
theorem s6Step14Complete_explicit_checked : compileHmrEarlyStepLog s6Step14EntryFBefore s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 4 s6Step14CompleteLog=some s6Step14CompletePlan := by
  let Q := s6Step14EarlyControlPlan
  have hq := s6Step14EarlyControl_plan_checked
  have fv1 : s6Step14CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step14CompleteOut.fv.payload[2]?.getD s6Step14CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step14CompleteOut.fv.payload[3]?.getD s6Step14CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step14CompleteOut.fv.payload[4]?.getD s6Step14CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step14EntryFBefore s6Step14EarlyControlArena s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 4 s6Step14CompleteLog s6Step14FrontPlan Q
    s6Step14Front_checked s6Step14Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step14Complete_owned s6Step14Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step14EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 828 s6Step14CompleteOut.fv.second (s6Step14CompleteOut.fv.payload[2]?.getD s6Step14CompleteOut.fv.sign) (s6Step14CompleteOut.fv.payload[3]?.getD s6Step14CompleteOut.fv.sign) (s6Step14CompleteOut.fv.payload[4]?.getD s6Step14CompleteOut.fv.sign) 862 4 s6Step14EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step14Complete_checked : (compileHmrEarlyStepLog s6Step14EntryFBefore s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 4 s6Step14CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step14Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
