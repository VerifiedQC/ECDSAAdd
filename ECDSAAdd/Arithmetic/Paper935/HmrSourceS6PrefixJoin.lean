import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixSegment0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixSegment16

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Observed_boundary15_arena : s6ObservedPlan15.outputArena=s6Step16EntryFBefore := rfl
theorem s6Observed_boundary15_bank : s6ObservedPlan15.bank=s6Step16FrontBank := by decide +kernel
theorem s6Observed_boundary15_record : s6ObservedPlan15.record [895, 870, 872, 883]=[895, 870, 872, 883, 831] := rfl
def s6ObservedPrefixPart0Logs := s6ObservedSegment0Logs
def s6ObservedPrefixPart0Plan := s6ObservedSegment0Plan
theorem s6ObservedPrefixPart0_length : s6ObservedPrefixPart0Logs.length=16 := rfl
theorem s6ObservedPrefixPart0_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart0Logs=some s6ObservedPrefixPart0Plan := s6ObservedSegment0_checked
theorem s6ObservedPrefixPart0_outputArena : s6ObservedPrefixPart0Plan.outputArena=s6ObservedPlan15.outputArena := by
  exact s6ObservedSegment0_outputArena
theorem s6ObservedPrefixPart0_bank : s6ObservedPrefixPart0Plan.bank=s6ObservedPlan15.bank := by
  exact s6ObservedSegment0_bank
theorem s6ObservedPrefixPart0_record : s6ObservedPrefixPart0Plan.record=s6ObservedPlan15.record [895, 870, 872, 883] := by
  exact s6ObservedSegment0_record
theorem s6ObservedPrefixPart0_metadata : s6ObservedPrefixPart0Plan.metadata=none := by
  exact s6ObservedSegment0_metadata
def s6ObservedPrefixPart1Logs := s6ObservedPrefixPart0Logs++s6ObservedSegment16Logs
def s6ObservedPrefixPart1Plan := s6ObservedPrefixPart0Plan.append s6ObservedSegment16Plan
theorem s6ObservedPrefixPart1_length : s6ObservedPrefixPart1Logs.length=32 := by
  rw [s6ObservedPrefixPart1Logs,List.length_append,s6ObservedPrefixPart0_length,s6ObservedSegment16_length]
theorem s6ObservedPrefixPart1_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart1Logs=some s6ObservedPrefixPart1Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart0Plan.metadata s6ObservedPrefixPart0Plan.outputArena s6ObservedPrefixPart0Plan.bank s6ObservedPrefixPart0Plan.record (0+s6ObservedPrefixPart0Logs.length) s6ObservedSegment16Logs=some s6ObservedSegment16Plan := by
    rw [s6ObservedPrefixPart0_metadata,s6ObservedPrefixPart0_outputArena,s6ObservedPrefixPart0_bank,s6ObservedPrefixPart0_record,s6ObservedPrefixPart0_length,Nat.zero_add]
    rw [s6Observed_boundary15_arena,s6Observed_boundary15_bank,s6Observed_boundary15_record]
    exact s6ObservedSegment16_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart0Logs s6ObservedSegment16Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart0Plan s6ObservedSegment16Plan s6ObservedPrefixPart0_checked suffix
theorem s6ObservedPrefixPart1_outputArena : s6ObservedPrefixPart1Plan.outputArena=s6ObservedPlan31.outputArena := by
  rw [s6ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment16_outputArena]
theorem s6ObservedPrefixPart1_bank : s6ObservedPrefixPart1Plan.bank=s6ObservedPlan31.bank := by
  rw [s6ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment16_bank]
theorem s6ObservedPrefixPart1_record : s6ObservedPrefixPart1Plan.record=s6ObservedPlan31.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] := by
  rw [s6ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment16_record]
theorem s6ObservedPrefixPart1_metadata : s6ObservedPrefixPart1Plan.metadata=none := by
  rw [s6ObservedPrefixPart1Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment16_metadata]
theorem s6Observed_prefix_logs : s6ObservedLogs.take 32=s6ObservedPrefixPart1Logs := rfl
def s6ObservedPrefixPlan : HmrSourceWalkPlan := s6ObservedPrefixPart1Plan
theorem s6Observed_prefix_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 32)=some s6ObservedPrefixPlan := by
  rw [s6Observed_prefix_logs]
  exact s6ObservedPrefixPart1_checked

end ECDSAAdd.Arithmetic.Paper935
