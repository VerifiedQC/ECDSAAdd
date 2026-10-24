import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s6ObservedSpec32 : HmrSourceWalkStepLog := s6ObservedLogs32[0]
def s6ObservedPlan32 : HmrSourceStepPlan := .early s6Step32CompletePlan
def s6ObservedSpec33 : HmrSourceWalkStepLog := s6ObservedLogs32[1]
def s6ObservedPlan33 : HmrSourceStepPlan := .early s6Step33CompletePlan
def s6ObservedSpec34 : HmrSourceWalkStepLog := s6ObservedLogs32[2]
def s6ObservedPlan34 : HmrSourceStepPlan := .early s6Step34CompletePlan
def s6ObservedSpec35 : HmrSourceWalkStepLog := s6ObservedLogs32[3]
def s6ObservedPlan35 : HmrSourceStepPlan := .early s6Step35CompletePlan
def s6ObservedSpec36 : HmrSourceWalkStepLog := s6ObservedLogs32[4]
def s6ObservedPlan36 : HmrSourceStepPlan := .early s6Step36CompletePlan
def s6ObservedSpec37 : HmrSourceWalkStepLog := s6ObservedLogs32[5]
def s6ObservedPlan37 : HmrSourceStepPlan := .early s6Step37CompletePlan
def s6ObservedSpec38 : HmrSourceWalkStepLog := s6ObservedLogs32[6]
def s6ObservedPlan38 : HmrSourceStepPlan := .early s6Step38CompletePlan
def s6ObservedSpec39 : HmrSourceWalkStepLog := s6ObservedLogs32[7]
def s6ObservedPlan39 : HmrSourceStepPlan := .early s6Step39CompletePlan
def s6ObservedSpec40 : HmrSourceWalkStepLog := s6ObservedLogs32[8]
def s6ObservedPlan40 : HmrSourceStepPlan := .early s6Step40CompletePlan
def s6ObservedSpec41 : HmrSourceWalkStepLog := s6ObservedLogs32[9]
def s6ObservedPlan41 : HmrSourceStepPlan := .early s6Step41CompletePlan
def s6ObservedSpec42 : HmrSourceWalkStepLog := s6ObservedLogs32[10]
def s6ObservedPlan42 : HmrSourceStepPlan := .early s6Step42CompletePlan
def s6ObservedSpec43 : HmrSourceWalkStepLog := s6ObservedLogs32[11]
def s6ObservedPlan43 : HmrSourceStepPlan := .early s6Step43CompletePlan
def s6ObservedSpec44 : HmrSourceWalkStepLog := s6ObservedLogs32[12]
def s6ObservedPlan44 : HmrSourceStepPlan := .early s6Step44CompletePlan
def s6ObservedSpec45 : HmrSourceWalkStepLog := s6ObservedLogs32[13]
def s6ObservedPlan45 : HmrSourceStepPlan := .early s6Step45CompletePlan
def s6ObservedSpec46 : HmrSourceWalkStepLog := s6ObservedLogs32[14]
def s6ObservedPlan46 : HmrSourceStepPlan := .early s6Step46CompletePlan
def s6ObservedSpec47 : HmrSourceWalkStepLog := s6ObservedLogs32[15]
def s6ObservedPlan47 : HmrSourceStepPlan := .early s6Step47CompletePlan
theorem s6Observed_step32_checked :
    compileHmrSourceStepLog s6Step32EntryFBefore s6Step32FrontBank
      s6ObservedSpec32.fgWidth s6ObservedSpec32.vWidth s6ObservedSpec32.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835]
      6 498 32 s6ObservedSpec32.need none s6ObservedSpec32.log=some s6ObservedPlan32 := by
  have spec : s6ObservedSpec32 = ⟨253,29,⟨252,252,29,28⟩,13,.early s6Step32CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 32<498)]
  simp only [s6ObservedCounter]
  rw [s6Step32Complete_explicit_checked]
  rfl
theorem s6Observed_step33_checked :
    compileHmrSourceStepLog s6Step33EntryFBefore s6Step33FrontBank
      s6ObservedSpec33.fgWidth s6ObservedSpec33.vWidth s6ObservedSpec33.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835]
      6 498 33 s6ObservedSpec33.need none s6ObservedSpec33.log=some s6ObservedPlan33 := by
  have spec : s6ObservedSpec33 = ⟨252,29,⟨251,251,30,29⟩,14,.early s6Step33CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 33<498)]
  simp only [s6ObservedCounter]
  rw [s6Step33Complete_explicit_checked]
  rfl
theorem s6Observed_step34_checked :
    compileHmrSourceStepLog s6Step34EntryFBefore s6Step34FrontBank
      s6ObservedSpec34.fgWidth s6ObservedSpec34.vWidth s6ObservedSpec34.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851]
      6 498 34 s6ObservedSpec34.need none s6ObservedSpec34.log=some s6ObservedPlan34 := by
  have spec : s6ObservedSpec34 = ⟨251,30,⟨251,250,30,30⟩,14,.early s6Step34CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 34<498)]
  simp only [s6ObservedCounter]
  rw [s6Step34Complete_explicit_checked]
  rfl
theorem s6Observed_step35_checked :
    compileHmrSourceStepLog s6Step35EntryFBefore s6Step35FrontBank
      s6ObservedSpec35.fgWidth s6ObservedSpec35.vWidth s6ObservedSpec35.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851]
      6 498 35 s6ObservedSpec35.need none s6ObservedSpec35.log=some s6ObservedPlan35 := by
  have spec : s6ObservedSpec35 = ⟨251,30,⟨250,251,31,30⟩,15,.early s6Step35CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 35<498)]
  simp only [s6ObservedCounter]
  rw [s6Step35Complete_explicit_checked]
  rfl
theorem s6Observed_step36_checked :
    compileHmrSourceStepLog s6Step36EntryFBefore s6Step36FrontBank
      s6ObservedSpec36.fgWidth s6ObservedSpec36.vWidth s6ObservedSpec36.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878]
      6 498 36 s6ObservedSpec36.need none s6ObservedSpec36.log=some s6ObservedPlan36 := by
  have spec : s6ObservedSpec36 = ⟨251,31,⟨250,250,31,31⟩,15,.early s6Step36CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 36<498)]
  simp only [s6ObservedCounter]
  rw [s6Step36Complete_explicit_checked]
  rfl
theorem s6Observed_step37_checked :
    compileHmrSourceStepLog s6Step37EntryFBefore s6Step37FrontBank
      s6ObservedSpec37.fgWidth s6ObservedSpec37.vWidth s6ObservedSpec37.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878]
      6 498 37 s6ObservedSpec37.need none s6ObservedSpec37.log=some s6ObservedPlan37 := by
  have spec : s6ObservedSpec37 = ⟨250,31,⟨250,249,32,32⟩,16,.early s6Step37CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 37<498)]
  simp only [s6ObservedCounter]
  rw [s6Step37Complete_explicit_checked]
  rfl
theorem s6Observed_step38_checked :
    compileHmrSourceStepLog s6Step38EntryFBefore s6Step38FrontBank
      s6ObservedSpec38.fgWidth s6ObservedSpec38.vWidth s6ObservedSpec38.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781]
      6 498 38 s6ObservedSpec38.need none s6ObservedSpec38.log=some s6ObservedPlan38 := by
  have spec : s6ObservedSpec38 = ⟨250,32,⟨249,249,32,32⟩,16,.early s6Step38CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 38<498)]
  simp only [s6ObservedCounter]
  rw [s6Step38Complete_explicit_checked]
  rfl
theorem s6Observed_step39_checked :
    compileHmrSourceStepLog s6Step39EntryFBefore s6Step39FrontBank
      s6ObservedSpec39.fgWidth s6ObservedSpec39.vWidth s6ObservedSpec39.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781]
      6 498 39 s6ObservedSpec39.need none s6ObservedSpec39.log=some s6ObservedPlan39 := by
  have spec : s6ObservedSpec39 = ⟨249,32,⟨249,248,33,32⟩,17,.early s6Step39CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 39<498)]
  simp only [s6ObservedCounter]
  rw [s6Step39Complete_explicit_checked]
  rfl
theorem s6Observed_step40_checked :
    compileHmrSourceStepLog s6Step40EntryFBefore s6Step40FrontBank
      s6ObservedSpec40.fgWidth s6ObservedSpec40.vWidth s6ObservedSpec40.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785]
      6 498 40 s6ObservedSpec40.need none s6ObservedSpec40.log=some s6ObservedPlan40 := by
  have spec : s6ObservedSpec40 = ⟨249,33,⟨248,248,34,33⟩,17,.early s6Step40CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 40<498)]
  simp only [s6ObservedCounter]
  rw [s6Step40Complete_explicit_checked]
  rfl
theorem s6Observed_step41_checked :
    compileHmrSourceStepLog s6Step41EntryFBefore s6Step41FrontBank
      s6ObservedSpec41.fgWidth s6ObservedSpec41.vWidth s6ObservedSpec41.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785]
      6 498 41 s6ObservedSpec41.need none s6ObservedSpec41.log=some s6ObservedPlan41 := by
  have spec : s6ObservedSpec41 = ⟨248,34,⟨248,248,34,33⟩,18,.early s6Step41CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 41<498)]
  simp only [s6ObservedCounter]
  rw [s6Step41Complete_explicit_checked]
  rfl
theorem s6Observed_step42_checked :
    compileHmrSourceStepLog s6Step42EntryFBefore s6Step42FrontBank
      s6ObservedSpec42.fgWidth s6ObservedSpec42.vWidth s6ObservedSpec42.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866]
      6 498 42 s6ObservedSpec42.need none s6ObservedSpec42.log=some s6ObservedPlan42 := by
  have spec : s6ObservedSpec42 = ⟨248,34,⟨247,247,34,35⟩,18,.early s6Step42CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 42<498)]
  simp only [s6ObservedCounter]
  rw [s6Step42Complete_explicit_checked]
  rfl
theorem s6Observed_step43_checked :
    compileHmrSourceStepLog s6Step43EntryFBefore s6Step43FrontBank
      s6ObservedSpec43.fgWidth s6ObservedSpec43.vWidth s6ObservedSpec43.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866]
      6 498 43 s6ObservedSpec43.need none s6ObservedSpec43.log=some s6ObservedPlan43 := by
  have spec : s6ObservedSpec43 = ⟨247,35,⟨246,246,34,35⟩,19,.early s6Step43CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 43<498)]
  simp only [s6ObservedCounter]
  rw [s6Step43Complete_explicit_checked]
  rfl
theorem s6Observed_step44_checked :
    compileHmrSourceStepLog s6Step44EntryFBefore s6Step44FrontBank
      s6ObservedSpec44.fgWidth s6ObservedSpec44.vWidth s6ObservedSpec44.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861]
      6 498 44 s6ObservedSpec44.need none s6ObservedSpec44.log=some s6ObservedPlan44 := by
  have spec : s6ObservedSpec44 = ⟨246,35,⟨246,245,35,35⟩,19,.early s6Step44CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 44<498)]
  simp only [s6ObservedCounter]
  rw [s6Step44Complete_explicit_checked]
  rfl
theorem s6Observed_step45_checked :
    compileHmrSourceStepLog s6Step45EntryFBefore s6Step45FrontBank
      s6ObservedSpec45.fgWidth s6ObservedSpec45.vWidth s6ObservedSpec45.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861]
      6 498 45 s6ObservedSpec45.need none s6ObservedSpec45.log=some s6ObservedPlan45 := by
  have spec : s6ObservedSpec45 = ⟨246,35,⟨245,245,36,35⟩,20,.early s6Step45CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 45<498)]
  simp only [s6ObservedCounter]
  rw [s6Step45Complete_explicit_checked]
  rfl
theorem s6Observed_step46_checked :
    compileHmrSourceStepLog s6Step46EntryFBefore s6Step46FrontBank
      s6ObservedSpec46.fgWidth s6ObservedSpec46.vWidth s6ObservedSpec46.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]
      6 498 46 s6ObservedSpec46.need none s6ObservedSpec46.log=some s6ObservedPlan46 := by
  have spec : s6ObservedSpec46 = ⟨245,36,⟨244,244,36,36⟩,20,.early s6Step46CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 46<498)]
  simp only [s6ObservedCounter]
  rw [s6Step46Complete_explicit_checked]
  rfl
theorem s6Observed_step47_checked :
    compileHmrSourceStepLog s6Step47EntryFBefore s6Step47FrontBank
      s6ObservedSpec47.fgWidth s6ObservedSpec47.vWidth s6ObservedSpec47.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]
      6 498 47 s6ObservedSpec47.need none s6ObservedSpec47.log=some s6ObservedPlan47 := by
  have spec : s6ObservedSpec47 = ⟨244,36,⟨244,244,37,37⟩,21,.early s6Step47CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 47<498)]
  simp only [s6ObservedCounter]
  rw [s6Step47Complete_explicit_checked]
  rfl
theorem s6Observed_boundary32_arena : s6ObservedPlan32.outputArena=s6Step33EntryFBefore := rfl
theorem s6Observed_boundary32_bank : s6ObservedPlan32.bank=s6Step33FrontBank := by decide +kernel
theorem s6Observed_boundary32_record : s6ObservedPlan32.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] := rfl
theorem s6Observed_boundary33_arena : s6ObservedPlan33.outputArena=s6Step34EntryFBefore := rfl
theorem s6Observed_boundary33_bank : s6ObservedPlan33.bank=s6Step34FrontBank := by decide +kernel
theorem s6Observed_boundary33_record : s6ObservedPlan33.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] := rfl
theorem s6Observed_boundary34_arena : s6ObservedPlan34.outputArena=s6Step35EntryFBefore := rfl
theorem s6Observed_boundary34_bank : s6ObservedPlan34.bank=s6Step35FrontBank := by decide +kernel
theorem s6Observed_boundary34_record : s6ObservedPlan34.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851] := rfl
theorem s6Observed_boundary35_arena : s6ObservedPlan35.outputArena=s6Step36EntryFBefore := rfl
theorem s6Observed_boundary35_bank : s6ObservedPlan35.bank=s6Step36FrontBank := by decide +kernel
theorem s6Observed_boundary35_record : s6ObservedPlan35.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] := rfl
theorem s6Observed_boundary36_arena : s6ObservedPlan36.outputArena=s6Step37EntryFBefore := rfl
theorem s6Observed_boundary36_bank : s6ObservedPlan36.bank=s6Step37FrontBank := by decide +kernel
theorem s6Observed_boundary36_record : s6ObservedPlan36.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878] := rfl
theorem s6Observed_boundary37_arena : s6ObservedPlan37.outputArena=s6Step38EntryFBefore := rfl
theorem s6Observed_boundary37_bank : s6ObservedPlan37.bank=s6Step38FrontBank := by decide +kernel
theorem s6Observed_boundary37_record : s6ObservedPlan37.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] := rfl
theorem s6Observed_boundary38_arena : s6ObservedPlan38.outputArena=s6Step39EntryFBefore := rfl
theorem s6Observed_boundary38_bank : s6ObservedPlan38.bank=s6Step39FrontBank := by decide +kernel
theorem s6Observed_boundary38_record : s6ObservedPlan38.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781] := rfl
theorem s6Observed_boundary39_arena : s6ObservedPlan39.outputArena=s6Step40EntryFBefore := rfl
theorem s6Observed_boundary39_bank : s6ObservedPlan39.bank=s6Step40FrontBank := by decide +kernel
theorem s6Observed_boundary39_record : s6ObservedPlan39.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] := rfl
theorem s6Observed_boundary40_arena : s6ObservedPlan40.outputArena=s6Step41EntryFBefore := rfl
theorem s6Observed_boundary40_bank : s6ObservedPlan40.bank=s6Step41FrontBank := by decide +kernel
theorem s6Observed_boundary40_record : s6ObservedPlan40.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785] := rfl
theorem s6Observed_boundary41_arena : s6ObservedPlan41.outputArena=s6Step42EntryFBefore := rfl
theorem s6Observed_boundary41_bank : s6ObservedPlan41.bank=s6Step42FrontBank := by decide +kernel
theorem s6Observed_boundary41_record : s6ObservedPlan41.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] := rfl
theorem s6Observed_boundary42_arena : s6ObservedPlan42.outputArena=s6Step43EntryFBefore := rfl
theorem s6Observed_boundary42_bank : s6ObservedPlan42.bank=s6Step43FrontBank := by decide +kernel
theorem s6Observed_boundary42_record : s6ObservedPlan42.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866] := rfl
theorem s6Observed_boundary43_arena : s6ObservedPlan43.outputArena=s6Step44EntryFBefore := rfl
theorem s6Observed_boundary43_bank : s6ObservedPlan43.bank=s6Step44FrontBank := by decide +kernel
theorem s6Observed_boundary43_record : s6ObservedPlan43.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] := rfl
theorem s6Observed_boundary44_arena : s6ObservedPlan44.outputArena=s6Step45EntryFBefore := rfl
theorem s6Observed_boundary44_bank : s6ObservedPlan44.bank=s6Step45FrontBank := by decide +kernel
theorem s6Observed_boundary44_record : s6ObservedPlan44.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861] := rfl
theorem s6Observed_boundary45_arena : s6ObservedPlan45.outputArena=s6Step46EntryFBefore := rfl
theorem s6Observed_boundary45_bank : s6ObservedPlan45.bank=s6Step46FrontBank := by decide +kernel
theorem s6Observed_boundary45_record : s6ObservedPlan45.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] := rfl
theorem s6Observed_boundary46_arena : s6ObservedPlan46.outputArena=s6Step47EntryFBefore := rfl
theorem s6Observed_boundary46_bank : s6ObservedPlan46.bank=s6Step47FrontBank := by decide +kernel
theorem s6Observed_boundary46_record : s6ObservedPlan46.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] := rfl
def s6ObservedSegment32Logs : List HmrSourceWalkStepLog := [s6ObservedSpec32,s6ObservedSpec33,s6ObservedSpec34,s6ObservedSpec35,s6ObservedSpec36,s6ObservedSpec37,s6ObservedSpec38,s6ObservedSpec39,s6ObservedSpec40,s6ObservedSpec41,s6ObservedSpec42,s6ObservedSpec43,s6ObservedSpec44,s6ObservedSpec45,s6ObservedSpec46,s6ObservedSpec47]
theorem s6ObservedSegment32_length : s6ObservedSegment32Logs.length=16 := rfl
def s6ObservedSegment32Plan : HmrSourceWalkPlan := (.step s6ObservedPlan32 (.step s6ObservedPlan33 (.step s6ObservedPlan34 (.step s6ObservedPlan35 (.step s6ObservedPlan36 (.step s6ObservedPlan37 (.step s6ObservedPlan38 (.step s6ObservedPlan39 (.step s6ObservedPlan40 (.step s6ObservedPlan41 (.step s6ObservedPlan42 (.step s6ObservedPlan43 (.step s6ObservedPlan44 (.step s6ObservedPlan45 (.step s6ObservedPlan46 (.step s6ObservedPlan47 (.done s6ObservedPlan47.outputArena s6ObservedPlan47.bank (s6ObservedPlan47.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]) none)))))))))))))))))
theorem s6ObservedSegment32_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6Step32EntryFBefore s6Step32FrontBank [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] 32 s6ObservedSegment32Logs=some s6ObservedSegment32Plan := by
  unfold s6ObservedSegment32Logs
  apply compileHmrSourceWalk_cons (P := s6ObservedPlan32)
  · exact s6Observed_step32_checked
  · rw [s6Observed_boundary32_arena,s6Observed_boundary32_bank,s6Observed_boundary32_record]
    apply compileHmrSourceWalk_cons (P := s6ObservedPlan33)
    · exact s6Observed_step33_checked
    · rw [s6Observed_boundary33_arena,s6Observed_boundary33_bank,s6Observed_boundary33_record]
      apply compileHmrSourceWalk_cons (P := s6ObservedPlan34)
      · exact s6Observed_step34_checked
      · rw [s6Observed_boundary34_arena,s6Observed_boundary34_bank,s6Observed_boundary34_record]
        apply compileHmrSourceWalk_cons (P := s6ObservedPlan35)
        · exact s6Observed_step35_checked
        · rw [s6Observed_boundary35_arena,s6Observed_boundary35_bank,s6Observed_boundary35_record]
          apply compileHmrSourceWalk_cons (P := s6ObservedPlan36)
          · exact s6Observed_step36_checked
          · rw [s6Observed_boundary36_arena,s6Observed_boundary36_bank,s6Observed_boundary36_record]
            apply compileHmrSourceWalk_cons (P := s6ObservedPlan37)
            · exact s6Observed_step37_checked
            · rw [s6Observed_boundary37_arena,s6Observed_boundary37_bank,s6Observed_boundary37_record]
              apply compileHmrSourceWalk_cons (P := s6ObservedPlan38)
              · exact s6Observed_step38_checked
              · rw [s6Observed_boundary38_arena,s6Observed_boundary38_bank,s6Observed_boundary38_record]
                apply compileHmrSourceWalk_cons (P := s6ObservedPlan39)
                · exact s6Observed_step39_checked
                · rw [s6Observed_boundary39_arena,s6Observed_boundary39_bank,s6Observed_boundary39_record]
                  apply compileHmrSourceWalk_cons (P := s6ObservedPlan40)
                  · exact s6Observed_step40_checked
                  · rw [s6Observed_boundary40_arena,s6Observed_boundary40_bank,s6Observed_boundary40_record]
                    apply compileHmrSourceWalk_cons (P := s6ObservedPlan41)
                    · exact s6Observed_step41_checked
                    · rw [s6Observed_boundary41_arena,s6Observed_boundary41_bank,s6Observed_boundary41_record]
                      apply compileHmrSourceWalk_cons (P := s6ObservedPlan42)
                      · exact s6Observed_step42_checked
                      · rw [s6Observed_boundary42_arena,s6Observed_boundary42_bank,s6Observed_boundary42_record]
                        apply compileHmrSourceWalk_cons (P := s6ObservedPlan43)
                        · exact s6Observed_step43_checked
                        · rw [s6Observed_boundary43_arena,s6Observed_boundary43_bank,s6Observed_boundary43_record]
                          apply compileHmrSourceWalk_cons (P := s6ObservedPlan44)
                          · exact s6Observed_step44_checked
                          · rw [s6Observed_boundary44_arena,s6Observed_boundary44_bank,s6Observed_boundary44_record]
                            apply compileHmrSourceWalk_cons (P := s6ObservedPlan45)
                            · exact s6Observed_step45_checked
                            · rw [s6Observed_boundary45_arena,s6Observed_boundary45_bank,s6Observed_boundary45_record]
                              apply compileHmrSourceWalk_cons (P := s6ObservedPlan46)
                              · exact s6Observed_step46_checked
                              · rw [s6Observed_boundary46_arena,s6Observed_boundary46_bank,s6Observed_boundary46_record]
                                apply compileHmrSourceWalk_cons (P := s6ObservedPlan47)
                                · exact s6Observed_step47_checked
                                · rfl
theorem s6ObservedSegment32_outputArena : s6ObservedSegment32Plan.outputArena=s6ObservedPlan47.outputArena := rfl
theorem s6ObservedSegment32_bank : s6ObservedSegment32Plan.bank=s6ObservedPlan47.bank := rfl
theorem s6ObservedSegment32_record : s6ObservedSegment32Plan.record=s6ObservedPlan47.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] := rfl
theorem s6ObservedSegment32_metadata : s6ObservedSegment32Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
