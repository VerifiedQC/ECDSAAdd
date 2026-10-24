import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk4

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step15Lifecycle_checked : (compileHmrSourceStepLog s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 6 498 15 5 none (.early s6Step15CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step15Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 15<498)]
  rw [hp]
  rfl
theorem s6Step16Lifecycle_checked : (compileHmrSourceStepLog s6Step16EntryFBefore s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 6 498 16 5 none (.early s6Step16CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step16Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 16<498)]
  rw [hp]
  rfl
theorem s6Step17Lifecycle_checked : (compileHmrSourceStepLog s6Step17EntryFBefore s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 6 498 17 6 none (.early s6Step17CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step17Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 17<498)]
  rw [hp]
  rfl
theorem s6Step18Lifecycle_checked : (compileHmrSourceStepLog s6Step18EntryFBefore s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 6 498 18 6 none (.early s6Step18CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step18Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 18<498)]
  rw [hp]
  rfl
theorem s6Step19Lifecycle_checked : (compileHmrSourceStepLog s6Step19EntryFBefore s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 6 498 19 7 none (.early s6Step19CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step19Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 19<498)]
  rw [hp]
  rfl
theorem s6Step20Lifecycle_checked : (compileHmrSourceStepLog s6Step20EntryFBefore s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 6 498 20 7 none (.early s6Step20CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step20Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 20<498)]
  rw [hp]
  rfl
theorem s6Step21Lifecycle_checked : (compileHmrSourceStepLog s6Step21EntryFBefore s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 6 498 21 8 none (.early s6Step21CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step21Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 21<498)]
  rw [hp]
  rfl
theorem s6Step22Lifecycle_checked : (compileHmrSourceStepLog s6Step22EntryFBefore s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 6 498 22 8 none (.early s6Step22CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step22Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 22<498)]
  rw [hp]
  rfl
theorem s6Step23Lifecycle_checked : (compileHmrSourceStepLog s6Step23EntryFBefore s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 6 498 23 9 none (.early s6Step23CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step23Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 23<498)]
  rw [hp]
  rfl
theorem s6Step24Lifecycle_checked : (compileHmrSourceStepLog s6Step24EntryFBefore s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 6 498 24 9 none (.early s6Step24CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step24Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 24<498)]
  rw [hp]
  rfl
theorem s6Step25Lifecycle_checked : (compileHmrSourceStepLog s6Step25EntryFBefore s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 6 498 25 10 none (.early s6Step25CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step25Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 25<498)]
  rw [hp]
  rfl
theorem s6Step26Lifecycle_checked : (compileHmrSourceStepLog s6Step26EntryFBefore s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 6 498 26 10 none (.early s6Step26CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step26Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 26<498)]
  rw [hp]
  rfl
theorem s6Step27Lifecycle_checked : (compileHmrSourceStepLog s6Step27EntryFBefore s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 6 498 27 11 none (.early s6Step27CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step27Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 27<498)]
  rw [hp]
  rfl
theorem s6Step28Lifecycle_checked : (compileHmrSourceStepLog s6Step28EntryFBefore s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 6 498 28 11 none (.early s6Step28CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step28Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 28<498)]
  rw [hp]
  rfl
theorem s6Step29Lifecycle_checked : (compileHmrSourceStepLog s6Step29EntryFBefore s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 6 498 29 12 none (.early s6Step29CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step29Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 29<498)]
  rw [hp]
  rfl
theorem s6Step30Lifecycle_checked : (compileHmrSourceStepLog s6Step30EntryFBefore s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 6 498 30 12 none (.early s6Step30CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s6Step30Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 30<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
