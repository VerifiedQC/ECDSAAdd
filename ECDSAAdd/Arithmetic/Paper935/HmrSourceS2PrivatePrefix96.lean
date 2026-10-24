import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrefixJoin
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment64
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment80

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary63_arena : s2ObservedPlan63.outputArena=s2PrivateStep64Arena := rfl
private theorem s2Observed_boundary63_bank : s2ObservedPlan63.bank=s2PrivateStep64Bank := by decide +kernel
private theorem s2Observed_boundary63_record : s2ObservedPlan63.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871] := rfl
private theorem s2Observed_boundary79_arena : s2PrivateStep79Plan.outputArena=s2PrivateStep80Arena := rfl
private theorem s2Observed_boundary79_bank : s2PrivateStep79Plan.bank=s2PrivateStep80Bank := by decide +kernel
private theorem s2Observed_boundary79_record : s2PrivateStep79Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := rfl
def s2ObservedPrefixPart4Logs := s2ObservedPrefixPart3Logs++s2ObservedSegment64Logs
def s2ObservedPrefixPart4Plan := s2ObservedPrefixPart3Plan.append s2ObservedSegment64Plan
theorem s2ObservedPrefixPart4_length : s2ObservedPrefixPart4Logs.length=80 := by
  rw [s2ObservedPrefixPart4Logs,List.length_append,s2ObservedPrefixPart3_length,s2ObservedSegment64_length]
theorem s2ObservedPrefixPart4_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart4Logs=some s2ObservedPrefixPart4Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart3Plan.metadata s2ObservedPrefixPart3Plan.outputArena s2ObservedPrefixPart3Plan.bank s2ObservedPrefixPart3Plan.record (0+s2ObservedPrefixPart3Logs.length) s2ObservedSegment64Logs=some s2ObservedSegment64Plan := by
    rw [s2ObservedPrefixPart3_metadata,s2ObservedPrefixPart3_outputArena,s2ObservedPrefixPart3_bank,s2ObservedPrefixPart3_record,s2ObservedPrefixPart3_length,Nat.zero_add]
    rw [s2Observed_boundary63_arena,s2Observed_boundary63_bank,s2Observed_boundary63_record]
    exact s2ObservedSegment64_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart3Logs s2ObservedSegment64Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart3Plan s2ObservedSegment64Plan s2ObservedPrefixPart3_checked suffix
theorem s2ObservedPrefixPart4_outputArena : s2ObservedPrefixPart4Plan.outputArena=s2PrivateStep79Plan.outputArena := by
  rw [s2ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment64_outputArena]
theorem s2ObservedPrefixPart4_bank : s2ObservedPrefixPart4Plan.bank=s2PrivateStep79Plan.bank := by
  rw [s2ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment64_bank]
theorem s2ObservedPrefixPart4_record : s2ObservedPrefixPart4Plan.record=s2PrivateStep79Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  rw [s2ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment64_record]
theorem s2ObservedPrefixPart4_metadata : s2ObservedPrefixPart4Plan.metadata=none := by
  rw [s2ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment64_metadata]
def s2ObservedPrefixPart5Logs := s2ObservedPrefixPart4Logs++s2ObservedSegment80Logs
def s2ObservedPrefixPart5Plan := s2ObservedPrefixPart4Plan.append s2ObservedSegment80Plan
theorem s2ObservedPrefixPart5_length : s2ObservedPrefixPart5Logs.length=96 := by
  rw [s2ObservedPrefixPart5Logs,List.length_append,s2ObservedPrefixPart4_length,s2ObservedSegment80_length]
theorem s2ObservedPrefixPart5_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart5Logs=some s2ObservedPrefixPart5Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart4Plan.metadata s2ObservedPrefixPart4Plan.outputArena s2ObservedPrefixPart4Plan.bank s2ObservedPrefixPart4Plan.record (0+s2ObservedPrefixPart4Logs.length) s2ObservedSegment80Logs=some s2ObservedSegment80Plan := by
    rw [s2ObservedPrefixPart4_metadata,s2ObservedPrefixPart4_outputArena,s2ObservedPrefixPart4_bank,s2ObservedPrefixPart4_record,s2ObservedPrefixPart4_length,Nat.zero_add]
    rw [s2Observed_boundary79_arena,s2Observed_boundary79_bank,s2Observed_boundary79_record]
    exact s2ObservedSegment80_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart4Logs s2ObservedSegment80Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart4Plan s2ObservedSegment80Plan s2ObservedPrefixPart4_checked suffix
theorem s2ObservedPrefixPart5_outputArena : s2ObservedPrefixPart5Plan.outputArena=s2PrivateStep95Plan.outputArena := by
  rw [s2ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment80_outputArena]
theorem s2ObservedPrefixPart5_bank : s2ObservedPrefixPart5Plan.bank=s2PrivateStep95Plan.bank := by
  rw [s2ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment80_bank]
theorem s2ObservedPrefixPart5_record : s2ObservedPrefixPart5Plan.record=s2PrivateStep95Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  rw [s2ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment80_record]
theorem s2ObservedPrefixPart5_metadata : s2ObservedPrefixPart5Plan.metadata=none := by
  rw [s2ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment80_metadata]
theorem s2ObservedExtended96_logs : s2ObservedLogs.take 96=s2ObservedPrefixPart5Logs := rfl
def s2ObservedExtended96Plan : HmrSourceWalkPlan := s2ObservedPrefixPart5Plan
theorem s2ObservedExtended96_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 96)=some s2ObservedExtended96Plan := by
  rw [s2ObservedExtended96_logs]
  exact s2ObservedPrefixPart5_checked


end ECDSAAdd.Arithmetic.Paper935
