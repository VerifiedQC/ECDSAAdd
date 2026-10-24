import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s6ObservedSpec16 : HmrSourceWalkStepLog := s6ObservedLogs16[0]
def s6ObservedPlan16 : HmrSourceStepPlan := .early s6Step16CompletePlan
def s6ObservedSpec17 : HmrSourceWalkStepLog := s6ObservedLogs16[1]
def s6ObservedPlan17 : HmrSourceStepPlan := .early s6Step17CompletePlan
def s6ObservedSpec18 : HmrSourceWalkStepLog := s6ObservedLogs16[2]
def s6ObservedPlan18 : HmrSourceStepPlan := .early s6Step18CompletePlan
def s6ObservedSpec19 : HmrSourceWalkStepLog := s6ObservedLogs16[3]
def s6ObservedPlan19 : HmrSourceStepPlan := .early s6Step19CompletePlan
def s6ObservedSpec20 : HmrSourceWalkStepLog := s6ObservedLogs16[4]
def s6ObservedPlan20 : HmrSourceStepPlan := .early s6Step20CompletePlan
def s6ObservedSpec21 : HmrSourceWalkStepLog := s6ObservedLogs16[5]
def s6ObservedPlan21 : HmrSourceStepPlan := .early s6Step21CompletePlan
def s6ObservedSpec22 : HmrSourceWalkStepLog := s6ObservedLogs16[6]
def s6ObservedPlan22 : HmrSourceStepPlan := .early s6Step22CompletePlan
def s6ObservedSpec23 : HmrSourceWalkStepLog := s6ObservedLogs16[7]
def s6ObservedPlan23 : HmrSourceStepPlan := .early s6Step23CompletePlan
def s6ObservedSpec24 : HmrSourceWalkStepLog := s6ObservedLogs16[8]
def s6ObservedPlan24 : HmrSourceStepPlan := .early s6Step24CompletePlan
def s6ObservedSpec25 : HmrSourceWalkStepLog := s6ObservedLogs16[9]
def s6ObservedPlan25 : HmrSourceStepPlan := .early s6Step25CompletePlan
def s6ObservedSpec26 : HmrSourceWalkStepLog := s6ObservedLogs16[10]
def s6ObservedPlan26 : HmrSourceStepPlan := .early s6Step26CompletePlan
def s6ObservedSpec27 : HmrSourceWalkStepLog := s6ObservedLogs16[11]
def s6ObservedPlan27 : HmrSourceStepPlan := .early s6Step27CompletePlan
def s6ObservedSpec28 : HmrSourceWalkStepLog := s6ObservedLogs16[12]
def s6ObservedPlan28 : HmrSourceStepPlan := .early s6Step28CompletePlan
def s6ObservedSpec29 : HmrSourceWalkStepLog := s6ObservedLogs16[13]
def s6ObservedPlan29 : HmrSourceStepPlan := .early s6Step29CompletePlan
def s6ObservedSpec30 : HmrSourceWalkStepLog := s6ObservedLogs16[14]
def s6ObservedPlan30 : HmrSourceStepPlan := .early s6Step30CompletePlan
def s6ObservedSpec31 : HmrSourceWalkStepLog := s6ObservedLogs16[15]
def s6ObservedPlan31 : HmrSourceStepPlan := .early s6Step31CompletePlan
theorem s6Observed_step16_checked :
    compileHmrSourceStepLog s6Step16EntryFBefore s6Step16FrontBank
      s6ObservedSpec16.fgWidth s6ObservedSpec16.vWidth s6ObservedSpec16.exitWidth s6ObservedCounter [895, 870, 872, 883, 831]
      6 498 16 s6ObservedSpec16.need none s6ObservedSpec16.log=some s6ObservedPlan16 := by
  have spec : s6ObservedSpec16 = ⟨256,17,⟨256,255,18,16⟩,5,.early s6Step16CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 16<498)]
  simp only [s6ObservedCounter]
  rw [s6Step16Complete_explicit_checked]
  rfl
theorem s6Observed_step17_checked :
    compileHmrSourceStepLog s6Step17EntryFBefore s6Step17FrontBank
      s6ObservedSpec17.fgWidth s6ObservedSpec17.vWidth s6ObservedSpec17.exitWidth s6ObservedCounter [895, 870, 872, 883, 831]
      6 498 17 s6ObservedSpec17.need none s6ObservedSpec17.log=some s6ObservedPlan17 := by
  have spec : s6ObservedSpec17 = ⟨256,18,⟨256,255,19,17⟩,6,.early s6Step17CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 17<498)]
  simp only [s6ObservedCounter]
  rw [s6Step17Complete_explicit_checked]
  rfl
theorem s6Observed_step18_checked :
    compileHmrSourceStepLog s6Step18EntryFBefore s6Step18FrontBank
      s6ObservedSpec18.fgWidth s6ObservedSpec18.vWidth s6ObservedSpec18.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852]
      6 498 18 s6ObservedSpec18.need none s6ObservedSpec18.log=some s6ObservedPlan18 := by
  have spec : s6ObservedSpec18 = ⟨256,19,⟨256,255,20,18⟩,6,.early s6Step18CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 18<498)]
  simp only [s6ObservedCounter]
  rw [s6Step18Complete_explicit_checked]
  rfl
theorem s6Observed_step19_checked :
    compileHmrSourceStepLog s6Step19EntryFBefore s6Step19FrontBank
      s6ObservedSpec19.fgWidth s6ObservedSpec19.vWidth s6ObservedSpec19.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852]
      6 498 19 s6ObservedSpec19.need none s6ObservedSpec19.log=some s6ObservedPlan19 := by
  have spec : s6ObservedSpec19 = ⟨256,20,⟨256,255,21,19⟩,7,.early s6Step19CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 19<498)]
  simp only [s6ObservedCounter]
  rw [s6Step19Complete_explicit_checked]
  rfl
theorem s6Observed_step20_checked :
    compileHmrSourceStepLog s6Step20EntryFBefore s6Step20FrontBank
      s6ObservedSpec20.fgWidth s6ObservedSpec20.vWidth s6ObservedSpec20.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911]
      6 498 20 s6ObservedSpec20.need none s6ObservedSpec20.log=some s6ObservedPlan20 := by
  have spec : s6ObservedSpec20 = ⟨256,21,⟨256,255,22,20⟩,7,.early s6Step20CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 20<498)]
  simp only [s6ObservedCounter]
  rw [s6Step20Complete_explicit_checked]
  rfl
theorem s6Observed_step21_checked :
    compileHmrSourceStepLog s6Step21EntryFBefore s6Step21FrontBank
      s6ObservedSpec21.fgWidth s6ObservedSpec21.vWidth s6ObservedSpec21.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911]
      6 498 21 s6ObservedSpec21.need none s6ObservedSpec21.log=some s6ObservedPlan21 := by
  have spec : s6ObservedSpec21 = ⟨256,22,⟨256,255,23,21⟩,8,.early s6Step21CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 21<498)]
  simp only [s6ObservedCounter]
  rw [s6Step21Complete_explicit_checked]
  rfl
theorem s6Observed_step22_checked :
    compileHmrSourceStepLog s6Step22EntryFBefore s6Step22FrontBank
      s6ObservedSpec22.fgWidth s6ObservedSpec22.vWidth s6ObservedSpec22.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910]
      6 498 22 s6ObservedSpec22.need none s6ObservedSpec22.log=some s6ObservedPlan22 := by
  have spec : s6ObservedSpec22 = ⟨256,23,⟨256,255,24,22⟩,8,.early s6Step22CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 22<498)]
  simp only [s6ObservedCounter]
  rw [s6Step22Complete_explicit_checked]
  rfl
theorem s6Observed_step23_checked :
    compileHmrSourceStepLog s6Step23EntryFBefore s6Step23FrontBank
      s6ObservedSpec23.fgWidth s6ObservedSpec23.vWidth s6ObservedSpec23.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910]
      6 498 23 s6ObservedSpec23.need none s6ObservedSpec23.log=some s6ObservedPlan23 := by
  have spec : s6ObservedSpec23 = ⟨256,24,⟨256,255,25,23⟩,9,.early s6Step23CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 23<498)]
  simp only [s6ObservedCounter]
  rw [s6Step23Complete_explicit_checked]
  rfl
theorem s6Observed_step24_checked :
    compileHmrSourceStepLog s6Step24EntryFBefore s6Step24FrontBank
      s6ObservedSpec24.fgWidth s6ObservedSpec24.vWidth s6ObservedSpec24.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799]
      6 498 24 s6ObservedSpec24.need none s6ObservedSpec24.log=some s6ObservedPlan24 := by
  have spec : s6ObservedSpec24 = ⟨256,25,⟨255,254,25,24⟩,9,.early s6Step24CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 24<498)]
  simp only [s6ObservedCounter]
  rw [s6Step24Complete_explicit_checked]
  rfl
theorem s6Observed_step25_checked :
    compileHmrSourceStepLog s6Step25EntryFBefore s6Step25FrontBank
      s6ObservedSpec25.fgWidth s6ObservedSpec25.vWidth s6ObservedSpec25.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799]
      6 498 25 s6ObservedSpec25.need none s6ObservedSpec25.log=some s6ObservedPlan25 := by
  have spec : s6ObservedSpec25 = ⟨255,25,⟨255,254,26,25⟩,10,.early s6Step25CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 25<498)]
  simp only [s6ObservedCounter]
  rw [s6Step25Complete_explicit_checked]
  rfl
theorem s6Observed_step26_checked :
    compileHmrSourceStepLog s6Step26EntryFBefore s6Step26FrontBank
      s6ObservedSpec26.fgWidth s6ObservedSpec26.vWidth s6ObservedSpec26.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827]
      6 498 26 s6ObservedSpec26.need none s6ObservedSpec26.log=some s6ObservedPlan26 := by
  have spec : s6ObservedSpec26 = ⟨255,26,⟨255,254,27,25⟩,10,.early s6Step26CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 26<498)]
  simp only [s6ObservedCounter]
  rw [s6Step26Complete_explicit_checked]
  rfl
theorem s6Observed_step27_checked :
    compileHmrSourceStepLog s6Step27EntryFBefore s6Step27FrontBank
      s6ObservedSpec27.fgWidth s6ObservedSpec27.vWidth s6ObservedSpec27.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827]
      6 498 27 s6ObservedSpec27.need none s6ObservedSpec27.log=some s6ObservedPlan27 := by
  have spec : s6ObservedSpec27 = ⟨255,27,⟨254,253,28,26⟩,11,.early s6Step27CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 27<498)]
  simp only [s6ObservedCounter]
  rw [s6Step27Complete_explicit_checked]
  rfl
theorem s6Observed_step28_checked :
    compileHmrSourceStepLog s6Step28EntryFBefore s6Step28FrontBank
      s6ObservedSpec28.fgWidth s6ObservedSpec28.vWidth s6ObservedSpec28.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901]
      6 498 28 s6ObservedSpec28.need none s6ObservedSpec28.log=some s6ObservedPlan28 := by
  have spec : s6ObservedSpec28 = ⟨254,28,⟨254,253,28,27⟩,11,.early s6Step28CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 28<498)]
  simp only [s6ObservedCounter]
  rw [s6Step28Complete_explicit_checked]
  rfl
theorem s6Observed_step29_checked :
    compileHmrSourceStepLog s6Step29EntryFBefore s6Step29FrontBank
      s6ObservedSpec29.fgWidth s6ObservedSpec29.vWidth s6ObservedSpec29.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901]
      6 498 29 s6ObservedSpec29.need none s6ObservedSpec29.log=some s6ObservedPlan29 := by
  have spec : s6ObservedSpec29 = ⟨254,28,⟨253,252,29,27⟩,12,.early s6Step29CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 29<498)]
  simp only [s6ObservedCounter]
  rw [s6Step29Complete_explicit_checked]
  rfl
theorem s6Observed_step30_checked :
    compileHmrSourceStepLog s6Step30EntryFBefore s6Step30FrontBank
      s6ObservedSpec30.fgWidth s6ObservedSpec30.vWidth s6ObservedSpec30.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]
      6 498 30 s6ObservedSpec30.need none s6ObservedSpec30.log=some s6ObservedPlan30 := by
  have spec : s6ObservedSpec30 = ⟨253,29,⟨253,252,29,28⟩,12,.early s6Step30CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 30<498)]
  simp only [s6ObservedCounter]
  rw [s6Step30Complete_explicit_checked]
  rfl
theorem s6Observed_step31_checked :
    compileHmrSourceStepLog s6Step31EntryFBefore s6Step31FrontBank
      s6ObservedSpec31.fgWidth s6ObservedSpec31.vWidth s6ObservedSpec31.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]
      6 498 31 s6ObservedSpec31.need none s6ObservedSpec31.log=some s6ObservedPlan31 := by
  have spec : s6ObservedSpec31 = ⟨253,29,⟨253,251,29,28⟩,13,.early s6Step31CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 31<498)]
  simp only [s6ObservedCounter]
  rw [s6Step31Complete_explicit_checked]
  rfl
theorem s6Observed_boundary16_arena : s6ObservedPlan16.outputArena=s6Step17EntryFBefore := rfl
theorem s6Observed_boundary16_bank : s6ObservedPlan16.bank=s6Step17FrontBank := by decide +kernel
theorem s6Observed_boundary16_record : s6ObservedPlan16.record [895, 870, 872, 883, 831]=[895, 870, 872, 883, 831] := rfl
theorem s6Observed_boundary17_arena : s6ObservedPlan17.outputArena=s6Step18EntryFBefore := rfl
theorem s6Observed_boundary17_bank : s6ObservedPlan17.bank=s6Step18FrontBank := by decide +kernel
theorem s6Observed_boundary17_record : s6ObservedPlan17.record [895, 870, 872, 883, 831]=[895, 870, 872, 883, 831, 852] := rfl
theorem s6Observed_boundary18_arena : s6ObservedPlan18.outputArena=s6Step19EntryFBefore := rfl
theorem s6Observed_boundary18_bank : s6ObservedPlan18.bank=s6Step19FrontBank := by decide +kernel
theorem s6Observed_boundary18_record : s6ObservedPlan18.record [895, 870, 872, 883, 831, 852]=[895, 870, 872, 883, 831, 852] := rfl
theorem s6Observed_boundary19_arena : s6ObservedPlan19.outputArena=s6Step20EntryFBefore := rfl
theorem s6Observed_boundary19_bank : s6ObservedPlan19.bank=s6Step20FrontBank := by decide +kernel
theorem s6Observed_boundary19_record : s6ObservedPlan19.record [895, 870, 872, 883, 831, 852]=[895, 870, 872, 883, 831, 852, 911] := rfl
theorem s6Observed_boundary20_arena : s6ObservedPlan20.outputArena=s6Step21EntryFBefore := rfl
theorem s6Observed_boundary20_bank : s6ObservedPlan20.bank=s6Step21FrontBank := by decide +kernel
theorem s6Observed_boundary20_record : s6ObservedPlan20.record [895, 870, 872, 883, 831, 852, 911]=[895, 870, 872, 883, 831, 852, 911] := rfl
theorem s6Observed_boundary21_arena : s6ObservedPlan21.outputArena=s6Step22EntryFBefore := rfl
theorem s6Observed_boundary21_bank : s6ObservedPlan21.bank=s6Step22FrontBank := by decide +kernel
theorem s6Observed_boundary21_record : s6ObservedPlan21.record [895, 870, 872, 883, 831, 852, 911]=[895, 870, 872, 883, 831, 852, 911, 910] := rfl
theorem s6Observed_boundary22_arena : s6ObservedPlan22.outputArena=s6Step23EntryFBefore := rfl
theorem s6Observed_boundary22_bank : s6ObservedPlan22.bank=s6Step23FrontBank := by decide +kernel
theorem s6Observed_boundary22_record : s6ObservedPlan22.record [895, 870, 872, 883, 831, 852, 911, 910]=[895, 870, 872, 883, 831, 852, 911, 910] := rfl
theorem s6Observed_boundary23_arena : s6ObservedPlan23.outputArena=s6Step24EntryFBefore := rfl
theorem s6Observed_boundary23_bank : s6ObservedPlan23.bank=s6Step24FrontBank := by decide +kernel
theorem s6Observed_boundary23_record : s6ObservedPlan23.record [895, 870, 872, 883, 831, 852, 911, 910]=[895, 870, 872, 883, 831, 852, 911, 910, 799] := rfl
theorem s6Observed_boundary24_arena : s6ObservedPlan24.outputArena=s6Step25EntryFBefore := rfl
theorem s6Observed_boundary24_bank : s6ObservedPlan24.bank=s6Step25FrontBank := by decide +kernel
theorem s6Observed_boundary24_record : s6ObservedPlan24.record [895, 870, 872, 883, 831, 852, 911, 910, 799]=[895, 870, 872, 883, 831, 852, 911, 910, 799] := rfl
theorem s6Observed_boundary25_arena : s6ObservedPlan25.outputArena=s6Step26EntryFBefore := rfl
theorem s6Observed_boundary25_bank : s6ObservedPlan25.bank=s6Step26FrontBank := by decide +kernel
theorem s6Observed_boundary25_record : s6ObservedPlan25.record [895, 870, 872, 883, 831, 852, 911, 910, 799]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827] := rfl
theorem s6Observed_boundary26_arena : s6ObservedPlan26.outputArena=s6Step27EntryFBefore := rfl
theorem s6Observed_boundary26_bank : s6ObservedPlan26.bank=s6Step27FrontBank := by decide +kernel
theorem s6Observed_boundary26_record : s6ObservedPlan26.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827] := rfl
theorem s6Observed_boundary27_arena : s6ObservedPlan27.outputArena=s6Step28EntryFBefore := rfl
theorem s6Observed_boundary27_bank : s6ObservedPlan27.bank=s6Step28FrontBank := by decide +kernel
theorem s6Observed_boundary27_record : s6ObservedPlan27.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] := rfl
theorem s6Observed_boundary28_arena : s6ObservedPlan28.outputArena=s6Step29EntryFBefore := rfl
theorem s6Observed_boundary28_bank : s6ObservedPlan28.bank=s6Step29FrontBank := by decide +kernel
theorem s6Observed_boundary28_record : s6ObservedPlan28.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] := rfl
theorem s6Observed_boundary29_arena : s6ObservedPlan29.outputArena=s6Step30EntryFBefore := rfl
theorem s6Observed_boundary29_bank : s6ObservedPlan29.bank=s6Step30FrontBank := by decide +kernel
theorem s6Observed_boundary29_record : s6ObservedPlan29.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] := rfl
theorem s6Observed_boundary30_arena : s6ObservedPlan30.outputArena=s6Step31EntryFBefore := rfl
theorem s6Observed_boundary30_bank : s6ObservedPlan30.bank=s6Step31FrontBank := by decide +kernel
theorem s6Observed_boundary30_record : s6ObservedPlan30.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] := rfl
def s6ObservedSegment16Logs : List HmrSourceWalkStepLog := [s6ObservedSpec16,s6ObservedSpec17,s6ObservedSpec18,s6ObservedSpec19,s6ObservedSpec20,s6ObservedSpec21,s6ObservedSpec22,s6ObservedSpec23,s6ObservedSpec24,s6ObservedSpec25,s6ObservedSpec26,s6ObservedSpec27,s6ObservedSpec28,s6ObservedSpec29,s6ObservedSpec30,s6ObservedSpec31]
theorem s6ObservedSegment16_length : s6ObservedSegment16Logs.length=16 := rfl
def s6ObservedSegment16Plan : HmrSourceWalkPlan := (.step s6ObservedPlan16 (.step s6ObservedPlan17 (.step s6ObservedPlan18 (.step s6ObservedPlan19 (.step s6ObservedPlan20 (.step s6ObservedPlan21 (.step s6ObservedPlan22 (.step s6ObservedPlan23 (.step s6ObservedPlan24 (.step s6ObservedPlan25 (.step s6ObservedPlan26 (.step s6ObservedPlan27 (.step s6ObservedPlan28 (.step s6ObservedPlan29 (.step s6ObservedPlan30 (.step s6ObservedPlan31 (.done s6ObservedPlan31.outputArena s6ObservedPlan31.bank (s6ObservedPlan31.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]) none)))))))))))))))))
theorem s6ObservedSegment16_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6Step16EntryFBefore s6Step16FrontBank [895, 870, 872, 883, 831] 16 s6ObservedSegment16Logs=some s6ObservedSegment16Plan := by
  unfold s6ObservedSegment16Logs
  apply compileHmrSourceWalk_cons (P := s6ObservedPlan16)
  · exact s6Observed_step16_checked
  · rw [s6Observed_boundary16_arena,s6Observed_boundary16_bank,s6Observed_boundary16_record]
    apply compileHmrSourceWalk_cons (P := s6ObservedPlan17)
    · exact s6Observed_step17_checked
    · rw [s6Observed_boundary17_arena,s6Observed_boundary17_bank,s6Observed_boundary17_record]
      apply compileHmrSourceWalk_cons (P := s6ObservedPlan18)
      · exact s6Observed_step18_checked
      · rw [s6Observed_boundary18_arena,s6Observed_boundary18_bank,s6Observed_boundary18_record]
        apply compileHmrSourceWalk_cons (P := s6ObservedPlan19)
        · exact s6Observed_step19_checked
        · rw [s6Observed_boundary19_arena,s6Observed_boundary19_bank,s6Observed_boundary19_record]
          apply compileHmrSourceWalk_cons (P := s6ObservedPlan20)
          · exact s6Observed_step20_checked
          · rw [s6Observed_boundary20_arena,s6Observed_boundary20_bank,s6Observed_boundary20_record]
            apply compileHmrSourceWalk_cons (P := s6ObservedPlan21)
            · exact s6Observed_step21_checked
            · rw [s6Observed_boundary21_arena,s6Observed_boundary21_bank,s6Observed_boundary21_record]
              apply compileHmrSourceWalk_cons (P := s6ObservedPlan22)
              · exact s6Observed_step22_checked
              · rw [s6Observed_boundary22_arena,s6Observed_boundary22_bank,s6Observed_boundary22_record]
                apply compileHmrSourceWalk_cons (P := s6ObservedPlan23)
                · exact s6Observed_step23_checked
                · rw [s6Observed_boundary23_arena,s6Observed_boundary23_bank,s6Observed_boundary23_record]
                  apply compileHmrSourceWalk_cons (P := s6ObservedPlan24)
                  · exact s6Observed_step24_checked
                  · rw [s6Observed_boundary24_arena,s6Observed_boundary24_bank,s6Observed_boundary24_record]
                    apply compileHmrSourceWalk_cons (P := s6ObservedPlan25)
                    · exact s6Observed_step25_checked
                    · rw [s6Observed_boundary25_arena,s6Observed_boundary25_bank,s6Observed_boundary25_record]
                      apply compileHmrSourceWalk_cons (P := s6ObservedPlan26)
                      · exact s6Observed_step26_checked
                      · rw [s6Observed_boundary26_arena,s6Observed_boundary26_bank,s6Observed_boundary26_record]
                        apply compileHmrSourceWalk_cons (P := s6ObservedPlan27)
                        · exact s6Observed_step27_checked
                        · rw [s6Observed_boundary27_arena,s6Observed_boundary27_bank,s6Observed_boundary27_record]
                          apply compileHmrSourceWalk_cons (P := s6ObservedPlan28)
                          · exact s6Observed_step28_checked
                          · rw [s6Observed_boundary28_arena,s6Observed_boundary28_bank,s6Observed_boundary28_record]
                            apply compileHmrSourceWalk_cons (P := s6ObservedPlan29)
                            · exact s6Observed_step29_checked
                            · rw [s6Observed_boundary29_arena,s6Observed_boundary29_bank,s6Observed_boundary29_record]
                              apply compileHmrSourceWalk_cons (P := s6ObservedPlan30)
                              · exact s6Observed_step30_checked
                              · rw [s6Observed_boundary30_arena,s6Observed_boundary30_bank,s6Observed_boundary30_record]
                                apply compileHmrSourceWalk_cons (P := s6ObservedPlan31)
                                · exact s6Observed_step31_checked
                                · rfl
theorem s6ObservedSegment16_outputArena : s6ObservedSegment16Plan.outputArena=s6ObservedPlan31.outputArena := rfl
theorem s6ObservedSegment16_bank : s6ObservedSegment16Plan.bank=s6ObservedPlan31.bank := rfl
theorem s6ObservedSegment16_record : s6ObservedSegment16Plan.record=s6ObservedPlan31.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] := rfl
theorem s6ObservedSegment16_metadata : s6ObservedSegment16Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
