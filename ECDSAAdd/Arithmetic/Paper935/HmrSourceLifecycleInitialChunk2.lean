import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk1

namespace ECDSAAdd.Arithmetic.Paper935
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
theorem s6Step1Lifecycle_checked : (compileHmrSourceStepLog s6Step1EntryFBefore s6Step1FrontBank 256 2 ⟨256,255,3,1⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 1 1 none (.early s6Step1CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step1Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 1<498)]
  rw [hp]
  rfl
theorem s6Step2Lifecycle_checked : (compileHmrSourceStepLog s6Step2EntryFBefore s6Step2FrontBank 256 3 ⟨256,255,4,2⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 2 1 none (.early s6Step2CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step2Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 2<498)]
  rw [hp]
  rfl
theorem s6Step3Lifecycle_checked : (compileHmrSourceStepLog s6Step3EntryFBefore s6Step3FrontBank 256 4 ⟨256,255,5,3⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 3 1 none (.early s6Step3CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step3Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 3<498)]
  rw [hp]
  rfl
theorem s6Step4Lifecycle_checked : (compileHmrSourceStepLog s6Step4EntryFBefore s6Step4FrontBank 256 5 ⟨256,255,6,4⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 4 1 none (.early s6Step4CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step4Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 4<498)]
  rw [hp]
  rfl
theorem s6Step5Lifecycle_checked : (compileHmrSourceStepLog s6Step5EntryFBefore s6Step5FrontBank 256 6 ⟨256,255,7,5⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 5 1 none (.early s6Step5CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step5Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 5<498)]
  rw [hp]
  rfl
theorem s6Step6Lifecycle_checked : (compileHmrSourceStepLog s6Step6EntryFBefore s6Step6FrontBank 256 7 ⟨256,255,8,6⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 6 1 none (.early s6Step6CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step6Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 6<498)]
  rw [hp]
  rfl
theorem s6Step7Lifecycle_checked : (compileHmrSourceStepLog s6Step7EntryFBefore s6Step7FrontBank 256 8 ⟨256,255,9,7⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 7 1 none (.early s6Step7CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step7Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 7<498)]
  rw [hp]
  rfl
theorem s6Step8Lifecycle_checked : (compileHmrSourceStepLog s6Step8EntryFBefore s6Step8FrontBank 256 9 ⟨256,255,10,8⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 8 1 none (.early s6Step8CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step8Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 8<498)]
  rw [hp]
  rfl
theorem s6Step9Lifecycle_checked : (compileHmrSourceStepLog s6Step9EntryFBefore s6Step9FrontBank 256 10 ⟨256,255,11,9⟩ [774, 773, 772, 771, 770, 769] [895] 6 498 9 2 none (.early s6Step9CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step9Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 9<498)]
  rw [hp]
  rfl
theorem s6Step10Lifecycle_checked : (compileHmrSourceStepLog s6Step10EntryFBefore s6Step10FrontBank 256 11 ⟨256,255,12,10⟩ [774, 773, 772, 771, 770, 769] [895, 870] 6 498 10 2 none (.early s6Step10CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step10Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 10<498)]
  rw [hp]
  rfl
theorem s6Step11Lifecycle_checked : (compileHmrSourceStepLog s6Step11EntryFBefore s6Step11FrontBank 256 12 ⟨256,255,13,11⟩ [774, 773, 772, 771, 770, 769] [895, 870] 6 498 11 3 none (.early s6Step11CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step11Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 11<498)]
  rw [hp]
  rfl
theorem s6Step12Lifecycle_checked : (compileHmrSourceStepLog s6Step12EntryFBefore s6Step12FrontBank 256 13 ⟨256,255,14,12⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872] 6 498 12 3 none (.early s6Step12CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step12Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 12<498)]
  rw [hp]
  rfl
theorem s6Step13Lifecycle_checked : (compileHmrSourceStepLog s6Step13EntryFBefore s6Step13FrontBank 256 14 ⟨256,255,15,13⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872] 6 498 13 4 none (.early s6Step13CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step13Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 13<498)]
  rw [hp]
  rfl
theorem s6Step14Lifecycle_checked : (compileHmrSourceStepLog s6Step14EntryFBefore s6Step14FrontBank 256 15 ⟨256,255,16,14⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 6 498 14 4 none (.early s6Step14CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step14Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 14<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
