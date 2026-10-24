import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2ObservedSpec48 : HmrSourceWalkStepLog := s2ObservedLogs48[0]
def s2ObservedPlan48 : HmrSourceStepPlan := .early s2Step48CompletePlan
def s2ObservedSpec49 : HmrSourceWalkStepLog := s2ObservedLogs48[1]
def s2ObservedPlan49 : HmrSourceStepPlan := .early s2Step49CompletePlan
def s2ObservedSpec50 : HmrSourceWalkStepLog := s2ObservedLogs48[2]
def s2ObservedPlan50 : HmrSourceStepPlan := .early s2Step50CompletePlan
def s2ObservedSpec51 : HmrSourceWalkStepLog := s2ObservedLogs48[3]
def s2ObservedPlan51 : HmrSourceStepPlan := .early s2Step51CompletePlan
def s2ObservedSpec52 : HmrSourceWalkStepLog := s2ObservedLogs48[4]
def s2ObservedPlan52 : HmrSourceStepPlan := .early s2Step52CompletePlan
def s2ObservedSpec53 : HmrSourceWalkStepLog := s2ObservedLogs48[5]
def s2ObservedPlan53 : HmrSourceStepPlan := .early s2Step53CompletePlan
def s2ObservedSpec54 : HmrSourceWalkStepLog := s2ObservedLogs48[6]
def s2ObservedPlan54 : HmrSourceStepPlan := .early s2Step54CompletePlan
def s2ObservedSpec55 : HmrSourceWalkStepLog := s2ObservedLogs48[7]
def s2ObservedPlan55 : HmrSourceStepPlan := .early s2Step55CompletePlan
def s2ObservedSpec56 : HmrSourceWalkStepLog := s2ObservedLogs48[8]
def s2ObservedPlan56 : HmrSourceStepPlan := .early s2Step56CompletePlan
def s2ObservedSpec57 : HmrSourceWalkStepLog := s2ObservedLogs48[9]
def s2ObservedPlan57 : HmrSourceStepPlan := .early s2Step57CompletePlan
def s2ObservedSpec58 : HmrSourceWalkStepLog := s2ObservedLogs48[10]
def s2ObservedPlan58 : HmrSourceStepPlan := .early s2Step58CompletePlan
def s2ObservedSpec59 : HmrSourceWalkStepLog := s2ObservedLogs48[11]
def s2ObservedPlan59 : HmrSourceStepPlan := .early s2Step59CompletePlan
def s2ObservedSpec60 : HmrSourceWalkStepLog := s2ObservedLogs48[12]
def s2ObservedPlan60 : HmrSourceStepPlan := .early s2Step60CompletePlan
def s2ObservedSpec61 : HmrSourceWalkStepLog := s2ObservedLogs48[13]
def s2ObservedPlan61 : HmrSourceStepPlan := .early s2Step61CompletePlan
def s2ObservedSpec62 : HmrSourceWalkStepLog := s2ObservedLogs48[14]
def s2ObservedPlan62 : HmrSourceStepPlan := .early s2Step62CompletePlan
def s2ObservedSpec63 : HmrSourceWalkStepLog := s2ObservedLogs48[15]
def s2ObservedPlan63 : HmrSourceStepPlan := .early s2Step63CompletePlan
theorem s2Observed_step48_checked :
    compileHmrSourceStepLog s2Step48EntryFBefore s2Step48FrontBank
      s2ObservedSpec48.fgWidth s2ObservedSpec48.vWidth s2ObservedSpec48.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863]
      6 498 48 s2ObservedSpec48.need none s2ObservedSpec48.log=some s2ObservedPlan48 := by
  have spec : s2ObservedSpec48 = ⟨244,37,⟨244,243,37,37⟩,21,.early s2Step48CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 48<498)]
  simp only [s2ObservedCounter]
  rw [s2Step48Complete_explicit_checked]
  rfl
theorem s2Observed_step49_checked :
    compileHmrSourceStepLog s2Step49EntryFBefore s2Step49FrontBank
      s2ObservedSpec49.fgWidth s2ObservedSpec49.vWidth s2ObservedSpec49.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863]
      6 498 49 s2ObservedSpec49.need none s2ObservedSpec49.log=some s2ObservedPlan49 := by
  have spec : s2ObservedSpec49 = ⟨244,37,⟨243,243,38,37⟩,22,.early s2Step49CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 49<498)]
  simp only [s2ObservedCounter]
  rw [s2Step49Complete_explicit_checked]
  rfl
theorem s2Observed_step50_checked :
    compileHmrSourceStepLog s2Step50EntryFBefore s2Step50FrontBank
      s2ObservedSpec50.fgWidth s2ObservedSpec50.vWidth s2ObservedSpec50.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862]
      6 498 50 s2ObservedSpec50.need none s2ObservedSpec50.log=some s2ObservedPlan50 := by
  have spec : s2ObservedSpec50 = ⟨243,38,⟨243,242,38,37⟩,22,.early s2Step50CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 50<498)]
  simp only [s2ObservedCounter]
  rw [s2Step50Complete_explicit_checked]
  rfl
theorem s2Observed_step51_checked :
    compileHmrSourceStepLog s2Step51EntryFBefore s2Step51FrontBank
      s2ObservedSpec51.fgWidth s2ObservedSpec51.vWidth s2ObservedSpec51.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862]
      6 498 51 s2ObservedSpec51.need none s2ObservedSpec51.log=some s2ObservedPlan51 := by
  have spec : s2ObservedSpec51 = ⟨243,38,⟨242,242,39,38⟩,23,.early s2Step51CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 51<498)]
  simp only [s2ObservedCounter]
  rw [s2Step51Complete_explicit_checked]
  rfl
theorem s2Observed_step52_checked :
    compileHmrSourceStepLog s2Step52EntryFBefore s2Step52FrontBank
      s2ObservedSpec52.fgWidth s2ObservedSpec52.vWidth s2ObservedSpec52.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864]
      6 498 52 s2ObservedSpec52.need none s2ObservedSpec52.log=some s2ObservedPlan52 := by
  have spec : s2ObservedSpec52 = ⟨242,39,⟨241,241,39,38⟩,23,.early s2Step52CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 52<498)]
  simp only [s2ObservedCounter]
  rw [s2Step52Complete_explicit_checked]
  rfl
theorem s2Observed_step53_checked :
    compileHmrSourceStepLog s2Step53EntryFBefore s2Step53FrontBank
      s2ObservedSpec53.fgWidth s2ObservedSpec53.vWidth s2ObservedSpec53.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864]
      6 498 53 s2ObservedSpec53.need none s2ObservedSpec53.log=some s2ObservedPlan53 := by
  have spec : s2ObservedSpec53 = ⟨241,39,⟨241,241,40,39⟩,24,.early s2Step53CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 53<498)]
  simp only [s2ObservedCounter]
  rw [s2Step53Complete_explicit_checked]
  rfl
theorem s2Observed_step54_checked :
    compileHmrSourceStepLog s2Step54EntryFBefore s2Step54FrontBank
      s2ObservedSpec54.fgWidth s2ObservedSpec54.vWidth s2ObservedSpec54.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865]
      6 498 54 s2ObservedSpec54.need none s2ObservedSpec54.log=some s2ObservedPlan54 := by
  have spec : s2ObservedSpec54 = ⟨241,40,⟨241,240,41,40⟩,24,.early s2Step54CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 54<498)]
  simp only [s2ObservedCounter]
  rw [s2Step54Complete_explicit_checked]
  rfl
theorem s2Observed_step55_checked :
    compileHmrSourceStepLog s2Step55EntryFBefore s2Step55FrontBank
      s2ObservedSpec55.fgWidth s2ObservedSpec55.vWidth s2ObservedSpec55.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865]
      6 498 55 s2ObservedSpec55.need none s2ObservedSpec55.log=some s2ObservedPlan55 := by
  have spec : s2ObservedSpec55 = ⟨241,41,⟨240,240,40,41⟩,25,.early s2Step55CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 55<498)]
  simp only [s2ObservedCounter]
  rw [s2Step55Complete_explicit_checked]
  rfl
theorem s2Observed_step56_checked :
    compileHmrSourceStepLog s2Step56EntryFBefore s2Step56FrontBank
      s2ObservedSpec56.fgWidth s2ObservedSpec56.vWidth s2ObservedSpec56.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 56 s2ObservedSpec56.need none s2ObservedSpec56.log=some s2ObservedPlan56 := by
  have spec : s2ObservedSpec56 = ⟨240,41,⟨240,239,41,41⟩,25,.early s2Step56CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 56<498)]
  simp only [s2ObservedCounter]
  rw [s2Step56Complete_explicit_checked]
  rfl
theorem s2Observed_step57_checked :
    compileHmrSourceStepLog s2Step57EntryFBefore s2Step57FrontBank
      s2ObservedSpec57.fgWidth s2ObservedSpec57.vWidth s2ObservedSpec57.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 57 s2ObservedSpec57.need none s2ObservedSpec57.log=some s2ObservedPlan57 := by
  have spec : s2ObservedSpec57 = ⟨240,41,⟨239,238,41,41⟩,25,.early s2Step57CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 57<498)]
  simp only [s2ObservedCounter]
  rw [s2Step57Complete_explicit_checked]
  rfl
theorem s2Observed_step58_checked :
    compileHmrSourceStepLog s2Step58EntryFBefore s2Step58FrontBank
      s2ObservedSpec58.fgWidth s2ObservedSpec58.vWidth s2ObservedSpec58.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 58 s2ObservedSpec58.need none s2ObservedSpec58.log=some s2ObservedPlan58 := by
  have spec : s2ObservedSpec58 = ⟨239,41,⟨239,238,42,41⟩,25,.early s2Step58CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 58<498)]
  simp only [s2ObservedCounter]
  rw [s2Step58Complete_explicit_checked]
  rfl
theorem s2Observed_step59_checked :
    compileHmrSourceStepLog s2Step59EntryFBefore s2Step59FrontBank
      s2ObservedSpec59.fgWidth s2ObservedSpec59.vWidth s2ObservedSpec59.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 59 s2ObservedSpec59.need none s2ObservedSpec59.log=some s2ObservedPlan59 := by
  have spec : s2ObservedSpec59 = ⟨239,42,⟨239,238,43,42⟩,25,.early s2Step59CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 59<498)]
  simp only [s2ObservedCounter]
  rw [s2Step59Complete_explicit_checked]
  rfl
theorem s2Observed_step60_checked :
    compileHmrSourceStepLog s2Step60EntryFBefore s2Step60FrontBank
      s2ObservedSpec60.fgWidth s2ObservedSpec60.vWidth s2ObservedSpec60.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 60 s2ObservedSpec60.need none s2ObservedSpec60.log=some s2ObservedPlan60 := by
  have spec : s2ObservedSpec60 = ⟨239,43,⟨239,237,44,43⟩,25,.early s2Step60CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 60<498)]
  simp only [s2ObservedCounter]
  rw [s2Step60Complete_explicit_checked]
  rfl
theorem s2Observed_step61_checked :
    compileHmrSourceStepLog s2Step61EntryFBefore s2Step61FrontBank
      s2ObservedSpec61.fgWidth s2ObservedSpec61.vWidth s2ObservedSpec61.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 61 s2ObservedSpec61.need none s2ObservedSpec61.log=some s2ObservedPlan61 := by
  have spec : s2ObservedSpec61 = ⟨239,44,⟨238,237,44,43⟩,25,.early s2Step61CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 61<498)]
  simp only [s2ObservedCounter]
  rw [s2Step61Complete_explicit_checked]
  rfl
theorem s2Observed_step62_checked :
    compileHmrSourceStepLog s2Step62EntryFBefore s2Step62FrontBank
      s2ObservedSpec62.fgWidth s2ObservedSpec62.vWidth s2ObservedSpec62.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]
      6 498 62 s2ObservedSpec62.need none s2ObservedSpec62.log=some s2ObservedPlan62 := by
  have spec : s2ObservedSpec62 = ⟨238,44,⟨237,237,45,44⟩,26,.early s2Step62CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 62<498)]
  simp only [s2ObservedCounter]
  rw [s2Step62Complete_explicit_checked]
  rfl
theorem s2Observed_step63_checked :
    compileHmrSourceStepLog s2Step63EntryFBefore s2Step63FrontBank
      s2ObservedSpec63.fgWidth s2ObservedSpec63.vWidth s2ObservedSpec63.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869]
      6 498 63 s2ObservedSpec63.need none s2ObservedSpec63.log=some s2ObservedPlan63 := by
  have spec : s2ObservedSpec63 = ⟨237,45,⟨237,237,46,44⟩,27,.early s2Step63CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 63<498)]
  simp only [s2ObservedCounter]
  rw [s2Step63Complete_explicit_checked]
  rfl
theorem s2Observed_boundary48_arena : s2ObservedPlan48.outputArena=s2Step49EntryFBefore := rfl
theorem s2Observed_boundary48_bank : s2ObservedPlan48.bank=s2Step49FrontBank := by decide +kernel
theorem s2Observed_boundary48_record : s2ObservedPlan48.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] := rfl
theorem s2Observed_boundary49_arena : s2ObservedPlan49.outputArena=s2Step50EntryFBefore := rfl
theorem s2Observed_boundary49_bank : s2ObservedPlan49.bank=s2Step50FrontBank := by decide +kernel
theorem s2Observed_boundary49_record : s2ObservedPlan49.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] := rfl
theorem s2Observed_boundary50_arena : s2ObservedPlan50.outputArena=s2Step51EntryFBefore := rfl
theorem s2Observed_boundary50_bank : s2ObservedPlan50.bank=s2Step51FrontBank := by decide +kernel
theorem s2Observed_boundary50_record : s2ObservedPlan50.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862] := rfl
theorem s2Observed_boundary51_arena : s2ObservedPlan51.outputArena=s2Step52EntryFBefore := rfl
theorem s2Observed_boundary51_bank : s2ObservedPlan51.bank=s2Step52FrontBank := by decide +kernel
theorem s2Observed_boundary51_record : s2ObservedPlan51.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] := rfl
theorem s2Observed_boundary52_arena : s2ObservedPlan52.outputArena=s2Step53EntryFBefore := rfl
theorem s2Observed_boundary52_bank : s2ObservedPlan52.bank=s2Step53FrontBank := by decide +kernel
theorem s2Observed_boundary52_record : s2ObservedPlan52.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864] := rfl
theorem s2Observed_boundary53_arena : s2ObservedPlan53.outputArena=s2Step54EntryFBefore := rfl
theorem s2Observed_boundary53_bank : s2ObservedPlan53.bank=s2Step54FrontBank := by decide +kernel
theorem s2Observed_boundary53_record : s2ObservedPlan53.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] := rfl
theorem s2Observed_boundary54_arena : s2ObservedPlan54.outputArena=s2Step55EntryFBefore := rfl
theorem s2Observed_boundary54_bank : s2ObservedPlan54.bank=s2Step55FrontBank := by decide +kernel
theorem s2Observed_boundary54_record : s2ObservedPlan54.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865] := rfl
theorem s2Observed_boundary55_arena : s2ObservedPlan55.outputArena=s2Step56EntryFBefore := rfl
theorem s2Observed_boundary55_bank : s2ObservedPlan55.bank=s2Step56FrontBank := by decide +kernel
theorem s2Observed_boundary55_record : s2ObservedPlan55.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary56_arena : s2ObservedPlan56.outputArena=s2Step57EntryFBefore := rfl
theorem s2Observed_boundary56_bank : s2ObservedPlan56.bank=s2Step57FrontBank := by decide +kernel
theorem s2Observed_boundary56_record : s2ObservedPlan56.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary57_arena : s2ObservedPlan57.outputArena=s2Step58EntryFBefore := rfl
theorem s2Observed_boundary57_bank : s2ObservedPlan57.bank=s2Step58FrontBank := by decide +kernel
theorem s2Observed_boundary57_record : s2ObservedPlan57.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary58_arena : s2ObservedPlan58.outputArena=s2Step59EntryFBefore := rfl
theorem s2Observed_boundary58_bank : s2ObservedPlan58.bank=s2Step59FrontBank := by decide +kernel
theorem s2Observed_boundary58_record : s2ObservedPlan58.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary59_arena : s2ObservedPlan59.outputArena=s2Step60EntryFBefore := rfl
theorem s2Observed_boundary59_bank : s2ObservedPlan59.bank=s2Step60FrontBank := by decide +kernel
theorem s2Observed_boundary59_record : s2ObservedPlan59.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary60_arena : s2ObservedPlan60.outputArena=s2Step61EntryFBefore := rfl
theorem s2Observed_boundary60_bank : s2ObservedPlan60.bank=s2Step61FrontBank := by decide +kernel
theorem s2Observed_boundary60_record : s2ObservedPlan60.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary61_arena : s2ObservedPlan61.outputArena=s2Step62EntryFBefore := rfl
theorem s2Observed_boundary61_bank : s2ObservedPlan61.bank=s2Step62FrontBank := by decide +kernel
theorem s2Observed_boundary61_record : s2ObservedPlan61.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866] := rfl
theorem s2Observed_boundary62_arena : s2ObservedPlan62.outputArena=s2Step63EntryFBefore := rfl
theorem s2Observed_boundary62_bank : s2ObservedPlan62.bank=s2Step63FrontBank := by decide +kernel
theorem s2Observed_boundary62_record : s2ObservedPlan62.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] := rfl
def s2ObservedSegment48Logs : List HmrSourceWalkStepLog := [s2ObservedSpec48,s2ObservedSpec49,s2ObservedSpec50,s2ObservedSpec51,s2ObservedSpec52,s2ObservedSpec53,s2ObservedSpec54,s2ObservedSpec55,s2ObservedSpec56,s2ObservedSpec57,s2ObservedSpec58,s2ObservedSpec59,s2ObservedSpec60,s2ObservedSpec61,s2ObservedSpec62,s2ObservedSpec63]
theorem s2ObservedSegment48_length : s2ObservedSegment48Logs.length=16 := rfl
def s2ObservedSegment48Plan : HmrSourceWalkPlan := (.step s2ObservedPlan48 (.step s2ObservedPlan49 (.step s2ObservedPlan50 (.step s2ObservedPlan51 (.step s2ObservedPlan52 (.step s2ObservedPlan53 (.step s2ObservedPlan54 (.step s2ObservedPlan55 (.step s2ObservedPlan56 (.step s2ObservedPlan57 (.step s2ObservedPlan58 (.step s2ObservedPlan59 (.step s2ObservedPlan60 (.step s2ObservedPlan61 (.step s2ObservedPlan62 (.step s2ObservedPlan63 (.done s2ObservedPlan63.outputArena s2ObservedPlan63.bank (s2ObservedPlan63.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869]) none)))))))))))))))))
theorem s2ObservedSegment48_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2Step48EntryFBefore s2Step48FrontBank [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] 48 s2ObservedSegment48Logs=some s2ObservedSegment48Plan := by
  unfold s2ObservedSegment48Logs
  apply compileHmrSourceWalk_cons (P := s2ObservedPlan48)
  · exact s2Observed_step48_checked
  · rw [s2Observed_boundary48_arena,s2Observed_boundary48_bank,s2Observed_boundary48_record]
    apply compileHmrSourceWalk_cons (P := s2ObservedPlan49)
    · exact s2Observed_step49_checked
    · rw [s2Observed_boundary49_arena,s2Observed_boundary49_bank,s2Observed_boundary49_record]
      apply compileHmrSourceWalk_cons (P := s2ObservedPlan50)
      · exact s2Observed_step50_checked
      · rw [s2Observed_boundary50_arena,s2Observed_boundary50_bank,s2Observed_boundary50_record]
        apply compileHmrSourceWalk_cons (P := s2ObservedPlan51)
        · exact s2Observed_step51_checked
        · rw [s2Observed_boundary51_arena,s2Observed_boundary51_bank,s2Observed_boundary51_record]
          apply compileHmrSourceWalk_cons (P := s2ObservedPlan52)
          · exact s2Observed_step52_checked
          · rw [s2Observed_boundary52_arena,s2Observed_boundary52_bank,s2Observed_boundary52_record]
            apply compileHmrSourceWalk_cons (P := s2ObservedPlan53)
            · exact s2Observed_step53_checked
            · rw [s2Observed_boundary53_arena,s2Observed_boundary53_bank,s2Observed_boundary53_record]
              apply compileHmrSourceWalk_cons (P := s2ObservedPlan54)
              · exact s2Observed_step54_checked
              · rw [s2Observed_boundary54_arena,s2Observed_boundary54_bank,s2Observed_boundary54_record]
                apply compileHmrSourceWalk_cons (P := s2ObservedPlan55)
                · exact s2Observed_step55_checked
                · rw [s2Observed_boundary55_arena,s2Observed_boundary55_bank,s2Observed_boundary55_record]
                  apply compileHmrSourceWalk_cons (P := s2ObservedPlan56)
                  · exact s2Observed_step56_checked
                  · rw [s2Observed_boundary56_arena,s2Observed_boundary56_bank,s2Observed_boundary56_record]
                    apply compileHmrSourceWalk_cons (P := s2ObservedPlan57)
                    · exact s2Observed_step57_checked
                    · rw [s2Observed_boundary57_arena,s2Observed_boundary57_bank,s2Observed_boundary57_record]
                      apply compileHmrSourceWalk_cons (P := s2ObservedPlan58)
                      · exact s2Observed_step58_checked
                      · rw [s2Observed_boundary58_arena,s2Observed_boundary58_bank,s2Observed_boundary58_record]
                        apply compileHmrSourceWalk_cons (P := s2ObservedPlan59)
                        · exact s2Observed_step59_checked
                        · rw [s2Observed_boundary59_arena,s2Observed_boundary59_bank,s2Observed_boundary59_record]
                          apply compileHmrSourceWalk_cons (P := s2ObservedPlan60)
                          · exact s2Observed_step60_checked
                          · rw [s2Observed_boundary60_arena,s2Observed_boundary60_bank,s2Observed_boundary60_record]
                            apply compileHmrSourceWalk_cons (P := s2ObservedPlan61)
                            · exact s2Observed_step61_checked
                            · rw [s2Observed_boundary61_arena,s2Observed_boundary61_bank,s2Observed_boundary61_record]
                              apply compileHmrSourceWalk_cons (P := s2ObservedPlan62)
                              · exact s2Observed_step62_checked
                              · rw [s2Observed_boundary62_arena,s2Observed_boundary62_bank,s2Observed_boundary62_record]
                                apply compileHmrSourceWalk_cons (P := s2ObservedPlan63)
                                · exact s2Observed_step63_checked
                                · rfl
theorem s2ObservedSegment48_outputArena : s2ObservedSegment48Plan.outputArena=s2ObservedPlan63.outputArena := rfl
theorem s2ObservedSegment48_bank : s2ObservedSegment48Plan.bank=s2ObservedPlan63.bank := rfl
theorem s2ObservedSegment48_record : s2ObservedSegment48Plan.record=s2ObservedPlan63.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] := rfl
theorem s2ObservedSegment48_metadata : s2ObservedSegment48Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
