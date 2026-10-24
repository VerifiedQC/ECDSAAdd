import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepRun
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitialChunk2

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step48Lifecycle_checked : (compileHmrSourceStepLog s2Step48EntryFBefore s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 6 498 48 21 none (.early s2Step48CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step48Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 48<498)]
  rw [hp]
  rfl
theorem s2Step49Lifecycle_checked : (compileHmrSourceStepLog s2Step49EntryFBefore s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 6 498 49 22 none (.early s2Step49CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step49Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 49<498)]
  rw [hp]
  rfl
theorem s2Step50Lifecycle_checked : (compileHmrSourceStepLog s2Step50EntryFBefore s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 6 498 50 22 none (.early s2Step50CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step50Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 50<498)]
  rw [hp]
  rfl
theorem s2Step51Lifecycle_checked : (compileHmrSourceStepLog s2Step51EntryFBefore s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] 6 498 51 23 none (.early s2Step51CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step51Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 51<498)]
  rw [hp]
  rfl
theorem s2Step52Lifecycle_checked : (compileHmrSourceStepLog s2Step52EntryFBefore s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 6 498 52 23 none (.early s2Step52CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step52Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 52<498)]
  rw [hp]
  rfl
theorem s2Step53Lifecycle_checked : (compileHmrSourceStepLog s2Step53EntryFBefore s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] 6 498 53 24 none (.early s2Step53CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step53Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 53<498)]
  rw [hp]
  rfl
theorem s2Step54Lifecycle_checked : (compileHmrSourceStepLog s2Step54EntryFBefore s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 6 498 54 24 none (.early s2Step54CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step54Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 54<498)]
  rw [hp]
  rfl
theorem s2Step55Lifecycle_checked : (compileHmrSourceStepLog s2Step55EntryFBefore s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] 6 498 55 25 none (.early s2Step55CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step55Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 55<498)]
  rw [hp]
  rfl
theorem s2Step56Lifecycle_checked : (compileHmrSourceStepLog s2Step56EntryFBefore s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 56 25 none (.early s2Step56CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step56Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 56<498)]
  rw [hp]
  rfl
theorem s2Step57Lifecycle_checked : (compileHmrSourceStepLog s2Step57EntryFBefore s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 57 25 none (.early s2Step57CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step57Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 57<498)]
  rw [hp]
  rfl
theorem s2Step58Lifecycle_checked : (compileHmrSourceStepLog s2Step58EntryFBefore s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 58 25 none (.early s2Step58CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step58Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 58<498)]
  rw [hp]
  rfl
theorem s2Step59Lifecycle_checked : (compileHmrSourceStepLog s2Step59EntryFBefore s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 59 25 none (.early s2Step59CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step59Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 59<498)]
  rw [hp]
  rfl
theorem s2Step60Lifecycle_checked : (compileHmrSourceStepLog s2Step60EntryFBefore s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 60 25 none (.early s2Step60CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step60Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 60<498)]
  rw [hp]
  rfl
theorem s2Step61Lifecycle_checked : (compileHmrSourceStepLog s2Step61EntryFBefore s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 61 25 none (.early s2Step61CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step61Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 61<498)]
  rw [hp]
  rfl
theorem s2Step62Lifecycle_checked : (compileHmrSourceStepLog s2Step62EntryFBefore s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] 6 498 62 26 none (.early s2Step62CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step62Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 62<498)]
  rw [hp]
  rfl
theorem s2Step63Lifecycle_checked : (compileHmrSourceStepLog s2Step63EntryFBefore s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] 6 498 63 27 none (.early s2Step63CompleteLog)).map (fun _ => true)=some true := by
  obtain ⟨P,hp,_⟩ := Option.map_eq_some_iff.mp s2Step63Complete_checked
  simp only [compileHmrSourceStepLog,if_pos (by decide : 63<498)]
  rw [hp]
  rfl

end ECDSAAdd.Arithmetic.Paper935
