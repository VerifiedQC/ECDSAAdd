import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step0Lifecycle_checked : (compileHmrSourceStepLog s2Step0EntryFBefore s2Step0FrontBank 256 1 ⟨256,255,2,1⟩ [772, 773, 774, 775, 776, 777] [] 6 498 0 1 none (.early s2Step0CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step0Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 0<498)]
  rw [hp]
  rfl
theorem s2Step1Lifecycle_checked : (compileHmrSourceStepLog s2Step1EntryFBefore s2Step1FrontBank 256 2 ⟨256,255,3,1⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 1 1 none (.early s2Step1CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step1Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 1<498)]
  rw [hp]
  rfl
theorem s2Step2Lifecycle_checked : (compileHmrSourceStepLog s2Step2EntryFBefore s2Step2FrontBank 256 3 ⟨256,255,4,2⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 2 1 none (.early s2Step2CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step2Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 2<498)]
  rw [hp]
  rfl
theorem s2Step3Lifecycle_checked : (compileHmrSourceStepLog s2Step3EntryFBefore s2Step3FrontBank 256 4 ⟨256,255,5,3⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 3 1 none (.early s2Step3CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step3Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 3<498)]
  rw [hp]
  rfl
theorem s2Step4Lifecycle_checked : (compileHmrSourceStepLog s2Step4EntryFBefore s2Step4FrontBank 256 5 ⟨256,255,6,4⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 4 1 none (.early s2Step4CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step4Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 4<498)]
  rw [hp]
  rfl
theorem s2Step5Lifecycle_checked : (compileHmrSourceStepLog s2Step5EntryFBefore s2Step5FrontBank 256 6 ⟨256,255,7,5⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 5 1 none (.early s2Step5CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step5Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 5<498)]
  rw [hp]
  rfl
theorem s2Step6Lifecycle_checked : (compileHmrSourceStepLog s2Step6EntryFBefore s2Step6FrontBank 256 7 ⟨256,255,8,6⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 6 1 none (.early s2Step6CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step6Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 6<498)]
  rw [hp]
  rfl
theorem s2Step7Lifecycle_checked : (compileHmrSourceStepLog s2Step7EntryFBefore s2Step7FrontBank 256 8 ⟨256,255,9,7⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 7 1 none (.early s2Step7CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step7Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 7<498)]
  rw [hp]
  rfl
theorem s2Step8Lifecycle_checked : (compileHmrSourceStepLog s2Step8EntryFBefore s2Step8FrontBank 256 9 ⟨256,255,10,8⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 8 1 none (.early s2Step8CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step8Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 8<498)]
  rw [hp]
  rfl
theorem s2Step9Lifecycle_checked : (compileHmrSourceStepLog s2Step9EntryFBefore s2Step9FrontBank 256 10 ⟨256,255,11,9⟩ [772, 773, 774, 775, 776, 777] [795] 6 498 9 2 none (.early s2Step9CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step9Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 9<498)]
  rw [hp]
  rfl
theorem s2Step10Lifecycle_checked : (compileHmrSourceStepLog s2Step10EntryFBefore s2Step10FrontBank 256 11 ⟨256,255,12,10⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 10 2 none (.early s2Step10CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step10Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 10<498)]
  rw [hp]
  rfl
theorem s2Step11Lifecycle_checked : (compileHmrSourceStepLog s2Step11EntryFBefore s2Step11FrontBank 256 12 ⟨256,255,13,11⟩ [772, 773, 774, 775, 776, 777] [795, 813] 6 498 11 3 none (.early s2Step11CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step11Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 11<498)]
  rw [hp]
  rfl
theorem s2Step12Lifecycle_checked : (compileHmrSourceStepLog s2Step12EntryFBefore s2Step12FrontBank 256 13 ⟨256,255,14,12⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 12 3 none (.early s2Step12CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step12Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 12<498)]
  rw [hp]
  rfl
theorem s2Step13Lifecycle_checked : (compileHmrSourceStepLog s2Step13EntryFBefore s2Step13FrontBank 256 14 ⟨256,255,15,13⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818] 6 498 13 4 none (.early s2Step13CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step13Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 13<498)]
  rw [hp]
  rfl
theorem s2Step14Lifecycle_checked : (compileHmrSourceStepLog s2Step14EntryFBefore s2Step14FrontBank 256 15 ⟨256,255,16,14⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 6 498 14 4 none (.early s2Step14CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step14Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 14<498)]
  rw [hp]
  rfl
theorem s2Step15Lifecycle_checked : (compileHmrSourceStepLog s2Step15EntryFBefore s2Step15FrontBank 256 16 ⟨256,255,17,15⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823] 6 498 15 5 none (.early s2Step15CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step15Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 15<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
