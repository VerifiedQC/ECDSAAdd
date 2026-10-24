import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixSegment0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixSegment16
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixSegment32
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixSegment48

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Observed_boundary15_arena : s2ObservedPlan15.outputArena=s2Step16EntryFBefore := rfl
theorem s2Observed_boundary15_bank : s2ObservedPlan15.bank=s2Step16FrontBank := by decide +kernel
theorem s2Observed_boundary15_record : s2ObservedPlan15.record [795, 813, 818, 823]=[795, 813, 818, 823, 828] := rfl
theorem s2Observed_boundary31_arena : s2ObservedPlan31.outputArena=s2Step32EntryFBefore := rfl
theorem s2Observed_boundary31_bank : s2ObservedPlan31.bank=s2Step32FrontBank := by decide +kernel
theorem s2Observed_boundary31_record : s2ObservedPlan31.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854] := rfl
theorem s2Observed_boundary47_arena : s2ObservedPlan47.outputArena=s2Step48EntryFBefore := rfl
theorem s2Observed_boundary47_bank : s2ObservedPlan47.bank=s2Step48FrontBank := by decide +kernel
theorem s2Observed_boundary47_record : s2ObservedPlan47.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863] := rfl
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
def s2ObservedPrefixPart2Logs := s2ObservedPrefixPart1Logs++s2ObservedSegment32Logs
def s2ObservedPrefixPart2Plan := s2ObservedPrefixPart1Plan.append s2ObservedSegment32Plan
theorem s2ObservedPrefixPart2_length : s2ObservedPrefixPart2Logs.length=48 := by
  rw [s2ObservedPrefixPart2Logs,List.length_append,s2ObservedPrefixPart1_length,s2ObservedSegment32_length]
theorem s2ObservedPrefixPart2_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart2Logs=some s2ObservedPrefixPart2Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart1Plan.metadata s2ObservedPrefixPart1Plan.outputArena s2ObservedPrefixPart1Plan.bank s2ObservedPrefixPart1Plan.record (0+s2ObservedPrefixPart1Logs.length) s2ObservedSegment32Logs=some s2ObservedSegment32Plan := by
    rw [s2ObservedPrefixPart1_metadata,s2ObservedPrefixPart1_outputArena,s2ObservedPrefixPart1_bank,s2ObservedPrefixPart1_record,s2ObservedPrefixPart1_length,Nat.zero_add]
    rw [s2Observed_boundary31_arena,s2Observed_boundary31_bank,s2Observed_boundary31_record]
    exact s2ObservedSegment32_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart1Logs s2ObservedSegment32Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart1Plan s2ObservedSegment32Plan s2ObservedPrefixPart1_checked suffix
theorem s2ObservedPrefixPart2_outputArena : s2ObservedPrefixPart2Plan.outputArena=s2ObservedPlan47.outputArena := by
  rw [s2ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment32_outputArena]
theorem s2ObservedPrefixPart2_bank : s2ObservedPrefixPart2Plan.bank=s2ObservedPlan47.bank := by
  rw [s2ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment32_bank]
theorem s2ObservedPrefixPart2_record : s2ObservedPrefixPart2Plan.record=s2ObservedPlan47.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860] := by
  rw [s2ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment32_record]
theorem s2ObservedPrefixPart2_metadata : s2ObservedPrefixPart2Plan.metadata=none := by
  rw [s2ObservedPrefixPart2Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment32_metadata]
def s2ObservedPrefixPart3Logs := s2ObservedPrefixPart2Logs++s2ObservedSegment48Logs
def s2ObservedPrefixPart3Plan := s2ObservedPrefixPart2Plan.append s2ObservedSegment48Plan
theorem s2ObservedPrefixPart3_length : s2ObservedPrefixPart3Logs.length=64 := by
  rw [s2ObservedPrefixPart3Logs,List.length_append,s2ObservedPrefixPart2_length,s2ObservedSegment48_length]
theorem s2ObservedPrefixPart3_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart3Logs=some s2ObservedPrefixPart3Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart2Plan.metadata s2ObservedPrefixPart2Plan.outputArena s2ObservedPrefixPart2Plan.bank s2ObservedPrefixPart2Plan.record (0+s2ObservedPrefixPart2Logs.length) s2ObservedSegment48Logs=some s2ObservedSegment48Plan := by
    rw [s2ObservedPrefixPart2_metadata,s2ObservedPrefixPart2_outputArena,s2ObservedPrefixPart2_bank,s2ObservedPrefixPart2_record,s2ObservedPrefixPart2_length,Nat.zero_add]
    rw [s2Observed_boundary47_arena,s2Observed_boundary47_bank,s2Observed_boundary47_record]
    exact s2ObservedSegment48_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart2Logs s2ObservedSegment48Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart2Plan s2ObservedSegment48Plan s2ObservedPrefixPart2_checked suffix
theorem s2ObservedPrefixPart3_outputArena : s2ObservedPrefixPart3Plan.outputArena=s2ObservedPlan63.outputArena := by
  rw [s2ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment48_outputArena]
theorem s2ObservedPrefixPart3_bank : s2ObservedPrefixPart3Plan.bank=s2ObservedPlan63.bank := by
  rw [s2ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment48_bank]
theorem s2ObservedPrefixPart3_record : s2ObservedPrefixPart3Plan.record=s2ObservedPlan63.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869] := by
  rw [s2ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment48_record]
theorem s2ObservedPrefixPart3_metadata : s2ObservedPrefixPart3Plan.metadata=none := by
  rw [s2ObservedPrefixPart3Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment48_metadata]
theorem s2Observed_prefix_logs : s2ObservedLogs.take 64=s2ObservedPrefixPart3Logs := rfl
def s2ObservedPrefixPlan : HmrSourceWalkPlan := s2ObservedPrefixPart3Plan
theorem s2Observed_prefix_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 64)=some s2ObservedPrefixPlan := by
  rw [s2Observed_prefix_logs]
  exact s2ObservedPrefixPart3_checked

end ECDSAAdd.Arithmetic.Paper935
