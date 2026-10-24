import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrefixJoin
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment64
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment80

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary63_arena : s6ObservedPlan63.outputArena=s6PrivateStep64Arena := rfl
private theorem s6Observed_boundary63_bank : s6ObservedPlan63.bank=s6PrivateStep64Bank := by decide +kernel
private theorem s6Observed_boundary63_record : s6ObservedPlan63.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824] := rfl
private theorem s6Observed_boundary79_arena : s6PrivateStep79Plan.outputArena=s6PrivateStep80Arena := rfl
private theorem s6Observed_boundary79_bank : s6PrivateStep79Plan.bank=s6PrivateStep80Bank := by decide +kernel
private theorem s6Observed_boundary79_record : s6PrivateStep79Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := rfl
def s6ObservedPrefixPart4Logs := s6ObservedPrefixPart3Logs++s6ObservedSegment64Logs
def s6ObservedPrefixPart4Plan := s6ObservedPrefixPart3Plan.append s6ObservedSegment64Plan
theorem s6ObservedPrefixPart4_length : s6ObservedPrefixPart4Logs.length=80 := by
  rw [s6ObservedPrefixPart4Logs,List.length_append,s6ObservedPrefixPart3_length,s6ObservedSegment64_length]
theorem s6ObservedPrefixPart4_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart4Logs=some s6ObservedPrefixPart4Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart3Plan.metadata s6ObservedPrefixPart3Plan.outputArena s6ObservedPrefixPart3Plan.bank s6ObservedPrefixPart3Plan.record (0+s6ObservedPrefixPart3Logs.length) s6ObservedSegment64Logs=some s6ObservedSegment64Plan := by
    rw [s6ObservedPrefixPart3_metadata,s6ObservedPrefixPart3_outputArena,s6ObservedPrefixPart3_bank,s6ObservedPrefixPart3_record,s6ObservedPrefixPart3_length,Nat.zero_add]
    rw [s6Observed_boundary63_arena,s6Observed_boundary63_bank,s6Observed_boundary63_record]
    exact s6ObservedSegment64_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart3Logs s6ObservedSegment64Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart3Plan s6ObservedSegment64Plan s6ObservedPrefixPart3_checked suffix
theorem s6ObservedPrefixPart4_outputArena : s6ObservedPrefixPart4Plan.outputArena=s6PrivateStep79Plan.outputArena := by
  rw [s6ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment64_outputArena]
theorem s6ObservedPrefixPart4_bank : s6ObservedPrefixPart4Plan.bank=s6PrivateStep79Plan.bank := by
  rw [s6ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment64_bank]
theorem s6ObservedPrefixPart4_record : s6ObservedPrefixPart4Plan.record=s6PrivateStep79Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902] := by
  rw [s6ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment64_record]
theorem s6ObservedPrefixPart4_metadata : s6ObservedPrefixPart4Plan.metadata=none := by
  rw [s6ObservedPrefixPart4Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment64_metadata]
def s6ObservedPrefixPart5Logs := s6ObservedPrefixPart4Logs++s6ObservedSegment80Logs
def s6ObservedPrefixPart5Plan := s6ObservedPrefixPart4Plan.append s6ObservedSegment80Plan
theorem s6ObservedPrefixPart5_length : s6ObservedPrefixPart5Logs.length=96 := by
  rw [s6ObservedPrefixPart5Logs,List.length_append,s6ObservedPrefixPart4_length,s6ObservedSegment80_length]
theorem s6ObservedPrefixPart5_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart5Logs=some s6ObservedPrefixPart5Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart4Plan.metadata s6ObservedPrefixPart4Plan.outputArena s6ObservedPrefixPart4Plan.bank s6ObservedPrefixPart4Plan.record (0+s6ObservedPrefixPart4Logs.length) s6ObservedSegment80Logs=some s6ObservedSegment80Plan := by
    rw [s6ObservedPrefixPart4_metadata,s6ObservedPrefixPart4_outputArena,s6ObservedPrefixPart4_bank,s6ObservedPrefixPart4_record,s6ObservedPrefixPart4_length,Nat.zero_add]
    rw [s6Observed_boundary79_arena,s6Observed_boundary79_bank,s6Observed_boundary79_record]
    exact s6ObservedSegment80_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart4Logs s6ObservedSegment80Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart4Plan s6ObservedSegment80Plan s6ObservedPrefixPart4_checked suffix
theorem s6ObservedPrefixPart5_outputArena : s6ObservedPrefixPart5Plan.outputArena=s6PrivateStep95Plan.outputArena := by
  rw [s6ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment80_outputArena]
theorem s6ObservedPrefixPart5_bank : s6ObservedPrefixPart5Plan.bank=s6PrivateStep95Plan.bank := by
  rw [s6ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment80_bank]
theorem s6ObservedPrefixPart5_record : s6ObservedPrefixPart5Plan.record=s6PrivateStep95Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := by
  rw [s6ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment80_record]
theorem s6ObservedPrefixPart5_metadata : s6ObservedPrefixPart5Plan.metadata=none := by
  rw [s6ObservedPrefixPart5Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment80_metadata]
theorem s6ObservedExtended96_logs : s6ObservedLogs.take 96=s6ObservedPrefixPart5Logs := rfl
def s6ObservedExtended96Plan : HmrSourceWalkPlan := s6ObservedPrefixPart5Plan
theorem s6ObservedExtended96_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 96)=some s6ObservedExtended96Plan := by
  rw [s6ObservedExtended96_logs]
  exact s6ObservedPrefixPart5_checked


end ECDSAAdd.Arithmetic.Paper935
