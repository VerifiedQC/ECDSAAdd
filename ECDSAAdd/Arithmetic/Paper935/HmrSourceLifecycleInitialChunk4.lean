import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrChronologicalStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk3

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step31Lifecycle_checked : (compileHmrSourceStepLog s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 6 498 31 13 none (.early s6Step31CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step31Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 31<498)]
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
def s2Step1LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 1 1 none (.early s2Step1CompleteLog)) s2Step1Lifecycle_checked
theorem s2Step1Lifecycle_plan_checked : compileHmrSourceStepLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 1 1 none (.early s2Step1CompleteLog)=some s2Step1LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 1 1 none (.early s2Step1CompleteLog)) s2Step1Lifecycle_checked
def s2Step2LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 2 1 none (.early s2Step2CompleteLog)) s2Step2Lifecycle_checked
theorem s2Step2Lifecycle_plan_checked : compileHmrSourceStepLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 2 1 none (.early s2Step2CompleteLog)=some s2Step2LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 2 1 none (.early s2Step2CompleteLog)) s2Step2Lifecycle_checked
def s2Step3LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 3 1 none (.early s2Step3CompleteLog)) s2Step3Lifecycle_checked
theorem s2Step3Lifecycle_plan_checked : compileHmrSourceStepLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 3 1 none (.early s2Step3CompleteLog)=some s2Step3LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 3 1 none (.early s2Step3CompleteLog)) s2Step3Lifecycle_checked
def s2Step4LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 4 1 none (.early s2Step4CompleteLog)) s2Step4Lifecycle_checked
theorem s2Step4Lifecycle_plan_checked : compileHmrSourceStepLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 4 1 none (.early s2Step4CompleteLog)=some s2Step4LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 4 1 none (.early s2Step4CompleteLog)) s2Step4Lifecycle_checked
def s2Step5LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 5 1 none (.early s2Step5CompleteLog)) s2Step5Lifecycle_checked
theorem s2Step5Lifecycle_plan_checked : compileHmrSourceStepLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 5 1 none (.early s2Step5CompleteLog)=some s2Step5LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 5 1 none (.early s2Step5CompleteLog)) s2Step5Lifecycle_checked
def s2Step6LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 6 1 none (.early s2Step6CompleteLog)) s2Step6Lifecycle_checked
theorem s2Step6Lifecycle_plan_checked : compileHmrSourceStepLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 6 1 none (.early s2Step6CompleteLog)=some s2Step6LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 6 1 none (.early s2Step6CompleteLog)) s2Step6Lifecycle_checked
def s2Step7LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 7 1 none (.early s2Step7CompleteLog)) s2Step7Lifecycle_checked
theorem s2Step7Lifecycle_plan_checked : compileHmrSourceStepLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 7 1 none (.early s2Step7CompleteLog)=some s2Step7LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 7 1 none (.early s2Step7CompleteLog)) s2Step7Lifecycle_checked
def s2Step8LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 8 1 none (.early s2Step8CompleteLog)) s2Step8Lifecycle_checked
theorem s2Step8Lifecycle_plan_checked : compileHmrSourceStepLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 8 1 none (.early s2Step8CompleteLog)=some s2Step8LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 8 1 none (.early s2Step8CompleteLog)) s2Step8Lifecycle_checked
def s2Step9LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 9 2 none (.early s2Step9CompleteLog)) s2Step9Lifecycle_checked
theorem s2Step9Lifecycle_plan_checked : compileHmrSourceStepLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 9 2 none (.early s2Step9CompleteLog)=some s2Step9LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 9 2 none (.early s2Step9CompleteLog)) s2Step9Lifecycle_checked
def s2Step10LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 10 2 none (.early s2Step10CompleteLog)) s2Step10Lifecycle_checked
theorem s2Step10Lifecycle_plan_checked : compileHmrSourceStepLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 10 2 none (.early s2Step10CompleteLog)=some s2Step10LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 10 2 none (.early s2Step10CompleteLog)) s2Step10Lifecycle_checked
def s2Step11LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 11 3 none (.early s2Step11CompleteLog)) s2Step11Lifecycle_checked
theorem s2Step11Lifecycle_plan_checked : compileHmrSourceStepLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 11 3 none (.early s2Step11CompleteLog)=some s2Step11LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 11 3 none (.early s2Step11CompleteLog)) s2Step11Lifecycle_checked
def s2Step12LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 12 3 none (.early s2Step12CompleteLog)) s2Step12Lifecycle_checked
theorem s2Step12Lifecycle_plan_checked : compileHmrSourceStepLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 12 3 none (.early s2Step12CompleteLog)=some s2Step12LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 12 3 none (.early s2Step12CompleteLog)) s2Step12Lifecycle_checked
def s2Step13LifecyclePlan : HmrSourceStepPlan := hmrAcceptedPlan (compileHmrSourceStepLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 13 4 none (.early s2Step13CompleteLog)) s2Step13Lifecycle_checked
theorem s2Step13Lifecycle_plan_checked : compileHmrSourceStepLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 13 4 none (.early s2Step13CompleteLog)=some s2Step13LifecyclePlan :=
  hmrAcceptedPlan_checked (compileHmrSourceStepLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 13 4 none (.early s2Step13CompleteLog)) s2Step13Lifecycle_checked

end ECDSAAdd.Arithmetic.Paper935
