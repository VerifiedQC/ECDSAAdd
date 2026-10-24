import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix320
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment320
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment336

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary319_arena : s6PrivateStep319Plan.outputArena=s6PrivateStep320Arena := rfl
private theorem s6Observed_boundary319_bank : s6PrivateStep319Plan.bank=s6PrivateStep320Bank := by decide +kernel
private theorem s6Observed_boundary319_record : s6PrivateStep319Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925] := rfl
private theorem s6Observed_boundary335_arena : s6PrivateStep335Plan.outputArena=s6PrivateStep336Arena := rfl
private theorem s6Observed_boundary335_bank : s6PrivateStep335Plan.bank=s6PrivateStep336Bank := by decide +kernel
private theorem s6Observed_boundary335_record : s6PrivateStep335Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := rfl
def s6ObservedPrefixPart20Logs := s6ObservedPrefixPart19Logs++s6ObservedSegment320Logs
def s6ObservedPrefixPart20Plan := s6ObservedPrefixPart19Plan.append s6ObservedSegment320Plan
theorem s6ObservedPrefixPart20_length : s6ObservedPrefixPart20Logs.length=336 := by
  rw [s6ObservedPrefixPart20Logs,List.length_append,s6ObservedPrefixPart19_length,s6ObservedSegment320_length]
theorem s6ObservedPrefixPart20_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart20Logs=some s6ObservedPrefixPart20Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart19Plan.metadata s6ObservedPrefixPart19Plan.outputArena s6ObservedPrefixPart19Plan.bank s6ObservedPrefixPart19Plan.record (0+s6ObservedPrefixPart19Logs.length) s6ObservedSegment320Logs=some s6ObservedSegment320Plan := by
    rw [s6ObservedPrefixPart19_metadata,s6ObservedPrefixPart19_outputArena,s6ObservedPrefixPart19_bank,s6ObservedPrefixPart19_record,s6ObservedPrefixPart19_length,Nat.zero_add]
    rw [s6Observed_boundary319_arena,s6Observed_boundary319_bank,s6Observed_boundary319_record]
    exact s6ObservedSegment320_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart19Logs s6ObservedSegment320Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart19Plan s6ObservedSegment320Plan s6ObservedPrefixPart19_checked suffix
theorem s6ObservedPrefixPart20_outputArena : s6ObservedPrefixPart20Plan.outputArena=s6PrivateStep335Plan.outputArena := by
  rw [s6ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment320_outputArena]
theorem s6ObservedPrefixPart20_bank : s6ObservedPrefixPart20Plan.bank=s6PrivateStep335Plan.bank := by
  rw [s6ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment320_bank]
theorem s6ObservedPrefixPart20_record : s6ObservedPrefixPart20Plan.record=s6PrivateStep335Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  rw [s6ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment320_record]
theorem s6ObservedPrefixPart20_metadata : s6ObservedPrefixPart20Plan.metadata=none := by
  rw [s6ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment320_metadata]
def s6ObservedPrefixPart21Logs := s6ObservedPrefixPart20Logs++s6ObservedSegment336Logs
def s6ObservedPrefixPart21Plan := s6ObservedPrefixPart20Plan.append s6ObservedSegment336Plan
theorem s6ObservedPrefixPart21_length : s6ObservedPrefixPart21Logs.length=352 := by
  rw [s6ObservedPrefixPart21Logs,List.length_append,s6ObservedPrefixPart20_length,s6ObservedSegment336_length]
theorem s6ObservedPrefixPart21_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart21Logs=some s6ObservedPrefixPart21Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart20Plan.metadata s6ObservedPrefixPart20Plan.outputArena s6ObservedPrefixPart20Plan.bank s6ObservedPrefixPart20Plan.record (0+s6ObservedPrefixPart20Logs.length) s6ObservedSegment336Logs=some s6ObservedSegment336Plan := by
    rw [s6ObservedPrefixPart20_metadata,s6ObservedPrefixPart20_outputArena,s6ObservedPrefixPart20_bank,s6ObservedPrefixPart20_record,s6ObservedPrefixPart20_length,Nat.zero_add]
    rw [s6Observed_boundary335_arena,s6Observed_boundary335_bank,s6Observed_boundary335_record]
    exact s6ObservedSegment336_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart20Logs s6ObservedSegment336Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart20Plan s6ObservedSegment336Plan s6ObservedPrefixPart20_checked suffix
theorem s6ObservedPrefixPart21_outputArena : s6ObservedPrefixPart21Plan.outputArena=s6PrivateStep351Plan.outputArena := by
  rw [s6ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment336_outputArena]
theorem s6ObservedPrefixPart21_bank : s6ObservedPrefixPart21Plan.bank=s6PrivateStep351Plan.bank := by
  rw [s6ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment336_bank]
theorem s6ObservedPrefixPart21_record : s6ObservedPrefixPart21Plan.record=s6PrivateStep351Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  rw [s6ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment336_record]
theorem s6ObservedPrefixPart21_metadata : s6ObservedPrefixPart21Plan.metadata=none := by
  rw [s6ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment336_metadata]
theorem s6ObservedExtended352_logs : s6ObservedLogs.take 352=s6ObservedPrefixPart21Logs := by
  have first : s6ObservedLogs320=s6ObservedSegment320Logs := rfl
  have second : s6ObservedLogs336=s6ObservedSegment336Logs := rfl
  have split : s6ObservedLogs.take 352=s6ObservedLogs.take 320 ++ s6ObservedLogs320 ++ s6ObservedLogs336 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart21Logs, s6ObservedPrefixPart20Logs, split, s6ObservedExtended320_logs, first, second, List.append_assoc]
def s6ObservedExtended352Plan : HmrSourceWalkPlan := s6ObservedPrefixPart21Plan
theorem s6ObservedExtended352_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 352)=some s6ObservedExtended352Plan := by
  rw [s6ObservedExtended352_logs]
  exact s6ObservedPrefixPart21_checked


end ECDSAAdd.Arithmetic.Paper935
