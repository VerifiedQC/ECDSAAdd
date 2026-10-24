import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk1

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step32Lifecycle_checked : (compileHmrSourceStepLog s2Step32EntryFBefore s2Step32FrontBank 253 29 ⟨252,252,29,28⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 6 498 32 13 none (.early s2Step32CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step32Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 32<498)]
  rw [hp]
  rfl
theorem s2Step33Lifecycle_checked : (compileHmrSourceStepLog s2Step33EntryFBefore s2Step33FrontBank 252 29 ⟨251,251,30,29⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 6 498 33 14 none (.early s2Step33CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step33Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 33<498)]
  rw [hp]
  rfl
theorem s2Step34Lifecycle_checked : (compileHmrSourceStepLog s2Step34EntryFBefore s2Step34FrontBank 251 30 ⟨251,250,30,30⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 6 498 34 14 none (.early s2Step34CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step34Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 34<498)]
  rw [hp]
  rfl
theorem s2Step35Lifecycle_checked : (compileHmrSourceStepLog s2Step35EntryFBefore s2Step35FrontBank 251 30 ⟨250,251,31,30⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] 6 498 35 15 none (.early s2Step35CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step35Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 35<498)]
  rw [hp]
  rfl
theorem s2Step36Lifecycle_checked : (compileHmrSourceStepLog s2Step36EntryFBefore s2Step36FrontBank 251 31 ⟨250,250,31,31⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 6 498 36 15 none (.early s2Step36CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step36Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 36<498)]
  rw [hp]
  rfl
theorem s2Step37Lifecycle_checked : (compileHmrSourceStepLog s2Step37EntryFBefore s2Step37FrontBank 250 31 ⟨250,249,32,32⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] 6 498 37 16 none (.early s2Step37CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step37Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 37<498)]
  rw [hp]
  rfl
theorem s2Step38Lifecycle_checked : (compileHmrSourceStepLog s2Step38EntryFBefore s2Step38FrontBank 250 32 ⟨249,249,32,32⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 6 498 38 16 none (.early s2Step38CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step38Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 38<498)]
  rw [hp]
  rfl
theorem s2Step39Lifecycle_checked : (compileHmrSourceStepLog s2Step39EntryFBefore s2Step39FrontBank 249 32 ⟨249,248,33,32⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] 6 498 39 17 none (.early s2Step39CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step39Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 39<498)]
  rw [hp]
  rfl
theorem s2Step40Lifecycle_checked : (compileHmrSourceStepLog s2Step40EntryFBefore s2Step40FrontBank 249 33 ⟨248,248,34,33⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 6 498 40 17 none (.early s2Step40CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step40Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 40<498)]
  rw [hp]
  rfl
theorem s2Step41Lifecycle_checked : (compileHmrSourceStepLog s2Step41EntryFBefore s2Step41FrontBank 248 34 ⟨248,248,34,33⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] 6 498 41 18 none (.early s2Step41CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step41Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 41<498)]
  rw [hp]
  rfl
theorem s2Step42Lifecycle_checked : (compileHmrSourceStepLog s2Step42EntryFBefore s2Step42FrontBank 248 34 ⟨247,247,34,35⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 6 498 42 18 none (.early s2Step42CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step42Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 42<498)]
  rw [hp]
  rfl
theorem s2Step43Lifecycle_checked : (compileHmrSourceStepLog s2Step43EntryFBefore s2Step43FrontBank 247 35 ⟨246,246,34,35⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] 6 498 43 19 none (.early s2Step43CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step43Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 43<498)]
  rw [hp]
  rfl
theorem s2Step44Lifecycle_checked : (compileHmrSourceStepLog s2Step44EntryFBefore s2Step44FrontBank 246 35 ⟨246,245,35,35⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 6 498 44 19 none (.early s2Step44CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step44Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 44<498)]
  rw [hp]
  rfl
theorem s2Step45Lifecycle_checked : (compileHmrSourceStepLog s2Step45EntryFBefore s2Step45FrontBank 246 35 ⟨245,245,36,35⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] 6 498 45 20 none (.early s2Step45CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step45Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 45<498)]
  rw [hp]
  rfl
theorem s2Step46Lifecycle_checked : (compileHmrSourceStepLog s2Step46EntryFBefore s2Step46FrontBank 245 36 ⟨244,244,36,36⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 6 498 46 20 none (.early s2Step46CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step46Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 46<498)]
  rw [hp]
  rfl
theorem s2Step47Lifecycle_checked : (compileHmrSourceStepLog s2Step47EntryFBefore s2Step47FrontBank 244 36 ⟨244,244,37,37⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] 6 498 47 21 none (.early s2Step47CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step47Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 47<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
