import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixSegment0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixSegment16
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixSegment32
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixSegment48

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Observed_boundary15_arena : s6ObservedPlan15.outputArena=s6Step16EntryFBefore := rfl
theorem s6Observed_boundary15_bank : s6ObservedPlan15.bank=s6Step16FrontBank := by decide +kernel
theorem s6Observed_boundary15_record : s6ObservedPlan15.record [895, 870, 872, 883]=[895, 870, 872, 883, 831] := rfl
theorem s6Observed_boundary31_arena : s6ObservedPlan31.outputArena=s6Step32EntryFBefore := rfl
theorem s6Observed_boundary31_bank : s6ObservedPlan31.bank=s6Step32FrontBank := by decide +kernel
theorem s6Observed_boundary31_record : s6ObservedPlan31.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835] := rfl
theorem s6Observed_boundary47_arena : s6ObservedPlan47.outputArena=s6Step48EntryFBefore := rfl
theorem s6Observed_boundary47_bank : s6ObservedPlan47.bank=s6Step48FrontBank := by decide +kernel
theorem s6Observed_boundary47_record : s6ObservedPlan47.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829] := rfl
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
def s6ObservedPrefixPart2Logs := s6ObservedPrefixPart1Logs++s6ObservedSegment32Logs
def s6ObservedPrefixPart2Plan := s6ObservedPrefixPart1Plan.append s6ObservedSegment32Plan
theorem s6ObservedPrefixPart2_length : s6ObservedPrefixPart2Logs.length=48 := by
  rw [s6ObservedPrefixPart2Logs,List.length_append,s6ObservedPrefixPart1_length,s6ObservedSegment32_length]
theorem s6ObservedPrefixPart2_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart2Logs=some s6ObservedPrefixPart2Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart1Plan.metadata s6ObservedPrefixPart1Plan.outputArena s6ObservedPrefixPart1Plan.bank s6ObservedPrefixPart1Plan.record (0+s6ObservedPrefixPart1Logs.length) s6ObservedSegment32Logs=some s6ObservedSegment32Plan := by
    rw [s6ObservedPrefixPart1_metadata,s6ObservedPrefixPart1_outputArena,s6ObservedPrefixPart1_bank,s6ObservedPrefixPart1_record,s6ObservedPrefixPart1_length,Nat.zero_add]
    rw [s6Observed_boundary31_arena,s6Observed_boundary31_bank,s6Observed_boundary31_record]
    exact s6ObservedSegment32_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart1Logs s6ObservedSegment32Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart1Plan s6ObservedSegment32Plan s6ObservedPrefixPart1_checked suffix
theorem s6ObservedPrefixPart2_outputArena : s6ObservedPrefixPart2Plan.outputArena=s6ObservedPlan47.outputArena := by
  rw [s6ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment32_outputArena]
theorem s6ObservedPrefixPart2_bank : s6ObservedPrefixPart2Plan.bank=s6ObservedPlan47.bank := by
  rw [s6ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment32_bank]
theorem s6ObservedPrefixPart2_record : s6ObservedPrefixPart2Plan.record=s6ObservedPlan47.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921] := by
  rw [s6ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment32_record]
theorem s6ObservedPrefixPart2_metadata : s6ObservedPrefixPart2Plan.metadata=none := by
  rw [s6ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment32_metadata]
def s6ObservedPrefixPart3Logs := s6ObservedPrefixPart2Logs++s6ObservedSegment48Logs
def s6ObservedPrefixPart3Plan := s6ObservedPrefixPart2Plan.append s6ObservedSegment48Plan
theorem s6ObservedPrefixPart3_length : s6ObservedPrefixPart3Logs.length=64 := by
  rw [s6ObservedPrefixPart3Logs,List.length_append,s6ObservedPrefixPart2_length,s6ObservedSegment48_length]
theorem s6ObservedPrefixPart3_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart3Logs=some s6ObservedPrefixPart3Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart2Plan.metadata s6ObservedPrefixPart2Plan.outputArena s6ObservedPrefixPart2Plan.bank s6ObservedPrefixPart2Plan.record (0+s6ObservedPrefixPart2Logs.length) s6ObservedSegment48Logs=some s6ObservedSegment48Plan := by
    rw [s6ObservedPrefixPart2_metadata,s6ObservedPrefixPart2_outputArena,s6ObservedPrefixPart2_bank,s6ObservedPrefixPart2_record,s6ObservedPrefixPart2_length,Nat.zero_add]
    rw [s6Observed_boundary47_arena,s6Observed_boundary47_bank,s6Observed_boundary47_record]
    exact s6ObservedSegment48_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart2Logs s6ObservedSegment48Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart2Plan s6ObservedSegment48Plan s6ObservedPrefixPart2_checked suffix
theorem s6ObservedPrefixPart3_outputArena : s6ObservedPrefixPart3Plan.outputArena=s6ObservedPlan63.outputArena := by
  rw [s6ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment48_outputArena]
theorem s6ObservedPrefixPart3_bank : s6ObservedPrefixPart3Plan.bank=s6ObservedPlan63.bank := by
  rw [s6ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment48_bank]
theorem s6ObservedPrefixPart3_record : s6ObservedPrefixPart3Plan.record=s6ObservedPlan63.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913] := by
  rw [s6ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment48_record]
theorem s6ObservedPrefixPart3_metadata : s6ObservedPrefixPart3Plan.metadata=none := by
  rw [s6ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment48_metadata]
theorem s6Observed_prefix_logs : s6ObservedLogs.take 64=s6ObservedPrefixPart3Logs := rfl
def s6ObservedPrefixPlan : HmrSourceWalkPlan := s6ObservedPrefixPart3Plan
theorem s6Observed_prefix_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 64)=some s6ObservedPrefixPlan := by
  rw [s6Observed_prefix_logs]
  exact s6ObservedPrefixPart3_checked

end ECDSAAdd.Arithmetic.Paper935
