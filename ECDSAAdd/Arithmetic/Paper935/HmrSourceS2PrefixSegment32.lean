import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2ObservedSpec32 : HmrSourceWalkStepLog := s2ObservedLogs32[0]
def s2ObservedPlan32 : HmrSourceStepPlan := .early s2Step32CompletePlan
def s2ObservedSpec33 : HmrSourceWalkStepLog := s2ObservedLogs32[1]
def s2ObservedPlan33 : HmrSourceStepPlan := .early s2Step33CompletePlan
def s2ObservedSpec34 : HmrSourceWalkStepLog := s2ObservedLogs32[2]
def s2ObservedPlan34 : HmrSourceStepPlan := .early s2Step34CompletePlan
def s2ObservedSpec35 : HmrSourceWalkStepLog := s2ObservedLogs32[3]
def s2ObservedPlan35 : HmrSourceStepPlan := .early s2Step35CompletePlan
def s2ObservedSpec36 : HmrSourceWalkStepLog := s2ObservedLogs32[4]
def s2ObservedPlan36 : HmrSourceStepPlan := .early s2Step36CompletePlan
def s2ObservedSpec37 : HmrSourceWalkStepLog := s2ObservedLogs32[5]
def s2ObservedPlan37 : HmrSourceStepPlan := .early s2Step37CompletePlan
def s2ObservedSpec38 : HmrSourceWalkStepLog := s2ObservedLogs32[6]
def s2ObservedPlan38 : HmrSourceStepPlan := .early s2Step38CompletePlan
def s2ObservedSpec39 : HmrSourceWalkStepLog := s2ObservedLogs32[7]
def s2ObservedPlan39 : HmrSourceStepPlan := .early s2Step39CompletePlan
def s2ObservedSpec40 : HmrSourceWalkStepLog := s2ObservedLogs32[8]
def s2ObservedPlan40 : HmrSourceStepPlan := .early s2Step40CompletePlan
def s2ObservedSpec41 : HmrSourceWalkStepLog := s2ObservedLogs32[9]
def s2ObservedPlan41 : HmrSourceStepPlan := .early s2Step41CompletePlan
def s2ObservedSpec42 : HmrSourceWalkStepLog := s2ObservedLogs32[10]
def s2ObservedPlan42 : HmrSourceStepPlan := .early s2Step42CompletePlan
def s2ObservedSpec43 : HmrSourceWalkStepLog := s2ObservedLogs32[11]
def s2ObservedPlan43 : HmrSourceStepPlan := .early s2Step43CompletePlan
def s2ObservedSpec44 : HmrSourceWalkStepLog := s2ObservedLogs32[12]
def s2ObservedPlan44 : HmrSourceStepPlan := .early s2Step44CompletePlan
def s2ObservedSpec45 : HmrSourceWalkStepLog := s2ObservedLogs32[13]
def s2ObservedPlan45 : HmrSourceStepPlan := .early s2Step45CompletePlan
def s2ObservedSpec46 : HmrSourceWalkStepLog := s2ObservedLogs32[14]
def s2ObservedPlan46 : HmrSourceStepPlan := .early s2Step46CompletePlan
def s2ObservedSpec47 : HmrSourceWalkStepLog := s2ObservedLogs32[15]
def s2ObservedPlan47 : HmrSourceStepPlan := .early s2Step47CompletePlan
theorem s2Observed_step32_checked :
    compileHmrSourceStepLog s2Step32EntryFBefore s2Step32FrontBank
      s2ObservedSpec32.fgWidth s2ObservedSpec32.vWidth s2ObservedSpec32.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854]
      6 498 32 s2ObservedSpec32.need none s2ObservedSpec32.log=some s2ObservedPlan32 := by
  have spec : s2ObservedSpec32 = ⟨253,29,⟨252,252,29,28⟩,13,.early s2Step32CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 32<498)]
  simp only [s2ObservedCounter]
  rw [s2Step32Complete_explicit_checked]
  rfl
theorem s2Observed_step33_checked :
    compileHmrSourceStepLog s2Step33EntryFBefore s2Step33FrontBank
      s2ObservedSpec33.fgWidth s2ObservedSpec33.vWidth s2ObservedSpec33.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854]
      6 498 33 s2ObservedSpec33.need none s2ObservedSpec33.log=some s2ObservedPlan33 := by
  have spec : s2ObservedSpec33 = ⟨252,29,⟨251,251,30,29⟩,14,.early s2Step33CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 33<498)]
  simp only [s2ObservedCounter]
  rw [s2Step33Complete_explicit_checked]
  rfl
theorem s2Observed_step34_checked :
    compileHmrSourceStepLog s2Step34EntryFBefore s2Step34FrontBank
      s2ObservedSpec34.fgWidth s2ObservedSpec34.vWidth s2ObservedSpec34.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855]
      6 498 34 s2ObservedSpec34.need none s2ObservedSpec34.log=some s2ObservedPlan34 := by
  have spec : s2ObservedSpec34 = ⟨251,30,⟨251,250,30,30⟩,14,.early s2Step34CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 34<498)]
  simp only [s2ObservedCounter]
  rw [s2Step34Complete_explicit_checked]
  rfl
theorem s2Observed_step35_checked :
    compileHmrSourceStepLog s2Step35EntryFBefore s2Step35FrontBank
      s2ObservedSpec35.fgWidth s2ObservedSpec35.vWidth s2ObservedSpec35.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855]
      6 498 35 s2ObservedSpec35.need none s2ObservedSpec35.log=some s2ObservedPlan35 := by
  have spec : s2ObservedSpec35 = ⟨251,30,⟨250,251,31,30⟩,15,.early s2Step35CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 35<498)]
  simp only [s2ObservedCounter]
  rw [s2Step35Complete_explicit_checked]
  rfl
theorem s2Observed_step36_checked :
    compileHmrSourceStepLog s2Step36EntryFBefore s2Step36FrontBank
      s2ObservedSpec36.fgWidth s2ObservedSpec36.vWidth s2ObservedSpec36.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857]
      6 498 36 s2ObservedSpec36.need none s2ObservedSpec36.log=some s2ObservedPlan36 := by
  have spec : s2ObservedSpec36 = ⟨251,31,⟨250,250,31,31⟩,15,.early s2Step36CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 36<498)]
  simp only [s2ObservedCounter]
  rw [s2Step36Complete_explicit_checked]
  rfl
theorem s2Observed_step37_checked :
    compileHmrSourceStepLog s2Step37EntryFBefore s2Step37FrontBank
      s2ObservedSpec37.fgWidth s2ObservedSpec37.vWidth s2ObservedSpec37.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857]
      6 498 37 s2ObservedSpec37.need none s2ObservedSpec37.log=some s2ObservedPlan37 := by
  have spec : s2ObservedSpec37 = ⟨250,31,⟨250,249,32,32⟩,16,.early s2Step37CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 37<498)]
  simp only [s2ObservedCounter]
  rw [s2Step37Complete_explicit_checked]
  rfl
theorem s2Observed_step38_checked :
    compileHmrSourceStepLog s2Step38EntryFBefore s2Step38FrontBank
      s2ObservedSpec38.fgWidth s2ObservedSpec38.vWidth s2ObservedSpec38.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859]
      6 498 38 s2ObservedSpec38.need none s2ObservedSpec38.log=some s2ObservedPlan38 := by
  have spec : s2ObservedSpec38 = ⟨250,32,⟨249,249,32,32⟩,16,.early s2Step38CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 38<498)]
  simp only [s2ObservedCounter]
  rw [s2Step38Complete_explicit_checked]
  rfl
theorem s2Observed_step39_checked :
    compileHmrSourceStepLog s2Step39EntryFBefore s2Step39FrontBank
      s2ObservedSpec39.fgWidth s2ObservedSpec39.vWidth s2ObservedSpec39.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859]
      6 498 39 s2ObservedSpec39.need none s2ObservedSpec39.log=some s2ObservedPlan39 := by
  have spec : s2ObservedSpec39 = ⟨249,32,⟨249,248,33,32⟩,17,.early s2Step39CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 39<498)]
  simp only [s2ObservedCounter]
  rw [s2Step39Complete_explicit_checked]
  rfl
theorem s2Observed_step40_checked :
    compileHmrSourceStepLog s2Step40EntryFBefore s2Step40FrontBank
      s2ObservedSpec40.fgWidth s2ObservedSpec40.vWidth s2ObservedSpec40.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858]
      6 498 40 s2ObservedSpec40.need none s2ObservedSpec40.log=some s2ObservedPlan40 := by
  have spec : s2ObservedSpec40 = ⟨249,33,⟨248,248,34,33⟩,17,.early s2Step40CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 40<498)]
  simp only [s2ObservedCounter]
  rw [s2Step40Complete_explicit_checked]
  rfl
theorem s2Observed_step41_checked :
    compileHmrSourceStepLog s2Step41EntryFBefore s2Step41FrontBank
      s2ObservedSpec41.fgWidth s2ObservedSpec41.vWidth s2ObservedSpec41.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858]
      6 498 41 s2ObservedSpec41.need none s2ObservedSpec41.log=some s2ObservedPlan41 := by
  have spec : s2ObservedSpec41 = ⟨248,34,⟨248,248,34,33⟩,18,.early s2Step41CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 41<498)]
  simp only [s2ObservedCounter]
  rw [s2Step41Complete_explicit_checked]
  rfl
theorem s2Observed_step42_checked :
    compileHmrSourceStepLog s2Step42EntryFBefore s2Step42FrontBank
      s2ObservedSpec42.fgWidth s2ObservedSpec42.vWidth s2ObservedSpec42.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861]
      6 498 42 s2ObservedSpec42.need none s2ObservedSpec42.log=some s2ObservedPlan42 := by
  have spec : s2ObservedSpec42 = ⟨248,34,⟨247,247,34,35⟩,18,.early s2Step42CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 42<498)]
  simp only [s2ObservedCounter]
  rw [s2Step42Complete_explicit_checked]
  rfl
theorem s2Observed_step43_checked :
    compileHmrSourceStepLog s2Step43EntryFBefore s2Step43FrontBank
      s2ObservedSpec43.fgWidth s2ObservedSpec43.vWidth s2ObservedSpec43.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861]
      6 498 43 s2ObservedSpec43.need none s2ObservedSpec43.log=some s2ObservedPlan43 := by
  have spec : s2ObservedSpec43 = ⟨247,35,⟨246,246,34,35⟩,19,.early s2Step43CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 43<498)]
  simp only [s2ObservedCounter]
  rw [s2Step43Complete_explicit_checked]
  rfl
theorem s2Observed_step44_checked :
    compileHmrSourceStepLog s2Step44EntryFBefore s2Step44FrontBank
      s2ObservedSpec44.fgWidth s2ObservedSpec44.vWidth s2ObservedSpec44.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856]
      6 498 44 s2ObservedSpec44.need none s2ObservedSpec44.log=some s2ObservedPlan44 := by
  have spec : s2ObservedSpec44 = ⟨246,35,⟨246,245,35,35⟩,19,.early s2Step44CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 44<498)]
  simp only [s2ObservedCounter]
  rw [s2Step44Complete_explicit_checked]
  rfl
theorem s2Observed_step45_checked :
    compileHmrSourceStepLog s2Step45EntryFBefore s2Step45FrontBank
      s2ObservedSpec45.fgWidth s2ObservedSpec45.vWidth s2ObservedSpec45.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856]
      6 498 45 s2ObservedSpec45.need none s2ObservedSpec45.log=some s2ObservedPlan45 := by
  have spec : s2ObservedSpec45 = ⟨246,35,⟨245,245,36,35⟩,20,.early s2Step45CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 45<498)]
  simp only [s2ObservedCounter]
  rw [s2Step45Complete_explicit_checked]
  rfl
theorem s2Observed_step46_checked :
    compileHmrSourceStepLog s2Step46EntryFBefore s2Step46FrontBank
      s2ObservedSpec46.fgWidth s2ObservedSpec46.vWidth s2ObservedSpec46.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]
      6 498 46 s2ObservedSpec46.need none s2ObservedSpec46.log=some s2ObservedPlan46 := by
  have spec : s2ObservedSpec46 = ⟨245,36,⟨244,244,36,36⟩,20,.early s2Step46CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 46<498)]
  simp only [s2ObservedCounter]
  rw [s2Step46Complete_explicit_checked]
  rfl
theorem s2Observed_step47_checked :
    compileHmrSourceStepLog s2Step47EntryFBefore s2Step47FrontBank
      s2ObservedSpec47.fgWidth s2ObservedSpec47.vWidth s2ObservedSpec47.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]
      6 498 47 s2ObservedSpec47.need none s2ObservedSpec47.log=some s2ObservedPlan47 := by
  have spec : s2ObservedSpec47 = ⟨244,36,⟨244,244,37,37⟩,21,.early s2Step47CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 47<498)]
  simp only [s2ObservedCounter]
  rw [s2Step47Complete_explicit_checked]
  rfl
theorem s2Observed_boundary32_arena : s2ObservedPlan32.outputArena=s2Step33EntryFBefore := rfl
theorem s2Observed_boundary32_bank : s2ObservedPlan32.bank=s2Step33FrontBank := by decide +kernel
theorem s2Observed_boundary32_record : s2ObservedPlan32.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] := rfl
theorem s2Observed_boundary33_arena : s2ObservedPlan33.outputArena=s2Step34EntryFBefore := rfl
theorem s2Observed_boundary33_bank : s2ObservedPlan33.bank=s2Step34FrontBank := by decide +kernel
theorem s2Observed_boundary33_record : s2ObservedPlan33.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] := rfl
theorem s2Observed_boundary34_arena : s2ObservedPlan34.outputArena=s2Step35EntryFBefore := rfl
theorem s2Observed_boundary34_bank : s2ObservedPlan34.bank=s2Step35FrontBank := by decide +kernel
theorem s2Observed_boundary34_record : s2ObservedPlan34.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855] := rfl
theorem s2Observed_boundary35_arena : s2ObservedPlan35.outputArena=s2Step36EntryFBefore := rfl
theorem s2Observed_boundary35_bank : s2ObservedPlan35.bank=s2Step36FrontBank := by decide +kernel
theorem s2Observed_boundary35_record : s2ObservedPlan35.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] := rfl
theorem s2Observed_boundary36_arena : s2ObservedPlan36.outputArena=s2Step37EntryFBefore := rfl
theorem s2Observed_boundary36_bank : s2ObservedPlan36.bank=s2Step37FrontBank := by decide +kernel
theorem s2Observed_boundary36_record : s2ObservedPlan36.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857] := rfl
theorem s2Observed_boundary37_arena : s2ObservedPlan37.outputArena=s2Step38EntryFBefore := rfl
theorem s2Observed_boundary37_bank : s2ObservedPlan37.bank=s2Step38FrontBank := by decide +kernel
theorem s2Observed_boundary37_record : s2ObservedPlan37.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] := rfl
theorem s2Observed_boundary38_arena : s2ObservedPlan38.outputArena=s2Step39EntryFBefore := rfl
theorem s2Observed_boundary38_bank : s2ObservedPlan38.bank=s2Step39FrontBank := by decide +kernel
theorem s2Observed_boundary38_record : s2ObservedPlan38.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859] := rfl
theorem s2Observed_boundary39_arena : s2ObservedPlan39.outputArena=s2Step40EntryFBefore := rfl
theorem s2Observed_boundary39_bank : s2ObservedPlan39.bank=s2Step40FrontBank := by decide +kernel
theorem s2Observed_boundary39_record : s2ObservedPlan39.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] := rfl
theorem s2Observed_boundary40_arena : s2ObservedPlan40.outputArena=s2Step41EntryFBefore := rfl
theorem s2Observed_boundary40_bank : s2ObservedPlan40.bank=s2Step41FrontBank := by decide +kernel
theorem s2Observed_boundary40_record : s2ObservedPlan40.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858] := rfl
theorem s2Observed_boundary41_arena : s2ObservedPlan41.outputArena=s2Step42EntryFBefore := rfl
theorem s2Observed_boundary41_bank : s2ObservedPlan41.bank=s2Step42FrontBank := by decide +kernel
theorem s2Observed_boundary41_record : s2ObservedPlan41.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] := rfl
theorem s2Observed_boundary42_arena : s2ObservedPlan42.outputArena=s2Step43EntryFBefore := rfl
theorem s2Observed_boundary42_bank : s2ObservedPlan42.bank=s2Step43FrontBank := by decide +kernel
theorem s2Observed_boundary42_record : s2ObservedPlan42.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861] := rfl
theorem s2Observed_boundary43_arena : s2ObservedPlan43.outputArena=s2Step44EntryFBefore := rfl
theorem s2Observed_boundary43_bank : s2ObservedPlan43.bank=s2Step44FrontBank := by decide +kernel
theorem s2Observed_boundary43_record : s2ObservedPlan43.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] := rfl
theorem s2Observed_boundary44_arena : s2ObservedPlan44.outputArena=s2Step45EntryFBefore := rfl
theorem s2Observed_boundary44_bank : s2ObservedPlan44.bank=s2Step45FrontBank := by decide +kernel
theorem s2Observed_boundary44_record : s2ObservedPlan44.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856] := rfl
theorem s2Observed_boundary45_arena : s2ObservedPlan45.outputArena=s2Step46EntryFBefore := rfl
theorem s2Observed_boundary45_bank : s2ObservedPlan45.bank=s2Step46FrontBank := by decide +kernel
theorem s2Observed_boundary45_record : s2ObservedPlan45.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] := rfl
theorem s2Observed_boundary46_arena : s2ObservedPlan46.outputArena=s2Step47EntryFBefore := rfl
theorem s2Observed_boundary46_bank : s2ObservedPlan46.bank=s2Step47FrontBank := by decide +kernel
theorem s2Observed_boundary46_record : s2ObservedPlan46.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] := rfl
def s2ObservedSegment32Logs : List HmrSourceWalkStepLog := [s2ObservedSpec32,s2ObservedSpec33,s2ObservedSpec34,s2ObservedSpec35,s2ObservedSpec36,s2ObservedSpec37,s2ObservedSpec38,s2ObservedSpec39,s2ObservedSpec40,s2ObservedSpec41,s2ObservedSpec42,s2ObservedSpec43,s2ObservedSpec44,s2ObservedSpec45,s2ObservedSpec46,s2ObservedSpec47]
theorem s2ObservedSegment32_length : s2ObservedSegment32Logs.length=16 := rfl
def s2ObservedSegment32Plan : HmrSourceWalkPlan := (.step s2ObservedPlan32 (.step s2ObservedPlan33 (.step s2ObservedPlan34 (.step s2ObservedPlan35 (.step s2ObservedPlan36 (.step s2ObservedPlan37 (.step s2ObservedPlan38 (.step s2ObservedPlan39 (.step s2ObservedPlan40 (.step s2ObservedPlan41 (.step s2ObservedPlan42 (.step s2ObservedPlan43 (.step s2ObservedPlan44 (.step s2ObservedPlan45 (.step s2ObservedPlan46 (.step s2ObservedPlan47 (.done s2ObservedPlan47.outputArena s2ObservedPlan47.bank (s2ObservedPlan47.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]) none)))))))))))))))))
theorem s2ObservedSegment32_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2Step32EntryFBefore s2Step32FrontBank [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] 32 s2ObservedSegment32Logs=some s2ObservedSegment32Plan := by
  unfold s2ObservedSegment32Logs
  apply compileHmrSourceWalk_cons (P := s2ObservedPlan32)
  · exact s2Observed_step32_checked
  · rw [s2Observed_boundary32_arena,s2Observed_boundary32_bank,s2Observed_boundary32_record]
    apply compileHmrSourceWalk_cons (P := s2ObservedPlan33)
    · exact s2Observed_step33_checked
    · rw [s2Observed_boundary33_arena,s2Observed_boundary33_bank,s2Observed_boundary33_record]
      apply compileHmrSourceWalk_cons (P := s2ObservedPlan34)
      · exact s2Observed_step34_checked
      · rw [s2Observed_boundary34_arena,s2Observed_boundary34_bank,s2Observed_boundary34_record]
        apply compileHmrSourceWalk_cons (P := s2ObservedPlan35)
        · exact s2Observed_step35_checked
        · rw [s2Observed_boundary35_arena,s2Observed_boundary35_bank,s2Observed_boundary35_record]
          apply compileHmrSourceWalk_cons (P := s2ObservedPlan36)
          · exact s2Observed_step36_checked
          · rw [s2Observed_boundary36_arena,s2Observed_boundary36_bank,s2Observed_boundary36_record]
            apply compileHmrSourceWalk_cons (P := s2ObservedPlan37)
            · exact s2Observed_step37_checked
            · rw [s2Observed_boundary37_arena,s2Observed_boundary37_bank,s2Observed_boundary37_record]
              apply compileHmrSourceWalk_cons (P := s2ObservedPlan38)
              · exact s2Observed_step38_checked
              · rw [s2Observed_boundary38_arena,s2Observed_boundary38_bank,s2Observed_boundary38_record]
                apply compileHmrSourceWalk_cons (P := s2ObservedPlan39)
                · exact s2Observed_step39_checked
                · rw [s2Observed_boundary39_arena,s2Observed_boundary39_bank,s2Observed_boundary39_record]
                  apply compileHmrSourceWalk_cons (P := s2ObservedPlan40)
                  · exact s2Observed_step40_checked
                  · rw [s2Observed_boundary40_arena,s2Observed_boundary40_bank,s2Observed_boundary40_record]
                    apply compileHmrSourceWalk_cons (P := s2ObservedPlan41)
                    · exact s2Observed_step41_checked
                    · rw [s2Observed_boundary41_arena,s2Observed_boundary41_bank,s2Observed_boundary41_record]
                      apply compileHmrSourceWalk_cons (P := s2ObservedPlan42)
                      · exact s2Observed_step42_checked
                      · rw [s2Observed_boundary42_arena,s2Observed_boundary42_bank,s2Observed_boundary42_record]
                        apply compileHmrSourceWalk_cons (P := s2ObservedPlan43)
                        · exact s2Observed_step43_checked
                        · rw [s2Observed_boundary43_arena,s2Observed_boundary43_bank,s2Observed_boundary43_record]
                          apply compileHmrSourceWalk_cons (P := s2ObservedPlan44)
                          · exact s2Observed_step44_checked
                          · rw [s2Observed_boundary44_arena,s2Observed_boundary44_bank,s2Observed_boundary44_record]
                            apply compileHmrSourceWalk_cons (P := s2ObservedPlan45)
                            · exact s2Observed_step45_checked
                            · rw [s2Observed_boundary45_arena,s2Observed_boundary45_bank,s2Observed_boundary45_record]
                              apply compileHmrSourceWalk_cons (P := s2ObservedPlan46)
                              · exact s2Observed_step46_checked
                              · rw [s2Observed_boundary46_arena,s2Observed_boundary46_bank,s2Observed_boundary46_record]
                                apply compileHmrSourceWalk_cons (P := s2ObservedPlan47)
                                · exact s2Observed_step47_checked
                                · rfl
theorem s2ObservedSegment32_outputArena : s2ObservedSegment32Plan.outputArena=s2ObservedPlan47.outputArena := rfl
theorem s2ObservedSegment32_bank : s2ObservedSegment32Plan.bank=s2ObservedPlan47.bank := rfl
theorem s2ObservedSegment32_record : s2ObservedSegment32Plan.record=s2ObservedPlan47.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] := rfl
theorem s2ObservedSegment32_metadata : s2ObservedSegment32Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
