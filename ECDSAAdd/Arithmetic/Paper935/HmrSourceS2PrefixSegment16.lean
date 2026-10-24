import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2ObservedSpec16 : HmrSourceWalkStepLog := s2ObservedLogs16[0]
def s2ObservedPlan16 : HmrSourceStepPlan := .early s2Step16CompletePlan
def s2ObservedSpec17 : HmrSourceWalkStepLog := s2ObservedLogs16[1]
def s2ObservedPlan17 : HmrSourceStepPlan := .early s2Step17CompletePlan
def s2ObservedSpec18 : HmrSourceWalkStepLog := s2ObservedLogs16[2]
def s2ObservedPlan18 : HmrSourceStepPlan := .early s2Step18CompletePlan
def s2ObservedSpec19 : HmrSourceWalkStepLog := s2ObservedLogs16[3]
def s2ObservedPlan19 : HmrSourceStepPlan := .early s2Step19CompletePlan
def s2ObservedSpec20 : HmrSourceWalkStepLog := s2ObservedLogs16[4]
def s2ObservedPlan20 : HmrSourceStepPlan := .early s2Step20CompletePlan
def s2ObservedSpec21 : HmrSourceWalkStepLog := s2ObservedLogs16[5]
def s2ObservedPlan21 : HmrSourceStepPlan := .early s2Step21CompletePlan
def s2ObservedSpec22 : HmrSourceWalkStepLog := s2ObservedLogs16[6]
def s2ObservedPlan22 : HmrSourceStepPlan := .early s2Step22CompletePlan
def s2ObservedSpec23 : HmrSourceWalkStepLog := s2ObservedLogs16[7]
def s2ObservedPlan23 : HmrSourceStepPlan := .early s2Step23CompletePlan
def s2ObservedSpec24 : HmrSourceWalkStepLog := s2ObservedLogs16[8]
def s2ObservedPlan24 : HmrSourceStepPlan := .early s2Step24CompletePlan
def s2ObservedSpec25 : HmrSourceWalkStepLog := s2ObservedLogs16[9]
def s2ObservedPlan25 : HmrSourceStepPlan := .early s2Step25CompletePlan
def s2ObservedSpec26 : HmrSourceWalkStepLog := s2ObservedLogs16[10]
def s2ObservedPlan26 : HmrSourceStepPlan := .early s2Step26CompletePlan
def s2ObservedSpec27 : HmrSourceWalkStepLog := s2ObservedLogs16[11]
def s2ObservedPlan27 : HmrSourceStepPlan := .early s2Step27CompletePlan
def s2ObservedSpec28 : HmrSourceWalkStepLog := s2ObservedLogs16[12]
def s2ObservedPlan28 : HmrSourceStepPlan := .early s2Step28CompletePlan
def s2ObservedSpec29 : HmrSourceWalkStepLog := s2ObservedLogs16[13]
def s2ObservedPlan29 : HmrSourceStepPlan := .early s2Step29CompletePlan
def s2ObservedSpec30 : HmrSourceWalkStepLog := s2ObservedLogs16[14]
def s2ObservedPlan30 : HmrSourceStepPlan := .early s2Step30CompletePlan
def s2ObservedSpec31 : HmrSourceWalkStepLog := s2ObservedLogs16[15]
def s2ObservedPlan31 : HmrSourceStepPlan := .early s2Step31CompletePlan
theorem s2Observed_step16_checked :
    compileHmrSourceStepLog s2Step16EntryFBefore s2Step16FrontBank
      s2ObservedSpec16.fgWidth s2ObservedSpec16.vWidth s2ObservedSpec16.exitWidth s2ObservedCounter [795, 813, 818, 823, 828]
      6 498 16 s2ObservedSpec16.need none s2ObservedSpec16.log=some s2ObservedPlan16 := by
  have spec : s2ObservedSpec16 = ⟨256,17,⟨256,255,18,16⟩,5,.early s2Step16CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 16<498)]
  simp only [s2ObservedCounter]
  rw [s2Step16Complete_explicit_checked]
  rfl
theorem s2Observed_step17_checked :
    compileHmrSourceStepLog s2Step17EntryFBefore s2Step17FrontBank
      s2ObservedSpec17.fgWidth s2ObservedSpec17.vWidth s2ObservedSpec17.exitWidth s2ObservedCounter [795, 813, 818, 823, 828]
      6 498 17 s2ObservedSpec17.need none s2ObservedSpec17.log=some s2ObservedPlan17 := by
  have spec : s2ObservedSpec17 = ⟨256,18,⟨256,255,19,17⟩,6,.early s2Step17CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 17<498)]
  simp only [s2ObservedCounter]
  rw [s2Step17Complete_explicit_checked]
  rfl
theorem s2Observed_step18_checked :
    compileHmrSourceStepLog s2Step18EntryFBefore s2Step18FrontBank
      s2ObservedSpec18.fgWidth s2ObservedSpec18.vWidth s2ObservedSpec18.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833]
      6 498 18 s2ObservedSpec18.need none s2ObservedSpec18.log=some s2ObservedPlan18 := by
  have spec : s2ObservedSpec18 = ⟨256,19,⟨256,255,20,18⟩,6,.early s2Step18CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 18<498)]
  simp only [s2ObservedCounter]
  rw [s2Step18Complete_explicit_checked]
  rfl
theorem s2Observed_step19_checked :
    compileHmrSourceStepLog s2Step19EntryFBefore s2Step19FrontBank
      s2ObservedSpec19.fgWidth s2ObservedSpec19.vWidth s2ObservedSpec19.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833]
      6 498 19 s2ObservedSpec19.need none s2ObservedSpec19.log=some s2ObservedPlan19 := by
  have spec : s2ObservedSpec19 = ⟨256,20,⟨256,255,21,19⟩,7,.early s2Step19CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 19<498)]
  simp only [s2ObservedCounter]
  rw [s2Step19Complete_explicit_checked]
  rfl
theorem s2Observed_step20_checked :
    compileHmrSourceStepLog s2Step20EntryFBefore s2Step20FrontBank
      s2ObservedSpec20.fgWidth s2ObservedSpec20.vWidth s2ObservedSpec20.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838]
      6 498 20 s2ObservedSpec20.need none s2ObservedSpec20.log=some s2ObservedPlan20 := by
  have spec : s2ObservedSpec20 = ⟨256,21,⟨256,255,22,20⟩,7,.early s2Step20CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 20<498)]
  simp only [s2ObservedCounter]
  rw [s2Step20Complete_explicit_checked]
  rfl
theorem s2Observed_step21_checked :
    compileHmrSourceStepLog s2Step21EntryFBefore s2Step21FrontBank
      s2ObservedSpec21.fgWidth s2ObservedSpec21.vWidth s2ObservedSpec21.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838]
      6 498 21 s2ObservedSpec21.need none s2ObservedSpec21.log=some s2ObservedPlan21 := by
  have spec : s2ObservedSpec21 = ⟨256,22,⟨256,255,23,21⟩,8,.early s2Step21CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 21<498)]
  simp only [s2ObservedCounter]
  rw [s2Step21Complete_explicit_checked]
  rfl
theorem s2Observed_step22_checked :
    compileHmrSourceStepLog s2Step22EntryFBefore s2Step22FrontBank
      s2ObservedSpec22.fgWidth s2ObservedSpec22.vWidth s2ObservedSpec22.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843]
      6 498 22 s2ObservedSpec22.need none s2ObservedSpec22.log=some s2ObservedPlan22 := by
  have spec : s2ObservedSpec22 = ⟨256,23,⟨256,255,24,22⟩,8,.early s2Step22CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 22<498)]
  simp only [s2ObservedCounter]
  rw [s2Step22Complete_explicit_checked]
  rfl
theorem s2Observed_step23_checked :
    compileHmrSourceStepLog s2Step23EntryFBefore s2Step23FrontBank
      s2ObservedSpec23.fgWidth s2ObservedSpec23.vWidth s2ObservedSpec23.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843]
      6 498 23 s2ObservedSpec23.need none s2ObservedSpec23.log=some s2ObservedPlan23 := by
  have spec : s2ObservedSpec23 = ⟨256,24,⟨256,255,25,23⟩,9,.early s2Step23CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 23<498)]
  simp only [s2ObservedCounter]
  rw [s2Step23Complete_explicit_checked]
  rfl
theorem s2Observed_step24_checked :
    compileHmrSourceStepLog s2Step24EntryFBefore s2Step24FrontBank
      s2ObservedSpec24.fgWidth s2ObservedSpec24.vWidth s2ObservedSpec24.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848]
      6 498 24 s2ObservedSpec24.need none s2ObservedSpec24.log=some s2ObservedPlan24 := by
  have spec : s2ObservedSpec24 = ⟨256,25,⟨255,254,25,24⟩,9,.early s2Step24CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 24<498)]
  simp only [s2ObservedCounter]
  rw [s2Step24Complete_explicit_checked]
  rfl
theorem s2Observed_step25_checked :
    compileHmrSourceStepLog s2Step25EntryFBefore s2Step25FrontBank
      s2ObservedSpec25.fgWidth s2ObservedSpec25.vWidth s2ObservedSpec25.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848]
      6 498 25 s2ObservedSpec25.need none s2ObservedSpec25.log=some s2ObservedPlan25 := by
  have spec : s2ObservedSpec25 = ⟨255,25,⟨255,254,26,25⟩,10,.early s2Step25CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 25<498)]
  simp only [s2ObservedCounter]
  rw [s2Step25Complete_explicit_checked]
  rfl
theorem s2Observed_step26_checked :
    compileHmrSourceStepLog s2Step26EntryFBefore s2Step26FrontBank
      s2ObservedSpec26.fgWidth s2ObservedSpec26.vWidth s2ObservedSpec26.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850]
      6 498 26 s2ObservedSpec26.need none s2ObservedSpec26.log=some s2ObservedPlan26 := by
  have spec : s2ObservedSpec26 = ⟨255,26,⟨255,254,27,25⟩,10,.early s2Step26CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 26<498)]
  simp only [s2ObservedCounter]
  rw [s2Step26Complete_explicit_checked]
  rfl
theorem s2Observed_step27_checked :
    compileHmrSourceStepLog s2Step27EntryFBefore s2Step27FrontBank
      s2ObservedSpec27.fgWidth s2ObservedSpec27.vWidth s2ObservedSpec27.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850]
      6 498 27 s2ObservedSpec27.need none s2ObservedSpec27.log=some s2ObservedPlan27 := by
  have spec : s2ObservedSpec27 = ⟨255,27,⟨254,253,28,26⟩,11,.early s2Step27CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 27<498)]
  simp only [s2ObservedCounter]
  rw [s2Step27Complete_explicit_checked]
  rfl
theorem s2Observed_step28_checked :
    compileHmrSourceStepLog s2Step28EntryFBefore s2Step28FrontBank
      s2ObservedSpec28.fgWidth s2ObservedSpec28.vWidth s2ObservedSpec28.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852]
      6 498 28 s2ObservedSpec28.need none s2ObservedSpec28.log=some s2ObservedPlan28 := by
  have spec : s2ObservedSpec28 = ⟨254,28,⟨254,253,28,27⟩,11,.early s2Step28CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 28<498)]
  simp only [s2ObservedCounter]
  rw [s2Step28Complete_explicit_checked]
  rfl
theorem s2Observed_step29_checked :
    compileHmrSourceStepLog s2Step29EntryFBefore s2Step29FrontBank
      s2ObservedSpec29.fgWidth s2ObservedSpec29.vWidth s2ObservedSpec29.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852]
      6 498 29 s2ObservedSpec29.need none s2ObservedSpec29.log=some s2ObservedPlan29 := by
  have spec : s2ObservedSpec29 = ⟨254,28,⟨253,252,29,27⟩,12,.early s2Step29CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 29<498)]
  simp only [s2ObservedCounter]
  rw [s2Step29Complete_explicit_checked]
  rfl
theorem s2Observed_step30_checked :
    compileHmrSourceStepLog s2Step30EntryFBefore s2Step30FrontBank
      s2ObservedSpec30.fgWidth s2ObservedSpec30.vWidth s2ObservedSpec30.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]
      6 498 30 s2ObservedSpec30.need none s2ObservedSpec30.log=some s2ObservedPlan30 := by
  have spec : s2ObservedSpec30 = ⟨253,29,⟨253,252,29,28⟩,12,.early s2Step30CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 30<498)]
  simp only [s2ObservedCounter]
  rw [s2Step30Complete_explicit_checked]
  rfl
theorem s2Observed_step31_checked :
    compileHmrSourceStepLog s2Step31EntryFBefore s2Step31FrontBank
      s2ObservedSpec31.fgWidth s2ObservedSpec31.vWidth s2ObservedSpec31.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]
      6 498 31 s2ObservedSpec31.need none s2ObservedSpec31.log=some s2ObservedPlan31 := by
  have spec : s2ObservedSpec31 = ⟨253,29,⟨253,251,29,28⟩,13,.early s2Step31CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 31<498)]
  simp only [s2ObservedCounter]
  rw [s2Step31Complete_explicit_checked]
  rfl
theorem s2Observed_boundary16_arena : s2ObservedPlan16.outputArena=s2Step17EntryFBefore := rfl
theorem s2Observed_boundary16_bank : s2ObservedPlan16.bank=s2Step17FrontBank := by decide +kernel
theorem s2Observed_boundary16_record : s2ObservedPlan16.record [795, 813, 818, 823, 828]=[795, 813, 818, 823, 828] := rfl
theorem s2Observed_boundary17_arena : s2ObservedPlan17.outputArena=s2Step18EntryFBefore := rfl
theorem s2Observed_boundary17_bank : s2ObservedPlan17.bank=s2Step18FrontBank := by decide +kernel
theorem s2Observed_boundary17_record : s2ObservedPlan17.record [795, 813, 818, 823, 828]=[795, 813, 818, 823, 828, 833] := rfl
theorem s2Observed_boundary18_arena : s2ObservedPlan18.outputArena=s2Step19EntryFBefore := rfl
theorem s2Observed_boundary18_bank : s2ObservedPlan18.bank=s2Step19FrontBank := by decide +kernel
theorem s2Observed_boundary18_record : s2ObservedPlan18.record [795, 813, 818, 823, 828, 833]=[795, 813, 818, 823, 828, 833] := rfl
theorem s2Observed_boundary19_arena : s2ObservedPlan19.outputArena=s2Step20EntryFBefore := rfl
theorem s2Observed_boundary19_bank : s2ObservedPlan19.bank=s2Step20FrontBank := by decide +kernel
theorem s2Observed_boundary19_record : s2ObservedPlan19.record [795, 813, 818, 823, 828, 833]=[795, 813, 818, 823, 828, 833, 838] := rfl
theorem s2Observed_boundary20_arena : s2ObservedPlan20.outputArena=s2Step21EntryFBefore := rfl
theorem s2Observed_boundary20_bank : s2ObservedPlan20.bank=s2Step21FrontBank := by decide +kernel
theorem s2Observed_boundary20_record : s2ObservedPlan20.record [795, 813, 818, 823, 828, 833, 838]=[795, 813, 818, 823, 828, 833, 838] := rfl
theorem s2Observed_boundary21_arena : s2ObservedPlan21.outputArena=s2Step22EntryFBefore := rfl
theorem s2Observed_boundary21_bank : s2ObservedPlan21.bank=s2Step22FrontBank := by decide +kernel
theorem s2Observed_boundary21_record : s2ObservedPlan21.record [795, 813, 818, 823, 828, 833, 838]=[795, 813, 818, 823, 828, 833, 838, 843] := rfl
theorem s2Observed_boundary22_arena : s2ObservedPlan22.outputArena=s2Step23EntryFBefore := rfl
theorem s2Observed_boundary22_bank : s2ObservedPlan22.bank=s2Step23FrontBank := by decide +kernel
theorem s2Observed_boundary22_record : s2ObservedPlan22.record [795, 813, 818, 823, 828, 833, 838, 843]=[795, 813, 818, 823, 828, 833, 838, 843] := rfl
theorem s2Observed_boundary23_arena : s2ObservedPlan23.outputArena=s2Step24EntryFBefore := rfl
theorem s2Observed_boundary23_bank : s2ObservedPlan23.bank=s2Step24FrontBank := by decide +kernel
theorem s2Observed_boundary23_record : s2ObservedPlan23.record [795, 813, 818, 823, 828, 833, 838, 843]=[795, 813, 818, 823, 828, 833, 838, 843, 848] := rfl
theorem s2Observed_boundary24_arena : s2ObservedPlan24.outputArena=s2Step25EntryFBefore := rfl
theorem s2Observed_boundary24_bank : s2ObservedPlan24.bank=s2Step25FrontBank := by decide +kernel
theorem s2Observed_boundary24_record : s2ObservedPlan24.record [795, 813, 818, 823, 828, 833, 838, 843, 848]=[795, 813, 818, 823, 828, 833, 838, 843, 848] := rfl
theorem s2Observed_boundary25_arena : s2ObservedPlan25.outputArena=s2Step26EntryFBefore := rfl
theorem s2Observed_boundary25_bank : s2ObservedPlan25.bank=s2Step26FrontBank := by decide +kernel
theorem s2Observed_boundary25_record : s2ObservedPlan25.record [795, 813, 818, 823, 828, 833, 838, 843, 848]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850] := rfl
theorem s2Observed_boundary26_arena : s2ObservedPlan26.outputArena=s2Step27EntryFBefore := rfl
theorem s2Observed_boundary26_bank : s2ObservedPlan26.bank=s2Step27FrontBank := by decide +kernel
theorem s2Observed_boundary26_record : s2ObservedPlan26.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850] := rfl
theorem s2Observed_boundary27_arena : s2ObservedPlan27.outputArena=s2Step28EntryFBefore := rfl
theorem s2Observed_boundary27_bank : s2ObservedPlan27.bank=s2Step28FrontBank := by decide +kernel
theorem s2Observed_boundary27_record : s2ObservedPlan27.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] := rfl
theorem s2Observed_boundary28_arena : s2ObservedPlan28.outputArena=s2Step29EntryFBefore := rfl
theorem s2Observed_boundary28_bank : s2ObservedPlan28.bank=s2Step29FrontBank := by decide +kernel
theorem s2Observed_boundary28_record : s2ObservedPlan28.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] := rfl
theorem s2Observed_boundary29_arena : s2ObservedPlan29.outputArena=s2Step30EntryFBefore := rfl
theorem s2Observed_boundary29_bank : s2ObservedPlan29.bank=s2Step30FrontBank := by decide +kernel
theorem s2Observed_boundary29_record : s2ObservedPlan29.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] := rfl
theorem s2Observed_boundary30_arena : s2ObservedPlan30.outputArena=s2Step31EntryFBefore := rfl
theorem s2Observed_boundary30_bank : s2ObservedPlan30.bank=s2Step31FrontBank := by decide +kernel
theorem s2Observed_boundary30_record : s2ObservedPlan30.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] := rfl
def s2ObservedSegment16Logs : List HmrSourceWalkStepLog := [s2ObservedSpec16,s2ObservedSpec17,s2ObservedSpec18,s2ObservedSpec19,s2ObservedSpec20,s2ObservedSpec21,s2ObservedSpec22,s2ObservedSpec23,s2ObservedSpec24,s2ObservedSpec25,s2ObservedSpec26,s2ObservedSpec27,s2ObservedSpec28,s2ObservedSpec29,s2ObservedSpec30,s2ObservedSpec31]
theorem s2ObservedSegment16_length : s2ObservedSegment16Logs.length=16 := rfl
def s2ObservedSegment16Plan : HmrSourceWalkPlan := (.step s2ObservedPlan16 (.step s2ObservedPlan17 (.step s2ObservedPlan18 (.step s2ObservedPlan19 (.step s2ObservedPlan20 (.step s2ObservedPlan21 (.step s2ObservedPlan22 (.step s2ObservedPlan23 (.step s2ObservedPlan24 (.step s2ObservedPlan25 (.step s2ObservedPlan26 (.step s2ObservedPlan27 (.step s2ObservedPlan28 (.step s2ObservedPlan29 (.step s2ObservedPlan30 (.step s2ObservedPlan31 (.done s2ObservedPlan31.outputArena s2ObservedPlan31.bank (s2ObservedPlan31.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]) none)))))))))))))))))
theorem s2ObservedSegment16_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2Step16EntryFBefore s2Step16FrontBank [795, 813, 818, 823, 828] 16 s2ObservedSegment16Logs=some s2ObservedSegment16Plan := by
  unfold s2ObservedSegment16Logs
  apply compileHmrSourceWalk_cons (P := s2ObservedPlan16)
  · exact s2Observed_step16_checked
  · rw [s2Observed_boundary16_arena,s2Observed_boundary16_bank,s2Observed_boundary16_record]
    apply compileHmrSourceWalk_cons (P := s2ObservedPlan17)
    · exact s2Observed_step17_checked
    · rw [s2Observed_boundary17_arena,s2Observed_boundary17_bank,s2Observed_boundary17_record]
      apply compileHmrSourceWalk_cons (P := s2ObservedPlan18)
      · exact s2Observed_step18_checked
      · rw [s2Observed_boundary18_arena,s2Observed_boundary18_bank,s2Observed_boundary18_record]
        apply compileHmrSourceWalk_cons (P := s2ObservedPlan19)
        · exact s2Observed_step19_checked
        · rw [s2Observed_boundary19_arena,s2Observed_boundary19_bank,s2Observed_boundary19_record]
          apply compileHmrSourceWalk_cons (P := s2ObservedPlan20)
          · exact s2Observed_step20_checked
          · rw [s2Observed_boundary20_arena,s2Observed_boundary20_bank,s2Observed_boundary20_record]
            apply compileHmrSourceWalk_cons (P := s2ObservedPlan21)
            · exact s2Observed_step21_checked
            · rw [s2Observed_boundary21_arena,s2Observed_boundary21_bank,s2Observed_boundary21_record]
              apply compileHmrSourceWalk_cons (P := s2ObservedPlan22)
              · exact s2Observed_step22_checked
              · rw [s2Observed_boundary22_arena,s2Observed_boundary22_bank,s2Observed_boundary22_record]
                apply compileHmrSourceWalk_cons (P := s2ObservedPlan23)
                · exact s2Observed_step23_checked
                · rw [s2Observed_boundary23_arena,s2Observed_boundary23_bank,s2Observed_boundary23_record]
                  apply compileHmrSourceWalk_cons (P := s2ObservedPlan24)
                  · exact s2Observed_step24_checked
                  · rw [s2Observed_boundary24_arena,s2Observed_boundary24_bank,s2Observed_boundary24_record]
                    apply compileHmrSourceWalk_cons (P := s2ObservedPlan25)
                    · exact s2Observed_step25_checked
                    · rw [s2Observed_boundary25_arena,s2Observed_boundary25_bank,s2Observed_boundary25_record]
                      apply compileHmrSourceWalk_cons (P := s2ObservedPlan26)
                      · exact s2Observed_step26_checked
                      · rw [s2Observed_boundary26_arena,s2Observed_boundary26_bank,s2Observed_boundary26_record]
                        apply compileHmrSourceWalk_cons (P := s2ObservedPlan27)
                        · exact s2Observed_step27_checked
                        · rw [s2Observed_boundary27_arena,s2Observed_boundary27_bank,s2Observed_boundary27_record]
                          apply compileHmrSourceWalk_cons (P := s2ObservedPlan28)
                          · exact s2Observed_step28_checked
                          · rw [s2Observed_boundary28_arena,s2Observed_boundary28_bank,s2Observed_boundary28_record]
                            apply compileHmrSourceWalk_cons (P := s2ObservedPlan29)
                            · exact s2Observed_step29_checked
                            · rw [s2Observed_boundary29_arena,s2Observed_boundary29_bank,s2Observed_boundary29_record]
                              apply compileHmrSourceWalk_cons (P := s2ObservedPlan30)
                              · exact s2Observed_step30_checked
                              · rw [s2Observed_boundary30_arena,s2Observed_boundary30_bank,s2Observed_boundary30_record]
                                apply compileHmrSourceWalk_cons (P := s2ObservedPlan31)
                                · exact s2Observed_step31_checked
                                · rfl
theorem s2ObservedSegment16_outputArena : s2ObservedSegment16Plan.outputArena=s2ObservedPlan31.outputArena := rfl
theorem s2ObservedSegment16_bank : s2ObservedSegment16Plan.bank=s2ObservedPlan31.bank := rfl
theorem s2ObservedSegment16_record : s2ObservedSegment16Plan.record=s2ObservedPlan31.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] := rfl
theorem s2ObservedSegment16_metadata : s2ObservedSegment16Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
