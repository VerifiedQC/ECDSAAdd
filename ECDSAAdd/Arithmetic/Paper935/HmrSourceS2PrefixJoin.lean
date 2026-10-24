import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixSegment0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixSegment16

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Observed_boundary15_arena : s2ObservedPlan15.outputArena=s2Step16EntryFBefore := rfl
theorem s2Observed_boundary15_bank : s2ObservedPlan15.bank=s2Step16FrontBank := by decide +kernel
theorem s2Observed_boundary15_record : s2ObservedPlan15.record [795, 813, 818, 823]=[795, 813, 818, 823, 828] := rfl
def s2ObservedPrefixPart0Logs := s2ObservedSegment0Logs
def s2ObservedPrefixPart0Plan := s2ObservedSegment0Plan
theorem s2ObservedPrefixPart0_length : s2ObservedPrefixPart0Logs.length=16 := rfl
theorem s2ObservedPrefixPart0_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart0Logs=some s2ObservedPrefixPart0Plan := s2ObservedSegment0_checked
theorem s2ObservedPrefixPart0_outputArena : s2ObservedPrefixPart0Plan.outputArena=s2ObservedPlan15.outputArena := by
  exact s2ObservedSegment0_outputArena
theorem s2ObservedPrefixPart0_bank : s2ObservedPrefixPart0Plan.bank=s2ObservedPlan15.bank := by
  exact s2ObservedSegment0_bank
theorem s2ObservedPrefixPart0_record : s2ObservedPrefixPart0Plan.record=s2ObservedPlan15.record [795, 813, 818, 823] := by
  exact s2ObservedSegment0_record
theorem s2ObservedPrefixPart0_metadata : s2ObservedPrefixPart0Plan.metadata=none := by
  exact s2ObservedSegment0_metadata
def s2ObservedPrefixPart1Logs := s2ObservedPrefixPart0Logs++s2ObservedSegment16Logs
def s2ObservedPrefixPart1Plan := s2ObservedPrefixPart0Plan.append s2ObservedSegment16Plan
theorem s2ObservedPrefixPart1_length : s2ObservedPrefixPart1Logs.length=32 := by
  rw [s2ObservedPrefixPart1Logs,List.length_append,s2ObservedPrefixPart0_length,s2ObservedSegment16_length]
theorem s2ObservedPrefixPart1_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart1Logs=some s2ObservedPrefixPart1Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart0Plan.metadata s2ObservedPrefixPart0Plan.outputArena s2ObservedPrefixPart0Plan.bank s2ObservedPrefixPart0Plan.record (0+s2ObservedPrefixPart0Logs.length) s2ObservedSegment16Logs=some s2ObservedSegment16Plan := by
    rw [s2ObservedPrefixPart0_metadata,s2ObservedPrefixPart0_outputArena,s2ObservedPrefixPart0_bank,s2ObservedPrefixPart0_record,s2ObservedPrefixPart0_length,Nat.zero_add]
    rw [s2Observed_boundary15_arena,s2Observed_boundary15_bank,s2Observed_boundary15_record]
    exact s2ObservedSegment16_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart0Logs s2ObservedSegment16Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart0Plan s2ObservedSegment16Plan s2ObservedPrefixPart0_checked suffix
theorem s2ObservedPrefixPart1_outputArena : s2ObservedPrefixPart1Plan.outputArena=s2ObservedPlan31.outputArena := by
  rw [s2ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment16_outputArena]
theorem s2ObservedPrefixPart1_bank : s2ObservedPrefixPart1Plan.bank=s2ObservedPlan31.bank := by
  rw [s2ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment16_bank]
theorem s2ObservedPrefixPart1_record : s2ObservedPrefixPart1Plan.record=s2ObservedPlan31.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] := by
  rw [s2ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment16_record]
theorem s2ObservedPrefixPart1_metadata : s2ObservedPrefixPart1Plan.metadata=none := by
  rw [s2ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment16_metadata]
theorem s2Observed_prefix_logs : s2ObservedLogs.take 32=s2ObservedPrefixPart1Logs := rfl
def s2ObservedPrefixPlan : HmrSourceWalkPlan := s2ObservedPrefixPart1Plan
theorem s2Observed_prefix_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 32)=some s2ObservedPrefixPlan := by
  rw [s2Observed_prefix_logs]
  exact s2ObservedPrefixPart1_checked

end ECDSAAdd.Arithmetic.Paper935
