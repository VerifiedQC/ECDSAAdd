import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix256
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment256
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment272

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary255_arena : s6PrivateStep255Plan.outputArena=s6PrivateStep256Arena := rfl
private theorem s6Observed_boundary255_bank : s6PrivateStep255Plan.bank=s6PrivateStep256Bank := by decide +kernel
private theorem s6Observed_boundary255_record : s6PrivateStep255Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := rfl
private theorem s6Observed_boundary271_arena : s6PrivateStep271Plan.outputArena=s6PrivateStep272Arena := rfl
private theorem s6Observed_boundary271_bank : s6PrivateStep271Plan.bank=s6PrivateStep272Bank := by decide +kernel
private theorem s6Observed_boundary271_record : s6PrivateStep271Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := rfl
def s6ObservedPrefixPart16Logs := s6ObservedPrefixPart15Logs++s6ObservedSegment256Logs
def s6ObservedPrefixPart16Plan := s6ObservedPrefixPart15Plan.append s6ObservedSegment256Plan
theorem s6ObservedPrefixPart16_length : s6ObservedPrefixPart16Logs.length=272 := by
  rw [s6ObservedPrefixPart16Logs,List.length_append,s6ObservedPrefixPart15_length,s6ObservedSegment256_length]
theorem s6ObservedPrefixPart16_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart16Logs=some s6ObservedPrefixPart16Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart15Plan.metadata s6ObservedPrefixPart15Plan.outputArena s6ObservedPrefixPart15Plan.bank s6ObservedPrefixPart15Plan.record (0+s6ObservedPrefixPart15Logs.length) s6ObservedSegment256Logs=some s6ObservedSegment256Plan := by
    rw [s6ObservedPrefixPart15_metadata,s6ObservedPrefixPart15_outputArena,s6ObservedPrefixPart15_bank,s6ObservedPrefixPart15_record,s6ObservedPrefixPart15_length,Nat.zero_add]
    rw [s6Observed_boundary255_arena,s6Observed_boundary255_bank,s6Observed_boundary255_record]
    exact s6ObservedSegment256_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart15Logs s6ObservedSegment256Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart15Plan s6ObservedSegment256Plan s6ObservedPrefixPart15_checked suffix
theorem s6ObservedPrefixPart16_outputArena : s6ObservedPrefixPart16Plan.outputArena=s6PrivateStep271Plan.outputArena := by
  rw [s6ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment256_outputArena]
theorem s6ObservedPrefixPart16_bank : s6ObservedPrefixPart16Plan.bank=s6PrivateStep271Plan.bank := by
  rw [s6ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment256_bank]
theorem s6ObservedPrefixPart16_record : s6ObservedPrefixPart16Plan.record=s6PrivateStep271Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787] := by
  rw [s6ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment256_record]
theorem s6ObservedPrefixPart16_metadata : s6ObservedPrefixPart16Plan.metadata=none := by
  rw [s6ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment256_metadata]
def s6ObservedPrefixPart17Logs := s6ObservedPrefixPart16Logs++s6ObservedSegment272Logs
def s6ObservedPrefixPart17Plan := s6ObservedPrefixPart16Plan.append s6ObservedSegment272Plan
theorem s6ObservedPrefixPart17_length : s6ObservedPrefixPart17Logs.length=288 := by
  rw [s6ObservedPrefixPart17Logs,List.length_append,s6ObservedPrefixPart16_length,s6ObservedSegment272_length]
theorem s6ObservedPrefixPart17_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart17Logs=some s6ObservedPrefixPart17Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart16Plan.metadata s6ObservedPrefixPart16Plan.outputArena s6ObservedPrefixPart16Plan.bank s6ObservedPrefixPart16Plan.record (0+s6ObservedPrefixPart16Logs.length) s6ObservedSegment272Logs=some s6ObservedSegment272Plan := by
    rw [s6ObservedPrefixPart16_metadata,s6ObservedPrefixPart16_outputArena,s6ObservedPrefixPart16_bank,s6ObservedPrefixPart16_record,s6ObservedPrefixPart16_length,Nat.zero_add]
    rw [s6Observed_boundary271_arena,s6Observed_boundary271_bank,s6Observed_boundary271_record]
    exact s6ObservedSegment272_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart16Logs s6ObservedSegment272Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart16Plan s6ObservedSegment272Plan s6ObservedPrefixPart16_checked suffix
theorem s6ObservedPrefixPart17_outputArena : s6ObservedPrefixPart17Plan.outputArena=s6PrivateStep287Plan.outputArena := by
  rw [s6ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment272_outputArena]
theorem s6ObservedPrefixPart17_bank : s6ObservedPrefixPart17Plan.bank=s6PrivateStep287Plan.bank := by
  rw [s6ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment272_bank]
theorem s6ObservedPrefixPart17_record : s6ObservedPrefixPart17Plan.record=s6PrivateStep287Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := by
  rw [s6ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment272_record]
theorem s6ObservedPrefixPart17_metadata : s6ObservedPrefixPart17Plan.metadata=none := by
  rw [s6ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment272_metadata]
theorem s6ObservedExtended288_logs : s6ObservedLogs.take 288=s6ObservedPrefixPart17Logs := by
  have first : s6ObservedLogs256=s6ObservedSegment256Logs := rfl
  have second : s6ObservedLogs272=s6ObservedSegment272Logs := rfl
  have split : s6ObservedLogs.take 288=s6ObservedLogs.take 256 ++ s6ObservedLogs256 ++ s6ObservedLogs272 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart17Logs, s6ObservedPrefixPart16Logs, split, s6ObservedExtended256_logs, first, second, List.append_assoc]
def s6ObservedExtended288Plan : HmrSourceWalkPlan := s6ObservedPrefixPart17Plan
theorem s6ObservedExtended288_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 288)=some s6ObservedExtended288Plan := by
  rw [s6ObservedExtended288_logs]
  exact s6ObservedPrefixPart17_checked


end ECDSAAdd.Arithmetic.Paper935
