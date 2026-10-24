import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk5

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step31Lifecycle_checked : (compileHmrSourceStepLog s6Step31EntryFBefore s6Step31FrontBank 253 29 ⟨253,251,29,28⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 6 498 31 13 none (.early s6Step31CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step31Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 31<498)]
  rw [hp]
  rfl
theorem s6Step32Lifecycle_checked : (compileHmrSourceStepLog s6Step32EntryFBefore s6Step32FrontBank 253 29 ⟨252,252,29,28⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 6 498 32 13 none (.early s6Step32CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step32Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 32<498)]
  rw [hp]
  rfl
theorem s6Step33Lifecycle_checked : (compileHmrSourceStepLog s6Step33EntryFBefore s6Step33FrontBank 252 29 ⟨251,251,30,29⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 6 498 33 14 none (.early s6Step33CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step33Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 33<498)]
  rw [hp]
  rfl
theorem s6Step34Lifecycle_checked : (compileHmrSourceStepLog s6Step34EntryFBefore s6Step34FrontBank 251 30 ⟨251,250,30,30⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 6 498 34 14 none (.early s6Step34CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step34Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 34<498)]
  rw [hp]
  rfl
theorem s6Step35Lifecycle_checked : (compileHmrSourceStepLog s6Step35EntryFBefore s6Step35FrontBank 251 30 ⟨250,251,31,30⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] 6 498 35 15 none (.early s6Step35CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step35Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 35<498)]
  rw [hp]
  rfl
theorem s6Step36Lifecycle_checked : (compileHmrSourceStepLog s6Step36EntryFBefore s6Step36FrontBank 251 31 ⟨250,250,31,31⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 6 498 36 15 none (.early s6Step36CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step36Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 36<498)]
  rw [hp]
  rfl
theorem s6Step37Lifecycle_checked : (compileHmrSourceStepLog s6Step37EntryFBefore s6Step37FrontBank 250 31 ⟨250,249,32,32⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] 6 498 37 16 none (.early s6Step37CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step37Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 37<498)]
  rw [hp]
  rfl
theorem s6Step38Lifecycle_checked : (compileHmrSourceStepLog s6Step38EntryFBefore s6Step38FrontBank 250 32 ⟨249,249,32,32⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 6 498 38 16 none (.early s6Step38CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step38Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 38<498)]
  rw [hp]
  rfl
theorem s6Step39Lifecycle_checked : (compileHmrSourceStepLog s6Step39EntryFBefore s6Step39FrontBank 249 32 ⟨249,248,33,32⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] 6 498 39 17 none (.early s6Step39CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step39Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 39<498)]
  rw [hp]
  rfl
theorem s6Step40Lifecycle_checked : (compileHmrSourceStepLog s6Step40EntryFBefore s6Step40FrontBank 249 33 ⟨248,248,34,33⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 6 498 40 17 none (.early s6Step40CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step40Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 40<498)]
  rw [hp]
  rfl
theorem s6Step41Lifecycle_checked : (compileHmrSourceStepLog s6Step41EntryFBefore s6Step41FrontBank 248 34 ⟨248,248,34,33⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] 6 498 41 18 none (.early s6Step41CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step41Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 41<498)]
  rw [hp]
  rfl
theorem s6Step42Lifecycle_checked : (compileHmrSourceStepLog s6Step42EntryFBefore s6Step42FrontBank 248 34 ⟨247,247,34,35⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 6 498 42 18 none (.early s6Step42CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step42Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 42<498)]
  rw [hp]
  rfl
theorem s6Step43Lifecycle_checked : (compileHmrSourceStepLog s6Step43EntryFBefore s6Step43FrontBank 247 35 ⟨246,246,34,35⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] 6 498 43 19 none (.early s6Step43CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step43Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 43<498)]
  rw [hp]
  rfl
theorem s6Step44Lifecycle_checked : (compileHmrSourceStepLog s6Step44EntryFBefore s6Step44FrontBank 246 35 ⟨246,245,35,35⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 6 498 44 19 none (.early s6Step44CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step44Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 44<498)]
  rw [hp]
  rfl
theorem s6Step45Lifecycle_checked : (compileHmrSourceStepLog s6Step45EntryFBefore s6Step45FrontBank 246 35 ⟨245,245,36,35⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] 6 498 45 20 none (.early s6Step45CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step45Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 45<498)]
  rw [hp]
  rfl
theorem s6Step46Lifecycle_checked : (compileHmrSourceStepLog s6Step46EntryFBefore s6Step46FrontBank 245 36 ⟨244,244,36,36⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] 6 498 46 20 none (.early s6Step46CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step46Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 46<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
