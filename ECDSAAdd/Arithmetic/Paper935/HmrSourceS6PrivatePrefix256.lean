import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix224
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment224
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment240

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary223_arena : s6PrivateStep223Plan.outputArena=s6PrivateStep224Arena := rfl
private theorem s6Observed_boundary223_bank : s6PrivateStep223Plan.bank=s6PrivateStep224Bank := by decide +kernel
private theorem s6Observed_boundary223_record : s6PrivateStep223Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := rfl
private theorem s6Observed_boundary239_arena : s6PrivateStep239Plan.outputArena=s6PrivateStep240Arena := rfl
private theorem s6Observed_boundary239_bank : s6PrivateStep239Plan.bank=s6PrivateStep240Bank := by decide +kernel
private theorem s6Observed_boundary239_record : s6PrivateStep239Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := rfl
def s6ObservedPrefixPart14Logs := s6ObservedPrefixPart13Logs++s6ObservedSegment224Logs
def s6ObservedPrefixPart14Plan := s6ObservedPrefixPart13Plan.append s6ObservedSegment224Plan
theorem s6ObservedPrefixPart14_length : s6ObservedPrefixPart14Logs.length=240 := by
  rw [s6ObservedPrefixPart14Logs,List.length_append,s6ObservedPrefixPart13_length,s6ObservedSegment224_length]
theorem s6ObservedPrefixPart14_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart14Logs=some s6ObservedPrefixPart14Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart13Plan.metadata s6ObservedPrefixPart13Plan.outputArena s6ObservedPrefixPart13Plan.bank s6ObservedPrefixPart13Plan.record (0+s6ObservedPrefixPart13Logs.length) s6ObservedSegment224Logs=some s6ObservedSegment224Plan := by
    rw [s6ObservedPrefixPart13_metadata,s6ObservedPrefixPart13_outputArena,s6ObservedPrefixPart13_bank,s6ObservedPrefixPart13_record,s6ObservedPrefixPart13_length,Nat.zero_add]
    rw [s6Observed_boundary223_arena,s6Observed_boundary223_bank,s6Observed_boundary223_record]
    exact s6ObservedSegment224_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart13Logs s6ObservedSegment224Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart13Plan s6ObservedSegment224Plan s6ObservedPrefixPart13_checked suffix
theorem s6ObservedPrefixPart14_outputArena : s6ObservedPrefixPart14Plan.outputArena=s6PrivateStep239Plan.outputArena := by
  rw [s6ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment224_outputArena]
theorem s6ObservedPrefixPart14_bank : s6ObservedPrefixPart14Plan.bank=s6PrivateStep239Plan.bank := by
  rw [s6ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment224_bank]
theorem s6ObservedPrefixPart14_record : s6ObservedPrefixPart14Plan.record=s6PrivateStep239Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900] := by
  rw [s6ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment224_record]
theorem s6ObservedPrefixPart14_metadata : s6ObservedPrefixPart14Plan.metadata=none := by
  rw [s6ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment224_metadata]
def s6ObservedPrefixPart15Logs := s6ObservedPrefixPart14Logs++s6ObservedSegment240Logs
def s6ObservedPrefixPart15Plan := s6ObservedPrefixPart14Plan.append s6ObservedSegment240Plan
theorem s6ObservedPrefixPart15_length : s6ObservedPrefixPart15Logs.length=256 := by
  rw [s6ObservedPrefixPart15Logs,List.length_append,s6ObservedPrefixPart14_length,s6ObservedSegment240_length]
theorem s6ObservedPrefixPart15_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart15Logs=some s6ObservedPrefixPart15Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart14Plan.metadata s6ObservedPrefixPart14Plan.outputArena s6ObservedPrefixPart14Plan.bank s6ObservedPrefixPart14Plan.record (0+s6ObservedPrefixPart14Logs.length) s6ObservedSegment240Logs=some s6ObservedSegment240Plan := by
    rw [s6ObservedPrefixPart14_metadata,s6ObservedPrefixPart14_outputArena,s6ObservedPrefixPart14_bank,s6ObservedPrefixPart14_record,s6ObservedPrefixPart14_length,Nat.zero_add]
    rw [s6Observed_boundary239_arena,s6Observed_boundary239_bank,s6Observed_boundary239_record]
    exact s6ObservedSegment240_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart14Logs s6ObservedSegment240Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart14Plan s6ObservedSegment240Plan s6ObservedPrefixPart14_checked suffix
theorem s6ObservedPrefixPart15_outputArena : s6ObservedPrefixPart15Plan.outputArena=s6PrivateStep255Plan.outputArena := by
  rw [s6ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment240_outputArena]
theorem s6ObservedPrefixPart15_bank : s6ObservedPrefixPart15Plan.bank=s6PrivateStep255Plan.bank := by
  rw [s6ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment240_bank]
theorem s6ObservedPrefixPart15_record : s6ObservedPrefixPart15Plan.record=s6PrivateStep255Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905] := by
  rw [s6ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment240_record]
theorem s6ObservedPrefixPart15_metadata : s6ObservedPrefixPart15Plan.metadata=none := by
  rw [s6ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment240_metadata]
theorem s6ObservedExtended256_logs : s6ObservedLogs.take 256=s6ObservedPrefixPart15Logs := by
  have first : s6ObservedLogs224=s6ObservedSegment224Logs := rfl
  have second : s6ObservedLogs240=s6ObservedSegment240Logs := rfl
  have split : s6ObservedLogs.take 256=s6ObservedLogs.take 224 ++ s6ObservedLogs224 ++ s6ObservedLogs240 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart15Logs, s6ObservedPrefixPart14Logs, split, s6ObservedExtended224_logs, first, second, List.append_assoc]
def s6ObservedExtended256Plan : HmrSourceWalkPlan := s6ObservedPrefixPart15Plan
theorem s6ObservedExtended256_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 256)=some s6ObservedExtended256Plan := by
  rw [s6ObservedExtended256_logs]
  exact s6ObservedPrefixPart15_checked


end ECDSAAdd.Arithmetic.Paper935
