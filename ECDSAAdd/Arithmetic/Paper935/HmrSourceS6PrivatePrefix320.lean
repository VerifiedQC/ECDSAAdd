import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix288
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment288
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment304

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary287_arena : s6PrivateStep287Plan.outputArena=s6PrivateStep288Arena := rfl
private theorem s6Observed_boundary287_bank : s6PrivateStep287Plan.bank=s6PrivateStep288Bank := by decide +kernel
private theorem s6Observed_boundary287_record : s6PrivateStep287Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926] := rfl
private theorem s6Observed_boundary303_arena : s6PrivateStep303Plan.outputArena=s6PrivateStep304Arena := rfl
private theorem s6Observed_boundary303_bank : s6PrivateStep303Plan.bank=s6PrivateStep304Bank := by decide +kernel
private theorem s6Observed_boundary303_record : s6PrivateStep303Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := rfl
def s6ObservedPrefixPart18Logs := s6ObservedPrefixPart17Logs++s6ObservedSegment288Logs
def s6ObservedPrefixPart18Plan := s6ObservedPrefixPart17Plan.append s6ObservedSegment288Plan
theorem s6ObservedPrefixPart18_length : s6ObservedPrefixPart18Logs.length=304 := by
  rw [s6ObservedPrefixPart18Logs,List.length_append,s6ObservedPrefixPart17_length,s6ObservedSegment288_length]
theorem s6ObservedPrefixPart18_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart18Logs=some s6ObservedPrefixPart18Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart17Plan.metadata s6ObservedPrefixPart17Plan.outputArena s6ObservedPrefixPart17Plan.bank s6ObservedPrefixPart17Plan.record (0+s6ObservedPrefixPart17Logs.length) s6ObservedSegment288Logs=some s6ObservedSegment288Plan := by
    rw [s6ObservedPrefixPart17_metadata,s6ObservedPrefixPart17_outputArena,s6ObservedPrefixPart17_bank,s6ObservedPrefixPart17_record,s6ObservedPrefixPart17_length,Nat.zero_add]
    rw [s6Observed_boundary287_arena,s6Observed_boundary287_bank,s6Observed_boundary287_record]
    exact s6ObservedSegment288_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart17Logs s6ObservedSegment288Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart17Plan s6ObservedSegment288Plan s6ObservedPrefixPart17_checked suffix
theorem s6ObservedPrefixPart18_outputArena : s6ObservedPrefixPart18Plan.outputArena=s6PrivateStep303Plan.outputArena := by
  rw [s6ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment288_outputArena]
theorem s6ObservedPrefixPart18_bank : s6ObservedPrefixPart18Plan.bank=s6PrivateStep303Plan.bank := by
  rw [s6ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment288_bank]
theorem s6ObservedPrefixPart18_record : s6ObservedPrefixPart18Plan.record=s6PrivateStep303Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899] := by
  rw [s6ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment288_record]
theorem s6ObservedPrefixPart18_metadata : s6ObservedPrefixPart18Plan.metadata=none := by
  rw [s6ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment288_metadata]
def s6ObservedPrefixPart19Logs := s6ObservedPrefixPart18Logs++s6ObservedSegment304Logs
def s6ObservedPrefixPart19Plan := s6ObservedPrefixPart18Plan.append s6ObservedSegment304Plan
theorem s6ObservedPrefixPart19_length : s6ObservedPrefixPart19Logs.length=320 := by
  rw [s6ObservedPrefixPart19Logs,List.length_append,s6ObservedPrefixPart18_length,s6ObservedSegment304_length]
theorem s6ObservedPrefixPart19_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart19Logs=some s6ObservedPrefixPart19Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart18Plan.metadata s6ObservedPrefixPart18Plan.outputArena s6ObservedPrefixPart18Plan.bank s6ObservedPrefixPart18Plan.record (0+s6ObservedPrefixPart18Logs.length) s6ObservedSegment304Logs=some s6ObservedSegment304Plan := by
    rw [s6ObservedPrefixPart18_metadata,s6ObservedPrefixPart18_outputArena,s6ObservedPrefixPart18_bank,s6ObservedPrefixPart18_record,s6ObservedPrefixPart18_length,Nat.zero_add]
    rw [s6Observed_boundary303_arena,s6Observed_boundary303_bank,s6Observed_boundary303_record]
    exact s6ObservedSegment304_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart18Logs s6ObservedSegment304Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart18Plan s6ObservedSegment304Plan s6ObservedPrefixPart18_checked suffix
theorem s6ObservedPrefixPart19_outputArena : s6ObservedPrefixPart19Plan.outputArena=s6PrivateStep319Plan.outputArena := by
  rw [s6ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment304_outputArena]
theorem s6ObservedPrefixPart19_bank : s6ObservedPrefixPart19Plan.bank=s6PrivateStep319Plan.bank := by
  rw [s6ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment304_bank]
theorem s6ObservedPrefixPart19_record : s6ObservedPrefixPart19Plan.record=s6PrivateStep319Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811] := by
  rw [s6ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment304_record]
theorem s6ObservedPrefixPart19_metadata : s6ObservedPrefixPart19Plan.metadata=none := by
  rw [s6ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment304_metadata]
theorem s6ObservedExtended320_logs : s6ObservedLogs.take 320=s6ObservedPrefixPart19Logs := by
  have first : s6ObservedLogs288=s6ObservedSegment288Logs := rfl
  have second : s6ObservedLogs304=s6ObservedSegment304Logs := rfl
  have split : s6ObservedLogs.take 320=s6ObservedLogs.take 288 ++ s6ObservedLogs288 ++ s6ObservedLogs304 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart19Logs, s6ObservedPrefixPart18Logs, split, s6ObservedExtended288_logs, first, second, List.append_assoc]
def s6ObservedExtended320Plan : HmrSourceWalkPlan := s6ObservedPrefixPart19Plan
theorem s6ObservedExtended320_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 320)=some s6ObservedExtended320Plan := by
  rw [s6ObservedExtended320_logs]
  exact s6ObservedPrefixPart19_checked


end ECDSAAdd.Arithmetic.Paper935
