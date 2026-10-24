import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix96
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment96
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment112

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary95_arena : s6PrivateStep95Plan.outputArena=s6PrivateStep96Arena := rfl
private theorem s6Observed_boundary95_bank : s6PrivateStep95Plan.bank=s6PrivateStep96Bank := by decide +kernel
private theorem s6Observed_boundary95_record : s6PrivateStep95Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847] := rfl
private theorem s6Observed_boundary111_arena : s6PrivateStep111Plan.outputArena=s6PrivateStep112Arena := rfl
private theorem s6Observed_boundary111_bank : s6PrivateStep111Plan.bank=s6PrivateStep112Bank := by decide +kernel
private theorem s6Observed_boundary111_record : s6PrivateStep111Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := rfl
def s6ObservedPrefixPart6Logs := s6ObservedPrefixPart5Logs++s6ObservedSegment96Logs
def s6ObservedPrefixPart6Plan := s6ObservedPrefixPart5Plan.append s6ObservedSegment96Plan
theorem s6ObservedPrefixPart6_length : s6ObservedPrefixPart6Logs.length=112 := by
  rw [s6ObservedPrefixPart6Logs,List.length_append,s6ObservedPrefixPart5_length,s6ObservedSegment96_length]
theorem s6ObservedPrefixPart6_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart6Logs=some s6ObservedPrefixPart6Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart5Plan.metadata s6ObservedPrefixPart5Plan.outputArena s6ObservedPrefixPart5Plan.bank s6ObservedPrefixPart5Plan.record (0+s6ObservedPrefixPart5Logs.length) s6ObservedSegment96Logs=some s6ObservedSegment96Plan := by
    rw [s6ObservedPrefixPart5_metadata,s6ObservedPrefixPart5_outputArena,s6ObservedPrefixPart5_bank,s6ObservedPrefixPart5_record,s6ObservedPrefixPart5_length,Nat.zero_add]
    rw [s6Observed_boundary95_arena,s6Observed_boundary95_bank,s6Observed_boundary95_record]
    exact s6ObservedSegment96_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart5Logs s6ObservedSegment96Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart5Plan s6ObservedSegment96Plan s6ObservedPrefixPart5_checked suffix
theorem s6ObservedPrefixPart6_outputArena : s6ObservedPrefixPart6Plan.outputArena=s6PrivateStep111Plan.outputArena := by
  rw [s6ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment96_outputArena]
theorem s6ObservedPrefixPart6_bank : s6ObservedPrefixPart6Plan.bank=s6PrivateStep111Plan.bank := by
  rw [s6ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment96_bank]
theorem s6ObservedPrefixPart6_record : s6ObservedPrefixPart6Plan.record=s6PrivateStep111Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  rw [s6ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment96_record]
theorem s6ObservedPrefixPart6_metadata : s6ObservedPrefixPart6Plan.metadata=none := by
  rw [s6ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment96_metadata]
def s6ObservedPrefixPart7Logs := s6ObservedPrefixPart6Logs++s6ObservedSegment112Logs
def s6ObservedPrefixPart7Plan := s6ObservedPrefixPart6Plan.append s6ObservedSegment112Plan
theorem s6ObservedPrefixPart7_length : s6ObservedPrefixPart7Logs.length=128 := by
  rw [s6ObservedPrefixPart7Logs,List.length_append,s6ObservedPrefixPart6_length,s6ObservedSegment112_length]
theorem s6ObservedPrefixPart7_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart7Logs=some s6ObservedPrefixPart7Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart6Plan.metadata s6ObservedPrefixPart6Plan.outputArena s6ObservedPrefixPart6Plan.bank s6ObservedPrefixPart6Plan.record (0+s6ObservedPrefixPart6Logs.length) s6ObservedSegment112Logs=some s6ObservedSegment112Plan := by
    rw [s6ObservedPrefixPart6_metadata,s6ObservedPrefixPart6_outputArena,s6ObservedPrefixPart6_bank,s6ObservedPrefixPart6_record,s6ObservedPrefixPart6_length,Nat.zero_add]
    rw [s6Observed_boundary111_arena,s6Observed_boundary111_bank,s6Observed_boundary111_record]
    exact s6ObservedSegment112_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart6Logs s6ObservedSegment112Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart6Plan s6ObservedSegment112Plan s6ObservedPrefixPart6_checked suffix
theorem s6ObservedPrefixPart7_outputArena : s6ObservedPrefixPart7Plan.outputArena=s6PrivateStep127Plan.outputArena := by
  rw [s6ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment112_outputArena]
theorem s6ObservedPrefixPart7_bank : s6ObservedPrefixPart7Plan.bank=s6PrivateStep127Plan.bank := by
  rw [s6ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment112_bank]
theorem s6ObservedPrefixPart7_record : s6ObservedPrefixPart7Plan.record=s6PrivateStep127Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  rw [s6ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment112_record]
theorem s6ObservedPrefixPart7_metadata : s6ObservedPrefixPart7Plan.metadata=none := by
  rw [s6ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment112_metadata]
theorem s6ObservedExtended128_logs : s6ObservedLogs.take 128=s6ObservedPrefixPart7Logs := rfl
def s6ObservedExtended128Plan : HmrSourceWalkPlan := s6ObservedPrefixPart7Plan
theorem s6ObservedExtended128_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 128)=some s6ObservedExtended128Plan := by
  rw [s6ObservedExtended128_logs]
  exact s6ObservedPrefixPart7_checked


end ECDSAAdd.Arithmetic.Paper935
