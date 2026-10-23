import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEarlyControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
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
theorem s2Step0Complete_checked : (compileHmrEarlyStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [772, 773, 774, 775, 776, 777] [] 1 s2Step0CompleteLog).map (fun _ => true)=some true := by
  obtain ⟨Q,hq,_⟩ := Option.map_eq_some_iff.mp s2FirstEarlyControl_checked
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
  rw [result]
  rfl
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
theorem s6Step0Complete_checked : (compileHmrEarlyStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ 0 [774, 773, 772, 771, 770, 769] [] 1 s6Step0CompleteLog).map (fun _ => true)=some true := by
  obtain ⟨Q,hq,_⟩ := Option.map_eq_some_iff.mp s6FirstEarlyControl_checked
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
  rw [result]
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
