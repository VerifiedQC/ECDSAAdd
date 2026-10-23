import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step0Lifecycle_checked : (compileHmrSourceStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ [772, 773, 774, 775, 776, 777] [] 6 498 0 1 none (.early s2Step0CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step0Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 0<498)]
  rw [hp]
  rfl
theorem s2Step498Lifecycle_arm : compileHmrArmLog s2ArmBoundaryArena 6 s2ArmBoundaryMetadata=some s2Step498EntryFBefore := by
  unfold compileHmrArmLog Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  apply hmrArena_reserve_of_live
  · norm_num [s2ArmBoundaryMetadata,HmrFreezeMetadata.wires,arenaWires,Finset.insert_subset_iff]
  · apply hmrLayout_disjoint_of_filter s2ArmBoundaryArena (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<812) ∨ (813≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<901) ∨ (902≤q ∧ q<914) ∨ (915≤q ∧ q<916)) rfl
    decide +kernel
  · ext q
    simp only [s2Step498EntryFBefore,s2ArmBoundaryArena,s2ArmBoundaryMetadata,HmrFreezeMetadata.wires,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,List.toFinset_append,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step498Lifecycle_timestampOwned : ([827, 786, 812, 839, 849, 844] : List Wire).toFinset⊆s2Step498EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step498EntryFBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<901) ∨ (902≤q ∧ q<916)) rfl
  decide +kernel
theorem s2Step498Lifecycle_timestampApart : List.Disjoint [827, 786, 812, 839, 849, 844] (s2Step498FrontBank.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) := by
  have nd : ([827, 786, 812, 839, 849, 844]++(s2Step498FrontBank.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
theorem s2Step498Lifecycle_chronological : (compileHmrChronologicalStepLog s2Step498EntryFBefore s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ 914 [772, 773, 774, 775, 776, 777] [827, 786, 812, 839, 849, 844] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 1 60 s2Step498CompleteLog).map (fun _ => true)=some true := by
  unfold compileHmrChronologicalStepLog
  rw [if_pos (And.intro s2Step498Lifecycle_timestampOwned (And.intro s2Step498Lifecycle_timestampApart (by decide +kernel)))]
  exact s2Step498Complete_checked
theorem s2Step498Lifecycle_checked : (compileHmrSourceStepLog s2ArmBoundaryArena s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 498 60 none (.arm s2ArmBoundaryMetadata s2Step498CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step498Lifecycle_chronological
  have result := compileHmrSourceStepLog_of_arm s2ArmBoundaryArena s2Step498EntryFBefore s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 60 s2ArmBoundaryMetadata s2Step498CompleteLog P s2Step498Lifecycle_arm hp
  rw [result]
  rfl
theorem s6Step0Lifecycle_checked : (compileHmrSourceStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ [774, 773, 772, 771, 770, 769] [] 6 498 0 1 none (.early s6Step0CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step0Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 0<498)]
  rw [hp]
  rfl
theorem s6Step498Lifecycle_arm : compileHmrArmLog s6ArmBoundaryArena 6 s6ArmBoundaryMetadata=some s6Step498EntryFBefore := by
  unfold compileHmrArmLog Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  apply hmrArena_reserve_of_live
  · norm_num [s6ArmBoundaryMetadata,HmrFreezeMetadata.wires,arenaWires,Finset.insert_subset_iff]
  · apply hmrLayout_disjoint_of_filter s6ArmBoundaryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (844≤q ∧ q<874) ∨ (875≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<892) ∨ (893≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  · ext q
    simp only [s6Step498EntryFBefore,s6ArmBoundaryArena,s6ArmBoundaryMetadata,HmrFreezeMetadata.wires,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,List.toFinset_append,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step498Lifecycle_timestampOwned : ([843, 874, 892, 881, 879, 877] : List Wire).toFinset⊆s6Step498EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step498EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Lifecycle_timestampApart : List.Disjoint [843, 874, 892, 881, 879, 877] (s6Step498FrontBank.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) := by
  have nd : ([843, 874, 892, 881, 879, 877]++(s6Step498FrontBank.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
theorem s6Step498Lifecycle_chronological : (compileHmrChronologicalStepLog s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ 819 [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 1 60 s6Step498CompleteLog).map (fun _ => true)=some true := by
  unfold compileHmrChronologicalStepLog
  rw [if_pos (And.intro s6Step498Lifecycle_timestampOwned (And.intro s6Step498Lifecycle_timestampApart (by decide +kernel)))]
  exact s6Step498Complete_checked
theorem s6Step498Lifecycle_checked : (compileHmrSourceStepLog s6ArmBoundaryArena s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 498 60 none (.arm s6ArmBoundaryMetadata s6Step498CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step498Lifecycle_chronological
  have result := compileHmrSourceStepLog_of_arm s6ArmBoundaryArena s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 60 s6ArmBoundaryMetadata s6Step498CompleteLog P s6Step498Lifecycle_arm hp
  rw [result]
  rfl
def s2Step0LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ [772, 773, 774, 775, 776, 777] [] 6 498 0 1 none (.early s2Step0CompleteLog)) s2Step0Lifecycle_checked
theorem s2Step0Lifecycle_plan_checked : compileHmrSourceStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ [772, 773, 774, 775, 776, 777] [] 6 498 0 1 none (.early s2Step0CompleteLog)=some s2Step0LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ [772, 773, 774, 775, 776, 777] [] 6 498 0 1 none (.early s2Step0CompleteLog)) s2Step0Lifecycle_checked
def s2Step498LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2ArmBoundaryArena s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 498 60 none (.arm s2ArmBoundaryMetadata s2Step498CompleteLog)) s2Step498Lifecycle_checked
theorem s2Step498Lifecycle_plan_checked : compileHmrSourceStepLog s2ArmBoundaryArena s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 498 60 none (.arm s2ArmBoundaryMetadata s2Step498CompleteLog)=some s2Step498LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2ArmBoundaryArena s2Step498FrontBank 25 266 ⟨24,24,267,266⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 498 60 none (.arm s2ArmBoundaryMetadata s2Step498CompleteLog)) s2Step498Lifecycle_checked
def s6Step0LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ [774, 773, 772, 771, 770, 769] [] 6 498 0 1 none (.early s6Step0CompleteLog)) s6Step0Lifecycle_checked
theorem s6Step0Lifecycle_plan_checked : compileHmrSourceStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ [774, 773, 772, 771, 770, 769] [] 6 498 0 1 none (.early s6Step0CompleteLog)=some s6Step0LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s6Step0EntryFBefore s6Step0FrontBank 256 1 ⟨256,255,2,1⟩ [774, 773, 772, 771, 770, 769] [] 6 498 0 1 none (.early s6Step0CompleteLog)) s6Step0Lifecycle_checked
def s6Step498LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s6ArmBoundaryArena s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 498 60 none (.arm s6ArmBoundaryMetadata s6Step498CompleteLog)) s6Step498Lifecycle_checked
theorem s6Step498Lifecycle_plan_checked : compileHmrSourceStepLog s6ArmBoundaryArena s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 498 60 none (.arm s6ArmBoundaryMetadata s6Step498CompleteLog)=some s6Step498LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s6ArmBoundaryArena s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 6 498 498 60 none (.arm s6ArmBoundaryMetadata s6Step498CompleteLog)) s6Step498Lifecycle_checked
end ECDSAAdd.Arithmetic.Paper935
