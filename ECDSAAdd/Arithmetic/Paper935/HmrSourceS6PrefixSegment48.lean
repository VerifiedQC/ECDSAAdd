import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s6ObservedSpec48 : HmrSourceWalkStepLog := s6ObservedLogs48[0]
def s6ObservedPlan48 : HmrSourceStepPlan := .early s6Step48CompletePlan
def s6ObservedSpec49 : HmrSourceWalkStepLog := s6ObservedLogs48[1]
def s6ObservedPlan49 : HmrSourceStepPlan := .early s6Step49CompletePlan
def s6ObservedSpec50 : HmrSourceWalkStepLog := s6ObservedLogs48[2]
def s6ObservedPlan50 : HmrSourceStepPlan := .early s6Step50CompletePlan
def s6ObservedSpec51 : HmrSourceWalkStepLog := s6ObservedLogs48[3]
def s6ObservedPlan51 : HmrSourceStepPlan := .early s6Step51CompletePlan
def s6ObservedSpec52 : HmrSourceWalkStepLog := s6ObservedLogs48[4]
def s6ObservedPlan52 : HmrSourceStepPlan := .early s6Step52CompletePlan
def s6ObservedSpec53 : HmrSourceWalkStepLog := s6ObservedLogs48[5]
def s6ObservedPlan53 : HmrSourceStepPlan := .early s6Step53CompletePlan
def s6ObservedSpec54 : HmrSourceWalkStepLog := s6ObservedLogs48[6]
def s6ObservedPlan54 : HmrSourceStepPlan := .early s6Step54CompletePlan
def s6ObservedSpec55 : HmrSourceWalkStepLog := s6ObservedLogs48[7]
def s6ObservedPlan55 : HmrSourceStepPlan := .early s6Step55CompletePlan
def s6ObservedSpec56 : HmrSourceWalkStepLog := s6ObservedLogs48[8]
def s6ObservedPlan56 : HmrSourceStepPlan := .early s6Step56CompletePlan
def s6ObservedSpec57 : HmrSourceWalkStepLog := s6ObservedLogs48[9]
def s6ObservedPlan57 : HmrSourceStepPlan := .early s6Step57CompletePlan
def s6ObservedSpec58 : HmrSourceWalkStepLog := s6ObservedLogs48[10]
def s6ObservedPlan58 : HmrSourceStepPlan := .early s6Step58CompletePlan
def s6ObservedSpec59 : HmrSourceWalkStepLog := s6ObservedLogs48[11]
def s6ObservedPlan59 : HmrSourceStepPlan := .early s6Step59CompletePlan
def s6ObservedSpec60 : HmrSourceWalkStepLog := s6ObservedLogs48[12]
def s6ObservedPlan60 : HmrSourceStepPlan := .early s6Step60CompletePlan
def s6ObservedSpec61 : HmrSourceWalkStepLog := s6ObservedLogs48[13]
def s6ObservedPlan61 : HmrSourceStepPlan := .early s6Step61CompletePlan
def s6ObservedSpec62 : HmrSourceWalkStepLog := s6ObservedLogs48[14]
def s6ObservedPlan62 : HmrSourceStepPlan := .early s6Step62CompletePlan
def s6ObservedSpec63 : HmrSourceWalkStepLog := s6ObservedLogs48[15]
def s6ObservedPlan63 : HmrSourceStepPlan := .early s6Step63CompletePlan
theorem s6Observed_step48_checked :
    compileHmrSourceStepLog s6Step48EntryFBefore s6Step48FrontBank
      s6ObservedSpec48.fgWidth s6ObservedSpec48.vWidth s6ObservedSpec48.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829]
      6 498 48 s6ObservedSpec48.need none s6ObservedSpec48.log=some s6ObservedPlan48 := by
  have spec : s6ObservedSpec48 = ⟨244,37,⟨244,243,37,37⟩,21,.early s6Step48CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 48<498)]
  simp only [s6ObservedCounter]
  rw [s6Step48Complete_explicit_checked]
  rfl
theorem s6Observed_step49_checked :
    compileHmrSourceStepLog s6Step49EntryFBefore s6Step49FrontBank
      s6ObservedSpec49.fgWidth s6ObservedSpec49.vWidth s6ObservedSpec49.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829]
      6 498 49 s6ObservedSpec49.need none s6ObservedSpec49.log=some s6ObservedPlan49 := by
  have spec : s6ObservedSpec49 = ⟨244,37,⟨243,243,38,37⟩,22,.early s6Step49CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 49<498)]
  simp only [s6ObservedCounter]
  rw [s6Step49Complete_explicit_checked]
  rfl
theorem s6Observed_step50_checked :
    compileHmrSourceStepLog s6Step50EntryFBefore s6Step50FrontBank
      s6ObservedSpec50.fgWidth s6ObservedSpec50.vWidth s6ObservedSpec50.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837]
      6 498 50 s6ObservedSpec50.need none s6ObservedSpec50.log=some s6ObservedPlan50 := by
  have spec : s6ObservedSpec50 = ⟨243,38,⟨243,242,38,37⟩,22,.early s6Step50CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 50<498)]
  simp only [s6ObservedCounter]
  rw [s6Step50Complete_explicit_checked]
  rfl
theorem s6Observed_step51_checked :
    compileHmrSourceStepLog s6Step51EntryFBefore s6Step51FrontBank
      s6ObservedSpec51.fgWidth s6ObservedSpec51.vWidth s6ObservedSpec51.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837]
      6 498 51 s6ObservedSpec51.need none s6ObservedSpec51.log=some s6ObservedPlan51 := by
  have spec : s6ObservedSpec51 = ⟨243,38,⟨242,242,39,38⟩,23,.early s6Step51CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 51<498)]
  simp only [s6ObservedCounter]
  rw [s6Step51Complete_explicit_checked]
  rfl
theorem s6Observed_step52_checked :
    compileHmrSourceStepLog s6Step52EntryFBefore s6Step52FrontBank
      s6ObservedSpec52.fgWidth s6ObservedSpec52.vWidth s6ObservedSpec52.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788]
      6 498 52 s6ObservedSpec52.need none s6ObservedSpec52.log=some s6ObservedPlan52 := by
  have spec : s6ObservedSpec52 = ⟨242,39,⟨241,241,39,38⟩,23,.early s6Step52CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 52<498)]
  simp only [s6ObservedCounter]
  rw [s6Step52Complete_explicit_checked]
  rfl
theorem s6Observed_step53_checked :
    compileHmrSourceStepLog s6Step53EntryFBefore s6Step53FrontBank
      s6ObservedSpec53.fgWidth s6ObservedSpec53.vWidth s6ObservedSpec53.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788]
      6 498 53 s6ObservedSpec53.need none s6ObservedSpec53.log=some s6ObservedPlan53 := by
  have spec : s6ObservedSpec53 = ⟨241,39,⟨241,241,40,39⟩,24,.early s6Step53CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 53<498)]
  simp only [s6ObservedCounter]
  rw [s6Step53Complete_explicit_checked]
  rfl
theorem s6Observed_step54_checked :
    compileHmrSourceStepLog s6Step54EntryFBefore s6Step54FrontBank
      s6ObservedSpec54.fgWidth s6ObservedSpec54.vWidth s6ObservedSpec54.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889]
      6 498 54 s6ObservedSpec54.need none s6ObservedSpec54.log=some s6ObservedPlan54 := by
  have spec : s6ObservedSpec54 = ⟨241,40,⟨241,240,41,40⟩,24,.early s6Step54CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 54<498)]
  simp only [s6ObservedCounter]
  rw [s6Step54Complete_explicit_checked]
  rfl
theorem s6Observed_step55_checked :
    compileHmrSourceStepLog s6Step55EntryFBefore s6Step55FrontBank
      s6ObservedSpec55.fgWidth s6ObservedSpec55.vWidth s6ObservedSpec55.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889]
      6 498 55 s6ObservedSpec55.need none s6ObservedSpec55.log=some s6ObservedPlan55 := by
  have spec : s6ObservedSpec55 = ⟨241,41,⟨240,240,40,41⟩,25,.early s6Step55CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 55<498)]
  simp only [s6ObservedCounter]
  rw [s6Step55Complete_explicit_checked]
  rfl
theorem s6Observed_step56_checked :
    compileHmrSourceStepLog s6Step56EntryFBefore s6Step56FrontBank
      s6ObservedSpec56.fgWidth s6ObservedSpec56.vWidth s6ObservedSpec56.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 56 s6ObservedSpec56.need none s6ObservedSpec56.log=some s6ObservedPlan56 := by
  have spec : s6ObservedSpec56 = ⟨240,41,⟨240,239,41,41⟩,25,.early s6Step56CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 56<498)]
  simp only [s6ObservedCounter]
  rw [s6Step56Complete_explicit_checked]
  rfl
theorem s6Observed_step57_checked :
    compileHmrSourceStepLog s6Step57EntryFBefore s6Step57FrontBank
      s6ObservedSpec57.fgWidth s6ObservedSpec57.vWidth s6ObservedSpec57.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 57 s6ObservedSpec57.need none s6ObservedSpec57.log=some s6ObservedPlan57 := by
  have spec : s6ObservedSpec57 = ⟨240,41,⟨239,238,41,41⟩,25,.early s6Step57CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 57<498)]
  simp only [s6ObservedCounter]
  rw [s6Step57Complete_explicit_checked]
  rfl
theorem s6Observed_step58_checked :
    compileHmrSourceStepLog s6Step58EntryFBefore s6Step58FrontBank
      s6ObservedSpec58.fgWidth s6ObservedSpec58.vWidth s6ObservedSpec58.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 58 s6ObservedSpec58.need none s6ObservedSpec58.log=some s6ObservedPlan58 := by
  have spec : s6ObservedSpec58 = ⟨239,41,⟨239,238,42,41⟩,25,.early s6Step58CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 58<498)]
  simp only [s6ObservedCounter]
  rw [s6Step58Complete_explicit_checked]
  rfl
theorem s6Observed_step59_checked :
    compileHmrSourceStepLog s6Step59EntryFBefore s6Step59FrontBank
      s6ObservedSpec59.fgWidth s6ObservedSpec59.vWidth s6ObservedSpec59.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 59 s6ObservedSpec59.need none s6ObservedSpec59.log=some s6ObservedPlan59 := by
  have spec : s6ObservedSpec59 = ⟨239,42,⟨239,238,43,42⟩,25,.early s6Step59CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 59<498)]
  simp only [s6ObservedCounter]
  rw [s6Step59Complete_explicit_checked]
  rfl
theorem s6Observed_step60_checked :
    compileHmrSourceStepLog s6Step60EntryFBefore s6Step60FrontBank
      s6ObservedSpec60.fgWidth s6ObservedSpec60.vWidth s6ObservedSpec60.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 60 s6ObservedSpec60.need none s6ObservedSpec60.log=some s6ObservedPlan60 := by
  have spec : s6ObservedSpec60 = ⟨239,43,⟨239,237,44,43⟩,25,.early s6Step60CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 60<498)]
  simp only [s6ObservedCounter]
  rw [s6Step60Complete_explicit_checked]
  rfl
theorem s6Observed_step61_checked :
    compileHmrSourceStepLog s6Step61EntryFBefore s6Step61FrontBank
      s6ObservedSpec61.fgWidth s6ObservedSpec61.vWidth s6ObservedSpec61.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 61 s6ObservedSpec61.need none s6ObservedSpec61.log=some s6ObservedPlan61 := by
  have spec : s6ObservedSpec61 = ⟨239,44,⟨238,237,44,43⟩,25,.early s6Step61CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 61<498)]
  simp only [s6ObservedCounter]
  rw [s6Step61Complete_explicit_checked]
  rfl
theorem s6Observed_step62_checked :
    compileHmrSourceStepLog s6Step62EntryFBefore s6Step62FrontBank
      s6ObservedSpec62.fgWidth s6ObservedSpec62.vWidth s6ObservedSpec62.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]
      6 498 62 s6ObservedSpec62.need none s6ObservedSpec62.log=some s6ObservedPlan62 := by
  have spec : s6ObservedSpec62 = ⟨238,44,⟨237,237,45,44⟩,26,.early s6Step62CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 62<498)]
  simp only [s6ObservedCounter]
  rw [s6Step62Complete_explicit_checked]
  rfl
theorem s6Observed_step63_checked :
    compileHmrSourceStepLog s6Step63EntryFBefore s6Step63FrontBank
      s6ObservedSpec63.fgWidth s6ObservedSpec63.vWidth s6ObservedSpec63.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913]
      6 498 63 s6ObservedSpec63.need none s6ObservedSpec63.log=some s6ObservedPlan63 := by
  have spec : s6ObservedSpec63 = ⟨237,45,⟨237,237,46,44⟩,27,.early s6Step63CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 63<498)]
  simp only [s6ObservedCounter]
  rw [s6Step63Complete_explicit_checked]
  rfl
theorem s6Observed_boundary48_arena : s6ObservedPlan48.outputArena=s6Step49EntryFBefore := rfl
theorem s6Observed_boundary48_bank : s6ObservedPlan48.bank=s6Step49FrontBank := by decide +kernel
theorem s6Observed_boundary48_record : s6ObservedPlan48.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] := rfl
theorem s6Observed_boundary49_arena : s6ObservedPlan49.outputArena=s6Step50EntryFBefore := rfl
theorem s6Observed_boundary49_bank : s6ObservedPlan49.bank=s6Step50FrontBank := by decide +kernel
theorem s6Observed_boundary49_record : s6ObservedPlan49.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] := rfl
theorem s6Observed_boundary50_arena : s6ObservedPlan50.outputArena=s6Step51EntryFBefore := rfl
theorem s6Observed_boundary50_bank : s6ObservedPlan50.bank=s6Step51FrontBank := by decide +kernel
theorem s6Observed_boundary50_record : s6ObservedPlan50.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837] := rfl
theorem s6Observed_boundary51_arena : s6ObservedPlan51.outputArena=s6Step52EntryFBefore := rfl
theorem s6Observed_boundary51_bank : s6ObservedPlan51.bank=s6Step52FrontBank := by decide +kernel
theorem s6Observed_boundary51_record : s6ObservedPlan51.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] := rfl
theorem s6Observed_boundary52_arena : s6ObservedPlan52.outputArena=s6Step53EntryFBefore := rfl
theorem s6Observed_boundary52_bank : s6ObservedPlan52.bank=s6Step53FrontBank := by decide +kernel
theorem s6Observed_boundary52_record : s6ObservedPlan52.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788] := rfl
theorem s6Observed_boundary53_arena : s6ObservedPlan53.outputArena=s6Step54EntryFBefore := rfl
theorem s6Observed_boundary53_bank : s6ObservedPlan53.bank=s6Step54FrontBank := by decide +kernel
theorem s6Observed_boundary53_record : s6ObservedPlan53.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] := rfl
theorem s6Observed_boundary54_arena : s6ObservedPlan54.outputArena=s6Step55EntryFBefore := rfl
theorem s6Observed_boundary54_bank : s6ObservedPlan54.bank=s6Step55FrontBank := by decide +kernel
theorem s6Observed_boundary54_record : s6ObservedPlan54.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889] := rfl
theorem s6Observed_boundary55_arena : s6ObservedPlan55.outputArena=s6Step56EntryFBefore := rfl
theorem s6Observed_boundary55_bank : s6ObservedPlan55.bank=s6Step56FrontBank := by decide +kernel
theorem s6Observed_boundary55_record : s6ObservedPlan55.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary56_arena : s6ObservedPlan56.outputArena=s6Step57EntryFBefore := rfl
theorem s6Observed_boundary56_bank : s6ObservedPlan56.bank=s6Step57FrontBank := by decide +kernel
theorem s6Observed_boundary56_record : s6ObservedPlan56.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary57_arena : s6ObservedPlan57.outputArena=s6Step58EntryFBefore := rfl
theorem s6Observed_boundary57_bank : s6ObservedPlan57.bank=s6Step58FrontBank := by decide +kernel
theorem s6Observed_boundary57_record : s6ObservedPlan57.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary58_arena : s6ObservedPlan58.outputArena=s6Step59EntryFBefore := rfl
theorem s6Observed_boundary58_bank : s6ObservedPlan58.bank=s6Step59FrontBank := by decide +kernel
theorem s6Observed_boundary58_record : s6ObservedPlan58.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary59_arena : s6ObservedPlan59.outputArena=s6Step60EntryFBefore := rfl
theorem s6Observed_boundary59_bank : s6ObservedPlan59.bank=s6Step60FrontBank := by decide +kernel
theorem s6Observed_boundary59_record : s6ObservedPlan59.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary60_arena : s6ObservedPlan60.outputArena=s6Step61EntryFBefore := rfl
theorem s6Observed_boundary60_bank : s6ObservedPlan60.bank=s6Step61FrontBank := by decide +kernel
theorem s6Observed_boundary60_record : s6ObservedPlan60.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary61_arena : s6ObservedPlan61.outputArena=s6Step62EntryFBefore := rfl
theorem s6Observed_boundary61_bank : s6ObservedPlan61.bank=s6Step62FrontBank := by decide +kernel
theorem s6Observed_boundary61_record : s6ObservedPlan61.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871] := rfl
theorem s6Observed_boundary62_arena : s6ObservedPlan62.outputArena=s6Step63EntryFBefore := rfl
theorem s6Observed_boundary62_bank : s6ObservedPlan62.bank=s6Step63FrontBank := by decide +kernel
theorem s6Observed_boundary62_record : s6ObservedPlan62.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] := rfl
def s6ObservedSegment48Logs : List HmrSourceWalkStepLog := [s6ObservedSpec48,s6ObservedSpec49,s6ObservedSpec50,s6ObservedSpec51,s6ObservedSpec52,s6ObservedSpec53,s6ObservedSpec54,s6ObservedSpec55,s6ObservedSpec56,s6ObservedSpec57,s6ObservedSpec58,s6ObservedSpec59,s6ObservedSpec60,s6ObservedSpec61,s6ObservedSpec62,s6ObservedSpec63]
theorem s6ObservedSegment48_length : s6ObservedSegment48Logs.length=16 := rfl
def s6ObservedSegment48Plan : HmrSourceWalkPlan := (.step s6ObservedPlan48 (.step s6ObservedPlan49 (.step s6ObservedPlan50 (.step s6ObservedPlan51 (.step s6ObservedPlan52 (.step s6ObservedPlan53 (.step s6ObservedPlan54 (.step s6ObservedPlan55 (.step s6ObservedPlan56 (.step s6ObservedPlan57 (.step s6ObservedPlan58 (.step s6ObservedPlan59 (.step s6ObservedPlan60 (.step s6ObservedPlan61 (.step s6ObservedPlan62 (.step s6ObservedPlan63 (.done s6ObservedPlan63.outputArena s6ObservedPlan63.bank (s6ObservedPlan63.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913]) none)))))))))))))))))
theorem s6ObservedSegment48_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6Step48EntryFBefore s6Step48FrontBank [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] 48 s6ObservedSegment48Logs=some s6ObservedSegment48Plan := by
  unfold s6ObservedSegment48Logs
  apply compileHmrSourceWalk_cons (P := s6ObservedPlan48)
  · exact s6Observed_step48_checked
  · rw [s6Observed_boundary48_arena,s6Observed_boundary48_bank,s6Observed_boundary48_record]
    apply compileHmrSourceWalk_cons (P := s6ObservedPlan49)
    · exact s6Observed_step49_checked
    · rw [s6Observed_boundary49_arena,s6Observed_boundary49_bank,s6Observed_boundary49_record]
      apply compileHmrSourceWalk_cons (P := s6ObservedPlan50)
      · exact s6Observed_step50_checked
      · rw [s6Observed_boundary50_arena,s6Observed_boundary50_bank,s6Observed_boundary50_record]
        apply compileHmrSourceWalk_cons (P := s6ObservedPlan51)
        · exact s6Observed_step51_checked
        · rw [s6Observed_boundary51_arena,s6Observed_boundary51_bank,s6Observed_boundary51_record]
          apply compileHmrSourceWalk_cons (P := s6ObservedPlan52)
          · exact s6Observed_step52_checked
          · rw [s6Observed_boundary52_arena,s6Observed_boundary52_bank,s6Observed_boundary52_record]
            apply compileHmrSourceWalk_cons (P := s6ObservedPlan53)
            · exact s6Observed_step53_checked
            · rw [s6Observed_boundary53_arena,s6Observed_boundary53_bank,s6Observed_boundary53_record]
              apply compileHmrSourceWalk_cons (P := s6ObservedPlan54)
              · exact s6Observed_step54_checked
              · rw [s6Observed_boundary54_arena,s6Observed_boundary54_bank,s6Observed_boundary54_record]
                apply compileHmrSourceWalk_cons (P := s6ObservedPlan55)
                · exact s6Observed_step55_checked
                · rw [s6Observed_boundary55_arena,s6Observed_boundary55_bank,s6Observed_boundary55_record]
                  apply compileHmrSourceWalk_cons (P := s6ObservedPlan56)
                  · exact s6Observed_step56_checked
                  · rw [s6Observed_boundary56_arena,s6Observed_boundary56_bank,s6Observed_boundary56_record]
                    apply compileHmrSourceWalk_cons (P := s6ObservedPlan57)
                    · exact s6Observed_step57_checked
                    · rw [s6Observed_boundary57_arena,s6Observed_boundary57_bank,s6Observed_boundary57_record]
                      apply compileHmrSourceWalk_cons (P := s6ObservedPlan58)
                      · exact s6Observed_step58_checked
                      · rw [s6Observed_boundary58_arena,s6Observed_boundary58_bank,s6Observed_boundary58_record]
                        apply compileHmrSourceWalk_cons (P := s6ObservedPlan59)
                        · exact s6Observed_step59_checked
                        · rw [s6Observed_boundary59_arena,s6Observed_boundary59_bank,s6Observed_boundary59_record]
                          apply compileHmrSourceWalk_cons (P := s6ObservedPlan60)
                          · exact s6Observed_step60_checked
                          · rw [s6Observed_boundary60_arena,s6Observed_boundary60_bank,s6Observed_boundary60_record]
                            apply compileHmrSourceWalk_cons (P := s6ObservedPlan61)
                            · exact s6Observed_step61_checked
                            · rw [s6Observed_boundary61_arena,s6Observed_boundary61_bank,s6Observed_boundary61_record]
                              apply compileHmrSourceWalk_cons (P := s6ObservedPlan62)
                              · exact s6Observed_step62_checked
                              · rw [s6Observed_boundary62_arena,s6Observed_boundary62_bank,s6Observed_boundary62_record]
                                apply compileHmrSourceWalk_cons (P := s6ObservedPlan63)
                                · exact s6Observed_step63_checked
                                · rfl
theorem s6ObservedSegment48_outputArena : s6ObservedSegment48Plan.outputArena=s6ObservedPlan63.outputArena := rfl
theorem s6ObservedSegment48_bank : s6ObservedSegment48Plan.bank=s6ObservedPlan63.bank := rfl
theorem s6ObservedSegment48_record : s6ObservedSegment48Plan.record=s6ObservedPlan63.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] := rfl
theorem s6ObservedSegment48_metadata : s6ObservedSegment48Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
