import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix128
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment128
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment144

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary127_arena : s6PrivateStep127Plan.outputArena=s6PrivateStep128Arena := rfl
private theorem s6Observed_boundary127_bank : s6PrivateStep127Plan.bank=s6PrivateStep128Bank := by decide +kernel
private theorem s6Observed_boundary127_record : s6PrivateStep127Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := rfl
private theorem s6Observed_boundary143_arena : s6PrivateStep143Plan.outputArena=s6PrivateStep144Arena := rfl
private theorem s6Observed_boundary143_bank : s6PrivateStep143Plan.bank=s6PrivateStep144Bank := by decide +kernel
private theorem s6Observed_boundary143_record : s6PrivateStep143Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := rfl
def s6ObservedPrefixPart8Logs := s6ObservedPrefixPart7Logs++s6ObservedSegment128Logs
def s6ObservedPrefixPart8Plan := s6ObservedPrefixPart7Plan.append s6ObservedSegment128Plan
theorem s6ObservedPrefixPart8_length : s6ObservedPrefixPart8Logs.length=144 := by
  rw [s6ObservedPrefixPart8Logs,List.length_append,s6ObservedPrefixPart7_length,s6ObservedSegment128_length]
theorem s6ObservedPrefixPart8_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart8Logs=some s6ObservedPrefixPart8Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart7Plan.metadata s6ObservedPrefixPart7Plan.outputArena s6ObservedPrefixPart7Plan.bank s6ObservedPrefixPart7Plan.record (0+s6ObservedPrefixPart7Logs.length) s6ObservedSegment128Logs=some s6ObservedSegment128Plan := by
    rw [s6ObservedPrefixPart7_metadata,s6ObservedPrefixPart7_outputArena,s6ObservedPrefixPart7_bank,s6ObservedPrefixPart7_record,s6ObservedPrefixPart7_length,Nat.zero_add]
    rw [s6Observed_boundary127_arena,s6Observed_boundary127_bank,s6Observed_boundary127_record]
    exact s6ObservedSegment128_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart7Logs s6ObservedSegment128Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart7Plan s6ObservedSegment128Plan s6ObservedPrefixPart7_checked suffix
theorem s6ObservedPrefixPart8_outputArena : s6ObservedPrefixPart8Plan.outputArena=s6PrivateStep143Plan.outputArena := by
  rw [s6ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment128_outputArena]
theorem s6ObservedPrefixPart8_bank : s6ObservedPrefixPart8Plan.bank=s6PrivateStep143Plan.bank := by
  rw [s6ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment128_bank]
theorem s6ObservedPrefixPart8_record : s6ObservedPrefixPart8Plan.record=s6PrivateStep143Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  rw [s6ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment128_record]
theorem s6ObservedPrefixPart8_metadata : s6ObservedPrefixPart8Plan.metadata=none := by
  rw [s6ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment128_metadata]
def s6ObservedPrefixPart9Logs := s6ObservedPrefixPart8Logs++s6ObservedSegment144Logs
def s6ObservedPrefixPart9Plan := s6ObservedPrefixPart8Plan.append s6ObservedSegment144Plan
theorem s6ObservedPrefixPart9_length : s6ObservedPrefixPart9Logs.length=160 := by
  rw [s6ObservedPrefixPart9Logs,List.length_append,s6ObservedPrefixPart8_length,s6ObservedSegment144_length]
theorem s6ObservedPrefixPart9_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart9Logs=some s6ObservedPrefixPart9Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart8Plan.metadata s6ObservedPrefixPart8Plan.outputArena s6ObservedPrefixPart8Plan.bank s6ObservedPrefixPart8Plan.record (0+s6ObservedPrefixPart8Logs.length) s6ObservedSegment144Logs=some s6ObservedSegment144Plan := by
    rw [s6ObservedPrefixPart8_metadata,s6ObservedPrefixPart8_outputArena,s6ObservedPrefixPart8_bank,s6ObservedPrefixPart8_record,s6ObservedPrefixPart8_length,Nat.zero_add]
    rw [s6Observed_boundary143_arena,s6Observed_boundary143_bank,s6Observed_boundary143_record]
    exact s6ObservedSegment144_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart8Logs s6ObservedSegment144Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart8Plan s6ObservedSegment144Plan s6ObservedPrefixPart8_checked suffix
theorem s6ObservedPrefixPart9_outputArena : s6ObservedPrefixPart9Plan.outputArena=s6PrivateStep159Plan.outputArena := by
  rw [s6ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment144_outputArena]
theorem s6ObservedPrefixPart9_bank : s6ObservedPrefixPart9Plan.bank=s6PrivateStep159Plan.bank := by
  rw [s6ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment144_bank]
theorem s6ObservedPrefixPart9_record : s6ObservedPrefixPart9Plan.record=s6PrivateStep159Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  rw [s6ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment144_record]
theorem s6ObservedPrefixPart9_metadata : s6ObservedPrefixPart9Plan.metadata=none := by
  rw [s6ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment144_metadata]
theorem s6ObservedExtended160_logs : s6ObservedLogs.take 160=s6ObservedPrefixPart9Logs := by
  have first : s6ObservedLogs128=s6ObservedSegment128Logs := rfl
  have second : s6ObservedLogs144=s6ObservedSegment144Logs := rfl
  have split : s6ObservedLogs.take 160=s6ObservedLogs.take 128 ++ s6ObservedLogs128 ++ s6ObservedLogs144 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart9Logs, s6ObservedPrefixPart8Logs, split, s6ObservedExtended128_logs, first, second, List.append_assoc]
def s6ObservedExtended160Plan : HmrSourceWalkPlan := s6ObservedPrefixPart9Plan
theorem s6ObservedExtended160_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 160)=some s6ObservedExtended160Plan := by
  rw [s6ObservedExtended160_logs]
  exact s6ObservedPrefixPart9_checked


end ECDSAAdd.Arithmetic.Paper935
