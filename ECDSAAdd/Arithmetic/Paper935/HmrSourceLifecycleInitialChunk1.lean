import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk0

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step16Lifecycle_checked : (compileHmrSourceStepLog s2Step16EntryFBefore s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 6 498 16 5 none (.early s2Step16CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step16Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 16<498)]
  rw [hp]
  rfl
theorem s2Step17Lifecycle_checked : (compileHmrSourceStepLog s2Step17EntryFBefore s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 6 498 17 6 none (.early s2Step17CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step17Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 17<498)]
  rw [hp]
  rfl
theorem s2Step18Lifecycle_checked : (compileHmrSourceStepLog s2Step18EntryFBefore s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 6 498 18 6 none (.early s2Step18CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step18Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 18<498)]
  rw [hp]
  rfl
theorem s2Step19Lifecycle_checked : (compileHmrSourceStepLog s2Step19EntryFBefore s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 6 498 19 7 none (.early s2Step19CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step19Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 19<498)]
  rw [hp]
  rfl
theorem s2Step20Lifecycle_checked : (compileHmrSourceStepLog s2Step20EntryFBefore s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 6 498 20 7 none (.early s2Step20CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step20Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 20<498)]
  rw [hp]
  rfl
theorem s2Step21Lifecycle_checked : (compileHmrSourceStepLog s2Step21EntryFBefore s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 6 498 21 8 none (.early s2Step21CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step21Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 21<498)]
  rw [hp]
  rfl
theorem s2Step22Lifecycle_checked : (compileHmrSourceStepLog s2Step22EntryFBefore s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 6 498 22 8 none (.early s2Step22CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step22Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 22<498)]
  rw [hp]
  rfl
theorem s2Step23Lifecycle_checked : (compileHmrSourceStepLog s2Step23EntryFBefore s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 6 498 23 9 none (.early s2Step23CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step23Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 23<498)]
  rw [hp]
  rfl
theorem s2Step24Lifecycle_checked : (compileHmrSourceStepLog s2Step24EntryFBefore s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 6 498 24 9 none (.early s2Step24CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step24Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 24<498)]
  rw [hp]
  rfl
theorem s2Step25Lifecycle_checked : (compileHmrSourceStepLog s2Step25EntryFBefore s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 6 498 25 10 none (.early s2Step25CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step25Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 25<498)]
  rw [hp]
  rfl
theorem s2Step26Lifecycle_checked : (compileHmrSourceStepLog s2Step26EntryFBefore s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 6 498 26 10 none (.early s2Step26CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step26Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 26<498)]
  rw [hp]
  rfl
theorem s2Step27Lifecycle_checked : (compileHmrSourceStepLog s2Step27EntryFBefore s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 6 498 27 11 none (.early s2Step27CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step27Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 27<498)]
  rw [hp]
  rfl
theorem s2Step28Lifecycle_checked : (compileHmrSourceStepLog s2Step28EntryFBefore s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 6 498 28 11 none (.early s2Step28CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step28Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 28<498)]
  rw [hp]
  rfl
theorem s2Step29Lifecycle_checked : (compileHmrSourceStepLog s2Step29EntryFBefore s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 6 498 29 12 none (.early s2Step29CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step29Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 29<498)]
  rw [hp]
  rfl
theorem s2Step30Lifecycle_checked : (compileHmrSourceStepLog s2Step30EntryFBefore s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 6 498 30 12 none (.early s2Step30CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step30Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 30<498)]
  rw [hp]
  rfl
theorem s2Step31Lifecycle_checked : (compileHmrSourceStepLog s2Step31EntryFBefore s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 6 498 31 13 none (.early s2Step31CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step31Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 31<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
